;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:50 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_cdc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_gUsbCdcWaitPacket+0,24
	.field  	0,8
	.field	0,16			; _gUsbCdcWaitPacket @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$194)
$C$DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_init")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_USB_init")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_open")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_USB_open")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$77)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_config")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_USB_config")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$69)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$150)
	.dwendtag $C$DW$7


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_requestEndpt")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_USB_requestEndpt")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$69)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$117)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$130)
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_configEndpt")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_USB_configEndpt")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$75)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$154)
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_resetDev")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_USB_resetDev")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_postTransaction")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_USB_postTransaction")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$75)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$3)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$19


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_isTransactionDone")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_USB_isTransactionDone")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$75)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$130)
	.dwendtag $C$DW$24


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_bytesRemaining")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_USB_bytesRemaining")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$75)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$130)
	.dwendtag $C$DW$27


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_epNumToHandle")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_USB_epNumToHandle")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$69)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$30


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_connectDev")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_USB_connectDev")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$33


$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_disconnectDev")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_USB_disconnectDev")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$35


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setParams")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_USB_setParams")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$69)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$160)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$37


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setFullSpeedMode")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_USB_setFullSpeedMode")
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$69)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$41


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getDataCountReadFromFifo")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_USB_getDataCountReadFromFifo")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$75)
	.dwendtag $C$DW$44

$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("usbRegisters")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_usbRegisters")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.global	_gUsbCdcWaitPacket
	.bss	_gUsbCdcWaitPacket,1,0,0
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("gUsbCdcWaitPacket")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_gUsbCdcWaitPacket")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr _gUsbCdcWaitPacket]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17260WPewB4 
	.sect	".text"

$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_isValidDataInFifoOut")
	.dwattr $C$DW$48, DW_AT_low_pc(_USB_isValidDataInFifoOut)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_USB_isValidDataInFifoOut")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$48, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x893)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_usbAux.h",line 2196,column 1,is_stmt,address _USB_isValidDataInFifoOut

	.dwfde $C$DW$CIE, _USB_isValidDataInFifoOut
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("peps")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_isValidDataInFifoOut                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_isValidDataInFifoOut:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("wByteCount")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_wByteCount")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("flag")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 2201,column 2,is_stmt
        MOV #0, *SP(#2) ; |2201| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2202,column 2,is_stmt
        MOV #0, *SP(#3) ; |2202| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2203,column 2,is_stmt
        MOV #0, *SP(#4) ; |2203| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2205,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV dbl(*AR3), AC0 ; |2205| 
||      MOV #1, AC1 ; |2205| 

        CMPU AC1 == AC0, TC1 ; |2205| 
        BCC $C$L1,TC1 ; |2205| 
                                        ; branchcc occurs ; |2205| 

        MOV #2, AC1 ; |2205| 
||      MOV dbl(*AR3), AC0 ; |2205| 

        CMPU AC1 == AC0, TC1 ; |2205| 
        BCC $C$L1,TC1 ; |2205| 
                                        ; branchcc occurs ; |2205| 

        MOV #3, AC1 ; |2205| 
||      MOV dbl(*AR3), AC0 ; |2205| 

        CMPU AC1 == AC0, TC1 ; |2205| 
        BCC $C$L1,TC1 ; |2205| 
                                        ; branchcc occurs ; |2205| 

        MOV #4, AC1 ; |2205| 
||      MOV dbl(*AR3), AC0 ; |2205| 

        CMPU AC1 != AC0, TC1 ; |2205| 
        BCC $C$L4,TC1 ; |2205| 
                                        ; branchcc occurs ; |2205| 
$C$L1:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2211,column 3,is_stmt
        MOV #1038, T0 ; |2211| 
        MOV *(#_usbRegisters), AR3 ; |2211| 
        MOV port(*AR3(T0)), AR1 ; |2211| 
        MOV AR1, *SP(#2) ; |2211| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2213,column 3,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |2213| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2214,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV *(#_usbRegisters), AR3 ; |2214| 
        MOV dbl(*AR2), AC0 ; |2214| 
        OR port(*AR3(T0)), AC0, AC0 ; |2214| 
        MOV AC0, port(*AR3(T0)) ; |2214| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2217,column 9,is_stmt
        MOV #1046, T0 ; |2217| 
        MOV *(#_usbRegisters), AR3 ; |2217| 
        MOV port(*AR3(T0)), AR1 ; |2217| 

        AND #0x0001, AR1, AR1 ; |2217| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |2217| 
        BCC $C$L3,TC1 ; |2217| 
                                        ; branchcc occurs ; |2217| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2220,column 4,is_stmt
        MOV #1049, T0 ; |2220| 
        MOV port(*AR3(T0)), AR1 ; |2220| 
        AND #0x1fff, AR1, AC0 ; |2220| 
        MOV AC0, *SP(#3) ; |2220| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2221,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, AR1
        MOV AR1, *AR3(#13) ; |2221| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2223,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#2)) == #3, TC1 ; |2223| 
        BCC $C$L2,TC1 ; |2223| 
                                        ; branchcc occurs ; |2223| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2225,column 4,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |2225| 
        MOV uns(*SP(#3)), AC1 ; |2225| 
        CMPU AC1 > AC0, TC1 ; |2225| 
        BCC $C$L3,TC1 ; |2225| 
                                        ; branchcc occurs ; |2225| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2229,column 5,is_stmt
        MOV #1, *SP(#4) ; |2229| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2231,column 3,is_stmt
        B $C$L3   ; |2231| 
                                        ; branch occurs ; |2231| 
$C$L2:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2234,column 5,is_stmt
        MOV #1, *SP(#4) ; |2234| 
$C$L3:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2239,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2239| 
        MOV #1038, T0 ; |2239| 
        MOV *SP(#2), AR1 ; |2239| 
        MOV AR1, port(*AR3(T0)) ; |2239| 
$C$L4:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2242,column 2,is_stmt
        MOV *SP(#4), T0 ; |2242| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2243,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$48, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x8c3)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text"
	.global	_CDC_Open

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_Open")
	.dwattr $C$DW$55, DW_AT_low_pc(_CDC_Open)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_CDC_Open")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$55, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_cdc.c",line 106,column 1,is_stmt,address _CDC_Open

	.dwfde $C$DW$CIE, _CDC_Open
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg17]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbConfig")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: CDC_Open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_Open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_cdc.c",line 110,column 2,is_stmt
        MOV #0, *SP(#6) ; |110| 
	.dwpsn	file "src/csl_cdc.c",line 111,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_cdc.c",line 113,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L7,AC0 == #0 ; |113| 
                                        ; branchcc occurs ; |113| 
	.dwpsn	file "src/csl_cdc.c",line 116,column 3,is_stmt
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_USB_init")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_USB_init ; |116| 
                                        ; call occurs [#_USB_init] ; |116| 
	.dwpsn	file "src/csl_cdc.c",line 118,column 3,is_stmt
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_USB_open")
	.dwattr $C$DW$63, DW_AT_TI_call

        CALL #_USB_open ; |118| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |118| 
        MOV dbl(*SP(#8)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_cdc.c",line 119,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |119| 

        CMPU AC1 != AC0, TC1 ; |119| 
        BCC $C$L5,TC1 ; |119| 
                                        ; branchcc occurs ; |119| 
	.dwpsn	file "src/csl_cdc.c",line 121,column 4,is_stmt
        MOV #-5, T0
        B $C$L9   ; |121| 
                                        ; branch occurs ; |121| 
$C$L5:    
	.dwpsn	file "src/csl_cdc.c",line 124,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_USB_config")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_USB_config ; |124| 
                                        ; call occurs [#_USB_config] ; |124| 
        MOV T0, *SP(#6) ; |124| 
	.dwpsn	file "src/csl_cdc.c",line 125,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |125| 
        BCC $C$L9,!TC1 ; |125| 
                                        ; branchcc occurs ; |125| 
	.dwpsn	file "src/csl_cdc.c",line 127,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 131,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_USB_resetDev ; |131| 
                                        ; call occurs [#_USB_resetDev] ; |131| 
        MOV T0, *SP(#6) ; |131| 
	.dwpsn	file "src/csl_cdc.c",line 132,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L6,AR1 == #0 ; |132| 
                                        ; branchcc occurs ; |132| 
	.dwpsn	file "src/csl_cdc.c",line 134,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |134| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_printf")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_printf ; |134| 
                                        ; call occurs [#_printf] ; |134| 
	.dwpsn	file "src/csl_cdc.c",line 135,column 4,is_stmt
        MOV *SP(#6), T0 ; |135| 
        B $C$L9   ; |135| 
                                        ; branch occurs ; |135| 
$C$L6:    
	.dwpsn	file "src/csl_cdc.c",line 138,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_CDC_Setup")
	.dwattr $C$DW$67, DW_AT_TI_call

        CALL #_CDC_Setup ; |138| 
||      MOV #1, T0

                                        ; call occurs [#_CDC_Setup] ; |138| 
        MOV T0, *SP(#6) ; |138| 
	.dwpsn	file "src/csl_cdc.c",line 139,column 2,is_stmt
        B $C$L8   ; |139| 
                                        ; branch occurs ; |139| 
$C$L7:    
	.dwpsn	file "src/csl_cdc.c",line 142,column 3,is_stmt
        MOV #-5, *SP(#6) ; |142| 
$C$L8:    
	.dwpsn	file "src/csl_cdc.c",line 145,column 2,is_stmt
        MOV *SP(#6), T0 ; |145| 
$C$L9:    
	.dwpsn	file "src/csl_cdc.c",line 146,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$55, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x92)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_CDC_OpenFullspeed

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_OpenFullspeed")
	.dwattr $C$DW$69, DW_AT_low_pc(_CDC_OpenFullspeed)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_CDC_OpenFullspeed")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_cdc.c",line 194,column 1,is_stmt,address _CDC_OpenFullspeed

	.dwfde $C$DW$CIE, _CDC_OpenFullspeed
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbConfig")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: CDC_OpenFullspeed                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_OpenFullspeed:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_cdc.c",line 198,column 2,is_stmt
        MOV #0, *SP(#6) ; |198| 
	.dwpsn	file "src/csl_cdc.c",line 199,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_cdc.c",line 201,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L12,AC0 == #0 ; |201| 
                                        ; branchcc occurs ; |201| 
	.dwpsn	file "src/csl_cdc.c",line 203,column 3,is_stmt
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_USB_init")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_USB_init ; |203| 
                                        ; call occurs [#_USB_init] ; |203| 
	.dwpsn	file "src/csl_cdc.c",line 205,column 3,is_stmt
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_USB_open")
	.dwattr $C$DW$77, DW_AT_TI_call

        CALL #_USB_open ; |205| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |205| 
        MOV dbl(*SP(#8)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_cdc.c",line 206,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |206| 

        CMPU AC1 != AC0, TC1 ; |206| 
        BCC $C$L10,TC1 ; |206| 
                                        ; branchcc occurs ; |206| 
	.dwpsn	file "src/csl_cdc.c",line 208,column 4,is_stmt
        MOV #-5, T0
        B $C$L14  ; |208| 
                                        ; branch occurs ; |208| 
$C$L10:    
	.dwpsn	file "src/csl_cdc.c",line 211,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_USB_config")
	.dwattr $C$DW$78, DW_AT_TI_call
        CALL #_USB_config ; |211| 
                                        ; call occurs [#_USB_config] ; |211| 
        MOV T0, *SP(#6) ; |211| 
	.dwpsn	file "src/csl_cdc.c",line 212,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |212| 
        BCC $C$L14,!TC1 ; |212| 
                                        ; branchcc occurs ; |212| 
	.dwpsn	file "src/csl_cdc.c",line 214,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 218,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #_USB_resetDev ; |218| 
                                        ; call occurs [#_USB_resetDev] ; |218| 
        MOV T0, *SP(#6) ; |218| 
	.dwpsn	file "src/csl_cdc.c",line 219,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L11,AR1 == #0 ; |219| 
                                        ; branchcc occurs ; |219| 
	.dwpsn	file "src/csl_cdc.c",line 221,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |221| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_printf")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_printf ; |221| 
                                        ; call occurs [#_printf] ; |221| 
	.dwpsn	file "src/csl_cdc.c",line 222,column 4,is_stmt
        MOV *SP(#6), T0 ; |222| 
        B $C$L14  ; |222| 
                                        ; branch occurs ; |222| 
$C$L11:    
	.dwpsn	file "src/csl_cdc.c",line 225,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_CDC_Setup")
	.dwattr $C$DW$81, DW_AT_TI_call

        CALL #_CDC_Setup ; |225| 
||      MOV #0, T0

                                        ; call occurs [#_CDC_Setup] ; |225| 
        MOV T0, *SP(#6) ; |225| 
	.dwpsn	file "src/csl_cdc.c",line 226,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, T0 ; |226| 
        MOV dbl(*AR3), XAR0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_USB_setFullSpeedMode")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_USB_setFullSpeedMode ; |226| 
                                        ; call occurs [#_USB_setFullSpeedMode] ; |226| 
	.dwpsn	file "src/csl_cdc.c",line 227,column 2,is_stmt
        B $C$L13  ; |227| 
                                        ; branch occurs ; |227| 
$C$L12:    
	.dwpsn	file "src/csl_cdc.c",line 230,column 3,is_stmt
        MOV #-5, *SP(#6) ; |230| 
$C$L13:    
	.dwpsn	file "src/csl_cdc.c",line 233,column 2,is_stmt
        MOV *SP(#6), T0 ; |233| 
$C$L14:    
	.dwpsn	file "src/csl_cdc.c",line 234,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$69, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_CDC_Setup

$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_Setup")
	.dwattr $C$DW$84, DW_AT_low_pc(_CDC_Setup)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_CDC_Setup")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$84, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$84, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "src/csl_cdc.c",line 284,column 1,is_stmt,address _CDC_Setup

	.dwfde $C$DW$CIE, _CDC_Setup
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg17]
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: CDC_Setup                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_Setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("eventMask")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("maxPktSize")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("usbEpConfig")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_usbEpConfig")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV T0, *SP(#2) ; |284| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 291,column 2,is_stmt
        MOV #0, *SP(#6) ; |291| 
	.dwpsn	file "src/csl_cdc.c",line 292,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_cdc.c",line 294,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L22,AC0 == #0 ; |294| 
                                        ; branchcc occurs ; |294| 
	.dwpsn	file "src/csl_cdc.c",line 296,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#4)) ; |296| 
	.dwpsn	file "src/csl_cdc.c",line 299,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#8) ; |299| 
	.dwpsn	file "src/csl_cdc.c",line 300,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#36) ; |300| 
	.dwpsn	file "src/csl_cdc.c",line 302,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#2), AR1 ; |302| 
        MOV AR1, *AR3(#37) ; |302| 
	.dwpsn	file "src/csl_cdc.c",line 305,column 3,is_stmt
        MOV #61, *SP(#7) ; |305| 
	.dwpsn	file "src/csl_cdc.c",line 309,column 3,is_stmt
        CMP *SP(#2) == #1, TC1 ; |309| 
        BCC $C$L15,!TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
	.dwpsn	file "src/csl_cdc.c",line 311,column 4,is_stmt
        MOV #512, *SP(#8) ; |311| 
	.dwpsn	file "src/csl_cdc.c",line 312,column 3,is_stmt
        B $C$L16  ; |312| 
                                        ; branch occurs ; |312| 
$C$L15:    
	.dwpsn	file "src/csl_cdc.c",line 315,column 4,is_stmt
        MOV #64, *SP(#8) ; |315| 
$C$L16:    
	.dwpsn	file "src/csl_cdc.c",line 327,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$94, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |327| 
||      MOV #0, T0

                                        ; call occurs [#_USB_requestEndpt] ; |327| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "src/csl_cdc.c",line 328,column 3,is_stmt

        MOV *SP(#6), AR1 ; |328| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |328| 
        BCC $C$L17,TC1 ; |328| 
                                        ; branchcc occurs ; |328| 
	.dwpsn	file "src/csl_cdc.c",line 330,column 4,is_stmt
        MOV AR1, T0
        B $C$L24  ; |330| 
                                        ; branch occurs ; |330| 
$C$L17:    
	.dwpsn	file "src/csl_cdc.c",line 333,column 3,is_stmt
        MOV #0, *SP(#10) ; |333| 
	.dwpsn	file "src/csl_cdc.c",line 334,column 3,is_stmt
        MOV #0, *SP(#11) ; |334| 
	.dwpsn	file "src/csl_cdc.c",line 335,column 3,is_stmt
        MOV #0, *SP(#12) ; |335| 
	.dwpsn	file "src/csl_cdc.c",line 336,column 3,is_stmt
        MOV #64, *SP(#13) ; |336| 
	.dwpsn	file "src/csl_cdc.c",line 337,column 3,is_stmt
        MOV *SP(#7), AR1 ; |337| 
        MOV AR1, *SP(#14) ; |337| 
	.dwpsn	file "src/csl_cdc.c",line 338,column 3,is_stmt
        MOV #0, *SP(#15) ; |338| 
	.dwpsn	file "src/csl_cdc.c",line 339,column 3,is_stmt
        MOV #0, *SP(#16) ; |339| 
	.dwpsn	file "src/csl_cdc.c",line 340,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#22)), AC0 ; |340| 
        MOV AC0, dbl(*SP(#18)) ; |340| 
	.dwpsn	file "src/csl_cdc.c",line 342,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_USB_configEndpt ; |342| 
                                        ; call occurs [#_USB_configEndpt] ; |342| 
        MOV T0, *SP(#6) ; |342| 
	.dwpsn	file "src/csl_cdc.c",line 346,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |346| 
                                        ; branchcc occurs ; |346| 
	.dwpsn	file "src/csl_cdc.c",line 348,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 361,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$96, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |361| 
||      MOV #8, T0

                                        ; call occurs [#_USB_requestEndpt] ; |361| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_cdc.c",line 362,column 3,is_stmt

        MOV *SP(#6), AR1 ; |362| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |362| 
        BCC $C$L18,TC1 ; |362| 
                                        ; branchcc occurs ; |362| 
	.dwpsn	file "src/csl_cdc.c",line 364,column 4,is_stmt
        MOV AR1, T0
        B $C$L24  ; |364| 
                                        ; branch occurs ; |364| 
$C$L18:    
	.dwpsn	file "src/csl_cdc.c",line 367,column 3,is_stmt
        MOV #0, *SP(#10) ; |367| 
	.dwpsn	file "src/csl_cdc.c",line 368,column 3,is_stmt
        MOV #8, *SP(#11) ; |368| 
	.dwpsn	file "src/csl_cdc.c",line 369,column 3,is_stmt
        MOV #0, *SP(#12) ; |369| 
	.dwpsn	file "src/csl_cdc.c",line 370,column 3,is_stmt
        MOV #64, *SP(#13) ; |370| 
	.dwpsn	file "src/csl_cdc.c",line 371,column 3,is_stmt
        MOV #32, *SP(#14) ; |371| 
	.dwpsn	file "src/csl_cdc.c",line 372,column 3,is_stmt
        MOV #0, *SP(#15) ; |372| 
	.dwpsn	file "src/csl_cdc.c",line 373,column 3,is_stmt
        MOV #0, *SP(#16) ; |373| 
	.dwpsn	file "src/csl_cdc.c",line 374,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#22)), AC0 ; |374| 
        MOV AC0, dbl(*SP(#18)) ; |374| 
	.dwpsn	file "src/csl_cdc.c",line 376,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_USB_configEndpt ; |376| 
                                        ; call occurs [#_USB_configEndpt] ; |376| 
        MOV T0, *SP(#6) ; |376| 
	.dwpsn	file "src/csl_cdc.c",line 380,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |380| 
                                        ; branchcc occurs ; |380| 
	.dwpsn	file "src/csl_cdc.c",line 382,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 386,column 3,is_stmt
        MOV #33, *SP(#7) ; |386| 
	.dwpsn	file "src/csl_cdc.c",line 396,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$98, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |396| 
||      MOV #9, T0

                                        ; call occurs [#_USB_requestEndpt] ; |396| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#46))
	.dwpsn	file "src/csl_cdc.c",line 399,column 3,is_stmt

        MOV *SP(#6), AR1 ; |399| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |399| 
        BCC $C$L19,TC1 ; |399| 
                                        ; branchcc occurs ; |399| 
	.dwpsn	file "src/csl_cdc.c",line 401,column 4,is_stmt
        MOV AR1, T0
        B $C$L24  ; |401| 
                                        ; branch occurs ; |401| 
$C$L19:    
	.dwpsn	file "src/csl_cdc.c",line 404,column 3,is_stmt
        MOV #0, *SP(#10) ; |404| 
	.dwpsn	file "src/csl_cdc.c",line 405,column 3,is_stmt
        MOV #9, *SP(#11) ; |405| 
	.dwpsn	file "src/csl_cdc.c",line 406,column 3,is_stmt
        MOV #2, *SP(#12) ; |406| 
	.dwpsn	file "src/csl_cdc.c",line 407,column 3,is_stmt
        MOV *SP(#8), AR1 ; |407| 
        MOV AR1, *SP(#13) ; |407| 
	.dwpsn	file "src/csl_cdc.c",line 408,column 3,is_stmt
        MOV *SP(#7), AR1 ; |408| 
        MOV AR1, *SP(#14) ; |408| 
	.dwpsn	file "src/csl_cdc.c",line 409,column 3,is_stmt
        MOV #0, *SP(#15) ; |409| 
	.dwpsn	file "src/csl_cdc.c",line 410,column 3,is_stmt
        MOV #0, *SP(#16) ; |410| 
	.dwpsn	file "src/csl_cdc.c",line 411,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#24)), AC0 ; |411| 
        MOV AC0, dbl(*SP(#18)) ; |411| 
	.dwpsn	file "src/csl_cdc.c",line 413,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(#46)), XAR0
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #_USB_configEndpt ; |413| 
                                        ; call occurs [#_USB_configEndpt] ; |413| 
        MOV T0, *SP(#6) ; |413| 
	.dwpsn	file "src/csl_cdc.c",line 417,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |417| 
                                        ; branchcc occurs ; |417| 
	.dwpsn	file "src/csl_cdc.c",line 419,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 432,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$100, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |432| 
||      MOV #2, T0

                                        ; call occurs [#_USB_requestEndpt] ; |432| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#44))
	.dwpsn	file "src/csl_cdc.c",line 435,column 3,is_stmt

        MOV *SP(#6), AR1 ; |435| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |435| 
        BCC $C$L20,TC1 ; |435| 
                                        ; branchcc occurs ; |435| 
	.dwpsn	file "src/csl_cdc.c",line 437,column 4,is_stmt
        MOV AR1, T0
        B $C$L24  ; |437| 
                                        ; branch occurs ; |437| 
$C$L20:    
	.dwpsn	file "src/csl_cdc.c",line 440,column 3,is_stmt
        MOV #0, *SP(#10) ; |440| 
	.dwpsn	file "src/csl_cdc.c",line 441,column 3,is_stmt
        MOV #2, *SP(#11) ; |441| 
	.dwpsn	file "src/csl_cdc.c",line 442,column 3,is_stmt
        MOV #1, *SP(#12) ; |442| 
	.dwpsn	file "src/csl_cdc.c",line 443,column 3,is_stmt
        MOV *SP(#8), AR1 ; |443| 
        MOV AR1, *SP(#13) ; |443| 
	.dwpsn	file "src/csl_cdc.c",line 444,column 3,is_stmt
        MOV #32, *SP(#14) ; |444| 
	.dwpsn	file "src/csl_cdc.c",line 445,column 3,is_stmt
        MOV #0, *SP(#15) ; |445| 
	.dwpsn	file "src/csl_cdc.c",line 446,column 3,is_stmt
        MOV #0, *SP(#16) ; |446| 
	.dwpsn	file "src/csl_cdc.c",line 447,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#20)), AC0 ; |447| 
        MOV AC0, dbl(*SP(#18)) ; |447| 
	.dwpsn	file "src/csl_cdc.c",line 449,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(#44)), XAR0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #_USB_configEndpt ; |449| 
                                        ; call occurs [#_USB_configEndpt] ; |449| 
        MOV T0, *SP(#6) ; |449| 
	.dwpsn	file "src/csl_cdc.c",line 453,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |453| 
                                        ; branchcc occurs ; |453| 
	.dwpsn	file "src/csl_cdc.c",line 455,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 459,column 3,is_stmt
        MOV #33, *SP(#7) ; |459| 
	.dwpsn	file "src/csl_cdc.c",line 469,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$102, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |469| 
||      MOV #11, T0

                                        ; call occurs [#_USB_requestEndpt] ; |469| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#42))
	.dwpsn	file "src/csl_cdc.c",line 472,column 3,is_stmt

        MOV *SP(#6), AR1 ; |472| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |472| 
        BCC $C$L21,TC1 ; |472| 
                                        ; branchcc occurs ; |472| 
	.dwpsn	file "src/csl_cdc.c",line 474,column 4,is_stmt
        MOV AR1, T0
        B $C$L24  ; |474| 
                                        ; branch occurs ; |474| 
$C$L21:    
	.dwpsn	file "src/csl_cdc.c",line 477,column 3,is_stmt
        MOV #0, *SP(#10) ; |477| 
	.dwpsn	file "src/csl_cdc.c",line 478,column 3,is_stmt
        MOV #11, *SP(#11) ; |478| 
	.dwpsn	file "src/csl_cdc.c",line 479,column 3,is_stmt
        MOV #1, *SP(#12) ; |479| 
	.dwpsn	file "src/csl_cdc.c",line 480,column 3,is_stmt
        MOV *SP(#8), AR1 ; |480| 
        MOV AR1, *SP(#13) ; |480| 
	.dwpsn	file "src/csl_cdc.c",line 481,column 3,is_stmt
        MOV *SP(#7), AR1 ; |481| 
        MOV AR1, *SP(#14) ; |481| 
	.dwpsn	file "src/csl_cdc.c",line 482,column 3,is_stmt
        MOV #0, *SP(#15) ; |482| 
	.dwpsn	file "src/csl_cdc.c",line 483,column 3,is_stmt
        MOV #0, *SP(#16) ; |483| 
	.dwpsn	file "src/csl_cdc.c",line 484,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#20)), AC0 ; |484| 
        MOV AC0, dbl(*SP(#18)) ; |484| 
	.dwpsn	file "src/csl_cdc.c",line 486,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(#42)), XAR0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$103, DW_AT_TI_call
        CALL #_USB_configEndpt ; |486| 
                                        ; call occurs [#_USB_configEndpt] ; |486| 
        MOV T0, *SP(#6) ; |486| 
	.dwpsn	file "src/csl_cdc.c",line 490,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |490| 
                                        ; branchcc occurs ; |490| 
	.dwpsn	file "src/csl_cdc.c",line 492,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 496,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_cdc.c",line 497,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#2))), XAR3
        MOV XAR3, dbl(*AR2(#12))
	.dwpsn	file "src/csl_cdc.c",line 498,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#44)), XAR3
        MOV XAR3, dbl(*AR2(#14))
	.dwpsn	file "src/csl_cdc.c",line 499,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#42)), XAR3
        MOV XAR3, dbl(*AR2(#16))
	.dwpsn	file "src/csl_cdc.c",line 500,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#48)), XAR3
        MOV XAR3, dbl(*AR2(#18))
	.dwpsn	file "src/csl_cdc.c",line 501,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#46)), XAR3
        MOV XAR3, dbl(*AR2(#20))
	.dwpsn	file "src/csl_cdc.c",line 504,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR3
        AADD #10, AR1 ; |504| 
        MOV dbl(*AR3), XAR0
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$104, DW_AT_TI_call

        CALL #_USB_setParams ; |504| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |504| 
        MOV T0, *SP(#6) ; |504| 
	.dwpsn	file "src/csl_cdc.c",line 505,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L24,AR1 != #0 ; |505| 
                                        ; branchcc occurs ; |505| 
	.dwpsn	file "src/csl_cdc.c",line 507,column 4,is_stmt
	.dwpsn	file "src/csl_cdc.c",line 510,column 3,is_stmt
        BCC $C$L23,AR1 != #0 ; |510| 
                                        ; branchcc occurs ; |510| 
	.dwpsn	file "src/csl_cdc.c",line 513,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_USB_connectDev")
	.dwattr $C$DW$105, DW_AT_TI_call
        CALL #_USB_connectDev ; |513| 
                                        ; call occurs [#_USB_connectDev] ; |513| 
	.dwpsn	file "src/csl_cdc.c",line 515,column 2,is_stmt
        B $C$L23  ; |515| 
                                        ; branch occurs ; |515| 
$C$L22:    
	.dwpsn	file "src/csl_cdc.c",line 518,column 3,is_stmt
        MOV #-5, *SP(#6) ; |518| 
$C$L23:    
	.dwpsn	file "src/csl_cdc.c",line 521,column 2,is_stmt
        MOV *SP(#6), T0 ; |521| 
$C$L24:    
	.dwpsn	file "src/csl_cdc.c",line 522,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$84, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x20a)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text"
	.global	_CDC_Close

$C$DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_Close")
	.dwattr $C$DW$107, DW_AT_low_pc(_CDC_Close)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_CDC_Close")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$107, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x238)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_cdc.c",line 569,column 1,is_stmt,address _CDC_Close

	.dwfde $C$DW$CIE, _CDC_Close
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: CDC_Close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_Close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("pCdcClassHdl")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pCdcClassHdl")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 574,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_cdc.c",line 576,column 2,is_stmt
        MOV #0, *SP(#4) ; |576| 
	.dwpsn	file "src/csl_cdc.c",line 578,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L25,AC0 == #0 ; |578| 
                                        ; branchcc occurs ; |578| 
	.dwpsn	file "src/csl_cdc.c",line 580,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_USB_disconnectDev")
	.dwattr $C$DW$112, DW_AT_TI_call
        CALL #_USB_disconnectDev ; |580| 
                                        ; call occurs [#_USB_disconnectDev] ; |580| 
        MOV T0, *SP(#4) ; |580| 
	.dwpsn	file "src/csl_cdc.c",line 581,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |581| 
        MOV AC0, dbl(*AR3)
	.dwpsn	file "src/csl_cdc.c",line 582,column 2,is_stmt
        B $C$L26  ; |582| 
                                        ; branch occurs ; |582| 
$C$L25:    
	.dwpsn	file "src/csl_cdc.c",line 585,column 3,is_stmt
        MOV #-5, *SP(#4) ; |585| 
$C$L26:    
	.dwpsn	file "src/csl_cdc.c",line 588,column 2,is_stmt
        MOV *SP(#4), T0 ; |588| 
	.dwpsn	file "src/csl_cdc.c",line 589,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$107, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x24d)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.global	_CDC_GetactivityFlagStatus

$C$DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_GetactivityFlagStatus")
	.dwattr $C$DW$114, DW_AT_low_pc(_CDC_GetactivityFlagStatus)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_CDC_GetactivityFlagStatus")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x27c)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_cdc.c",line 637,column 1,is_stmt,address _CDC_GetactivityFlagStatus

	.dwfde $C$DW$CIE, _CDC_GetactivityFlagStatus
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCDC")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_pCDC")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: CDC_GetactivityFlagStatus                                    *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_GetactivityFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("pCDC")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_pCDC")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("pCdcClassHdl")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_pCdcClassHdl")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("pCdcHandle")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_pCdcHandle")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 641,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_cdc.c",line 642,column 4,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #38, AR3 ; |642| 

	.dwpsn	file "src/csl_cdc.c",line 644,column 4,is_stmt
        MOV *AR3(short(#2)), T0 ; |644| 
	.dwpsn	file "src/csl_cdc.c",line 645,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$114, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x285)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.global	_CDC_GetsuspendFlagStatus

$C$DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_GetsuspendFlagStatus")
	.dwattr $C$DW$120, DW_AT_low_pc(_CDC_GetsuspendFlagStatus)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_CDC_GetsuspendFlagStatus")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x2b4)
	.dwattr $C$DW$120, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_cdc.c",line 693,column 1,is_stmt,address _CDC_GetsuspendFlagStatus

	.dwfde $C$DW$CIE, _CDC_GetsuspendFlagStatus
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCDC")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_pCDC")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: CDC_GetsuspendFlagStatus                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_GetsuspendFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("pCDC")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_pCDC")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("pCdcClassHdl")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_pCdcClassHdl")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 697,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_cdc.c",line 698,column 4,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |698| 

	.dwpsn	file "src/csl_cdc.c",line 700,column 4,is_stmt
        MOV *AR3(short(#6)), T0 ; |700| 
	.dwpsn	file "src/csl_cdc.c",line 701,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$120, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x2bd)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text"
	.global	_CDC_eventHandler

$C$DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_eventHandler")
	.dwattr $C$DW$126, DW_AT_low_pc(_CDC_eventHandler)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_CDC_eventHandler")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$126, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x2f9)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(0x1e)
	.dwpsn	file "src/csl_cdc.c",line 762,column 1,is_stmt,address _CDC_eventHandler

	.dwfde $C$DW$CIE, _CDC_eventHandler
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hCdcClass")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_hCdcClass")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: CDC_eventHandler                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 30 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (28 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_eventHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-29, SP
	.dwcfi	cfa_offset, 30
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("hCdcClass")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_hCdcClass")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("txBuf")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_txBuf")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("pCdcObj")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_pCdcObj")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 26]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 765,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#26))
||      AADD #38, AR3 ; |765| 

	.dwpsn	file "src/csl_cdc.c",line 767,column 2,is_stmt
        MOV #1038, T0 ; |767| 
        MOV *(#_usbRegisters), AR3 ; |767| 
        MOV port(*AR3(T0)), AR1 ; |767| 
        MOV AR1, *SP(#24) ; |767| 
	.dwpsn	file "src/csl_cdc.c",line 768,column 3,is_stmt
        MOV port(*AR3(T0)), AR1 ; |768| 
        AND #0xfff0, AR1, AC0 ; |768| 
        MOV AC0, port(*AR3(T0)) ; |768| 
	.dwpsn	file "src/csl_cdc.c",line 771,column 2,is_stmt
        B $C$L38  ; |771| 
                                        ; branch occurs ; |771| 
$C$L27:    
	.dwpsn	file "src/csl_cdc.c",line 775,column 4,is_stmt
        MOV #1042, T0 ; |775| 
        MOV *(#_usbRegisters), AR3 ; |775| 
        MOV port(*AR3(T0)), AR1 ; |775| 
        BCLR @#3, AR1 ; |775| 
        BSET @#3, AR1 ; |775| 
        MOV AR1, port(*AR3(T0)) ; |775| 
	.dwpsn	file "src/csl_cdc.c",line 777,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |777| 
        MOV port(*AR3(T0)), AR1 ; |777| 
        BCLR @#1, AR1 ; |777| 
        BSET @#1, AR1 ; |777| 
        MOV AR1, port(*AR3(T0)) ; |777| 
	.dwpsn	file "src/csl_cdc.c",line 779,column 9,is_stmt
        B $C$L40  ; |779| 
                                        ; branch occurs ; |779| 
$C$L28:    
	.dwpsn	file "src/csl_cdc.c",line 783,column 4,is_stmt
        MOV #1042, T0 ; |783| 
        MOV *(#_usbRegisters), AR3 ; |783| 
        MOV port(*AR3(T0)), AR1 ; |783| 
        BCLR @#3, AR1 ; |783| 
        BSET @#3, AR1 ; |783| 
        MOV AR1, port(*AR3(T0)) ; |783| 
	.dwpsn	file "src/csl_cdc.c",line 785,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |785| 
        MOV port(*AR3(T0)), AR1 ; |785| 
        BCLR @#1, AR1 ; |785| 
        BSET @#1, AR1 ; |785| 
        MOV AR1, port(*AR3(T0)) ; |785| 
	.dwpsn	file "src/csl_cdc.c",line 787,column 9,is_stmt
        B $C$L40  ; |787| 
                                        ; branch occurs ; |787| 
$C$L29:    
	.dwpsn	file "src/csl_cdc.c",line 791,column 4,is_stmt
        MOV #1042, T0 ; |791| 
        MOV *(#_usbRegisters), AR3 ; |791| 
        MOV port(*AR3(T0)), AR1 ; |791| 
        BCLR @#3, AR1 ; |791| 
        BSET @#3, AR1 ; |791| 
        MOV AR1, port(*AR3(T0)) ; |791| 
	.dwpsn	file "src/csl_cdc.c",line 793,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |793| 
        MOV port(*AR3(T0)), AR1 ; |793| 
        BCLR @#1, AR1 ; |793| 
        BSET @#1, AR1 ; |793| 
        MOV AR1, port(*AR3(T0)) ; |793| 
	.dwpsn	file "src/csl_cdc.c",line 795,column 9,is_stmt
        B $C$L40  ; |795| 
                                        ; branch occurs ; |795| 
$C$L30:    
	.dwpsn	file "src/csl_cdc.c",line 799,column 4,is_stmt
        MOV #1042, T0 ; |799| 
        MOV *(#_usbRegisters), AR3 ; |799| 
        MOV port(*AR3(T0)), AR1 ; |799| 
        BCLR @#3, AR1 ; |799| 
        BSET @#3, AR1 ; |799| 
        MOV AR1, port(*AR3(T0)) ; |799| 
	.dwpsn	file "src/csl_cdc.c",line 801,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |801| 
        MOV port(*AR3(T0)), AR1 ; |801| 
        BCLR @#1, AR1 ; |801| 
        BSET @#1, AR1 ; |801| 
        MOV AR1, port(*AR3(T0)) ; |801| 
	.dwpsn	file "src/csl_cdc.c",line 803,column 9,is_stmt
        B $C$L40  ; |803| 
                                        ; branch occurs ; |803| 
$C$L31:    
	.dwpsn	file "src/csl_cdc.c",line 807,column 4,is_stmt
        MOV #1042, T0 ; |807| 
        MOV *(#_usbRegisters), AR3 ; |807| 
        MOV port(*AR3(T0)), AR1 ; |807| 
        BCLR @#3, AR1 ; |807| 
        BSET @#3, AR1 ; |807| 
        MOV AR1, port(*AR3(T0)) ; |807| 
	.dwpsn	file "src/csl_cdc.c",line 809,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |809| 
        MOV port(*AR3(T0)), AR1 ; |809| 
        BCLR @#1, AR1 ; |809| 
        BSET @#1, AR1 ; |809| 
        MOV AR1, port(*AR3(T0)) ; |809| 
	.dwpsn	file "src/csl_cdc.c",line 811,column 9,is_stmt
        B $C$L40  ; |811| 
                                        ; branch occurs ; |811| 
$C$L32:    
	.dwpsn	file "src/csl_cdc.c",line 815,column 4,is_stmt
        MOV #1042, T0 ; |815| 
        MOV *(#_usbRegisters), AR3 ; |815| 
        MOV port(*AR3(T0)), AR1 ; |815| 

        AND #0x0001, AR1, AR1 ; |815| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |815| 
        BCC $C$L33,TC1 ; |815| 
                                        ; branchcc occurs ; |815| 
	.dwpsn	file "src/csl_cdc.c",line 819,column 5,is_stmt
        MOV port(*AR3(T0)), AR1 ; |819| 
        BCLR @#6, AR1 ; |819| 
        BSET @#6, AR1 ; |819| 
        MOV AR1, port(*AR3(T0)) ; |819| 
$C$L33:    
	.dwpsn	file "src/csl_cdc.c",line 823,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |823| 
        MOV port(*AR3(T0)), AR1 ; |823| 
        BCLR @#3, AR1 ; |823| 
        BSET @#3, AR1 ; |823| 
        MOV AR1, port(*AR3(T0)) ; |823| 
	.dwpsn	file "src/csl_cdc.c",line 825,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |825| 
        MOV port(*AR3(T0)), AR1 ; |825| 
        BCLR @#1, AR1 ; |825| 
        BSET @#1, AR1 ; |825| 
        MOV AR1, port(*AR3(T0)) ; |825| 
	.dwpsn	file "src/csl_cdc.c",line 849,column 4,is_stmt
        MOV #1, *(#_gUsbCdcWaitPacket) ; |849| 
	.dwpsn	file "src/csl_cdc.c",line 852,column 9,is_stmt
        B $C$L40  ; |852| 
                                        ; branch occurs ; |852| 
$C$L34:    
	.dwpsn	file "src/csl_cdc.c",line 858,column 4,is_stmt
        MOV dbl(*SP(#26)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |858| 
        AND #0xffff, AC0, AC0 ; |858| 
        MOV AC0, *SP(#4) ; |858| 
	.dwpsn	file "src/csl_cdc.c",line 859,column 4,is_stmt
        MOV dbl(*AR3(#12)), AC0 ; |859| 
        MOV HI(AC0), *SP(#5) ; |859| 
	.dwpsn	file "src/csl_cdc.c",line 861,column 4,is_stmt
        MOV *AR3(#15), AC1 ; |861| 
        MOV *AR3(#14), AC0 ; |861| 
        OR AC1 << #8, AC0 ; |861| 
        MOV AC0, *SP(#6) ; |861| 
	.dwpsn	file "src/csl_cdc.c",line 863,column 4,is_stmt
        MOV *AR3(#16), AR1 ; |863| 
        MOV AR1, *SP(#7) ; |863| 
	.dwpsn	file "src/csl_cdc.c",line 864,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3

        AMAR *SP(#4), XAR1
||      MOV #7, T0

        MOV dbl(*AR3(#198)), XAR0
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALL #_USB_postTransaction ; |864| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |864| 
	.dwpsn	file "src/csl_cdc.c",line 866,column 9,is_stmt
        B $C$L40  ; |866| 
                                        ; branch occurs ; |866| 
$C$L35:    
	.dwpsn	file "src/csl_cdc.c",line 871,column 4,is_stmt
        MOV *AR3(#96), AR1 ; |871| 
        MOV dbl(*SP(#26)), XAR3
        AND #0x0003, AR1, AC0 ; |871| 
        MOV AC0, *AR3(#18) ; |871| 
	.dwpsn	file "src/csl_cdc.c",line 873,column 4,is_stmt
        MOV #1042, T0 ; |873| 
        MOV *(#_usbRegisters), AR3 ; |873| 
        MOV port(*AR3(T0)), AR1 ; |873| 
        BCLR @#3, AR1 ; |873| 
        BSET @#3, AR1 ; |873| 
        MOV AR1, port(*AR3(T0)) ; |873| 
	.dwpsn	file "src/csl_cdc.c",line 875,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |875| 
        MOV port(*AR3(T0)), AR1 ; |875| 
        BCLR @#1, AR1 ; |875| 
        BSET @#1, AR1 ; |875| 
        MOV AR1, port(*AR3(T0)) ; |875| 
	.dwpsn	file "src/csl_cdc.c",line 877,column 9,is_stmt
        B $C$L40  ; |877| 
                                        ; branch occurs ; |877| 
$C$L36:    
	.dwpsn	file "src/csl_cdc.c",line 881,column 4,is_stmt
        MOV #1042, T0 ; |881| 
        MOV *(#_usbRegisters), AR3 ; |881| 
        MOV port(*AR3(T0)), AR1 ; |881| 
        BCLR @#3, AR1 ; |881| 
        BSET @#3, AR1 ; |881| 
        MOV AR1, port(*AR3(T0)) ; |881| 
	.dwpsn	file "src/csl_cdc.c",line 883,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |883| 
        MOV port(*AR3(T0)), AR1 ; |883| 
        BCLR @#1, AR1 ; |883| 
        BSET @#1, AR1 ; |883| 
        MOV AR1, port(*AR3(T0)) ; |883| 
	.dwpsn	file "src/csl_cdc.c",line 885,column 9,is_stmt
        B $C$L40  ; |885| 
                                        ; branch occurs ; |885| 
$C$L37:    
	.dwpsn	file "src/csl_cdc.c",line 889,column 4,is_stmt
        MOV *(#_gUsbCdcWaitPacket), AR1 ; |889| 
        BCC $C$L40,AR1 == #0 ; |889| 
                                        ; branchcc occurs ; |889| 
	.dwpsn	file "src/csl_cdc.c",line 892,column 5,is_stmt
        MOV *AR3(#95), AC1 ; |892| 
        MOV *AR3(#94), AC0 ; |892| 
        MOV dbl(*SP(#26)), XAR3
        OR AC1 << #8, AC0 ; |892| 
        AND #0xffff, AC0, AC0 ; |892| 
        MOV AC0, dbl(*AR3(#12)) ; |892| 
	.dwpsn	file "src/csl_cdc.c",line 893,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#26)), XAR3
        MOV *AR2(#96), AR1 ; |893| 
        MOV AR1, HI(AC0) ; |893| 
        MOV dbl(*AR3(#12)), AC1 ; |893| 
        OR AC1, AC0 ; |893| 
        MOV AC0, dbl(*AR3(#12)) ; |893| 
	.dwpsn	file "src/csl_cdc.c",line 894,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*AR3(#97))), AR1 ; |894| 
        MOV dbl(*SP(#26)), XAR3
        MOV AR1, *AR3(#14) ; |894| 
	.dwpsn	file "src/csl_cdc.c",line 895,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(high_byte(*AR3(#97))), AR1 ; |895| 
        MOV dbl(*SP(#26)), XAR3
        MOV AR1, *AR3(#15) ; |895| 
	.dwpsn	file "src/csl_cdc.c",line 896,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*AR3(#98))), AR1 ; |896| 
        MOV dbl(*SP(#26)), XAR3
        MOV AR1, *AR3(#16) ; |896| 
	.dwpsn	file "src/csl_cdc.c",line 898,column 5,is_stmt
        MOV #0, *(#_gUsbCdcWaitPacket) ; |898| 
	.dwpsn	file "src/csl_cdc.c",line 901,column 5,is_stmt
        MOV #1042, T0 ; |901| 
        MOV *(#_usbRegisters), AR3 ; |901| 
        MOV port(*AR3(T0)), AR1 ; |901| 
        BCLR @#6, AR1 ; |901| 
        BSET @#6, AR1 ; |901| 
        MOV AR1, port(*AR3(T0)) ; |901| 
	.dwpsn	file "src/csl_cdc.c",line 904,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |904| 
        MOV port(*AR3(T0)), AR1 ; |904| 
        BCLR @#3, AR1 ; |904| 
        BSET @#3, AR1 ; |904| 
        MOV AR1, port(*AR3(T0)) ; |904| 
	.dwpsn	file "src/csl_cdc.c",line 906,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |906| 
        MOV port(*AR3(T0)), AR1 ; |906| 
        BCLR @#1, AR1 ; |906| 
        BSET @#1, AR1 ; |906| 
        MOV AR1, port(*AR3(T0)) ; |906| 
	.dwpsn	file "src/csl_cdc.c",line 910,column 9,is_stmt
        B $C$L40  ; |910| 
                                        ; branch occurs ; |910| 
$C$L38:    
	.dwpsn	file "src/csl_cdc.c",line 771,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#0)), XAR3
        MOV *AR2(#94), AC0 ; |771| 

        MOV #8450, AR2 ; |771| 
||      SFTL AC0, #8, AC0 ; |771| 

        OR *AR3(#95), AC0, AR1 ; |771| 
        CMP AR1 > AR2, TC1 ; |771| 
        BCC $C$L39,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        CMP AR1 == AR2, TC1 ; |771| 
        BCC $C$L29,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #41217, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L28,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #41219, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L30,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #41249, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L34,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #8448, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L27,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        B $C$L37  ; |771| 
                                        ; branch occurs ; |771| 
$C$L39:    
        MOV #8452, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L31,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #8480, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L32,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #8482, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L35,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        MOV #8483, AR2 ; |771| 
        CMPU AR1 == AR2, TC1 ; |771| 
        BCC $C$L36,TC1 ; |771| 
                                        ; branchcc occurs ; |771| 
        B $C$L37  ; |771| 
                                        ; branch occurs ; |771| 
$C$L40:    
	.dwpsn	file "src/csl_cdc.c",line 913,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |913| 
        MOV #1038, T0 ; |913| 
        MOV *SP(#24), AR1 ; |913| 
        MOV AR1, port(*AR3(T0)) ; |913| 
	.dwpsn	file "src/csl_cdc.c",line 915,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_cdc.c",line 916,column 1,is_stmt
        AADD #29, SP
	.dwcfi	cfa_offset, 1
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$126, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x394)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.global	_CDC_bulkOutHandler

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_bulkOutHandler")
	.dwattr $C$DW$136, DW_AT_low_pc(_CDC_bulkOutHandler)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_CDC_bulkOutHandler")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x3cd)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "src/csl_cdc.c",line 974,column 1,is_stmt,address _CDC_bulkOutHandler

	.dwfde $C$DW$CIE, _CDC_bulkOutHandler
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: CDC_bulkOutHandler                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_bulkOutHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("tempEpH")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_tempEpH")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("usb_income_num_bytes")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_usb_income_num_bytes")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("txRxStatus")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_txRxStatus")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("bytesRem")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_bytesRem")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV XAR1, dbl(*SP(#6))
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "src/csl_cdc.c",line 983,column 2,is_stmt
        MOV #0, *SP(#13) ; |983| 
	.dwpsn	file "src/csl_cdc.c",line 984,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_cdc.c",line 988,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#90)), XAR0
        AADD #36, AR0 ; |988| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_USB_isValidDataInFifoOut")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #_USB_isValidDataInFifoOut ; |988| 
                                        ; call occurs [#_USB_isValidDataInFifoOut] ; |988| 
        BCC $C$L41,T0 == #0 ; |988| 
                                        ; branchcc occurs ; |988| 
	.dwpsn	file "src/csl_cdc.c",line 991,column 3,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_USB_epNumToHandle")
	.dwattr $C$DW$150, DW_AT_TI_call

        CALL #_USB_epNumToHandle ; |991| 
||      MOV #2, T0

                                        ; call occurs [#_USB_epNumToHandle] ; |991| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "src/csl_cdc.c",line 992,column 3,is_stmt
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_USB_getDataCountReadFromFifo")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #_USB_getDataCountReadFromFifo ; |992| 
                                        ; call occurs [#_USB_getDataCountReadFromFifo] ; |992| 
        MOV T0, *SP(#10) ; |992| 
$C$L41:    
	.dwpsn	file "src/csl_cdc.c",line 996,column 2,is_stmt
        MOV #512, AR2 ; |996| 
        MOV *SP(#10), AR1 ; |996| 
        CMPU AR1 >= AR2, TC1 ; |996| 
        BCC $C$L48,TC1 ; |996| 
                                        ; branchcc occurs ; |996| 
	.dwpsn	file "src/csl_cdc.c",line 998,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#200)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#10), T0 ; |998| 
        MOV dbl(*AR3(#16)), XAR1
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$152, DW_AT_TI_call

        CALL #_USB_postTransaction ; |998| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |998| 
        MOV T0, *SP(#13) ; |998| 
	.dwpsn	file "src/csl_cdc.c",line 1001,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L42,AR1 == #0 ; |1001| 
                                        ; branchcc occurs ; |1001| 
	.dwpsn	file "src/csl_cdc.c",line 1003,column 4,is_stmt
        AMOV #$C$FSL2, XAR3 ; |1003| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_printf")
	.dwattr $C$DW$153, DW_AT_TI_call
        CALL #_printf ; |1003| 
                                        ; call occurs [#_printf] ; |1003| 
$C$L42:    
	.dwpsn	file "src/csl_cdc.c",line 1007,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#13), XAR1
        MOV dbl(*AR3(#200)), XAR0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$154, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1007| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1007| 
        MOV T0, *SP(#14) ; |1007| 
	.dwpsn	file "src/csl_cdc.c",line 1008,column 3,is_stmt
        CMP *SP(#14) == #1, TC1 ; |1008| 
        BCC $C$L43,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
	.dwpsn	file "src/csl_cdc.c",line 1010,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#13), XAR1
        MOV dbl(*AR3(#200)), XAR0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_USB_bytesRemaining")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_USB_bytesRemaining ; |1010| 
                                        ; call occurs [#_USB_bytesRemaining] ; |1010| 
        MOV T0, *SP(#15) ; |1010| 
	.dwpsn	file "src/csl_cdc.c",line 1011,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L43,AR1 == #0 ; |1011| 
                                        ; branchcc occurs ; |1011| 
	.dwpsn	file "src/csl_cdc.c",line 1013,column 5,is_stmt
        AMOV #$C$FSL3, XAR3 ; |1013| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#15), AR1 ; |1013| 
        MOV AR1, *SP(#2) ; |1013| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_printf")
	.dwattr $C$DW$156, DW_AT_TI_call
        CALL #_printf ; |1013| 
                                        ; call occurs [#_printf] ; |1013| 
$C$L43:    
	.dwpsn	file "src/csl_cdc.c",line 1017,column 3,is_stmt
        MOV #0, *SP(#12) ; |1017| 
	.dwpsn	file "src/csl_cdc.c",line 1019,column 10,is_stmt
        MOV #0, *SP(#11) ; |1019| 
	.dwpsn	file "src/csl_cdc.c",line 1019,column 22,is_stmt
        MOV *SP(#10), AR1 ; |1019| 
        MOV *SP(#11), AR2 ; |1019| 
        CMPU AR2 >= AR1, TC1 ; |1019| 
        BCC $C$L49,TC1 ; |1019| 
                                        ; branchcc occurs ; |1019| 
$C$L44:    
$C$DW$L$_CDC_bulkOutHandler$10$B:
	.dwpsn	file "src/csl_cdc.c",line 1022,column 7,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#7)), AR1 ; |1022| 
        MOV AR1, AR2 ; |1022| 
        ADD #1, AR2, AR2 ; |1022| 
        MOV AR2, *AR3(short(#7)) ; |1022| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), T0 ; |1022| 
        MOV dbl(*AR3(short(#4))), XAR2
        MOV dbl(*AR3(#16)), XAR3

        MOV AR1, T0 ; |1022| 
||      MOV uns(low_byte(*AR3(T0))), AR3 ; |1022| 

        MOV AR3, *AR2(T0) ; |1022| 
	.dwpsn	file "src/csl_cdc.c",line 1024,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, AR2 ; |1024| 
        MOV *AR3(short(#7)), AR1 ; |1024| 
        CMPU AR1 < AR2, TC1 ; |1024| 
        BCC $C$L45,TC1 ; |1024| 
                                        ; branchcc occurs ; |1024| 
$C$DW$L$_CDC_bulkOutHandler$10$E:
$C$DW$L$_CDC_bulkOutHandler$11$B:
	.dwpsn	file "src/csl_cdc.c",line 1026,column 5,is_stmt
        MOV #0, *AR3(short(#7)) ; |1026| 
$C$DW$L$_CDC_bulkOutHandler$11$E:
$C$L45:    
$C$DW$L$_CDC_bulkOutHandler$12$B:
	.dwpsn	file "src/csl_cdc.c",line 1029,column 4,is_stmt
        MOV *SP(#10), AC0 ; |1029| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1029| 

        MOV AC0, AR1 ; |1029| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |1029| 
        BCC $C$L47,TC1 ; |1029| 
                                        ; branchcc occurs ; |1029| 
$C$DW$L$_CDC_bulkOutHandler$12$E:
$C$DW$L$_CDC_bulkOutHandler$13$B:
	.dwpsn	file "src/csl_cdc.c",line 1031,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#7)), AR1 ; |1031| 
        MOV AR1, AR2 ; |1031| 
        ADD #1, AR2, AR2 ; |1031| 
        MOV AR2, *AR3(short(#7)) ; |1031| 
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), T0 ; |1031| 
        MOV dbl(*AR3(short(#4))), XAR2
        MOV dbl(*AR3(#16)), XAR3

        MOV AR1, T0 ; |1031| 
||      MOV uns(high_byte(*AR3(T0))), AR3 ; |1031| 

        AND #0x00ff, AR3, AC0 ; |1031| 
        MOV AC0, *AR2(T0) ; |1031| 
	.dwpsn	file "src/csl_cdc.c",line 1033,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, AR2 ; |1033| 
        MOV *AR3(short(#7)), AR1 ; |1033| 
        CMPU AR1 < AR2, TC1 ; |1033| 
        BCC $C$L46,TC1 ; |1033| 
                                        ; branchcc occurs ; |1033| 
$C$DW$L$_CDC_bulkOutHandler$13$E:
$C$DW$L$_CDC_bulkOutHandler$14$B:
	.dwpsn	file "src/csl_cdc.c",line 1035,column 6,is_stmt
        MOV #0, *AR3(short(#7)) ; |1035| 
$C$DW$L$_CDC_bulkOutHandler$14$E:
$C$L46:    
$C$DW$L$_CDC_bulkOutHandler$15$B:
	.dwpsn	file "src/csl_cdc.c",line 1038,column 8,is_stmt
        ADD #1, *SP(#11) ; |1038| 
$C$DW$L$_CDC_bulkOutHandler$15$E:
$C$L47:    
$C$DW$L$_CDC_bulkOutHandler$16$B:
	.dwpsn	file "src/csl_cdc.c",line 1041,column 4,is_stmt
        ADD #1, *SP(#12) ; |1041| 
	.dwpsn	file "src/csl_cdc.c",line 1019,column 53,is_stmt
        ADD #1, *SP(#11) ; |1019| 
	.dwpsn	file "src/csl_cdc.c",line 1019,column 22,is_stmt
        MOV *SP(#10), AR1 ; |1019| 
        MOV *SP(#11), AR2 ; |1019| 
        CMPU AR2 < AR1, TC1 ; |1019| 
        BCC $C$L44,TC1 ; |1019| 
                                        ; branchcc occurs ; |1019| 
$C$DW$L$_CDC_bulkOutHandler$16$E:
	.dwpsn	file "src/csl_cdc.c",line 1043,column 2,is_stmt
        B $C$L49  ; |1043| 
                                        ; branch occurs ; |1043| 
$C$L48:    
	.dwpsn	file "src/csl_cdc.c",line 1046,column 3,is_stmt
        AMOV #$C$FSL4, XAR3 ; |1046| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_printf")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #_printf ; |1046| 
                                        ; call occurs [#_printf] ; |1046| 
$C$L49:    
	.dwpsn	file "src/csl_cdc.c",line 1049,column 2,is_stmt
        MOV *SP(#13), T0 ; |1049| 
	.dwpsn	file "src/csl_cdc.c",line 1050,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$159	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$159, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L44:1:1714639430")
	.dwattr $C$DW$159, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x3fb)
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x412)
$C$DW$160	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$160, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$10$B)
	.dwattr $C$DW$160, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$10$E)
$C$DW$161	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$161, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$13$B)
	.dwattr $C$DW$161, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$13$E)
$C$DW$162	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$162, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$14$B)
	.dwattr $C$DW$162, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$14$E)
$C$DW$163	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$163, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$11$B)
	.dwattr $C$DW$163, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$11$E)
$C$DW$164	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$164, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$12$B)
	.dwattr $C$DW$164, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$12$E)
$C$DW$165	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$165, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$15$B)
	.dwattr $C$DW$165, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$15$E)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_CDC_bulkOutHandler$16$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_CDC_bulkOutHandler$16$E)
	.dwendtag $C$DW$159

	.dwattr $C$DW$136, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x41a)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.global	_CDC_bulkInHandler

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_bulkInHandler")
	.dwattr $C$DW$167, DW_AT_low_pc(_CDC_bulkInHandler)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_CDC_bulkInHandler")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$167, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x452)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_cdc.c",line 1107,column 1,is_stmt,address _CDC_bulkInHandler

	.dwfde $C$DW$CIE, _CDC_bulkInHandler
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg17]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: CDC_bulkInHandler                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_bulkInHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("txRxStatus")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_txRxStatus")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("bytesRem")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_bytesRem")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("txStartIdxSave")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_txStartIdxSave")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("txEndIdxSave")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_txEndIdxSave")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV XAR1, dbl(*SP(#6))
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "src/csl_cdc.c",line 1111,column 2,is_stmt
        MOV #0, *SP(#8) ; |1111| 
	.dwpsn	file "src/csl_cdc.c",line 1114,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#14), AR1 ; |1114| 
        BCC $C$L70,AR1 != #0 ; |1114| 
                                        ; branchcc occurs ; |1114| 
	.dwpsn	file "src/csl_cdc.c",line 1117,column 3,is_stmt
        MOV *AR3(#10), AR1 ; |1117| 
        MOV AR1, *SP(#11) ; |1117| 
	.dwpsn	file "src/csl_cdc.c",line 1118,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#11), AR1 ; |1118| 
        MOV AR1, *SP(#12) ; |1118| 
	.dwpsn	file "src/csl_cdc.c",line 1119,column 3,is_stmt
        MOV *SP(#12), AR2 ; |1119| 
        MOV *SP(#11), AR1 ; |1119| 
        CMPU AR2 != AR1, TC1 ; |1119| 
        BCC $C$L50,TC1 ; |1119| 
                                        ; branchcc occurs ; |1119| 
	.dwpsn	file "src/csl_cdc.c",line 1122,column 4,is_stmt
        MOV *SP(#8), T0 ; |1122| 
        B $C$L71  ; |1122| 
                                        ; branch occurs ; |1122| 
$C$L50:    
	.dwpsn	file "src/csl_cdc.c",line 1123,column 10,is_stmt
        CMPU AR2 <= AR1, TC1 ; |1123| 
        BCC $C$L57,TC1 ; |1123| 
                                        ; branchcc occurs ; |1123| 
	.dwpsn	file "src/csl_cdc.c",line 1127,column 9,is_stmt
        MOV #0, *SP(#13) ; |1127| 
	.dwpsn	file "src/csl_cdc.c",line 1127,column 14,is_stmt
        MOV *SP(#12), AC0 ; |1127| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1127| 

        MOV AC0, AR1 ; |1127| 
||      MOV *SP(#13), AR2 ; |1127| 

        CMPU AR2 >= AR1, TC1 ; |1127| 
        BCC $C$L54,TC1 ; |1127| 
                                        ; branchcc occurs ; |1127| 
$C$L51:    
$C$DW$L$_CDC_bulkInHandler$7$B:
	.dwpsn	file "src/csl_cdc.c",line 1129,column 5,is_stmt
        BTST #0, *SP(#13), TC1 ; |1129| 
        BCC $C$L52,!TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 
$C$DW$L$_CDC_bulkInHandler$7$E:
$C$DW$L$_CDC_bulkInHandler$8$B:
	.dwpsn	file "src/csl_cdc.c",line 1130,column 6,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        ADD *SP(#11), AR1, T0 ; |1130| 
        MOV dbl(*AR3(#8)), XAR3
        MOV *AR3(T0), AC0 ; |1130| 
        MOV dbl(*SP(#6)), XAR3

        SFTL AC0, #8, AC0 ; |1130| 
||      MOV AR2, T0

        SFTL T0, #-1 ; |1130| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AC0, *AR3(T0) ; |1130| 
        B $C$L53  ; |1130| 
                                        ; branch occurs ; |1130| 
$C$DW$L$_CDC_bulkInHandler$8$E:
$C$L52:    
$C$DW$L$_CDC_bulkInHandler$9$B:
	.dwpsn	file "src/csl_cdc.c",line 1132,column 6,is_stmt
        MOV AR2, AC0
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, AR4
        ADD *SP(#11), AR4, T0 ; |1132| 
        MOV dbl(*AR2(#8)), XAR2
        MOV dbl(*AR3(#12)), XAR3
        BFXTR #0xfffe, AC0, AR1 ; |1132| 

        MOV AR1, T0 ; |1132| 
||      MOV uns(low_byte(*AR2(T0))), AR2 ; |1132| 

        OR *AR3(T0), AR2, AR2 ; |1132| 
        MOV AR2, *AR3(T0) ; |1132| 
$C$DW$L$_CDC_bulkInHandler$9$E:
$C$L53:    
$C$DW$L$_CDC_bulkInHandler$10$B:
	.dwpsn	file "src/csl_cdc.c",line 1127,column 47,is_stmt
        ADD #1, *SP(#13) ; |1127| 
	.dwpsn	file "src/csl_cdc.c",line 1127,column 14,is_stmt
        MOV *SP(#12), AC0 ; |1127| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1127| 

        MOV AC0, AR1 ; |1127| 
||      MOV *SP(#13), AR2 ; |1127| 

        CMPU AR2 < AR1, TC1 ; |1127| 
        BCC $C$L51,TC1 ; |1127| 
                                        ; branchcc occurs ; |1127| 
$C$DW$L$_CDC_bulkInHandler$10$E:
$C$L54:    
	.dwpsn	file "src/csl_cdc.c",line 1135,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#202)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), AC0 ; |1135| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1135| 
        MOV #128, T1 ; |1135| 
        MOV dbl(*AR3(#12)), XAR1
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$178, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1135| 
||      MOV AC0, T0 ; |1135| 

                                        ; call occurs [#_USB_postTransaction] ; |1135| 
        MOV T0, *SP(#8) ; |1135| 
	.dwpsn	file "src/csl_cdc.c",line 1137,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L55,AR1 == #0 ; |1137| 
                                        ; branchcc occurs ; |1137| 
	.dwpsn	file "src/csl_cdc.c",line 1139,column 5,is_stmt
        AMOV #$C$FSL5, XAR3 ; |1139| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_printf")
	.dwattr $C$DW$179, DW_AT_TI_call
        CALL #_printf ; |1139| 
                                        ; call occurs [#_printf] ; |1139| 
$C$L55:    
	.dwpsn	file "src/csl_cdc.c",line 1143,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1143| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1143| 
        MOV T0, *SP(#9) ; |1143| 
	.dwpsn	file "src/csl_cdc.c",line 1144,column 4,is_stmt
        CMP *SP(#9) == #1, TC1 ; |1144| 
        BCC $C$L56,TC1 ; |1144| 
                                        ; branchcc occurs ; |1144| 
	.dwpsn	file "src/csl_cdc.c",line 1146,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_USB_bytesRemaining")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #_USB_bytesRemaining ; |1146| 
                                        ; call occurs [#_USB_bytesRemaining] ; |1146| 
        MOV T0, *SP(#10) ; |1146| 
	.dwpsn	file "src/csl_cdc.c",line 1147,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L56,AR1 == #0 ; |1147| 
                                        ; branchcc occurs ; |1147| 
	.dwpsn	file "src/csl_cdc.c",line 1149,column 6,is_stmt
        AMOV #$C$FSL3, XAR3 ; |1149| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#10), AR1 ; |1149| 
        MOV AR1, *SP(#2) ; |1149| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_printf")
	.dwattr $C$DW$182, DW_AT_TI_call
        CALL #_printf ; |1149| 
                                        ; call occurs [#_printf] ; |1149| 
$C$L56:    
	.dwpsn	file "src/csl_cdc.c",line 1154,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), AR1 ; |1154| 
        MOV AR1, *AR3(#10) ; |1154| 
	.dwpsn	file "src/csl_cdc.c",line 1155,column 3,is_stmt
        B $C$L70  ; |1155| 
                                        ; branch occurs ; |1155| 
$C$L57:    
	.dwpsn	file "src/csl_cdc.c",line 1155,column 10,is_stmt
        CMPU AR2 >= AR1, TC1 ; |1155| 
        BCC $C$L70,TC1 ; |1155| 
                                        ; branchcc occurs ; |1155| 
	.dwpsn	file "src/csl_cdc.c",line 1160,column 9,is_stmt
        MOV #0, *SP(#13) ; |1160| 
	.dwpsn	file "src/csl_cdc.c",line 1160,column 14,is_stmt
        MOV #512, AC0 ; |1160| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1160| 

        MOV AC0, AR1 ; |1160| 
||      MOV *SP(#13), AR2 ; |1160| 

        CMPU AR2 >= AR1, TC1 ; |1160| 
        BCC $C$L61,TC1 ; |1160| 
                                        ; branchcc occurs ; |1160| 
$C$L58:    
$C$DW$L$_CDC_bulkInHandler$19$B:
	.dwpsn	file "src/csl_cdc.c",line 1162,column 5,is_stmt
        BTST #0, *SP(#13), TC1 ; |1162| 
        BCC $C$L59,!TC1 ; |1162| 
                                        ; branchcc occurs ; |1162| 
$C$DW$L$_CDC_bulkInHandler$19$E:
$C$DW$L$_CDC_bulkInHandler$20$B:
	.dwpsn	file "src/csl_cdc.c",line 1163,column 6,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        ADD *SP(#11), AR1, T0 ; |1163| 
        MOV dbl(*AR3(#8)), XAR3
        MOV *AR3(T0), AC0 ; |1163| 
        MOV dbl(*SP(#6)), XAR3

        SFTL AC0, #8, AC0 ; |1163| 
||      MOV AR2, T0

        SFTL T0, #-1 ; |1163| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AC0, *AR3(T0) ; |1163| 
        B $C$L60  ; |1163| 
                                        ; branch occurs ; |1163| 
$C$DW$L$_CDC_bulkInHandler$20$E:
$C$L59:    
$C$DW$L$_CDC_bulkInHandler$21$B:
	.dwpsn	file "src/csl_cdc.c",line 1165,column 6,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        ADD *SP(#11), AR1, T0 ; |1165| 
        MOV dbl(*AR3(#8)), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |1165| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, T0
        SFTL T0, #-1 ; |1165| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AR1, *AR3(T0) ; |1165| 
$C$DW$L$_CDC_bulkInHandler$21$E:
$C$L60:    
$C$DW$L$_CDC_bulkInHandler$22$B:
	.dwpsn	file "src/csl_cdc.c",line 1160,column 60,is_stmt
        ADD #1, *SP(#13) ; |1160| 
	.dwpsn	file "src/csl_cdc.c",line 1160,column 14,is_stmt
        MOV #512, AC0 ; |1160| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1160| 

        MOV AC0, AR1 ; |1160| 
||      MOV *SP(#13), AR2 ; |1160| 

        CMPU AR2 < AR1, TC1 ; |1160| 
        BCC $C$L58,TC1 ; |1160| 
                                        ; branchcc occurs ; |1160| 
$C$DW$L$_CDC_bulkInHandler$22$E:
$C$L61:    
	.dwpsn	file "src/csl_cdc.c",line 1168,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#202)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV #512, AC0 ; |1168| 
        SUB uns(*SP(#11)), AC0, AC0 ; |1168| 
        MOV #128, T1 ; |1168| 
        MOV dbl(*AR3(#12)), XAR1
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$183, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1168| 
||      MOV AC0, T0 ; |1168| 

                                        ; call occurs [#_USB_postTransaction] ; |1168| 
        MOV T0, *SP(#8) ; |1168| 
	.dwpsn	file "src/csl_cdc.c",line 1170,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L62,AR1 == #0 ; |1170| 
                                        ; branchcc occurs ; |1170| 
	.dwpsn	file "src/csl_cdc.c",line 1172,column 5,is_stmt
        AMOV #$C$FSL5, XAR3 ; |1172| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_printf")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_printf ; |1172| 
                                        ; call occurs [#_printf] ; |1172| 
$C$L62:    
	.dwpsn	file "src/csl_cdc.c",line 1176,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$185, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1176| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1176| 
        MOV T0, *SP(#9) ; |1176| 
	.dwpsn	file "src/csl_cdc.c",line 1177,column 4,is_stmt
        CMP *SP(#9) == #1, TC1 ; |1177| 
        BCC $C$L63,TC1 ; |1177| 
                                        ; branchcc occurs ; |1177| 
	.dwpsn	file "src/csl_cdc.c",line 1179,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_USB_bytesRemaining")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #_USB_bytesRemaining ; |1179| 
                                        ; call occurs [#_USB_bytesRemaining] ; |1179| 
        MOV T0, *SP(#10) ; |1179| 
	.dwpsn	file "src/csl_cdc.c",line 1180,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L63,AR1 == #0 ; |1180| 
                                        ; branchcc occurs ; |1180| 
	.dwpsn	file "src/csl_cdc.c",line 1182,column 6,is_stmt
        AMOV #$C$FSL3, XAR3 ; |1182| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#10), AR1 ; |1182| 
        MOV AR1, *SP(#2) ; |1182| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_printf")
	.dwattr $C$DW$187, DW_AT_TI_call
        CALL #_printf ; |1182| 
                                        ; call occurs [#_printf] ; |1182| 
$C$L63:    
	.dwpsn	file "src/csl_cdc.c",line 1187,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#10) ; |1187| 
	.dwpsn	file "src/csl_cdc.c",line 1191,column 9,is_stmt
        MOV #0, *SP(#13) ; |1191| 
	.dwpsn	file "src/csl_cdc.c",line 1191,column 14,is_stmt
        MOV *SP(#12), AR1 ; |1191| 
        MOV *SP(#13), AR2 ; |1191| 
        CMPU AR2 >= AR1, TC1 ; |1191| 
        BCC $C$L67,TC1 ; |1191| 
                                        ; branchcc occurs ; |1191| 
$C$L64:    
$C$DW$L$_CDC_bulkInHandler$29$B:
	.dwpsn	file "src/csl_cdc.c",line 1193,column 5,is_stmt
        BTST #0, *SP(#13), TC1 ; |1193| 
        BCC $C$L65,!TC1 ; |1193| 
                                        ; branchcc occurs ; |1193| 
$C$DW$L$_CDC_bulkInHandler$29$E:
$C$DW$L$_CDC_bulkInHandler$30$B:
	.dwpsn	file "src/csl_cdc.c",line 1194,column 6,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        ADD *SP(#11), AR1, T0 ; |1194| 
        MOV dbl(*AR3(#8)), XAR3
        MOV *AR3(T0), AC0 ; |1194| 
        MOV dbl(*SP(#6)), XAR3

        SFTL AC0, #8, AC0 ; |1194| 
||      MOV AR2, T0

        SFTL T0, #-1 ; |1194| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AC0, *AR3(T0) ; |1194| 
        B $C$L66  ; |1194| 
                                        ; branch occurs ; |1194| 
$C$DW$L$_CDC_bulkInHandler$30$E:
$C$L65:    
$C$DW$L$_CDC_bulkInHandler$31$B:
	.dwpsn	file "src/csl_cdc.c",line 1196,column 6,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, AR1
        ADD *SP(#11), AR1, T0 ; |1196| 
        MOV dbl(*AR3(#8)), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |1196| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR2, T0
        SFTL T0, #-1 ; |1196| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AR1, *AR3(T0) ; |1196| 
$C$DW$L$_CDC_bulkInHandler$31$E:
$C$L66:    
$C$DW$L$_CDC_bulkInHandler$32$B:
	.dwpsn	file "src/csl_cdc.c",line 1191,column 30,is_stmt
        ADD #1, *SP(#13) ; |1191| 
	.dwpsn	file "src/csl_cdc.c",line 1191,column 14,is_stmt
        MOV *SP(#12), AR1 ; |1191| 
        MOV *SP(#13), AR2 ; |1191| 
        CMPU AR2 < AR1, TC1 ; |1191| 
        BCC $C$L64,TC1 ; |1191| 
                                        ; branchcc occurs ; |1191| 
$C$DW$L$_CDC_bulkInHandler$32$E:
$C$L67:    
	.dwpsn	file "src/csl_cdc.c",line 1199,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#202)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), T0 ; |1199| 
        MOV #128, T1 ; |1199| 
        MOV dbl(*AR3(#12)), XAR1
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$188, DW_AT_TI_call
        CALL #_USB_postTransaction ; |1199| 
                                        ; call occurs [#_USB_postTransaction] ; |1199| 
        MOV T0, *SP(#8) ; |1199| 
	.dwpsn	file "src/csl_cdc.c",line 1201,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L68,AR1 == #0 ; |1201| 
                                        ; branchcc occurs ; |1201| 
	.dwpsn	file "src/csl_cdc.c",line 1203,column 5,is_stmt
        AMOV #$C$FSL5, XAR3 ; |1203| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_printf")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #_printf ; |1203| 
                                        ; call occurs [#_printf] ; |1203| 
$C$L68:    
	.dwpsn	file "src/csl_cdc.c",line 1207,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1207| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1207| 
        MOV T0, *SP(#9) ; |1207| 
	.dwpsn	file "src/csl_cdc.c",line 1208,column 4,is_stmt
        CMP *SP(#9) == #1, TC1 ; |1208| 
        BCC $C$L69,TC1 ; |1208| 
                                        ; branchcc occurs ; |1208| 
	.dwpsn	file "src/csl_cdc.c",line 1210,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_USB_bytesRemaining")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #_USB_bytesRemaining ; |1210| 
                                        ; call occurs [#_USB_bytesRemaining] ; |1210| 
        MOV T0, *SP(#10) ; |1210| 
	.dwpsn	file "src/csl_cdc.c",line 1211,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L69,AR1 == #0 ; |1211| 
                                        ; branchcc occurs ; |1211| 
	.dwpsn	file "src/csl_cdc.c",line 1213,column 6,is_stmt
        AMOV #$C$FSL3, XAR3 ; |1213| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#10), AR1 ; |1213| 
        MOV AR1, *SP(#2) ; |1213| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_printf")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #_printf ; |1213| 
                                        ; call occurs [#_printf] ; |1213| 
$C$L69:    
	.dwpsn	file "src/csl_cdc.c",line 1218,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#12), AR1 ; |1218| 
        MOV AR1, *AR3(#10) ; |1218| 
$C$L70:    
	.dwpsn	file "src/csl_cdc.c",line 1222,column 2,is_stmt
        MOV *SP(#8), T0 ; |1222| 
$C$L71:    
	.dwpsn	file "src/csl_cdc.c",line 1223,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$194	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$194, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L64:1:1714639430")
	.dwattr $C$DW$194, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x4a7)
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x4ad)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$29$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$29$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$30$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$30$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$31$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$31$E)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$32$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$32$E)
	.dwendtag $C$DW$194


$C$DW$199	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$199, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L58:1:1714639430")
	.dwattr $C$DW$199, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$199, DW_AT_TI_begin_line(0x488)
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x48e)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$19$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$19$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$20$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$20$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$21$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$21$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$22$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$22$E)
	.dwendtag $C$DW$199


$C$DW$204	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$204, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L51:1:1714639430")
	.dwattr $C$DW$204, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x467)
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x46d)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$7$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$7$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$8$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$8$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$9$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$9$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_CDC_bulkInHandler$10$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_CDC_bulkInHandler$10$E)
	.dwendtag $C$DW$204

	.dwattr $C$DW$167, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x4c7)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.global	_CDC_getData

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_getData")
	.dwattr $C$DW$209, DW_AT_low_pc(_CDC_getData)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_CDC_getData")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$209, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x503)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_cdc.c",line 1284,column 1,is_stmt,address _CDC_getData

	.dwfde $C$DW$CIE, _CDC_getData
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg17]
$C$DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg19]
$C$DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: CDC_getData                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_getData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("rxEndIdxSave")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_rxEndIdxSave")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("rxStartIdxSave")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_rxStartIdxSave")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("tempSize")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_tempSize")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_cdc.c",line 1287,column 2,is_stmt
        MOV #0, *SP(#9) ; |1287| 
	.dwpsn	file "src/csl_cdc.c",line 1289,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1289| 
        MOV AR1, *SP(#7) ; |1289| 
	.dwpsn	file "src/csl_cdc.c",line 1290,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |1290| 
        MOV AR1, *SP(#6) ; |1290| 
	.dwpsn	file "src/csl_cdc.c",line 1291,column 2,is_stmt
        MOV *SP(#6), AR2 ; |1291| 
        MOV *SP(#7), AR1 ; |1291| 
        CMPU AR2 <= AR1, TC1 ; |1291| 
        BCC $C$L72,TC1 ; |1291| 
                                        ; branchcc occurs ; |1291| 
	.dwpsn	file "src/csl_cdc.c",line 1294,column 3,is_stmt
        MOV AR2, AC0
        SUB uns(*SP(#7)), AC0, AC0 ; |1294| 
        MOV AC0, *SP(#9) ; |1294| 
	.dwpsn	file "src/csl_cdc.c",line 1295,column 2,is_stmt
        B $C$L74  ; |1295| 
                                        ; branch occurs ; |1295| 
$C$L72:    
	.dwpsn	file "src/csl_cdc.c",line 1295,column 9,is_stmt
        CMPU AR2 >= AR1, TC1 ; |1295| 
        BCC $C$L73,TC1 ; |1295| 
                                        ; branchcc occurs ; |1295| 
	.dwpsn	file "src/csl_cdc.c",line 1298,column 3,is_stmt
        MOV AR2, AC0
        SUB uns(*SP(#7)), AC0, AC0 ; |1298| 
        ADD #512, AC0, AR1 ; |1298| 
        MOV AR1, *SP(#9) ; |1298| 
	.dwpsn	file "src/csl_cdc.c",line 1299,column 2,is_stmt
        B $C$L74  ; |1299| 
                                        ; branch occurs ; |1299| 
$C$L73:    
	.dwpsn	file "src/csl_cdc.c",line 1302,column 3,is_stmt
        MOV #0, *SP(#9) ; |1302| 
$C$L74:    
	.dwpsn	file "src/csl_cdc.c",line 1306,column 7,is_stmt
        MOV #0, *SP(#8) ; |1306| 
	.dwpsn	file "src/csl_cdc.c",line 1306,column 12,is_stmt
        MOV *SP(#9), AR1 ; |1306| 
        MOV *SP(#8), AR2 ; |1306| 
        CMPU AR2 >= AR1, TC1 ; |1306| 
        BCC $C$L77,TC1 ; |1306| 
                                        ; branchcc occurs ; |1306| 
$C$L75:    
$C$DW$L$_CDC_getData$7$B:
	.dwpsn	file "src/csl_cdc.c",line 1308,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), T0 ; |1308| 
        MOV dbl(*AR3(short(#4))), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |1308| 
        MOV *SP(#8), T0 ; |1308| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(T0) ; |1308| 
	.dwpsn	file "src/csl_cdc.c",line 1310,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        ADD #1, *AR3(short(#6)) ; |1310| 
	.dwpsn	file "src/csl_cdc.c",line 1311,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #512, AR2 ; |1311| 
        MOV *AR3(short(#6)), AR1 ; |1311| 
        CMPU AR1 < AR2, TC1 ; |1311| 
        BCC $C$L76,TC1 ; |1311| 
                                        ; branchcc occurs ; |1311| 
$C$DW$L$_CDC_getData$7$E:
$C$DW$L$_CDC_getData$8$B:
	.dwpsn	file "src/csl_cdc.c",line 1312,column 4,is_stmt
        MOV #0, *AR3(short(#6)) ; |1312| 
$C$DW$L$_CDC_getData$8$E:
$C$L76:    
$C$DW$L$_CDC_getData$9$B:
	.dwpsn	file "src/csl_cdc.c",line 1306,column 24,is_stmt
        ADD #1, *SP(#8) ; |1306| 
	.dwpsn	file "src/csl_cdc.c",line 1306,column 12,is_stmt
        MOV *SP(#9), AR1 ; |1306| 
        MOV *SP(#8), AR2 ; |1306| 
        CMPU AR2 < AR1, TC1 ; |1306| 
        BCC $C$L75,TC1 ; |1306| 
                                        ; branchcc occurs ; |1306| 
$C$DW$L$_CDC_getData$9$E:
$C$L77:    
	.dwpsn	file "src/csl_cdc.c",line 1315,column 2,is_stmt
        MOV AR1, T0
	.dwpsn	file "src/csl_cdc.c",line 1316,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$221	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$221, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L75:1:1714639430")
	.dwattr $C$DW$221, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$221, DW_AT_TI_begin_line(0x51a)
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x521)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_CDC_getData$7$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_CDC_getData$7$E)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_CDC_getData$8$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_CDC_getData$8$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_CDC_getData$9$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_CDC_getData$9$E)
	.dwendtag $C$DW$221

	.dwattr $C$DW$209, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x524)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.global	_CDC_putData

$C$DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("CDC_putData")
	.dwattr $C$DW$225, DW_AT_low_pc(_CDC_putData)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_CDC_putData")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x561)
	.dwattr $C$DW$225, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_cdc.c",line 1378,column 1,is_stmt,address _CDC_putData

	.dwfde $C$DW$CIE, _CDC_putData
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg17]
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg19]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg21]
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: CDC_putData                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CDC_putData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("cdcAppHandle")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_cdcAppHandle")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("txRxStatus")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_txRxStatus")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("bytesRem")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_bytesRem")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("txEndIdxSave")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_txEndIdxSave")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("txStartIdxSave")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_txStartIdxSave")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV T0, *SP(#10) ; |1378| 
        MOV XAR2, dbl(*SP(#8))
        MOV XAR1, dbl(*SP(#6))
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "src/csl_cdc.c",line 1384,column 2,is_stmt
        MOV #512, AR2 ; |1384| 
        MOV *SP(#10), AR1 ; |1384| 
        CMPU AR1 <= AR2, TC1 ; |1384| 
        BCC $C$L78,TC1 ; |1384| 
                                        ; branchcc occurs ; |1384| 
	.dwpsn	file "src/csl_cdc.c",line 1385,column 3,is_stmt
        MOV #0, T0
        B $C$L93  ; |1385| 
                                        ; branch occurs ; |1385| 
$C$L78:    
	.dwpsn	file "src/csl_cdc.c",line 1387,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#10), AR1 ; |1387| 
        MOV AR1, *SP(#16) ; |1387| 
	.dwpsn	file "src/csl_cdc.c",line 1388,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#11), AR1 ; |1388| 
        MOV AR1, *SP(#15) ; |1388| 
	.dwpsn	file "src/csl_cdc.c",line 1389,column 2,is_stmt
        MOV *SP(#15), AR2 ; |1389| 
        MOV *SP(#16), AR1 ; |1389| 
        CMPU AR2 != AR1, TC1 ; |1389| 
        BCC $C$L87,TC1 ; |1389| 
                                        ; branchcc occurs ; |1389| 
	.dwpsn	file "src/csl_cdc.c",line 1392,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#14), AR1 ; |1392| 
        BCC $C$L79,AR1 == #0 ; |1392| 
                                        ; branchcc occurs ; |1392| 
	.dwpsn	file "src/csl_cdc.c",line 1394,column 4,is_stmt
        MOV #0, T0
        B $C$L93  ; |1394| 
                                        ; branch occurs ; |1394| 
$C$L79:    
	.dwpsn	file "src/csl_cdc.c",line 1398,column 8,is_stmt
        MOV #0, *SP(#14) ; |1398| 
	.dwpsn	file "src/csl_cdc.c",line 1398,column 13,is_stmt
        MOV *SP(#10), AR1 ; |1398| 
        MOV *SP(#14), AR2 ; |1398| 
        CMPU AR2 >= AR1, TC1 ; |1398| 
        BCC $C$L84,TC1 ; |1398| 
                                        ; branchcc occurs ; |1398| 
$C$L80:    
$C$DW$L$_CDC_putData$7$B:
	.dwpsn	file "src/csl_cdc.c",line 1400,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        BTST #0, *AR3(#14), TC1 ; |1400| 
        BCC $C$L81,!TC1 ; |1400| 
                                        ; branchcc occurs ; |1400| 
$C$DW$L$_CDC_putData$7$E:
$C$DW$L$_CDC_putData$8$B:
	.dwpsn	file "src/csl_cdc.c",line 1402,column 5,is_stmt
        MOV *SP(#14), T0 ; |1402| 
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3(T0), AC1 ; |1402| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#14), T0 ; |1402| 
        SFTL T0, #-1 ; |1402| 
        MOV dbl(*AR3(#12)), XAR3
        MOV uns(low_byte(*AR3(T0))), AC0 ; |1402| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#14), T0 ; |1402| 
        SFTL T0, #-1 ; |1402| 
        MOV dbl(*AR3(#12)), XAR3
        OR AC1 << #8, AC0 ; |1402| 
        MOV AC0, *AR3(T0) ; |1402| 
	.dwpsn	file "src/csl_cdc.c",line 1403,column 4,is_stmt
        B $C$L82  ; |1403| 
                                        ; branch occurs ; |1403| 
$C$DW$L$_CDC_putData$8$E:
$C$L81:    
$C$DW$L$_CDC_putData$9$B:
	.dwpsn	file "src/csl_cdc.c",line 1406,column 5,is_stmt
        MOV *SP(#14), T0 ; |1406| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |1406| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#14), T0 ; |1406| 
        SFTL T0, #-1 ; |1406| 
        MOV dbl(*AR3(#12)), XAR3
        MOV AR1, *AR3(T0) ; |1406| 
$C$DW$L$_CDC_putData$9$E:
$C$L82:    
$C$DW$L$_CDC_putData$10$B:
	.dwpsn	file "src/csl_cdc.c",line 1409,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        ADD #1, *AR3(#14) ; |1409| 
	.dwpsn	file "src/csl_cdc.c",line 1410,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, AR2 ; |1410| 
        MOV *AR3(#14), AR1 ; |1410| 
        CMPU AR1 < AR2, TC1 ; |1410| 
        BCC $C$L83,TC1 ; |1410| 
                                        ; branchcc occurs ; |1410| 
$C$DW$L$_CDC_putData$10$E:
$C$DW$L$_CDC_putData$11$B:
	.dwpsn	file "src/csl_cdc.c",line 1411,column 5,is_stmt
        MOV #0, *AR3(#14) ; |1411| 
$C$DW$L$_CDC_putData$11$E:
$C$L83:    
$C$DW$L$_CDC_putData$12$B:
	.dwpsn	file "src/csl_cdc.c",line 1398,column 21,is_stmt
        ADD #1, *SP(#14) ; |1398| 
	.dwpsn	file "src/csl_cdc.c",line 1398,column 13,is_stmt
        MOV *SP(#10), AR1 ; |1398| 
        MOV *SP(#14), AR2 ; |1398| 
        CMPU AR2 < AR1, TC1 ; |1398| 
        BCC $C$L80,TC1 ; |1398| 
                                        ; branchcc occurs ; |1398| 
$C$DW$L$_CDC_putData$12$E:
$C$L84:    
	.dwpsn	file "src/csl_cdc.c",line 1415,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#202)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#10), T0 ; |1415| 
        MOV #128, T1 ; |1415| 
        MOV dbl(*AR3(#12)), XAR1
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #_USB_postTransaction ; |1415| 
                                        ; call occurs [#_USB_postTransaction] ; |1415| 
        MOV T0, *SP(#11) ; |1415| 
	.dwpsn	file "src/csl_cdc.c",line 1417,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L85,AR1 == #0 ; |1417| 
                                        ; branchcc occurs ; |1417| 
	.dwpsn	file "src/csl_cdc.c",line 1419,column 4,is_stmt
        AMOV #$C$FSL5, XAR3 ; |1419| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_printf")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #_printf ; |1419| 
                                        ; call occurs [#_printf] ; |1419| 
$C$L85:    
	.dwpsn	file "src/csl_cdc.c",line 1423,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#11), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$242, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1423| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1423| 
        MOV T0, *SP(#12) ; |1423| 
	.dwpsn	file "src/csl_cdc.c",line 1424,column 3,is_stmt
        CMP *SP(#12) == #1, TC1 ; |1424| 
        BCC $C$L86,TC1 ; |1424| 
                                        ; branchcc occurs ; |1424| 
	.dwpsn	file "src/csl_cdc.c",line 1426,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#11), XAR1
        MOV dbl(*AR3(#202)), XAR0
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_USB_bytesRemaining")
	.dwattr $C$DW$243, DW_AT_TI_call
        CALL #_USB_bytesRemaining ; |1426| 
                                        ; call occurs [#_USB_bytesRemaining] ; |1426| 
        MOV T0, *SP(#13) ; |1426| 
	.dwpsn	file "src/csl_cdc.c",line 1427,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L86,AR1 == #0 ; |1427| 
                                        ; branchcc occurs ; |1427| 
	.dwpsn	file "src/csl_cdc.c",line 1429,column 5,is_stmt
        AMOV #$C$FSL3, XAR3 ; |1429| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#13), AR1 ; |1429| 
        MOV AR1, *SP(#2) ; |1429| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_printf")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #_printf ; |1429| 
                                        ; call occurs [#_printf] ; |1429| 
$C$L86:    
	.dwpsn	file "src/csl_cdc.c",line 1434,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#11), AR1 ; |1434| 
        MOV AR1, *AR3(#10) ; |1434| 
	.dwpsn	file "src/csl_cdc.c",line 1436,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#14) ; |1436| 
	.dwpsn	file "src/csl_cdc.c",line 1437,column 2,is_stmt
        B $C$L92  ; |1437| 
                                        ; branch occurs ; |1437| 
$C$L87:    
	.dwpsn	file "src/csl_cdc.c",line 1441,column 3,is_stmt
        CMPU AR2 <= AR1, TC1 ; |1441| 
        BCC $C$L88,TC1 ; |1441| 
                                        ; branchcc occurs ; |1441| 
	.dwpsn	file "src/csl_cdc.c",line 1443,column 4,is_stmt
        MOV *SP(#15), AC0 ; |1443| 
        MOV #512, AR2 ; |1443| 
        SUB uns(*SP(#16)), AC0, AC0 ; |1443| 
        ADD *SP(#10), AC0, AR1 ; |1443| 
        CMPU AR1 <= AR2, TC1 ; |1443| 
        BCC $C$L89,TC1 ; |1443| 
                                        ; branchcc occurs ; |1443| 
	.dwpsn	file "src/csl_cdc.c",line 1444,column 5,is_stmt
        MOV #0, T0
        B $C$L93  ; |1444| 
                                        ; branch occurs ; |1444| 
$C$L88:    
	.dwpsn	file "src/csl_cdc.c",line 1448,column 4,is_stmt

        MOV #512, AR2 ; |1448| 
||      MOV AR1, AC0 ; |1448| 

        SUB uns(*SP(#15)), AC0, AC0 ; |1448| 
        ADD *SP(#10), AC0, AR1 ; |1448| 
        CMPU AR1 <= AR2, TC1 ; |1448| 
        BCC $C$L89,TC1 ; |1448| 
                                        ; branchcc occurs ; |1448| 
	.dwpsn	file "src/csl_cdc.c",line 1449,column 5,is_stmt
        MOV #0, T0
        B $C$L93  ; |1449| 
                                        ; branch occurs ; |1449| 
$C$L89:    
	.dwpsn	file "src/csl_cdc.c",line 1452,column 8,is_stmt
        MOV #0, *SP(#14) ; |1452| 
	.dwpsn	file "src/csl_cdc.c",line 1452,column 13,is_stmt
        MOV *SP(#10), AR1 ; |1452| 
        MOV *SP(#14), AR2 ; |1452| 
        CMPU AR2 >= AR1, TC1 ; |1452| 
        BCC $C$L92,TC1 ; |1452| 
                                        ; branchcc occurs ; |1452| 
$C$L90:    
$C$DW$L$_CDC_putData$26$B:
	.dwpsn	file "src/csl_cdc.c",line 1454,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#11), T0 ; |1454| 
        SFTL T0, #-1 ; |1454| 
        MOV dbl(*AR3(#8)), XAR3
        MOV *AR3(T0), AR1 ; |1454| 
        MOV *SP(#14), T0 ; |1454| 
        MOV dbl(*SP(#8)), XAR3
        AND #0xff00, AR1, AR2 ; |1454| 
        MOV uns(low_byte(*AR3(T0))), AR1 ; |1454| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#11), T0 ; |1454| 
        MOV dbl(*AR3(#8)), XAR3
        OR AR2, AR1 ; |1454| 
        MOV AR1, *AR3(T0) ; |1454| 
	.dwpsn	file "src/csl_cdc.c",line 1456,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        ADD #1, *AR3(#11) ; |1456| 
	.dwpsn	file "src/csl_cdc.c",line 1457,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, AR2 ; |1457| 
        MOV *AR3(#11), AR1 ; |1457| 
        CMPU AR1 < AR2, TC1 ; |1457| 
        BCC $C$L91,TC1 ; |1457| 
                                        ; branchcc occurs ; |1457| 
$C$DW$L$_CDC_putData$26$E:
$C$DW$L$_CDC_putData$27$B:
	.dwpsn	file "src/csl_cdc.c",line 1458,column 5,is_stmt
        MOV #0, *AR3(#11) ; |1458| 
$C$DW$L$_CDC_putData$27$E:
$C$L91:    
$C$DW$L$_CDC_putData$28$B:
	.dwpsn	file "src/csl_cdc.c",line 1452,column 21,is_stmt
        ADD #1, *SP(#14) ; |1452| 
	.dwpsn	file "src/csl_cdc.c",line 1452,column 13,is_stmt
        MOV *SP(#10), AR1 ; |1452| 
        MOV *SP(#14), AR2 ; |1452| 
        CMPU AR2 < AR1, TC1 ; |1452| 
        BCC $C$L90,TC1 ; |1452| 
                                        ; branchcc occurs ; |1452| 
$C$DW$L$_CDC_putData$28$E:
$C$L92:    
	.dwpsn	file "src/csl_cdc.c",line 1462,column 2,is_stmt
        MOV *SP(#10), T0 ; |1462| 
$C$L93:    
	.dwpsn	file "src/csl_cdc.c",line 1463,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$246	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$246, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L90:1:1714639430")
	.dwattr $C$DW$246, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x5ac)
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x5b3)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_CDC_putData$26$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_CDC_putData$26$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_CDC_putData$27$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_CDC_putData$27$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_CDC_putData$28$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_CDC_putData$28$E)
	.dwendtag $C$DW$246


$C$DW$250	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$250, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_cdc.asm:$C$L80:1:1714639430")
	.dwattr $C$DW$250, DW_AT_TI_begin_file("src/csl_cdc.c")
	.dwattr $C$DW$250, DW_AT_TI_begin_line(0x576)
	.dwattr $C$DW$250, DW_AT_TI_end_line(0x584)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_CDC_putData$7$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_CDC_putData$7$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_CDC_putData$8$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_CDC_putData$8$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_CDC_putData$9$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_CDC_putData$9$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_CDC_putData$10$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_CDC_putData$10$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_CDC_putData$11$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_CDC_putData$11$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_CDC_putData$12$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_CDC_putData$12$E)
	.dwendtag $C$DW$250

	.dwattr $C$DW$225, DW_AT_TI_end_file("src/csl_cdc.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x5b7)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"USB Reset failed",10,0
	.align	2
$C$FSL2:	.string	"USB RX Transaction failed",10,0
	.align	2
$C$FSL3:	.string	"Bytes remaining: %d",10,0
	.align	2
$C$FSL4:	.string	"USB RX Buffer is overflow",10,0
	.align	2
$C$FSL5:	.string	"USB TX Transaction failed",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_printf
	.global	_USB_init
	.global	_USB_open
	.global	_USB_config
	.global	_USB_requestEndpt
	.global	_USB_configEndpt
	.global	_USB_resetDev
	.global	_USB_postTransaction
	.global	_USB_isTransactionDone
	.global	_USB_bytesRemaining
	.global	_USB_epNumToHandle
	.global	_USB_connectDev
	.global	_USB_disconnectDev
	.global	_USB_setParams
	.global	_USB_setFullSpeedMode
	.global	_USB_getDataCountReadFromFifo
	.global	_usbRegisters

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$76	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$257	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB0"), DW_AT_const_value(0x00)
$C$DW$258	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB1"), DW_AT_const_value(0x01)
$C$DW$259	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$76

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevNum")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)

$C$DW$T$88	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$260	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$261	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$262	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA_TXONLY"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$88

$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbOpMode")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$104	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$263	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_FALSE"), DW_AT_const_value(0x00)
$C$DW$264	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_TRUE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$104

$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBoolean")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)

$C$DW$T$106	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$265	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_UNKNOWN_SPEED"), DW_AT_const_value(0x00)
$C$DW$266	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_FULL_SPEED"), DW_AT_const_value(0x02)
$C$DW$267	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_HIGH_SPEED"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$106

$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBusSpeed")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)

$C$DW$T$108	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$268	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_IDLE"), DW_AT_const_value(0x00)
$C$DW$269	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_STATUS_IN"), DW_AT_const_value(0x01)
$C$DW$270	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_TX"), DW_AT_const_value(0x02)
$C$DW$271	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_RX"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$108

$C$DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEp0State")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)

$C$DW$T$112	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$272	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_DETACH"), DW_AT_const_value(0x00)
$C$DW$273	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_ATTACH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$112

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDeviceEvent")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$116	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x01)
$C$DW$274	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP0"), DW_AT_const_value(0x00)
$C$DW$275	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP1"), DW_AT_const_value(0x01)
$C$DW$276	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP2"), DW_AT_const_value(0x02)
$C$DW$277	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP3"), DW_AT_const_value(0x03)
$C$DW$278	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP4"), DW_AT_const_value(0x04)
$C$DW$279	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP5"), DW_AT_const_value(0x05)
$C$DW$280	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP6"), DW_AT_const_value(0x06)
$C$DW$281	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP7"), DW_AT_const_value(0x07)
$C$DW$282	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP0"), DW_AT_const_value(0x08)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP1"), DW_AT_const_value(0x09)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP2"), DW_AT_const_value(0x0a)
$C$DW$285	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP3"), DW_AT_const_value(0x0b)
$C$DW$286	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP4"), DW_AT_const_value(0x0c)
$C$DW$287	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP5"), DW_AT_const_value(0x0d)
$C$DW$288	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP6"), DW_AT_const_value(0x0e)
$C$DW$289	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP7"), DW_AT_const_value(0x0f)
	.dwendtag $C$DW$T$116

$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpNum")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)

$C$DW$T$118	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x01)
$C$DW$290	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_CTRL"), DW_AT_const_value(0x00)
$C$DW$291	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BULK"), DW_AT_const_value(0x01)
$C$DW$292	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_INTR"), DW_AT_const_value(0x02)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_ISO"), DW_AT_const_value(0x03)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_HPORT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$118

$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbXferType")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)

$C$DW$T$133	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_DONE"), DW_AT_const_value(0x00)
$C$DW$296	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_STALL"), DW_AT_const_value(0x01)
$C$DW$297	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_SEND_ACK"), DW_AT_const_value(0x02)
$C$DW$298	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_GET_ACK"), DW_AT_const_value(0x03)
$C$DW$299	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_DATA_IN"), DW_AT_const_value(0x04)
$C$DW$300	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CDC_REQUEST_DATA_OUT"), DW_AT_const_value(0x05)
	.dwendtag $C$DW$T$133

$C$DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcRequestRet")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("dwBaudRate")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_dwBaudRate")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$302, DW_AT_name("wCharFormat")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_wCharFormat")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$303, DW_AT_name("wParityType")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_wParityType")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_name("wDataBits")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_wDataBits")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcLineCoding")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x08)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$305, DW_AT_name("TXFUNCADDR")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_TXFUNCADDR")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$306, DW_AT_name("TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$307, DW_AT_name("RSVD0")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$308, DW_AT_name("RXFUNCADDR")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_RXFUNCADDR")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$309, DW_AT_name("RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$310, DW_AT_name("RSVD36")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_RSVD36")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEptrgRegs")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x28)
$C$DW$311	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$311, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$42


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x10)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$312, DW_AT_name("TXMAXP")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_TXMAXP")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$313, DW_AT_name("PERI_TXCSR")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_PERI_TXCSR")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$314, DW_AT_name("RSVD0")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$315, DW_AT_name("RXMAXP")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_RXMAXP")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$316, DW_AT_name("PERI_RXCSR")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_PERI_RXCSR")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$317, DW_AT_name("RSVD1")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$318, DW_AT_name("RXCOUNT")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_RXCOUNT")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$319, DW_AT_name("RSVD41")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_RSVD41")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpcsrRegs")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x40)
$C$DW$320	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$320, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$45


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x20)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$321, DW_AT_name("TXGCR1")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_TXGCR1")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$322, DW_AT_name("TXGCR2")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_TXGCR2")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$323, DW_AT_name("RSVD0")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$324, DW_AT_name("RXGCR1")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_RXGCR1")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$325, DW_AT_name("RXGCR2")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_RXGCR2")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$326, DW_AT_name("RSVD1")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$327, DW_AT_name("RXHPCR1A")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_RXHPCR1A")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$328, DW_AT_name("RXHPCR2A")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_RXHPCR2A")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$329, DW_AT_name("RSVD2")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$330, DW_AT_name("RXHPCR1B")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_RXHPCR1B")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$331, DW_AT_name("RXHPCR2B")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_RXHPCR2B")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$332, DW_AT_name("RSVD46")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_RSVD46")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbChannelRegs")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x80)
$C$DW$333	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$333, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$49


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$334, DW_AT_name("ENTRYLSW")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_ENTRYLSW")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$335, DW_AT_name("ENTRYMSW")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_ENTRYMSW")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$336, DW_AT_name("RSVD49")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_RSVD49")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbCdmaschetblwordRegs")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x100)
$C$DW$337	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$337, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$53


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x10)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$338, DW_AT_name("QMEMRBASE1")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_QMEMRBASE1")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$339, DW_AT_name("QMEMRBASE2")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_QMEMRBASE2")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$340, DW_AT_name("RSVD0")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$341, DW_AT_name("QMEMRCTRL1")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_QMEMRCTRL1")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$342, DW_AT_name("QMEMRCTRL2")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_QMEMRCTRL2")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$343, DW_AT_name("RSVD63")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_RSVD63")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmmemregrRegs")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x100)
$C$DW$344	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$344, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$59


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x10)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$345, DW_AT_name("RSVD0")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$346, DW_AT_name("CTRL1D")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_CTRL1D")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$347, DW_AT_name("CTRL2D")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_CTRL2D")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$348, DW_AT_name("RSVD65")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_RSVD65")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnRegs")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x400)
$C$DW$349	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$349, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$62


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x10)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$350, DW_AT_name("QSTATA")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_QSTATA")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$351, DW_AT_name("RSVD0")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$352, DW_AT_name("QSTAT1B")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_QSTAT1B")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$353, DW_AT_name("QSTAT2B")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_QSTAT2B")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$354, DW_AT_name("RSVD1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$355, DW_AT_name("QSTAT1C")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_QSTAT1C")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$356, DW_AT_name("RSVD67")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_RSVD67")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnsRegs")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$65	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x400)
$C$DW$357	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$357, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x6c00)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$358, DW_AT_name("REVID1")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_REVID1")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$359, DW_AT_name("REVID2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_REVID2")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$360, DW_AT_name("RSVD0")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$361, DW_AT_name("CTRLR")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_CTRLR")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$362, DW_AT_name("RSVD1")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$363, DW_AT_name("STATR")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_STATR")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$364, DW_AT_name("RSVD2")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$365, DW_AT_name("EMUR")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_EMUR")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$366, DW_AT_name("RSVD3")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$367, DW_AT_name("MODE1")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_MODE1")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$368, DW_AT_name("MODE2")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_MODE2")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$369, DW_AT_name("RSVD4")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$370, DW_AT_name("AUTOREQ")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_AUTOREQ")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$371, DW_AT_name("RSVD5")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$372, DW_AT_name("SPRFIXTIME1")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_SPRFIXTIME1")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$373, DW_AT_name("SPRFIXTIME2")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_SPRFIXTIME2")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$374, DW_AT_name("RSVD6")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$375, DW_AT_name("TEARDOWN1")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_TEARDOWN1")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$376, DW_AT_name("TEARDOWN2")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_TEARDOWN2")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$377, DW_AT_name("RSVD7")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$378, DW_AT_name("INTSRCR1")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_INTSRCR1")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$379, DW_AT_name("INTSRCR2")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_INTSRCR2")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$380, DW_AT_name("RSVD8")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$381, DW_AT_name("INTSETR1")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_INTSETR1")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$382, DW_AT_name("INTSETR2")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_INTSETR2")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$383, DW_AT_name("RSVD9")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$384, DW_AT_name("INTCLRR1")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_INTCLRR1")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$385, DW_AT_name("INTCLRR2")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_INTCLRR2")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$386, DW_AT_name("RSVD10")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$387, DW_AT_name("INTMSKR1")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_INTMSKR1")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$388, DW_AT_name("INTMSKR2")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_INTMSKR2")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$389, DW_AT_name("RSVD11")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$390, DW_AT_name("INTMSKSETR1")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_INTMSKSETR1")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$391, DW_AT_name("INTMSKSETR2")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_INTMSKSETR2")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$392, DW_AT_name("RSVD12")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$393, DW_AT_name("INTMSKCLRR1")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_INTMSKCLRR1")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$394, DW_AT_name("INTMSKCLRR2")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_INTMSKCLRR2")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$395, DW_AT_name("RSVD13")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$396, DW_AT_name("INTMASKEDR1")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_INTMASKEDR1")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$397, DW_AT_name("INTMASKEDR2")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_INTMASKEDR2")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$398, DW_AT_name("RSVD14")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$399, DW_AT_name("EOIR")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_EOIR")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$400, DW_AT_name("RSVD15")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$401, DW_AT_name("INTVECTR1")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_INTVECTR1")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$402, DW_AT_name("INTVECTR2")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_INTVECTR2")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$403, DW_AT_name("RSVD16")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$404, DW_AT_name("GREP1SZR1")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GREP1SZR1")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$405, DW_AT_name("GREP1SZR2")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GREP1SZR2")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$406, DW_AT_name("RSVD17")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$407, DW_AT_name("GREP2SZR1")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GREP2SZR1")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$408, DW_AT_name("GREP2SZR2")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GREP2SZR2")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$409, DW_AT_name("RSVD18")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$410, DW_AT_name("GREP3SZR1")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GREP3SZR1")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$411, DW_AT_name("GREP3SZR2")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GREP3SZR2")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$412, DW_AT_name("RSVD19")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$413, DW_AT_name("GREP4SZR1")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GREP4SZR1")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$414, DW_AT_name("GREP4SZR2")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GREP4SZR2")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$415, DW_AT_name("RSVD20")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$416, DW_AT_name("FADDR_POWER")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_FADDR_POWER")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x401]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$417, DW_AT_name("INTRTX")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_INTRTX")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x402]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$418, DW_AT_name("RSVD21")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x403]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$419, DW_AT_name("INTRRX")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_INTRRX")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x405]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$420, DW_AT_name("INTRTXE")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_INTRTXE")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x406]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$421, DW_AT_name("RSVD22")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x407]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$422, DW_AT_name("INTRRXE")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_INTRRXE")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x409]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$423, DW_AT_name("INTRUSB_INTRUSBE")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_INTRUSB_INTRUSBE")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x40a]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$424, DW_AT_name("RSVD23")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x40b]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$425, DW_AT_name("FRAME")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_FRAME")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x40d]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$426, DW_AT_name("INDEX_TESTMODE")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_INDEX_TESTMODE")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x40e]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$427, DW_AT_name("RSVD24")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_RSVD24")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x40f]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$428, DW_AT_name("TXMAXP_INDX")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_TXMAXP_INDX")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x411]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$429, DW_AT_name("PERI_CSR0_INDX")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_PERI_CSR0_INDX")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x412]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$430, DW_AT_name("RSVD25")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_RSVD25")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x413]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$431, DW_AT_name("RXMAXP_INDX")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_RXMAXP_INDX")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x415]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$432, DW_AT_name("PERI_RXCSR_INDX")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_PERI_RXCSR_INDX")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x416]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$433, DW_AT_name("RSVD26")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_RSVD26")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x417]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$434, DW_AT_name("COUNT0_INDX")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_COUNT0_INDX")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x419]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$435, DW_AT_name("RSVD27")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_RSVD27")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x41a]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$436, DW_AT_name("CONFIGDATA_INDX")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_CONFIGDATA_INDX")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x41e]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$437, DW_AT_name("RSVD28")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_RSVD28")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x41f]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$438, DW_AT_name("FIFO0R1")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_FIFO0R1")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x421]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$439, DW_AT_name("FIFO0R2")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_FIFO0R2")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x422]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$440, DW_AT_name("RSVD29")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_RSVD29")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x423]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$441, DW_AT_name("FIFO1R1")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_FIFO1R1")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x425]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$442, DW_AT_name("FIFO1R2")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_FIFO1R2")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x426]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$443, DW_AT_name("RSVD30")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_RSVD30")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x427]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$444, DW_AT_name("FIFO2R1")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_FIFO2R1")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x429]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$445, DW_AT_name("FIFO2R2")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_FIFO2R2")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x42a]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$446, DW_AT_name("RSVD31")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_RSVD31")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x42b]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$447, DW_AT_name("FIFO3R1")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_FIFO3R1")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x42d]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$448, DW_AT_name("FIFO3R2")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_FIFO3R2")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x42e]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$449, DW_AT_name("RSVD32")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_RSVD32")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x42f]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$450, DW_AT_name("FIFO4R1")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_FIFO4R1")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x431]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$451, DW_AT_name("FIFO4R2")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_FIFO4R2")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x432]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$452, DW_AT_name("RSVD33")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_RSVD33")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x433]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$453, DW_AT_name("DEVCTL")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_DEVCTL")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x461]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$454, DW_AT_name("TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x462]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$455, DW_AT_name("RSVD34")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_RSVD34")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x463]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$456, DW_AT_name("TXFIFOADDR")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_TXFIFOADDR")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x465]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$457, DW_AT_name("RXFIFOADDR")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_RXFIFOADDR")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x466]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$458, DW_AT_name("RSVD35")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_RSVD35")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x467]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$459, DW_AT_name("HWVERS")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_HWVERS")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x46d]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$460, DW_AT_name("RSVD37")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_RSVD37")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x46e]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$461, DW_AT_name("EPTRG")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_EPTRG")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x481]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$462, DW_AT_name("RSVD38")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_RSVD38")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a9]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$463, DW_AT_name("PERI_CSR0")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_PERI_CSR0")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x502]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$464, DW_AT_name("RSVD39")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_RSVD39")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x503]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$465, DW_AT_name("COUNT0")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_COUNT0")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x509]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$466, DW_AT_name("RSVD40")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_RSVD40")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x50a]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$467, DW_AT_name("CONFIGDATA")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_CONFIGDATA")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x50e]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$468, DW_AT_name("RSVD42")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_RSVD42")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x50f]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$469, DW_AT_name("EPCSR")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_EPCSR")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x511]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$470, DW_AT_name("RSVD43")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_RSVD43")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x551]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$471, DW_AT_name("DMAREVID1")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_DMAREVID1")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x1000]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$472, DW_AT_name("DMAREVID2")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_DMAREVID2")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1001]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$473, DW_AT_name("RSVD44")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_RSVD44")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x1002]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$474, DW_AT_name("TDFDQ")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_TDFDQ")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x1004]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$475, DW_AT_name("RSVD45")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_RSVD45")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x1005]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$476, DW_AT_name("DMAEMU")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_DMAEMU")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x1008]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$477, DW_AT_name("RSVD47")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_RSVD47")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1009]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$478, DW_AT_name("CHANNEL")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_CHANNEL")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1800]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$479, DW_AT_name("RSVD48")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_RSVD48")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x1880]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$480, DW_AT_name("DMA_SCHED_CTRL1")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL1")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x2000]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$481, DW_AT_name("DMA_SCHED_CTRL2")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL2")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x2001]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$482, DW_AT_name("RSVD50")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_RSVD50")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2002]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$483, DW_AT_name("CDMASCHETBLWORD")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_CDMASCHETBLWORD")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2800]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$484, DW_AT_name("RSVD51")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_RSVD51")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x2900]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$485, DW_AT_name("QMGRREVID1")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_QMGRREVID1")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x4000]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$486, DW_AT_name("QMGRREVID2")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_QMGRREVID2")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x4001]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$487, DW_AT_name("RSVD52")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_RSVD52")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x4002]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$488, DW_AT_name("DIVERSION1")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_DIVERSION1")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x4008]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$489, DW_AT_name("DIVERSION2")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_DIVERSION2")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x4009]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$490, DW_AT_name("RSVD53")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_RSVD53")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x400a]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$491, DW_AT_name("FDBSC0")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_FDBSC0")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x4020]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$492, DW_AT_name("FDBSC1")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_FDBSC1")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x4021]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$493, DW_AT_name("RSVD54")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_RSVD54")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x4022]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$494, DW_AT_name("FDBSC2")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_FDBSC2")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x4024]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$495, DW_AT_name("FDBSC3")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_FDBSC3")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x4025]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$496, DW_AT_name("RSVD55")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_RSVD55")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x4026]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$497, DW_AT_name("FDBSC4")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_FDBSC4")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x4028]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$498, DW_AT_name("FDBSC5")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_FDBSC5")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x4029]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$499, DW_AT_name("RSVD56")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_RSVD56")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x402a]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$500, DW_AT_name("FDBSC6")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_FDBSC6")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x402c]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$501, DW_AT_name("FDBSC7")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_FDBSC7")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x402d]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$502, DW_AT_name("RSVD57")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_RSVD57")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x402e]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$503, DW_AT_name("LRAM0BASE1")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_LRAM0BASE1")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x4080]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$504, DW_AT_name("LRAM0BASE2")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_LRAM0BASE2")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x4081]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$505, DW_AT_name("RSVD58")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_RSVD58")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x4082]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$506, DW_AT_name("LRAM0SIZE")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_LRAM0SIZE")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x4084]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$507, DW_AT_name("RSVD59")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_RSVD59")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x4085]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$508, DW_AT_name("LRAM1BASE1")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_LRAM1BASE1")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x4088]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$509, DW_AT_name("LRAM1BASE2")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_LRAM1BASE2")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x4089]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$510, DW_AT_name("RSVD60")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_RSVD60")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x408a]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$511, DW_AT_name("PEND0")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_PEND0")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x4090]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$512, DW_AT_name("PEND1")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_PEND1")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x4091]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$513, DW_AT_name("RSVD61")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_RSVD61")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x4092]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$514, DW_AT_name("PEND2")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_PEND2")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x4094]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$515, DW_AT_name("PEND3")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_PEND3")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x4095]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$516, DW_AT_name("RSVD62")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_RSVD62")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x4096]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$517, DW_AT_name("PEND4")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_PEND4")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x4098]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$518, DW_AT_name("PEND5")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_PEND5")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x4099]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$519, DW_AT_name("RSVD64")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_RSVD64")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x409a]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$520, DW_AT_name("QMMEMREGR")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_QMMEMREGR")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x5000]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$521, DW_AT_name("RSVD66")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_RSVD66")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x5100]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$522, DW_AT_name("QMQN")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_QMQN")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x6000]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$523, DW_AT_name("RSVD68")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_RSVD68")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x6400]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$524, DW_AT_name("QMQNS")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_QMQNS")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x6800]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$66

$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegs")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
$C$DW$525	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$139)
$C$DW$526	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$525)
$C$DW$T$140	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$526)
$C$DW$T$141	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$141, DW_AT_address_class(0x10)
$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegsOvly")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("CSL_CdcClassStruct")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x3a)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$527, DW_AT_name("usbDevHandle")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_usbDevHandle")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$528, DW_AT_name("ctrlHandle")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_ctrlHandle")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$529, DW_AT_name("cdcHandle")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_cdcHandle")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcClassStruct")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x17)
$C$DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("pCdcClassHandle")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("CSL_CdcCtrlObject")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x24)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$530, DW_AT_name("ctrlInEpHandle")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_ctrlInEpHandle")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$531, DW_AT_name("devNum")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$532, DW_AT_name("ctrlOutEpHandle")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_ctrlOutEpHandle")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$533, DW_AT_name("suspendFlag")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_suspendFlag")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$534, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$535, DW_AT_name("usbSetup")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$536, DW_AT_name("curConfigStat")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$537, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$81

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcCtrlObject")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$144	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x17)

$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_name("CSL_CdcInitStructApp")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x20)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$538, DW_AT_name("pCdcObj")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_pCdcObj")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$539, DW_AT_name("pId")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_pId")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$540, DW_AT_name("vId")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_vId")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$541, DW_AT_name("rxBufferPtr")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_rxBufferPtr")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$542, DW_AT_name("rxStartIdx")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_rxStartIdx")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$543, DW_AT_name("rxEndIdx")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_rxEndIdx")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$544, DW_AT_name("txBufferPtr")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_txBufferPtr")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$545, DW_AT_name("txStartIdx")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_txStartIdx")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$546, DW_AT_name("txEndIdx")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_txEndIdx")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$547, DW_AT_name("txWorkBufPtr")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_txWorkBufPtr")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$548, DW_AT_name("txWorkBufIdx")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_txWorkBufIdx")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$549, DW_AT_name("rxWorkBufPtr")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_rxWorkBufPtr")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$550, DW_AT_name("rxWorkBufIdx")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_rxWorkBufIdx")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$551, DW_AT_name("bulkHandler")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_bulkHandler")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$552, DW_AT_name("ctrlHandler")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_ctrlHandler")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$553, DW_AT_name("intrHandler")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_intrHandler")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$554, DW_AT_name("bulkInCallback")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_bulkInCallback")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$555, DW_AT_name("bulkOutCallback")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_bulkOutCallback")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$556, DW_AT_name("intrInCallback")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_intrInCallback")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$85

$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcInitStructApp")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x17)
$C$DW$T$147	.dwtag  DW_TAG_typedef, DW_AT_name("pCdcAppClassHandle")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("CSL_CdcObject")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x14)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$557, DW_AT_name("lbaBuffer")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_lbaBuffer")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$558, DW_AT_name("activityPresentFlag")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_activityPresentFlag")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$559, DW_AT_name("bulkInEpHandle")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_bulkInEpHandle")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$560, DW_AT_name("bulkOutEpHandle")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_bulkOutEpHandle")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$561, DW_AT_name("intrInEpHandle")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_intrInEpHandle")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$562, DW_AT_name("intrOutEpHandle")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_intrOutEpHandle")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$563, DW_AT_name("lineCoding")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_lineCoding")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$564, DW_AT_name("controlLineState")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_controlLineState")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CdcObject")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x17)

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x16)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$565, DW_AT_name("maxCurrent")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$566, DW_AT_name("opMode")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$567, DW_AT_name("appSuspendCallBack")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_appSuspendCallBack")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$568, DW_AT_name("appWakeupCallBack")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_appWakeupCallBack")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$569, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$570, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$571, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$572, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$573, DW_AT_name("strDescPtr")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$574, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$575, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$576, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$99

$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$T$150	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_address_class(0x17)

$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0xda)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$577, DW_AT_name("devNum")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$578, DW_AT_name("opMode")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$579, DW_AT_name("maxCurrent")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$580, DW_AT_name("fInitialized")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$581, DW_AT_name("fSetupPktCmd")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_fSetupPktCmd")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$582, DW_AT_name("fOutPhaseCmd")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_fOutPhaseCmd")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$583, DW_AT_name("fWaitingOnFlagA")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_fWaitingOnFlagA")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$584, DW_AT_name("fWaitingOnFlagB")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_fWaitingOnFlagB")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$585, DW_AT_name("fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$586, DW_AT_name("fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$587, DW_AT_name("pFIFOBaseAddress")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_pFIFOBaseAddress")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$588, DW_AT_name("pInterruptAddr")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_pInterruptAddr")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$589, DW_AT_name("fSendHandshake")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_fSendHandshake")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$590, DW_AT_name("fMUSBIsReady")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_fMUSBIsReady")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$591, DW_AT_name("cbOutEP0Buf")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_cbOutEP0Buf")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$592, DW_AT_name("cbOutEP0DataReceived")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_cbOutEP0DataReceived")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$593, DW_AT_name("dwOutEP0Buf")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_dwOutEP0Buf")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$594, DW_AT_name("fEP0BUFAvailable")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_fEP0BUFAvailable")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$595, DW_AT_name("fEP1InBUFAvailable")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_fEP1InBUFAvailable")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$596, DW_AT_name("dwIntSourceL")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_dwIntSourceL")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$597, DW_AT_name("dwIntSourceH")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_dwIntSourceH")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$598, DW_AT_name("remoteWkpStat")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_remoteWkpStat")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$599, DW_AT_name("busSpeed")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_busSpeed")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$600, DW_AT_name("ep0State")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_ep0State")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$601, DW_AT_name("pEpStatus")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_pEpStatus")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$602, DW_AT_name("cableState")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_cableState")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$603, DW_AT_name("usbSetup")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$604, DW_AT_name("suspendCallBackFxn")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_suspendCallBackFxn")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$605, DW_AT_name("wakeupCallBackFxn")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_wakeupCallBackFxn")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$606, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$607, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$608, DW_AT_name("dwFIFOStartAddr")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_dwFIFOStartAddr")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$609, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$610, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$611, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$612, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$613, DW_AT_name("strDescPtr")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$614, DW_AT_name("devAddr")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_devAddr")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$615, DW_AT_name("ctrlOutEpObj")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_ctrlOutEpObj")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$616, DW_AT_name("ctrlInEpObj")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_ctrlInEpObj")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$617, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$618, DW_AT_name("curConfigStat")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$619, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x17)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevHandle")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbContext")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x0a)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$620, DW_AT_name("opMode")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$621, DW_AT_name("epNum")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$622, DW_AT_name("xferType")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$623, DW_AT_name("maxPktSize")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$624, DW_AT_name("eventMask")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$625, DW_AT_name("dblPktBuf")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_dblPktBuf")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$626, DW_AT_name("asyncTxfer")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_asyncTxfer")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$627, DW_AT_name("fxn")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$121

$C$DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
$C$DW$T$154	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_address_class(0x17)

$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x22)
$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$628, DW_AT_name("epNum")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$629, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$630, DW_AT_name("xferType")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$631, DW_AT_name("maxPktSize")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$632, DW_AT_name("eventMask")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$633, DW_AT_name("fxn")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$634, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$635, DW_AT_name("fInitialized")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$636, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$637, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$638, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$639, DW_AT_name("hEventHandler")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$640, DW_AT_name("fStalled")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$641, DW_AT_name("pvBuffer")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$642, DW_AT_name("cbBuffer")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$643, DW_AT_name("cbTransferred")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$644, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$645, DW_AT_name("fComplete")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$646, DW_AT_name("ioFlags")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$647, DW_AT_name("hUsbDev")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$124

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)
$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpHandle")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

$C$DW$T$78	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x14)
$C$DW$648	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$648, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$78

$C$DW$T$160	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$160, DW_AT_address_class(0x17)

$C$DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$127, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x12)
$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$649, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$650, DW_AT_name("xferType")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$651, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$652, DW_AT_name("fInitialized")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$653, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$654, DW_AT_name("pTransfer")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$655, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$656, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$657, DW_AT_name("hEventHandler")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$658, DW_AT_name("fStalled")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$659, DW_AT_name("fSelected")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_fSelected")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$127

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x17)
$C$DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbEpStatus")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)

$C$DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$128, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x06)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$660, DW_AT_name("newPacket")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_newPacket")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$661, DW_AT_name("bmRequestType")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$662, DW_AT_name("bRequest")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$663, DW_AT_name("wValue")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$664, DW_AT_name("wIndex")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$665, DW_AT_name("wLength")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$128

$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)

$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x0e)
$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$666, DW_AT_name("dwFlags")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_dwFlags")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$667, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$668, DW_AT_name("pvBuffer")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$669, DW_AT_name("cbBuffer")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$670, DW_AT_name("cbTransferred")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$671, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$672, DW_AT_name("fComplete")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$673, DW_AT_name("ioFlags")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$129

$C$DW$T$125	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("PVOID")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)

$C$DW$T$83	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$120	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_EVENT_ISR")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$674	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$T$90

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_CALLBACK")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
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
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
$C$DW$675	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$3)
$C$DW$676	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x20)
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_TRANSFER_CALLBACK")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$T$130	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$130, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbByteCount")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbIoFlags")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$677	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$20)
$C$DW$T$22	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$677)

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$678	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$678, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$23


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x07)
$C$DW$679	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$679, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$25


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x06)
$C$DW$680	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$680, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0e)
$C$DW$681	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$681, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$28


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$682	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$682, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$31


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x0c)
$C$DW$683	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$683, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$33


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x03)
$C$DW$684	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$684, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$35


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x3a3)
$C$DW$685	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$685, DW_AT_upper_bound(0x3a2)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x04)
$C$DW$686	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$686, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x2e)
$C$DW$687	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$687, DW_AT_upper_bound(0x2d)
	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x13)
$C$DW$688	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$688, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$40


$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x59)
$C$DW$689	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$689, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$43


$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0xaaf)
$C$DW$690	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$690, DW_AT_upper_bound(0xaae)
	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x7f7)
$C$DW$691	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$691, DW_AT_upper_bound(0x7f6)
	.dwendtag $C$DW$T$47


$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x780)
$C$DW$692	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$692, DW_AT_upper_bound(0x77f)
	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x7fe)
$C$DW$693	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$693, DW_AT_upper_bound(0x7fd)
	.dwendtag $C$DW$T$51


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x1700)
$C$DW$694	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$694, DW_AT_upper_bound(0x16ff)
	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x16)
$C$DW$695	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$695, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x52)
$C$DW$696	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$696, DW_AT_upper_bound(0x51)
	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_byte_size(0xf66)
$C$DW$697	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$697, DW_AT_upper_bound(0xf65)
	.dwendtag $C$DW$T$57


$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0xf00)
$C$DW$698	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$698, DW_AT_upper_bound(0xeff)
	.dwendtag $C$DW$T$60


$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x400)
$C$DW$699	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$699, DW_AT_upper_bound(0x3ff)
	.dwendtag $C$DW$T$63

$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)

$C$DW$T$103	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x40)
$C$DW$700	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$700, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$103

$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)
$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x17)

$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x08)
$C$DW$701	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$701, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$114


$C$DW$T$190	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$190, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$190, DW_AT_byte_size(0x14)
$C$DW$702	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$702, DW_AT_upper_bound(0x13)
	.dwendtag $C$DW$T$190

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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x17)
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
$C$DW$T$192	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$192, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$192, DW_AT_name("signed char")
	.dwattr $C$DW$T$192, DW_AT_byte_size(0x01)
$C$DW$703	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$192)
$C$DW$T$193	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$703)
$C$DW$T$194	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$T$194, DW_AT_address_class(0x17)
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

$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_reg0]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_reg1]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_reg2]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_reg3]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg4]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg5]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_reg6]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_reg7]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_reg8]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_reg9]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_reg10]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_reg11]
$C$DW$716	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_reg12]
$C$DW$717	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_reg13]
$C$DW$718	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_reg14]
$C$DW$719	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_reg15]
$C$DW$720	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_reg16]
$C$DW$721	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_reg17]
$C$DW$722	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_reg18]
$C$DW$723	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_reg19]
$C$DW$724	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_reg20]
$C$DW$725	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$725, DW_AT_location[DW_OP_reg21]
$C$DW$726	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$726, DW_AT_location[DW_OP_reg22]
$C$DW$727	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$727, DW_AT_location[DW_OP_reg23]
$C$DW$728	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$728, DW_AT_location[DW_OP_reg24]
$C$DW$729	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$729, DW_AT_location[DW_OP_reg25]
$C$DW$730	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$730, DW_AT_location[DW_OP_reg26]
$C$DW$731	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$731, DW_AT_location[DW_OP_reg27]
$C$DW$732	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$732, DW_AT_location[DW_OP_reg28]
$C$DW$733	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$733, DW_AT_location[DW_OP_reg29]
$C$DW$734	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$734, DW_AT_location[DW_OP_reg30]
$C$DW$735	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$735, DW_AT_location[DW_OP_reg31]
$C$DW$736	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$736, DW_AT_location[DW_OP_regx 0x20]
$C$DW$737	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$737, DW_AT_location[DW_OP_regx 0x21]
$C$DW$738	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$738, DW_AT_location[DW_OP_regx 0x22]
$C$DW$739	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$739, DW_AT_location[DW_OP_regx 0x23]
$C$DW$740	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$740, DW_AT_location[DW_OP_regx 0x24]
$C$DW$741	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$741, DW_AT_location[DW_OP_regx 0x25]
$C$DW$742	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$742, DW_AT_location[DW_OP_regx 0x26]
$C$DW$743	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$743, DW_AT_location[DW_OP_regx 0x27]
$C$DW$744	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$744, DW_AT_location[DW_OP_regx 0x28]
$C$DW$745	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$745, DW_AT_location[DW_OP_regx 0x29]
$C$DW$746	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$746, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$747	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$747, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$748	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$748, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$749	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$749, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$750	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$751	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$752	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_regx 0x30]
$C$DW$753	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_regx 0x31]
$C$DW$754	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_regx 0x32]
$C$DW$755	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_regx 0x33]
$C$DW$756	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_regx 0x34]
$C$DW$757	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_regx 0x35]
$C$DW$758	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_regx 0x36]
$C$DW$759	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_regx 0x37]
$C$DW$760	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_regx 0x38]
$C$DW$761	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_regx 0x39]
$C$DW$762	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$763	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$764	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$765	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$766	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$767	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$768	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_regx 0x40]
$C$DW$769	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_regx 0x41]
$C$DW$770	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_regx 0x42]
$C$DW$771	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_regx 0x43]
$C$DW$772	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_regx 0x44]
$C$DW$773	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_regx 0x45]
$C$DW$774	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_regx 0x46]
$C$DW$775	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_regx 0x47]
$C$DW$776	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_regx 0x48]
$C$DW$777	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_regx 0x49]
$C$DW$778	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$779	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$780	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$781	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$782	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$783	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$784	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_regx 0x50]
$C$DW$785	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_regx 0x51]
$C$DW$786	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_regx 0x52]
$C$DW$787	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_regx 0x53]
$C$DW$788	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_regx 0x54]
$C$DW$789	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_regx 0x55]
$C$DW$790	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_regx 0x56]
$C$DW$791	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_regx 0x57]
$C$DW$792	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_regx 0x58]
$C$DW$793	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_regx 0x59]
$C$DW$794	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$795	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

