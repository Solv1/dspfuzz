;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:16 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_usb.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
	.global	_usbRegisters
	.bss	_usbRegisters,1,0,0
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("usbRegisters")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_usbRegisters")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _usbRegisters]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$1, DW_AT_external
	.global	_sysCtrlRegs
	.bss	_sysCtrlRegs,1,0,0
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("sysCtrlRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_sysCtrlRegs")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _sysCtrlRegs]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$2, DW_AT_external
	.global	_gUsbContext
	.bss	_gUsbContext,218,0,2
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("gUsbContext")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_gUsbContext")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _gUsbContext]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$3, DW_AT_external
	.global	_gUsbTransfer
	.bss	_gUsbTransfer,168,0,2
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("gUsbTransfer")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_gUsbTransfer")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _gUsbTransfer]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$4, DW_AT_external
	.global	_gEpStatus
	.bss	_gEpStatus,180,0,2
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("gEpStatus")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_gEpStatus")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _gEpStatus]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$5, DW_AT_external
	.global	_gEpObj
	.bss	_gEpObj,544,0,2
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("gEpObj")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_gEpObj")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _gEpObj]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$6, DW_AT_external
	.global	_gUsbEpHandle
	.bss	_gUsbEpHandle,24,0,2
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("gUsbEpHandle")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_gUsbEpHandle")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _gUsbEpHandle]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$7, DW_AT_external
	.global	_curConfigureNum
	.bss	_curConfigureNum,1,0,0
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("curConfigureNum")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_curConfigureNum")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _curConfigureNum]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_external
	.global	_curInterfaceNum
	.bss	_curInterfaceNum,1,0,0
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("curInterfaceNum")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_curInterfaceNum")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _curInterfaceNum]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$9, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17618OXGsnk 
	.sect	".text"

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_handleRxIntr")
	.dwattr $C$DW$10, DW_AT_low_pc(_USB_handleRxIntr)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_USB_handleRxIntr")
	.dwattr $C$DW$10, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x692)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./inc/csl_usbAux.h",line 1683,column 1,is_stmt,address _USB_handleRxIntr

	.dwfde $C$DW$CIE, _USB_handleRxIntr
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_handleRxIntr                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_handleRxIntr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 1687,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#4))
||      AADD #36, AR3 ; |1687| 

	.dwpsn	file "./inc/csl_usbAux.h",line 1688,column 2,is_stmt
        MOV #0, *SP(#2) ; |1688| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1691,column 2,is_stmt
        MOV #1038, T0 ; |1691| 
        MOV *(#_usbRegisters), AR3 ; |1691| 
        MOV port(*AR3(T0)), AR1 ; |1691| 
        MOV AR1, *SP(#2) ; |1691| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1693,column 5,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |1693| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1694,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1694| 
        OR #0x0002, port(*AR3(T0)) ; |1694| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1697,column 5,is_stmt
        MOV #1042, T0 ; |1697| 
        MOV *(#_usbRegisters), AR3 ; |1697| 
        MOV port(*AR3(T0)), AR1 ; |1697| 

        AND #0x0010, AR1, AR1 ; |1697| 
||      MOV #16, AR2 ; |1697| 

        CMPU AR1 != AR2, TC1 ; |1697| 
        BCC $C$L1,TC1 ; |1697| 
                                        ; branchcc occurs ; |1697| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1700,column 3,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1700| 
        BCLR @#4, AR1 ; |1700| 
        MOV AR1, port(*AR3(T0)) ; |1700| 
$C$L1:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1704,column 5,is_stmt
        MOV #1046, T0 ; |1704| 
        MOV *(#_usbRegisters), AR3 ; |1704| 
        MOV port(*AR3(T0)), AR1 ; |1704| 

        AND #0x0001, AR1, AR1 ; |1704| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |1704| 
        BCC $C$L3,TC1 ; |1704| 
                                        ; branchcc occurs ; |1704| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1707,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(short(#2)) == #3, TC1 ; |1707| 
        BCC $C$L2,!TC1 ; |1707| 
                                        ; branchcc occurs ; |1707| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1709,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#4)) ; |1709| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1710,column 3,is_stmt
        B $C$L3   ; |1710| 
                                        ; branch occurs ; |1710| 
$C$L2:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1713,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#7)) ; |1713| 
$C$L3:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1718,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1718| 
        MOV #1038, T0 ; |1718| 
        MOV *SP(#2), AR1 ; |1718| 
        MOV AR1, port(*AR3(T0)) ; |1718| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1719,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$10, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x6b7)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_handleTxIntr")
	.dwattr $C$DW$16, DW_AT_low_pc(_USB_handleTxIntr)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_USB_handleTxIntr")
	.dwattr $C$DW$16, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x6e4)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_usbAux.h",line 1765,column 1,is_stmt,address _USB_handleTxIntr

	.dwfde $C$DW$CIE, _USB_handleTxIntr
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_handleTxIntr                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_handleTxIntr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 1768,column 2,is_stmt
        MOV #0, *SP(#2) ; |1768| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1771,column 2,is_stmt
        MOV #1038, T0 ; |1771| 
        MOV *(#_usbRegisters), AR3 ; |1771| 
        MOV port(*AR3(T0)), AR1 ; |1771| 
        MOV AR1, *SP(#2) ; |1771| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1773,column 5,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |1773| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1775,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1775| 
        OR #0x0002, port(*AR3(T0)) ; |1775| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1778,column 5,is_stmt
        MOV #1042, T0 ; |1778| 
        MOV *(#_usbRegisters), AR3 ; |1778| 
        MOV port(*AR3(T0)), AR1 ; |1778| 

        AND #0x0010, AR1, AR1 ; |1778| 
||      MOV #16, AR2 ; |1778| 

        CMPU AR1 != AR2, TC1 ; |1778| 
        BCC $C$L4,TC1 ; |1778| 
                                        ; branchcc occurs ; |1778| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1781,column 3,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1781| 
        BCLR @#4, AR1 ; |1781| 
        MOV AR1, port(*AR3(T0)) ; |1781| 
$C$L4:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1785,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1785| 
        MOV #1038, T0 ; |1785| 
        MOV *SP(#2), AR1 ; |1785| 
        MOV AR1, port(*AR3(T0)) ; |1785| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1786,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$16, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x6fa)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"

$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_checkSpeed")
	.dwattr $C$DW$21, DW_AT_low_pc(_USB_checkSpeed)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_USB_checkSpeed")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$21, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x72a)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_usbAux.h",line 1836,column 1,is_stmt,address _USB_checkSpeed

	.dwfde $C$DW$CIE, _USB_checkSpeed
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg17]
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBusSpeed")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_pBusSpeed")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_checkSpeed                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_checkSpeed:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("pBusSpeed")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_pBusSpeed")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("wPower")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_wPower")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 1839,column 2,is_stmt
        MOV #1025, T0 ; |1839| 
        MOV *(#_usbRegisters), AR3 ; |1839| 
        MOV port(*AR3(T0)), AR1 ; |1839| 
        MOV AR1, *SP(#4) ; |1839| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1841,column 2,is_stmt
        BCC $C$L5,AR1 == #0 ; |1841| 
                                        ; branchcc occurs ; |1841| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L6,AC0 != #0 ; |1841| 
                                        ; branchcc occurs ; |1841| 
$C$L5:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1843,column 3,is_stmt
        MOV #0, T0
        B $C$L9   ; |1843| 
                                        ; branch occurs ; |1843| 
$C$L6:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1850,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1850| 
        BTST #12, port(*AR3(T0)), TC1 ; |1850| 
        BCC $C$L7,!TC1 ; |1850| 
                                        ; branchcc occurs ; |1850| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1852,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #4, *AR3 ; |1852| 
	.dwpsn	file "./inc/csl_usbAux.h",line 1853,column 2,is_stmt
        B $C$L8   ; |1853| 
                                        ; branch occurs ; |1853| 
$C$L7:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1856,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3 ; |1856| 
$C$L8:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1859,column 5,is_stmt
        MOV #1, T0
$C$L9:    
	.dwpsn	file "./inc/csl_usbAux.h",line 1860,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$21, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x744)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setConfiguration")
	.dwattr $C$DW$28, DW_AT_low_pc(_USB_setConfiguration)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_USB_setConfiguration")
	.dwattr $C$DW$28, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x7f2)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_usbAux.h",line 2036,column 1,is_stmt,address _USB_setConfiguration

	.dwfde $C$DW$CIE, _USB_setConfiguration
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("confVal")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_confVal")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_setConfiguration                                         *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_setConfiguration:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("confVal")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_confVal")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |2036| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 2040,column 2,is_stmt
        MOV #0, *SP(#3) ; |2040| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2042,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |2042| 
        BCC $C$L14,AR1 != #0 ; |2042| 
                                        ; branchcc occurs ; |2042| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2045,column 3,is_stmt
        MOV #1038, T0 ; |2045| 
        MOV *(#_usbRegisters), AR3 ; |2045| 
        MOV port(*AR3(T0)), AR1 ; |2045| 
        MOV AR1, *SP(#3) ; |2045| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2049,column 3,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |2049| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2050,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2050| 
        OR #0x0001, port(*AR3(T0)) ; |2050| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2053,column 3,is_stmt
        MOV #1042, T0 ; |2053| 
        MOV *(#_usbRegisters), AR3 ; |2053| 
        OR #0x0040, port(*AR3(T0)) ; |2053| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2055,column 3,is_stmt
        MOV #1046, T0 ; |2055| 
        MOV *(#_usbRegisters), AR3 ; |2055| 
        OR #0x0080, port(*AR3(T0)) ; |2055| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2058,column 3,is_stmt
        MOV #1042, T0 ; |2058| 
        MOV *(#_usbRegisters), AR3 ; |2058| 
        MOV port(*AR3(T0)), AR1 ; |2058| 

        AND #0x0002, AR1, AR1 ; |2058| 
||      MOV #2, AR2

        CMPU AR1 != AR2, TC1 ; |2058| 
        BCC $C$L10,TC1 ; |2058| 
                                        ; branchcc occurs ; |2058| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2063,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |2063| 
        MOV AR1, *SP(#4) ; |2063| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2065,column 4,is_stmt
        OR #0x0008, *SP(#4) ; |2065| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2066,column 4,is_stmt
        AND #0xfffc, *SP(#4) ; |2066| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2068,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2068| 
        MOV AR1, port(*AR3(T0)) ; |2068| 
$C$L10:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2073,column 3,is_stmt
        MOV #1038, T0 ; |2073| 
        MOV *(#_usbRegisters), AR3 ; |2073| 
        AND #0xfff0, port(*AR3(T0)) ; |2073| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2074,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2074| 
        OR #0x0002, port(*AR3(T0)) ; |2074| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2077,column 3,is_stmt
        MOV #1042, T0 ; |2077| 
        MOV *(#_usbRegisters), AR3 ; |2077| 
        OR #0x0040, port(*AR3(T0)) ; |2077| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2079,column 3,is_stmt
        MOV #1046, T0 ; |2079| 
        MOV *(#_usbRegisters), AR3 ; |2079| 
        OR #0x0080, port(*AR3(T0)) ; |2079| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2082,column 3,is_stmt
        MOV #1042, T0 ; |2082| 
        MOV *(#_usbRegisters), AR3 ; |2082| 
        MOV port(*AR3(T0)), AR1 ; |2082| 
        AND #0x0002, AR1, AR1 ; |2082| 
        CMPU AR1 != AR2, TC1 ; |2082| 
        BCC $C$L11,TC1 ; |2082| 
                                        ; branchcc occurs ; |2082| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2087,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |2087| 
        MOV AR1, *SP(#4) ; |2087| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2089,column 4,is_stmt
        OR #0x0008, *SP(#4) ; |2089| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2090,column 4,is_stmt
        AND #0xfffc, *SP(#4) ; |2090| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2092,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2092| 
        MOV AR1, port(*AR3(T0)) ; |2092| 
$C$L11:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2097,column 3,is_stmt
        MOV #1038, T0 ; |2097| 
        MOV *(#_usbRegisters), AR3 ; |2097| 
        AND #0xfff0, port(*AR3(T0)) ; |2097| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2098,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2098| 
        OR #0x0003, port(*AR3(T0)) ; |2098| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2101,column 3,is_stmt
        MOV #1042, T0 ; |2101| 
        MOV *(#_usbRegisters), AR3 ; |2101| 
        OR #0x0040, port(*AR3(T0)) ; |2101| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2103,column 3,is_stmt
        MOV #1046, T0 ; |2103| 
        MOV *(#_usbRegisters), AR3 ; |2103| 
        OR #0x0080, port(*AR3(T0)) ; |2103| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2106,column 3,is_stmt
        MOV #1042, T0 ; |2106| 
        MOV *(#_usbRegisters), AR3 ; |2106| 
        MOV port(*AR3(T0)), AR1 ; |2106| 
        AND #0x0002, AR1, AR1 ; |2106| 
        CMPU AR1 != AR2, TC1 ; |2106| 
        BCC $C$L12,TC1 ; |2106| 
                                        ; branchcc occurs ; |2106| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2111,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |2111| 
        MOV AR1, *SP(#4) ; |2111| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2113,column 4,is_stmt
        OR #0x0008, *SP(#4) ; |2113| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2114,column 4,is_stmt
        AND #0xfffc, *SP(#4) ; |2114| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2116,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2116| 
        MOV AR1, port(*AR3(T0)) ; |2116| 
$C$L12:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2121,column 3,is_stmt
        MOV #1038, T0 ; |2121| 
        MOV *(#_usbRegisters), AR3 ; |2121| 
        AND #0xfff0, port(*AR3(T0)) ; |2121| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2122,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2122| 
        OR #0x0004, port(*AR3(T0)) ; |2122| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2125,column 3,is_stmt
        MOV #1042, T0 ; |2125| 
        MOV *(#_usbRegisters), AR3 ; |2125| 
        OR #0x0040, port(*AR3(T0)) ; |2125| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2127,column 3,is_stmt
        MOV #1046, T0 ; |2127| 
        MOV *(#_usbRegisters), AR3 ; |2127| 
        OR #0x0080, port(*AR3(T0)) ; |2127| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2130,column 3,is_stmt
        MOV #1042, T0 ; |2130| 
        MOV *(#_usbRegisters), AR3 ; |2130| 
        MOV port(*AR3(T0)), AR1 ; |2130| 
        AND #0x0002, AR1, AR1 ; |2130| 
        CMPU AR1 != AR2, TC1 ; |2130| 
        BCC $C$L13,TC1 ; |2130| 
                                        ; branchcc occurs ; |2130| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2135,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |2135| 
        MOV AR1, *SP(#4) ; |2135| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2137,column 4,is_stmt
        OR #0x0008, *SP(#4) ; |2137| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2138,column 4,is_stmt
        AND #0xfffc, *SP(#4) ; |2138| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2140,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2140| 
        MOV AR1, port(*AR3(T0)) ; |2140| 
$C$L13:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2144,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2144| 
        MOV #1038, T0 ; |2144| 
        MOV *SP(#3), AR1 ; |2144| 
        MOV AR1, port(*AR3(T0)) ; |2144| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2146,column 1,is_stmt
$C$L14:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x862)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_flushFifo")
	.dwattr $C$DW$36, DW_AT_low_pc(_USB_flushFifo)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_USB_flushFifo")
	.dwattr $C$DW$36, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x8e8)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_usbAux.h",line 2282,column 1,is_stmt,address _USB_flushFifo

	.dwfde $C$DW$CIE, _USB_flushFifo
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fifoDirFlag")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_fifoDirFlag")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_flushFifo                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,*
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_flushFifo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("fifoDirFlag")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_fifoDirFlag")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |2282| 
        MOV AC0, dbl(*SP(#0)) ; |2282| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2286,column 2,is_stmt
        MOV #0, *SP(#3) ; |2286| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2289,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2289| 
        MOV #1038, T0 ; |2289| 
        MOV port(*AR3(T0)), AR1 ; |2289| 
        MOV AR1, *SP(#3) ; |2289| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2292,column 2,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |2292| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2293,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2293| 
        MOV dbl(*SP(#0)), AC0 ; |2293| 
        OR port(*AR3(T0)), AC0, AC0 ; |2293| 
        MOV AC0, port(*AR3(T0)) ; |2293| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2295,column 2,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2295| 
        BCC $C$L15,AC0 != #0 ; |2295| 
                                        ; branchcc occurs ; |2295| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2298,column 3,is_stmt
        MOV #1042, T0 ; |2298| 
        MOV *(#_usbRegisters), AR3 ; |2298| 
        OR #0x0100, port(*AR3(T0)) ; |2298| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2299,column 2,is_stmt
        B $C$L17  ; |2299| 
                                        ; branch occurs ; |2299| 
$C$L15:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2302,column 3,is_stmt

        MOV #1, AR2
||      MOV *SP(#2), AR1 ; |2302| 

        CMPU AR2 != AR1, TC1 ; |2302| 
        BCC $C$L16,TC1 ; |2302| 
                                        ; branchcc occurs ; |2302| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2306,column 4,is_stmt
        MOV #1042, T0 ; |2306| 
        MOV *(#_usbRegisters), AR3 ; |2306| 
        MOV port(*AR3(T0)), AR1 ; |2306| 
        MOV AR1, *SP(#4) ; |2306| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2308,column 4,is_stmt
        OR #0x0008, *SP(#4) ; |2308| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2309,column 4,is_stmt
        AND #0xfffc, *SP(#4) ; |2309| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2311,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2311| 
        MOV AR1, port(*AR3(T0)) ; |2311| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2312,column 3,is_stmt
        B $C$L17  ; |2312| 
                                        ; branch occurs ; |2312| 
$C$L16:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2316,column 4,is_stmt
        MOV #1046, T0 ; |2316| 
        MOV *(#_usbRegisters), AR3 ; |2316| 
        OR #0x0010, port(*AR3(T0)) ; |2316| 
$C$L17:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2321,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2321| 
        MOV #1038, T0 ; |2321| 
        MOV *SP(#3), AR1 ; |2321| 
        MOV AR1, port(*AR3(T0)) ; |2321| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2322,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$36, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x912)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_sendEpZLP")
	.dwattr $C$DW$44, DW_AT_low_pc(_USB_sendEpZLP)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_USB_sendEpZLP")
	.dwattr $C$DW$44, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x941)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_usbAux.h",line 2370,column 1,is_stmt,address _USB_sendEpZLP

	.dwfde $C$DW$CIE, _USB_sendEpZLP
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: USB_sendEpZLP                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_sendEpZLP:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#0)) ; |2370| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2374,column 2,is_stmt
        MOV #1038, T0 ; |2374| 
        MOV *(#_usbRegisters), AR3 ; |2374| 
        MOV port(*AR3(T0)), AR1 ; |2374| 
        MOV AR1, *SP(#2) ; |2374| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2377,column 2,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |2377| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2378,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2378| 
        MOV dbl(*SP(#0)), AC0 ; |2378| 
        OR port(*AR3(T0)), AC0, AC0 ; |2378| 
        MOV AC0, port(*AR3(T0)) ; |2378| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2381,column 2,is_stmt
        MOV #1042, T0 ; |2381| 
        MOV *(#_usbRegisters), AR3 ; |2381| 
        MOV port(*AR3(T0)), AR1 ; |2381| 
        BCLR @#1, AR1 ; |2381| 
        BSET @#1, AR1 ; |2381| 
        MOV AR1, port(*AR3(T0)) ; |2381| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2383,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2383| 
        MOV port(*AR3(T0)), AR1 ; |2383| 
        BCLR @#3, AR1 ; |2383| 
        BSET @#3, AR1 ; |2383| 
        MOV AR1, port(*AR3(T0)) ; |2383| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2387,column 2,is_stmt
        MOV #1038, T0 ; |2387| 
        MOV *(#_usbRegisters), AR3 ; |2387| 
        MOV *SP(#2), AR1 ; |2387| 
        MOV AR1, port(*AR3(T0)) ; |2387| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2388,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$44, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x954)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_clearEpRxPktRdy")
	.dwattr $C$DW$49, DW_AT_low_pc(_USB_clearEpRxPktRdy)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x95e)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_usbAux.h",line 2399,column 1,is_stmt,address _USB_clearEpRxPktRdy

	.dwfde $C$DW$CIE, _USB_clearEpRxPktRdy
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: USB_clearEpRxPktRdy                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_clearEpRxPktRdy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#0)) ; |2399| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2403,column 2,is_stmt
        MOV #1038, T0 ; |2403| 
        MOV *(#_usbRegisters), AR3 ; |2403| 
        MOV port(*AR3(T0)), AR1 ; |2403| 
        MOV AR1, *SP(#2) ; |2403| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2406,column 2,is_stmt
        AND #0xfff0, port(*AR3(T0)) ; |2406| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2407,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2407| 
        MOV dbl(*SP(#0)), AC0 ; |2407| 
        OR port(*AR3(T0)), AC0, AC0 ; |2407| 
        MOV AC0, port(*AR3(T0)) ; |2407| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2410,column 2,is_stmt
        MOV #1042, T0 ; |2410| 
        MOV *(#_usbRegisters), AR3 ; |2410| 
        MOV port(*AR3(T0)), AR1 ; |2410| 
        BCLR @#6, AR1 ; |2410| 
        BSET @#6, AR1 ; |2410| 
        MOV AR1, port(*AR3(T0)) ; |2410| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2412,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2412| 
        MOV port(*AR3(T0)), AR1 ; |2412| 
        BCLR @#3, AR1 ; |2412| 
        BSET @#3, AR1 ; |2412| 
        MOV AR1, port(*AR3(T0)) ; |2412| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2416,column 2,is_stmt
        MOV #1038, T0 ; |2416| 
        MOV *(#_usbRegisters), AR3 ; |2416| 
        MOV *SP(#2), AR1 ; |2416| 
        MOV AR1, port(*AR3(T0)) ; |2416| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2417,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$49, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x971)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_USB_init

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_init")
	.dwattr $C$DW$54, DW_AT_low_pc(_USB_init)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_USB_init")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 101,column 1,is_stmt,address _USB_init

	.dwfde $C$DW$CIE, _USB_init
;*******************************************************************************
;* FUNCTION NAME: USB_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_usb.c",line 104,column 2,is_stmt
        MOV #7168, *(#_sysCtrlRegs) ; |104| 
	.dwpsn	file "src/csl_usb.c",line 105,column 2,is_stmt
        MOV #32768, *(#_usbRegisters) ; |105| 
	.dwpsn	file "src/csl_usb.c",line 109,column 2,is_stmt
        MOV #1, *port(#28676) ; |109| 
	.dwpsn	file "src/csl_usb.c",line 112,column 2,is_stmt
        MOV #50, T0 ; |112| 
        MOV *(#_sysCtrlRegs), AR3 ; |112| 
        MOV port(*AR3(T0)), AR1 ; |112| 
        BCLR @#3, AR1 ; |112| 
        MOV AR1, port(*AR3(T0)) ; |112| 
	.dwpsn	file "src/csl_usb.c",line 113,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |113| 
        MOV port(*AR3(T0)), AR1 ; |113| 
        BCLR @#2, AR1 ; |113| 
        MOV AR1, port(*AR3(T0)) ; |113| 
	.dwpsn	file "src/csl_usb.c",line 116,column 6,is_stmt
        MOV #0, AC0 ; |116| 
        MOV AC0, dbl(*SP(#0)) ; |116| 
        NOP
	.dwpsn	file "src/csl_usb.c",line 116,column 18,is_stmt
        AMOV #90000, XAR3 ; |116| 
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), AC1 ; |116| 
        CMPU AC1 >= AC0, TC1 ; |116| 
        BCC $C$L19,TC1 ; |116| 
                                        ; branchcc occurs ; |116| 
$C$L18:    
$C$DW$L$_USB_init$2$B:
	.dwpsn	file "src/csl_usb.c",line 116,column 34,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |116| 
        ADD #1, AC0 ; |116| 
        MOV AC0, dbl(*SP(#0)) ; |116| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 116,column 18,is_stmt
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), AC1 ; |116| 
        CMPU AC1 < AC0, TC1 ; |116| 
        BCC $C$L18,TC1 ; |116| 
                                        ; branchcc occurs ; |116| 
$C$DW$L$_USB_init$2$E:
$C$L19:    
	.dwpsn	file "src/csl_usb.c",line 119,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |119| 
        MOV port(*AR3(T0)), AR1 ; |119| 
        BCLR @#15, AR1 ; |119| 
        MOV AR1, port(*AR3(T0)) ; |119| 
	.dwpsn	file "src/csl_usb.c",line 120,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |120| 
        MOV port(*AR3(T0)), AR1 ; |120| 
        BCLR @#14, AR1 ; |120| 
        MOV AR1, port(*AR3(T0)) ; |120| 
	.dwpsn	file "src/csl_usb.c",line 121,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |121| 
        MOV port(*AR3(T0)), AR1 ; |121| 
        BCLR @#12, AR1 ; |121| 
        MOV AR1, port(*AR3(T0)) ; |121| 
	.dwpsn	file "src/csl_usb.c",line 122,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |122| 
        MOV port(*AR3(T0)), AR1 ; |122| 
        BCLR @#13, AR1 ; |122| 
        BSET @#13, AR1 ; |122| 
        MOV AR1, port(*AR3(T0)) ; |122| 
	.dwpsn	file "src/csl_usb.c",line 123,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |123| 
        MOV port(*AR3(T0)), AR1 ; |123| 
        BCLR @#6, AR1 ; |123| 
        BSET @#6, AR1 ; |123| 
        MOV AR1, port(*AR3(T0)) ; |123| 
	.dwpsn	file "src/csl_usb.c",line 126,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |126| 
        MOV port(*AR3(short(#3))), AR1 ; |126| 
        BCLR @#2, AR1 ; |126| 
        MOV AR1, port(*AR3(short(#3))) ; |126| 
	.dwpsn	file "src/csl_usb.c",line 133,column 2,is_stmt
        MOV #58, T0 ; |133| 
        MOV *(#_sysCtrlRegs), AR3 ; |133| 
        MOV #0, port(*AR3(T0)) ; |133| 
	.dwpsn	file "src/csl_usb.c",line 137,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |137| 
        MOV #0, AC0 ; |137| 
        BSET @#5, AC0 ; |137| 
        MOV port(*AR3(short(#4))), AR1 ; |137| 
        MOV AC0, port(*AR3(short(#4))) ; |137| 
	.dwpsn	file "src/csl_usb.c",line 140,column 2,is_stmt
        MOV *(#_sysCtrlRegs), AR3 ; |140| 
        MOV port(*AR3(short(#5))), AR1 ; |140| 
        BCLR @#3, AR1 ; |140| 
        BSET @#3, AR1 ; |140| 
        MOV AR1, port(*AR3(short(#5))) ; |140| 
	.dwpsn	file "src/csl_usb.c",line 143,column 6,is_stmt
        MOV #0, AC0 ; |143| 
        MOV AC0, dbl(*SP(#0)) ; |143| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 143,column 18,is_stmt
        MOV #255, AC0 ; |143| 
        MOV dbl(*SP(#0)), AC1 ; |143| 
        CMPU AC1 >= AC0, TC1 ; |143| 
        BCC $C$L21,TC1 ; |143| 
                                        ; branchcc occurs ; |143| 
$C$L20:    
$C$DW$L$_USB_init$4$B:
	.dwpsn	file "src/csl_usb.c",line 143,column 42,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |143| 
        ADD #1, AC0 ; |143| 
        MOV AC0, dbl(*SP(#0)) ; |143| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 143,column 18,is_stmt
        MOV #255, AC0 ; |143| 
        MOV dbl(*SP(#0)), AC1 ; |143| 
        CMPU AC1 < AC0, TC1 ; |143| 
        BCC $C$L20,TC1 ; |143| 
                                        ; branchcc occurs ; |143| 
$C$DW$L$_USB_init$4$E:
	.dwpsn	file "src/csl_usb.c",line 144,column 1,is_stmt
$C$L21:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$57	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$57, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L20:1:1714639456")
	.dwattr $C$DW$57, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x8f)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_USB_init$4$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_USB_init$4$E)
	.dwendtag $C$DW$57


$C$DW$59	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$59, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L18:1:1714639456")
	.dwattr $C$DW$59, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x74)
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x74)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_USB_init$2$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_USB_init$2$E)
	.dwendtag $C$DW$59

	.dwattr $C$DW$54, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text"
	.global	_USB_open

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_open")
	.dwattr $C$DW$61, DW_AT_low_pc(_USB_open)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_USB_open")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_usb.c",line 184,column 1,is_stmt,address _USB_open

	.dwfde $C$DW$CIE, _USB_open
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devNum")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("devNum")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#0) ; |184| 
	.dwpsn	file "src/csl_usb.c",line 188,column 2,is_stmt
        AMOV #_gUsbContext, XAR3 ; |188| 
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 190,column 2,is_stmt
        CMP *AR3(short(#3)) == #1, TC1 ; |190| 
        BCC $C$L27,TC1 ; |190| 
                                        ; branchcc occurs ; |190| 
	.dwpsn	file "src/csl_usb.c",line 192,column 3,is_stmt
        MOV *SP(#0), AR1 ; |192| 
        BCC $C$L26,AR1 != #0 ; |192| 
                                        ; branchcc occurs ; |192| 
	.dwpsn	file "src/csl_usb.c",line 194,column 4,is_stmt
        MOV #0, *AR3 ; |194| 
	.dwpsn	file "src/csl_usb.c",line 199,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |199| 
        MOV #1, port(*AR3(short(#4))) ; |199| 
	.dwpsn	file "src/csl_usb.c",line 201,column 8,is_stmt
        MOV #0, AC0 ; |201| 
        MOV AC0, dbl(*SP(#4)) ; |201| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 201,column 20,is_stmt
        AMOV #90000, XAR3 ; |201| 
        MOV dbl(*SP(#4)), AC1 ; |201| 
        MOV XAR3, AC0
        CMPU AC1 >= AC0, TC1 ; |201| 
        BCC $C$L23,TC1 ; |201| 
                                        ; branchcc occurs ; |201| 
$C$L22:    
$C$DW$L$_USB_open$4$B:
	.dwpsn	file "src/csl_usb.c",line 201,column 36,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |201| 
        ADD #1, AC0 ; |201| 
        MOV AC0, dbl(*SP(#4)) ; |201| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 201,column 20,is_stmt
        MOV XAR3, AC0
        MOV dbl(*SP(#4)), AC1 ; |201| 
        CMPU AC1 < AC0, TC1 ; |201| 
        BCC $C$L22,TC1 ; |201| 
                                        ; branchcc occurs ; |201| 
$C$DW$L$_USB_open$4$E:
$C$L23:    
	.dwpsn	file "src/csl_usb.c",line 204,column 4,is_stmt
        MOV #50, T0 ; |204| 
        MOV *(#_sysCtrlRegs), AR3 ; |204| 
        MOV port(*AR3(T0)), AR1 ; |204| 
        AND #0xfffc, AR1, AC0 ; |204| 
        MOV AC0, port(*AR3(T0)) ; |204| 
	.dwpsn	file "src/csl_usb.c",line 206,column 4,is_stmt
        MOV #1025, T0 ; |206| 
        MOV *(#_usbRegisters), AR3 ; |206| 
        MOV port(*AR3(T0)), AR1 ; |206| 
        BCLR @#13, AR1 ; |206| 
        BSET @#13, AR1 ; |206| 
        MOV AR1, port(*AR3(T0)) ; |206| 
	.dwpsn	file "src/csl_usb.c",line 208,column 4,is_stmt
        MOV #1121, T0 ; |208| 
        MOV *(#_usbRegisters), AR3 ; |208| 
        MOV port(*AR3(T0)), AR1 ; |208| 
        BCLR @#0, AR1 ; |208| 
        BSET @#0, AR1 ; |208| 
        MOV AR1, port(*AR3(T0)) ; |208| 
	.dwpsn	file "src/csl_usb.c",line 210,column 8,is_stmt
        MOV #0, AC0 ; |210| 
        MOV AC0, dbl(*SP(#4)) ; |210| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 210,column 20,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |210| 
||      MOV #12, AC0 ; |210| 

        CMPU AC1 >= AC0, TC1 ; |210| 
        BCC $C$L25,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$L24:    
$C$DW$L$_USB_open$6$B:
	.dwpsn	file "src/csl_usb.c",line 212,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |212| 
        SFTS AC0, #16, AC0
        MPYK #14, AC0, AC0 ; |212| 
        MOV AC0, T0 ; |212| 
        AMOV #(_gUsbTransfer+12), XAR3 ; |212| 
        MOV #1, *AR3(T0) ; |212| 
	.dwpsn	file "src/csl_usb.c",line 210,column 59,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |210| 
        ADD #1, AC0 ; |210| 
        MOV AC0, dbl(*SP(#4)) ; |210| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 210,column 20,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |210| 
||      MOV #12, AC0 ; |210| 

        CMPU AC1 < AC0, TC1 ; |210| 
        BCC $C$L24,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$DW$L$_USB_open$6$E:
$C$L25:    
	.dwpsn	file "src/csl_usb.c",line 215,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#3)) ; |215| 
	.dwpsn	file "src/csl_usb.c",line 216,column 3,is_stmt
        B $C$L27  ; |216| 
                                        ; branch occurs ; |216| 
$C$L26:    
	.dwpsn	file "src/csl_usb.c",line 219,column 4,is_stmt
        MOV #0, AC0 ; |219| 
        MOV AC0, dbl(*SP(#2))
$C$L27:    
	.dwpsn	file "src/csl_usb.c",line 223,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR0
	.dwpsn	file "src/csl_usb.c",line 224,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L24:1:1714639456")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0xd2)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0xd5)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_USB_open$6$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_USB_open$6$E)
	.dwendtag $C$DW$67


$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L22:1:1714639456")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0xc9)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xc9)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_USB_open$4$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_USB_open$4$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$61, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0xe0)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_USB_config

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_config")
	.dwattr $C$DW$71, DW_AT_low_pc(_USB_config)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_USB_config")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x10b)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_usb.c",line 269,column 1,is_stmt,address _USB_config

	.dwfde $C$DW$CIE, _USB_config
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg17]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbCfg")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_usbCfg")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("usbCfg")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_usbCfg")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 275,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 276,column 2,is_stmt
        MOV #-6, *SP(#6) ; |276| 
	.dwpsn	file "src/csl_usb.c",line 278,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L28,AC0 != #0 ; |278| 
                                        ; branchcc occurs ; |278| 
	.dwpsn	file "src/csl_usb.c",line 280,column 6,is_stmt
        MOV *SP(#6), T0 ; |280| 
        B $C$L46  ; |280| 
                                        ; branch occurs ; |280| 
$C$L28:    
	.dwpsn	file "src/csl_usb.c",line 283,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L44,AC0 == #0 ; |283| 
                                        ; branchcc occurs ; |283| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |283| 
        BCC $C$L44,AR1 != #0 ; |283| 
                                        ; branchcc occurs ; |283| 
	.dwpsn	file "src/csl_usb.c",line 285,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |285| 
        BCC $C$L29,AR1 == #0 ; |285| 
                                        ; branchcc occurs ; |285| 
        CMP *AR3(short(#1)) == #1, TC1 ; |285| 
        BCC $C$L29,TC1 ; |285| 
                                        ; branchcc occurs ; |285| 
        CMP *AR3(short(#1)) == #2, TC1 ; |285| 
        BCC $C$L45,!TC1 ; |285| 
                                        ; branchcc occurs ; |285| 
$C$L29:    
	.dwpsn	file "src/csl_usb.c",line 290,column 4,is_stmt
        MOV *AR3(short(#1)), AR1 ; |290| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#1)) ; |290| 
	.dwpsn	file "src/csl_usb.c",line 291,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |291| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#2)) ; |291| 
	.dwpsn	file "src/csl_usb.c",line 292,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#86) ; |292| 
	.dwpsn	file "src/csl_usb.c",line 293,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |293| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#100)) ; |293| 
	.dwpsn	file "src/csl_usb.c",line 294,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |294| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#102)) ; |294| 
	.dwpsn	file "src/csl_usb.c",line 295,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#2)), XAR3

        AADD #18, AR3 ; |295| 
||      AADD #104, AR2 ; |295| 

        MOV dbl(*AR3), dbl(*AR2) ; |295| 
	.dwpsn	file "src/csl_usb.c",line 296,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR2

        AADD #106, AR2 ; |296| 
||      AADD #20, AR3 ; |296| 

        MOV dbl(*AR3), dbl(*AR2) ; |296| 
	.dwpsn	file "src/csl_usb.c",line 298,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#88) ; |298| 
	.dwpsn	file "src/csl_usb.c",line 299,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR2
        AMOV #_gEpStatus, XAR3 ; |299| 
        MOV XAR3, dbl(*AR2(#90))
	.dwpsn	file "src/csl_usb.c",line 300,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#92) ; |300| 
	.dwpsn	file "src/csl_usb.c",line 301,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#4)) ; |301| 
	.dwpsn	file "src/csl_usb.c",line 302,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#5)) ; |302| 
	.dwpsn	file "src/csl_usb.c",line 303,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |303| 
	.dwpsn	file "src/csl_usb.c",line 304,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#7)) ; |304| 
	.dwpsn	file "src/csl_usb.c",line 305,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#8) ; |305| 
	.dwpsn	file "src/csl_usb.c",line 306,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#9) ; |306| 
	.dwpsn	file "src/csl_usb.c",line 308,column 4,is_stmt
        MOV uns(*(#_usbRegisters)), AC0 ; |308| 
        MOV AC0, XAR3
        AMAR *+AR3(#1057) ; |308| 
        MOV XAR3, AC0
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#10))
	.dwpsn	file "src/csl_usb.c",line 310,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR0
        AADD #87, AR1 ; |310| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_USB_checkSpeed")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_USB_checkSpeed ; |310| 
                                        ; call occurs [#_USB_checkSpeed] ; |310| 
	.dwpsn	file "src/csl_usb.c",line 312,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#16) ; |312| 
	.dwpsn	file "src/csl_usb.c",line 313,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#15) ; |313| 
	.dwpsn	file "src/csl_usb.c",line 314,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(#14) ; |314| 
	.dwpsn	file "src/csl_usb.c",line 315,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(#82) ; |315| 
	.dwpsn	file "src/csl_usb.c",line 316,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(#83) ; |316| 
	.dwpsn	file "src/csl_usb.c",line 317,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#17) ; |317| 
	.dwpsn	file "src/csl_usb.c",line 320,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #8, *AR3(#108) ; |320| 
	.dwpsn	file "src/csl_usb.c",line 323,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#8))
||      AADD #18, AR3 ; |323| 

	.dwpsn	file "src/csl_usb.c",line 325,column 4,is_stmt
        MOV uns(*(#_usbRegisters)), AC0 ; |325| 
        MOV AC0, XAR3
        AMAR *+AR3(#1061) ; |325| 
        MOV XAR3, AC0
        MOV dbl(*SP(#8)), XAR3
        MOV AC0, dbl(*AR3(#8))
	.dwpsn	file "src/csl_usb.c",line 327,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#8))
||      AADD #36, AR3 ; |327| 

	.dwpsn	file "src/csl_usb.c",line 328,column 4,is_stmt
        MOV uns(*(#_usbRegisters)), AC0 ; |328| 
        MOV AC0, XAR3
        AMAR *+AR3(#1065) ; |328| 
        MOV XAR3, AC0
        MOV dbl(*SP(#8)), XAR3
        MOV AC0, dbl(*AR3(#8))
	.dwpsn	file "src/csl_usb.c",line 330,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#8))
||      AADD #54, AR3 ; |330| 

	.dwpsn	file "src/csl_usb.c",line 332,column 4,is_stmt
        MOV uns(*(#_usbRegisters)), AC0 ; |332| 
        MOV AC0, XAR3
        AMAR *+AR3(#1069) ; |332| 
        MOV XAR3, AC0
        MOV dbl(*SP(#8)), XAR3
        MOV AC0, dbl(*AR3(#8))
	.dwpsn	file "src/csl_usb.c",line 334,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#8))
||      AADD #72, AR3 ; |334| 

	.dwpsn	file "src/csl_usb.c",line 335,column 4,is_stmt
        MOV uns(*(#_usbRegisters)), AC0 ; |335| 
        MOV AC0, XAR3
        AMAR *+AR3(#1073) ; |335| 
        MOV XAR3, AC0
        MOV dbl(*SP(#8)), XAR3
        MOV AC0, dbl(*AR3(#8))
	.dwpsn	file "src/csl_usb.c",line 338,column 8,is_stmt
        MOV #0, AC0 ; |338| 
        MOV AC0, dbl(*SP(#10)) ; |338| 
	.dwpsn	file "src/csl_usb.c",line 338,column 24,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |338| 
||      MOV #10, AC0 ; |338| 

        CMPU AC1 >= AC0, TC1 ; |338| 
        BCC $C$L43,TC1 ; |338| 
                                        ; branchcc occurs ; |338| 
$C$L30:    
$C$DW$L$_USB_config$9$B:
	.dwpsn	file "src/csl_usb.c",line 340,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#11), #18, AC0 ; |340| 
        MOV AC0, AR1 ; |340| 
        MOV dbl(*AR3(#90)), XAR3

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |340| 

	.dwpsn	file "src/csl_usb.c",line 342,column 5,is_stmt
        MOV #0, *AR3(#16) ; |342| 
	.dwpsn	file "src/csl_usb.c",line 343,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #0, AC0 ; |343| 
        MOV AC0, dbl(*AR3(#10))
	.dwpsn	file "src/csl_usb.c",line 344,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #0, *AR3(#17) ; |344| 
	.dwpsn	file "src/csl_usb.c",line 345,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |345| 
        MOV AC0, dbl(*AR3) ; |345| 
	.dwpsn	file "src/csl_usb.c",line 346,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #0, *AR3(#12) ; |346| 
	.dwpsn	file "src/csl_usb.c",line 347,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #1, *AR3(short(#6)) ; |347| 
	.dwpsn	file "src/csl_usb.c",line 348,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #0, AC0 ; |348| 
        MOV AC0, dbl(*AR3(#14)) ; |348| 
	.dwpsn	file "src/csl_usb.c",line 350,column 5,is_stmt
        B $C$L40  ; |350| 
                                        ; branch occurs ; |350| 
$C$DW$L$_USB_config$9$E:
$C$L31:    
$C$DW$L$_USB_config$11$B:
	.dwpsn	file "src/csl_usb.c",line 353,column 7,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, AC0 ; |353| 
        MOV AC0, dbl(*AR3(short(#4))) ; |353| 
	.dwpsn	file "src/csl_usb.c",line 354,column 12,is_stmt
        B $C$L42  ; |354| 
                                        ; branch occurs ; |354| 
$C$DW$L$_USB_config$11$E:
$C$L32:    
$C$DW$L$_USB_config$12$B:
	.dwpsn	file "src/csl_usb.c",line 357,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(#87) == #4, TC1 ; |357| 
        BCC $C$L33,!TC1 ; |357| 
                                        ; branchcc occurs ; |357| 
$C$DW$L$_USB_config$12$E:
$C$DW$L$_USB_config$13$B:
	.dwpsn	file "src/csl_usb.c",line 359,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #512, AC0 ; |359| 
        MOV AC0, dbl(*AR3(short(#4))) ; |359| 
	.dwpsn	file "src/csl_usb.c",line 360,column 7,is_stmt
        B $C$L42  ; |360| 
                                        ; branch occurs ; |360| 
$C$DW$L$_USB_config$13$E:
$C$L33:    
$C$DW$L$_USB_config$14$B:
	.dwpsn	file "src/csl_usb.c",line 363,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, AC0 ; |363| 
        MOV AC0, dbl(*AR3(short(#4))) ; |363| 
	.dwpsn	file "src/csl_usb.c",line 366,column 12,is_stmt
        B $C$L42  ; |366| 
                                        ; branch occurs ; |366| 
$C$DW$L$_USB_config$14$E:
$C$L34:    
$C$DW$L$_USB_config$15$B:
	.dwpsn	file "src/csl_usb.c",line 369,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(#87) == #4, TC1 ; |369| 
        BCC $C$L35,!TC1 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$DW$L$_USB_config$15$E:
$C$DW$L$_USB_config$16$B:
	.dwpsn	file "src/csl_usb.c",line 371,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #512, AC0 ; |371| 
        MOV AC0, dbl(*AR3(short(#4))) ; |371| 
	.dwpsn	file "src/csl_usb.c",line 372,column 7,is_stmt
        B $C$L42  ; |372| 
                                        ; branch occurs ; |372| 
$C$DW$L$_USB_config$16$E:
$C$L35:    
$C$DW$L$_USB_config$17$B:
	.dwpsn	file "src/csl_usb.c",line 375,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, AC0 ; |375| 
        MOV AC0, dbl(*AR3(short(#4))) ; |375| 
	.dwpsn	file "src/csl_usb.c",line 378,column 12,is_stmt
        B $C$L42  ; |378| 
                                        ; branch occurs ; |378| 
$C$DW$L$_USB_config$17$E:
$C$L36:    
$C$DW$L$_USB_config$18$B:
	.dwpsn	file "src/csl_usb.c",line 381,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(#87) == #4, TC1 ; |381| 
        BCC $C$L37,!TC1 ; |381| 
                                        ; branchcc occurs ; |381| 
$C$DW$L$_USB_config$18$E:
$C$DW$L$_USB_config$19$B:
	.dwpsn	file "src/csl_usb.c",line 383,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #512, AC0 ; |383| 
        MOV AC0, dbl(*AR3(short(#4))) ; |383| 
	.dwpsn	file "src/csl_usb.c",line 384,column 7,is_stmt
        B $C$L42  ; |384| 
                                        ; branch occurs ; |384| 
$C$DW$L$_USB_config$19$E:
$C$L37:    
$C$DW$L$_USB_config$20$B:
	.dwpsn	file "src/csl_usb.c",line 387,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, AC0 ; |387| 
        MOV AC0, dbl(*AR3(short(#4))) ; |387| 
	.dwpsn	file "src/csl_usb.c",line 390,column 12,is_stmt
        B $C$L42  ; |390| 
                                        ; branch occurs ; |390| 
$C$DW$L$_USB_config$20$E:
$C$L38:    
$C$DW$L$_USB_config$21$B:
	.dwpsn	file "src/csl_usb.c",line 393,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(#87) == #4, TC1 ; |393| 
        BCC $C$L39,!TC1 ; |393| 
                                        ; branchcc occurs ; |393| 
$C$DW$L$_USB_config$21$E:
$C$DW$L$_USB_config$22$B:
	.dwpsn	file "src/csl_usb.c",line 395,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #512, AC0 ; |395| 
        MOV AC0, dbl(*AR3(short(#4))) ; |395| 
	.dwpsn	file "src/csl_usb.c",line 396,column 7,is_stmt
        B $C$L42  ; |396| 
                                        ; branch occurs ; |396| 
$C$DW$L$_USB_config$22$E:
$C$L39:    
$C$DW$L$_USB_config$23$B:
	.dwpsn	file "src/csl_usb.c",line 399,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, AC0 ; |399| 
        MOV AC0, dbl(*AR3(short(#4))) ; |399| 
	.dwpsn	file "src/csl_usb.c",line 402,column 12,is_stmt
        B $C$L42  ; |402| 
                                        ; branch occurs ; |402| 
$C$DW$L$_USB_config$23$E:
$C$L40:    
$C$DW$L$_USB_config$25$B:
	.dwpsn	file "src/csl_usb.c",line 350,column 5,is_stmt

        MOV dbl(*SP(#10)), AC0 ; |350| 
||      MOV #2, AC1 ; |350| 

        CMP AC0 > AC1, TC1 ; |350| 
        BCC $C$L41,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$25$E:
$C$DW$L$_USB_config$26$B:
        CMP AC0 == AC1, TC1 ; |350| 
        BCC $C$L34,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$26$E:
$C$DW$L$_USB_config$27$B:
        BCC $C$L31,AC0 == #0 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$27$E:
$C$DW$L$_USB_config$28$B:
        MOV #1, AC1 ; |350| 
        CMPU AC0 == AC1, TC1 ; |350| 
        BCC $C$L32,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$28$E:
$C$DW$L$_USB_config$29$B:
        B $C$L42  ; |350| 
                                        ; branch occurs ; |350| 
$C$DW$L$_USB_config$29$E:
$C$L41:    
$C$DW$L$_USB_config$30$B:
        MOV #3, AC1 ; |350| 
        CMPU AC0 == AC1, TC1 ; |350| 
        BCC $C$L36,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$30$E:
$C$DW$L$_USB_config$31$B:
        MOV #4, AC1 ; |350| 
        CMPU AC0 == AC1, TC1 ; |350| 
        BCC $C$L38,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
$C$DW$L$_USB_config$31$E:
$C$L42:    
$C$DW$L$_USB_config$32$B:
	.dwpsn	file "src/csl_usb.c",line 338,column 61,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |338| 
        ADD #1, AC0 ; |338| 
        MOV AC0, dbl(*SP(#10)) ; |338| 
	.dwpsn	file "src/csl_usb.c",line 338,column 24,is_stmt

        MOV #10, AC0 ; |338| 
||      MOV dbl(*SP(#10)), AC1 ; |338| 

        CMPU AC1 < AC0, TC1 ; |338| 
        BCC $C$L30,TC1 ; |338| 
                                        ; branchcc occurs ; |338| 
$C$DW$L$_USB_config$32$E:
$C$L43:    
	.dwpsn	file "src/csl_usb.c",line 409,column 4,is_stmt
        MOV #0, *SP(#6) ; |409| 
	.dwpsn	file "src/csl_usb.c",line 411,column 2,is_stmt
        B $C$L45  ; |411| 
                                        ; branch occurs ; |411| 
$C$L44:    
	.dwpsn	file "src/csl_usb.c",line 414,column 6,is_stmt
        MOV #-6, *SP(#6) ; |414| 
$C$L45:    
	.dwpsn	file "src/csl_usb.c",line 417,column 2,is_stmt
        MOV *SP(#6), T0 ; |417| 
$C$L46:    
	.dwpsn	file "src/csl_usb.c",line 418,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$82	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$82, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L30:1:1714639456")
	.dwattr $C$DW$82, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0x152)
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x197)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_USB_config$9$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_USB_config$9$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_USB_config$21$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_USB_config$21$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_USB_config$30$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_USB_config$30$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_USB_config$18$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_USB_config$18$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_USB_config$15$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_USB_config$15$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_USB_config$28$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_USB_config$28$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_USB_config$12$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_USB_config$12$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_USB_config$25$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_USB_config$25$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_USB_config$26$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_USB_config$26$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_USB_config$27$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_USB_config$27$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_USB_config$11$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_USB_config$11$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_USB_config$13$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_USB_config$13$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_USB_config$14$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_USB_config$14$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_USB_config$16$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_USB_config$16$E)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_USB_config$17$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_USB_config$17$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_USB_config$19$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_USB_config$19$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_USB_config$20$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_USB_config$20$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_USB_config$22$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_USB_config$22$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_USB_config$23$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_USB_config$23$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_USB_config$29$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_USB_config$29$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_USB_config$31$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_USB_config$31$E)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_USB_config$32$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_USB_config$32$E)
	.dwendtag $C$DW$82

	.dwattr $C$DW$71, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x1a2)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_USB_requestEndpt

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_requestEndpt")
	.dwattr $C$DW$105, DW_AT_low_pc(_USB_requestEndpt)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_USB_requestEndpt")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$105, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x1d1)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_usb.c",line 468,column 1,is_stmt,address _USB_requestEndpt

	.dwfde $C$DW$CIE, _USB_requestEndpt
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("epNum")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_requestEndpt                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_requestEndpt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("epNum")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |468| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 469,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L48,AC0 == #0 ; |469| 
                                        ; branchcc occurs ; |469| 
	.dwpsn	file "src/csl_usb.c",line 471,column 6,is_stmt
        MOV *AR3, AR1 ; |471| 
        BCC $C$L48,AR1 != #0 ; |471| 
                                        ; branchcc occurs ; |471| 
	.dwpsn	file "src/csl_usb.c",line 473,column 7,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |473| 
        MOV AC0, T0 ; |473| 
        AMOV #(_gEpObj+11), XAR3 ; |473| 
        CMP *AR3(T0) == #1, TC1 ; |473| 
        BCC $C$L47,TC1 ; |473| 
                                        ; branchcc occurs ; |473| 
	.dwpsn	file "src/csl_usb.c",line 475,column 5,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |475| 
        MOV AC0, T0 ; |475| 
        MOV *SP(#2), AR1 ; |475| 
        AMOV #_gEpObj, XAR3 ; |475| 
        MOV AR1, *AR3(T0) ; |475| 
	.dwpsn	file "src/csl_usb.c",line 476,column 5,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |476| 
        MOV AC0, T0 ; |476| 
        AMOV #(_gEpObj+11), XAR3 ; |476| 
        MOV #1, *AR3(T0) ; |476| 
	.dwpsn	file "src/csl_usb.c",line 477,column 5,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |477| 
        MOV AC0, T0 ; |477| 
        MOV dbl(*SP(#0)), XAR2
        AMOV #(_gEpObj+32), XAR3 ; |477| 
        MOV XAR2, dbl(*AR3(T0))
	.dwpsn	file "src/csl_usb.c",line 478,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |478| 
	.dwpsn	file "src/csl_usb.c",line 480,column 5,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |480| 
        MOV AC0, AR1 ; |480| 
        AMOV #_gEpObj, XAR0 ; |480| 
        AADD AR1, AR0 ; |480| 
        B $C$L49  ; |480| 
                                        ; branch occurs ; |480| 
$C$L47:    
	.dwpsn	file "src/csl_usb.c",line 484,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-2, *AR3 ; |484| 
	.dwpsn	file "src/csl_usb.c",line 485,column 5,is_stmt
        MPYMK *SP(#2), #34, AC0 ; |485| 
        MOV AC0, AR1 ; |485| 
        AMOV #_gEpObj, XAR0 ; |485| 
        AADD AR1, AR0 ; |485| 
        B $C$L49  ; |485| 
                                        ; branch occurs ; |485| 
$C$L48:    
	.dwpsn	file "src/csl_usb.c",line 490,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |490| 
	.dwpsn	file "src/csl_usb.c",line 492,column 2,is_stmt
        AMOV #0, XAR0 ; |492| 
$C$L49:    
	.dwpsn	file "src/csl_usb.c",line 493,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$105, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x1ed)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_USB_releaseEndpt

$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_releaseEndpt")
	.dwattr $C$DW$113, DW_AT_low_pc(_USB_releaseEndpt)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_USB_releaseEndpt")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x21b)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 540,column 1,is_stmt,address _USB_releaseEndpt

	.dwfde $C$DW$CIE, _USB_releaseEndpt
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_releaseEndpt                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_releaseEndpt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 543,column 2,is_stmt
        MOV #-6, *SP(#2) ; |543| 
	.dwpsn	file "src/csl_usb.c",line 545,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L51,AC0 == #0 ; |545| 
                                        ; branchcc occurs ; |545| 
	.dwpsn	file "src/csl_usb.c",line 547,column 9,is_stmt
        MOV *AR3(#11), AR1 ; |547| 
        BCC $C$L50,AR1 == #0 ; |547| 
                                        ; branchcc occurs ; |547| 
	.dwpsn	file "src/csl_usb.c",line 549,column 13,is_stmt
        MOV #0, *AR3(#11) ; |549| 
$C$L50:    
	.dwpsn	file "src/csl_usb.c",line 552,column 3,is_stmt
        MOV #0, *SP(#2) ; |552| 
$C$L51:    
	.dwpsn	file "src/csl_usb.c",line 555,column 2,is_stmt
        MOV *SP(#2), T0 ; |555| 
	.dwpsn	file "src/csl_usb.c",line 556,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$113, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x22c)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.global	_USB_configEndpt

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_configEndpt")
	.dwattr $C$DW$118, DW_AT_low_pc(_USB_configEndpt)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_USB_configEndpt")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$118, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x25c)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_usb.c",line 606,column 1,is_stmt,address _USB_configEndpt

	.dwfde $C$DW$CIE, _USB_configEndpt
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg17]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("epCfg")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_epCfg")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_configEndpt                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_configEndpt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("epCfg")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_epCfg")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("fifoSize")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_fifoSize")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 614,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 615,column 2,is_stmt
        MOV #0, AC0 ; |615| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 616,column 2,is_stmt
        MOV #0, *SP(#6) ; |616| 
	.dwpsn	file "src/csl_usb.c",line 618,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L71,AC0 == #0 ; |618| 
                                        ; branchcc occurs ; |618| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L71,AC0 == #0 ; |618| 
                                        ; branchcc occurs ; |618| 
	.dwpsn	file "src/csl_usb.c",line 620,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |620| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |620| 
||      NOT AR2, AR2 ; |620| 

        BFXTR #0xe000, AC0, AR3 ; |620| 
        ADD AR1, AR3 ; |620| 
        AND AR3, AR2 ; |620| 
        SUB AR2, AR1 ; |620| 
        MOV AR1, AC0
        MOV AC0, dbl(*SP(#12)) ; |620| 
	.dwpsn	file "src/csl_usb.c",line 622,column 3,is_stmt
        B $C$L70  ; |622| 
                                        ; branch occurs ; |622| 
$C$L52:    
	.dwpsn	file "src/csl_usb.c",line 626,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |626| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#4)) ; |626| 
	.dwpsn	file "src/csl_usb.c",line 627,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |627| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#5)) ; |627| 
	.dwpsn	file "src/csl_usb.c",line 628,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |628| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#6)) ; |628| 
	.dwpsn	file "src/csl_usb.c",line 629,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#2)), XAR3

        AADD #8, AR3 ; |629| 
||      AADD #8, AR2 ; |629| 

        MOV dbl(*AR3), dbl(*AR2) ; |629| 
	.dwpsn	file "src/csl_usb.c",line 633,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#8)), XAR0
        MOV *AR3(short(#5)), T0 ; |633| 
        MOV *AR3(short(#4)), T1 ; |633| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_USB_findFifoSize")
	.dwattr $C$DW$129, DW_AT_TI_call
        CALL #_USB_findFifoSize ; |633| 
                                        ; call occurs [#_USB_findFifoSize] ; |633| 
        MOV T0, *SP(#10) ; |633| 
	.dwpsn	file "src/csl_usb.c",line 635,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L53,AR1 != #0 ; |635| 
                                        ; branchcc occurs ; |635| 
	.dwpsn	file "src/csl_usb.c",line 636,column 6,is_stmt
        MOV #-6, T0
        B $C$L73  ; |636| 
                                        ; branch occurs ; |636| 
$C$L53:    
	.dwpsn	file "src/csl_usb.c",line 638,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |638| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |638| 
||      NOT AR2, AR2 ; |638| 

        BFXTR #0xe000, AC0, AR3 ; |638| 
        ADD AR1, AR3 ; |638| 
        AND AR3, AR2 ; |638| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |638| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |638| 
        MOV AC0, AR1 ; |638| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |638| 

	.dwpsn	file "src/csl_usb.c",line 640,column 5,is_stmt
        MOV XAR3, AC0
        BCC $C$L54,AC0 == #0 ; |640| 
                                        ; branchcc occurs ; |640| 
	.dwpsn	file "src/csl_usb.c",line 642,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2

        AADD #14, AR2 ; |642| 
||      AADD #8, AR3 ; |642| 

        MOV dbl(*AR3), dbl(*AR2) ; |642| 
	.dwpsn	file "src/csl_usb.c",line 643,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |643| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#2)) ; |643| 
	.dwpsn	file "src/csl_usb.c",line 644,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#13) ; |644| 
$C$L54:    
	.dwpsn	file "src/csl_usb.c",line 647,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |647| 
        BCC $C$L55,AC0 != #0 ; |647| 
                                        ; branchcc occurs ; |647| 
	.dwpsn	file "src/csl_usb.c",line 649,column 6,is_stmt
        MOV *SP(#6), T0 ; |649| 
        B $C$L73  ; |649| 
                                        ; branch occurs ; |649| 
$C$L55:    
	.dwpsn	file "src/csl_usb.c",line 653,column 5,is_stmt
        MOV #1038, T0 ; |653| 
        MOV *(#_usbRegisters), AR3 ; |653| 
        MOV port(*AR3(T0)), AR1 ; |653| 
        MOV AR1, *SP(#11) ; |653| 
	.dwpsn	file "src/csl_usb.c",line 655,column 5,is_stmt
        MOV port(*AR3(T0)), AR1 ; |655| 
        AND #0xfff0, AR1, AC0 ; |655| 
        MOV AC0, port(*AR3(T0)) ; |655| 
	.dwpsn	file "src/csl_usb.c",line 659,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |659| 
        MOV dbl(*SP(#12)), AC0 ; |659| 
        AND #0x000f, AC0, AC0 ; |659| 
        MOV port(*AR3(T0)), AR1 ; |659| 
        AND #0xfff0, AR1, AC1 ; |659| 
        OR AC1, AC0 ; |659| 
        MOV AC0, port(*AR3(T0)) ; |659| 
	.dwpsn	file "src/csl_usb.c",line 662,column 5,is_stmt
        B $C$L67  ; |662| 
                                        ; branch occurs ; |662| 
$C$L56:    
	.dwpsn	file "src/csl_usb.c",line 669,column 7,is_stmt
        MOV #1122, T0 ; |669| 
        MOV *(#_usbRegisters), AR3 ; |669| 
        MOV port(*AR3(T0)), AR1 ; |669| 
        AND #0xfff0, AR1, AC0 ; |669| 
        MOV AC0, port(*AR3(T0)) ; |669| 
	.dwpsn	file "src/csl_usb.c",line 673,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |673| 
        MOV port(*AR3(T0)), AR1 ; |673| 
        AND #0xfff0, AR1, AR2 ; |673| 
        MOV *SP(#10), AR1 ; |673| 
        AND #0x000f, AR1, AR1 ; |673| 
        OR AR2, AR1 ; |673| 
        MOV AR1, port(*AR3(T0)) ; |673| 
	.dwpsn	file "src/csl_usb.c",line 676,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |676| 
        MOV port(*AR3(T0)), AR1 ; |676| 
        BCLR @#4, AR1 ; |676| 
        MOV AR1, port(*AR3(T0)) ; |676| 
	.dwpsn	file "src/csl_usb.c",line 680,column 7,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#10), T1 ; |680| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |680| 
||      MOV #512, AR2 ; |680| 

        ADD *AR3(#108), AC0, AR1 ; |680| 
        CMPU AR1 > AR2, TC1 ; |680| 
        BCC $C$L57,TC1 ; |680| 
                                        ; branchcc occurs ; |680| 
	.dwpsn	file "src/csl_usb.c",line 683,column 7,is_stmt
        MOV #1125, T0 ; |683| 
        MOV *(#_usbRegisters), AR3 ; |683| 
        MOV port(*AR3(T0)), AR1 ; |683| 
        MOV dbl(*SP(#8)), XAR3
        AND #0xe000, AR1, AR2 ; |683| 
        MOV *AR3(#108), AR1 ; |683| 
        MOV *(#_usbRegisters), AR3 ; |683| 
        AND #0x1fff, AR1, AR1 ; |683| 
        OR AR2, AR1 ; |683| 
        MOV AR1, port(*AR3(T0)) ; |683| 
	.dwpsn	file "src/csl_usb.c",line 686,column 7,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#10), T1 ; |686| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |686| 
        ADD *AR3(#108), AC0, AR1 ; |686| 
        MOV AR1, *AR3(#108) ; |686| 
	.dwpsn	file "src/csl_usb.c",line 687,column 7,is_stmt
        B $C$L58  ; |687| 
                                        ; branch occurs ; |687| 
$C$L57:    
	.dwpsn	file "src/csl_usb.c",line 690,column 8,is_stmt
        MOV #-6, T0
        B $C$L73  ; |690| 
                                        ; branch occurs ; |690| 
$C$L58:    
	.dwpsn	file "src/csl_usb.c",line 694,column 7,is_stmt
        MOV #1041, T0 ; |694| 
        MOV *(#_usbRegisters), AR3 ; |694| 
        MOV port(*AR3(T0)), AR1 ; |694| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xf800, AR1, AR2 ; |694| 
        MOV *AR3(short(#5)), AR1 ; |694| 
        MOV *(#_usbRegisters), AR3 ; |694| 
        AND #0x07ff, AR1, AR1 ; |694| 
        OR AR2, AR1 ; |694| 
        MOV AR1, port(*AR3(T0)) ; |694| 
	.dwpsn	file "src/csl_usb.c",line 699,column 7,is_stmt
        MOV #1042, T0 ; |699| 
        MOV *(#_usbRegisters), AR3 ; |699| 
        MOV port(*AR3(T0)), AR1 ; |699| 
        BCLR @#15, AR1 ; |699| 
        MOV AR1, port(*AR3(T0)) ; |699| 
	.dwpsn	file "src/csl_usb.c",line 702,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |702| 
        MOV port(*AR3(T0)), AR1 ; |702| 
        BCLR @#14, AR1 ; |702| 
        MOV AR1, port(*AR3(T0)) ; |702| 
	.dwpsn	file "src/csl_usb.c",line 705,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |705| 
        MOV port(*AR3(T0)), AR1 ; |705| 
        BCLR @#12, AR1 ; |705| 
        MOV AR1, port(*AR3(T0)) ; |705| 
	.dwpsn	file "src/csl_usb.c",line 708,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |708| 
        MOV port(*AR3(T0)), AR1 ; |708| 
        BCLR @#11, AR1 ; |708| 
        MOV AR1, port(*AR3(T0)) ; |708| 
	.dwpsn	file "src/csl_usb.c",line 712,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#4)) == #3, TC1 ; |712| 
        BCC $C$L68,!TC1 ; |712| 
                                        ; branchcc occurs ; |712| 
	.dwpsn	file "src/csl_usb.c",line 714,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#10), T1 ; |714| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |714| 
||      MOV #512, AR2 ; |714| 

        ADD *AR3(#108), AC0, AR1 ; |714| 
        CMPU AR1 > AR2, TC1 ; |714| 
        BCC $C$L59,TC1 ; |714| 
                                        ; branchcc occurs ; |714| 
	.dwpsn	file "src/csl_usb.c",line 717,column 9,is_stmt
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |717| 
        ADD *AR3(#108), AC0, AR1 ; |717| 
        MOV AR1, *AR3(#108) ; |717| 
	.dwpsn	file "src/csl_usb.c",line 718,column 8,is_stmt
        B $C$L60  ; |718| 
                                        ; branch occurs ; |718| 
$C$L59:    
	.dwpsn	file "src/csl_usb.c",line 721,column 9,is_stmt
        MOV #-6, T0
        B $C$L73  ; |721| 
                                        ; branch occurs ; |721| 
$C$L60:    
	.dwpsn	file "src/csl_usb.c",line 725,column 8,is_stmt
        MOV #1025, T0 ; |725| 
        MOV *(#_usbRegisters), AR3 ; |725| 
        MOV port(*AR3(T0)), AR1 ; |725| 
        BCLR @#15, AR1 ; |725| 
        BSET @#15, AR1 ; |725| 
        MOV AR1, port(*AR3(T0)) ; |725| 
	.dwpsn	file "src/csl_usb.c",line 729,column 8,is_stmt
        MOV #1042, T0 ; |729| 
        MOV *(#_usbRegisters), AR3 ; |729| 
        MOV port(*AR3(T0)), AR1 ; |729| 
        BCLR @#14, AR1 ; |729| 
        BSET @#14, AR1 ; |729| 
        MOV AR1, port(*AR3(T0)) ; |729| 
	.dwpsn	file "src/csl_usb.c",line 733,column 8,is_stmt
        MOV #1122, T0 ; |733| 
        MOV *(#_usbRegisters), AR3 ; |733| 
        MOV port(*AR3(T0)), AR1 ; |733| 
        BCLR @#4, AR1 ; |733| 
        BSET @#4, AR1 ; |733| 
        MOV AR1, port(*AR3(T0)) ; |733| 
	.dwpsn	file "src/csl_usb.c",line 736,column 12,is_stmt
        B $C$L68  ; |736| 
                                        ; branch occurs ; |736| 
$C$L61:    
	.dwpsn	file "src/csl_usb.c",line 744,column 7,is_stmt
        MOV #1122, T0 ; |744| 
        MOV *(#_usbRegisters), AR3 ; |744| 
        MOV port(*AR3(T0)), AR1 ; |744| 
        AND #0xf0ff, AR1, AC0 ; |744| 
        MOV AC0, port(*AR3(T0)) ; |744| 
	.dwpsn	file "src/csl_usb.c",line 748,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |748| 
        MOV *SP(#10), AC0 ; |748| 
        MOV port(*AR3(T0)), AR1 ; |748| 

        AND #0xf0ff, AR1, AR2 ; |748| 
||      SFTL AC0, #8, AC0 ; |748| 

        AND #0x0f00, AC0, AR1 ; |748| 
        OR AR2, AR1 ; |748| 
        MOV AR1, port(*AR3(T0)) ; |748| 
	.dwpsn	file "src/csl_usb.c",line 752,column 7,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV #1, AC0
||      MOV *SP(#10), T1 ; |752| 

        SFTS AC0, T1, AC0 ; |752| 
||      MOV #512, AR2 ; |752| 

        ADD *AR3(#108), AC0, AR1 ; |752| 
        CMPU AR1 > AR2, TC1 ; |752| 
        BCC $C$L62,TC1 ; |752| 
                                        ; branchcc occurs ; |752| 
	.dwpsn	file "src/csl_usb.c",line 755,column 8,is_stmt
        MOV #1126, T0 ; |755| 
        MOV *(#_usbRegisters), AR3 ; |755| 
        MOV port(*AR3(T0)), AR1 ; |755| 
        MOV dbl(*SP(#8)), XAR3
        AND #0xe000, AR1, AR2 ; |755| 
        MOV *AR3(#108), AR1 ; |755| 
        MOV *(#_usbRegisters), AR3 ; |755| 
        AND #0x1fff, AR1, AR1 ; |755| 
        OR AR2, AR1 ; |755| 
        MOV AR1, port(*AR3(T0)) ; |755| 
	.dwpsn	file "src/csl_usb.c",line 758,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#10), T1 ; |758| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |758| 
        ADD *AR3(#108), AC0, AR1 ; |758| 
        MOV AR1, *AR3(#108) ; |758| 
	.dwpsn	file "src/csl_usb.c",line 759,column 7,is_stmt
        B $C$L63  ; |759| 
                                        ; branch occurs ; |759| 
$C$L62:    
	.dwpsn	file "src/csl_usb.c",line 763,column 8,is_stmt
        MOV #-6, T0
        B $C$L73  ; |763| 
                                        ; branch occurs ; |763| 
$C$L63:    
	.dwpsn	file "src/csl_usb.c",line 767,column 7,is_stmt
        MOV #1045, T0 ; |767| 
        MOV *(#_usbRegisters), AR3 ; |767| 
        MOV port(*AR3(T0)), AR1 ; |767| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xf800, AR1, AR2 ; |767| 
        MOV *AR3(short(#5)), AR1 ; |767| 
        MOV *(#_usbRegisters), AR3 ; |767| 
        AND #0x07ff, AR1, AR1 ; |767| 
        OR AR2, AR1 ; |767| 
        MOV AR1, port(*AR3(T0)) ; |767| 
	.dwpsn	file "src/csl_usb.c",line 772,column 7,is_stmt
        MOV #1046, T0 ; |772| 
        MOV *(#_usbRegisters), AR3 ; |772| 
        MOV port(*AR3(T0)), AR1 ; |772| 
        BCLR @#15, AR1 ; |772| 
        MOV AR1, port(*AR3(T0)) ; |772| 
	.dwpsn	file "src/csl_usb.c",line 775,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |775| 
        MOV port(*AR3(T0)), AR1 ; |775| 
        BCLR @#14, AR1 ; |775| 
        MOV AR1, port(*AR3(T0)) ; |775| 
	.dwpsn	file "src/csl_usb.c",line 778,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |778| 
        MOV port(*AR3(T0)), AR1 ; |778| 
        BCLR @#13, AR1 ; |778| 
        MOV AR1, port(*AR3(T0)) ; |778| 
	.dwpsn	file "src/csl_usb.c",line 781,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |781| 
        MOV port(*AR3(T0)), AR1 ; |781| 
        BCLR @#12, AR1 ; |781| 
        BSET @#12, AR1 ; |781| 
        MOV AR1, port(*AR3(T0)) ; |781| 
	.dwpsn	file "src/csl_usb.c",line 785,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#4)) == #3, TC1 ; |785| 
        BCC $C$L68,!TC1 ; |785| 
                                        ; branchcc occurs ; |785| 
	.dwpsn	file "src/csl_usb.c",line 788,column 8,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#10), T1 ; |788| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |788| 
||      MOV #512, AR2 ; |788| 

        ADD *AR3(#108), AC0, AR1 ; |788| 
        CMPU AR1 > AR2, TC1 ; |788| 
        BCC $C$L64,TC1 ; |788| 
                                        ; branchcc occurs ; |788| 
	.dwpsn	file "src/csl_usb.c",line 791,column 9,is_stmt
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |791| 
        ADD *AR3(#108), AC0, AR1 ; |791| 
        MOV AR1, *AR3(#108) ; |791| 
	.dwpsn	file "src/csl_usb.c",line 792,column 8,is_stmt
        B $C$L65  ; |792| 
                                        ; branch occurs ; |792| 
$C$L64:    
	.dwpsn	file "src/csl_usb.c",line 795,column 9,is_stmt
        MOV #-6, T0
        B $C$L73  ; |795| 
                                        ; branch occurs ; |795| 
$C$L65:    
	.dwpsn	file "src/csl_usb.c",line 798,column 8,is_stmt
        MOV *(#_usbRegisters), AR3 ; |798| 
        MOV port(*AR3(T0)), AR1 ; |798| 
        BCLR @#14, AR1 ; |798| 
        BSET @#14, AR1 ; |798| 
        MOV AR1, port(*AR3(T0)) ; |798| 
	.dwpsn	file "src/csl_usb.c",line 802,column 8,is_stmt
        MOV #1122, T0 ; |802| 
        MOV *(#_usbRegisters), AR3 ; |802| 
        MOV port(*AR3(T0)), AR1 ; |802| 
        BCLR @#12, AR1 ; |802| 
        BSET @#12, AR1 ; |802| 
        MOV AR1, port(*AR3(T0)) ; |802| 
	.dwpsn	file "src/csl_usb.c",line 806,column 12,is_stmt
        B $C$L68  ; |806| 
                                        ; branch occurs ; |806| 
$C$L66:    
	.dwpsn	file "src/csl_usb.c",line 812,column 7,is_stmt
        MOV #-6, *SP(#6) ; |812| 
	.dwpsn	file "src/csl_usb.c",line 813,column 12,is_stmt
        B $C$L68  ; |813| 
                                        ; branch occurs ; |813| 
$C$L67:    
	.dwpsn	file "src/csl_usb.c",line 662,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |662| 

        SUB #1, AR3, AR1 ; |662| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |662| 
        BCC $C$L61,TC1 ; |662| 
                                        ; branchcc occurs ; |662| 
        SUB #9, AR3, AR1 ; |662| 
        CMPU AR1 <= AR2, TC1 ; |662| 
        BCC $C$L56,TC1 ; |662| 
                                        ; branchcc occurs ; |662| 
        B $C$L66  ; |662| 
                                        ; branch occurs ; |662| 
$C$L68:    
	.dwpsn	file "src/csl_usb.c",line 817,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |817| 
        MOV #1038, T0 ; |817| 
        MOV *SP(#11), AR1 ; |817| 
        MOV AR1, port(*AR3(T0)) ; |817| 
	.dwpsn	file "src/csl_usb.c",line 819,column 13,is_stmt
        B $C$L72  ; |819| 
                                        ; branch occurs ; |819| 
$C$L69:    
	.dwpsn	file "src/csl_usb.c",line 825,column 8,is_stmt
        MOV #-6, *SP(#6) ; |825| 
	.dwpsn	file "src/csl_usb.c",line 826,column 10,is_stmt
        B $C$L72  ; |826| 
                                        ; branch occurs ; |826| 
$C$L70:    
	.dwpsn	file "src/csl_usb.c",line 622,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3, AR1 ; |622| 
        BCC $C$L52,AR1 == #0 ; |622| 
                                        ; branchcc occurs ; |622| 
        B $C$L69  ; |622| 
                                        ; branch occurs ; |622| 
$C$L71:    
	.dwpsn	file "src/csl_usb.c",line 831,column 3,is_stmt
        MOV #-5, *SP(#6) ; |831| 
$C$L72:    
	.dwpsn	file "src/csl_usb.c",line 834,column 2,is_stmt
        MOV *SP(#6), T0 ; |834| 
$C$L73:    
	.dwpsn	file "src/csl_usb.c",line 835,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$118, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x343)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.global	_USB_resetDev

$C$DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_resetDev")
	.dwattr $C$DW$131, DW_AT_low_pc(_USB_resetDev)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_USB_resetDev")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$131, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x36d)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 878,column 1,is_stmt,address _USB_resetDev

	.dwfde $C$DW$CIE, _USB_resetDev
$C$DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_resetDev                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_resetDev:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 882,column 2,is_stmt
        MOV #-6, *SP(#2) ; |882| 
	.dwpsn	file "src/csl_usb.c",line 883,column 2,is_stmt
        MOV #0, *SP(#3) ; |883| 
	.dwpsn	file "src/csl_usb.c",line 885,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L74,AC0 == #0 ; |885| 
                                        ; branchcc occurs ; |885| 
	.dwpsn	file "src/csl_usb.c",line 887,column 6,is_stmt
        MOV *AR3, AR1 ; |887| 
        BCC $C$L74,AR1 != #0 ; |887| 
                                        ; branchcc occurs ; |887| 
	.dwpsn	file "src/csl_usb.c",line 890,column 4,is_stmt
        MOV #1038, T0 ; |890| 
        MOV *(#_usbRegisters), AR3 ; |890| 
        MOV port(*AR3(T0)), AR1 ; |890| 
        MOV AR1, *SP(#3) ; |890| 
	.dwpsn	file "src/csl_usb.c",line 892,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#15) ; |892| 
	.dwpsn	file "src/csl_usb.c",line 896,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |896| 
        MOV port(*AR3(T0)), AR1 ; |896| 
        AND #0xfff0, AR1, AC0 ; |896| 
        MOV AC0, port(*AR3(T0)) ; |896| 
	.dwpsn	file "src/csl_usb.c",line 900,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |900| 
        MOV port(*AR3(T0)), AR1 ; |900| 
        AND #0xfff0, AR1, AC0 ; |900| 
        MOV AC0, port(*AR3(T0)) ; |900| 
	.dwpsn	file "src/csl_usb.c",line 904,column 4,is_stmt
        MOV #1042, T0 ; |904| 
        MOV *(#_usbRegisters), AR3 ; |904| 
        MOV port(*AR3(T0)), AR1 ; |904| 
        BCLR @#8, AR1 ; |904| 
        BSET @#8, AR1 ; |904| 
        MOV AR1, port(*AR3(T0)) ; |904| 
	.dwpsn	file "src/csl_usb.c",line 908,column 4,is_stmt
        MOV #1038, T0 ; |908| 
        MOV *(#_usbRegisters), AR3 ; |908| 
        MOV port(*AR3(T0)), AR1 ; |908| 
        AND #0xfff0, AR1, AC0 ; |908| 
        MOV AC0, port(*AR3(T0)) ; |908| 
	.dwpsn	file "src/csl_usb.c",line 912,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |912| 
        MOV port(*AR3(T0)), AR1 ; |912| 
        AND #0xfff0, AR1, AC0 ; |912| 
        BSET @#0, AC0 ; |912| 
        MOV AC0, port(*AR3(T0)) ; |912| 
	.dwpsn	file "src/csl_usb.c",line 916,column 4,is_stmt
        MOV #1042, T0 ; |916| 
        MOV *(#_usbRegisters), AR3 ; |916| 
        MOV port(*AR3(T0)), AR1 ; |916| 
        BCLR @#3, AR1 ; |916| 
        BSET @#3, AR1 ; |916| 
        MOV AR1, port(*AR3(T0)) ; |916| 
	.dwpsn	file "src/csl_usb.c",line 919,column 7,is_stmt
        MOV #1046, T0 ; |919| 
        MOV *(#_usbRegisters), AR3 ; |919| 
        MOV port(*AR3(T0)), AR1 ; |919| 
        BCLR @#4, AR1 ; |919| 
        BSET @#4, AR1 ; |919| 
        MOV AR1, port(*AR3(T0)) ; |919| 
	.dwpsn	file "src/csl_usb.c",line 923,column 4,is_stmt
        MOV #1038, T0 ; |923| 
        MOV *(#_usbRegisters), AR3 ; |923| 
        MOV port(*AR3(T0)), AR1 ; |923| 
        AND #0xfff0, AR1, AC0 ; |923| 
        MOV AC0, port(*AR3(T0)) ; |923| 
	.dwpsn	file "src/csl_usb.c",line 927,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |927| 
        MOV port(*AR3(T0)), AR1 ; |927| 
        AND #0xfff0, AR1, AC0 ; |927| 
        BSET @#1, AC0 ; |927| 
        MOV AC0, port(*AR3(T0)) ; |927| 
	.dwpsn	file "src/csl_usb.c",line 931,column 7,is_stmt
        MOV #1042, T0 ; |931| 
        MOV *(#_usbRegisters), AR3 ; |931| 
        MOV port(*AR3(T0)), AR1 ; |931| 
        BCLR @#3, AR1 ; |931| 
        BSET @#3, AR1 ; |931| 
        MOV AR1, port(*AR3(T0)) ; |931| 
	.dwpsn	file "src/csl_usb.c",line 934,column 4,is_stmt
        MOV #1046, T0 ; |934| 
        MOV *(#_usbRegisters), AR3 ; |934| 
        MOV port(*AR3(T0)), AR1 ; |934| 
        BCLR @#4, AR1 ; |934| 
        BSET @#4, AR1 ; |934| 
        MOV AR1, port(*AR3(T0)) ; |934| 
	.dwpsn	file "src/csl_usb.c",line 938,column 4,is_stmt
        MOV #1038, T0 ; |938| 
        MOV *(#_usbRegisters), AR3 ; |938| 
        MOV port(*AR3(T0)), AR1 ; |938| 
        AND #0xfff0, AR1, AC0 ; |938| 
        MOV AC0, port(*AR3(T0)) ; |938| 
	.dwpsn	file "src/csl_usb.c",line 942,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |942| 
        MOV port(*AR3(T0)), AR1 ; |942| 
        AND #0xfff0, AR1, AR1 ; |942| 
        OR #0x0003, AR1, AR1 ; |942| 
        MOV AR1, port(*AR3(T0)) ; |942| 
	.dwpsn	file "src/csl_usb.c",line 946,column 7,is_stmt
        MOV #1042, T0 ; |946| 
        MOV *(#_usbRegisters), AR3 ; |946| 
        MOV port(*AR3(T0)), AR1 ; |946| 
        BCLR @#3, AR1 ; |946| 
        BSET @#3, AR1 ; |946| 
        MOV AR1, port(*AR3(T0)) ; |946| 
	.dwpsn	file "src/csl_usb.c",line 949,column 4,is_stmt
        MOV #1046, T0 ; |949| 
        MOV *(#_usbRegisters), AR3 ; |949| 
        MOV port(*AR3(T0)), AR1 ; |949| 
        BCLR @#4, AR1 ; |949| 
        BSET @#4, AR1 ; |949| 
        MOV AR1, port(*AR3(T0)) ; |949| 
	.dwpsn	file "src/csl_usb.c",line 953,column 4,is_stmt
        MOV #1038, T0 ; |953| 
        MOV *(#_usbRegisters), AR3 ; |953| 
        MOV port(*AR3(T0)), AR1 ; |953| 
        AND #0xfff0, AR1, AC0 ; |953| 
        MOV AC0, port(*AR3(T0)) ; |953| 
	.dwpsn	file "src/csl_usb.c",line 957,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |957| 
        MOV port(*AR3(T0)), AR1 ; |957| 
        AND #0xfff0, AR1, AC0 ; |957| 
        BSET @#2, AC0 ; |957| 
        MOV AC0, port(*AR3(T0)) ; |957| 
	.dwpsn	file "src/csl_usb.c",line 961,column 7,is_stmt
        MOV #1042, T0 ; |961| 
        MOV *(#_usbRegisters), AR3 ; |961| 
        MOV port(*AR3(T0)), AR1 ; |961| 
        BCLR @#3, AR1 ; |961| 
        BSET @#3, AR1 ; |961| 
        MOV AR1, port(*AR3(T0)) ; |961| 
	.dwpsn	file "src/csl_usb.c",line 964,column 4,is_stmt
        MOV #1046, T0 ; |964| 
        MOV *(#_usbRegisters), AR3 ; |964| 
        MOV port(*AR3(T0)), AR1 ; |964| 
        BCLR @#4, AR1 ; |964| 
        BSET @#4, AR1 ; |964| 
        MOV AR1, port(*AR3(T0)) ; |964| 
	.dwpsn	file "src/csl_usb.c",line 969,column 4,is_stmt
        MOV #1030, T0 ; |969| 
        MOV *(#_usbRegisters), AR3 ; |969| 
        MOV port(*AR3(T0)), AR1 ; |969| 
        BCLR @#0, AR1 ; |969| 
        BSET @#0, AR1 ; |969| 
        MOV AR1, port(*AR3(T0)) ; |969| 
	.dwpsn	file "src/csl_usb.c",line 972,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |972| 
        MOV port(*AR3(T0)), AR1 ; |972| 
        BCLR @#1, AR1 ; |972| 
        BSET @#1, AR1 ; |972| 
        MOV AR1, port(*AR3(T0)) ; |972| 
	.dwpsn	file "src/csl_usb.c",line 975,column 4,is_stmt
        MOV #1033, T0 ; |975| 
        MOV *(#_usbRegisters), AR3 ; |975| 
        MOV port(*AR3(T0)), AR1 ; |975| 
        BCLR @#2, AR1 ; |975| 
        BSET @#2, AR1 ; |975| 
        MOV AR1, port(*AR3(T0)) ; |975| 
	.dwpsn	file "src/csl_usb.c",line 978,column 7,is_stmt
        MOV #1030, T0 ; |978| 
        MOV *(#_usbRegisters), AR3 ; |978| 
        MOV port(*AR3(T0)), AR1 ; |978| 
        BCLR @#3, AR1 ; |978| 
        BSET @#3, AR1 ; |978| 
        MOV AR1, port(*AR3(T0)) ; |978| 
	.dwpsn	file "src/csl_usb.c",line 981,column 7,is_stmt
        MOV *(#_usbRegisters), AR3 ; |981| 
        MOV port(*AR3(T0)), AR1 ; |981| 
        BCLR @#4, AR1 ; |981| 
        BSET @#4, AR1 ; |981| 
        MOV AR1, port(*AR3(T0)) ; |981| 
	.dwpsn	file "src/csl_usb.c",line 985,column 4,is_stmt
        MOV #1034, T0 ; |985| 
        MOV *(#_usbRegisters), AR3 ; |985| 
        OR #0x7fff, port(*AR3(T0)) ; |985| 
	.dwpsn	file "src/csl_usb.c",line 986,column 4,is_stmt
        MOV #48, T0 ; |986| 
        MOV *(#_usbRegisters), AR3 ; |986| 
        MOV #65535, port(*AR3(T0)) ; |986| 
	.dwpsn	file "src/csl_usb.c",line 987,column 7,is_stmt
        MOV #49, T0 ; |987| 
        MOV *(#_usbRegisters), AR3 ; |987| 
        MOV #65527, port(*AR3(T0)) ; |987| 
	.dwpsn	file "src/csl_usb.c",line 990,column 4,is_stmt
        MOV #1038, T0 ; |990| 
        MOV *(#_usbRegisters), AR3 ; |990| 
        MOV *SP(#3), AR1 ; |990| 
        MOV AR1, port(*AR3(T0)) ; |990| 
	.dwpsn	file "src/csl_usb.c",line 992,column 4,is_stmt
        MOV #0, *SP(#2) ; |992| 
$C$L74:    
	.dwpsn	file "src/csl_usb.c",line 996,column 5,is_stmt
        MOV *SP(#2), T0 ; |996| 
	.dwpsn	file "src/csl_usb.c",line 997,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$131, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x3e5)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text"
	.global	_USB_getEvents

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEvents")
	.dwattr $C$DW$137, DW_AT_low_pc(_USB_getEvents)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_USB_getEvents")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$137, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x415)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1047,column 1,is_stmt,address _USB_getEvents

	.dwfde $C$DW$CIE, _USB_getEvents
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg17]
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_getEvents                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getEvents:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("usbEvents")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_usbEvents")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1052,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1052| 
	.dwpsn	file "src/csl_usb.c",line 1053,column 2,is_stmt
        MOV #0, *SP(#6) ; |1053| 
	.dwpsn	file "src/csl_usb.c",line 1054,column 2,is_stmt
        MOV #0, AC0 ; |1054| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1056,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L75,AC0 == #0 ; |1056| 
                                        ; branchcc occurs ; |1056| 
	.dwpsn	file "src/csl_usb.c",line 1058,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 1060,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1060| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1060| 
||      NOT AR2, AR2 ; |1060| 

        BFXTR #0xe000, AC0, AR3 ; |1060| 
        ADD AR1, AR3 ; |1060| 
        AND AR3, AR2 ; |1060| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1060| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1060| 
        MOV AC0, AR1 ; |1060| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1060| 

	.dwpsn	file "src/csl_usb.c",line 1062,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L76,AC0 == #0 ; |1062| 
                                        ; branchcc occurs ; |1062| 
	.dwpsn	file "src/csl_usb.c",line 1064,column 4,is_stmt
        MOV *AR3(#12), AR1 ; |1064| 
        MOV AR1, *SP(#6) ; |1064| 
	.dwpsn	file "src/csl_usb.c",line 1066,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#12) ; |1066| 
	.dwpsn	file "src/csl_usb.c",line 1068,column 2,is_stmt
        B $C$L76  ; |1068| 
                                        ; branch occurs ; |1068| 
$C$L75:    
	.dwpsn	file "src/csl_usb.c",line 1071,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1071| 
$C$L76:    
	.dwpsn	file "src/csl_usb.c",line 1074,column 2,is_stmt
        MOV *SP(#6), T0 ; |1074| 
	.dwpsn	file "src/csl_usb.c",line 1075,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x433)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.global	_USB_peekEvents

$C$DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_peekEvents")
	.dwattr $C$DW$146, DW_AT_low_pc(_USB_peekEvents)
	.dwattr $C$DW$146, DW_AT_high_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_USB_peekEvents")
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$146, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$146, DW_AT_TI_begin_line(0x464)
	.dwattr $C$DW$146, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$146, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1126,column 1,is_stmt,address _USB_peekEvents

	.dwfde $C$DW$CIE, _USB_peekEvents
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg17]
$C$DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_peekEvents                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_peekEvents:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("usbEvents")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_usbEvents")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1131,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1131| 
	.dwpsn	file "src/csl_usb.c",line 1132,column 2,is_stmt
        MOV #0, *SP(#6) ; |1132| 
	.dwpsn	file "src/csl_usb.c",line 1133,column 2,is_stmt
        MOV #0, AC0 ; |1133| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1135,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L77,AC0 == #0 ; |1135| 
                                        ; branchcc occurs ; |1135| 
	.dwpsn	file "src/csl_usb.c",line 1137,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 1139,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1139| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1139| 
||      NOT AR2, AR2 ; |1139| 

        BFXTR #0xe000, AC0, AR3 ; |1139| 
        ADD AR1, AR3 ; |1139| 
        AND AR3, AR2 ; |1139| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1139| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1139| 
        MOV AC0, AR1 ; |1139| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1139| 

	.dwpsn	file "src/csl_usb.c",line 1141,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L78,AC0 == #0 ; |1141| 
                                        ; branchcc occurs ; |1141| 
	.dwpsn	file "src/csl_usb.c",line 1143,column 4,is_stmt
        MOV *AR3(#12), AR1 ; |1143| 
        MOV AR1, *SP(#6) ; |1143| 
	.dwpsn	file "src/csl_usb.c",line 1145,column 2,is_stmt
        B $C$L78  ; |1145| 
                                        ; branch occurs ; |1145| 
$C$L77:    
	.dwpsn	file "src/csl_usb.c",line 1148,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1148| 
$C$L78:    
	.dwpsn	file "src/csl_usb.c",line 1151,column 2,is_stmt
        MOV *SP(#6), T0 ; |1151| 
	.dwpsn	file "src/csl_usb.c",line 1152,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$146, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$146, DW_AT_TI_end_line(0x480)
	.dwattr $C$DW$146, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$146

	.sect	".text"
	.global	_USB_getSetupPacket

$C$DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getSetupPacket")
	.dwattr $C$DW$155, DW_AT_low_pc(_USB_getSetupPacket)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_USB_getSetupPacket")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$155, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x4b5)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1208,column 1,is_stmt,address _USB_getSetupPacket

	.dwfde $C$DW$CIE, _USB_getSetupPacket
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg17]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg19]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readFromFifo")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_readFromFifo")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_getSetupPacket                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CSR,RPTC,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getSetupPacket:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("readFromFifo")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_readFromFifo")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("wBuffer")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_wBuffer")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |1208| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1212,column 2,is_stmt
        MOV #0, *SP(#5) ; |1212| 
	.dwpsn	file "src/csl_usb.c",line 1214,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L85,AC0 == #0 ; |1214| 
                                        ; branchcc occurs ; |1214| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L85,AC0 == #0 ; |1214| 
                                        ; branchcc occurs ; |1214| 
	.dwpsn	file "src/csl_usb.c",line 1216,column 3,is_stmt
        B $C$L84  ; |1216| 
                                        ; branch occurs ; |1216| 
$C$L79:    
	.dwpsn	file "src/csl_usb.c",line 1219,column 5,is_stmt
        CMP *SP(#4) == #1, TC1 ; |1219| 
        BCC $C$L80,!TC1 ; |1219| 
                                        ; branchcc occurs ; |1219| 
	.dwpsn	file "src/csl_usb.c",line 1222,column 6,is_stmt
        MOV #1057, T0 ; |1222| 
        MOV *(#_usbRegisters), AR3 ; |1222| 
        MOV port(*AR3(T0)), AR1 ; |1222| 
        MOV AR1, *SP(#6) ; |1222| 
	.dwpsn	file "src/csl_usb.c",line 1224,column 6,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1224| 
        MOV AR1, *SP(#7) ; |1224| 
	.dwpsn	file "src/csl_usb.c",line 1226,column 6,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1226| 
        MOV AR1, *SP(#8) ; |1226| 
	.dwpsn	file "src/csl_usb.c",line 1228,column 6,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1228| 
        MOV AR1, *SP(#9) ; |1228| 
	.dwpsn	file "src/csl_usb.c",line 1231,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#6))), AR1 ; |1231| 
        MOV AR1, *AR3(short(#1)) ; |1231| 
	.dwpsn	file "src/csl_usb.c",line 1232,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), AR1 ; |1232| 
        AND #0xff00, AR1, AC0 ; |1232| 
        SFTS AC0, #-8, AC0 ; |1232| 
        MOV AC0, *AR3(short(#2)) ; |1232| 
	.dwpsn	file "src/csl_usb.c",line 1233,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#7), AR1 ; |1233| 
        MOV AR1, *AR3(short(#3)) ; |1233| 
	.dwpsn	file "src/csl_usb.c",line 1234,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8), AR1 ; |1234| 
        MOV AR1, *AR3(short(#4)) ; |1234| 
	.dwpsn	file "src/csl_usb.c",line 1235,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#9), AR1 ; |1235| 
        MOV AR1, *AR3(short(#5)) ; |1235| 
	.dwpsn	file "src/csl_usb.c",line 1237,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1237| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#17) ; |1237| 
	.dwpsn	file "src/csl_usb.c",line 1239,column 6,is_stmt
        B $C$L86  ; |1239| 
                                        ; branch occurs ; |1239| 
$C$L80:    
	.dwpsn	file "src/csl_usb.c",line 1243,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR2

        RPT #5    ; |1243| 
||      AADD #93, AR3 ; |1243| 

                                            ; loop starts ; |1243| 
$C$L81:    
$C$DW$L$_USB_getSetupPacket$9$B:
            MOV *AR3+, *AR2+ ; |1243| 
                                        ; loop ends ; |1243| 
$C$DW$L$_USB_getSetupPacket$9$E:
$C$L82:    
	.dwpsn	file "src/csl_usb.c",line 1244,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |1244| 
	.dwpsn	file "src/csl_usb.c",line 1248,column 17,is_stmt
$C$L83:    
	.dwpsn	file "src/csl_usb.c",line 1251,column 8,is_stmt
        MOV #-6, *SP(#5) ; |1251| 
	.dwpsn	file "src/csl_usb.c",line 1252,column 22,is_stmt
        B $C$L86  ; |1252| 
                                        ; branch occurs ; |1252| 
$C$L84:    
	.dwpsn	file "src/csl_usb.c",line 1216,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1216| 
        BCC $C$L79,AR1 == #0 ; |1216| 
                                        ; branchcc occurs ; |1216| 
        B $C$L83  ; |1216| 
                                        ; branch occurs ; |1216| 
$C$L85:    
	.dwpsn	file "src/csl_usb.c",line 1257,column 3,is_stmt
        MOV #-6, *SP(#5) ; |1257| 
$C$L86:    
	.dwpsn	file "src/csl_usb.c",line 1260,column 2,is_stmt
        MOV *SP(#5), T0 ; |1260| 
	.dwpsn	file "src/csl_usb.c",line 1261,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L81:1:1714639456")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x4db)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x4db)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_USB_getSetupPacket$9$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_USB_getSetupPacket$9$E)
	.dwendtag $C$DW$165

	.dwattr $C$DW$155, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x4ed)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text"
	.global	_USB_postTransaction

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_postTransaction")
	.dwattr $C$DW$167, DW_AT_low_pc(_USB_postTransaction)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_USB_postTransaction")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$167, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x51c)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_usb.c",line 1312,column 1,is_stmt,address _USB_postTransaction

	.dwfde $C$DW$CIE, _USB_postTransaction
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg17]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("byteCnt")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_byteCnt")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg12]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg19]
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flags")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: USB_postTransaction                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_postTransaction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("byteCnt")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_byteCnt")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("flags")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("pTransfer")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("epNum")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T1, *SP(#6) ; |1312| 
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |1312| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1319,column 2,is_stmt
        MOV #0, *SP(#13) ; |1319| 
	.dwpsn	file "src/csl_usb.c",line 1321,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L95,AC0 == #0 ; |1321| 
                                        ; branchcc occurs ; |1321| 
	.dwpsn	file "src/csl_usb.c",line 1323,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_usb.c",line 1324,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1324| 
        MOV AR1, *SP(#12) ; |1324| 
	.dwpsn	file "src/csl_usb.c",line 1326,column 3,is_stmt
        B $C$L90  ; |1326| 
                                        ; branch occurs ; |1326| 
$C$L87:    
	.dwpsn	file "src/csl_usb.c",line 1333,column 5,is_stmt
        MPYMK *SP(#12), #14, AC0 ; |1333| 
        MOV AC0, AR1 ; |1333| 
        AMOV #_gUsbTransfer, XAR3 ; |1333| 

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |1333| 

	.dwpsn	file "src/csl_usb.c",line 1334,column 5,is_stmt
        MOV #0, AC0 ; |1334| 
        MOV AC0, dbl(*AR3) ; |1334| 
	.dwpsn	file "src/csl_usb.c",line 1336,column 10,is_stmt
        B $C$L91  ; |1336| 
                                        ; branch occurs ; |1336| 
$C$L88:    
	.dwpsn	file "src/csl_usb.c",line 1343,column 5,is_stmt
        MPYMK *SP(#12), #14, AC0 ; |1343| 
        SUB #42, AC0, AR1 ; |1343| 
        AMOV #_gUsbTransfer, XAR3 ; |1343| 

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |1343| 

	.dwpsn	file "src/csl_usb.c",line 1344,column 5,is_stmt
        MOV #128, AC0 ; |1344| 
        MOV AC0, dbl(*AR3) ; |1344| 
	.dwpsn	file "src/csl_usb.c",line 1346,column 10,is_stmt
        B $C$L91  ; |1346| 
                                        ; branch occurs ; |1346| 
$C$L89:    
	.dwpsn	file "src/csl_usb.c",line 1349,column 5,is_stmt
        MOV #-6, *SP(#13) ; |1349| 
	.dwpsn	file "src/csl_usb.c",line 1350,column 10,is_stmt
        B $C$L91  ; |1350| 
                                        ; branch occurs ; |1350| 
$C$L90:    
	.dwpsn	file "src/csl_usb.c",line 1326,column 3,is_stmt
        MOV #4, AR2
        CMPU AR1 <= AR2, TC1 ; |1326| 
        BCC $C$L87,TC1 ; |1326| 
                                        ; branchcc occurs ; |1326| 
        SUB #8, AR1, AR1 ; |1326| 
        CMPU AR1 <= AR2, TC1 ; |1326| 
        BCC $C$L88,TC1 ; |1326| 
                                        ; branchcc occurs ; |1326| 
        B $C$L89  ; |1326| 
                                        ; branch occurs ; |1326| 
$C$L91:    
	.dwpsn	file "src/csl_usb.c",line 1353,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1353| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1353| 
||      NOT AR2, AR2 ; |1353| 

        BFXTR #0xe000, AC0, AR3 ; |1353| 
        ADD AR1, AR3 ; |1353| 
        AND AR3, AR2 ; |1353| 
        MOV dbl(*SP(#14)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1353| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1353| 
        MOV AC0, AR1 ; |1353| 

        MOV XAR3, dbl(*SP(#8))
||      AADD AR1, AR3 ; |1353| 

	.dwpsn	file "src/csl_usb.c",line 1354,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1354| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, *AR3(short(#2)) ; |1354| 
	.dwpsn	file "src/csl_usb.c",line 1356,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), AC0 ; |1356| 
        BCC $C$L92,AC0 != #0 ; |1356| 
                                        ; branchcc occurs ; |1356| 
        MOV *SP(#2), AR1 ; |1356| 
        BCC $C$L92,AR1 != #0 ; |1356| 
                                        ; branchcc occurs ; |1356| 
	.dwpsn	file "src/csl_usb.c",line 1358,column 4,is_stmt
        MOV #0, T0
        B $C$L97  ; |1358| 
                                        ; branch occurs ; |1358| 
$C$L92:    
	.dwpsn	file "src/csl_usb.c",line 1361,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L96,AC0 == #0 ; |1361| 
                                        ; branchcc occurs ; |1361| 
	.dwpsn	file "src/csl_usb.c",line 1363,column 4,is_stmt
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#10)), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_usb.c",line 1365,column 4,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L93,AC0 == #0 ; |1365| 
                                        ; branchcc occurs ; |1365| 
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        CMP *AR3(#12) == #1, TC1 ; |1365| 
        BCC $C$L93,!TC1 ; |1365| 
                                        ; branchcc occurs ; |1365| 
        MOV dbl(*SP(#14)), XAR3
        CMP *AR3(#15) == #1, TC1 ; |1365| 
        BCC $C$L93,!TC1 ; |1365| 
                                        ; branchcc occurs ; |1365| 
        CMP *AR3(short(#3)) == #1, TC1 ; |1365| 
        BCC $C$L94,TC1 ; |1365| 
                                        ; branchcc occurs ; |1365| 
$C$L93:    
	.dwpsn	file "src/csl_usb.c",line 1370,column 5,is_stmt
        MOV #-6, T0
        B $C$L97  ; |1370| 
                                        ; branch occurs ; |1370| 
$C$L94:    
	.dwpsn	file "src/csl_usb.c",line 1373,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*SP(#8)), XAR2
        AADD #2, AR3 ; |1373| 
        MOV dbl(*AR2), dbl(*AR3) ; |1373| 
	.dwpsn	file "src/csl_usb.c",line 1374,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV XAR2, dbl(*AR3(short(#4)))
	.dwpsn	file "src/csl_usb.c",line 1375,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV uns(*SP(#2)), AC0 ; |1375| 
        MOV AC0, dbl(*AR3(short(#6))) ; |1375| 
	.dwpsn	file "src/csl_usb.c",line 1376,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #0, AC0 ; |1376| 
        MOV AC0, dbl(*AR3(#8)) ; |1376| 
	.dwpsn	file "src/csl_usb.c",line 1377,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #0, *AR3(#12) ; |1377| 
	.dwpsn	file "src/csl_usb.c",line 1378,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#6), AR1 ; |1378| 
        MOV AR1, *AR3(#13) ; |1378| 
	.dwpsn	file "src/csl_usb.c",line 1381,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*SP(#14)), XAR0
        MOV dbl(*SP(#8)), XAR1
        MOV dbl(*AR3(#104)), AC0 ; |1381| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_call
	.dwattr $C$DW$181, DW_AT_TI_indirect
        CALL AC0  ; |1381| 
                                        ; call occurs [AC0] ; |1381| 
        MOV T0, *SP(#13) ; |1381| 
	.dwpsn	file "src/csl_usb.c",line 1383,column 2,is_stmt
        B $C$L96  ; |1383| 
                                        ; branch occurs ; |1383| 
$C$L95:    
	.dwpsn	file "src/csl_usb.c",line 1386,column 3,is_stmt
        MOV #-5, *SP(#13) ; |1386| 
$C$L96:    
	.dwpsn	file "src/csl_usb.c",line 1389,column 2,is_stmt
        MOV *SP(#13), T0 ; |1389| 
$C$L97:    
	.dwpsn	file "src/csl_usb.c",line 1390,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$167, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x56e)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.global	_USB_isTransactionDone

$C$DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_isTransactionDone")
	.dwattr $C$DW$183, DW_AT_low_pc(_USB_isTransactionDone)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_USB_isTransactionDone")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$183, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$183, DW_AT_TI_begin_line(0x5a4)
	.dwattr $C$DW$183, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_usb.c",line 1446,column 1,is_stmt,address _USB_isTransactionDone

	.dwfde $C$DW$CIE, _USB_isTransactionDone
$C$DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg17]
$C$DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_isTransactionDone                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_isTransactionDone:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1450,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1450| 
	.dwpsn	file "src/csl_usb.c",line 1451,column 5,is_stmt
        MOV #0, AC0 ; |1451| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1453,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L99,AC0 == #0 ; |1453| 
                                        ; branchcc occurs ; |1453| 
	.dwpsn	file "src/csl_usb.c",line 1455,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_usb.c",line 1457,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1457| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1457| 
||      NOT AR2, AR2 ; |1457| 

        BFXTR #0xe000, AC0, AR3 ; |1457| 
        ADD AR1, AR3 ; |1457| 
        AND AR3, AR2 ; |1457| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1457| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1457| 
        MOV AC0, AR1 ; |1457| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1457| 

	.dwpsn	file "src/csl_usb.c",line 1459,column 3,is_stmt
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L98,AC0 == #0 ; |1459| 
                                        ; branchcc occurs ; |1459| 
	.dwpsn	file "src/csl_usb.c",line 1461,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        CMP *AR3(#12) == #1, TC1 ; |1461| 
        BCC $C$L100,TC1 ; |1461| 
                                        ; branchcc occurs ; |1461| 
	.dwpsn	file "src/csl_usb.c",line 1463,column 5,is_stmt
        MOV #0, T0
        B $C$L101 ; |1463| 
                                        ; branch occurs ; |1463| 
$C$L98:    
	.dwpsn	file "src/csl_usb.c",line 1468,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-6, *AR3 ; |1468| 
	.dwpsn	file "src/csl_usb.c",line 1470,column 2,is_stmt
        B $C$L100 ; |1470| 
                                        ; branch occurs ; |1470| 
$C$L99:    
	.dwpsn	file "src/csl_usb.c",line 1473,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1473| 
$C$L100:    
	.dwpsn	file "src/csl_usb.c",line 1476,column 2,is_stmt
        MOV #1, T0
$C$L101:    
	.dwpsn	file "src/csl_usb.c",line 1477,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$183, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x5c5)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text"
	.global	_USB_bytesRemaining

$C$DW$191	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_bytesRemaining")
	.dwattr $C$DW$191, DW_AT_low_pc(_USB_bytesRemaining)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_USB_bytesRemaining")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$191, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$191, DW_AT_TI_begin_line(0x5f8)
	.dwattr $C$DW$191, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1530,column 1,is_stmt,address _USB_bytesRemaining

	.dwfde $C$DW$CIE, _USB_bytesRemaining
$C$DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg17]
$C$DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_bytesRemaining                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_bytesRemaining:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("bytesRem")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_bytesRem")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1535,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1535| 
	.dwpsn	file "src/csl_usb.c",line 1536,column 2,is_stmt
        MOV #0, *SP(#6) ; |1536| 
	.dwpsn	file "src/csl_usb.c",line 1537,column 2,is_stmt
        MOV #0, AC0 ; |1537| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1539,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L103,AC0 == #0 ; |1539| 
                                        ; branchcc occurs ; |1539| 
	.dwpsn	file "src/csl_usb.c",line 1541,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 1543,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1543| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1543| 
||      NOT AR2, AR2 ; |1543| 

        BFXTR #0xe000, AC0, AR3 ; |1543| 
        ADD AR1, AR3 ; |1543| 
        AND AR3, AR2 ; |1543| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1543| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1543| 
        MOV AC0, AR1 ; |1543| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1543| 

	.dwpsn	file "src/csl_usb.c",line 1544,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L102,AC0 == #0 ; |1544| 
                                        ; branchcc occurs ; |1544| 
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L102,AC0 == #0 ; |1544| 
                                        ; branchcc occurs ; |1544| 
	.dwpsn	file "src/csl_usb.c",line 1546,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |1546| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        SUB AC0, dbl(*AR3(short(#6))), AC0 ; |1546| 
        MOV AC0, *SP(#6) ; |1546| 
	.dwpsn	file "src/csl_usb.c",line 1548,column 3,is_stmt
        B $C$L104 ; |1548| 
                                        ; branch occurs ; |1548| 
$C$L102:    
	.dwpsn	file "src/csl_usb.c",line 1551,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-6, *AR3 ; |1551| 
	.dwpsn	file "src/csl_usb.c",line 1553,column 2,is_stmt
        B $C$L104 ; |1553| 
                                        ; branch occurs ; |1553| 
$C$L103:    
	.dwpsn	file "src/csl_usb.c",line 1556,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1556| 
$C$L104:    
	.dwpsn	file "src/csl_usb.c",line 1559,column 2,is_stmt
        MOV *SP(#6), T0 ; |1559| 
	.dwpsn	file "src/csl_usb.c",line 1560,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$191, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x618)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text"
	.global	_USB_stallEndpt

$C$DW$200	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_stallEndpt")
	.dwattr $C$DW$200, DW_AT_low_pc(_USB_stallEndpt)
	.dwattr $C$DW$200, DW_AT_high_pc(0x00)
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_USB_stallEndpt")
	.dwattr $C$DW$200, DW_AT_external
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$200, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$200, DW_AT_TI_begin_line(0x644)
	.dwattr $C$DW$200, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$200, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_usb.c",line 1605,column 1,is_stmt,address _USB_stallEndpt

	.dwfde $C$DW$CIE, _USB_stallEndpt
$C$DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_stallEndpt                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_stallEndpt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1611,column 2,is_stmt
        MOV #0, *SP(#4) ; |1611| 
	.dwpsn	file "src/csl_usb.c",line 1612,column 2,is_stmt
        MOV #0, *SP(#5) ; |1612| 
	.dwpsn	file "src/csl_usb.c",line 1613,column 2,is_stmt
        MOV #0, AC0 ; |1613| 
        MOV AC0, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 1615,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L110,AC0 == #0 ; |1615| 
                                        ; branchcc occurs ; |1615| 
	.dwpsn	file "src/csl_usb.c",line 1617,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_usb.c",line 1619,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3 == #8, TC1 ; |1619| 
        BCC $C$L105,!TC1 ; |1619| 
                                        ; branchcc occurs ; |1619| 
	.dwpsn	file "src/csl_usb.c",line 1621,column 4,is_stmt
        MOV *SP(#4), T0 ; |1621| 
        B $C$L112 ; |1621| 
                                        ; branch occurs ; |1621| 
$C$L105:    
	.dwpsn	file "src/csl_usb.c",line 1624,column 3,is_stmt
        MOV *AR3, AR1 ; |1624| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1624| 
||      NOT AR2, AR2 ; |1624| 

        BFXTR #0xe000, AC0, AR3 ; |1624| 
        ADD AR1, AR3 ; |1624| 
        AND AR3, AR2 ; |1624| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1624| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1624| 
        MOV AC0, AR1 ; |1624| 

        MOV XAR3, dbl(*SP(#2))
||      AADD AR1, AR3 ; |1624| 

	.dwpsn	file "src/csl_usb.c",line 1626,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L109,AC0 == #0 ; |1626| 
                                        ; branchcc occurs ; |1626| 
        CMP *AR3(short(#6)) == #1, TC1 ; |1626| 
        BCC $C$L109,!TC1 ; |1626| 
                                        ; branchcc occurs ; |1626| 
	.dwpsn	file "src/csl_usb.c",line 1629,column 4,is_stmt
        MOV #1038, T0 ; |1629| 
        MOV *(#_usbRegisters), AR3 ; |1629| 
        MOV port(*AR3(T0)), AR1 ; |1629| 
        MOV AR1, *SP(#5) ; |1629| 
	.dwpsn	file "src/csl_usb.c",line 1630,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#16) ; |1630| 
	.dwpsn	file "src/csl_usb.c",line 1632,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |1632| 
        BCC $C$L106,AC0 != #0 ; |1632| 
                                        ; branchcc occurs ; |1632| 
	.dwpsn	file "src/csl_usb.c",line 1635,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1635| 
        MOV port(*AR3(T0)), AR1 ; |1635| 
        AND #0xfff0, AR1, AC0 ; |1635| 
        MOV AC0, port(*AR3(T0)) ; |1635| 
	.dwpsn	file "src/csl_usb.c",line 1639,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1639| 
        MOV port(*AR3(T0)), AR1 ; |1639| 
        AND #0xfff0, AR1, AC0 ; |1639| 
        MOV AC0, port(*AR3(T0)) ; |1639| 
	.dwpsn	file "src/csl_usb.c",line 1643,column 5,is_stmt
        MOV #1042, T0 ; |1643| 
        MOV *(#_usbRegisters), AR3 ; |1643| 
        MOV port(*AR3(T0)), AR1 ; |1643| 
        BCLR @#5, AR1 ; |1643| 
        BSET @#5, AR1 ; |1643| 
        MOV AR1, port(*AR3(T0)) ; |1643| 
	.dwpsn	file "src/csl_usb.c",line 1645,column 4,is_stmt
        B $C$L108 ; |1645| 
                                        ; branch occurs ; |1645| 
$C$L106:    
	.dwpsn	file "src/csl_usb.c",line 1648,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3, AR1 ; |1648| 
||      MOV #8, AR2

        CMP AR1 <= AR2, TC1 ; |1648| 
        BCC $C$L107,TC1 ; |1648| 
                                        ; branchcc occurs ; |1648| 
	.dwpsn	file "src/csl_usb.c",line 1651,column 12,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1651| 
        MOV port(*AR3(T0)), AR1 ; |1651| 
        AND #0xfff0, AR1, AC0 ; |1651| 
        MOV AC0, port(*AR3(T0)) ; |1651| 
	.dwpsn	file "src/csl_usb.c",line 1655,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1655| 
        MOV port(*AR3(T0)), AR1 ; |1655| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |1655| 
        MOV *(#_usbRegisters), AR3 ; |1655| 
        AND #0xfff0, AR1, AC1 ; |1655| 
        AND #0x000f, AC0, AC0 ; |1655| 
        OR AC1, AC0 ; |1655| 
        MOV AC0, port(*AR3(T0)) ; |1655| 
	.dwpsn	file "src/csl_usb.c",line 1659,column 6,is_stmt
        MOV #1042, T0 ; |1659| 
        MOV *(#_usbRegisters), AR3 ; |1659| 
        MOV port(*AR3(T0)), AR1 ; |1659| 
        BCLR @#4, AR1 ; |1659| 
        BSET @#4, AR1 ; |1659| 
        MOV AR1, port(*AR3(T0)) ; |1659| 
	.dwpsn	file "src/csl_usb.c",line 1661,column 5,is_stmt
        B $C$L108 ; |1661| 
                                        ; branch occurs ; |1661| 
$C$L107:    
	.dwpsn	file "src/csl_usb.c",line 1665,column 12,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1665| 
        MOV port(*AR3(T0)), AR1 ; |1665| 
        AND #0xfff0, AR1, AC0 ; |1665| 
        MOV AC0, port(*AR3(T0)) ; |1665| 
	.dwpsn	file "src/csl_usb.c",line 1669,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1669| 
        MOV port(*AR3(T0)), AR1 ; |1669| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |1669| 
        MOV *(#_usbRegisters), AR3 ; |1669| 
        AND #0xfff0, AR1, AC1 ; |1669| 
        AND #0x000f, AC0, AC0 ; |1669| 
        OR AC1, AC0 ; |1669| 
        MOV AC0, port(*AR3(T0)) ; |1669| 
	.dwpsn	file "src/csl_usb.c",line 1673,column 6,is_stmt
        MOV #1046, T0 ; |1673| 
        MOV *(#_usbRegisters), AR3 ; |1673| 
        MOV port(*AR3(T0)), AR1 ; |1673| 
        BCLR @#5, AR1 ; |1673| 
        BSET @#5, AR1 ; |1673| 
        MOV AR1, port(*AR3(T0)) ; |1673| 
$C$L108:    
	.dwpsn	file "src/csl_usb.c",line 1679,column 10,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1679| 
        MOV #1038, T0 ; |1679| 
        MOV *SP(#5), AR1 ; |1679| 
        MOV AR1, port(*AR3(T0)) ; |1679| 
	.dwpsn	file "src/csl_usb.c",line 1680,column 3,is_stmt
        B $C$L111 ; |1680| 
                                        ; branch occurs ; |1680| 
$C$L109:    
	.dwpsn	file "src/csl_usb.c",line 1683,column 13,is_stmt
        MOV #-6, *SP(#4) ; |1683| 
	.dwpsn	file "src/csl_usb.c",line 1685,column 2,is_stmt
        B $C$L111 ; |1685| 
                                        ; branch occurs ; |1685| 
$C$L110:    
	.dwpsn	file "src/csl_usb.c",line 1688,column 3,is_stmt
        MOV #-5, *SP(#4) ; |1688| 
$C$L111:    
	.dwpsn	file "src/csl_usb.c",line 1691,column 2,is_stmt
        MOV *SP(#4), T0 ; |1691| 
$C$L112:    
	.dwpsn	file "src/csl_usb.c",line 1692,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$200, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$200, DW_AT_TI_end_line(0x69c)
	.dwattr $C$DW$200, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$200

	.sect	".text"
	.global	_USB_clearEndptStall

$C$DW$208	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_clearEndptStall")
	.dwattr $C$DW$208, DW_AT_low_pc(_USB_clearEndptStall)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_USB_clearEndptStall")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$208, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$208, DW_AT_TI_begin_line(0x6ce)
	.dwattr $C$DW$208, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1743,column 1,is_stmt,address _USB_clearEndptStall

	.dwfde $C$DW$CIE, _USB_clearEndptStall
$C$DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_clearEndptStall                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_clearEndptStall:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("endPtCount")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_endPtCount")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1750,column 2,is_stmt
        MOV #0, *SP(#2) ; |1750| 
	.dwpsn	file "src/csl_usb.c",line 1751,column 2,is_stmt
        MOV #0, AC0 ; |1751| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1752,column 2,is_stmt
        MOV #10, *SP(#6) ; |1752| 
	.dwpsn	file "src/csl_usb.c",line 1754,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L117,AC0 == #0 ; |1754| 
                                        ; branchcc occurs ; |1754| 
	.dwpsn	file "src/csl_usb.c",line 1756,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 1758,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1758| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1758| 
||      NOT AR2, AR2 ; |1758| 

        BFXTR #0xe000, AC0, AR3 ; |1758| 
        ADD AR1, AR3 ; |1758| 
        AND AR3, AR2 ; |1758| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1758| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1758| 
        MOV AC0, AR1 ; |1758| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1758| 

	.dwpsn	file "src/csl_usb.c",line 1760,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L116,AC0 == #0 ; |1760| 
                                        ; branchcc occurs ; |1760| 
        CMP *AR3(short(#6)) == #1, TC1 ; |1760| 
        BCC $C$L116,!TC1 ; |1760| 
                                        ; branchcc occurs ; |1760| 
	.dwpsn	file "src/csl_usb.c",line 1762,column 4,is_stmt
        MOV #1038, T0 ; |1762| 
        MOV *(#_usbRegisters), AR3 ; |1762| 
        MOV port(*AR3(T0)), AR1 ; |1762| 
        MOV AR1, *SP(#7) ; |1762| 
	.dwpsn	file "src/csl_usb.c",line 1764,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1764| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1764| 
||      NOT AR2, AR2 ; |1764| 

        BFXTR #0xe000, AC0, AR3 ; |1764| 
        ADD AR1, AR3 ; |1764| 
        AND AR3, AR2 ; |1764| 
        SUB AR2, AR1 ; |1764| 
        MOV AR1, *SP(#6) ; |1764| 
	.dwpsn	file "src/csl_usb.c",line 1765,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#16) ; |1765| 
	.dwpsn	file "src/csl_usb.c",line 1767,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), AC0 ; |1767| 
        BCC $C$L113,AC0 != #0 ; |1767| 
                                        ; branchcc occurs ; |1767| 
	.dwpsn	file "src/csl_usb.c",line 1770,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1770| 
        MOV port(*AR3(T0)), AR1 ; |1770| 
        AND #0xfff0, AR1, AC0 ; |1770| 
        MOV AC0, port(*AR3(T0)) ; |1770| 
	.dwpsn	file "src/csl_usb.c",line 1774,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1774| 
        MOV port(*AR3(T0)), AR1 ; |1774| 
        AND #0xfff0, AR1, AC0 ; |1774| 
        MOV AC0, port(*AR3(T0)) ; |1774| 
	.dwpsn	file "src/csl_usb.c",line 1779,column 5,is_stmt
        MOV #1042, T0 ; |1779| 
        MOV *(#_usbRegisters), AR3 ; |1779| 
        MOV port(*AR3(T0)), AR1 ; |1779| 
        BCLR @#8, AR1 ; |1779| 
        BSET @#8, AR1 ; |1779| 
        MOV AR1, port(*AR3(T0)) ; |1779| 
	.dwpsn	file "src/csl_usb.c",line 1783,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1783| 
        MOV port(*AR3(T0)), AR1 ; |1783| 
        BCLR @#2, AR1 ; |1783| 
        MOV AR1, port(*AR3(T0)) ; |1783| 
	.dwpsn	file "src/csl_usb.c",line 1786,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1786| 
        MOV port(*AR3(T0)), AR1 ; |1786| 
        BCLR @#4, AR1 ; |1786| 
        MOV AR1, port(*AR3(T0)) ; |1786| 
	.dwpsn	file "src/csl_usb.c",line 1788,column 4,is_stmt
        B $C$L115 ; |1788| 
                                        ; branch occurs ; |1788| 
$C$L113:    
	.dwpsn	file "src/csl_usb.c",line 1791,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3, AR1 ; |1791| 
||      MOV #8, AR2

        CMP AR1 <= AR2, TC1 ; |1791| 
        BCC $C$L114,TC1 ; |1791| 
                                        ; branchcc occurs ; |1791| 
	.dwpsn	file "src/csl_usb.c",line 1793,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1793| 
        MOV port(*AR3(T0)), AR1 ; |1793| 
        AND #0xfff0, AR1, AC0 ; |1793| 
        MOV AC0, port(*AR3(T0)) ; |1793| 
	.dwpsn	file "src/csl_usb.c",line 1797,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1797| 
        MOV port(*AR3(T0)), AR1 ; |1797| 
        AND #0xfff0, AR1, AR2 ; |1797| 
        MOV *SP(#6), AR1 ; |1797| 
        AND #0x000f, AR1, AR1 ; |1797| 
        OR AR2, AR1 ; |1797| 
        MOV AR1, port(*AR3(T0)) ; |1797| 
	.dwpsn	file "src/csl_usb.c",line 1802,column 6,is_stmt
        MOV #1042, T0 ; |1802| 
        MOV *(#_usbRegisters), AR3 ; |1802| 
        MOV port(*AR3(T0)), AR1 ; |1802| 
        BCLR @#3, AR1 ; |1802| 
        BSET @#3, AR1 ; |1802| 
        MOV AR1, port(*AR3(T0)) ; |1802| 
	.dwpsn	file "src/csl_usb.c",line 1806,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1806| 
        MOV port(*AR3(T0)), AR1 ; |1806| 
        BCLR @#6, AR1 ; |1806| 
        BSET @#6, AR1 ; |1806| 
        MOV AR1, port(*AR3(T0)) ; |1806| 
	.dwpsn	file "src/csl_usb.c",line 1810,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1810| 
        MOV port(*AR3(T0)), AR1 ; |1810| 
        BCLR @#5, AR1 ; |1810| 
        MOV AR1, port(*AR3(T0)) ; |1810| 
	.dwpsn	file "src/csl_usb.c",line 1813,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1813| 
        MOV port(*AR3(T0)), AR1 ; |1813| 
        BCLR @#4, AR1 ; |1813| 
        MOV AR1, port(*AR3(T0)) ; |1813| 
	.dwpsn	file "src/csl_usb.c",line 1815,column 5,is_stmt
        B $C$L115 ; |1815| 
                                        ; branch occurs ; |1815| 
$C$L114:    
	.dwpsn	file "src/csl_usb.c",line 1818,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1818| 
        MOV port(*AR3(T0)), AR1 ; |1818| 
        AND #0xfff0, AR1, AC0 ; |1818| 
        MOV AC0, port(*AR3(T0)) ; |1818| 
	.dwpsn	file "src/csl_usb.c",line 1822,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1822| 
        MOV port(*AR3(T0)), AR1 ; |1822| 
        AND #0xfff0, AR1, AR2 ; |1822| 
        MOV *SP(#6), AR1 ; |1822| 
        AND #0x000f, AR1, AR1 ; |1822| 
        OR AR2, AR1 ; |1822| 
        MOV AR1, port(*AR3(T0)) ; |1822| 
	.dwpsn	file "src/csl_usb.c",line 1827,column 6,is_stmt
        MOV #1046, T0 ; |1827| 
        MOV *(#_usbRegisters), AR3 ; |1827| 
        MOV port(*AR3(T0)), AR1 ; |1827| 
        BCLR @#4, AR1 ; |1827| 
        BSET @#4, AR1 ; |1827| 
        MOV AR1, port(*AR3(T0)) ; |1827| 
	.dwpsn	file "src/csl_usb.c",line 1831,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1831| 
        MOV port(*AR3(T0)), AR1 ; |1831| 
        BCLR @#7, AR1 ; |1831| 
        BSET @#7, AR1 ; |1831| 
        MOV AR1, port(*AR3(T0)) ; |1831| 
	.dwpsn	file "src/csl_usb.c",line 1835,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1835| 
        MOV port(*AR3(T0)), AR1 ; |1835| 
        BCLR @#6, AR1 ; |1835| 
        MOV AR1, port(*AR3(T0)) ; |1835| 
	.dwpsn	file "src/csl_usb.c",line 1838,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1838| 
        MOV port(*AR3(T0)), AR1 ; |1838| 
        BCLR @#5, AR1 ; |1838| 
        MOV AR1, port(*AR3(T0)) ; |1838| 
$C$L115:    
	.dwpsn	file "src/csl_usb.c",line 1844,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1844| 
        MOV #1038, T0 ; |1844| 
        MOV *SP(#7), AR1 ; |1844| 
        MOV AR1, port(*AR3(T0)) ; |1844| 
	.dwpsn	file "src/csl_usb.c",line 1845,column 3,is_stmt
        B $C$L118 ; |1845| 
                                        ; branch occurs ; |1845| 
$C$L116:    
	.dwpsn	file "src/csl_usb.c",line 1848,column 4,is_stmt
        MOV #-6, *SP(#2) ; |1848| 
	.dwpsn	file "src/csl_usb.c",line 1850,column 2,is_stmt
        B $C$L118 ; |1850| 
                                        ; branch occurs ; |1850| 
$C$L117:    
	.dwpsn	file "src/csl_usb.c",line 1853,column 3,is_stmt
        MOV #-5, *SP(#2) ; |1853| 
$C$L118:    
	.dwpsn	file "src/csl_usb.c",line 1856,column 2,is_stmt
        MOV *SP(#2), T0 ; |1856| 
	.dwpsn	file "src/csl_usb.c",line 1857,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$208, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x741)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text"
	.global	_USB_getEndptStall

$C$DW$217	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEndptStall")
	.dwattr $C$DW$217, DW_AT_low_pc(_USB_getEndptStall)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_USB_getEndptStall")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$217, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x772)
	.dwattr $C$DW$217, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 1908,column 1,is_stmt,address _USB_getEndptStall

	.dwfde $C$DW$CIE, _USB_getEndptStall
$C$DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg17]
$C$DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: USB_getEndptStall                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getEndptStall:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("fStalled")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1913,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1913| 
	.dwpsn	file "src/csl_usb.c",line 1914,column 2,is_stmt
        MOV #0, *SP(#6) ; |1914| 
	.dwpsn	file "src/csl_usb.c",line 1915,column 2,is_stmt
        MOV #0, AC0 ; |1915| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1917,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L120,AC0 == #0 ; |1917| 
                                        ; branchcc occurs ; |1917| 
	.dwpsn	file "src/csl_usb.c",line 1919,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 1921,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1921| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |1921| 
||      NOT AR2, AR2 ; |1921| 

        BFXTR #0xe000, AC0, AR3 ; |1921| 
        ADD AR1, AR3 ; |1921| 
        AND AR3, AR2 ; |1921| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |1921| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |1921| 
        MOV AC0, AR1 ; |1921| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |1921| 

	.dwpsn	file "src/csl_usb.c",line 1923,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L119,AC0 == #0 ; |1923| 
                                        ; branchcc occurs ; |1923| 
	.dwpsn	file "src/csl_usb.c",line 1925,column 4,is_stmt

        MOV dbl(*AR3), AC1 ; |1925| 
||      MOV #10, AC0 ; |1925| 

        CMPU AC1 >= AC0, TC1 ; |1925| 
        BCC $C$L121,TC1 ; |1925| 
                                        ; branchcc occurs ; |1925| 
	.dwpsn	file "src/csl_usb.c",line 1927,column 5,is_stmt
        MOV *AR3(#16), AR1 ; |1927| 
        MOV AR1, *SP(#6) ; |1927| 
	.dwpsn	file "src/csl_usb.c",line 1929,column 3,is_stmt
        B $C$L121 ; |1929| 
                                        ; branch occurs ; |1929| 
$C$L119:    
	.dwpsn	file "src/csl_usb.c",line 1932,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-6, *AR3 ; |1932| 
	.dwpsn	file "src/csl_usb.c",line 1934,column 2,is_stmt
        B $C$L121 ; |1934| 
                                        ; branch occurs ; |1934| 
$C$L120:    
	.dwpsn	file "src/csl_usb.c",line 1937,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |1937| 
$C$L121:    
	.dwpsn	file "src/csl_usb.c",line 1940,column 2,is_stmt
        MOV *SP(#6), T0 ; |1940| 
	.dwpsn	file "src/csl_usb.c",line 1941,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$217, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x795)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text"
	.global	_USB_epNumToHandle

$C$DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_epNumToHandle")
	.dwattr $C$DW$226, DW_AT_low_pc(_USB_epNumToHandle)
	.dwattr $C$DW$226, DW_AT_high_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_USB_epNumToHandle")
	.dwattr $C$DW$226, DW_AT_external
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$226, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0x7c4)
	.dwattr $C$DW$226, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$226, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_usb.c",line 1990,column 1,is_stmt,address _USB_epNumToHandle

	.dwfde $C$DW$CIE, _USB_epNumToHandle
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg17]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("endpt")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_endpt")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_epNumToHandle                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_epNumToHandle:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("endpt")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_endpt")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("epHandle")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_epHandle")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("epNum")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("fValidEp")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_fValidEp")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#2) ; |1990| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 1996,column 2,is_stmt
        MOV #0, *SP(#8) ; |1996| 
	.dwpsn	file "src/csl_usb.c",line 1997,column 2,is_stmt
        MOV #0, AC0 ; |1997| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 1998,column 2,is_stmt
        MOV #0, *SP(#6) ; |1998| 
	.dwpsn	file "src/csl_usb.c",line 2000,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L140,AC0 == #0 ; |2000| 
                                        ; branchcc occurs ; |2000| 
	.dwpsn	file "src/csl_usb.c",line 2002,column 6,is_stmt
        MOV *AR3, AR1 ; |2002| 
        BCC $C$L140,AR1 != #0 ; |2002| 
                                        ; branchcc occurs ; |2002| 
	.dwpsn	file "src/csl_usb.c",line 2004,column 4,is_stmt
        BTST #7, *SP(#2), TC1 ; |2004| 
        BCC $C$L134,!TC1 ; |2004| 
                                        ; branchcc occurs ; |2004| 
	.dwpsn	file "src/csl_usb.c",line 2006,column 5,is_stmt
        AND #0xff7f, *SP(#2) ; |2006| 
	.dwpsn	file "src/csl_usb.c",line 2008,column 5,is_stmt
        B $C$L127 ; |2008| 
                                        ; branch occurs ; |2008| 
$C$L122:    
	.dwpsn	file "src/csl_usb.c",line 2011,column 7,is_stmt
        MOV #8, *SP(#7) ; |2011| 
	.dwpsn	file "src/csl_usb.c",line 2012,column 7,is_stmt
        MOV #1, *SP(#8) ; |2012| 
	.dwpsn	file "src/csl_usb.c",line 2013,column 12,is_stmt
        B $C$L136 ; |2013| 
                                        ; branch occurs ; |2013| 
$C$L123:    
	.dwpsn	file "src/csl_usb.c",line 2016,column 7,is_stmt
        MOV #9, *SP(#7) ; |2016| 
	.dwpsn	file "src/csl_usb.c",line 2017,column 7,is_stmt
        MOV #1, *SP(#8) ; |2017| 
	.dwpsn	file "src/csl_usb.c",line 2018,column 12,is_stmt
        B $C$L136 ; |2018| 
                                        ; branch occurs ; |2018| 
$C$L124:    
	.dwpsn	file "src/csl_usb.c",line 2021,column 7,is_stmt
        MOV #10, *SP(#7) ; |2021| 
	.dwpsn	file "src/csl_usb.c",line 2022,column 7,is_stmt
        MOV #1, *SP(#8) ; |2022| 
	.dwpsn	file "src/csl_usb.c",line 2023,column 12,is_stmt
        B $C$L136 ; |2023| 
                                        ; branch occurs ; |2023| 
$C$L125:    
	.dwpsn	file "src/csl_usb.c",line 2026,column 7,is_stmt
        MOV #11, *SP(#7) ; |2026| 
	.dwpsn	file "src/csl_usb.c",line 2027,column 7,is_stmt
        MOV #1, *SP(#8) ; |2027| 
	.dwpsn	file "src/csl_usb.c",line 2028,column 12,is_stmt
        B $C$L136 ; |2028| 
                                        ; branch occurs ; |2028| 
$C$L126:    
	.dwpsn	file "src/csl_usb.c",line 2031,column 7,is_stmt
        MOV #12, *SP(#7) ; |2031| 
	.dwpsn	file "src/csl_usb.c",line 2032,column 7,is_stmt
        MOV #1, *SP(#8) ; |2032| 
	.dwpsn	file "src/csl_usb.c",line 2033,column 12,is_stmt
        B $C$L136 ; |2033| 
                                        ; branch occurs ; |2033| 
$C$L127:    
	.dwpsn	file "src/csl_usb.c",line 2008,column 5,is_stmt

        MOV *SP(#2), AR1 ; |2008| 
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |2008| 
        BCC $C$L128,TC1 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        CMP AR1 == AR2, TC1 ; |2008| 
        BCC $C$L124,TC1 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        BCC $C$L122,AR1 == #0 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |2008| 
        BCC $C$L123,TC1 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        B $C$L136 ; |2008| 
                                        ; branch occurs ; |2008| 
$C$L128:    
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |2008| 
        BCC $C$L125,TC1 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        MOV #4, AR2
        CMPU AR1 == AR2, TC1 ; |2008| 
        BCC $C$L126,TC1 ; |2008| 
                                        ; branchcc occurs ; |2008| 
        B $C$L136 ; |2008| 
                                        ; branch occurs ; |2008| 
$C$L129:    
	.dwpsn	file "src/csl_usb.c",line 2044,column 7,is_stmt
        MOV #0, *SP(#7) ; |2044| 
	.dwpsn	file "src/csl_usb.c",line 2045,column 7,is_stmt
        MOV #1, *SP(#8) ; |2045| 
	.dwpsn	file "src/csl_usb.c",line 2046,column 12,is_stmt
        B $C$L136 ; |2046| 
                                        ; branch occurs ; |2046| 
$C$L130:    
	.dwpsn	file "src/csl_usb.c",line 2049,column 7,is_stmt
        MOV #1, *SP(#7) ; |2049| 
	.dwpsn	file "src/csl_usb.c",line 2050,column 7,is_stmt
        MOV #1, *SP(#8) ; |2050| 
	.dwpsn	file "src/csl_usb.c",line 2051,column 12,is_stmt
        B $C$L136 ; |2051| 
                                        ; branch occurs ; |2051| 
$C$L131:    
	.dwpsn	file "src/csl_usb.c",line 2054,column 7,is_stmt
        MOV #2, *SP(#7) ; |2054| 
	.dwpsn	file "src/csl_usb.c",line 2055,column 7,is_stmt
        MOV #1, *SP(#8) ; |2055| 
	.dwpsn	file "src/csl_usb.c",line 2056,column 12,is_stmt
        B $C$L136 ; |2056| 
                                        ; branch occurs ; |2056| 
$C$L132:    
	.dwpsn	file "src/csl_usb.c",line 2059,column 7,is_stmt
        MOV #3, *SP(#7) ; |2059| 
	.dwpsn	file "src/csl_usb.c",line 2060,column 7,is_stmt
        MOV #1, *SP(#8) ; |2060| 
	.dwpsn	file "src/csl_usb.c",line 2061,column 12,is_stmt
        B $C$L136 ; |2061| 
                                        ; branch occurs ; |2061| 
$C$L133:    
	.dwpsn	file "src/csl_usb.c",line 2064,column 7,is_stmt
        MOV #4, *SP(#7) ; |2064| 
	.dwpsn	file "src/csl_usb.c",line 2065,column 7,is_stmt
        MOV #1, *SP(#8) ; |2065| 
	.dwpsn	file "src/csl_usb.c",line 2066,column 12,is_stmt
        B $C$L136 ; |2066| 
                                        ; branch occurs ; |2066| 
$C$L134:    
	.dwpsn	file "src/csl_usb.c",line 2041,column 5,is_stmt

        MOV *SP(#2), AR1 ; |2041| 
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |2041| 
        BCC $C$L135,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
        CMP AR1 == AR2, TC1 ; |2041| 
        BCC $C$L131,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
        BCC $C$L129,AR1 == #0 ; |2041| 
                                        ; branchcc occurs ; |2041| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |2041| 
        BCC $C$L130,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
        B $C$L136 ; |2041| 
                                        ; branch occurs ; |2041| 
$C$L135:    
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |2041| 
        BCC $C$L132,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
        MOV #4, AR2
        CMPU AR1 == AR2, TC1 ; |2041| 
        BCC $C$L133,TC1 ; |2041| 
                                        ; branchcc occurs ; |2041| 
$C$L136:    
	.dwpsn	file "src/csl_usb.c",line 2073,column 4,is_stmt
        CMP *SP(#8) == #1, TC1 ; |2073| 
        BCC $C$L137,TC1 ; |2073| 
                                        ; branchcc occurs ; |2073| 
	.dwpsn	file "src/csl_usb.c",line 2075,column 5,is_stmt
        AMOV #0, XAR0 ; |2075| 
        B $C$L141 ; |2075| 
                                        ; branch occurs ; |2075| 
$C$L137:    
	.dwpsn	file "src/csl_usb.c",line 2078,column 8,is_stmt
        MOV #0, *SP(#6) ; |2078| 
	.dwpsn	file "src/csl_usb.c",line 2078,column 20,is_stmt

        MOV *SP(#6), AR1 ; |2078| 
||      MOV #11, AR2

        CMPU AR1 > AR2, TC1 ; |2078| 
        BCC $C$L140,TC1 ; |2078| 
                                        ; branchcc occurs ; |2078| 
$C$L138:    
$C$DW$L$_USB_epNumToHandle$37$B:
	.dwpsn	file "src/csl_usb.c",line 2080,column 5,is_stmt
        MOV *SP(#6), T0 ; |2080| 
        SFTL T0, #1 ; |2080| 
        AMOV #_gUsbEpHandle, XAR3 ; |2080| 
        MOV dbl(*AR3(T0)), XAR3
        MOV *SP(#7), AR2 ; |2080| 
        MOV *AR3, AR1 ; |2080| 
        CMPU AR2 != AR1, TC1 ; |2080| 
        BCC $C$L139,TC1 ; |2080| 
                                        ; branchcc occurs ; |2080| 
$C$DW$L$_USB_epNumToHandle$37$E:
	.dwpsn	file "src/csl_usb.c",line 2082,column 6,is_stmt
        MOV *SP(#6), T0 ; |2082| 
        SFTL T0, #1 ; |2082| 
        AMOV #_gUsbEpHandle, XAR3 ; |2082| 
        MOV dbl(*AR3(T0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 2083,column 6,is_stmt
        B $C$L140 ; |2083| 
                                        ; branch occurs ; |2083| 
$C$L139:    
$C$DW$L$_USB_epNumToHandle$39$B:
	.dwpsn	file "src/csl_usb.c",line 2078,column 60,is_stmt
        ADD #1, *SP(#6) ; |2078| 
	.dwpsn	file "src/csl_usb.c",line 2078,column 20,is_stmt

        MOV *SP(#6), AR1 ; |2078| 
||      MOV #11, AR2

        CMPU AR1 <= AR2, TC1 ; |2078| 
        BCC $C$L138,TC1 ; |2078| 
                                        ; branchcc occurs ; |2078| 
$C$DW$L$_USB_epNumToHandle$39$E:
$C$L140:    
	.dwpsn	file "src/csl_usb.c",line 2089,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$L141:    
	.dwpsn	file "src/csl_usb.c",line 2090,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$236	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$236, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L138:1:1714639456")
	.dwattr $C$DW$236, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x81e)
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x825)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_USB_epNumToHandle$37$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_USB_epNumToHandle$37$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_USB_epNumToHandle$39$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_USB_epNumToHandle$39$E)
	.dwendtag $C$DW$236

	.dwattr $C$DW$226, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$226, DW_AT_TI_end_line(0x82a)
	.dwattr $C$DW$226, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$226

	.sect	".text"
	.global	_USB_abortTransaction

$C$DW$239	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortTransaction")
	.dwattr $C$DW$239, DW_AT_low_pc(_USB_abortTransaction)
	.dwattr $C$DW$239, DW_AT_high_pc(0x00)
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_USB_abortTransaction")
	.dwattr $C$DW$239, DW_AT_external
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$239, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$239, DW_AT_TI_begin_line(0x859)
	.dwattr $C$DW$239, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$239, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_usb.c",line 2138,column 1,is_stmt,address _USB_abortTransaction

	.dwfde $C$DW$CIE, _USB_abortTransaction
$C$DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_abortTransaction                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_abortTransaction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$245	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$246	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2145,column 2,is_stmt
        MOV #0, *SP(#4) ; |2145| 
	.dwpsn	file "src/csl_usb.c",line 2146,column 2,is_stmt
        MOV #0, AC0 ; |2146| 
        MOV AC0, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 2148,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L147,AC0 == #0 ; |2148| 
                                        ; branchcc occurs ; |2148| 
	.dwpsn	file "src/csl_usb.c",line 2150,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_usb.c",line 2152,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |2152| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |2152| 
||      NOT AR2, AR2 ; |2152| 

        BFXTR #0xe000, AC0, AR3 ; |2152| 
        ADD AR1, AR3 ; |2152| 
        AND AR3, AR2 ; |2152| 
        MOV dbl(*SP(#8)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |2152| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |2152| 
        MOV AC0, AR1 ; |2152| 

        MOV XAR3, dbl(*SP(#2))
||      AADD AR1, AR3 ; |2152| 

	.dwpsn	file "src/csl_usb.c",line 2154,column 3,is_stmt
        MOV XAR3, AC0
        BCC $C$L146,AC0 == #0 ; |2154| 
                                        ; branchcc occurs ; |2154| 
        CMP *AR3(short(#6)) == #1, TC1 ; |2154| 
        BCC $C$L146,!TC1 ; |2154| 
                                        ; branchcc occurs ; |2154| 
	.dwpsn	file "src/csl_usb.c",line 2156,column 4,is_stmt
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, AC0
        BCC $C$L142,AC0 == #0 ; |2156| 
                                        ; branchcc occurs ; |2156| 
	.dwpsn	file "src/csl_usb.c",line 2158,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        MOV #1, *AR3(#12) ; |2158| 
	.dwpsn	file "src/csl_usb.c",line 2159,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, AC0 ; |2159| 
        MOV AC0, dbl(*AR3(#10))
$C$L142:    
	.dwpsn	file "src/csl_usb.c",line 2163,column 4,is_stmt
        MOV #1038, T0 ; |2163| 
        MOV *(#_usbRegisters), AR3 ; |2163| 
        MOV port(*AR3(T0)), AR1 ; |2163| 
        MOV AR1, *SP(#5) ; |2163| 
	.dwpsn	file "src/csl_usb.c",line 2166,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |2166| 
        AND #0xfff0, AR1, AC0 ; |2166| 
        MOV AC0, port(*AR3(T0)) ; |2166| 
	.dwpsn	file "src/csl_usb.c",line 2170,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |2170| 
        BCC $C$L143,AC0 != #0 ; |2170| 
                                        ; branchcc occurs ; |2170| 
	.dwpsn	file "src/csl_usb.c",line 2173,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2173| 
        MOV port(*AR3(T0)), AR1 ; |2173| 
        AND #0xfff0, AR1, AC0 ; |2173| 
        MOV AC0, port(*AR3(T0)) ; |2173| 
	.dwpsn	file "src/csl_usb.c",line 2177,column 5,is_stmt
        MOV #1042, T0 ; |2177| 
        MOV *(#_usbRegisters), AR3 ; |2177| 
        MOV port(*AR3(T0)), AR1 ; |2177| 
        BCLR @#8, AR1 ; |2177| 
        BSET @#8, AR1 ; |2177| 
        MOV AR1, port(*AR3(T0)) ; |2177| 
	.dwpsn	file "src/csl_usb.c",line 2179,column 4,is_stmt
        B $C$L145 ; |2179| 
                                        ; branch occurs ; |2179| 
$C$L143:    
	.dwpsn	file "src/csl_usb.c",line 2182,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3, AR1 ; |2182| 
||      MOV #8, AR2

        CMP AR1 <= AR2, TC1 ; |2182| 
        BCC $C$L144,TC1 ; |2182| 
                                        ; branchcc occurs ; |2182| 
	.dwpsn	file "src/csl_usb.c",line 2185,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2185| 
        MOV port(*AR3(T0)), AR1 ; |2185| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |2185| 
        MOV *(#_usbRegisters), AR3 ; |2185| 
        AND #0xfff0, AR1, AC1 ; |2185| 
        AND #0x000f, AC0, AC0 ; |2185| 
        OR AC1, AC0 ; |2185| 
        MOV AC0, port(*AR3(T0)) ; |2185| 
	.dwpsn	file "src/csl_usb.c",line 2189,column 6,is_stmt
        MOV #1042, T0 ; |2189| 
        MOV *(#_usbRegisters), AR3 ; |2189| 
        MOV port(*AR3(T0)), AR1 ; |2189| 
        MOV AR1, *SP(#6) ; |2189| 
	.dwpsn	file "src/csl_usb.c",line 2191,column 6,is_stmt
        OR #0x0008, *SP(#6) ; |2191| 
	.dwpsn	file "src/csl_usb.c",line 2192,column 6,is_stmt
        AND #0xfffc, *SP(#6) ; |2192| 
	.dwpsn	file "src/csl_usb.c",line 2194,column 6,is_stmt
        MOV *SP(#6), AR1 ; |2194| 
        MOV AR1, port(*AR3(T0)) ; |2194| 
	.dwpsn	file "src/csl_usb.c",line 2195,column 5,is_stmt
        B $C$L145 ; |2195| 
                                        ; branch occurs ; |2195| 
$C$L144:    
	.dwpsn	file "src/csl_usb.c",line 2199,column 6,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2199| 
        MOV port(*AR3(T0)), AR1 ; |2199| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC0 ; |2199| 
        MOV *(#_usbRegisters), AR3 ; |2199| 
        AND #0xfff0, AR1, AC1 ; |2199| 
        AND #0x000f, AC0, AC0 ; |2199| 
        OR AC1, AC0 ; |2199| 
        MOV AC0, port(*AR3(T0)) ; |2199| 
	.dwpsn	file "src/csl_usb.c",line 2203,column 6,is_stmt
        MOV #1046, T0 ; |2203| 
        MOV *(#_usbRegisters), AR3 ; |2203| 
        MOV port(*AR3(T0)), AR1 ; |2203| 
        BCLR @#4, AR1 ; |2203| 
        BSET @#4, AR1 ; |2203| 
        MOV AR1, port(*AR3(T0)) ; |2203| 
$C$L145:    
	.dwpsn	file "src/csl_usb.c",line 2209,column 4,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2209| 
        MOV #1038, T0 ; |2209| 
        MOV *SP(#5), AR1 ; |2209| 
        MOV AR1, port(*AR3(T0)) ; |2209| 
	.dwpsn	file "src/csl_usb.c",line 2210,column 3,is_stmt
        B $C$L148 ; |2210| 
                                        ; branch occurs ; |2210| 
$C$L146:    
	.dwpsn	file "src/csl_usb.c",line 2213,column 4,is_stmt
        MOV #-6, *SP(#4) ; |2213| 
	.dwpsn	file "src/csl_usb.c",line 2215,column 2,is_stmt
        B $C$L148 ; |2215| 
                                        ; branch occurs ; |2215| 
$C$L147:    
	.dwpsn	file "src/csl_usb.c",line 2218,column 3,is_stmt
        MOV #-5, *SP(#4) ; |2218| 
$C$L148:    
	.dwpsn	file "src/csl_usb.c",line 2221,column 2,is_stmt
        MOV *SP(#4), T0 ; |2221| 
	.dwpsn	file "src/csl_usb.c",line 2222,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$239, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x8ae)
	.dwattr $C$DW$239, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$239

	.sect	".text"
	.global	_USB_abortAllTransaction

$C$DW$248	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortAllTransaction")
	.dwattr $C$DW$248, DW_AT_low_pc(_USB_abortAllTransaction)
	.dwattr $C$DW$248, DW_AT_high_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_USB_abortAllTransaction")
	.dwattr $C$DW$248, DW_AT_external
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$248, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$248, DW_AT_TI_begin_line(0x8dc)
	.dwattr $C$DW$248, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$248, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_usb.c",line 2269,column 1,is_stmt,address _USB_abortAllTransaction

	.dwfde $C$DW$CIE, _USB_abortAllTransaction
$C$DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_abortAllTransaction                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_abortAllTransaction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("epHandle")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_epHandle")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("endPoint")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_endPoint")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2274,column 2,is_stmt
        MOV #-6, *SP(#4) ; |2274| 
	.dwpsn	file "src/csl_usb.c",line 2276,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L151,AC0 == #0 ; |2276| 
                                        ; branchcc occurs ; |2276| 
	.dwpsn	file "src/csl_usb.c",line 2278,column 6,is_stmt
        MOV *AR3, AR1 ; |2278| 
        BCC $C$L151,AR1 != #0 ; |2278| 
                                        ; branchcc occurs ; |2278| 
	.dwpsn	file "src/csl_usb.c",line 2280,column 8,is_stmt
        MOV #0, *SP(#5) ; |2280| 
	.dwpsn	file "src/csl_usb.c",line 2280,column 22,is_stmt

        MOV *SP(#5), AR1 ; |2280| 
||      MOV #10, AR2

        CMPU AR1 >= AR2, TC1 ; |2280| 
        BCC $C$L151,TC1 ; |2280| 
                                        ; branchcc occurs ; |2280| 
$C$L149:    
$C$DW$L$_USB_abortAllTransaction$4$B:
	.dwpsn	file "src/csl_usb.c",line 2282,column 5,is_stmt
        MOV *SP(#5), T0 ; |2282| 
        SFTL T0, #1 ; |2282| 
        AMOV #_gUsbEpHandle, XAR3 ; |2282| 
        MOV dbl(*AR3(T0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 2283,column 5,is_stmt
        MOV XAR3, AC0
        BCC $C$L150,AC0 == #0 ; |2283| 
                                        ; branchcc occurs ; |2283| 
$C$DW$L$_USB_abortAllTransaction$4$E:
$C$DW$L$_USB_abortAllTransaction$5$B:
	.dwpsn	file "src/csl_usb.c",line 2285,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_USB_abortTransaction")
	.dwattr $C$DW$254, DW_AT_TI_call
        CALL #_USB_abortTransaction ; |2285| 
                                        ; call occurs [#_USB_abortTransaction] ; |2285| 
        MOV T0, *SP(#4) ; |2285| 
	.dwpsn	file "src/csl_usb.c",line 2286,column 6,is_stmt
        MOV T0, AR1
        BCC $C$L151,AR1 != #0 ; |2286| 
                                        ; branchcc occurs ; |2286| 
$C$DW$L$_USB_abortAllTransaction$5$E:
$C$DW$L$_USB_abortAllTransaction$6$B:
	.dwpsn	file "src/csl_usb.c",line 2288,column 7,is_stmt
$C$DW$L$_USB_abortAllTransaction$6$E:
$C$L150:    
$C$DW$L$_USB_abortAllTransaction$7$B:
	.dwpsn	file "src/csl_usb.c",line 2280,column 57,is_stmt
        ADD #1, *SP(#5) ; |2280| 
	.dwpsn	file "src/csl_usb.c",line 2280,column 22,is_stmt

        MOV *SP(#5), AR1 ; |2280| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |2280| 
        BCC $C$L149,TC1 ; |2280| 
                                        ; branchcc occurs ; |2280| 
$C$DW$L$_USB_abortAllTransaction$7$E:
$C$L151:    
	.dwpsn	file "src/csl_usb.c",line 2295,column 2,is_stmt
        MOV *SP(#4), T0 ; |2295| 
	.dwpsn	file "src/csl_usb.c",line 2296,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$256	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$256, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L149:1:1714639456")
	.dwattr $C$DW$256, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x8e8)
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x8f3)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_USB_abortAllTransaction$4$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_USB_abortAllTransaction$4$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_USB_abortAllTransaction$5$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_USB_abortAllTransaction$5$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_USB_abortAllTransaction$6$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_USB_abortAllTransaction$6$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_USB_abortAllTransaction$7$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_USB_abortAllTransaction$7$E)
	.dwendtag $C$DW$256

	.dwattr $C$DW$248, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$248, DW_AT_TI_end_line(0x8f8)
	.dwattr $C$DW$248, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$248

	.sect	".text"
	.global	_USB_connectDev

$C$DW$261	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_connectDev")
	.dwattr $C$DW$261, DW_AT_low_pc(_USB_connectDev)
	.dwattr $C$DW$261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_USB_connectDev")
	.dwattr $C$DW$261, DW_AT_external
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$261, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$261, DW_AT_TI_begin_line(0x91f)
	.dwattr $C$DW$261, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$261, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2336,column 1,is_stmt,address _USB_connectDev

	.dwfde $C$DW$CIE, _USB_connectDev
$C$DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_connectDev                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_connectDev:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2339,column 2,is_stmt
        MOV #-6, *SP(#2) ; |2339| 
	.dwpsn	file "src/csl_usb.c",line 2341,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L154,AC0 == #0 ; |2341| 
                                        ; branchcc occurs ; |2341| 
	.dwpsn	file "src/csl_usb.c",line 2343,column 6,is_stmt
        B $C$L153 ; |2343| 
                                        ; branch occurs ; |2343| 
$C$L152:    
	.dwpsn	file "src/csl_usb.c",line 2346,column 5,is_stmt
        MOV #1025, T0 ; |2346| 
        MOV *(#_usbRegisters), AR3 ; |2346| 
        MOV port(*AR3(T0)), AR1 ; |2346| 
        BCLR @#14, AR1 ; |2346| 
        BSET @#14, AR1 ; |2346| 
        MOV AR1, port(*AR3(T0)) ; |2346| 
	.dwpsn	file "src/csl_usb.c",line 2349,column 5,is_stmt
        MOV #0, *SP(#2) ; |2349| 
	.dwpsn	file "src/csl_usb.c",line 2350,column 13,is_stmt
        B $C$L154 ; |2350| 
                                        ; branch occurs ; |2350| 
$C$L153:    
	.dwpsn	file "src/csl_usb.c",line 2343,column 6,is_stmt
        MOV *AR3, AR1 ; |2343| 
        BCC $C$L152,AR1 == #0 ; |2343| 
                                        ; branchcc occurs ; |2343| 
$C$L154:    
	.dwpsn	file "src/csl_usb.c",line 2360,column 2,is_stmt
        MOV *SP(#2), T0 ; |2360| 
	.dwpsn	file "src/csl_usb.c",line 2361,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$261, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$261, DW_AT_TI_end_line(0x939)
	.dwattr $C$DW$261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$261

	.sect	".text"
	.global	_USB_disconnectDev

$C$DW$266	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_disconnectDev")
	.dwattr $C$DW$266, DW_AT_low_pc(_USB_disconnectDev)
	.dwattr $C$DW$266, DW_AT_high_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_USB_disconnectDev")
	.dwattr $C$DW$266, DW_AT_external
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$266, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$266, DW_AT_TI_begin_line(0x962)
	.dwattr $C$DW$266, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$266, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2403,column 1,is_stmt,address _USB_disconnectDev

	.dwfde $C$DW$CIE, _USB_disconnectDev
$C$DW$267	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_disconnectDev                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_disconnectDev:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2406,column 5,is_stmt
        MOV #-6, *SP(#2) ; |2406| 
	.dwpsn	file "src/csl_usb.c",line 2408,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L157,AC0 == #0 ; |2408| 
                                        ; branchcc occurs ; |2408| 
	.dwpsn	file "src/csl_usb.c",line 2410,column 6,is_stmt
        B $C$L156 ; |2410| 
                                        ; branch occurs ; |2410| 
$C$L155:    
	.dwpsn	file "src/csl_usb.c",line 2413,column 5,is_stmt
        MOV #1025, T0 ; |2413| 
        MOV *(#_usbRegisters), AR3 ; |2413| 
        MOV port(*AR3(T0)), AR1 ; |2413| 
        BCLR @#14, AR1 ; |2413| 
        MOV AR1, port(*AR3(T0)) ; |2413| 
	.dwpsn	file "src/csl_usb.c",line 2416,column 5,is_stmt
        MOV #0, *SP(#2) ; |2416| 
	.dwpsn	file "src/csl_usb.c",line 2417,column 13,is_stmt
        B $C$L157 ; |2417| 
                                        ; branch occurs ; |2417| 
$C$L156:    
	.dwpsn	file "src/csl_usb.c",line 2410,column 6,is_stmt
        MOV *AR3, AR1 ; |2410| 
        BCC $C$L155,AR1 == #0 ; |2410| 
                                        ; branchcc occurs ; |2410| 
$C$L157:    
	.dwpsn	file "src/csl_usb.c",line 2427,column 2,is_stmt
        MOV *SP(#2), T0 ; |2427| 
	.dwpsn	file "src/csl_usb.c",line 2428,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$266, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$266, DW_AT_TI_end_line(0x97c)
	.dwattr $C$DW$266, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$266

	.sect	".text"
	.global	_USB_setRemoteWakeup

$C$DW$271	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setRemoteWakeup")
	.dwattr $C$DW$271, DW_AT_low_pc(_USB_setRemoteWakeup)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$271, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x9a5)
	.dwattr $C$DW$271, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 2471,column 1,is_stmt,address _USB_setRemoteWakeup

	.dwfde $C$DW$CIE, _USB_setRemoteWakeup
$C$DW$272	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg17]
$C$DW$273	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rmtWkpStat")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_rmtWkpStat")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_setRemoteWakeup                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_setRemoteWakeup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("rmtWkpStat")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_rmtWkpStat")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |2471| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2474,column 5,is_stmt
        MOV #-6, *SP(#3) ; |2474| 
	.dwpsn	file "src/csl_usb.c",line 2476,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L160,AC0 == #0 ; |2476| 
                                        ; branchcc occurs ; |2476| 
	.dwpsn	file "src/csl_usb.c",line 2478,column 6,is_stmt
        B $C$L159 ; |2478| 
                                        ; branch occurs ; |2478| 
$C$L158:    
	.dwpsn	file "src/csl_usb.c",line 2481,column 6,is_stmt
        MOV *SP(#2), AR1 ; |2481| 
        MOV AR1, *AR3(#86) ; |2481| 
	.dwpsn	file "src/csl_usb.c",line 2482,column 5,is_stmt
        MOV #0, *SP(#3) ; |2482| 
	.dwpsn	file "src/csl_usb.c",line 2483,column 13,is_stmt
        B $C$L160 ; |2483| 
                                        ; branch occurs ; |2483| 
$C$L159:    
	.dwpsn	file "src/csl_usb.c",line 2478,column 6,is_stmt
        MOV *AR3, AR1 ; |2478| 
        BCC $C$L158,AR1 == #0 ; |2478| 
                                        ; branchcc occurs ; |2478| 
$C$L160:    
	.dwpsn	file "src/csl_usb.c",line 2493,column 2,is_stmt
        MOV *SP(#3), T0 ; |2493| 
	.dwpsn	file "src/csl_usb.c",line 2494,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$271, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x9be)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text"
	.global	_USB_getRemoteWakeupStat

$C$DW$278	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getRemoteWakeupStat")
	.dwattr $C$DW$278, DW_AT_low_pc(_USB_getRemoteWakeupStat)
	.dwattr $C$DW$278, DW_AT_high_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$278, DW_AT_external
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$278, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x9e6)
	.dwattr $C$DW$278, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$278, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2535,column 1,is_stmt,address _USB_getRemoteWakeupStat

	.dwfde $C$DW$CIE, _USB_getRemoteWakeupStat
$C$DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_getRemoteWakeupStat                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getRemoteWakeupStat:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2536,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#86), T0 ; |2536| 
	.dwpsn	file "src/csl_usb.c",line 2537,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$278, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x9e9)
	.dwattr $C$DW$278, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$278

	.sect	".text"
	.global	_USB_issueRemoteWakeup

$C$DW$282	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_issueRemoteWakeup")
	.dwattr $C$DW$282, DW_AT_low_pc(_USB_issueRemoteWakeup)
	.dwattr $C$DW$282, DW_AT_high_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_USB_issueRemoteWakeup")
	.dwattr $C$DW$282, DW_AT_external
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$282, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$282, DW_AT_TI_begin_line(0xa16)
	.dwattr $C$DW$282, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$282, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 2584,column 1,is_stmt,address _USB_issueRemoteWakeup

	.dwfde $C$DW$CIE, _USB_issueRemoteWakeup
$C$DW$283	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg17]
$C$DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_name("resumeBitVal")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_resumeBitVal")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_issueRemoteWakeup                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_issueRemoteWakeup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("resumeBitVal")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_resumeBitVal")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |2584| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2587,column 5,is_stmt
        MOV #-6, *SP(#3) ; |2587| 
	.dwpsn	file "src/csl_usb.c",line 2589,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L163,AC0 == #0 ; |2589| 
                                        ; branchcc occurs ; |2589| 
	.dwpsn	file "src/csl_usb.c",line 2591,column 6,is_stmt
        B $C$L162 ; |2591| 
                                        ; branch occurs ; |2591| 
$C$L161:    
	.dwpsn	file "src/csl_usb.c",line 2594,column 6,is_stmt
        CMP *AR3(#86) == #1, TC1 ; |2594| 
        BCC $C$L163,!TC1 ; |2594| 
                                        ; branchcc occurs ; |2594| 
	.dwpsn	file "src/csl_usb.c",line 2597,column 6,is_stmt
        MOV #1025, T0 ; |2597| 
        MOV *(#_usbRegisters), AR3 ; |2597| 
        MOV *SP(#2), AC0 ; |2597| 
        SFTL AC0, #10, AC0 ; |2597| 
        AND #0x0400, AC0, AR1 ; |2597| 
        MOV port(*AR3(T0)), AR2 ; |2597| 
        BCLR @#10, AR2 ; |2597| 
        OR AR2, AR1 ; |2597| 
        MOV AR1, port(*AR3(T0)) ; |2597| 
	.dwpsn	file "src/csl_usb.c",line 2600,column 9,is_stmt
        MOV #0, *SP(#3) ; |2600| 
	.dwpsn	file "src/csl_usb.c",line 2602,column 13,is_stmt
        B $C$L163 ; |2602| 
                                        ; branch occurs ; |2602| 
$C$L162:    
	.dwpsn	file "src/csl_usb.c",line 2591,column 6,is_stmt
        MOV *AR3, AR1 ; |2591| 
        BCC $C$L161,AR1 == #0 ; |2591| 
                                        ; branchcc occurs ; |2591| 
$C$L163:    
	.dwpsn	file "src/csl_usb.c",line 2612,column 2,is_stmt
        MOV *SP(#3), T0 ; |2612| 
	.dwpsn	file "src/csl_usb.c",line 2613,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$282, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$282, DW_AT_TI_end_line(0xa35)
	.dwattr $C$DW$282, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$282

	.sect	".text"
	.global	_USB_setDevAddr

$C$DW$289	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setDevAddr")
	.dwattr $C$DW$289, DW_AT_low_pc(_USB_setDevAddr)
	.dwattr $C$DW$289, DW_AT_high_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_USB_setDevAddr")
	.dwattr $C$DW$289, DW_AT_external
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$289, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0xa5e)
	.dwattr $C$DW$289, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$289, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 2656,column 1,is_stmt,address _USB_setDevAddr

	.dwfde $C$DW$CIE, _USB_setDevAddr
$C$DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg17]
$C$DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_setDevAddr                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_setDevAddr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("addr")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |2656| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2659,column 5,is_stmt
        MOV #-6, *SP(#3) ; |2659| 
	.dwpsn	file "src/csl_usb.c",line 2661,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L166,AC0 == #0 ; |2661| 
                                        ; branchcc occurs ; |2661| 
	.dwpsn	file "src/csl_usb.c",line 2663,column 3,is_stmt
        B $C$L165 ; |2663| 
                                        ; branch occurs ; |2663| 
$C$L164:    
	.dwpsn	file "src/csl_usb.c",line 2666,column 5,is_stmt
        MOV #1025, T0 ; |2666| 
        MOV *(#_usbRegisters), AR3 ; |2666| 
        MOV port(*AR3(T0)), AR1 ; |2666| 
        AND #0xff80, AR1, AC0 ; |2666| 
        MOV AC0, port(*AR3(T0)) ; |2666| 
	.dwpsn	file "src/csl_usb.c",line 2668,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2668| 
        MOV port(*AR3(T0)), AR1 ; |2668| 
        AND #0xff80, AR1, AR2 ; |2668| 
        MOV *SP(#2), AR1 ; |2668| 
        AND #0x007f, AR1, AR1 ; |2668| 
        OR AR2, AR1 ; |2668| 
        MOV AR1, port(*AR3(T0)) ; |2668| 
	.dwpsn	file "src/csl_usb.c",line 2671,column 5,is_stmt
        MOV #0, *SP(#3) ; |2671| 
	.dwpsn	file "src/csl_usb.c",line 2672,column 13,is_stmt
        B $C$L166 ; |2672| 
                                        ; branch occurs ; |2672| 
$C$L165:    
	.dwpsn	file "src/csl_usb.c",line 2663,column 3,is_stmt
        MOV *AR3, AR1 ; |2663| 
        BCC $C$L164,AR1 == #0 ; |2663| 
                                        ; branchcc occurs ; |2663| 
$C$L166:    
	.dwpsn	file "src/csl_usb.c",line 2682,column 2,is_stmt
        MOV *SP(#3), T0 ; |2682| 
	.dwpsn	file "src/csl_usb.c",line 2683,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$289, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$289, DW_AT_TI_end_line(0xa7b)
	.dwattr $C$DW$289, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$289

	.sect	".text"
	.global	_USB_getFrameNo

$C$DW$296	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getFrameNo")
	.dwattr $C$DW$296, DW_AT_low_pc(_USB_getFrameNo)
	.dwattr $C$DW$296, DW_AT_high_pc(0x00)
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_USB_getFrameNo")
	.dwattr $C$DW$296, DW_AT_external
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$296, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$296, DW_AT_TI_begin_line(0xaa2)
	.dwattr $C$DW$296, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$296, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2723,column 1,is_stmt,address _USB_getFrameNo

	.dwfde $C$DW$CIE, _USB_getFrameNo
$C$DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_getFrameNo                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,SP,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getFrameNo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$298	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$299	.dwtag  DW_TAG_variable, DW_AT_name("frameNum")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_frameNum")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2726,column 2,is_stmt
        MOV #1037, T0 ; |2726| 
        MOV *(#_usbRegisters), AR3 ; |2726| 
        MOV port(*AR3(T0)), AR1 ; |2726| 
        AND #0x07ff, AR1, AC0 ; |2726| 
        MOV AC0, *SP(#2) ; |2726| 
	.dwpsn	file "src/csl_usb.c",line 2728,column 2,is_stmt
        MOV AC0, T0
	.dwpsn	file "src/csl_usb.c",line 2729,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$296, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$296, DW_AT_TI_end_line(0xaa9)
	.dwattr $C$DW$296, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$296

	.sect	".text"
	.global	_USB_suspendDevice

$C$DW$301	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_suspendDevice")
	.dwattr $C$DW$301, DW_AT_low_pc(_USB_suspendDevice)
	.dwattr $C$DW$301, DW_AT_high_pc(0x00)
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_USB_suspendDevice")
	.dwattr $C$DW$301, DW_AT_external
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$301, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$301, DW_AT_TI_begin_line(0xad4)
	.dwattr $C$DW$301, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$301, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2773,column 1,is_stmt,address _USB_suspendDevice

	.dwfde $C$DW$CIE, _USB_suspendDevice
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_suspendDevice                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_suspendDevice:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2776,column 2,is_stmt
        MOV #-6, *SP(#2) ; |2776| 
	.dwpsn	file "src/csl_usb.c",line 2778,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L169,AC0 == #0 ; |2778| 
                                        ; branchcc occurs ; |2778| 
	.dwpsn	file "src/csl_usb.c",line 2780,column 3,is_stmt
        B $C$L168 ; |2780| 
                                        ; branch occurs ; |2780| 
$C$L167:    
	.dwpsn	file "src/csl_usb.c",line 2784,column 5,is_stmt
        MOV dbl(*AR3(#100)), AC0 ; |2784| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_call
	.dwattr $C$DW$305, DW_AT_TI_indirect

        CALL AC0  ; |2784| 
||      MOV #0, T0

                                        ; call occurs [AC0] ; |2784| 
	.dwpsn	file "src/csl_usb.c",line 2786,column 5,is_stmt
        MOV #1025, T0 ; |2786| 
        MOV *(#_usbRegisters), AR3 ; |2786| 
        MOV port(*AR3(T0)), AR1 ; |2786| 
        BCLR @#8, AR1 ; |2786| 
        BSET @#8, AR1 ; |2786| 
        MOV AR1, port(*AR3(T0)) ; |2786| 
	.dwpsn	file "src/csl_usb.c",line 2789,column 5,is_stmt
        MOV #0, *SP(#2) ; |2789| 
	.dwpsn	file "src/csl_usb.c",line 2790,column 13,is_stmt
        B $C$L169 ; |2790| 
                                        ; branch occurs ; |2790| 
$C$L168:    
	.dwpsn	file "src/csl_usb.c",line 2780,column 3,is_stmt
        MOV *AR3, AR1 ; |2780| 
        BCC $C$L167,AR1 == #0 ; |2780| 
                                        ; branchcc occurs ; |2780| 
$C$L169:    
	.dwpsn	file "src/csl_usb.c",line 2800,column 2,is_stmt
        MOV *SP(#2), T0 ; |2800| 
	.dwpsn	file "src/csl_usb.c",line 2801,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$301, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$301, DW_AT_TI_end_line(0xaf1)
	.dwattr $C$DW$301, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$301

	.sect	".text"
	.global	_USB_selfwakeup

$C$DW$307	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_selfwakeup")
	.dwattr $C$DW$307, DW_AT_low_pc(_USB_selfwakeup)
	.dwattr $C$DW$307, DW_AT_high_pc(0x00)
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_USB_selfwakeup")
	.dwattr $C$DW$307, DW_AT_external
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$307, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$307, DW_AT_TI_begin_line(0xb28)
	.dwattr $C$DW$307, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$307, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 2858,column 1,is_stmt,address _USB_selfwakeup

	.dwfde $C$DW$CIE, _USB_selfwakeup
$C$DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg17]
$C$DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_name("wakeupDelay")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_wakeupDelay")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: USB_selfwakeup                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,M40,SATA,  *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_selfwakeup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$310	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$311	.dwtag  DW_TAG_variable, DW_AT_name("wakeupDelay")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_wakeupDelay")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |2858| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2861,column 2,is_stmt
        MOV #-6, *SP(#4) ; |2861| 
	.dwpsn	file "src/csl_usb.c",line 2863,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L174,AC0 == #0 ; |2863| 
                                        ; branchcc occurs ; |2863| 
	.dwpsn	file "src/csl_usb.c",line 2865,column 3,is_stmt
        B $C$L173 ; |2865| 
                                        ; branch occurs ; |2865| 
$C$L170:    
	.dwpsn	file "src/csl_usb.c",line 2869,column 5,is_stmt
        MOV dbl(*AR3(#102)), AC0 ; |2869| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_TI_call
	.dwattr $C$DW$313, DW_AT_TI_indirect

        CALL AC0  ; |2869| 
||      MOV #0, T0

                                        ; call occurs [AC0] ; |2869| 
	.dwpsn	file "src/csl_usb.c",line 2872,column 5,is_stmt
        MOV #1025, T0 ; |2872| 
        MOV *(#_usbRegisters), AR3 ; |2872| 
        MOV port(*AR3(T0)), AR1 ; |2872| 
        BCLR @#10, AR1 ; |2872| 
        BSET @#10, AR1 ; |2872| 
        MOV AR1, port(*AR3(T0)) ; |2872| 
	.dwpsn	file "src/csl_usb.c",line 2875,column 11,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2875| 
        BCC $C$L172,AC0 == #0 ; |2875| 
                                        ; branchcc occurs ; |2875| 
$C$L171:    
$C$DW$L$_USB_selfwakeup$5$B:
	.dwpsn	file "src/csl_usb.c",line 2875,column 28,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2875| 
        SUB #1, AC0 ; |2875| 
        MOV AC0, dbl(*SP(#2)) ; |2875| 
	.dwpsn	file "src/csl_usb.c",line 2875,column 11,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |2875| 
        BCC $C$L171,AC0 != #0 ; |2875| 
                                        ; branchcc occurs ; |2875| 
$C$DW$L$_USB_selfwakeup$5$E:
$C$L172:    
	.dwpsn	file "src/csl_usb.c",line 2878,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2878| 
        MOV port(*AR3(T0)), AR1 ; |2878| 
        BCLR @#10, AR1 ; |2878| 
        MOV AR1, port(*AR3(T0)) ; |2878| 
	.dwpsn	file "src/csl_usb.c",line 2881,column 5,is_stmt
        MOV #0, *SP(#4) ; |2881| 
	.dwpsn	file "src/csl_usb.c",line 2882,column 13,is_stmt
        B $C$L174 ; |2882| 
                                        ; branch occurs ; |2882| 
$C$L173:    
	.dwpsn	file "src/csl_usb.c",line 2865,column 3,is_stmt
        MOV *AR3, AR1 ; |2865| 
        BCC $C$L170,AR1 == #0 ; |2865| 
                                        ; branchcc occurs ; |2865| 
$C$L174:    
	.dwpsn	file "src/csl_usb.c",line 2892,column 2,is_stmt
        MOV *SP(#4), T0 ; |2892| 
	.dwpsn	file "src/csl_usb.c",line 2893,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$315	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$315, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L171:1:1714639456")
	.dwattr $C$DW$315, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$315, DW_AT_TI_begin_line(0xb3b)
	.dwattr $C$DW$315, DW_AT_TI_end_line(0xb3b)
$C$DW$316	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$316, DW_AT_low_pc($C$DW$L$_USB_selfwakeup$5$B)
	.dwattr $C$DW$316, DW_AT_high_pc($C$DW$L$_USB_selfwakeup$5$E)
	.dwendtag $C$DW$315

	.dwattr $C$DW$307, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$307, DW_AT_TI_end_line(0xb4d)
	.dwattr $C$DW$307, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$307

	.sect	".text"
	.global	_USB_setParams

$C$DW$317	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setParams")
	.dwattr $C$DW$317, DW_AT_low_pc(_USB_setParams)
	.dwattr $C$DW$317, DW_AT_high_pc(0x00)
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_USB_setParams")
	.dwattr $C$DW$317, DW_AT_external
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$317, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$317, DW_AT_TI_begin_line(0xb72)
	.dwattr $C$DW$317, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$317, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_usb.c",line 2933,column 1,is_stmt,address _USB_setParams

	.dwfde $C$DW$CIE, _USB_setParams
$C$DW$318	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg17]
$C$DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEpObj")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_hEpObj")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg19]
$C$DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSofTmrCnt")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_pSofTmrCnt")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_setParams                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_setParams:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$321	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$322	.dwtag  DW_TAG_variable, DW_AT_name("hEpObj")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_hEpObj")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$323	.dwtag  DW_TAG_variable, DW_AT_name("pSofTmrCnt")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_pSofTmrCnt")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$324	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$325	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |2933| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 2937,column 2,is_stmt
        MOV #-6, *SP(#5) ; |2937| 
	.dwpsn	file "src/csl_usb.c",line 2939,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L177,AC0 == #0 ; |2939| 
                                        ; branchcc occurs ; |2939| 
	.dwpsn	file "src/csl_usb.c",line 2941,column 3,is_stmt
        MOV *AR3, AR1 ; |2941| 
        BCC $C$L177,AR1 != #0 ; |2941| 
                                        ; branchcc occurs ; |2941| 
	.dwpsn	file "src/csl_usb.c",line 2943,column 9,is_stmt
        MOV #0, *SP(#6) ; |2943| 
	.dwpsn	file "src/csl_usb.c",line 2943,column 21,is_stmt

        MOV *SP(#6), AR1 ; |2943| 
||      MOV #11, AR2

        CMPU AR1 > AR2, TC1 ; |2943| 
        BCC $C$L176,TC1 ; |2943| 
                                        ; branchcc occurs ; |2943| 
$C$L175:    
$C$DW$L$_USB_setParams$4$B:
	.dwpsn	file "src/csl_usb.c",line 2945,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), T0 ; |2945| 
        SFTL T0, #1 ; |2945| 
        MOV dbl(*AR3(T0)), XAR2
        MOV *SP(#6), T0 ; |2945| 
        SFTL T0, #1 ; |2945| 
        AMOV #_gUsbEpHandle, XAR3 ; |2945| 
        MOV XAR2, dbl(*AR3(T0))
	.dwpsn	file "src/csl_usb.c",line 2947,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), T0 ; |2947| 
        SFTL T0, #1 ; |2947| 
        MOV dbl(*AR3(T0)), XAR3
        MOV XAR3, AC0
        BCC $C$L176,AC0 == #0 ; |2947| 
                                        ; branchcc occurs ; |2947| 
$C$DW$L$_USB_setParams$4$E:
$C$DW$L$_USB_setParams$5$B:
	.dwpsn	file "src/csl_usb.c",line 2949,column 6,is_stmt
	.dwpsn	file "src/csl_usb.c",line 2943,column 61,is_stmt
        ADD #1, *SP(#6) ; |2943| 
	.dwpsn	file "src/csl_usb.c",line 2943,column 21,is_stmt

        MOV *SP(#6), AR1 ; |2943| 
||      MOV #11, AR2

        CMPU AR1 <= AR2, TC1 ; |2943| 
        BCC $C$L175,TC1 ; |2943| 
                                        ; branchcc occurs ; |2943| 
$C$DW$L$_USB_setParams$5$E:
$C$L176:    
	.dwpsn	file "src/csl_usb.c",line 2953,column 4,is_stmt
        MOV #0, *SP(#5) ; |2953| 
$C$L177:    
	.dwpsn	file "src/csl_usb.c",line 2957,column 2,is_stmt
        MOV *SP(#5), T0 ; |2957| 
	.dwpsn	file "src/csl_usb.c",line 2958,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$327	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$327, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L175:1:1714639456")
	.dwattr $C$DW$327, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$327, DW_AT_TI_begin_line(0xb7f)
	.dwattr $C$DW$327, DW_AT_TI_end_line(0xb87)
$C$DW$328	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$328, DW_AT_low_pc($C$DW$L$_USB_setParams$4$B)
	.dwattr $C$DW$328, DW_AT_high_pc($C$DW$L$_USB_setParams$4$E)
$C$DW$329	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$329, DW_AT_low_pc($C$DW$L$_USB_setParams$5$B)
	.dwattr $C$DW$329, DW_AT_high_pc($C$DW$L$_USB_setParams$5$E)
	.dwendtag $C$DW$327

	.dwattr $C$DW$317, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$317, DW_AT_TI_end_line(0xb8e)
	.dwattr $C$DW$317, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$317

	.sect	".text"
	.global	_USB_getMaxPower

$C$DW$330	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getMaxPower")
	.dwattr $C$DW$330, DW_AT_low_pc(_USB_getMaxPower)
	.dwattr $C$DW$330, DW_AT_high_pc(0x00)
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_USB_getMaxPower")
	.dwattr $C$DW$330, DW_AT_external
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$330, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$330, DW_AT_TI_begin_line(0xbb6)
	.dwattr $C$DW$330, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$330, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 2999,column 1,is_stmt,address _USB_getMaxPower

	.dwfde $C$DW$CIE, _USB_getMaxPower
$C$DW$331	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_getMaxPower                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,  *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getMaxPower:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$332	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3000,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |3000| 
        BCC $C$L178,AR1 != #0 ; |3000| 
                                        ; branchcc occurs ; |3000| 
	.dwpsn	file "src/csl_usb.c",line 3002,column 3,is_stmt
        MOV *AR3(short(#2)), T0 ; |3002| 
        B $C$L179 ; |3002| 
                                        ; branch occurs ; |3002| 
$C$L178:    
	.dwpsn	file "src/csl_usb.c",line 3006,column 3,is_stmt
        MOV #65535, T0 ; |3006| 
$C$L179:    
	.dwpsn	file "src/csl_usb.c",line 3008,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$330, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$330, DW_AT_TI_end_line(0xbc0)
	.dwattr $C$DW$330, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$330

	.sect	".text"
	.global	_USB_setFullSpeedMode

$C$DW$334	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setFullSpeedMode")
	.dwattr $C$DW$334, DW_AT_low_pc(_USB_setFullSpeedMode)
	.dwattr $C$DW$334, DW_AT_high_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_USB_setFullSpeedMode")
	.dwattr $C$DW$334, DW_AT_external
	.dwattr $C$DW$334, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$334, DW_AT_TI_begin_line(0xbea)
	.dwattr $C$DW$334, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$334, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_usb.c",line 3052,column 1,is_stmt,address _USB_setFullSpeedMode

	.dwfde $C$DW$CIE, _USB_setFullSpeedMode
$C$DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg17]
$C$DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ep0DataSize")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_ep0DataSize")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: USB_setFullSpeedMode                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_setFullSpeedMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$337	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$338	.dwtag  DW_TAG_variable, DW_AT_name("ep0DataSize")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_ep0DataSize")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$339	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |3052| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3055,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |3055| 
        BCC $C$L180,AR1 != #0 ; |3055| 
                                        ; branchcc occurs ; |3055| 
	.dwpsn	file "src/csl_usb.c",line 3057,column 3,is_stmt
        MOV dbl(*AR3(#90)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 3058,column 3,is_stmt
        MOV uns(*SP(#2)), AC0 ; |3058| 
        MOV AC0, dbl(*AR3(short(#4))) ; |3058| 
	.dwpsn	file "src/csl_usb.c",line 3060,column 3,is_stmt
        MOV #1025, T0 ; |3060| 
        MOV *(#_usbRegisters), AR3 ; |3060| 
        MOV port(*AR3(T0)), AR1 ; |3060| 
        BCLR @#13, AR1 ; |3060| 
        MOV AR1, port(*AR3(T0)) ; |3060| 
	.dwpsn	file "src/csl_usb.c",line 3062,column 1,is_stmt
$C$L180:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$334, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$334, DW_AT_TI_end_line(0xbf6)
	.dwattr $C$DW$334, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$334

	.sect	".text"
	.global	_USB_getDataCountReadFromFifo

$C$DW$341	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getDataCountReadFromFifo")
	.dwattr $C$DW$341, DW_AT_low_pc(_USB_getDataCountReadFromFifo)
	.dwattr $C$DW$341, DW_AT_high_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_USB_getDataCountReadFromFifo")
	.dwattr $C$DW$341, DW_AT_external
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$341, DW_AT_TI_begin_line(0xc22)
	.dwattr $C$DW$341, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$341, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_usb.c",line 3107,column 1,is_stmt,address _USB_getDataCountReadFromFifo

	.dwfde $C$DW$CIE, _USB_getDataCountReadFromFifo
$C$DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEp")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_getDataCountReadFromFifo                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_getDataCountReadFromFifo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$343	.dwtag  DW_TAG_variable, DW_AT_name("hEp")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_hEp")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$344	.dwtag  DW_TAG_variable, DW_AT_name("peps")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_peps")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$345	.dwtag  DW_TAG_variable, DW_AT_name("fifoDataCount")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_fifoDataCount")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3112,column 2,is_stmt
        MOV #0, AC0 ; |3112| 
        MOV AC0, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 3113,column 2,is_stmt
        MOV #0, *SP(#4) ; |3113| 
	.dwpsn	file "src/csl_usb.c",line 3115,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L181,AC0 == #0 ; |3115| 
                                        ; branchcc occurs ; |3115| 
	.dwpsn	file "src/csl_usb.c",line 3117,column 9,is_stmt
        MOV dbl(*AR3(#32)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_usb.c",line 3119,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |3119| 

        MOV AR1, AC0
||      MOV #7, AR2

        SFTS AC0, #-2, AC0 ; |3119| 
||      NOT AR2, AR2 ; |3119| 

        BFXTR #0xe000, AC0, AR3 ; |3119| 
        ADD AR1, AR3 ; |3119| 
        AND AR3, AR2 ; |3119| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, HI(AC0)
        MOV HI(AC0), AR1
        MOV dbl(*AR3(#90)), XAR3
        SUB AR2, AR1 ; |3119| 
        MOV AR1, HI(AC0)
        MPYK #18, AC0, AC0 ; |3119| 
        MOV AC0, AR1 ; |3119| 

        MOV XAR3, dbl(*SP(#2))
||      AADD AR1, AR3 ; |3119| 

	.dwpsn	file "src/csl_usb.c",line 3121,column 3,is_stmt
        MOV *AR3(#13), AR1 ; |3121| 
        MOV AR1, *SP(#4) ; |3121| 
$C$L181:    
	.dwpsn	file "src/csl_usb.c",line 3124,column 2,is_stmt
        MOV *SP(#4), T0 ; |3124| 
	.dwpsn	file "src/csl_usb.c",line 3125,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$341, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$341, DW_AT_TI_end_line(0xc35)
	.dwattr $C$DW$341, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$341

	.sect	".text"
	.global	_USB_findFifoSize

$C$DW$348	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_findFifoSize")
	.dwattr $C$DW$348, DW_AT_low_pc(_USB_findFifoSize)
	.dwattr $C$DW$348, DW_AT_high_pc(0x00)
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_USB_findFifoSize")
	.dwattr $C$DW$348, DW_AT_external
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$348, DW_AT_TI_begin_line(0xc5c)
	.dwattr $C$DW$348, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$348, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_usb.c",line 3167,column 1,is_stmt,address _USB_findFifoSize

	.dwfde $C$DW$CIE, _USB_findFifoSize
$C$DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg17]
$C$DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maxPktSize")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg12]
$C$DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_name("xferType")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: USB_findFifoSize                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_findFifoSize:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$352	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$353	.dwtag  DW_TAG_variable, DW_AT_name("maxPktSize")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$354	.dwtag  DW_TAG_variable, DW_AT_name("xferType")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$355	.dwtag  DW_TAG_variable, DW_AT_name("fifoSize")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_fifoSize")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#3) ; |3167| 
        MOV T0, *SP(#2) ; |3167| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3170,column 2,is_stmt
        MOV #0, *SP(#4) ; |3170| 
	.dwpsn	file "src/csl_usb.c",line 3172,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L207,AC0 == #0 ; |3172| 
                                        ; branchcc occurs ; |3172| 
	.dwpsn	file "src/csl_usb.c",line 3176,column 3,is_stmt
        CMP *SP(#3) == #3, TC1 ; |3176| 
        BCC $C$L193,!TC1 ; |3176| 
                                        ; branchcc occurs ; |3176| 
	.dwpsn	file "src/csl_usb.c",line 3179,column 10,is_stmt
        MOV *AR3(#87), AR1 ; |3179| 
        BCC $C$L187,AR1 == #0 ; |3179| 
                                        ; branchcc occurs ; |3179| 
	.dwpsn	file "src/csl_usb.c",line 3182,column 5,is_stmt
        MOV #1024, AR2 ; |3182| 
        MOV *SP(#2), AR1 ; |3182| 
        CMPU AR1 <= AR2, TC1 ; |3182| 
        BCC $C$L182,TC1 ; |3182| 
                                        ; branchcc occurs ; |3182| 
	.dwpsn	file "src/csl_usb.c",line 3185,column 6,is_stmt
        MOV #0, T0
        B $C$L208 ; |3185| 
                                        ; branch occurs ; |3185| 
$C$L182:    
	.dwpsn	file "src/csl_usb.c",line 3189,column 6,is_stmt
        MOV #512, AR2 ; |3189| 
        CMPU AR1 <= AR2, TC1 ; |3189| 
        BCC $C$L183,TC1 ; |3189| 
                                        ; branchcc occurs ; |3189| 
	.dwpsn	file "src/csl_usb.c",line 3190,column 7,is_stmt
        MOV #7, *SP(#4) ; |3190| 
        B $C$L207 ; |3190| 
                                        ; branch occurs ; |3190| 
$C$L183:    
	.dwpsn	file "src/csl_usb.c",line 3194,column 7,is_stmt
        MOV #256, AR2 ; |3194| 
        CMPU AR1 <= AR2, TC1 ; |3194| 
        BCC $C$L184,TC1 ; |3194| 
                                        ; branchcc occurs ; |3194| 
	.dwpsn	file "src/csl_usb.c",line 3195,column 8,is_stmt
        MOV #6, *SP(#4) ; |3195| 
        B $C$L207 ; |3195| 
                                        ; branch occurs ; |3195| 
$C$L184:    
	.dwpsn	file "src/csl_usb.c",line 3199,column 8,is_stmt
        MOV #128, AR2 ; |3199| 
        CMPU AR1 <= AR2, TC1 ; |3199| 
        BCC $C$L185,TC1 ; |3199| 
                                        ; branchcc occurs ; |3199| 
	.dwpsn	file "src/csl_usb.c",line 3200,column 9,is_stmt
        MOV #5, *SP(#4) ; |3200| 
        B $C$L207 ; |3200| 
                                        ; branch occurs ; |3200| 
$C$L185:    
	.dwpsn	file "src/csl_usb.c",line 3204,column 9,is_stmt
        MOV #64, AR2 ; |3204| 
        CMPU AR1 <= AR2, TC1 ; |3204| 
        BCC $C$L186,TC1 ; |3204| 
                                        ; branchcc occurs ; |3204| 
	.dwpsn	file "src/csl_usb.c",line 3205,column 10,is_stmt
        MOV #4, *SP(#4) ; |3205| 
        B $C$L207 ; |3205| 
                                        ; branch occurs ; |3205| 
$C$L186:    
	.dwpsn	file "src/csl_usb.c",line 3209,column 10,is_stmt
        MOV #3, *SP(#4) ; |3209| 
	.dwpsn	file "src/csl_usb.c",line 3215,column 4,is_stmt
        B $C$L207 ; |3215| 
                                        ; branch occurs ; |3215| 
$C$L187:    
	.dwpsn	file "src/csl_usb.c",line 3219,column 5,is_stmt
        MOV #1023, AR2 ; |3219| 
        MOV *SP(#2), AR1 ; |3219| 
        CMPU AR1 <= AR2, TC1 ; |3219| 
        BCC $C$L188,TC1 ; |3219| 
                                        ; branchcc occurs ; |3219| 
	.dwpsn	file "src/csl_usb.c",line 3222,column 6,is_stmt
        MOV #0, T0
        B $C$L208 ; |3222| 
                                        ; branch occurs ; |3222| 
$C$L188:    
	.dwpsn	file "src/csl_usb.c",line 3226,column 6,is_stmt
        MOV #512, AR2 ; |3226| 
        CMPU AR1 <= AR2, TC1 ; |3226| 
        BCC $C$L189,TC1 ; |3226| 
                                        ; branchcc occurs ; |3226| 
	.dwpsn	file "src/csl_usb.c",line 3227,column 7,is_stmt
        MOV #7, *SP(#4) ; |3227| 
        B $C$L207 ; |3227| 
                                        ; branch occurs ; |3227| 
$C$L189:    
	.dwpsn	file "src/csl_usb.c",line 3231,column 7,is_stmt
        MOV #256, AR2 ; |3231| 
        CMPU AR1 <= AR2, TC1 ; |3231| 
        BCC $C$L190,TC1 ; |3231| 
                                        ; branchcc occurs ; |3231| 
	.dwpsn	file "src/csl_usb.c",line 3232,column 8,is_stmt
        MOV #6, *SP(#4) ; |3232| 
        B $C$L207 ; |3232| 
                                        ; branch occurs ; |3232| 
$C$L190:    
	.dwpsn	file "src/csl_usb.c",line 3236,column 8,is_stmt
        MOV #128, AR2 ; |3236| 
        CMPU AR1 <= AR2, TC1 ; |3236| 
        BCC $C$L191,TC1 ; |3236| 
                                        ; branchcc occurs ; |3236| 
	.dwpsn	file "src/csl_usb.c",line 3237,column 9,is_stmt
        MOV #5, *SP(#4) ; |3237| 
        B $C$L207 ; |3237| 
                                        ; branch occurs ; |3237| 
$C$L191:    
	.dwpsn	file "src/csl_usb.c",line 3241,column 9,is_stmt
        MOV #64, AR2 ; |3241| 
        CMPU AR1 <= AR2, TC1 ; |3241| 
        BCC $C$L192,TC1 ; |3241| 
                                        ; branchcc occurs ; |3241| 
	.dwpsn	file "src/csl_usb.c",line 3242,column 10,is_stmt
        MOV #4, *SP(#4) ; |3242| 
        B $C$L207 ; |3242| 
                                        ; branch occurs ; |3242| 
$C$L192:    
	.dwpsn	file "src/csl_usb.c",line 3246,column 10,is_stmt
        MOV #3, *SP(#4) ; |3246| 
	.dwpsn	file "src/csl_usb.c",line 3253,column 3,is_stmt
        B $C$L207 ; |3253| 
                                        ; branch occurs ; |3253| 
$C$L193:    
	.dwpsn	file "src/csl_usb.c",line 3258,column 4,is_stmt
        CMP *SP(#3) == #2, TC1 ; |3258| 
        BCC $C$L200,!TC1 ; |3258| 
                                        ; branchcc occurs ; |3258| 
	.dwpsn	file "src/csl_usb.c",line 3261,column 11,is_stmt
        MOV *AR3(#87), AR1 ; |3261| 
        BCC $C$L199,AR1 == #0 ; |3261| 
                                        ; branchcc occurs ; |3261| 
	.dwpsn	file "src/csl_usb.c",line 3264,column 6,is_stmt
        MOV #1024, AR2 ; |3264| 
        MOV *SP(#2), AR1 ; |3264| 
        CMPU AR1 <= AR2, TC1 ; |3264| 
        BCC $C$L194,TC1 ; |3264| 
                                        ; branchcc occurs ; |3264| 
	.dwpsn	file "src/csl_usb.c",line 3267,column 7,is_stmt
        MOV #0, T0
        B $C$L208 ; |3267| 
                                        ; branch occurs ; |3267| 
$C$L194:    
	.dwpsn	file "src/csl_usb.c",line 3271,column 7,is_stmt
        MOV #512, AR2 ; |3271| 
        CMPU AR1 <= AR2, TC1 ; |3271| 
        BCC $C$L195,TC1 ; |3271| 
                                        ; branchcc occurs ; |3271| 
	.dwpsn	file "src/csl_usb.c",line 3272,column 8,is_stmt
        MOV #7, *SP(#4) ; |3272| 
        B $C$L207 ; |3272| 
                                        ; branch occurs ; |3272| 
$C$L195:    
	.dwpsn	file "src/csl_usb.c",line 3276,column 8,is_stmt
        MOV #256, AR2 ; |3276| 
        CMPU AR1 <= AR2, TC1 ; |3276| 
        BCC $C$L196,TC1 ; |3276| 
                                        ; branchcc occurs ; |3276| 
	.dwpsn	file "src/csl_usb.c",line 3277,column 9,is_stmt
        MOV #6, *SP(#4) ; |3277| 
        B $C$L207 ; |3277| 
                                        ; branch occurs ; |3277| 
$C$L196:    
	.dwpsn	file "src/csl_usb.c",line 3281,column 9,is_stmt
        MOV #128, AR2 ; |3281| 
        CMPU AR1 <= AR2, TC1 ; |3281| 
        BCC $C$L197,TC1 ; |3281| 
                                        ; branchcc occurs ; |3281| 
	.dwpsn	file "src/csl_usb.c",line 3282,column 10,is_stmt
        MOV #5, *SP(#4) ; |3282| 
        B $C$L207 ; |3282| 
                                        ; branch occurs ; |3282| 
$C$L197:    
	.dwpsn	file "src/csl_usb.c",line 3286,column 10,is_stmt
        MOV #64, AR2 ; |3286| 
        CMPU AR1 <= AR2, TC1 ; |3286| 
        BCC $C$L198,TC1 ; |3286| 
                                        ; branchcc occurs ; |3286| 
	.dwpsn	file "src/csl_usb.c",line 3287,column 11,is_stmt
        MOV #4, *SP(#4) ; |3287| 
        B $C$L207 ; |3287| 
                                        ; branch occurs ; |3287| 
$C$L198:    
	.dwpsn	file "src/csl_usb.c",line 3291,column 11,is_stmt
        MOV #3, *SP(#4) ; |3291| 
	.dwpsn	file "src/csl_usb.c",line 3297,column 5,is_stmt
        B $C$L207 ; |3297| 
                                        ; branch occurs ; |3297| 
$C$L199:    
	.dwpsn	file "src/csl_usb.c",line 3300,column 6,is_stmt
        MOV #3, *SP(#4) ; |3300| 
	.dwpsn	file "src/csl_usb.c",line 3302,column 4,is_stmt
        B $C$L207 ; |3302| 
                                        ; branch occurs ; |3302| 
$C$L200:    
	.dwpsn	file "src/csl_usb.c",line 3306,column 5,is_stmt
        CMP *SP(#3) == #1, TC1 ; |3306| 
        BCC $C$L206,!TC1 ; |3306| 
                                        ; branchcc occurs ; |3306| 
	.dwpsn	file "src/csl_usb.c",line 3309,column 12,is_stmt
        MOV *AR3(#87), AR1 ; |3309| 
        BCC $C$L205,AR1 == #0 ; |3309| 
                                        ; branchcc occurs ; |3309| 
	.dwpsn	file "src/csl_usb.c",line 3312,column 7,is_stmt
        MOV #512, AR2 ; |3312| 
        MOV *SP(#2), AR1 ; |3312| 
        CMPU AR1 <= AR2, TC1 ; |3312| 
        BCC $C$L201,TC1 ; |3312| 
                                        ; branchcc occurs ; |3312| 
	.dwpsn	file "src/csl_usb.c",line 3315,column 8,is_stmt
        MOV #0, T0
        B $C$L208 ; |3315| 
                                        ; branch occurs ; |3315| 
$C$L201:    
	.dwpsn	file "src/csl_usb.c",line 3319,column 8,is_stmt
        MOV #256, AR2 ; |3319| 
        CMPU AR1 <= AR2, TC1 ; |3319| 
        BCC $C$L202,TC1 ; |3319| 
                                        ; branchcc occurs ; |3319| 
	.dwpsn	file "src/csl_usb.c",line 3320,column 9,is_stmt
        MOV #6, *SP(#4) ; |3320| 
        B $C$L207 ; |3320| 
                                        ; branch occurs ; |3320| 
$C$L202:    
	.dwpsn	file "src/csl_usb.c",line 3324,column 9,is_stmt
        MOV #128, AR2 ; |3324| 
        CMPU AR1 <= AR2, TC1 ; |3324| 
        BCC $C$L203,TC1 ; |3324| 
                                        ; branchcc occurs ; |3324| 
	.dwpsn	file "src/csl_usb.c",line 3325,column 10,is_stmt
        MOV #5, *SP(#4) ; |3325| 
        B $C$L207 ; |3325| 
                                        ; branch occurs ; |3325| 
$C$L203:    
	.dwpsn	file "src/csl_usb.c",line 3329,column 10,is_stmt
        MOV #64, AR2 ; |3329| 
        CMPU AR1 <= AR2, TC1 ; |3329| 
        BCC $C$L204,TC1 ; |3329| 
                                        ; branchcc occurs ; |3329| 
	.dwpsn	file "src/csl_usb.c",line 3330,column 11,is_stmt
        MOV #4, *SP(#4) ; |3330| 
        B $C$L207 ; |3330| 
                                        ; branch occurs ; |3330| 
$C$L204:    
	.dwpsn	file "src/csl_usb.c",line 3334,column 11,is_stmt
        MOV #3, *SP(#4) ; |3334| 
	.dwpsn	file "src/csl_usb.c",line 3339,column 6,is_stmt
        B $C$L207 ; |3339| 
                                        ; branch occurs ; |3339| 
$C$L205:    
	.dwpsn	file "src/csl_usb.c",line 3342,column 7,is_stmt
        MOV #3, *SP(#4) ; |3342| 
	.dwpsn	file "src/csl_usb.c",line 3344,column 5,is_stmt
        B $C$L207 ; |3344| 
                                        ; branch occurs ; |3344| 
$C$L206:    
	.dwpsn	file "src/csl_usb.c",line 3347,column 6,is_stmt
        MOV #3, *SP(#4) ; |3347| 
$C$L207:    
	.dwpsn	file "src/csl_usb.c",line 3353,column 2,is_stmt
        MOV *SP(#4), T0 ; |3353| 
$C$L208:    
	.dwpsn	file "src/csl_usb.c",line 3354,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$348, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$348, DW_AT_TI_end_line(0xd1a)
	.dwattr $C$DW$348, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$348

	.sect	".text"
	.global	_USB_coreEventProcessEp0

$C$DW$357	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_coreEventProcessEp0")
	.dwattr $C$DW$357, DW_AT_low_pc(_USB_coreEventProcessEp0)
	.dwattr $C$DW$357, DW_AT_high_pc(0x00)
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_USB_coreEventProcessEp0")
	.dwattr $C$DW$357, DW_AT_external
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$357, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$357, DW_AT_TI_begin_line(0xd26)
	.dwattr $C$DW$357, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$357, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "src/csl_usb.c",line 3367,column 1,is_stmt,address _USB_coreEventProcessEp0

	.dwfde $C$DW$CIE, _USB_coreEventProcessEp0
$C$DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_coreEventProcessEp0                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_coreEventProcessEp0:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$359	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$360	.dwtag  DW_TAG_variable, DW_AT_name("hEPx")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_hEPx")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$361	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$362	.dwtag  DW_TAG_variable, DW_AT_name("inOutFlag")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_inOutFlag")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$363	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$364	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$366	.dwtag  DW_TAG_variable, DW_AT_name("UsbCtrlBuffer")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_UsbCtrlBuffer")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3375,column 2,is_stmt
        MOV #-6, *SP(#9) ; |3375| 
	.dwpsn	file "src/csl_usb.c",line 3376,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_usb.c",line 3378,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L251,AC0 == #0 ; |3378| 
                                        ; branchcc occurs ; |3378| 
	.dwpsn	file "src/csl_usb.c",line 3380,column 6,is_stmt
        MOV #0, *SP(#9) ; |3380| 
	.dwpsn	file "src/csl_usb.c",line 3382,column 3,is_stmt
        MOV #1038, T0 ; |3382| 
        MOV *(#_usbRegisters), AR3 ; |3382| 
        MOV port(*AR3(T0)), AR1 ; |3382| 
        MOV AR1, *SP(#8) ; |3382| 
	.dwpsn	file "src/csl_usb.c",line 3383,column 4,is_stmt
        MOV port(*AR3(T0)), AR1 ; |3383| 
        AND #0xfff0, AR1, AC0 ; |3383| 
        MOV AC0, port(*AR3(T0)) ; |3383| 
	.dwpsn	file "src/csl_usb.c",line 3386,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#0)), XAR0
        AADD #93, AR1 ; |3386| 
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_name("_USB_getSetupPacket")
	.dwattr $C$DW$367, DW_AT_TI_call

        CALL #_USB_getSetupPacket ; |3386| 
||      MOV #1, T0

                                        ; call occurs [#_USB_getSetupPacket] ; |3386| 
	.dwpsn	file "src/csl_usb.c",line 3388,column 3,is_stmt
        MOV #1042, T0 ; |3388| 
        MOV *(#_usbRegisters), AR3 ; |3388| 
        MOV port(*AR3(T0)), AR1 ; |3388| 

        AND #0x0001, AR1, AR1 ; |3388| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |3388| 
        BCC $C$L249,TC1 ; |3388| 
                                        ; branchcc occurs ; |3388| 
	.dwpsn	file "src/csl_usb.c",line 3392,column 4,is_stmt
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$368, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3392| 
||      MOV #0, AC0 ; |3392| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3392| 
	.dwpsn	file "src/csl_usb.c",line 3395,column 4,is_stmt
        B $C$L248 ; |3395| 
                                        ; branch occurs ; |3395| 
$C$L209:    
	.dwpsn	file "src/csl_usb.c",line 3406,column 8,is_stmt
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 3407,column 8,is_stmt
        AMAR *SP(#9), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("_USB_getEndptStall")
	.dwattr $C$DW$369, DW_AT_TI_call
        CALL #_USB_getEndptStall ; |3407| 
                                        ; call occurs [#_USB_getEndptStall] ; |3407| 
        BCC $C$L212,T0 != #0 ; |3407| 
                                        ; branchcc occurs ; |3407| 
	.dwpsn	file "src/csl_usb.c",line 3409,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$370, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3409| 
                                        ; call occurs [#_USB_stallEndpt] ; |3409| 
	.dwpsn	file "src/csl_usb.c",line 3411,column 13,is_stmt
        B $C$L212 ; |3411| 
                                        ; branch occurs ; |3411| 
$C$L210:    
	.dwpsn	file "src/csl_usb.c",line 3414,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$371, DW_AT_TI_call
        CALL #_USB_getRemoteWakeupStat ; |3414| 
                                        ; call occurs [#_USB_getRemoteWakeupStat] ; |3414| 
        BCC $C$L212,T0 != #0 ; |3414| 
                                        ; branchcc occurs ; |3414| 
	.dwpsn	file "src/csl_usb.c",line 3416,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$372, DW_AT_TI_call

        CALL #_USB_setRemoteWakeup ; |3416| 
||      MOV #1, T0

                                        ; call occurs [#_USB_setRemoteWakeup] ; |3416| 
	.dwpsn	file "src/csl_usb.c",line 3418,column 13,is_stmt
        B $C$L212 ; |3418| 
                                        ; branch occurs ; |3418| 
$C$L211:    
	.dwpsn	file "src/csl_usb.c",line 3399,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#96), AR1 ; |3399| 
        BCC $C$L209,AR1 == #0 ; |3399| 
                                        ; branchcc occurs ; |3399| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |3399| 
        BCC $C$L210,TC1 ; |3399| 
                                        ; branchcc occurs ; |3399| 
$C$L212:    
	.dwpsn	file "src/csl_usb.c",line 3425,column 6,is_stmt
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$373, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3425| 
||      MOV #0, AC0 ; |3425| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3425| 
	.dwpsn	file "src/csl_usb.c",line 3427,column 11,is_stmt
        B $C$L250 ; |3427| 
                                        ; branch occurs ; |3427| 
$C$L213:    
	.dwpsn	file "src/csl_usb.c",line 3434,column 8,is_stmt
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 3435,column 8,is_stmt
        AMAR *SP(#9), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("_USB_getEndptStall")
	.dwattr $C$DW$374, DW_AT_TI_call
        CALL #_USB_getEndptStall ; |3435| 
                                        ; call occurs [#_USB_getEndptStall] ; |3435| 
        BCC $C$L216,T0 == #0 ; |3435| 
                                        ; branchcc occurs ; |3435| 
	.dwpsn	file "src/csl_usb.c",line 3437,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("_USB_clearEndptStall")
	.dwattr $C$DW$375, DW_AT_TI_call
        CALL #_USB_clearEndptStall ; |3437| 
                                        ; call occurs [#_USB_clearEndptStall] ; |3437| 
	.dwpsn	file "src/csl_usb.c",line 3439,column 13,is_stmt
        B $C$L216 ; |3439| 
                                        ; branch occurs ; |3439| 
$C$L214:    
	.dwpsn	file "src/csl_usb.c",line 3442,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$376, DW_AT_TI_call
        CALL #_USB_getRemoteWakeupStat ; |3442| 
                                        ; call occurs [#_USB_getRemoteWakeupStat] ; |3442| 
        BCC $C$L216,T0 == #0 ; |3442| 
                                        ; branchcc occurs ; |3442| 
	.dwpsn	file "src/csl_usb.c",line 3444,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$377, DW_AT_TI_call

        CALL #_USB_setRemoteWakeup ; |3444| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setRemoteWakeup] ; |3444| 
	.dwpsn	file "src/csl_usb.c",line 3446,column 13,is_stmt
        B $C$L216 ; |3446| 
                                        ; branch occurs ; |3446| 
$C$L215:    
	.dwpsn	file "src/csl_usb.c",line 3430,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#96), AR1 ; |3430| 
        BCC $C$L213,AR1 == #0 ; |3430| 
                                        ; branchcc occurs ; |3430| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |3430| 
        BCC $C$L214,TC1 ; |3430| 
                                        ; branchcc occurs ; |3430| 
$C$L216:    
	.dwpsn	file "src/csl_usb.c",line 3453,column 6,is_stmt
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$378, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3453| 
||      MOV #0, AC0 ; |3453| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3453| 
	.dwpsn	file "src/csl_usb.c",line 3455,column 11,is_stmt
        B $C$L250 ; |3455| 
                                        ; branch occurs ; |3455| 
$C$L217:    
	.dwpsn	file "src/csl_usb.c",line 3458,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#96), AR1 ; |3458| 
        MOV AR1, *(#_curConfigureNum) ; |3458| 
	.dwpsn	file "src/csl_usb.c",line 3459,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *AR3(#96), T0 ; |3459| 
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("_USB_setConfiguration")
	.dwattr $C$DW$379, DW_AT_TI_call
        CALL #_USB_setConfiguration ; |3459| 
                                        ; call occurs [#_USB_setConfiguration] ; |3459| 
	.dwpsn	file "src/csl_usb.c",line 3462,column 6,is_stmt
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$380, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3462| 
||      MOV #0, AC0 ; |3462| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3462| 
	.dwpsn	file "src/csl_usb.c",line 3464,column 11,is_stmt
        B $C$L250 ; |3464| 
                                        ; branch occurs ; |3464| 
$C$L218:    
	.dwpsn	file "src/csl_usb.c",line 3467,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#96), AR1 ; |3467| 
        MOV AR1, *(#_curInterfaceNum) ; |3467| 
	.dwpsn	file "src/csl_usb.c",line 3468,column 6,is_stmt
        MOV *AR3(#96), AR1 ; |3468| 
        BCC $C$L219,AR1 != #0 ; |3468| 
                                        ; branchcc occurs ; |3468| 
	.dwpsn	file "src/csl_usb.c",line 3469,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("_USB_setConfiguration")
	.dwattr $C$DW$381, DW_AT_TI_call

        CALL #_USB_setConfiguration ; |3469| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setConfiguration] ; |3469| 
$C$L219:    
	.dwpsn	file "src/csl_usb.c",line 3472,column 6,is_stmt
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$382, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3472| 
||      MOV #0, AC0 ; |3472| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3472| 
	.dwpsn	file "src/csl_usb.c",line 3474,column 11,is_stmt
        B $C$L250 ; |3474| 
                                        ; branch occurs ; |3474| 
$C$L220:    
	.dwpsn	file "src/csl_usb.c",line 3482,column 8,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#110)), XAR3
        MOV uns(low_byte(*AR3)), T0 ; |3482| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3482| 
        MOV dbl(*AR3(#110)), XAR1
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$383, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3482| 
                                        ; call occurs [#_USB_postTransaction] ; |3482| 
        MOV T0, *SP(#9) ; |3482| 
	.dwpsn	file "src/csl_usb.c",line 3485,column 13,is_stmt
        B $C$L238 ; |3485| 
                                        ; branch occurs ; |3485| 
$C$L221:    
	.dwpsn	file "src/csl_usb.c",line 3488,column 8,is_stmt
        CMP *AR3(#98) == #9, TC1 ; |3488| 
        BCC $C$L222,!TC1 ; |3488| 
                                        ; branchcc occurs ; |3488| 
	.dwpsn	file "src/csl_usb.c",line 3491,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#114)), XAR1
        MOV #128, T1 ; |3491| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$384, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3491| 
||      MOV #9, T0

                                        ; call occurs [#_USB_postTransaction] ; |3491| 
        MOV T0, *SP(#9) ; |3491| 
	.dwpsn	file "src/csl_usb.c",line 3494,column 8,is_stmt
        B $C$L238 ; |3494| 
                                        ; branch occurs ; |3494| 
$C$L222:    
	.dwpsn	file "src/csl_usb.c",line 3498,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#114)), XAR3
        MOV uns(low_byte(*AR3(short(#1)))), T0 ; |3498| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3498| 
        MOV dbl(*AR3(#114)), XAR1
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$385, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3498| 
                                        ; call occurs [#_USB_postTransaction] ; |3498| 
        MOV T0, *SP(#9) ; |3498| 
	.dwpsn	file "src/csl_usb.c",line 3503,column 13,is_stmt
        B $C$L238 ; |3503| 
                                        ; branch occurs ; |3503| 
$C$L223:    
	.dwpsn	file "src/csl_usb.c",line 3506,column 8,is_stmt
        CMP *AR3(#98) == #9, TC1 ; |3506| 
        BCC $C$L224,!TC1 ; |3506| 
                                        ; branchcc occurs ; |3506| 
	.dwpsn	file "src/csl_usb.c",line 3508,column 16,is_stmt
        MOV #13, *SP(#6) ; |3508| 
	.dwpsn	file "src/csl_usb.c",line 3510,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#6), T1 ; |3510| 
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#116)), XAR1
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$386, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3510| 
||      MOV #9, T0

                                        ; call occurs [#_USB_postTransaction] ; |3510| 
        MOV T0, *SP(#9) ; |3510| 
	.dwpsn	file "src/csl_usb.c",line 3513,column 8,is_stmt
        B $C$L238 ; |3513| 
                                        ; branch occurs ; |3513| 
$C$L224:    
	.dwpsn	file "src/csl_usb.c",line 3516,column 16,is_stmt
        MOV #12, *SP(#6) ; |3516| 
	.dwpsn	file "src/csl_usb.c",line 3517,column 16,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#116)), XAR3
        MOV uns(low_byte(*AR3(short(#1)))), AR1 ; |3517| 
        MOV AR1, *SP(#7) ; |3517| 
	.dwpsn	file "src/csl_usb.c",line 3518,column 16,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), AR2 ; |3518| 
        MOV *AR3(#98), AR1 ; |3518| 
        CMPU AR2 != AR1, TC1 ; |3518| 
        BCC $C$L225,TC1 ; |3518| 
                                        ; branchcc occurs ; |3518| 
	.dwpsn	file "src/csl_usb.c",line 3520,column 10,is_stmt
        OR #0x0001, *SP(#6) ; |3520| 
$C$L225:    
	.dwpsn	file "src/csl_usb.c",line 3524,column 16,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), AR2 ; |3524| 
        MOV *AR3(#98), AR1 ; |3524| 
        CMPU AR2 >= AR1, TC1 ; |3524| 
        BCC $C$L226,TC1 ; |3524| 
                                        ; branchcc occurs ; |3524| 

        B $C$L227 ; |3524| 
||      MOV AR2, AR1

                                        ; branch occurs ; |3524| 
$C$L226:    
        MOV *AR3(#98), AR1 ; |3524| 
$C$L227:    
        MOV AR1, *SP(#7) ; |3524| 
	.dwpsn	file "src/csl_usb.c",line 3526,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), T0 ; |3526| 
        MOV *SP(#6), T1 ; |3526| 
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#116)), XAR1
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$387, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3526| 
                                        ; call occurs [#_USB_postTransaction] ; |3526| 
        MOV T0, *SP(#9) ; |3526| 
	.dwpsn	file "src/csl_usb.c",line 3530,column 20,is_stmt
        B $C$L238 ; |3530| 
                                        ; branch occurs ; |3530| 
$C$L228:    
	.dwpsn	file "src/csl_usb.c",line 3533,column 8,is_stmt
        MOV uns(low_byte(*AR3(#96))), AR1 ; |3533| 
        BCC $C$L229,AR1 != #0 ; |3533| 
                                        ; branchcc occurs ; |3533| 
	.dwpsn	file "src/csl_usb.c",line 3536,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#118)), XAR3
        MOV uns(low_byte(*AR3)), T0 ; |3536| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3536| 
        MOV dbl(*AR3(#118)), XAR1
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$388, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3536| 
                                        ; call occurs [#_USB_postTransaction] ; |3536| 
        MOV T0, *SP(#9) ; |3536| 
$C$L229:    
	.dwpsn	file "src/csl_usb.c",line 3540,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, AR2
        MOV uns(low_byte(*AR3(#96))), AR1 ; |3540| 
        CMPU AR1 != AR2, TC1 ; |3540| 
        BCC $C$L230,TC1 ; |3540| 
                                        ; branchcc occurs ; |3540| 
	.dwpsn	file "src/csl_usb.c",line 3543,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#120)), XAR3
        MOV uns(low_byte(*AR3)), T0 ; |3543| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3543| 
        MOV dbl(*AR3(#120)), XAR1
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$389, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3543| 
                                        ; call occurs [#_USB_postTransaction] ; |3543| 
        MOV T0, *SP(#9) ; |3543| 
$C$L230:    
	.dwpsn	file "src/csl_usb.c",line 3547,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #2, AR2
        MOV uns(low_byte(*AR3(#96))), AR1 ; |3547| 
        CMPU AR1 != AR2, TC1 ; |3547| 
        BCC $C$L231,TC1 ; |3547| 
                                        ; branchcc occurs ; |3547| 
	.dwpsn	file "src/csl_usb.c",line 3550,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#122)), XAR3
        MOV uns(low_byte(*AR3)), T0 ; |3550| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3550| 
        MOV dbl(*AR3(#122)), XAR1
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$390, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3550| 
                                        ; call occurs [#_USB_postTransaction] ; |3550| 
        MOV T0, *SP(#9) ; |3550| 
$C$L231:    
	.dwpsn	file "src/csl_usb.c",line 3554,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #3, AR2
        MOV uns(low_byte(*AR3(#96))), AR1 ; |3554| 
        CMPU AR1 != AR2, TC1 ; |3554| 
        BCC $C$L238,TC1 ; |3554| 
                                        ; branchcc occurs ; |3554| 
	.dwpsn	file "src/csl_usb.c",line 3557,column 9,is_stmt
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#124)), XAR3
        MOV uns(low_byte(*AR3)), T0 ; |3557| 
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3557| 
        MOV dbl(*AR3(#124)), XAR1
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$391, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3557| 
                                        ; call occurs [#_USB_postTransaction] ; |3557| 
        MOV T0, *SP(#9) ; |3557| 
	.dwpsn	file "src/csl_usb.c",line 3561,column 13,is_stmt
        B $C$L238 ; |3561| 
                                        ; branch occurs ; |3561| 
$C$L232:    
	.dwpsn	file "src/csl_usb.c",line 3565,column 14,is_stmt
        MOV dbl(*AR3(#112)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3565| 
        MOV AR1, *SP(#7) ; |3565| 
	.dwpsn	file "src/csl_usb.c",line 3567,column 17,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), AR2 ; |3567| 
        MOV *AR3(#98), AR1 ; |3567| 
        CMPU AR2 >= AR1, TC1 ; |3567| 
        BCC $C$L233,TC1 ; |3567| 
                                        ; branchcc occurs ; |3567| 

        B $C$L234 ; |3567| 
||      MOV AR2, AR1

                                        ; branch occurs ; |3567| 
$C$L233:    
        MOV *AR3(#98), AR1 ; |3567| 
$C$L234:    
        MOV AR1, *SP(#7) ; |3567| 
	.dwpsn	file "src/csl_usb.c",line 3568,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #128, T1 ; |3568| 
        MOV *SP(#7), T0 ; |3568| 
        MOV dbl(*AR3(#198)), XAR0
        MOV dbl(*AR3(#112)), XAR1
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$392, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3568| 
                                        ; call occurs [#_USB_postTransaction] ; |3568| 
        MOV T0, *SP(#9) ; |3568| 
	.dwpsn	file "src/csl_usb.c",line 3571,column 13,is_stmt
        B $C$L238 ; |3571| 
                                        ; branch occurs ; |3571| 
$C$L235:    
	.dwpsn	file "src/csl_usb.c",line 3574,column 11,is_stmt
        MOV dbl(*AR3(#196)), XAR0
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$393, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3574| 
                                        ; call occurs [#_USB_stallEndpt] ; |3574| 
        MOV T0, *SP(#9) ; |3574| 
	.dwpsn	file "src/csl_usb.c",line 3575,column 13,is_stmt
        B $C$L238 ; |3575| 
                                        ; branch occurs ; |3575| 
$C$L236:    
	.dwpsn	file "src/csl_usb.c",line 3478,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #3, AR2
        MOV uns(high_byte(*AR3(#96))), AR1 ; |3478| 
        CMP AR1 > AR2, TC1 ; |3478| 
        BCC $C$L237,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        CMP AR1 == AR2, TC1 ; |3478| 
        BCC $C$L228,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |3478| 
        BCC $C$L220,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |3478| 
        BCC $C$L221,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        B $C$L235 ; |3478| 
                                        ; branch occurs ; |3478| 
$C$L237:    
        MOV #6, AR2
        CMPU AR1 == AR2, TC1 ; |3478| 
        BCC $C$L232,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        MOV #7, AR2
        CMPU AR1 == AR2, TC1 ; |3478| 
        BCC $C$L223,TC1 ; |3478| 
                                        ; branchcc occurs ; |3478| 
        B $C$L235 ; |3478| 
                                        ; branch occurs ; |3478| 
$C$L238:    
	.dwpsn	file "src/csl_usb.c",line 3579,column 6,is_stmt
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("_USB_sendEpZLP")
	.dwattr $C$DW$394, DW_AT_TI_call

        CALL #_USB_sendEpZLP ; |3579| 
||      MOV #0, AC0 ; |3579| 

                                        ; call occurs [#_USB_sendEpZLP] ; |3579| 
	.dwpsn	file "src/csl_usb.c",line 3581,column 11,is_stmt
        B $C$L250 ; |3581| 
                                        ; branch occurs ; |3581| 
$C$L239:    
	.dwpsn	file "src/csl_usb.c",line 3589,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$395, DW_AT_TI_call
        CALL #_USB_getRemoteWakeupStat ; |3589| 
                                        ; call occurs [#_USB_getRemoteWakeupStat] ; |3589| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#114)), XAR3
        MOV *AR3(short(#3)), AC0 ; |3589| 

        BFXTR #0x4000, AC0, AC0 ; |3589| 
||      MOV T0, AC1 ; |3589| 

        OR AC1 << #1, AC0 ; |3589| 
        MOV AC0, *SP(#10) ; |3589| 
	.dwpsn	file "src/csl_usb.c",line 3591,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3

        AMAR *SP(#10), XAR1
||      MOV #0, T1

        MOV dbl(*AR3(#198)), XAR0
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$396, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3591| 
||      MOV #2, T0

                                        ; call occurs [#_USB_postTransaction] ; |3591| 
	.dwpsn	file "src/csl_usb.c",line 3593,column 13,is_stmt
        B $C$L244 ; |3593| 
                                        ; branch occurs ; |3593| 
$C$L240:    
	.dwpsn	file "src/csl_usb.c",line 3598,column 8,is_stmt
        MOV #0, *SP(#10) ; |3598| 
	.dwpsn	file "src/csl_usb.c",line 3599,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV #2, T0
||      AMAR *SP(#10), XAR1

        MOV dbl(*AR3(#198)), XAR0
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$397, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3599| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3599| 
	.dwpsn	file "src/csl_usb.c",line 3601,column 13,is_stmt
        B $C$L244 ; |3601| 
                                        ; branch occurs ; |3601| 
$C$L241:    
	.dwpsn	file "src/csl_usb.c",line 3608,column 8,is_stmt
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_usb.c",line 3610,column 8,is_stmt
        AMAR *SP(#9), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("_USB_getEndptStall")
	.dwattr $C$DW$398, DW_AT_TI_call
        CALL #_USB_getEndptStall ; |3610| 
                                        ; call occurs [#_USB_getEndptStall] ; |3610| 
        MOV T0, *SP(#10) ; |3610| 
	.dwpsn	file "src/csl_usb.c",line 3611,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3

        AMAR *SP(#10), XAR1
||      MOV #0, T1

        MOV dbl(*AR3(#198)), XAR0
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$399, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3611| 
||      MOV #2, T0

                                        ; call occurs [#_USB_postTransaction] ; |3611| 
	.dwpsn	file "src/csl_usb.c",line 3612,column 13,is_stmt
        B $C$L244 ; |3612| 
                                        ; branch occurs ; |3612| 
$C$L242:    
	.dwpsn	file "src/csl_usb.c",line 3616,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR0(#128) ; |3616| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$400, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3616| 
                                        ; call occurs [#_USB_stallEndpt] ; |3616| 
        MOV T0, *SP(#9) ; |3616| 
	.dwpsn	file "src/csl_usb.c",line 3617,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR0(#162) ; |3617| 
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$401, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3617| 
                                        ; call occurs [#_USB_stallEndpt] ; |3617| 
        MOV T0, *SP(#9) ; |3617| 
	.dwpsn	file "src/csl_usb.c",line 3618,column 13,is_stmt
        B $C$L244 ; |3618| 
                                        ; branch occurs ; |3618| 
$C$L243:    
	.dwpsn	file "src/csl_usb.c",line 3584,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #128, AR2 ; |3584| 
        MOV *AR3(#94), AR1 ; |3584| 
        CMPU AR1 == AR2, TC1 ; |3584| 
        BCC $C$L239,TC1 ; |3584| 
                                        ; branchcc occurs ; |3584| 
        MOV #129, AR2 ; |3584| 
        CMPU AR1 == AR2, TC1 ; |3584| 
        BCC $C$L240,TC1 ; |3584| 
                                        ; branchcc occurs ; |3584| 
        MOV #130, AR2 ; |3584| 
        CMPU AR1 == AR2, TC1 ; |3584| 
        BCC $C$L241,TC1 ; |3584| 
                                        ; branchcc occurs ; |3584| 
        B $C$L242 ; |3584| 
                                        ; branch occurs ; |3584| 
$C$L244:    
	.dwpsn	file "src/csl_usb.c",line 3622,column 6,is_stmt
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("_USB_sendEpZLP")
	.dwattr $C$DW$402, DW_AT_TI_call

        CALL #_USB_sendEpZLP ; |3622| 
||      MOV #0, AC0 ; |3622| 

                                        ; call occurs [#_USB_sendEpZLP] ; |3622| 
	.dwpsn	file "src/csl_usb.c",line 3623,column 11,is_stmt
        B $C$L250 ; |3623| 
                                        ; branch occurs ; |3623| 
$C$L245:    
	.dwpsn	file "src/csl_usb.c",line 3626,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#96), AR1 ; |3626| 
        MOV AR1, *AR3(#126) ; |3626| 
	.dwpsn	file "src/csl_usb.c",line 3628,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, T0
        AMOV #0, XAR1 ; |3628| 
        MOV dbl(*AR3(#198)), XAR0
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$403, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3628| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3628| 
	.dwpsn	file "src/csl_usb.c",line 3632,column 6,is_stmt
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("_USB_clearEpRxPktRdy")
	.dwattr $C$DW$404, DW_AT_TI_call

        CALL #_USB_clearEpRxPktRdy ; |3632| 
||      MOV #0, AC0 ; |3632| 

                                        ; call occurs [#_USB_clearEpRxPktRdy] ; |3632| 
	.dwpsn	file "src/csl_usb.c",line 3634,column 11,is_stmt
        B $C$L250 ; |3634| 
                                        ; branch occurs ; |3634| 
$C$L246:    
	.dwpsn	file "src/csl_usb.c",line 3638,column 6,is_stmt
        MOV *(#_curConfigureNum), AR1 ; |3638| 
        MOV AR1, *SP(#10) ; |3638| 
	.dwpsn	file "src/csl_usb.c",line 3639,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3

        AMAR *SP(#10), XAR1
||      MOV #1, T0

        MOV dbl(*AR3(#198)), XAR0
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$405, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3639| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |3639| 
	.dwpsn	file "src/csl_usb.c",line 3642,column 6,is_stmt
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("_USB_sendEpZLP")
	.dwattr $C$DW$406, DW_AT_TI_call

        CALL #_USB_sendEpZLP ; |3642| 
||      MOV #0, AC0 ; |3642| 

                                        ; call occurs [#_USB_sendEpZLP] ; |3642| 
	.dwpsn	file "src/csl_usb.c",line 3644,column 11,is_stmt
        B $C$L250 ; |3644| 
                                        ; branch occurs ; |3644| 
$C$L247:    
	.dwpsn	file "src/csl_usb.c",line 3648,column 6,is_stmt
        MOV *(#_curInterfaceNum), AR1 ; |3648| 
        MOV AR1, *SP(#10) ; |3648| 
	.dwpsn	file "src/csl_usb.c",line 3649,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3

        AMAR *SP(#10), XAR1
||      MOV #1, T0

        MOV dbl(*AR3(#198)), XAR0
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$407, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3649| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |3649| 
	.dwpsn	file "src/csl_usb.c",line 3652,column 6,is_stmt
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("_USB_sendEpZLP")
	.dwattr $C$DW$408, DW_AT_TI_call

        CALL #_USB_sendEpZLP ; |3652| 
||      MOV #0, AC0 ; |3652| 

                                        ; call occurs [#_USB_sendEpZLP] ; |3652| 
	.dwpsn	file "src/csl_usb.c",line 3654,column 11,is_stmt
        B $C$L250 ; |3654| 
                                        ; branch occurs ; |3654| 
$C$L248:    
	.dwpsn	file "src/csl_usb.c",line 3395,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#95), AC0 ; |3395| 

        MOV AC0, AR1 ; |3395| 
||      MOV #11, AR2

        CMPU AR1 <= AR2, TC1 ; |3395| 
        BCC $C$L250,!TC1 ; |3395| 
                                        ; branchcc occurs ; |3395| 
        SFTL AC0, #1, AC0 ; |3395| 
        AND #0xffff, AC0, AC1 ; |3395| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |3395| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |3395| 
        ADD AC1, AC0 ; |3395| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |3395| 
        B AC0     ; |3395| 
                                        ; branch occurs ; |3395| 
	.sect	".switch:_USB_coreEventProcessEp0"
	.clink
$C$SW1:	.long	$C$L243	; 0
	.long	$C$L215	; 1
	.long	$C$L250	; 0
	.long	$C$L211	; 3
	.long	$C$L250	; 0
	.long	$C$L245	; 5
	.long	$C$L236	; 6
	.long	$C$L250	; 0
	.long	$C$L246	; 8
	.long	$C$L217	; 9
	.long	$C$L247	; 10
	.long	$C$L218	; 11
	.sect	".text"
$C$L249:    
	.dwpsn	file "src/csl_usb.c",line 3662,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        CMP *AR3(#95) == #5, TC1 ; |3662| 
        BCC $C$L250,!TC1 ; |3662| 
                                        ; branchcc occurs ; |3662| 
	.dwpsn	file "src/csl_usb.c",line 3664,column 5,is_stmt
        MOV *AR3(#126), T0 ; |3664| 
        MOV dbl(*SP(#4)), XAR0
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("_USB_setDevAddr")
	.dwattr $C$DW$409, DW_AT_TI_call
        CALL #_USB_setDevAddr ; |3664| 
                                        ; call occurs [#_USB_setDevAddr] ; |3664| 
$C$L250:    
	.dwpsn	file "src/csl_usb.c",line 3668,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |3668| 
        MOV #1038, T0 ; |3668| 
        MOV *SP(#8), AR1 ; |3668| 
        MOV AR1, port(*AR3(T0)) ; |3668| 
$C$L251:    
	.dwpsn	file "src/csl_usb.c",line 3671,column 2,is_stmt
        MOV *SP(#9), T0 ; |3671| 
	.dwpsn	file "src/csl_usb.c",line 3672,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$357, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$357, DW_AT_TI_end_line(0xe58)
	.dwattr $C$DW$357, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$357

	.sect	".text"
	.global	_USB_handleResumeIntr

$C$DW$411	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_handleResumeIntr")
	.dwattr $C$DW$411, DW_AT_low_pc(_USB_handleResumeIntr)
	.dwattr $C$DW$411, DW_AT_high_pc(0x00)
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_USB_handleResumeIntr")
	.dwattr $C$DW$411, DW_AT_external
	.dwattr $C$DW$411, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$411, DW_AT_TI_begin_line(0xe61)
	.dwattr $C$DW$411, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$411, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_usb.c",line 3682,column 1,is_stmt,address _USB_handleResumeIntr

	.dwfde $C$DW$CIE, _USB_handleResumeIntr
;*******************************************************************************
;* FUNCTION NAME: USB_handleResumeIntr                                         *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,  *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_handleResumeIntr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$412	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$412, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_usb.c",line 3686,column 5,is_stmt
        MOV #1025, T0 ; |3686| 
        MOV *(#_usbRegisters), AR3 ; |3686| 
        OR #0x0400, port(*AR3(T0)) ; |3686| 
	.dwpsn	file "src/csl_usb.c",line 3689,column 6,is_stmt
        MOV #0, *SP(#0) ; |3689| 
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 3689,column 17,is_stmt
        MOV #255, AR2 ; |3689| 
        MOV *SP(#0), AR1 ; |3689| 
        CMPU AR1 >= AR2, TC1 ; |3689| 
        BCC $C$L253,TC1 ; |3689| 
                                        ; branchcc occurs ; |3689| 
$C$L252:    
$C$DW$L$_USB_handleResumeIntr$2$B:
	.dwpsn	file "src/csl_usb.c",line 3689,column 31,is_stmt
        ADD #1, *SP(#0) ; |3689| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_usb.c",line 3689,column 17,is_stmt
        MOV *SP(#0), AR1 ; |3689| 
        CMPU AR1 < AR2, TC1 ; |3689| 
        BCC $C$L252,TC1 ; |3689| 
                                        ; branchcc occurs ; |3689| 
$C$DW$L$_USB_handleResumeIntr$2$E:
$C$L253:    
	.dwpsn	file "src/csl_usb.c",line 3692,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |3692| 
        AND #0xfbff, port(*AR3(T0)) ; |3692| 
	.dwpsn	file "src/csl_usb.c",line 3693,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$414	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$414, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_usb.asm:$C$L252:1:1714639456")
	.dwattr $C$DW$414, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$414, DW_AT_TI_begin_line(0xe69)
	.dwattr $C$DW$414, DW_AT_TI_end_line(0xe69)
$C$DW$415	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$415, DW_AT_low_pc($C$DW$L$_USB_handleResumeIntr$2$B)
	.dwattr $C$DW$415, DW_AT_high_pc($C$DW$L$_USB_handleResumeIntr$2$E)
	.dwendtag $C$DW$414

	.dwattr $C$DW$411, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$411, DW_AT_TI_end_line(0xe6d)
	.dwattr $C$DW$411, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$411

	.sect	".text"
	.global	_USB_intrHandler

$C$DW$416	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_intrHandler")
	.dwattr $C$DW$416, DW_AT_low_pc(_USB_intrHandler)
	.dwattr $C$DW$416, DW_AT_high_pc(0x00)
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_USB_intrHandler")
	.dwattr $C$DW$416, DW_AT_external
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$416, DW_AT_TI_begin_file("src/csl_usb.c")
	.dwattr $C$DW$416, DW_AT_TI_begin_line(0xe7a)
	.dwattr $C$DW$416, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$416, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_usb.c",line 3707,column 1,is_stmt,address _USB_intrHandler

	.dwfde $C$DW$CIE, _USB_intrHandler
$C$DW$417	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$417, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: USB_intrHandler                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_USB_intrHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$418	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$418, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_usb.c",line 3709,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#15), AR1 ; |3709| 
        BCC $C$L254,AR1 != #0 ; |3709| 
                                        ; branchcc occurs ; |3709| 
	.dwpsn	file "src/csl_usb.c",line 3711,column 3,is_stmt
        MOV #0, T0
        B $C$L264 ; |3711| 
                                        ; branch occurs ; |3711| 
$C$L254:    
	.dwpsn	file "src/csl_usb.c",line 3714,column 2,is_stmt
        BTST #2, *AR3(#85), TC1 ; |3714| 
        BCC $C$L255,!TC1 ; |3714| 
                                        ; branchcc occurs ; |3714| 
	.dwpsn	file "src/csl_usb.c",line 3716,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |3716| 
        MOV #1038, T0 ; |3716| 
        MOV #0, port(*AR3(T0)) ; |3716| 
	.dwpsn	file "src/csl_usb.c",line 3717,column 3,is_stmt
        MOV #0, AC0 ; |3717| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("_USB_flushFifo")
	.dwattr $C$DW$419, DW_AT_TI_call

        CALL #_USB_flushFifo ; |3717| 
||      MOV #1, T0

                                        ; call occurs [#_USB_flushFifo] ; |3717| 
$C$L255:    
	.dwpsn	file "src/csl_usb.c",line 3720,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #1, *AR3(#85), TC1 ; |3720| 
        BCC $C$L256,!TC1 ; |3720| 
                                        ; branchcc occurs ; |3720| 
	.dwpsn	file "src/csl_usb.c",line 3723,column 3,is_stmt
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("_USB_handleResumeIntr")
	.dwattr $C$DW$420, DW_AT_TI_call
        CALL #_USB_handleResumeIntr ; |3723| 
                                        ; call occurs [#_USB_handleResumeIntr] ; |3723| 
$C$L256:    
	.dwpsn	file "src/csl_usb.c",line 3726,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #0, *AR3(#84), TC1 ; |3726| 
        BCC $C$L257,!TC1 ; |3726| 
                                        ; branchcc occurs ; |3726| 
	.dwpsn	file "src/csl_usb.c",line 3729,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("_USB_coreEventProcessEp0")
	.dwattr $C$DW$421, DW_AT_TI_call
        CALL #_USB_coreEventProcessEp0 ; |3729| 
                                        ; call occurs [#_USB_coreEventProcessEp0] ; |3729| 
$C$L257:    
	.dwpsn	file "src/csl_usb.c",line 3733,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #9, *AR3(#84), TC1 ; |3733| 
        BCC $C$L258,TC1 ; |3733| 
                                        ; branchcc occurs ; |3733| 
        BTST #10, *AR3(#84), TC1 ; |3733| 
        BCC $C$L258,TC1 ; |3733| 
                                        ; branchcc occurs ; |3733| 
        BTST #11, *AR3(#84), TC1 ; |3733| 
        BCC $C$L258,TC1 ; |3733| 
                                        ; branchcc occurs ; |3733| 
        BTST #12, *AR3(#84), TC1 ; |3733| 
        BCC $C$L259,!TC1 ; |3733| 
                                        ; branchcc occurs ; |3733| 
$C$L258:    
	.dwpsn	file "src/csl_usb.c",line 3739,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_name("_USB_handleRxIntr")
	.dwattr $C$DW$422, DW_AT_TI_call
        CALL #_USB_handleRxIntr ; |3739| 
                                        ; call occurs [#_USB_handleRxIntr] ; |3739| 
$C$L259:    
	.dwpsn	file "src/csl_usb.c",line 3744,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #1, *AR3(#84), TC1 ; |3744| 
        BCC $C$L260,TC1 ; |3744| 
                                        ; branchcc occurs ; |3744| 
        BTST #2, *AR3(#84), TC1 ; |3744| 
        BCC $C$L260,TC1 ; |3744| 
                                        ; branchcc occurs ; |3744| 
        BTST #3, *AR3(#84), TC1 ; |3744| 
        BCC $C$L260,TC1 ; |3744| 
                                        ; branchcc occurs ; |3744| 
        BTST #4, *AR3(#84), TC1 ; |3744| 
        BCC $C$L261,!TC1 ; |3744| 
                                        ; branchcc occurs ; |3744| 
$C$L260:    
	.dwpsn	file "src/csl_usb.c",line 3750,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_name("_USB_handleTxIntr")
	.dwattr $C$DW$423, DW_AT_TI_call
        CALL #_USB_handleTxIntr ; |3750| 
                                        ; call occurs [#_USB_handleTxIntr] ; |3750| 
$C$L261:    
	.dwpsn	file "src/csl_usb.c",line 3753,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #5, *AR3(#85), TC1 ; |3753| 
        BCC $C$L262,!TC1 ; |3753| 
                                        ; branchcc occurs ; |3753| 
	.dwpsn	file "src/csl_usb.c",line 3756,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$424	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$424, DW_AT_low_pc(0x00)
	.dwattr $C$DW$424, DW_AT_name("_USB_disconnectDev")
	.dwattr $C$DW$424, DW_AT_TI_call
        CALL #_USB_disconnectDev ; |3756| 
                                        ; call occurs [#_USB_disconnectDev] ; |3756| 
$C$L262:    
	.dwpsn	file "src/csl_usb.c",line 3759,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #0, *AR3(#85), TC1 ; |3759| 
        BCC $C$L263,!TC1 ; |3759| 
                                        ; branchcc occurs ; |3759| 
	.dwpsn	file "src/csl_usb.c",line 3762,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_name("_USB_suspendDevice")
	.dwattr $C$DW$425, DW_AT_TI_call
        CALL #_USB_suspendDevice ; |3762| 
                                        ; call occurs [#_USB_suspendDevice] ; |3762| 
$C$L263:    
	.dwpsn	file "src/csl_usb.c",line 3765,column 2,is_stmt
        MOV #1, T0
$C$L264:    
	.dwpsn	file "src/csl_usb.c",line 3766,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$416, DW_AT_TI_end_file("src/csl_usb.c")
	.dwattr $C$DW$416, DW_AT_TI_end_line(0xeb6)
	.dwattr $C$DW$416, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$416


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$427	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$428	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$429	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA_TXONLY"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$67

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbOpMode")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$430	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB0"), DW_AT_const_value(0x00)
$C$DW$431	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB1"), DW_AT_const_value(0x01)
$C$DW$432	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$81

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevNum")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$88	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$433	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_FALSE"), DW_AT_const_value(0x00)
$C$DW$434	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_TRUE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$88

$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBoolean")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$435	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_UNKNOWN_SPEED"), DW_AT_const_value(0x00)
$C$DW$436	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_FULL_SPEED"), DW_AT_const_value(0x02)
$C$DW$437	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_HIGH_SPEED"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$90

$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBusSpeed")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x17)

$C$DW$T$92	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$438	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_IDLE"), DW_AT_const_value(0x00)
$C$DW$439	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_STATUS_IN"), DW_AT_const_value(0x01)
$C$DW$440	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_TX"), DW_AT_const_value(0x02)
$C$DW$441	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_RX"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$92

$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEp0State")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$442	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_DETACH"), DW_AT_const_value(0x00)
$C$DW$443	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_ATTACH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDeviceEvent")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$444	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP0"), DW_AT_const_value(0x00)
$C$DW$445	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP1"), DW_AT_const_value(0x01)
$C$DW$446	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP2"), DW_AT_const_value(0x02)
$C$DW$447	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP3"), DW_AT_const_value(0x03)
$C$DW$448	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP4"), DW_AT_const_value(0x04)
$C$DW$449	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP5"), DW_AT_const_value(0x05)
$C$DW$450	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP6"), DW_AT_const_value(0x06)
$C$DW$451	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP7"), DW_AT_const_value(0x07)
$C$DW$452	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP0"), DW_AT_const_value(0x08)
$C$DW$453	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP1"), DW_AT_const_value(0x09)
$C$DW$454	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP2"), DW_AT_const_value(0x0a)
$C$DW$455	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP3"), DW_AT_const_value(0x0b)
$C$DW$456	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP4"), DW_AT_const_value(0x0c)
$C$DW$457	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP5"), DW_AT_const_value(0x0d)
$C$DW$458	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP6"), DW_AT_const_value(0x0e)
$C$DW$459	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP7"), DW_AT_const_value(0x0f)
	.dwendtag $C$DW$T$105

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpNum")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$107	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_CTRL"), DW_AT_const_value(0x00)
$C$DW$461	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BULK"), DW_AT_const_value(0x01)
$C$DW$462	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_INTR"), DW_AT_const_value(0x02)
$C$DW$463	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_ISO"), DW_AT_const_value(0x03)
$C$DW$464	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_HPORT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$107

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbXferType")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$465, DW_AT_name("TXFUNCADDR")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_TXFUNCADDR")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$466, DW_AT_name("TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$467, DW_AT_name("RSVD0")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$468, DW_AT_name("RXFUNCADDR")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_RXFUNCADDR")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$469, DW_AT_name("RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$470, DW_AT_name("RSVD36")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_RSVD36")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEptrgRegs")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x28)
$C$DW$471	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$471, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$40


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x10)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$472, DW_AT_name("TXMAXP")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_TXMAXP")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$473, DW_AT_name("PERI_TXCSR")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_PERI_TXCSR")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$474, DW_AT_name("RSVD0")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$475, DW_AT_name("RXMAXP")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_RXMAXP")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_name("PERI_RXCSR")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_PERI_RXCSR")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$477, DW_AT_name("RSVD1")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$478, DW_AT_name("RXCOUNT")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_RXCOUNT")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$479, DW_AT_name("RSVD41")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_RSVD41")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpcsrRegs")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x40)
$C$DW$480	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$480, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$43


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x20)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$481, DW_AT_name("TXGCR1")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_TXGCR1")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$482, DW_AT_name("TXGCR2")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_TXGCR2")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$483, DW_AT_name("RSVD0")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$484, DW_AT_name("RXGCR1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_RXGCR1")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$485, DW_AT_name("RXGCR2")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_RXGCR2")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$486, DW_AT_name("RSVD1")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$487, DW_AT_name("RXHPCR1A")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_RXHPCR1A")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$488, DW_AT_name("RXHPCR2A")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_RXHPCR2A")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$489, DW_AT_name("RSVD2")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_name("RXHPCR1B")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_RXHPCR1B")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$491, DW_AT_name("RXHPCR2B")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_RXHPCR2B")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$492, DW_AT_name("RSVD46")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_RSVD46")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbChannelRegs")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x80)
$C$DW$493	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$493, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$47


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x04)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_name("ENTRYLSW")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_ENTRYLSW")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("ENTRYMSW")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_ENTRYMSW")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$496, DW_AT_name("RSVD49")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_RSVD49")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbCdmaschetblwordRegs")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x100)
$C$DW$497	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$497, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$51


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x10)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$498, DW_AT_name("QMEMRBASE1")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_QMEMRBASE1")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_name("QMEMRBASE2")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_QMEMRBASE2")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$500, DW_AT_name("RSVD0")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$501, DW_AT_name("QMEMRCTRL1")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_QMEMRCTRL1")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$502, DW_AT_name("QMEMRCTRL2")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_QMEMRCTRL2")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$503, DW_AT_name("RSVD63")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_RSVD63")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmmemregrRegs")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x100)
$C$DW$504	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$504, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$57


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x10)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$505, DW_AT_name("RSVD0")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_name("CTRL1D")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_CTRL1D")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_name("CTRL2D")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_CTRL2D")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$508, DW_AT_name("RSVD65")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_RSVD65")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnRegs")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x400)
$C$DW$509	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$509, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$60


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x10)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$510, DW_AT_name("QSTATA")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_QSTATA")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$511, DW_AT_name("RSVD0")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$512, DW_AT_name("QSTAT1B")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_QSTAT1B")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$513, DW_AT_name("QSTAT2B")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_QSTAT2B")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$514, DW_AT_name("RSVD1")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$515, DW_AT_name("QSTAT1C")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_QSTAT1C")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$516, DW_AT_name("RSVD67")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_RSVD67")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnsRegs")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x400)
$C$DW$517	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$517, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x6c00)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$518, DW_AT_name("REVID1")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_REVID1")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$519, DW_AT_name("REVID2")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_REVID2")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$520, DW_AT_name("RSVD0")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$521, DW_AT_name("CTRLR")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_CTRLR")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$522, DW_AT_name("RSVD1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$523, DW_AT_name("STATR")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_STATR")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$524, DW_AT_name("RSVD2")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$525, DW_AT_name("EMUR")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_EMUR")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$526, DW_AT_name("RSVD3")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$527, DW_AT_name("MODE1")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_MODE1")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$528, DW_AT_name("MODE2")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_MODE2")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$529, DW_AT_name("RSVD4")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$530, DW_AT_name("AUTOREQ")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_AUTOREQ")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$531, DW_AT_name("RSVD5")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$532, DW_AT_name("SPRFIXTIME1")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_SPRFIXTIME1")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$533, DW_AT_name("SPRFIXTIME2")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_SPRFIXTIME2")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$534, DW_AT_name("RSVD6")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$535, DW_AT_name("TEARDOWN1")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_TEARDOWN1")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$536, DW_AT_name("TEARDOWN2")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_TEARDOWN2")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$537, DW_AT_name("RSVD7")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$538, DW_AT_name("INTSRCR1")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_INTSRCR1")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$539, DW_AT_name("INTSRCR2")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_INTSRCR2")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$540, DW_AT_name("RSVD8")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$541, DW_AT_name("INTSETR1")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_INTSETR1")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$542, DW_AT_name("INTSETR2")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_INTSETR2")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$543, DW_AT_name("RSVD9")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$544, DW_AT_name("INTCLRR1")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_INTCLRR1")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$545, DW_AT_name("INTCLRR2")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_INTCLRR2")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$546, DW_AT_name("RSVD10")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$547, DW_AT_name("INTMSKR1")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_INTMSKR1")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$548, DW_AT_name("INTMSKR2")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_INTMSKR2")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$549, DW_AT_name("RSVD11")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$550, DW_AT_name("INTMSKSETR1")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_INTMSKSETR1")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$551, DW_AT_name("INTMSKSETR2")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_INTMSKSETR2")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$552, DW_AT_name("RSVD12")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$553, DW_AT_name("INTMSKCLRR1")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_INTMSKCLRR1")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$554, DW_AT_name("INTMSKCLRR2")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_INTMSKCLRR2")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$555, DW_AT_name("RSVD13")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$556, DW_AT_name("INTMASKEDR1")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_INTMASKEDR1")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$557, DW_AT_name("INTMASKEDR2")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_INTMASKEDR2")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$558, DW_AT_name("RSVD14")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$559, DW_AT_name("EOIR")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_EOIR")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$560, DW_AT_name("RSVD15")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$561, DW_AT_name("INTVECTR1")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_INTVECTR1")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$562, DW_AT_name("INTVECTR2")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_INTVECTR2")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$563, DW_AT_name("RSVD16")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$564, DW_AT_name("GREP1SZR1")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GREP1SZR1")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$565, DW_AT_name("GREP1SZR2")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GREP1SZR2")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$566, DW_AT_name("RSVD17")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$567, DW_AT_name("GREP2SZR1")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GREP2SZR1")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$568, DW_AT_name("GREP2SZR2")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GREP2SZR2")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$569, DW_AT_name("RSVD18")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$570, DW_AT_name("GREP3SZR1")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_GREP3SZR1")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$571, DW_AT_name("GREP3SZR2")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_GREP3SZR2")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$572, DW_AT_name("RSVD19")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$573, DW_AT_name("GREP4SZR1")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_GREP4SZR1")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$574, DW_AT_name("GREP4SZR2")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_GREP4SZR2")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$575, DW_AT_name("RSVD20")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$576, DW_AT_name("FADDR_POWER")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_FADDR_POWER")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x401]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$577, DW_AT_name("INTRTX")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_INTRTX")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x402]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$578, DW_AT_name("RSVD21")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x403]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$579, DW_AT_name("INTRRX")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_INTRRX")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x405]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$580, DW_AT_name("INTRTXE")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_INTRTXE")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x406]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$581, DW_AT_name("RSVD22")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x407]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$582, DW_AT_name("INTRRXE")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_INTRRXE")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x409]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$583, DW_AT_name("INTRUSB_INTRUSBE")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_INTRUSB_INTRUSBE")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x40a]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$584, DW_AT_name("RSVD23")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x40b]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$585, DW_AT_name("FRAME")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_FRAME")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x40d]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$586, DW_AT_name("INDEX_TESTMODE")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_INDEX_TESTMODE")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x40e]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$587, DW_AT_name("RSVD24")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_RSVD24")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x40f]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$588, DW_AT_name("TXMAXP_INDX")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_TXMAXP_INDX")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x411]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$589, DW_AT_name("PERI_CSR0_INDX")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_PERI_CSR0_INDX")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x412]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$590, DW_AT_name("RSVD25")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_RSVD25")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x413]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$591, DW_AT_name("RXMAXP_INDX")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_RXMAXP_INDX")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x415]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$592, DW_AT_name("PERI_RXCSR_INDX")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_PERI_RXCSR_INDX")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x416]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$593, DW_AT_name("RSVD26")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_RSVD26")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x417]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$594, DW_AT_name("COUNT0_INDX")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_COUNT0_INDX")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x419]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$595, DW_AT_name("RSVD27")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_RSVD27")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x41a]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$596, DW_AT_name("CONFIGDATA_INDX")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_CONFIGDATA_INDX")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x41e]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$597, DW_AT_name("RSVD28")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_RSVD28")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x41f]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$598, DW_AT_name("FIFO0R1")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_FIFO0R1")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x421]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$599, DW_AT_name("FIFO0R2")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_FIFO0R2")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x422]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$600, DW_AT_name("RSVD29")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_RSVD29")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x423]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$601, DW_AT_name("FIFO1R1")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_FIFO1R1")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x425]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$602, DW_AT_name("FIFO1R2")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_FIFO1R2")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x426]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$603, DW_AT_name("RSVD30")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_RSVD30")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x427]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$604, DW_AT_name("FIFO2R1")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_FIFO2R1")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x429]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$605, DW_AT_name("FIFO2R2")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_FIFO2R2")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x42a]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$606, DW_AT_name("RSVD31")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_RSVD31")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x42b]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$607, DW_AT_name("FIFO3R1")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_FIFO3R1")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x42d]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$608, DW_AT_name("FIFO3R2")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_FIFO3R2")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x42e]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$609, DW_AT_name("RSVD32")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_RSVD32")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x42f]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$610, DW_AT_name("FIFO4R1")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_FIFO4R1")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x431]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$611, DW_AT_name("FIFO4R2")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_FIFO4R2")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x432]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$612, DW_AT_name("RSVD33")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_RSVD33")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x433]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$613, DW_AT_name("DEVCTL")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_DEVCTL")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x461]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$614, DW_AT_name("TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x462]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$615, DW_AT_name("RSVD34")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_RSVD34")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x463]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$616, DW_AT_name("TXFIFOADDR")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_TXFIFOADDR")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x465]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$617, DW_AT_name("RXFIFOADDR")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_RXFIFOADDR")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x466]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$618, DW_AT_name("RSVD35")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_RSVD35")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x467]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$619, DW_AT_name("HWVERS")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_HWVERS")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x46d]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$620, DW_AT_name("RSVD37")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_RSVD37")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x46e]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$621, DW_AT_name("EPTRG")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_EPTRG")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x481]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$622, DW_AT_name("RSVD38")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_RSVD38")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a9]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$623, DW_AT_name("PERI_CSR0")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_PERI_CSR0")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x502]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$624, DW_AT_name("RSVD39")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_RSVD39")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x503]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$625, DW_AT_name("COUNT0")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_COUNT0")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x509]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$626, DW_AT_name("RSVD40")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_RSVD40")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x50a]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$627, DW_AT_name("CONFIGDATA")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_CONFIGDATA")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x50e]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$628, DW_AT_name("RSVD42")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_RSVD42")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x50f]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$629, DW_AT_name("EPCSR")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_EPCSR")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x511]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$630, DW_AT_name("RSVD43")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_RSVD43")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x551]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$631, DW_AT_name("DMAREVID1")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_DMAREVID1")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x1000]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$632, DW_AT_name("DMAREVID2")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_DMAREVID2")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x1001]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$633, DW_AT_name("RSVD44")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_RSVD44")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x1002]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$634, DW_AT_name("TDFDQ")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_TDFDQ")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x1004]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$635, DW_AT_name("RSVD45")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_RSVD45")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1005]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$636, DW_AT_name("DMAEMU")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_DMAEMU")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1008]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$637, DW_AT_name("RSVD47")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_RSVD47")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x1009]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$638, DW_AT_name("CHANNEL")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_CHANNEL")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x1800]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$639, DW_AT_name("RSVD48")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_RSVD48")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1880]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$640, DW_AT_name("DMA_SCHED_CTRL1")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL1")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x2000]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$641, DW_AT_name("DMA_SCHED_CTRL2")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL2")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x2001]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$642, DW_AT_name("RSVD50")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_RSVD50")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x2002]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$643, DW_AT_name("CDMASCHETBLWORD")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_CDMASCHETBLWORD")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x2800]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$644, DW_AT_name("RSVD51")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_RSVD51")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x2900]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$645, DW_AT_name("QMGRREVID1")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_QMGRREVID1")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x4000]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$646, DW_AT_name("QMGRREVID2")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_QMGRREVID2")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x4001]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$647, DW_AT_name("RSVD52")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_RSVD52")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x4002]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$648, DW_AT_name("DIVERSION1")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_DIVERSION1")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x4008]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$649, DW_AT_name("DIVERSION2")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_DIVERSION2")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x4009]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$650, DW_AT_name("RSVD53")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_RSVD53")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x400a]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$651, DW_AT_name("FDBSC0")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_FDBSC0")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x4020]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$652, DW_AT_name("FDBSC1")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_FDBSC1")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x4021]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$653, DW_AT_name("RSVD54")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_RSVD54")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x4022]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$654, DW_AT_name("FDBSC2")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_FDBSC2")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x4024]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$655, DW_AT_name("FDBSC3")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_FDBSC3")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x4025]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$656, DW_AT_name("RSVD55")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_RSVD55")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x4026]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$657, DW_AT_name("FDBSC4")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_FDBSC4")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x4028]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$658, DW_AT_name("FDBSC5")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_FDBSC5")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x4029]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$659, DW_AT_name("RSVD56")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_RSVD56")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x402a]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$660, DW_AT_name("FDBSC6")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_FDBSC6")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x402c]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$661, DW_AT_name("FDBSC7")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_FDBSC7")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x402d]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$662, DW_AT_name("RSVD57")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_RSVD57")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x402e]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$663, DW_AT_name("LRAM0BASE1")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_LRAM0BASE1")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x4080]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$664, DW_AT_name("LRAM0BASE2")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_LRAM0BASE2")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x4081]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$665, DW_AT_name("RSVD58")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_RSVD58")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x4082]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$666, DW_AT_name("LRAM0SIZE")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_LRAM0SIZE")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x4084]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$667, DW_AT_name("RSVD59")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_RSVD59")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x4085]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$668, DW_AT_name("LRAM1BASE1")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_LRAM1BASE1")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x4088]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$669, DW_AT_name("LRAM1BASE2")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_LRAM1BASE2")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x4089]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$670, DW_AT_name("RSVD60")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_RSVD60")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x408a]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$671, DW_AT_name("PEND0")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_PEND0")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x4090]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$672, DW_AT_name("PEND1")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_PEND1")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x4091]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$673, DW_AT_name("RSVD61")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_RSVD61")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x4092]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$674, DW_AT_name("PEND2")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_PEND2")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x4094]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$675, DW_AT_name("PEND3")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_PEND3")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x4095]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$676, DW_AT_name("RSVD62")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_RSVD62")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x4096]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$677, DW_AT_name("PEND4")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_PEND4")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x4098]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$678, DW_AT_name("PEND5")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_PEND5")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x4099]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$679, DW_AT_name("RSVD64")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_RSVD64")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x409a]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$680, DW_AT_name("QMMEMREGR")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_QMMEMREGR")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x5000]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$681, DW_AT_name("RSVD66")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_RSVD66")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x5100]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$682, DW_AT_name("QMQN")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_QMQN")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x6000]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$683, DW_AT_name("RSVD68")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_RSVD68")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x6400]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$684, DW_AT_name("QMQNS")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_QMQNS")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x6800]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegs")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
$C$DW$685	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$130)
$C$DW$686	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$685)
$C$DW$T$131	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$686)
$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x10)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegsOvly")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x48)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$687, DW_AT_name("EBSR")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$688, DW_AT_name("RSVD0")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$689, DW_AT_name("PCGCR1")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$690, DW_AT_name("PCGCR2")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$691, DW_AT_name("PSRCR")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$692, DW_AT_name("PRCR")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$693, DW_AT_name("RSVD1")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$694, DW_AT_name("TIAFR")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$695, DW_AT_name("RSVD2")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$696, DW_AT_name("ODSCR")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$697, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$698, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$699, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$700, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$701, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$702, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$703, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$704, DW_AT_name("CCR1")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$705, DW_AT_name("CCR2")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$706, DW_AT_name("CGCR1")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$707, DW_AT_name("CGCR2")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$708, DW_AT_name("CGCR3")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$709, DW_AT_name("CGCR4")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$710, DW_AT_name("CCSSR")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$711, DW_AT_name("RSVD3")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$712, DW_AT_name("ECDR")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$713, DW_AT_name("RSVD4")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$714, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$715, DW_AT_name("RSVD5")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$716, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$717, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$718, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$719, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$720, DW_AT_name("RSVD6")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$721, DW_AT_name("DMAIFR")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$722, DW_AT_name("DMAIER")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$723, DW_AT_name("USBSCR")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$724, DW_AT_name("ESCR")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$725, DW_AT_name("RSVD7")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$726, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$727, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$728, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$729, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$730, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$731, DW_AT_name("RSVD8")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$732, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$733, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$734, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$735, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$736, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$737, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$738, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$739, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$66

$C$DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
$C$DW$740	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$134)
$C$DW$741	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$740)
$C$DW$T$135	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$741)
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x10)
$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x16)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("maxCurrent")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$743, DW_AT_name("opMode")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$744, DW_AT_name("appSuspendCallBack")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_appSuspendCallBack")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$745, DW_AT_name("appWakeupCallBack")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_appWakeupCallBack")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$746, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$747, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$748, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$749, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$750, DW_AT_name("strDescPtr")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$751, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$752, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$753, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$80

$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_address_class(0x17)

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0xda)
$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$754, DW_AT_name("devNum")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$755, DW_AT_name("opMode")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$756, DW_AT_name("maxCurrent")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$757, DW_AT_name("fInitialized")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$758, DW_AT_name("fSetupPktCmd")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_fSetupPktCmd")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$759, DW_AT_name("fOutPhaseCmd")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_fOutPhaseCmd")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$760, DW_AT_name("fWaitingOnFlagA")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_fWaitingOnFlagA")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$761, DW_AT_name("fWaitingOnFlagB")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_fWaitingOnFlagB")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$762, DW_AT_name("fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$763, DW_AT_name("fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$764, DW_AT_name("pFIFOBaseAddress")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_pFIFOBaseAddress")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$765, DW_AT_name("pInterruptAddr")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_pInterruptAddr")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$766, DW_AT_name("fSendHandshake")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_fSendHandshake")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$767, DW_AT_name("fMUSBIsReady")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_fMUSBIsReady")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$768, DW_AT_name("cbOutEP0Buf")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_cbOutEP0Buf")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$769, DW_AT_name("cbOutEP0DataReceived")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_cbOutEP0DataReceived")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$770, DW_AT_name("dwOutEP0Buf")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_dwOutEP0Buf")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$771, DW_AT_name("fEP0BUFAvailable")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_fEP0BUFAvailable")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$772, DW_AT_name("fEP1InBUFAvailable")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_fEP1InBUFAvailable")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$773, DW_AT_name("dwIntSourceL")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_dwIntSourceL")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$774, DW_AT_name("dwIntSourceH")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_dwIntSourceH")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$775, DW_AT_name("remoteWkpStat")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_remoteWkpStat")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$776, DW_AT_name("busSpeed")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_busSpeed")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$777, DW_AT_name("ep0State")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_ep0State")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$778, DW_AT_name("pEpStatus")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_pEpStatus")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$779, DW_AT_name("cableState")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_cableState")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$780, DW_AT_name("usbSetup")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$781, DW_AT_name("suspendCallBackFxn")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_suspendCallBackFxn")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$782, DW_AT_name("wakeupCallBackFxn")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_wakeupCallBackFxn")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$783, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$784, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$785, DW_AT_name("dwFIFOStartAddr")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_dwFIFOStartAddr")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$786, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$787, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$788, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$789, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$790, DW_AT_name("strDescPtr")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("devAddr")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_devAddr")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$792, DW_AT_name("ctrlOutEpObj")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_ctrlOutEpObj")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$793, DW_AT_name("ctrlInEpObj")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_ctrlInEpObj")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$794, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("curConfigStat")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$796, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$104

$C$DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x17)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevHandle")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbContext")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)

$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x0a)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$797, DW_AT_name("opMode")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$798, DW_AT_name("epNum")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$799, DW_AT_name("xferType")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("maxPktSize")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("eventMask")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$802, DW_AT_name("dblPktBuf")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_dblPktBuf")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$803, DW_AT_name("asyncTxfer")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_asyncTxfer")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$804, DW_AT_name("fxn")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$112

$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
$C$DW$T$143	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_address_class(0x17)

$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x22)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$805, DW_AT_name("epNum")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$806, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$807, DW_AT_name("xferType")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("maxPktSize")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("eventMask")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$810, DW_AT_name("fxn")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$811, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$812, DW_AT_name("fInitialized")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$813, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$814, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$815, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$816, DW_AT_name("hEventHandler")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$817, DW_AT_name("fStalled")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$818, DW_AT_name("pvBuffer")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$819, DW_AT_name("cbBuffer")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$820, DW_AT_name("cbTransferred")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$821, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$822, DW_AT_name("fComplete")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$823, DW_AT_name("ioFlags")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$824, DW_AT_name("hUsbDev")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x17)
$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpHandle")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)

$C$DW$T$103	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x14)
$C$DW$825	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$825, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$103

$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x17)

$C$DW$T$148	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x18)
$C$DW$826	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$826, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$148


$C$DW$T$149	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x220)
$C$DW$827	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$827, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$149


$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x12)
$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$828, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$829, DW_AT_name("xferType")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$830, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$831, DW_AT_name("fInitialized")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$832, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$833, DW_AT_name("pTransfer")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$834, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$835, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$836, DW_AT_name("hEventHandler")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$837, DW_AT_name("fStalled")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$838, DW_AT_name("fSelected")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_fSelected")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$118

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)
$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbEpStatus")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)

$C$DW$T$151	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_byte_size(0xb4)
$C$DW$839	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$839, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$151


$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x06)
$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$840, DW_AT_name("newPacket")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_newPacket")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("bmRequestType")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("bRequest")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("wValue")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("wIndex")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("wLength")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$119

$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$T$152	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$152, DW_AT_address_class(0x17)

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x0e)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$846, DW_AT_name("dwFlags")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_dwFlags")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$847, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$848, DW_AT_name("pvBuffer")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$849, DW_AT_name("cbBuffer")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$850, DW_AT_name("cbTransferred")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$851, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$852, DW_AT_name("fComplete")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$853, DW_AT_name("ioFlags")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$120

$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x17)
$C$DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbTransfer")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)

$C$DW$T$154	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_byte_size(0xa8)
$C$DW$854	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$854, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$154

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("PVOID")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$855	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$69

$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x20)
$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_CALLBACK")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)

$C$DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x20)
$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_EVENT_ISR")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
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
$C$DW$T$163	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
$C$DW$856	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$163)
$C$DW$T$164	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$856)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)

$C$DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$857	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$3)
$C$DW$858	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$77

$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x20)
$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_TRANSFER_CALLBACK")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$184	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbByteCount")
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
$C$DW$T$186	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEventMask")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbFrameNum")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbIoFlags")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
$C$DW$859	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$859)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$860	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$860, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x07)
$C$DW$861	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$861, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$23


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$862	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$862, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0e)
$C$DW$863	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$863, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$26


$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0a)
$C$DW$864	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$864, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$29


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$865	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$865, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$31


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x03)
$C$DW$866	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$866, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$33


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x3a3)
$C$DW$867	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$867, DW_AT_upper_bound(0x3a2)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x04)
$C$DW$868	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$868, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x2e)
$C$DW$869	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$869, DW_AT_upper_bound(0x2d)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x13)
$C$DW$870	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$870, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$38


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x59)
$C$DW$871	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$871, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$41


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0xaaf)
$C$DW$872	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$872, DW_AT_upper_bound(0xaae)
	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x7f7)
$C$DW$873	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$873, DW_AT_upper_bound(0x7f6)
	.dwendtag $C$DW$T$45


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x780)
$C$DW$874	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$874, DW_AT_upper_bound(0x77f)
	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x7fe)
$C$DW$875	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$875, DW_AT_upper_bound(0x7fd)
	.dwendtag $C$DW$T$49


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x1700)
$C$DW$876	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$876, DW_AT_upper_bound(0x16ff)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x16)
$C$DW$877	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$877, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x52)
$C$DW$878	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$878, DW_AT_upper_bound(0x51)
	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0xf66)
$C$DW$879	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$879, DW_AT_upper_bound(0xf65)
	.dwendtag $C$DW$T$55


$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0xf00)
$C$DW$880	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$880, DW_AT_upper_bound(0xeff)
	.dwendtag $C$DW$T$58


$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x400)
$C$DW$881	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$881, DW_AT_upper_bound(0x3ff)
	.dwendtag $C$DW$T$61


$C$DW$T$65	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x05)
$C$DW$882	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$882, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$65

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x40)
$C$DW$883	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$883, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$87

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)

$C$DW$T$99	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x08)
$C$DW$884	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$884, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$99


$C$DW$T$197	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x04)
$C$DW$885	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$885, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$197


$C$DW$T$199	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x08)
$C$DW$886	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$886, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$199

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
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)
$C$DW$887	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$84)
$C$DW$T$201	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$887)
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

$C$DW$888	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$888, DW_AT_location[DW_OP_reg0]
$C$DW$889	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$889, DW_AT_location[DW_OP_reg1]
$C$DW$890	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$890, DW_AT_location[DW_OP_reg2]
$C$DW$891	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$891, DW_AT_location[DW_OP_reg3]
$C$DW$892	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$892, DW_AT_location[DW_OP_reg4]
$C$DW$893	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$893, DW_AT_location[DW_OP_reg5]
$C$DW$894	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$894, DW_AT_location[DW_OP_reg6]
$C$DW$895	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$895, DW_AT_location[DW_OP_reg7]
$C$DW$896	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$896, DW_AT_location[DW_OP_reg8]
$C$DW$897	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$897, DW_AT_location[DW_OP_reg9]
$C$DW$898	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$898, DW_AT_location[DW_OP_reg10]
$C$DW$899	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$899, DW_AT_location[DW_OP_reg11]
$C$DW$900	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$900, DW_AT_location[DW_OP_reg12]
$C$DW$901	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$901, DW_AT_location[DW_OP_reg13]
$C$DW$902	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$902, DW_AT_location[DW_OP_reg14]
$C$DW$903	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$903, DW_AT_location[DW_OP_reg15]
$C$DW$904	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$904, DW_AT_location[DW_OP_reg16]
$C$DW$905	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$905, DW_AT_location[DW_OP_reg17]
$C$DW$906	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$906, DW_AT_location[DW_OP_reg18]
$C$DW$907	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$907, DW_AT_location[DW_OP_reg19]
$C$DW$908	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$908, DW_AT_location[DW_OP_reg20]
$C$DW$909	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$909, DW_AT_location[DW_OP_reg21]
$C$DW$910	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$910, DW_AT_location[DW_OP_reg22]
$C$DW$911	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$911, DW_AT_location[DW_OP_reg23]
$C$DW$912	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$912, DW_AT_location[DW_OP_reg24]
$C$DW$913	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$913, DW_AT_location[DW_OP_reg25]
$C$DW$914	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$914, DW_AT_location[DW_OP_reg26]
$C$DW$915	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$915, DW_AT_location[DW_OP_reg27]
$C$DW$916	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$916, DW_AT_location[DW_OP_reg28]
$C$DW$917	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$917, DW_AT_location[DW_OP_reg29]
$C$DW$918	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$918, DW_AT_location[DW_OP_reg30]
$C$DW$919	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$919, DW_AT_location[DW_OP_reg31]
$C$DW$920	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$920, DW_AT_location[DW_OP_regx 0x20]
$C$DW$921	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$921, DW_AT_location[DW_OP_regx 0x21]
$C$DW$922	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$922, DW_AT_location[DW_OP_regx 0x22]
$C$DW$923	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$923, DW_AT_location[DW_OP_regx 0x23]
$C$DW$924	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$924, DW_AT_location[DW_OP_regx 0x24]
$C$DW$925	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$925, DW_AT_location[DW_OP_regx 0x25]
$C$DW$926	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$926, DW_AT_location[DW_OP_regx 0x26]
$C$DW$927	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$927, DW_AT_location[DW_OP_regx 0x27]
$C$DW$928	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$928, DW_AT_location[DW_OP_regx 0x28]
$C$DW$929	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$929, DW_AT_location[DW_OP_regx 0x29]
$C$DW$930	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$930, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$931	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$931, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$932	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$932, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$933	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$933, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$934	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$934, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$935	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$935, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$936	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$936, DW_AT_location[DW_OP_regx 0x30]
$C$DW$937	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$937, DW_AT_location[DW_OP_regx 0x31]
$C$DW$938	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$938, DW_AT_location[DW_OP_regx 0x32]
$C$DW$939	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$939, DW_AT_location[DW_OP_regx 0x33]
$C$DW$940	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$940, DW_AT_location[DW_OP_regx 0x34]
$C$DW$941	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_regx 0x35]
$C$DW$942	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$942, DW_AT_location[DW_OP_regx 0x36]
$C$DW$943	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$943, DW_AT_location[DW_OP_regx 0x37]
$C$DW$944	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$944, DW_AT_location[DW_OP_regx 0x38]
$C$DW$945	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$945, DW_AT_location[DW_OP_regx 0x39]
$C$DW$946	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$946, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$947	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$947, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$948	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$948, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$949	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$949, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$950	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$950, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$951	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$951, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$952	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$952, DW_AT_location[DW_OP_regx 0x40]
$C$DW$953	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$953, DW_AT_location[DW_OP_regx 0x41]
$C$DW$954	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$954, DW_AT_location[DW_OP_regx 0x42]
$C$DW$955	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$955, DW_AT_location[DW_OP_regx 0x43]
$C$DW$956	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$956, DW_AT_location[DW_OP_regx 0x44]
$C$DW$957	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$957, DW_AT_location[DW_OP_regx 0x45]
$C$DW$958	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$958, DW_AT_location[DW_OP_regx 0x46]
$C$DW$959	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$959, DW_AT_location[DW_OP_regx 0x47]
$C$DW$960	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$960, DW_AT_location[DW_OP_regx 0x48]
$C$DW$961	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$961, DW_AT_location[DW_OP_regx 0x49]
$C$DW$962	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$962, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$963	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$963, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$964	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$964, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$965	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$965, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$966	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$966, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$967	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$967, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$968	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$968, DW_AT_location[DW_OP_regx 0x50]
$C$DW$969	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$969, DW_AT_location[DW_OP_regx 0x51]
$C$DW$970	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$970, DW_AT_location[DW_OP_regx 0x52]
$C$DW$971	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$971, DW_AT_location[DW_OP_regx 0x53]
$C$DW$972	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$972, DW_AT_location[DW_OP_regx 0x54]
$C$DW$973	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$973, DW_AT_location[DW_OP_regx 0x55]
$C$DW$974	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$974, DW_AT_location[DW_OP_regx 0x56]
$C$DW$975	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$975, DW_AT_location[DW_OP_regx 0x57]
$C$DW$976	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$976, DW_AT_location[DW_OP_regx 0x58]
$C$DW$977	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$977, DW_AT_location[DW_OP_regx 0x59]
$C$DW$978	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$978, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$979	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$979, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

