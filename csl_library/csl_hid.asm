;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:57 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_hid.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_bRequest$1+0,24
	.field  	0,8
	.field	0,16			; _bRequest$1 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_USB_init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_open")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_USB_open")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$75)
	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_config")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_USB_config")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$67)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$178)
	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_requestEndpt")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_USB_requestEndpt")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$67)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$142)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_configEndpt")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_USB_configEndpt")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$73)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$183)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_resetDev")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_USB_resetDev")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEvents")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_USB_getEvents")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$73)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$16


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getSetupPacket")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_USB_getSetupPacket")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$67)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$90)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$118)
	.dwendtag $C$DW$19


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_postTransaction")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_USB_postTransaction")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$73)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$3)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$148)
	.dwendtag $C$DW$23


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_stallEndpt")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_USB_stallEndpt")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$73)
	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_clearEndptStall")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_USB_clearEndptStall")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$73)
	.dwendtag $C$DW$30


$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEndptStall")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_USB_getEndptStall")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$73)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$32


$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortAllTransaction")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_USB_abortAllTransaction")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$35


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_connectDev")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_USB_connectDev")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_disconnectDev")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_USB_disconnectDev")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setRemoteWakeup")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$67)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$127)
	.dwendtag $C$DW$41


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getRemoteWakeupStat")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$44


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setDevAddr")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_USB_setDevAddr")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$67)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$46


$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setParams")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_USB_setParams")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$67)
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$187)
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$49


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$235)
$C$DW$55	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$53

$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("usbRegisters")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_usbRegisters")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.global	_input
	.bss	_input,8,0,0
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr _input]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$57, DW_AT_external
	.global	_protocolVal
	.bss	_protocolVal,1,0,0
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("protocolVal")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_protocolVal")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr _protocolVal]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_external
	.global	_idleVal
	.bss	_idleVal,1,0,0
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("idleVal")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_idleVal")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _idleVal]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_external
	.bss	_bRequest$1,1,0,0
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17346Fb2azA 
	.sect	".text"

$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setConfiguration")
	.dwattr $C$DW$60, DW_AT_low_pc(_USB_setConfiguration)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_USB_setConfiguration")
	.dwattr $C$DW$60, DW_AT_TI_begin_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x7f2)
	.dwattr $C$DW$60, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_usbAux.h",line 2036,column 1,is_stmt,address _USB_setConfiguration

	.dwfde $C$DW$CIE, _USB_setConfiguration
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg17]
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("confVal")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_confVal")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]
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
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("confVal")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_confVal")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("saveIndex")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_saveIndex")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |2036| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_usbAux.h",line 2040,column 2,is_stmt
        MOV #0, *SP(#3) ; |2040| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2042,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |2042| 
        BCC $C$L5,AR1 != #0 ; |2042| 
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
        BCC $C$L1,TC1 ; |2058| 
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
$C$L1:    
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
        BCC $C$L2,TC1 ; |2082| 
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
$C$L2:    
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
        BCC $C$L3,TC1 ; |2106| 
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
$C$L3:    
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
        BCC $C$L4,TC1 ; |2130| 
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
$C$L4:    
	.dwpsn	file "./inc/csl_usbAux.h",line 2144,column 3,is_stmt
        MOV *(#_usbRegisters), AR3 ; |2144| 
        MOV #1038, T0 ; |2144| 
        MOV *SP(#3), AR1 ; |2144| 
        MOV AR1, port(*AR3(T0)) ; |2144| 
	.dwpsn	file "./inc/csl_usbAux.h",line 2146,column 1,is_stmt
$C$L5:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$60, DW_AT_TI_end_file("./inc/csl_usbAux.h")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x862)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text"

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqUnknown")
	.dwattr $C$DW$68, DW_AT_low_pc(_HID_reqUnknown)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_HID_reqUnknown")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$68, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./inc/csl_hidAux.h",line 123,column 1,is_stmt,address _HID_reqUnknown

	.dwfde $C$DW$CIE, _HID_reqUnknown
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg17]
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg19]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg21]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg23]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqUnknown                                               *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqUnknown:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 127,column 2,is_stmt
        MOV #1, *SP(#10) ; |127| 
	.dwpsn	file "./inc/csl_hidAux.h",line 129,column 2,is_stmt
        MOV *SP(#10), T0 ; |129| 
	.dwpsn	file "./inc/csl_hidAux.h",line 130,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$68, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x82)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text"

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_lookupReqHandler")
	.dwattr $C$DW$81, DW_AT_low_pc(_HID_lookupReqHandler)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_HID_lookupReqHandler")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$81, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_hidAux.h",line 185,column 1,is_stmt,address _HID_lookupReqHandler

	.dwfde $C$DW$CIE, _HID_lookupReqHandler
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("request")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg12]
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_lookupReqHandler                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_lookupReqHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |185| 
	.dwpsn	file "./inc/csl_hidAux.h",line 189,column 6,is_stmt
        MOV #0, *SP(#4) ; |189| 
	.dwpsn	file "./inc/csl_hidAux.h",line 189,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |189| 
        MOV AC0, AR1 ; |189| 
        AADD AR1, AR3 ; |189| 
        MOV dbl(*AR3(short(#2))), AC0 ; |189| 
        BCC $C$L8,AC0 == #0 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$L6:    
$C$DW$L$_HID_lookupReqHandler$2$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 192,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |192| 
        MOV AC0, T0 ; |192| 
        MOV *SP(#0), AR1 ; |192| 
        MOV *AR3(T0), AR2 ; |192| 
        CMPU AR2 != AR1, TC1 ; |192| 
        BCC $C$L7,TC1 ; |192| 
                                        ; branchcc occurs ; |192| 
$C$DW$L$_HID_lookupReqHandler$2$E:
	.dwpsn	file "./inc/csl_hidAux.h",line 194,column 4,is_stmt
        MOV *SP(#4) << #2, AC0 ; |194| 
        MOV AC0, AR1 ; |194| 
        AADD AR1, AR3 ; |194| 
        MOV dbl(*AR3(short(#2))), AC0 ; |194| 
        B $C$L9   ; |194| 
                                        ; branch occurs ; |194| 
$C$L7:    
$C$DW$L$_HID_lookupReqHandler$4$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 189,column 64,is_stmt
        ADD #1, *SP(#4) ; |189| 
	.dwpsn	file "./inc/csl_hidAux.h",line 189,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |189| 
        MOV AC0, AR1 ; |189| 
        AADD AR1, AR3 ; |189| 
        MOV dbl(*AR3(short(#2))), AC0 ; |189| 
        BCC $C$L6,AC0 != #0 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_HID_lookupReqHandler$4$E:
$C$L8:    
	.dwpsn	file "./inc/csl_hidAux.h",line 201,column 2,is_stmt
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |201| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |201| 
$C$L9:    
	.dwpsn	file "./inc/csl_hidAux.h",line 202,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L6:1:1714639437")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0xbd)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0xc4)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_HID_lookupReqHandler$2$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_HID_lookupReqHandler$2$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_HID_lookupReqHandler$4$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_HID_lookupReqHandler$4$E)
	.dwendtag $C$DW$88

	.dwattr $C$DW$81, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0xca)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"

$C$DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqSetAddress")
	.dwattr $C$DW$91, DW_AT_low_pc(_HID_reqSetAddress)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_HID_reqSetAddress")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$91, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$91, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./inc/csl_hidAux.h",line 263,column 1,is_stmt,address _HID_reqSetAddress

	.dwfde $C$DW$CIE, _HID_reqSetAddress
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg17]
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg19]
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg21]
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg23]
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqSetAddress                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqSetAddress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 264,column 2,is_stmt
        MOV #1042, T0 ; |264| 
        MOV *(#_usbRegisters), AR3 ; |264| 
        MOV port(*AR3(T0)), AR1 ; |264| 
        BCLR @#7, AR1 ; |264| 
        BSET @#7, AR1 ; |264| 
        MOV AR1, port(*AR3(T0)) ; |264| 
	.dwpsn	file "./inc/csl_hidAux.h",line 266,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |266| 
        MOV port(*AR3(T0)), AR1 ; |266| 
        BCLR @#3, AR1 ; |266| 
        BSET @#3, AR1 ; |266| 
        MOV AR1, port(*AR3(T0)) ; |266| 
	.dwpsn	file "./inc/csl_hidAux.h",line 269,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV *AR3(short(#3)), T0 ; |269| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_USB_setDevAddr")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #_USB_setDevAddr ; |269| 
                                        ; call occurs [#_USB_setDevAddr] ; |269| 
	.dwpsn	file "./inc/csl_hidAux.h",line 271,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./inc/csl_hidAux.h",line 272,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$91, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text"

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqGetDescriptor")
	.dwattr $C$DW$104, DW_AT_low_pc(_HID_reqGetDescriptor)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_HID_reqGetDescriptor")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x145)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./inc/csl_hidAux.h",line 330,column 1,is_stmt,address _HID_reqGetDescriptor

	.dwfde $C$DW$CIE, _HID_reqGetDescriptor
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg17]
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg19]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg21]
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg23]
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqGetDescriptor                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR4,XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqGetDescriptor:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("Desc_length")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_Desc_length")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("incrPtr")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_incrPtr")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("inOutFlag")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_inOutFlag")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("destPtr")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_destPtr")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("pHIDClassHdl")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pHIDClassHdl")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 338,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "./inc/csl_hidAux.h",line 339,column 5,is_stmt

        MOV XAR3, dbl(*SP(#18))
||      AADD #2, AR3 ; |339| 

	.dwpsn	file "./inc/csl_hidAux.h",line 340,column 5,is_stmt
        MOV #0, AC0 ; |340| 
        MOV AC0, dbl(*SP(#14))
	.dwpsn	file "./inc/csl_hidAux.h",line 342,column 5,is_stmt
        B $C$L20  ; |342| 
                                        ; branch occurs ; |342| 
$C$L10:    
	.dwpsn	file "./inc/csl_hidAux.h",line 345,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#39))), AR1 ; |345| 
        MOV AR1, *SP(#10) ; |345| 
	.dwpsn	file "./inc/csl_hidAux.h",line 346,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #39, AR3 ; |346| 

	.dwpsn	file "./inc/csl_hidAux.h",line 347,column 14,is_stmt
        MOV #0, *SP(#12) ; |347| 
	.dwpsn	file "./inc/csl_hidAux.h",line 348,column 19,is_stmt
        B $C$L22  ; |348| 
                                        ; branch occurs ; |348| 
$C$L11:    
	.dwpsn	file "./inc/csl_hidAux.h",line 351,column 8,is_stmt
        MOV #12, *SP(#12) ; |351| 
	.dwpsn	file "./inc/csl_hidAux.h",line 352,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#68))), AR1 ; |352| 
        MOV AR1, *SP(#10) ; |352| 
	.dwpsn	file "./inc/csl_hidAux.h",line 353,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #68, AR3 ; |353| 

	.dwpsn	file "./inc/csl_hidAux.h",line 354,column 14,is_stmt
        MOV #0, *SP(#12) ; |354| 
	.dwpsn	file "./inc/csl_hidAux.h",line 356,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |356| 
        MOV *AR3(short(#5)), AR1 ; |356| 
        CMPU AR2 != AR1, TC1 ; |356| 
        BCC $C$L22,TC1 ; |356| 
                                        ; branchcc occurs ; |356| 
	.dwpsn	file "./inc/csl_hidAux.h",line 358,column 17,is_stmt
        OR #0x0001, *SP(#12) ; |358| 
	.dwpsn	file "./inc/csl_hidAux.h",line 360,column 19,is_stmt
        B $C$L22  ; |360| 
                                        ; branch occurs ; |360| 
$C$L12:    
	.dwpsn	file "./inc/csl_hidAux.h",line 363,column 14,is_stmt
        MOV #12, *SP(#12) ; |363| 
	.dwpsn	file "./inc/csl_hidAux.h",line 364,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#60))), AR1 ; |364| 
        MOV AR1, *SP(#10) ; |364| 
	.dwpsn	file "./inc/csl_hidAux.h",line 365,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #59, AR3 ; |365| 

	.dwpsn	file "./inc/csl_hidAux.h",line 367,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |367| 
        MOV *AR3(short(#5)), AR1 ; |367| 
        CMPU AR2 != AR1, TC1 ; |367| 
        BCC $C$L22,TC1 ; |367| 
                                        ; branchcc occurs ; |367| 
	.dwpsn	file "./inc/csl_hidAux.h",line 369,column 17,is_stmt
        OR #0x0001, *SP(#12) ; |369| 
	.dwpsn	file "./inc/csl_hidAux.h",line 371,column 19,is_stmt
        B $C$L22  ; |371| 
                                        ; branch occurs ; |371| 
$C$L13:    
	.dwpsn	file "./inc/csl_hidAux.h",line 374,column 14,is_stmt
        MOV #12, *SP(#12) ; |374| 
	.dwpsn	file "./inc/csl_hidAux.h",line 375,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#460))), AR1 ; |375| 
        MOV AR1, *SP(#10) ; |375| 
	.dwpsn	file "./inc/csl_hidAux.h",line 376,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        AMAR *+AR3(#459) ; |376| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./inc/csl_hidAux.h",line 378,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |378| 
        MOV *AR3(short(#5)), AR1 ; |378| 
        CMPU AR2 != AR1, TC1 ; |378| 
        BCC $C$L22,TC1 ; |378| 
                                        ; branchcc occurs ; |378| 
	.dwpsn	file "./inc/csl_hidAux.h",line 380,column 17,is_stmt
        OR #0x0001, *SP(#12) ; |380| 
	.dwpsn	file "./inc/csl_hidAux.h",line 382,column 19,is_stmt
        B $C$L22  ; |382| 
                                        ; branch occurs ; |382| 
$C$L14:    
	.dwpsn	file "./inc/csl_hidAux.h",line 389,column 4,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |389| 
        MOV dbl(*SP(#18)), XAR3
        SFTL T0, #1 ; |389| 
        MOV dbl(*AR3(#900)), XAR3
        MOV dbl(*AR3(T0)), XAR3
        MOV *AR3, AR1 ; |389| 
        AND #0x00ff, AR1, AC0 ; |389| 
        MOV AC0, *SP(#10) ; |389| 
	.dwpsn	file "./inc/csl_hidAux.h",line 390,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |390| 
        MOV dbl(*SP(#18)), XAR3
        SFTL T0, #1 ; |390| 
        MOV dbl(*AR3(#900)), XAR3
        MOV dbl(*AR3(T0)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./inc/csl_hidAux.h",line 391,column 4,is_stmt
        MOV #0, *SP(#12) ; |391| 
	.dwpsn	file "./inc/csl_hidAux.h",line 392,column 18,is_stmt
        B $C$L22  ; |392| 
                                        ; branch occurs ; |392| 
$C$L15:    
	.dwpsn	file "./inc/csl_hidAux.h",line 395,column 14,is_stmt
        MOV #12, *SP(#12) ; |395| 
	.dwpsn	file "./inc/csl_hidAux.h",line 396,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#67))), AR1 ; |396| 
        MOV AR1, *SP(#10) ; |396| 
	.dwpsn	file "./inc/csl_hidAux.h",line 397,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #67, AR3 ; |397| 

	.dwpsn	file "./inc/csl_hidAux.h",line 398,column 14,is_stmt
        MOV #0, *SP(#12) ; |398| 
	.dwpsn	file "./inc/csl_hidAux.h",line 400,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |400| 
        MOV *AR3(short(#5)), AR1 ; |400| 
        CMPU AR2 != AR1, TC1 ; |400| 
        BCC $C$L22,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
	.dwpsn	file "./inc/csl_hidAux.h",line 402,column 17,is_stmt
        OR #0x0001, *SP(#12) ; |402| 
	.dwpsn	file "./inc/csl_hidAux.h",line 404,column 15,is_stmt
        B $C$L22  ; |404| 
                                        ; branch occurs ; |404| 
$C$L16:    
	.dwpsn	file "./inc/csl_hidAux.h",line 407,column 14,is_stmt
        MOV #12, *SP(#12) ; |407| 
	.dwpsn	file "./inc/csl_hidAux.h",line 408,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#76))), AR1 ; |408| 
        MOV AR1, *SP(#10) ; |408| 
	.dwpsn	file "./inc/csl_hidAux.h",line 409,column 14,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #76, AR3 ; |409| 

	.dwpsn	file "./inc/csl_hidAux.h",line 410,column 14,is_stmt
        MOV #0, *SP(#12) ; |410| 
	.dwpsn	file "./inc/csl_hidAux.h",line 412,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |412| 
        MOV *AR3(short(#5)), AR1 ; |412| 
        CMPU AR2 != AR1, TC1 ; |412| 
        BCC $C$L22,TC1 ; |412| 
                                        ; branchcc occurs ; |412| 
	.dwpsn	file "./inc/csl_hidAux.h",line 414,column 17,is_stmt
        OR #0x0001, *SP(#12) ; |414| 
	.dwpsn	file "./inc/csl_hidAux.h",line 416,column 15,is_stmt
        B $C$L22  ; |416| 
                                        ; branch occurs ; |416| 
$C$L17:    
	.dwpsn	file "./inc/csl_hidAux.h",line 419,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV uns(low_byte(*AR3(#27))), AR1 ; |419| 
        MOV AR1, *SP(#10) ; |419| 
	.dwpsn	file "./inc/csl_hidAux.h",line 420,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#14))
||      AADD #27, AR3 ; |420| 

	.dwpsn	file "./inc/csl_hidAux.h",line 421,column 13,is_stmt
        MOV #0, *SP(#12) ; |421| 
	.dwpsn	file "./inc/csl_hidAux.h",line 422,column 18,is_stmt
        B $C$L22  ; |422| 
                                        ; branch occurs ; |422| 
$C$L18:    
	.dwpsn	file "./inc/csl_hidAux.h",line 425,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3(#906), AR1 ; |425| 
        MOV AR1, *SP(#10) ; |425| 
	.dwpsn	file "./inc/csl_hidAux.h",line 426,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        AMAR *+AR3(#908) ; |426| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./inc/csl_hidAux.h",line 427,column 13,is_stmt
        MOV #0, *SP(#12) ; |427| 
	.dwpsn	file "./inc/csl_hidAux.h",line 428,column 18,is_stmt
        B $C$L22  ; |428| 
                                        ; branch occurs ; |428| 
$C$L19:    
	.dwpsn	file "./inc/csl_hidAux.h",line 431,column 13,is_stmt
        MOV #1, T0
        B $C$L34  ; |431| 
                                        ; branch occurs ; |431| 
$C$L20:    
	.dwpsn	file "./inc/csl_hidAux.h",line 342,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV uns(high_byte(*AR3(short(#3)))), AR1 ; |342| 
||      MOV #5, AR2

        CMP AR1 > AR2, TC1 ; |342| 
        BCC $C$L21,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        CMP AR1 == AR2, TC1 ; |342| 
        BCC $C$L16,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L10,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L12,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L14,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #4, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L15,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        B $C$L19  ; |342| 
                                        ; branch occurs ; |342| 
$C$L21:    
        MOV #6, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L17,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #7, AR2
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L13,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #33, AR2 ; |342| 
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L11,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        MOV #34, AR2 ; |342| 
        CMPU AR1 == AR2, TC1 ; |342| 
        BCC $C$L18,TC1 ; |342| 
                                        ; branchcc occurs ; |342| 
        B $C$L19  ; |342| 
                                        ; branch occurs ; |342| 
$C$L22:    
	.dwpsn	file "./inc/csl_hidAux.h",line 434,column 2,is_stmt
        MOV *SP(#10), AR1 ; |434| 
        BCC $C$L23,AR1 != #0 ; |434| 
                                        ; branchcc occurs ; |434| 
	.dwpsn	file "./inc/csl_hidAux.h",line 436,column 3,is_stmt
        MOV #1, T0
        B $C$L34  ; |436| 
                                        ; branch occurs ; |436| 
$C$L23:    
	.dwpsn	file "./inc/csl_hidAux.h",line 438,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR2 ; |438| 
        CMPU AR2 > AR1, TC1 ; |438| 
        BCC $C$L24,TC1 ; |438| 
                                        ; branchcc occurs ; |438| 
        MOV #64, AR2 ; |438| 
        CMPU AR1 > AR2, TC1 ; |438| 
        BCC $C$L24,TC1 ; |438| 
                                        ; branchcc occurs ; |438| 
	.dwpsn	file "./inc/csl_hidAux.h",line 440,column 3,is_stmt
        MOV *AR3(short(#5)), T0 ; |440| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#14)), XAR1
        MOV #128, T1 ; |440| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$121, DW_AT_TI_call
        CALL #_USB_postTransaction ; |440| 
                                        ; call occurs [#_USB_postTransaction] ; |440| 
	.dwpsn	file "./inc/csl_hidAux.h",line 443,column 2,is_stmt
        B $C$L33  ; |443| 
                                        ; branch occurs ; |443| 
$C$L24:    
	.dwpsn	file "./inc/csl_hidAux.h",line 444,column 10,is_stmt
        MOV *AR3(short(#5)), AR2 ; |444| 
        CMPU AR2 <= AR1, TC1 ; |444| 
        BCC $C$L25,TC1 ; |444| 
                                        ; branchcc occurs ; |444| 
        MOV #64, AR2 ; |444| 
        CMPU AR1 > AR2, TC1 ; |444| 
        BCC $C$L25,TC1 ; |444| 
                                        ; branchcc occurs ; |444| 
	.dwpsn	file "./inc/csl_hidAux.h",line 446,column 3,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#14)), XAR1
        MOV #128, T1 ; |446| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #_USB_postTransaction ; |446| 
                                        ; call occurs [#_USB_postTransaction] ; |446| 
	.dwpsn	file "./inc/csl_hidAux.h",line 449,column 2,is_stmt
        B $C$L33  ; |449| 
                                        ; branch occurs ; |449| 
$C$L25:    
	.dwpsn	file "./inc/csl_hidAux.h",line 450,column 10,is_stmt
        MOV #64, AR2 ; |450| 
        MOV *AR3(short(#5)), AR1 ; |450| 
        CMPU AR1 > AR2, TC1 ; |450| 
        BCC $C$L26,TC1 ; |450| 
                                        ; branchcc occurs ; |450| 
        MOV *SP(#10), AR1 ; |450| 
        CMPU AR1 <= AR2, TC1 ; |450| 
        BCC $C$L26,TC1 ; |450| 
                                        ; branchcc occurs ; |450| 
	.dwpsn	file "./inc/csl_hidAux.h",line 452,column 3,is_stmt
        MOV *AR3(short(#5)), T0 ; |452| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#14)), XAR1
        MOV #128, T1 ; |452| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_USB_postTransaction ; |452| 
                                        ; call occurs [#_USB_postTransaction] ; |452| 
	.dwpsn	file "./inc/csl_hidAux.h",line 455,column 2,is_stmt
        B $C$L33  ; |455| 
                                        ; branch occurs ; |455| 
$C$L26:    
	.dwpsn	file "./inc/csl_hidAux.h",line 456,column 10,is_stmt
        MOV *AR3(short(#5)), AR1 ; |456| 
        CMPU AR1 <= AR2, TC1 ; |456| 
        BCC $C$L32,TC1 ; |456| 
                                        ; branchcc occurs ; |456| 
        MOV *SP(#10), AR1 ; |456| 
        CMPU AR1 <= AR2, TC1 ; |456| 
        BCC $C$L32,TC1 ; |456| 
                                        ; branchcc occurs ; |456| 
	.dwpsn	file "./inc/csl_hidAux.h",line 458,column 3,is_stmt
        MOV #0, *SP(#11) ; |458| 
	.dwpsn	file "./inc/csl_hidAux.h",line 459,column 3,is_stmt
        MOV #128, T1 ; |459| 
        MOV #64, T0 ; |459| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#14)), XAR1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$124, DW_AT_TI_call
        CALL #_USB_postTransaction ; |459| 
                                        ; call occurs [#_USB_postTransaction] ; |459| 
	.dwpsn	file "./inc/csl_hidAux.h",line 463,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR1 ; |463| 
        MOV *AR3(short(#5)), AR2 ; |463| 
        CMPU AR2 <= AR1, TC1 ; |463| 
        BCC $C$L27,TC1 ; |463| 
                                        ; branchcc occurs ; |463| 
	.dwpsn	file "./inc/csl_hidAux.h",line 465,column 4,is_stmt
        SUB #64, *SP(#10) ; |465| 
	.dwpsn	file "./inc/csl_hidAux.h",line 466,column 3,is_stmt
        B $C$L28  ; |466| 
                                        ; branch occurs ; |466| 
$C$L27:    
	.dwpsn	file "./inc/csl_hidAux.h",line 469,column 4,is_stmt
        MOV *AR3(short(#5)), AR1 ; |469| 
        SUB #64, AR1, AR1 ; |469| 
        MOV AR1, *SP(#10) ; |469| 
$C$L28:    
	.dwpsn	file "./inc/csl_hidAux.h",line 472,column 3,is_stmt
        MOV #64, *SP(#11) ; |472| 
	.dwpsn	file "./inc/csl_hidAux.h",line 474,column 10,is_stmt
        MOV *SP(#10), AR1 ; |474| 
        BCC $C$L33,AR1 == #0 ; |474| 
                                        ; branchcc occurs ; |474| 
$C$L29:    
$C$DW$L$_HID_reqGetDescriptor$48$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 476,column 4,is_stmt
        MOV #64, AR2 ; |476| 
        CMPU AR1 <= AR2, TC1 ; |476| 
        BCC $C$L30,TC1 ; |476| 
                                        ; branchcc occurs ; |476| 
$C$DW$L$_HID_reqGetDescriptor$48$E:
$C$DW$L$_HID_reqGetDescriptor$49$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 478,column 5,is_stmt
        MOV *SP(#11), AR2 ; |478| 
        MOV dbl(*SP(#14)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV #128, T1 ; |478| 
        MOV #64, T0 ; |478| 
        AADD AR2, AR1 ; |478| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$125, DW_AT_TI_call
        CALL #_USB_postTransaction ; |478| 
                                        ; call occurs [#_USB_postTransaction] ; |478| 
	.dwpsn	file "./inc/csl_hidAux.h",line 481,column 5,is_stmt
        ADD #64, *SP(#11) ; |481| 
	.dwpsn	file "./inc/csl_hidAux.h",line 482,column 5,is_stmt
        SUB #64, *SP(#10) ; |482| 
	.dwpsn	file "./inc/csl_hidAux.h",line 483,column 4,is_stmt
        B $C$L31  ; |483| 
                                        ; branch occurs ; |483| 
$C$DW$L$_HID_reqGetDescriptor$49$E:
$C$L30:    
$C$DW$L$_HID_reqGetDescriptor$50$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 486,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR1
        MOV *SP(#11), AR2 ; |486| 
        MOV dbl(*SP(#4)), XAR0
        MOV #128, T1 ; |486| 

        AADD AR2, AR1 ; |486| 
||      MOV *SP(#10), T0 ; |486| 

$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$126, DW_AT_TI_call
        CALL #_USB_postTransaction ; |486| 
                                        ; call occurs [#_USB_postTransaction] ; |486| 
	.dwpsn	file "./inc/csl_hidAux.h",line 489,column 5,is_stmt
        MOV #0, *SP(#10) ; |489| 
$C$DW$L$_HID_reqGetDescriptor$50$E:
$C$L31:    
$C$DW$L$_HID_reqGetDescriptor$51$B:
	.dwpsn	file "./inc/csl_hidAux.h",line 474,column 10,is_stmt
        MOV *SP(#10), AR1 ; |474| 
        BCC $C$L29,AR1 != #0 ; |474| 
                                        ; branchcc occurs ; |474| 
$C$DW$L$_HID_reqGetDescriptor$51$E:
	.dwpsn	file "./inc/csl_hidAux.h",line 492,column 2,is_stmt
        B $C$L33  ; |492| 
                                        ; branch occurs ; |492| 
$C$L32:    
	.dwpsn	file "./inc/csl_hidAux.h",line 495,column 3,is_stmt
        MOV #1, T0
        B $C$L34  ; |495| 
                                        ; branch occurs ; |495| 
$C$L33:    
	.dwpsn	file "./inc/csl_hidAux.h",line 498,column 5,is_stmt
        MOV #3, T0
$C$L34:    
	.dwpsn	file "./inc/csl_hidAux.h",line 499,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$128	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$128, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L29:1:1714639437")
	.dwattr $C$DW$128, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x1da)
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x1eb)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_HID_reqGetDescriptor$48$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_HID_reqGetDescriptor$48$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_HID_reqGetDescriptor$49$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_HID_reqGetDescriptor$49$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_HID_reqGetDescriptor$50$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_HID_reqGetDescriptor$50$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$_HID_reqGetDescriptor$51$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$_HID_reqGetDescriptor$51$E)
	.dwendtag $C$DW$128

	.dwattr $C$DW$104, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x1f3)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"

$C$DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqSetConfiguration")
	.dwattr $C$DW$133, DW_AT_low_pc(_HID_reqSetConfiguration)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_HID_reqSetConfiguration")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$133, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0x22c)
	.dwattr $C$DW$133, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./inc/csl_hidAux.h",line 561,column 1,is_stmt,address _HID_reqSetConfiguration

	.dwfde $C$DW$CIE, _HID_reqSetConfiguration
$C$DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg17]
$C$DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg19]
$C$DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg21]
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg23]
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqSetConfiguration                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqSetConfiguration:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 567,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./inc/csl_hidAux.h",line 568,column 2,is_stmt

        MOV XAR3, dbl(*SP(#14))
||      AADD #2, AR3 ; |568| 

	.dwpsn	file "./inc/csl_hidAux.h",line 570,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |570| 
        BCC $C$L35,AR1 == #0 ; |570| 
                                        ; branchcc occurs ; |570| 
        CMP *AR3(short(#3)) == #1, TC1 ; |570| 
        BCC $C$L36,!TC1 ; |570| 
                                        ; branchcc occurs ; |570| 
$C$L35:    
	.dwpsn	file "./inc/csl_hidAux.h",line 572,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |572| 
        MOV dbl(*SP(#14)), XAR3
        MOV AR1, *AR3(#888) ; |572| 
	.dwpsn	file "./inc/csl_hidAux.h",line 574,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV *AR3(short(#3)), T0 ; |574| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_USB_setConfiguration")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_USB_setConfiguration ; |574| 
                                        ; call occurs [#_USB_setConfiguration] ; |574| 
	.dwpsn	file "./inc/csl_hidAux.h",line 576,column 3,is_stmt
        MOV #2, *SP(#10) ; |576| 
	.dwpsn	file "./inc/csl_hidAux.h",line 577,column 2,is_stmt
        B $C$L37  ; |577| 
                                        ; branch occurs ; |577| 
$C$L36:    
	.dwpsn	file "./inc/csl_hidAux.h",line 581,column 3,is_stmt
        MOV #1, *SP(#10) ; |581| 
$C$L37:    
	.dwpsn	file "./inc/csl_hidAux.h",line 584,column 2,is_stmt
        MOV *SP(#10), T0 ; |584| 
	.dwpsn	file "./inc/csl_hidAux.h",line 585,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$133, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x249)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text"

$C$DW$149	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqClearFeature")
	.dwattr $C$DW$149, DW_AT_low_pc(_HID_reqClearFeature)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_HID_reqClearFeature")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$149, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x282)
	.dwattr $C$DW$149, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./inc/csl_hidAux.h",line 647,column 1,is_stmt,address _HID_reqClearFeature

	.dwfde $C$DW$CIE, _HID_reqClearFeature
$C$DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg17]
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg19]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg21]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg23]
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqClearFeature                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqClearFeature:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("hEPx")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_hEPx")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 651,column 2,is_stmt
        MOV #2, *SP(#10) ; |651| 
	.dwpsn	file "./inc/csl_hidAux.h",line 653,column 2,is_stmt
        B $C$L41  ; |653| 
                                        ; branch occurs ; |653| 
$C$L38:    
	.dwpsn	file "./inc/csl_hidAux.h",line 656,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./inc/csl_hidAux.h",line 657,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_USB_clearEndptStall")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_USB_clearEndptStall ; |657| 
                                        ; call occurs [#_USB_clearEndptStall] ; |657| 
	.dwpsn	file "./inc/csl_hidAux.h",line 658,column 9,is_stmt
        B $C$L42  ; |658| 
                                        ; branch occurs ; |658| 
$C$L39:    
	.dwpsn	file "./inc/csl_hidAux.h",line 661,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$163, DW_AT_TI_call

        CALL #_USB_setRemoteWakeup ; |661| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setRemoteWakeup] ; |661| 
	.dwpsn	file "./inc/csl_hidAux.h",line 662,column 10,is_stmt
        B $C$L42  ; |662| 
                                        ; branch occurs ; |662| 
$C$L40:    
	.dwpsn	file "./inc/csl_hidAux.h",line 666,column 4,is_stmt
        MOV #1, *SP(#10) ; |666| 
	.dwpsn	file "./inc/csl_hidAux.h",line 667,column 9,is_stmt
        B $C$L42  ; |667| 
                                        ; branch occurs ; |667| 
$C$L41:    
	.dwpsn	file "./inc/csl_hidAux.h",line 653,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |653| 
        BCC $C$L38,AR1 == #0 ; |653| 
                                        ; branchcc occurs ; |653| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |653| 
        BCC $C$L39,TC1 ; |653| 
                                        ; branchcc occurs ; |653| 
        B $C$L40  ; |653| 
                                        ; branch occurs ; |653| 
$C$L42:    
	.dwpsn	file "./inc/csl_hidAux.h",line 670,column 2,is_stmt
        MOV *SP(#10), T0 ; |670| 
	.dwpsn	file "./inc/csl_hidAux.h",line 671,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$149, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x29f)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$149

	.sect	".text"

$C$DW$165	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqGetStatus")
	.dwattr $C$DW$165, DW_AT_low_pc(_HID_reqGetStatus)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_HID_reqGetStatus")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x2d8)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./inc/csl_hidAux.h",line 733,column 1,is_stmt,address _HID_reqGetStatus

	.dwfde $C$DW$CIE, _HID_reqGetStatus
$C$DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg17]
$C$DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg19]
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg21]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg23]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqGetStatus                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,   *
;*                        XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (19 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqGetStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("hEPx")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_hEPx")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 740,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./inc/csl_hidAux.h",line 741,column 2,is_stmt

        MOV XAR3, dbl(*SP(#14))
||      AADD #2, AR3 ; |741| 

	.dwpsn	file "./inc/csl_hidAux.h",line 742,column 2,is_stmt
        MOV #3, *SP(#10) ; |742| 
	.dwpsn	file "./inc/csl_hidAux.h",line 744,column 2,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV #0, *AR3(#889) ; |744| 
	.dwpsn	file "./inc/csl_hidAux.h",line 746,column 2,is_stmt
        B $C$L47  ; |746| 
                                        ; branch occurs ; |746| 
$C$L43:    
	.dwpsn	file "./inc/csl_hidAux.h",line 750,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_USB_getRemoteWakeupStat")
	.dwattr $C$DW$181, DW_AT_TI_call
        CALL #_USB_getRemoteWakeupStat ; |750| 
                                        ; call occurs [#_USB_getRemoteWakeupStat] ; |750| 
        MOV dbl(*SP(#14)), XAR3
        MOV T0, AC0 ; |750| 
        SFTL AC0, #1, AC0 ; |750| 
        MOV AC0, *AR3(#889) ; |750| 
	.dwpsn	file "./inc/csl_hidAux.h",line 753,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR1
        MOV #0, T1
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR1(#889) ; |753| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$182, DW_AT_TI_call

        CALL #_USB_postTransaction ; |753| 
||      MOV #2, T0

                                        ; call occurs [#_USB_postTransaction] ; |753| 
	.dwpsn	file "./inc/csl_hidAux.h",line 755,column 9,is_stmt
        B $C$L48  ; |755| 
                                        ; branch occurs ; |755| 
$C$L44:    
	.dwpsn	file "./inc/csl_hidAux.h",line 760,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV #0, *AR3(#889) ; |760| 
	.dwpsn	file "./inc/csl_hidAux.h",line 761,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR1
        MOV #2, T0
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR1(#889) ; |761| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$183, DW_AT_TI_call

        CALL #_USB_postTransaction ; |761| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |761| 
	.dwpsn	file "./inc/csl_hidAux.h",line 763,column 9,is_stmt
        B $C$L48  ; |763| 
                                        ; branch occurs ; |763| 
$C$L45:    
	.dwpsn	file "./inc/csl_hidAux.h",line 767,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "./inc/csl_hidAux.h",line 768,column 4,is_stmt
        AMAR *SP(#18), XAR1
        MOV dbl(*SP(#16)), XAR0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_USB_getEndptStall")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_USB_getEndptStall ; |768| 
                                        ; call occurs [#_USB_getEndptStall] ; |768| 
        MOV dbl(*SP(#14)), XAR3
        MOV T0, *AR3(#889) ; |768| 
	.dwpsn	file "./inc/csl_hidAux.h",line 770,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR1
        MOV #0, T1
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR1(#889) ; |770| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$185, DW_AT_TI_call

        CALL #_USB_postTransaction ; |770| 
||      MOV #2, T0

                                        ; call occurs [#_USB_postTransaction] ; |770| 
	.dwpsn	file "./inc/csl_hidAux.h",line 772,column 9,is_stmt
        B $C$L48  ; |772| 
                                        ; branch occurs ; |772| 
$C$L46:    
	.dwpsn	file "./inc/csl_hidAux.h",line 776,column 4,is_stmt
        MOV #1, *SP(#10) ; |776| 
	.dwpsn	file "./inc/csl_hidAux.h",line 777,column 9,is_stmt
        B $C$L48  ; |777| 
                                        ; branch occurs ; |777| 
$C$L47:    
	.dwpsn	file "./inc/csl_hidAux.h",line 746,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |746| 
        SUB #128, AR1, AR1 ; |746| 
        BCC $C$L43,AR1 == #0 ; |746| 
                                        ; branchcc occurs ; |746| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |746| 
        BCC $C$L44,TC1 ; |746| 
                                        ; branchcc occurs ; |746| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |746| 
        BCC $C$L45,TC1 ; |746| 
                                        ; branchcc occurs ; |746| 
        B $C$L46  ; |746| 
                                        ; branch occurs ; |746| 
$C$L48:    
	.dwpsn	file "./inc/csl_hidAux.h",line 780,column 2,is_stmt
        MOV *SP(#10), T0 ; |780| 
	.dwpsn	file "./inc/csl_hidAux.h",line 781,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$165, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x30d)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text"

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqSetFeature")
	.dwattr $C$DW$187, DW_AT_low_pc(_HID_reqSetFeature)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_HID_reqSetFeature")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$187, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x346)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./inc/csl_hidAux.h",line 843,column 1,is_stmt,address _HID_reqSetFeature

	.dwfde $C$DW$CIE, _HID_reqSetFeature
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg17]
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg19]
$C$DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg21]
$C$DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg23]
$C$DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqSetFeature                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqSetFeature:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("hEPx")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_hEPx")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 847,column 2,is_stmt
        MOV #2, *SP(#10) ; |847| 
	.dwpsn	file "./inc/csl_hidAux.h",line 849,column 2,is_stmt
        B $C$L52  ; |849| 
                                        ; branch occurs ; |849| 
$C$L49:    
	.dwpsn	file "./inc/csl_hidAux.h",line 853,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#202)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./inc/csl_hidAux.h",line 854,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |854| 
                                        ; call occurs [#_USB_stallEndpt] ; |854| 
	.dwpsn	file "./inc/csl_hidAux.h",line 855,column 9,is_stmt
        B $C$L53  ; |855| 
                                        ; branch occurs ; |855| 
$C$L50:    
	.dwpsn	file "./inc/csl_hidAux.h",line 858,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_USB_setRemoteWakeup")
	.dwattr $C$DW$201, DW_AT_TI_call

        CALL #_USB_setRemoteWakeup ; |858| 
||      MOV #1, T0

                                        ; call occurs [#_USB_setRemoteWakeup] ; |858| 
	.dwpsn	file "./inc/csl_hidAux.h",line 859,column 9,is_stmt
        B $C$L53  ; |859| 
                                        ; branch occurs ; |859| 
$C$L51:    
	.dwpsn	file "./inc/csl_hidAux.h",line 863,column 4,is_stmt
        MOV #1, *SP(#10) ; |863| 
	.dwpsn	file "./inc/csl_hidAux.h",line 864,column 9,is_stmt
        B $C$L53  ; |864| 
                                        ; branch occurs ; |864| 
$C$L52:    
	.dwpsn	file "./inc/csl_hidAux.h",line 849,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |849| 
        BCC $C$L49,AR1 == #0 ; |849| 
                                        ; branchcc occurs ; |849| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |849| 
        BCC $C$L50,TC1 ; |849| 
                                        ; branchcc occurs ; |849| 
        B $C$L51  ; |849| 
                                        ; branch occurs ; |849| 
$C$L53:    
	.dwpsn	file "./inc/csl_hidAux.h",line 867,column 3,is_stmt
        MOV *SP(#10), T0 ; |867| 
	.dwpsn	file "./inc/csl_hidAux.h",line 868,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$187, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x364)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text"

$C$DW$203	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqGetConfiguration")
	.dwattr $C$DW$203, DW_AT_low_pc(_HID_reqGetConfiguration)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_HID_reqGetConfiguration")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$203, DW_AT_TI_begin_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$203, DW_AT_TI_begin_line(0x39c)
	.dwattr $C$DW$203, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./inc/csl_hidAux.h",line 929,column 1,is_stmt,address _HID_reqGetConfiguration

	.dwfde $C$DW$CIE, _HID_reqGetConfiguration
$C$DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg17]
$C$DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg19]
$C$DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg21]
$C$DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg23]
$C$DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqGetConfiguration                                      *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqGetConfiguration:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_hidAux.h",line 933,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "./inc/csl_hidAux.h",line 934,column 2,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |934| 

	.dwpsn	file "./inc/csl_hidAux.h",line 937,column 2,is_stmt
        MOV *AR3(#888), AR1 ; |937| 
        MOV AR1, *AR3(#889) ; |937| 
	.dwpsn	file "./inc/csl_hidAux.h",line 938,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV #128, T1 ; |938| 
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR1(#889) ; |938| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$216, DW_AT_TI_call

        CALL #_USB_postTransaction ; |938| 
||      MOV #1, T0

                                        ; call occurs [#_USB_postTransaction] ; |938| 
	.dwpsn	file "./inc/csl_hidAux.h",line 941,column 2,is_stmt
        MOV #3, T0
	.dwpsn	file "./inc/csl_hidAux.h",line 942,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$203, DW_AT_TI_end_file("./inc/csl_hidAux.h")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x3ae)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text"
	.global	_HID_Open

$C$DW$218	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_Open")
	.dwattr $C$DW$218, DW_AT_low_pc(_HID_Open)
	.dwattr $C$DW$218, DW_AT_high_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_HID_Open")
	.dwattr $C$DW$218, DW_AT_external
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$218, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$218, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$218, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "src/csl_hid.c",line 113,column 1,is_stmt,address _HID_Open

	.dwfde $C$DW$CIE, _HID_Open
$C$DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg17]
$C$DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbConfig")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: HID_Open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (18 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_Open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("eventMask")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("usbEpConfig")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_usbEpConfig")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_hid.c",line 119,column 5,is_stmt
        MOV #0, *SP(#8) ; |119| 
	.dwpsn	file "src/csl_hid.c",line 120,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_hid.c",line 122,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L61,AC0 == #0 ; |122| 
                                        ; branchcc occurs ; |122| 
	.dwpsn	file "src/csl_hid.c",line 124,column 3,is_stmt
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_USB_init")
	.dwattr $C$DW$227, DW_AT_TI_call
        CALL #_USB_init ; |124| 
                                        ; call occurs [#_USB_init] ; |124| 
	.dwpsn	file "src/csl_hid.c",line 126,column 3,is_stmt
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_USB_open")
	.dwattr $C$DW$228, DW_AT_TI_call

        CALL #_USB_open ; |126| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |126| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_hid.c",line 127,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |127| 

        CMPU AC1 != AC0, TC1 ; |127| 
        BCC $C$L54,TC1 ; |127| 
                                        ; branchcc occurs ; |127| 
	.dwpsn	file "src/csl_hid.c",line 129,column 4,is_stmt
        MOV #-5, T0
        B $C$L63  ; |129| 
                                        ; branch occurs ; |129| 
$C$L54:    
	.dwpsn	file "src/csl_hid.c",line 132,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_USB_config")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #_USB_config ; |132| 
                                        ; call occurs [#_USB_config] ; |132| 
        MOV T0, *SP(#8) ; |132| 
	.dwpsn	file "src/csl_hid.c",line 133,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |133| 
        BCC $C$L63,!TC1 ; |133| 
                                        ; branchcc occurs ; |133| 
	.dwpsn	file "src/csl_hid.c",line 135,column 4,is_stmt
	.dwpsn	file "src/csl_hid.c",line 138,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #_USB_resetDev ; |138| 
                                        ; call occurs [#_USB_resetDev] ; |138| 
        MOV T0, *SP(#8) ; |138| 
	.dwpsn	file "src/csl_hid.c",line 139,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L55,AR1 == #0 ; |139| 
                                        ; branchcc occurs ; |139| 
	.dwpsn	file "src/csl_hid.c",line 141,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |141| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_printf")
	.dwattr $C$DW$231, DW_AT_TI_call
        CALL #_printf ; |141| 
                                        ; call occurs [#_printf] ; |141| 
	.dwpsn	file "src/csl_hid.c",line 142,column 4,is_stmt
        MOV *SP(#8), T0 ; |142| 
        B $C$L63  ; |142| 
                                        ; branch occurs ; |142| 
$C$L55:    
	.dwpsn	file "src/csl_hid.c",line 146,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |146| 
        BCC $C$L56,AR1 == #0 ; |146| 
                                        ; branchcc occurs ; |146| 
	.dwpsn	file "src/csl_hid.c",line 148,column 13,is_stmt
        MOV *AR3(short(#4)), AR1 ; |148| 
        MOV dbl(*SP(#6)), XAR3
        SUB #1, AR1 ; |148| 
        MOV AR1, *AR3(#1204) ; |148| 
$C$L56:    
	.dwpsn	file "src/csl_hid.c",line 151,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(short(#4)) ; |151| 
	.dwpsn	file "src/csl_hid.c",line 154,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#8) ; |154| 
	.dwpsn	file "src/csl_hid.c",line 155,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#890) ; |155| 
	.dwpsn	file "src/csl_hid.c",line 158,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(#8)), XAR3
        MOV XAR3, dbl(*AR2(#902))
	.dwpsn	file "src/csl_hid.c",line 159,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(#12)), XAR3
        MOV XAR3, dbl(*AR2(#904))
	.dwpsn	file "src/csl_hid.c",line 162,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, dbl(*AR2(#950))
	.dwpsn	file "src/csl_hid.c",line 165,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR0
        AMAR *+AR0(#948) ; |165| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_HID_initVal")
	.dwattr $C$DW$232, DW_AT_TI_call
        CALL #_HID_initVal ; |165| 
                                        ; call occurs [#_HID_initVal] ; |165| 
	.dwpsn	file "src/csl_hid.c",line 167,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #948, T0 ; |167| 
        MOV dbl(*SP(#6)), XAR2
        AADD #18, AR3 ; |167| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |167| 
	.dwpsn	file "src/csl_hid.c",line 170,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |170| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(#45) ; |170| 
	.dwpsn	file "src/csl_hid.c",line 171,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |171| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(#46) ; |171| 
	.dwpsn	file "src/csl_hid.c",line 174,column 9,is_stmt
        MOV #61, *SP(#9) ; |174| 
	.dwpsn	file "src/csl_hid.c",line 187,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$233, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |187| 
||      MOV #0, T0

                                        ; call occurs [#_USB_requestEndpt] ; |187| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "src/csl_hid.c",line 188,column 3,is_stmt

        MOV *SP(#8), AR1 ; |188| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |188| 
        BCC $C$L57,TC1 ; |188| 
                                        ; branchcc occurs ; |188| 
	.dwpsn	file "src/csl_hid.c",line 190,column 4,is_stmt
        MOV AR1, T0
        B $C$L63  ; |190| 
                                        ; branch occurs ; |190| 
$C$L57:    
	.dwpsn	file "src/csl_hid.c",line 193,column 3,is_stmt
        MOV #0, *SP(#10) ; |193| 
	.dwpsn	file "src/csl_hid.c",line 194,column 3,is_stmt
        MOV #0, *SP(#11) ; |194| 
	.dwpsn	file "src/csl_hid.c",line 195,column 3,is_stmt
        MOV #0, *SP(#12) ; |195| 
	.dwpsn	file "src/csl_hid.c",line 196,column 3,is_stmt
        MOV #64, *SP(#13) ; |196| 
	.dwpsn	file "src/csl_hid.c",line 197,column 3,is_stmt
        MOV *SP(#9), AR1 ; |197| 
        MOV AR1, *SP(#14) ; |197| 
	.dwpsn	file "src/csl_hid.c",line 198,column 3,is_stmt
        MOV #0, *SP(#15) ; |198| 
	.dwpsn	file "src/csl_hid.c",line 199,column 3,is_stmt
        MOV #0, *SP(#16) ; |199| 
	.dwpsn	file "src/csl_hid.c",line 200,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#14)), AC0 ; |200| 
        MOV AC0, dbl(*SP(#18)) ; |200| 
	.dwpsn	file "src/csl_hid.c",line 202,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #_USB_configEndpt ; |202| 
                                        ; call occurs [#_USB_configEndpt] ; |202| 
        MOV T0, *SP(#8) ; |202| 
	.dwpsn	file "src/csl_hid.c",line 204,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |204| 
        BCC $C$L63,!TC1 ; |204| 
                                        ; branchcc occurs ; |204| 
	.dwpsn	file "src/csl_hid.c",line 206,column 4,is_stmt
	.dwpsn	file "src/csl_hid.c",line 220,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$235, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |220| 
||      MOV #8, T0

                                        ; call occurs [#_USB_requestEndpt] ; |220| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_hid.c",line 221,column 3,is_stmt

        MOV *SP(#8), AR1 ; |221| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |221| 
        BCC $C$L58,TC1 ; |221| 
                                        ; branchcc occurs ; |221| 
	.dwpsn	file "src/csl_hid.c",line 223,column 4,is_stmt
        MOV AR1, T0
        B $C$L63  ; |223| 
                                        ; branch occurs ; |223| 
$C$L58:    
	.dwpsn	file "src/csl_hid.c",line 226,column 3,is_stmt
        MOV #0, *SP(#10) ; |226| 
	.dwpsn	file "src/csl_hid.c",line 227,column 3,is_stmt
        MOV #8, *SP(#11) ; |227| 
	.dwpsn	file "src/csl_hid.c",line 228,column 3,is_stmt
        MOV #0, *SP(#12) ; |228| 
	.dwpsn	file "src/csl_hid.c",line 229,column 3,is_stmt
        MOV #64, *SP(#13) ; |229| 
	.dwpsn	file "src/csl_hid.c",line 230,column 3,is_stmt
        MOV #32, *SP(#14) ; |230| 
	.dwpsn	file "src/csl_hid.c",line 231,column 3,is_stmt
        MOV #0, *SP(#15) ; |231| 
	.dwpsn	file "src/csl_hid.c",line 232,column 3,is_stmt
        MOV #0, *SP(#16) ; |232| 
	.dwpsn	file "src/csl_hid.c",line 233,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#14)), AC0 ; |233| 
        MOV AC0, dbl(*SP(#18)) ; |233| 
	.dwpsn	file "src/csl_hid.c",line 235,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #_USB_configEndpt ; |235| 
                                        ; call occurs [#_USB_configEndpt] ; |235| 
        MOV T0, *SP(#8) ; |235| 
	.dwpsn	file "src/csl_hid.c",line 237,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |237| 
        BCC $C$L63,!TC1 ; |237| 
                                        ; branchcc occurs ; |237| 
	.dwpsn	file "src/csl_hid.c",line 239,column 4,is_stmt
	.dwpsn	file "src/csl_hid.c",line 253,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$237, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |253| 
||      MOV #1, T0

                                        ; call occurs [#_USB_requestEndpt] ; |253| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(#1202))
	.dwpsn	file "src/csl_hid.c",line 254,column 3,is_stmt

        MOV *SP(#8), AR1 ; |254| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |254| 
        BCC $C$L59,TC1 ; |254| 
                                        ; branchcc occurs ; |254| 
	.dwpsn	file "src/csl_hid.c",line 256,column 4,is_stmt
        MOV AR1, T0
        B $C$L63  ; |256| 
                                        ; branch occurs ; |256| 
$C$L59:    
	.dwpsn	file "src/csl_hid.c",line 259,column 3,is_stmt
        MOV #0, *SP(#10) ; |259| 
	.dwpsn	file "src/csl_hid.c",line 260,column 3,is_stmt
        MOV #1, *SP(#11) ; |260| 
	.dwpsn	file "src/csl_hid.c",line 261,column 3,is_stmt
        MOV #2, *SP(#12) ; |261| 
	.dwpsn	file "src/csl_hid.c",line 262,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |262| 
        MOV AR1, *SP(#13) ; |262| 
	.dwpsn	file "src/csl_hid.c",line 263,column 3,is_stmt
        MOV #32, *SP(#14) ; |263| 
	.dwpsn	file "src/csl_hid.c",line 264,column 3,is_stmt
        MOV #0, *SP(#15) ; |264| 
	.dwpsn	file "src/csl_hid.c",line 265,column 3,is_stmt
        MOV #0, *SP(#16) ; |265| 
	.dwpsn	file "src/csl_hid.c",line 266,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |266| 
        MOV AC0, dbl(*SP(#18)) ; |266| 
	.dwpsn	file "src/csl_hid.c",line 268,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(#1202)), XAR0
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #_USB_configEndpt ; |268| 
                                        ; call occurs [#_USB_configEndpt] ; |268| 
        MOV T0, *SP(#8) ; |268| 
	.dwpsn	file "src/csl_hid.c",line 270,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |270| 
        BCC $C$L63,!TC1 ; |270| 
                                        ; branchcc occurs ; |270| 
	.dwpsn	file "src/csl_hid.c",line 272,column 4,is_stmt
	.dwpsn	file "src/csl_hid.c",line 286,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$239, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |286| 
||      MOV #10, T0

                                        ; call occurs [#_USB_requestEndpt] ; |286| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR0, dbl(*AR3(#1200))
	.dwpsn	file "src/csl_hid.c",line 287,column 3,is_stmt

        MOV *SP(#8), AR1 ; |287| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |287| 
        BCC $C$L60,TC1 ; |287| 
                                        ; branchcc occurs ; |287| 
	.dwpsn	file "src/csl_hid.c",line 289,column 4,is_stmt
        MOV AR1, T0
        B $C$L63  ; |289| 
                                        ; branch occurs ; |289| 
$C$L60:    
	.dwpsn	file "src/csl_hid.c",line 292,column 3,is_stmt
        MOV #0, *SP(#10) ; |292| 
	.dwpsn	file "src/csl_hid.c",line 293,column 3,is_stmt
        MOV #10, *SP(#11) ; |293| 
	.dwpsn	file "src/csl_hid.c",line 294,column 3,is_stmt
        MOV #2, *SP(#12) ; |294| 
	.dwpsn	file "src/csl_hid.c",line 295,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |295| 
        MOV AR1, *SP(#13) ; |295| 
	.dwpsn	file "src/csl_hid.c",line 296,column 3,is_stmt
        MOV #32, *SP(#14) ; |296| 
	.dwpsn	file "src/csl_hid.c",line 297,column 3,is_stmt
        MOV #0, *SP(#15) ; |297| 
	.dwpsn	file "src/csl_hid.c",line 298,column 3,is_stmt
        MOV #0, *SP(#16) ; |298| 
	.dwpsn	file "src/csl_hid.c",line 299,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |299| 
        MOV AC0, dbl(*SP(#18)) ; |299| 
	.dwpsn	file "src/csl_hid.c",line 301,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        AMAR *SP(#10), XAR1
        MOV dbl(*AR3(#1200)), XAR0
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #_USB_configEndpt ; |301| 
                                        ; call occurs [#_USB_configEndpt] ; |301| 
        MOV T0, *SP(#8) ; |301| 
	.dwpsn	file "src/csl_hid.c",line 303,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |303| 
        BCC $C$L63,!TC1 ; |303| 
                                        ; branchcc occurs ; |303| 
	.dwpsn	file "src/csl_hid.c",line 305,column 4,is_stmt
	.dwpsn	file "src/csl_hid.c",line 309,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#20), AR1 ; |309| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(#944) ; |309| 
	.dwpsn	file "src/csl_hid.c",line 310,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#21), AR1 ; |310| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(#945) ; |310| 
	.dwpsn	file "src/csl_hid.c",line 311,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#22), AR1 ; |311| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(#946) ; |311| 
	.dwpsn	file "src/csl_hid.c",line 312,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#947) ; |312| 
	.dwpsn	file "src/csl_hid.c",line 315,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_hid.c",line 316,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(short(#2))), XAR3
        MOV XAR3, dbl(*AR2(#12))
	.dwpsn	file "src/csl_hid.c",line 317,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(#1202)), XAR3
        MOV XAR3, dbl(*AR2(#14))
	.dwpsn	file "src/csl_hid.c",line 318,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        MOV dbl(*AR3(#1200)), XAR3
        MOV XAR3, dbl(*AR2(#16))
	.dwpsn	file "src/csl_hid.c",line 319,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, AC0 ; |319| 
        MOV AC0, dbl(*AR3(#18))
	.dwpsn	file "src/csl_hid.c",line 320,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, dbl(*AR3(#20))
	.dwpsn	file "src/csl_hid.c",line 323,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*SP(#6)), XAR3
        AADD #10, AR1 ; |323| 
        MOV dbl(*AR3), XAR0
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$241, DW_AT_TI_call

        CALL #_USB_setParams ; |323| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |323| 
	.dwpsn	file "src/csl_hid.c",line 325,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_USB_connectDev")
	.dwattr $C$DW$242, DW_AT_TI_call
        CALL #_USB_connectDev ; |325| 
                                        ; call occurs [#_USB_connectDev] ; |325| 
	.dwpsn	file "src/csl_hid.c",line 326,column 5,is_stmt
        B $C$L62  ; |326| 
                                        ; branch occurs ; |326| 
$C$L61:    
	.dwpsn	file "src/csl_hid.c",line 329,column 9,is_stmt
        MOV #-5, *SP(#8) ; |329| 
$C$L62:    
	.dwpsn	file "src/csl_hid.c",line 332,column 5,is_stmt
        MOV *SP(#8), T0 ; |332| 
$C$L63:    
	.dwpsn	file "src/csl_hid.c",line 333,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$218, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x14d)
	.dwattr $C$DW$218, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$218

	.sect	".text"
	.global	_HID_Close

$C$DW$244	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_Close")
	.dwattr $C$DW$244, DW_AT_low_pc(_HID_Close)
	.dwattr $C$DW$244, DW_AT_high_pc(0x00)
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_HID_Close")
	.dwattr $C$DW$244, DW_AT_external
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$244, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$244, DW_AT_TI_begin_line(0x17b)
	.dwattr $C$DW$244, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$244, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_hid.c",line 380,column 1,is_stmt,address _HID_Close

	.dwfde $C$DW$CIE, _HID_Close
$C$DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_Close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_Close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$246	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$247	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$248	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 384,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_hid.c",line 385,column 5,is_stmt
        MOV #0, *SP(#4) ; |385| 
	.dwpsn	file "src/csl_hid.c",line 387,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L64,AC0 == #0 ; |387| 
                                        ; branchcc occurs ; |387| 
	.dwpsn	file "src/csl_hid.c",line 389,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_USB_disconnectDev")
	.dwattr $C$DW$249, DW_AT_TI_call
        CALL #_USB_disconnectDev ; |389| 
                                        ; call occurs [#_USB_disconnectDev] ; |389| 
        MOV T0, *SP(#4) ; |389| 
	.dwpsn	file "src/csl_hid.c",line 390,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |390| 
        MOV AC0, dbl(*AR3)
	.dwpsn	file "src/csl_hid.c",line 391,column 5,is_stmt
        B $C$L65  ; |391| 
                                        ; branch occurs ; |391| 
$C$L64:    
	.dwpsn	file "src/csl_hid.c",line 394,column 9,is_stmt
        MOV #-5, *SP(#4) ; |394| 
$C$L65:    
	.dwpsn	file "src/csl_hid.c",line 397,column 5,is_stmt
        MOV *SP(#4), T0 ; |397| 
	.dwpsn	file "src/csl_hid.c",line 398,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$244, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$244, DW_AT_TI_end_line(0x18e)
	.dwattr $C$DW$244, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$244

	.sect	".text"
	.global	_HID_Ctrl

$C$DW$251	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_Ctrl")
	.dwattr $C$DW$251, DW_AT_low_pc(_HID_Ctrl)
	.dwattr $C$DW$251, DW_AT_high_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_HID_Ctrl")
	.dwattr $C$DW$251, DW_AT_external
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$251, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$251, DW_AT_TI_begin_line(0x1bf)
	.dwattr $C$DW$251, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$251, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_hid.c",line 448,column 1,is_stmt,address _HID_Ctrl

	.dwfde $C$DW$CIE, _HID_Ctrl
$C$DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_Ctrl                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,T2,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,*
;*                        AR4,XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Save On Entry Regs : T2                                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (14 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_Ctrl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        AADD #-14, SP
	.dwcfi	cfa_offset, 16
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$255	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$256	.dwtag  DW_TAG_variable, DW_AT_name("reqHandlerRet")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_reqHandlerRet")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("usbCtrlEvents")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_usbCtrlEvents")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpIn")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_hCtrlEpIn")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpOut")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_hCtrlEpOut")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 458,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L66,AC0 != #0 ; |458| 
                                        ; branchcc occurs ; |458| 
	.dwpsn	file "src/csl_hid.c",line 460,column 9,is_stmt
        MOV #-5, T0
        B $C$L79  ; |460| 
                                        ; branch occurs ; |460| 
$C$L66:    
	.dwpsn	file "src/csl_hid.c",line 463,column 5,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_hid.c",line 464,column 5,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |464| 

	.dwpsn	file "src/csl_hid.c",line 465,column 5,is_stmt
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_hid.c",line 466,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 467,column 5,is_stmt
        MOV #0, *SP(#6) ; |467| 
	.dwpsn	file "src/csl_hid.c",line 469,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |469| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |469| 
        MOV AC0, dbl(*AR3(#904)) ; |469| 
	.dwpsn	file "src/csl_hid.c",line 471,column 5,is_stmt
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#10)), XAR0
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$262, DW_AT_TI_call
        CALL #_USB_getEvents ; |471| 
                                        ; call occurs [#_USB_getEvents] ; |471| 
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#8)), XAR0
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$263, DW_AT_TI_call

        CALL #_USB_getEvents ; |471| 
||      MOV T0, T2 ; |471| 

                                        ; call occurs [#_USB_getEvents] ; |471| 
        OR T2, T0 ; |471| 
        MOV T0, *SP(#7) ; |471| 
	.dwpsn	file "src/csl_hid.c",line 476,column 5,is_stmt
        BTST #0, *SP(#7), TC1 ; |476| 
        BCC $C$L67,!TC1 ; |476| 
                                        ; branchcc occurs ; |476| 
	.dwpsn	file "src/csl_hid.c",line 478,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |478| 
	.dwpsn	file "src/csl_hid.c",line 480,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_USB_abortAllTransaction")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #_USB_abortAllTransaction ; |480| 
                                        ; call occurs [#_USB_abortAllTransaction] ; |480| 
        OR *SP(#12), T0, AR1 ; |480| 
        MOV AR1, *SP(#12) ; |480| 
	.dwpsn	file "src/csl_hid.c",line 482,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#2)), XAR3
        AADD #8, AR1 ; |482| 
        MOV dbl(*AR3), XAR0
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$265, DW_AT_TI_call

        CALL #_USB_setParams ; |482| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |482| 
        OR *SP(#12), T0, AR1 ; |482| 
        MOV AR1, *SP(#12) ; |482| 
	.dwpsn	file "src/csl_hid.c",line 485,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#888) ; |485| 
$C$L67:    
	.dwpsn	file "src/csl_hid.c",line 488,column 5,is_stmt
        BTST #2, *SP(#7), TC1 ; |488| 
        BCC $C$L68,!TC1 ; |488| 
                                        ; branchcc occurs ; |488| 
	.dwpsn	file "src/csl_hid.c",line 490,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(short(#6)) ; |490| 
$C$L68:    
	.dwpsn	file "src/csl_hid.c",line 493,column 5,is_stmt
        BTST #3, *SP(#7), TC1 ; |493| 
        BCC $C$L69,!TC1 ; |493| 
                                        ; branchcc occurs ; |493| 
	.dwpsn	file "src/csl_hid.c",line 495,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |495| 
$C$L69:    
	.dwpsn	file "src/csl_hid.c",line 500,column 6,is_stmt
        MOV *SP(#7), AR1 ; |500| 

        AND #0x0010, AR1, AR1 ; |500| 
||      MOV #16, AR2 ; |500| 

        CMPU AR1 != AR2, TC1 ; |500| 
        BCC $C$L78,TC1 ; |500| 
                                        ; branchcc occurs ; |500| 
	.dwpsn	file "src/csl_hid.c",line 503,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
        AADD #20, AR1 ; |503| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_USB_getSetupPacket")
	.dwattr $C$DW$266, DW_AT_TI_call

        CALL #_USB_getSetupPacket ; |503| 
||      MOV #0, T0

                                        ; call occurs [#_USB_getSetupPacket] ; |503| 
        OR *SP(#12), T0, AR1 ; |503| 
        MOV AR1, *SP(#12) ; |503| 
	.dwpsn	file "src/csl_hid.c",line 505,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *AR2(#21), AC0 ; |505| 
        SFTL AC0, #8, AC0 ; |505| 
        AND #0xf000, AC0, AR1 ; |505| 
        OR *AR3(#22), AR1, AR1 ; |505| 
        MOV AR1, *SP(#13) ; |505| 
	.dwpsn	file "src/csl_hid.c",line 509,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#902)), XAR0
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_HID_lookupReqHandler")
	.dwattr $C$DW$267, DW_AT_TI_call

        CALL #_HID_lookupReqHandler ; |509| 
||      MOV AR1, T0

                                        ; call occurs [#_HID_lookupReqHandler] ; |509| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#904)) ; |509| 
	.dwpsn	file "src/csl_hid.c",line 512,column 9,is_stmt
        MOV *SP(#6), AR1 ; |512| 
        BCC $C$L75,AR1 != #0 ; |512| 
                                        ; branchcc occurs ; |512| 
	.dwpsn	file "src/csl_hid.c",line 514,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3(#904)), AC0 ; |514| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#0)), XAR4
        AADD #20, AR1 ; |514| 
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#10)), XAR3
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_TI_call
	.dwattr $C$DW$268, DW_AT_TI_indirect
        CALL AC0  ; |514| 
                                        ; call occurs [AC0] ; |514| 
        MOV T0, *SP(#6) ; |514| 
	.dwpsn	file "src/csl_hid.c",line 518,column 9,is_stmt
        B $C$L75  ; |518| 
                                        ; branch occurs ; |518| 
$C$L70:    
	.dwpsn	file "src/csl_hid.c",line 523,column 17,is_stmt
        MOV dbl(*SP(#8)), XAR0
        AMOV #0, XAR1 ; |523| 
        MOV #0, T0
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$269, DW_AT_TI_call

        CALL #_USB_postTransaction ; |523| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |523| 
        OR *SP(#12), T0, AR1 ; |523| 
        MOV AR1, *SP(#12) ; |523| 
	.dwpsn	file "src/csl_hid.c",line 525,column 17,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |525| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |525| 
        MOV AC0, dbl(*AR3(#904)) ; |525| 
	.dwpsn	file "src/csl_hid.c",line 526,column 22,is_stmt
        B $C$L77  ; |526| 
                                        ; branch occurs ; |526| 
$C$L71:    
	.dwpsn	file "src/csl_hid.c",line 536,column 17,is_stmt
        MOV dbl(*SP(#10)), XAR0
        AMOV #0, XAR1 ; |536| 
        MOV #0, T0
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$270, DW_AT_TI_call

        CALL #_USB_postTransaction ; |536| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |536| 
        OR *SP(#12), T0, AR1 ; |536| 
        MOV AR1, *SP(#12) ; |536| 
	.dwpsn	file "src/csl_hid.c",line 538,column 17,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |538| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |538| 
        MOV AC0, dbl(*AR3(#904)) ; |538| 
	.dwpsn	file "src/csl_hid.c",line 539,column 22,is_stmt
        B $C$L77  ; |539| 
                                        ; branch occurs ; |539| 
$C$L72:    
	.dwpsn	file "src/csl_hid.c",line 549,column 17,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$271, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |549| 
                                        ; call occurs [#_USB_stallEndpt] ; |549| 
        OR *SP(#12), T0, AR1 ; |549| 
        MOV AR1, *SP(#12) ; |549| 
	.dwpsn	file "src/csl_hid.c",line 550,column 17,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |550| 
                                        ; call occurs [#_USB_stallEndpt] ; |550| 
        OR *SP(#12), T0, AR1 ; |550| 
        MOV AR1, *SP(#12) ; |550| 
	.dwpsn	file "src/csl_hid.c",line 554,column 22,is_stmt
        B $C$L77  ; |554| 
                                        ; branch occurs ; |554| 
$C$L73:    
	.dwpsn	file "src/csl_hid.c",line 557,column 17,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |557| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |557| 
        MOV AC0, dbl(*AR3(#904)) ; |557| 
	.dwpsn	file "src/csl_hid.c",line 558,column 22,is_stmt
        B $C$L77  ; |558| 
                                        ; branch occurs ; |558| 
$C$L74:    
	.dwpsn	file "src/csl_hid.c",line 561,column 17,is_stmt
        MOV #-578, *SP(#12) ; |561| 
	.dwpsn	file "src/csl_hid.c",line 563,column 22,is_stmt
        B $C$L77  ; |563| 
                                        ; branch occurs ; |563| 
$C$L75:    
	.dwpsn	file "src/csl_hid.c",line 518,column 9,is_stmt

        MOV *SP(#6), AR1 ; |518| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |518| 
        BCC $C$L76,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
        CMP AR1 == AR2, TC1 ; |518| 
        BCC $C$L71,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
        BCC $C$L73,AR1 == #0 ; |518| 
                                        ; branchcc occurs ; |518| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |518| 
        BCC $C$L72,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |518| 
        BCC $C$L70,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
        B $C$L74  ; |518| 
                                        ; branch occurs ; |518| 
$C$L76:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |518| 
        BCC $C$L77,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |518| 
        BCC $C$L74,!TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
$C$L77:    
	.dwpsn	file "src/csl_hid.c",line 567,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#20), AR1 ; |567| 
        BCC $C$L78,AR1 == #0 ; |567| 
                                        ; branchcc occurs ; |567| 
	.dwpsn	file "src/csl_hid.c",line 569,column 13,is_stmt
        MOV #0, *AR3(#20) ; |569| 
$C$L78:    
	.dwpsn	file "src/csl_hid.c",line 573,column 5,is_stmt
        MOV *SP(#12), T0 ; |573| 
$C$L79:    
	.dwpsn	file "src/csl_hid.c",line 574,column 1,is_stmt
        AADD #14, SP
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$251, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$251, DW_AT_TI_end_line(0x23e)
	.dwattr $C$DW$251, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$251

	.sect	".text"
	.global	_HID_reportHandler

$C$DW$274	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reportHandler")
	.dwattr $C$DW$274, DW_AT_low_pc(_HID_reportHandler)
	.dwattr $C$DW$274, DW_AT_high_pc(0x00)
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_HID_reportHandler")
	.dwattr $C$DW$274, DW_AT_external
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$274, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0x26e)
	.dwattr $C$DW$274, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$274, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_hid.c",line 623,column 1,is_stmt,address _HID_reportHandler

	.dwfde $C$DW$CIE, _HID_reportHandler
$C$DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_reportHandler                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reportHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("phidHandle")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_phidHandle")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("usbEvent")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_usbEvent")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 631,column 5,is_stmt
        MOV #0, *SP(#10) ; |631| 
	.dwpsn	file "src/csl_hid.c",line 633,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L80,AC0 == #0 ; |633| 
                                        ; branchcc occurs ; |633| 
	.dwpsn	file "src/csl_hid.c",line 635,column 9,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_hid.c",line 636,column 9,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |636| 

	.dwpsn	file "src/csl_hid.c",line 637,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        AMAR *+AR3(#948) ; |637| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_hid.c",line 638,column 9,is_stmt
        MOV dbl(*AR3(#252)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_hid.c",line 640,column 9,is_stmt
        AMAR *SP(#10), XAR1
        MOV dbl(*SP(#8)), XAR0
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$283, DW_AT_TI_call
        CALL #_USB_getEvents ; |640| 
                                        ; call occurs [#_USB_getEvents] ; |640| 
        MOV T0, *SP(#11) ; |640| 
	.dwpsn	file "src/csl_hid.c",line 642,column 9,is_stmt

        MOV T0, AR1 ; |642| 
||      MOV #16384, AR2 ; |642| 

        AND #0x4000, AR1, AR1 ; |642| 
        CMPU AR1 != AR2, TC1 ; |642| 
        BCC $C$L81,TC1 ; |642| 
                                        ; branchcc occurs ; |642| 
	.dwpsn	file "src/csl_hid.c",line 644,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), AC0 ; |644| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#944), T0 ; |644| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_call
	.dwattr $C$DW$284, DW_AT_TI_indirect
        CALL AC0  ; |644| 
                                        ; call occurs [AC0] ; |644| 
        MOV T0, *SP(#10) ; |644| 
	.dwpsn	file "src/csl_hid.c",line 648,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(#252)), XAR0
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#944), T0 ; |648| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(short(#2))), XAR1
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$285, DW_AT_TI_call

        CALL #_USB_postTransaction ; |648| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |648| 
	.dwpsn	file "src/csl_hid.c",line 651,column 5,is_stmt
        B $C$L81  ; |651| 
                                        ; branch occurs ; |651| 
$C$L80:    
	.dwpsn	file "src/csl_hid.c",line 654,column 9,is_stmt
        MOV #-5, *SP(#10) ; |654| 
$C$L81:    
	.dwpsn	file "src/csl_hid.c",line 657,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_hid.c",line 658,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$274, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x292)
	.dwattr $C$DW$274, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$274

	.sect	".text"
	.global	_HID_initDescriptors

$C$DW$287	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_initDescriptors")
	.dwattr $C$DW$287, DW_AT_low_pc(_HID_initDescriptors)
	.dwattr $C$DW$287, DW_AT_high_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_HID_initDescriptors")
	.dwattr $C$DW$287, DW_AT_external
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$287, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x2c1)
	.dwattr $C$DW$287, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$287, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_hid.c",line 709,column 1,is_stmt,address _HID_initDescriptors

	.dwfde $C$DW$CIE, _HID_initDescriptors
$C$DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg17]
$C$DW$289	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descBuf")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_descBuf")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg19]
$C$DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descrId")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_descrId")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg12]
$C$DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descrLen")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: HID_initDescriptors                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_initDescriptors:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("descBuf")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_descBuf")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("descrId")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_descrId")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("descrLen")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$298	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$299	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T1, *SP(#5) ; |709| 
        MOV T0, *SP(#4) ; |709| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 715,column 5,is_stmt
        MOV #-6, *SP(#10) ; |715| 
	.dwpsn	file "src/csl_hid.c",line 717,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L105,AC0 == #0 ; |717| 
                                        ; branchcc occurs ; |717| 
	.dwpsn	file "src/csl_hid.c",line 719,column 9,is_stmt
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_hid.c",line 720,column 9,is_stmt

        MOV XAR3, dbl(*SP(#8))
||      AADD #2, AR3 ; |720| 

	.dwpsn	file "src/csl_hid.c",line 722,column 9,is_stmt
        B $C$L103 ; |722| 
                                        ; branch occurs ; |722| 
$C$L82:    
	.dwpsn	file "src/csl_hid.c",line 726,column 17,is_stmt
        MOV #20, AR2 ; |726| 
        MOV *SP(#5), AR1 ; |726| 
        CMPU AR1 > AR2, TC1 ; |726| 
        BCC $C$L106,TC1 ; |726| 
                                        ; branchcc occurs ; |726| 
	.dwpsn	file "src/csl_hid.c",line 728,column 21,is_stmt
        MOV #0, *AR3(#38) ; |728| 
	.dwpsn	file "src/csl_hid.c",line 729,column 25,is_stmt
        MOV #0, *SP(#11) ; |729| 
	.dwpsn	file "src/csl_hid.c",line 729,column 37,is_stmt
        MOV *SP(#5), AR1 ; |729| 
        ADD #1, AR1 ; |729| 

        SFTL AR1, #-1 ; |729| 
||      MOV *SP(#11), AR2 ; |729| 

        CMPU AR2 >= AR1, TC1 ; |729| 
        BCC $C$L84,TC1 ; |729| 
                                        ; branchcc occurs ; |729| 
$C$L83:    
$C$DW$L$_HID_initDescriptors$6$B:
	.dwpsn	file "src/csl_hid.c",line 732,column 25,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |732| 
        ADD #1, T0 ; |732| 

        MOV AR2, T0 ; |732| 
||      MOV *AR3(T0), AC1 ; |732| 

        SFTL T0, #1 ; |732| 
        MOV AR2, AR1
        ADD #1, AR1 ; |732| 
        MOV *AR3(T0), AC0 ; |732| 
        MOV dbl(*SP(#8)), XAR3

        AADD AR1, AR3 ; |732| 
||      OR AC1 << #8, AC0 ; |732| 

        MOV AC0, *AR3(#38) ; |732| 
	.dwpsn	file "src/csl_hid.c",line 729,column 62,is_stmt
        ADD #1, *SP(#11) ; |729| 
	.dwpsn	file "src/csl_hid.c",line 729,column 37,is_stmt
        MOV *SP(#5), AR1 ; |729| 
        ADD #1, AR1 ; |729| 

        SFTL AR1, #-1 ; |729| 
||      MOV *SP(#11), AR2 ; |729| 

        CMPU AR2 < AR1, TC1 ; |729| 
        BCC $C$L83,TC1 ; |729| 
                                        ; branchcc occurs ; |729| 
$C$DW$L$_HID_initDescriptors$6$E:
$C$L84:    
	.dwpsn	file "src/csl_hid.c",line 734,column 21,is_stmt
        MOV #0, *SP(#10) ; |734| 
	.dwpsn	file "src/csl_hid.c",line 736,column 22,is_stmt
        B $C$L106 ; |736| 
                                        ; branch occurs ; |736| 
$C$L85:    
	.dwpsn	file "src/csl_hid.c",line 740,column 17,is_stmt

        MOV *SP(#5), AR1 ; |740| 
||      MOV #12, AR2

        CMPU AR1 > AR2, TC1 ; |740| 
        BCC $C$L106,TC1 ; |740| 
                                        ; branchcc occurs ; |740| 
	.dwpsn	file "src/csl_hid.c",line 742,column 21,is_stmt
        MOV #0, *AR3(#26) ; |742| 
	.dwpsn	file "src/csl_hid.c",line 743,column 25,is_stmt
        MOV #0, *SP(#11) ; |743| 
	.dwpsn	file "src/csl_hid.c",line 743,column 37,is_stmt
        MOV *SP(#5), AR1 ; |743| 
        ADD #1, AR1 ; |743| 

        SFTL AR1, #-1 ; |743| 
||      MOV *SP(#11), AR2 ; |743| 

        CMPU AR2 >= AR1, TC1 ; |743| 
        BCC $C$L87,TC1 ; |743| 
                                        ; branchcc occurs ; |743| 
$C$L86:    
$C$DW$L$_HID_initDescriptors$10$B:
	.dwpsn	file "src/csl_hid.c",line 745,column 25,is_stmt
        MOV *SP(#11), T0 ; |745| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |745| 
        ADD #1, AR1 ; |745| 
        MOV *AR3(T0), AR2 ; |745| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |745| 
        MOV AR2, *AR3(#26) ; |745| 
	.dwpsn	file "src/csl_hid.c",line 743,column 62,is_stmt
        ADD #1, *SP(#11) ; |743| 
	.dwpsn	file "src/csl_hid.c",line 743,column 37,is_stmt
        MOV *SP(#5), AR1 ; |743| 
        ADD #1, AR1 ; |743| 

        SFTL AR1, #-1 ; |743| 
||      MOV *SP(#11), AR2 ; |743| 

        CMPU AR2 < AR1, TC1 ; |743| 
        BCC $C$L86,TC1 ; |743| 
                                        ; branchcc occurs ; |743| 
$C$DW$L$_HID_initDescriptors$10$E:
$C$L87:    
	.dwpsn	file "src/csl_hid.c",line 748,column 21,is_stmt
        MOV #0, *SP(#10) ; |748| 
	.dwpsn	file "src/csl_hid.c",line 750,column 22,is_stmt
        B $C$L106 ; |750| 
                                        ; branch occurs ; |750| 
$C$L88:    
	.dwpsn	file "src/csl_hid.c",line 755,column 17,is_stmt
        MOV #400, AR2 ; |755| 
        MOV *SP(#5), AR1 ; |755| 
        CMPU AR1 > AR2, TC1 ; |755| 
        BCC $C$L106,TC1 ; |755| 
                                        ; branchcc occurs ; |755| 
	.dwpsn	file "src/csl_hid.c",line 757,column 21,is_stmt
        MOV #0, *AR3(#58) ; |757| 
	.dwpsn	file "src/csl_hid.c",line 758,column 25,is_stmt
        MOV #0, *SP(#11) ; |758| 
	.dwpsn	file "src/csl_hid.c",line 758,column 37,is_stmt
        MOV *SP(#5), AR1 ; |758| 
        ADD #1, AR1 ; |758| 

        SFTL AR1, #-1 ; |758| 
||      MOV *SP(#11), AR2 ; |758| 

        CMPU AR2 >= AR1, TC1 ; |758| 
        BCC $C$L90,TC1 ; |758| 
                                        ; branchcc occurs ; |758| 
$C$L89:    
$C$DW$L$_HID_initDescriptors$14$B:
	.dwpsn	file "src/csl_hid.c",line 761,column 25,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |761| 
        ADD #1, T0 ; |761| 

        MOV AR2, T0 ; |761| 
||      MOV *AR3(T0), AC1 ; |761| 

        SFTL T0, #1 ; |761| 
        MOV AR2, AR1
        ADD #1, AR1 ; |761| 
        MOV *AR3(T0), AC0 ; |761| 
        MOV dbl(*SP(#8)), XAR3

        AADD AR1, AR3 ; |761| 
||      OR AC1 << #8, AC0 ; |761| 

        MOV AC0, *AR3(#58) ; |761| 
	.dwpsn	file "src/csl_hid.c",line 758,column 62,is_stmt
        ADD #1, *SP(#11) ; |758| 
	.dwpsn	file "src/csl_hid.c",line 758,column 37,is_stmt
        MOV *SP(#5), AR1 ; |758| 
        ADD #1, AR1 ; |758| 

        SFTL AR1, #-1 ; |758| 
||      MOV *SP(#11), AR2 ; |758| 

        CMPU AR2 < AR1, TC1 ; |758| 
        BCC $C$L89,TC1 ; |758| 
                                        ; branchcc occurs ; |758| 
$C$DW$L$_HID_initDescriptors$14$E:
$C$L90:    
	.dwpsn	file "src/csl_hid.c",line 763,column 21,is_stmt
        MOV #0, *SP(#10) ; |763| 
	.dwpsn	file "src/csl_hid.c",line 765,column 22,is_stmt
        B $C$L106 ; |765| 
                                        ; branch occurs ; |765| 
$C$L91:    
	.dwpsn	file "src/csl_hid.c",line 769,column 17,is_stmt
        MOV #400, AR2 ; |769| 
        MOV *SP(#5), AR1 ; |769| 
        CMPU AR1 > AR2, TC1 ; |769| 
        BCC $C$L106,TC1 ; |769| 
                                        ; branchcc occurs ; |769| 
	.dwpsn	file "src/csl_hid.c",line 771,column 21,is_stmt
        MOV #0, *AR3(#458) ; |771| 
	.dwpsn	file "src/csl_hid.c",line 772,column 25,is_stmt
        MOV #0, *SP(#11) ; |772| 
	.dwpsn	file "src/csl_hid.c",line 772,column 37,is_stmt
        MOV *SP(#5), AR1 ; |772| 
        ADD #1, AR1 ; |772| 

        SFTL AR1, #-1 ; |772| 
||      MOV *SP(#11), AR2 ; |772| 

        CMPU AR2 >= AR1, TC1 ; |772| 
        BCC $C$L93,TC1 ; |772| 
                                        ; branchcc occurs ; |772| 
$C$L92:    
$C$DW$L$_HID_initDescriptors$18$B:
	.dwpsn	file "src/csl_hid.c",line 775,column 25,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |775| 
        ADD #1, T0 ; |775| 

        MOV AR2, T0 ; |775| 
||      MOV *AR3(T0), AC1 ; |775| 

        SFTL T0, #1 ; |775| 
        MOV AR2, AR1
        ADD #1, AR1 ; |775| 
        MOV *AR3(T0), AC0 ; |775| 
        MOV dbl(*SP(#8)), XAR3

        AADD AR1, AR3 ; |775| 
||      OR AC1 << #8, AC0 ; |775| 

        MOV AC0, *AR3(#458) ; |775| 
	.dwpsn	file "src/csl_hid.c",line 772,column 62,is_stmt
        ADD #1, *SP(#11) ; |772| 
	.dwpsn	file "src/csl_hid.c",line 772,column 37,is_stmt
        MOV *SP(#5), AR1 ; |772| 
        ADD #1, AR1 ; |772| 

        SFTL AR1, #-1 ; |772| 
||      MOV *SP(#11), AR2 ; |772| 

        CMPU AR2 < AR1, TC1 ; |772| 
        BCC $C$L92,TC1 ; |772| 
                                        ; branchcc occurs ; |772| 
$C$DW$L$_HID_initDescriptors$18$E:
$C$L93:    
	.dwpsn	file "src/csl_hid.c",line 777,column 21,is_stmt
        MOV #0, *SP(#10) ; |777| 
	.dwpsn	file "src/csl_hid.c",line 779,column 22,is_stmt
        B $C$L106 ; |779| 
                                        ; branch occurs ; |779| 
$C$L94:    
	.dwpsn	file "src/csl_hid.c",line 783,column 17,is_stmt

        MOV *SP(#5), AR1 ; |783| 
||      MOV #12, AR2

        CMPU AR1 > AR2, TC1 ; |783| 
        BCC $C$L106,TC1 ; |783| 
                                        ; branchcc occurs ; |783| 
	.dwpsn	file "src/csl_hid.c",line 785,column 21,is_stmt
        MOV #0, *AR3(#858) ; |785| 
	.dwpsn	file "src/csl_hid.c",line 786,column 25,is_stmt
        MOV #0, *SP(#11) ; |786| 
	.dwpsn	file "src/csl_hid.c",line 786,column 37,is_stmt
        MOV *SP(#5), AR1 ; |786| 
        ADD #1, AR1 ; |786| 

        SFTL AR1, #-1 ; |786| 
||      MOV *SP(#11), AR2 ; |786| 

        CMPU AR2 >= AR1, TC1 ; |786| 
        BCC $C$L96,TC1 ; |786| 
                                        ; branchcc occurs ; |786| 
$C$L95:    
$C$DW$L$_HID_initDescriptors$22$B:
	.dwpsn	file "src/csl_hid.c",line 788,column 25,is_stmt
        MOV *SP(#11), T0 ; |788| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |788| 
        ADD #1, AR1 ; |788| 
        MOV *AR3(T0), AR2 ; |788| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |788| 
        MOV AR2, *AR3(#858) ; |788| 
	.dwpsn	file "src/csl_hid.c",line 786,column 62,is_stmt
        ADD #1, *SP(#11) ; |786| 
	.dwpsn	file "src/csl_hid.c",line 786,column 37,is_stmt
        MOV *SP(#5), AR1 ; |786| 
        ADD #1, AR1 ; |786| 

        SFTL AR1, #-1 ; |786| 
||      MOV *SP(#11), AR2 ; |786| 

        CMPU AR2 < AR1, TC1 ; |786| 
        BCC $C$L95,TC1 ; |786| 
                                        ; branchcc occurs ; |786| 
$C$DW$L$_HID_initDescriptors$22$E:
$C$L96:    
	.dwpsn	file "src/csl_hid.c",line 790,column 21,is_stmt
        MOV #0, *SP(#10) ; |790| 
	.dwpsn	file "src/csl_hid.c",line 792,column 22,is_stmt
        B $C$L106 ; |792| 
                                        ; branch occurs ; |792| 
$C$L97:    
	.dwpsn	file "src/csl_hid.c",line 795,column 17,is_stmt

        MOV *SP(#5), AR1 ; |795| 
||      MOV #12, AR2

        CMPU AR1 >= AR2, TC1 ; |795| 
        BCC $C$L106,TC1 ; |795| 
                                        ; branchcc occurs ; |795| 
	.dwpsn	file "src/csl_hid.c",line 797,column 21,is_stmt
        MOV #0, *AR3(#876) ; |797| 
	.dwpsn	file "src/csl_hid.c",line 798,column 25,is_stmt
        MOV #0, *SP(#11) ; |798| 
	.dwpsn	file "src/csl_hid.c",line 798,column 37,is_stmt
        MOV *SP(#5), AR1 ; |798| 
        ADD #1, AR1 ; |798| 

        SFTL AR1, #-1 ; |798| 
||      MOV *SP(#11), AR2 ; |798| 

        CMPU AR2 >= AR1, TC1 ; |798| 
        BCC $C$L99,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
$C$L98:    
$C$DW$L$_HID_initDescriptors$26$B:
	.dwpsn	file "src/csl_hid.c",line 800,column 25,is_stmt
        MOV *SP(#11), T0 ; |800| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |800| 
        ADD #1, AR1 ; |800| 
        MOV *AR3(T0), AR2 ; |800| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |800| 
        MOV AR2, *AR3(#876) ; |800| 
	.dwpsn	file "src/csl_hid.c",line 798,column 62,is_stmt
        ADD #1, *SP(#11) ; |798| 
	.dwpsn	file "src/csl_hid.c",line 798,column 37,is_stmt
        MOV *SP(#5), AR1 ; |798| 
        ADD #1, AR1 ; |798| 

        SFTL AR1, #-1 ; |798| 
||      MOV *SP(#11), AR2 ; |798| 

        CMPU AR2 < AR1, TC1 ; |798| 
        BCC $C$L98,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
$C$DW$L$_HID_initDescriptors$26$E:
$C$L99:    
	.dwpsn	file "src/csl_hid.c",line 802,column 21,is_stmt
        MOV #0, *SP(#10) ; |802| 
	.dwpsn	file "src/csl_hid.c",line 804,column 22,is_stmt
        B $C$L106 ; |804| 
                                        ; branch occurs ; |804| 
$C$L100:    
	.dwpsn	file "src/csl_hid.c",line 808,column 17,is_stmt
        MOV #69, AR2 ; |808| 
        MOV *SP(#5), AR1 ; |808| 
        CMPU AR1 >= AR2, TC1 ; |808| 
        BCC $C$L106,TC1 ; |808| 
                                        ; branchcc occurs ; |808| 
	.dwpsn	file "src/csl_hid.c",line 810,column 21,is_stmt
        MOV AR1, *AR3(#906) ; |810| 
	.dwpsn	file "src/csl_hid.c",line 811,column 21,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #0, *AR3(#907) ; |811| 
	.dwpsn	file "src/csl_hid.c",line 812,column 25,is_stmt
        MOV #0, *SP(#11) ; |812| 
	.dwpsn	file "src/csl_hid.c",line 812,column 37,is_stmt
        MOV *SP(#5), AR1 ; |812| 
        ADD #1, AR1 ; |812| 

        SFTL AR1, #-1 ; |812| 
||      MOV *SP(#11), AR2 ; |812| 

        CMPU AR2 >= AR1, TC1 ; |812| 
        BCC $C$L102,TC1 ; |812| 
                                        ; branchcc occurs ; |812| 
$C$L101:    
$C$DW$L$_HID_initDescriptors$30$B:
	.dwpsn	file "src/csl_hid.c",line 814,column 25,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR2, T0
        SFTL T0, #1 ; |814| 
        ADD #1, T0 ; |814| 

        MOV AR2, T0 ; |814| 
||      MOV *AR3(T0), AC1 ; |814| 

        SFTL T0, #1 ; |814| 
        MOV AR2, AR1
        ADD #1, AR1 ; |814| 
        MOV *AR3(T0), AC0 ; |814| 
        MOV dbl(*SP(#8)), XAR3

        AADD AR1, AR3 ; |814| 
||      OR AC1 << #8, AC0 ; |814| 

        MOV AC0, *AR3(#907) ; |814| 
	.dwpsn	file "src/csl_hid.c",line 812,column 62,is_stmt
        ADD #1, *SP(#11) ; |812| 
	.dwpsn	file "src/csl_hid.c",line 812,column 37,is_stmt
        MOV *SP(#5), AR1 ; |812| 
        ADD #1, AR1 ; |812| 

        SFTL AR1, #-1 ; |812| 
||      MOV *SP(#11), AR2 ; |812| 

        CMPU AR2 < AR1, TC1 ; |812| 
        BCC $C$L101,TC1 ; |812| 
                                        ; branchcc occurs ; |812| 
$C$DW$L$_HID_initDescriptors$30$E:
$C$L102:    
	.dwpsn	file "src/csl_hid.c",line 816,column 21,is_stmt
        MOV #0, *SP(#10) ; |816| 
	.dwpsn	file "src/csl_hid.c",line 818,column 22,is_stmt
        B $C$L106 ; |818| 
                                        ; branch occurs ; |818| 
$C$L103:    
	.dwpsn	file "src/csl_hid.c",line 722,column 9,is_stmt

        MOV *SP(#4), AR1 ; |722| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |722| 
        BCC $C$L104,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L94,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        BCC $C$L82,AR1 == #0 ; |722| 
                                        ; branchcc occurs ; |722| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L85,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L88,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        B $C$L106 ; |722| 
                                        ; branch occurs ; |722| 
$C$L104:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L97,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L100,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |722| 
        BCC $C$L91,TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
        B $C$L106 ; |722| 
                                        ; branch occurs ; |722| 
$C$L105:    
	.dwpsn	file "src/csl_hid.c",line 826,column 9,is_stmt
        MOV #-5, T0
        B $C$L107 ; |826| 
                                        ; branch occurs ; |826| 
$C$L106:    
	.dwpsn	file "src/csl_hid.c",line 829,column 5,is_stmt
        MOV *SP(#10), T0 ; |829| 
$C$L107:    
	.dwpsn	file "src/csl_hid.c",line 831,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$301	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$301, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L101:1:1714639437")
	.dwattr $C$DW$301, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$301, DW_AT_TI_begin_line(0x32c)
	.dwattr $C$DW$301, DW_AT_TI_end_line(0x32f)
$C$DW$302	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$302, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$30$B)
	.dwattr $C$DW$302, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$30$E)
	.dwendtag $C$DW$301


$C$DW$303	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$303, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L98:1:1714639437")
	.dwattr $C$DW$303, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$303, DW_AT_TI_begin_line(0x31e)
	.dwattr $C$DW$303, DW_AT_TI_end_line(0x321)
$C$DW$304	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$304, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$26$B)
	.dwattr $C$DW$304, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$26$E)
	.dwendtag $C$DW$303


$C$DW$305	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$305, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L95:1:1714639437")
	.dwattr $C$DW$305, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$305, DW_AT_TI_begin_line(0x312)
	.dwattr $C$DW$305, DW_AT_TI_end_line(0x315)
$C$DW$306	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$306, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$22$B)
	.dwattr $C$DW$306, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$22$E)
	.dwendtag $C$DW$305


$C$DW$307	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$307, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L92:1:1714639437")
	.dwattr $C$DW$307, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$307, DW_AT_TI_begin_line(0x304)
	.dwattr $C$DW$307, DW_AT_TI_end_line(0x308)
$C$DW$308	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$308, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$18$B)
	.dwattr $C$DW$308, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$18$E)
	.dwendtag $C$DW$307


$C$DW$309	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$309, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L89:1:1714639437")
	.dwattr $C$DW$309, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$309, DW_AT_TI_begin_line(0x2f6)
	.dwattr $C$DW$309, DW_AT_TI_end_line(0x2fa)
$C$DW$310	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$310, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$14$B)
	.dwattr $C$DW$310, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$14$E)
	.dwendtag $C$DW$309


$C$DW$311	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$311, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L86:1:1714639437")
	.dwattr $C$DW$311, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$311, DW_AT_TI_begin_line(0x2e7)
	.dwattr $C$DW$311, DW_AT_TI_end_line(0x2eb)
$C$DW$312	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$312, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$10$B)
	.dwattr $C$DW$312, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$10$E)
	.dwendtag $C$DW$311


$C$DW$313	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$313, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L83:1:1714639437")
	.dwattr $C$DW$313, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$313, DW_AT_TI_begin_line(0x2d9)
	.dwattr $C$DW$313, DW_AT_TI_end_line(0x2dd)
$C$DW$314	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$314, DW_AT_low_pc($C$DW$L$_HID_initDescriptors$6$B)
	.dwattr $C$DW$314, DW_AT_high_pc($C$DW$L$_HID_initDescriptors$6$E)
	.dwendtag $C$DW$313

	.dwattr $C$DW$287, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x33f)
	.dwattr $C$DW$287, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$287

	.sect	".text"

$C$DW$315	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_initVal")
	.dwattr $C$DW$315, DW_AT_low_pc(_HID_initVal)
	.dwattr $C$DW$315, DW_AT_high_pc(0x00)
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_HID_initVal")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$315, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$315, DW_AT_TI_begin_line(0x363)
	.dwattr $C$DW$315, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$315, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_hid.c",line 868,column 1,is_stmt,address _HID_initVal

	.dwfde $C$DW$CIE, _HID_initVal
$C$DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phidHandle")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_phidHandle")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_initVal                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_initVal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$317	.dwtag  DW_TAG_variable, DW_AT_name("phidHandle")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_phidHandle")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$318	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 871,column 5,is_stmt
        MOV #0, *SP(#2) ; |871| 
	.dwpsn	file "src/csl_hid.c",line 873,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L108,AC0 == #0 ; |873| 
                                        ; branchcc occurs ; |873| 
	.dwpsn	file "src/csl_hid.c",line 875,column 9,is_stmt
        MOV #0, *AR3(#257) ; |875| 
	.dwpsn	file "src/csl_hid.c",line 876,column 5,is_stmt
        B $C$L109 ; |876| 
                                        ; branch occurs ; |876| 
$C$L108:    
	.dwpsn	file "src/csl_hid.c",line 879,column 9,is_stmt
        MOV #-5, *SP(#2) ; |879| 
$C$L109:    
	.dwpsn	file "src/csl_hid.c",line 882,column 5,is_stmt
        MOV *SP(#2), T0 ; |882| 
	.dwpsn	file "src/csl_hid.c",line 883,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$315, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$315, DW_AT_TI_end_line(0x373)
	.dwattr $C$DW$315, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$315

	.sect	".text"
	.global	_HID_reqHidGetReport

$C$DW$320	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_reqHidGetReport")
	.dwattr $C$DW$320, DW_AT_low_pc(_HID_reqHidGetReport)
	.dwattr $C$DW$320, DW_AT_high_pc(0x00)
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_HID_reqHidGetReport")
	.dwattr $C$DW$320, DW_AT_external
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$320, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$320, DW_AT_TI_begin_line(0x3ab)
	.dwattr $C$DW$320, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$320, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "src/csl_hid.c",line 944,column 1,is_stmt,address _HID_reqHidGetReport

	.dwfde $C$DW$CIE, _HID_reqHidGetReport
$C$DW$321	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg17]
$C$DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg19]
$C$DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg21]
$C$DW$324	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg23]
$C$DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidObj")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: HID_reqHidGetReport                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR4,XAR4,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (19 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_reqHidGetReport:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$326	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$327	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$328	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$329	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$330	.dwtag  DW_TAG_variable, DW_AT_name("pHidObj")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$331	.dwtag  DW_TAG_variable, DW_AT_name("pHidClassHdl")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_pHidClassHdl")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$332	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$333	.dwtag  DW_TAG_variable, DW_AT_name("phidHandle")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_phidHandle")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$334	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$335	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$336	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 953,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 954,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |954| 

	.dwpsn	file "src/csl_hid.c",line 956,column 5,is_stmt
        MOV *AR3(#942), AR1 ; |956| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR2 ; |956| 
        CMPU AR2 != AR1, TC1 ; |956| 
        BCC $C$L114,TC1 ; |956| 
                                        ; branchcc occurs ; |956| 
        CMP *AR3(short(#3)) == #256, TC1 ; |956| 

        BCC $C$L110,!TC1 ; |956| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |956| 
        MOV #1, AR1
$C$L110:    
        MOV dbl(*SP(#12)), XAR3
        OR *AR3(#943), AR1, AR1 ; |956| 
        BCC $C$L114,AR1 == #0 ; |956| 
                                        ; branchcc occurs ; |956| 
	.dwpsn	file "src/csl_hid.c",line 959,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR3
        AMAR *+AR3(#948) ; |959| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_hid.c",line 962,column 9,is_stmt
        MOV dbl(*AR3), AC0 ; |962| 
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(#944), T0 ; |962| 
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_call
	.dwattr $C$DW$337, DW_AT_TI_indirect
        CALL AC0  ; |962| 
                                        ; call occurs [AC0] ; |962| 
        MOV T0, *SP(#17) ; |962| 
	.dwpsn	file "src/csl_hid.c",line 966,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L113,AR1 != #0 ; |966| 
                                        ; branchcc occurs ; |966| 
	.dwpsn	file "src/csl_hid.c",line 968,column 13,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(#944), AR1 ; |968| 
        MOV AR1, *SP(#16) ; |968| 
	.dwpsn	file "src/csl_hid.c",line 970,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AR2 ; |970| 
        MOV *AR3(short(#5)), AR1 ; |970| 
        CMPU AR2 >= AR1, TC1 ; |970| 
        BCC $C$L111,TC1 ; |970| 
                                        ; branchcc occurs ; |970| 

        B $C$L112 ; |970| 
||      MOV AR2, AR1

                                        ; branch occurs ; |970| 
$C$L111:    
        MOV *AR3(short(#5)), AR1 ; |970| 
$C$L112:    
        MOV AR1, *SP(#16) ; |970| 
	.dwpsn	file "src/csl_hid.c",line 974,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#16), T0 ; |974| 
        MOV dbl(*AR3(short(#2))), XAR1
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$338, DW_AT_TI_call

        CALL #_USB_postTransaction ; |974| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |974| 
	.dwpsn	file "src/csl_hid.c",line 978,column 13,is_stmt
        MOV #3, *SP(#18) ; |978| 
	.dwpsn	file "src/csl_hid.c",line 979,column 9,is_stmt
        B $C$L115 ; |979| 
                                        ; branch occurs ; |979| 
$C$L113:    
	.dwpsn	file "src/csl_hid.c",line 982,column 13,is_stmt
        MOV #1, *SP(#18) ; |982| 
	.dwpsn	file "src/csl_hid.c",line 984,column 5,is_stmt
        B $C$L115 ; |984| 
                                        ; branch occurs ; |984| 
$C$L114:    
	.dwpsn	file "src/csl_hid.c",line 987,column 6,is_stmt
        MOV #1, *SP(#18) ; |987| 
$C$L115:    
	.dwpsn	file "src/csl_hid.c",line 990,column 2,is_stmt
        MOV *SP(#18), T0 ; |990| 
	.dwpsn	file "src/csl_hid.c",line 991,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$320, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$320, DW_AT_TI_end_line(0x3df)
	.dwattr $C$DW$320, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$320

	.sect	".text"

$C$DW$340	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_stallBus")
	.dwattr $C$DW$340, DW_AT_low_pc(_HID_stallBus)
	.dwattr $C$DW$340, DW_AT_high_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_HID_stallBus")
	.dwattr $C$DW$340, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$340, DW_AT_TI_begin_line(0x3e8)
	.dwattr $C$DW$340, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$340, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_hid.c",line 1001,column 1,is_stmt,address _HID_stallBus

	.dwfde $C$DW$CIE, _HID_stallBus
;*******************************************************************************
;* FUNCTION NAME: HID_stallBus                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_stallBus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_hid.c",line 1003,column 5,is_stmt
        MOV #1282, T0 ; |1003| 
        MOV *(#_usbRegisters), AR3 ; |1003| 
        OR #0x0040, port(*AR3(T0)) ; |1003| 
	.dwpsn	file "src/csl_hid.c",line 1007,column 5,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1007| 
        OR #0x0020, port(*AR3(T0)) ; |1007| 
	.dwpsn	file "src/csl_hid.c",line 1008,column 1,is_stmt
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$340, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$340, DW_AT_TI_end_line(0x3f0)
	.dwattr $C$DW$340, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$340

	.sect	".text"

$C$DW$342	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_classTypeReq")
	.dwattr $C$DW$342, DW_AT_low_pc(_HID_classTypeReq)
	.dwattr $C$DW$342, DW_AT_high_pc(0x00)
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_HID_classTypeReq")
	.dwattr $C$DW$342, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$342, DW_AT_TI_begin_line(0x3fb)
	.dwattr $C$DW$342, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$342, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_hid.c",line 1022,column 1,is_stmt,address _HID_classTypeReq

	.dwfde $C$DW$CIE, _HID_classTypeReq
$C$DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg17]
$C$DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg19]
$C$DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetUp")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: HID_classTypeReq                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_classTypeReq:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("usbSetUp")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$349	.dwtag  DW_TAG_variable, DW_AT_name("bRequest")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$350	.dwtag  DW_TAG_variable, DW_AT_name("bRequest_bmRequestType")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_bRequest_bmRequestType")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$351	.dwtag  DW_TAG_variable, DW_AT_name("wValue")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$352	.dwtag  DW_TAG_variable, DW_AT_name("appHidClassHandle")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_appHidClassHandle")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 1029,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1029| 
        MOV AR1, *SP(#7) ; |1029| 
	.dwpsn	file "src/csl_hid.c",line 1030,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1030| 
        MOV AR1, *SP(#8) ; |1030| 
	.dwpsn	file "src/csl_hid.c",line 1032,column 2,is_stmt
        MOV uns(high_byte(*SP(#7))), AR1 ; |1032| 
        AND #0x00ff, AR1, AC0 ; |1032| 
        MOV AC0, *SP(#6) ; |1032| 
	.dwpsn	file "src/csl_hid.c",line 1034,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 1038,column 5,is_stmt
        B $C$L121 ; |1038| 
                                        ; branch occurs ; |1038| 
$C$L116:    
	.dwpsn	file "src/csl_hid.c",line 1041,column 15,is_stmt
        MOV dbl(*AR3(short(#2))), XAR0
        AMOV #_protocolVal, XAR1 ; |1041| 
        MOV #1, T0
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$353, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1041| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1041| 
	.dwpsn	file "src/csl_hid.c",line 1043,column 20,is_stmt
        B $C$L122 ; |1043| 
                                        ; branch occurs ; |1043| 
$C$L117:    
	.dwpsn	file "src/csl_hid.c",line 1046,column 15,is_stmt
        MOV *SP(#8), AR1 ; |1046| 
        MOV AR1, *(#_protocolVal) ; |1046| 
	.dwpsn	file "src/csl_hid.c",line 1047,column 20,is_stmt
        B $C$L122 ; |1047| 
                                        ; branch occurs ; |1047| 
$C$L118:    
	.dwpsn	file "src/csl_hid.c",line 1050,column 15,is_stmt
        MOV dbl(*AR3(short(#2))), XAR0
        AMOV #_idleVal, XAR1 ; |1050| 
        MOV #1, T0
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$354, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1050| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1050| 
	.dwpsn	file "src/csl_hid.c",line 1052,column 20,is_stmt
        B $C$L122 ; |1052| 
                                        ; branch occurs ; |1052| 
$C$L119:    
	.dwpsn	file "src/csl_hid.c",line 1055,column 15,is_stmt
        MOV uns(high_byte(*SP(#8))), AR1 ; |1055| 
        MOV AR1, *(#_idleVal) ; |1055| 
	.dwpsn	file "src/csl_hid.c",line 1056,column 20,is_stmt
        B $C$L122 ; |1056| 
                                        ; branch occurs ; |1056| 
$C$L120:    
	.dwpsn	file "src/csl_hid.c",line 1058,column 18,is_stmt
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("_HID_stallBus")
	.dwattr $C$DW$355, DW_AT_TI_call
        CALL #_HID_stallBus ; |1058| 
                                        ; call occurs [#_HID_stallBus] ; |1058| 
	.dwpsn	file "src/csl_hid.c",line 1059,column 20,is_stmt
        B $C$L122 ; |1059| 
                                        ; branch occurs ; |1059| 
$C$L121:    
	.dwpsn	file "src/csl_hid.c",line 1038,column 5,is_stmt

        MOV *SP(#6), AR1 ; |1038| 
||      MOV #2, AR2

        CMPU AR1 == AR2, TC1 ; |1038| 
        BCC $C$L118,TC1 ; |1038| 
                                        ; branchcc occurs ; |1038| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1038| 
        BCC $C$L116,TC1 ; |1038| 
                                        ; branchcc occurs ; |1038| 
        MOV #10, AR2
        CMPU AR1 == AR2, TC1 ; |1038| 
        BCC $C$L119,TC1 ; |1038| 
                                        ; branchcc occurs ; |1038| 
        MOV #11, AR2
        CMPU AR1 == AR2, TC1 ; |1038| 
        BCC $C$L117,TC1 ; |1038| 
                                        ; branchcc occurs ; |1038| 
        B $C$L120 ; |1038| 
                                        ; branch occurs ; |1038| 
$C$L122:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$342, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$342, DW_AT_TI_end_line(0x425)
	.dwattr $C$DW$342, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$342

	.sect	".text"

$C$DW$357	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_vendorReq")
	.dwattr $C$DW$357, DW_AT_low_pc(_HID_vendorReq)
	.dwattr $C$DW$357, DW_AT_high_pc(0x00)
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_HID_vendorReq")
	.dwattr $C$DW$357, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$357, DW_AT_TI_begin_line(0x42e)
	.dwattr $C$DW$357, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$357, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_hid.c",line 1071,column 1,is_stmt,address _HID_vendorReq

	.dwfde $C$DW$CIE, _HID_vendorReq
;*******************************************************************************
;* FUNCTION NAME: HID_vendorReq                                                *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_vendorReq:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "src/csl_hid.c",line 1072,column 5,is_stmt
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_HID_stallBus")
	.dwattr $C$DW$358, DW_AT_TI_call
        CALL #_HID_stallBus ; |1072| 
                                        ; call occurs [#_HID_stallBus] ; |1072| 
	.dwpsn	file "src/csl_hid.c",line 1073,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$357, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$357, DW_AT_TI_end_line(0x431)
	.dwattr $C$DW$357, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$357

	.sect	".text"

$C$DW$360	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_setAddrReq")
	.dwattr $C$DW$360, DW_AT_low_pc(_HID_setAddrReq)
	.dwattr $C$DW$360, DW_AT_high_pc(0x00)
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_HID_setAddrReq")
	.dwattr $C$DW$360, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$360, DW_AT_TI_begin_line(0x43a)
	.dwattr $C$DW$360, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$360, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_hid.c",line 1083,column 1,is_stmt,address _HID_setAddrReq

	.dwfde $C$DW$CIE, _HID_setAddrReq
$C$DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetUp")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: HID_setAddrReq                                               *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_setAddrReq:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$362	.dwtag  DW_TAG_variable, DW_AT_name("usbSetUp")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 1091,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$360, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$360, DW_AT_TI_end_line(0x443)
	.dwattr $C$DW$360, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$360

	.sect	".text"

$C$DW$364	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_stdRequest")
	.dwattr $C$DW$364, DW_AT_low_pc(_HID_stdRequest)
	.dwattr $C$DW$364, DW_AT_high_pc(0x00)
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_HID_stdRequest")
	.dwattr $C$DW$364, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$364, DW_AT_TI_begin_line(0x44e)
	.dwattr $C$DW$364, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$364, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_hid.c",line 1105,column 1,is_stmt,address _HID_stdRequest

	.dwfde $C$DW$CIE, _HID_stdRequest
$C$DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg17]
$C$DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg19]
$C$DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetUp")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: HID_stdRequest                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3, *
;*                        AR4,XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_stdRequest:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("usbSetUp")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$371	.dwtag  DW_TAG_variable, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$372	.dwtag  DW_TAG_variable, DW_AT_name("bRequest")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("bmRequestType")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$374	.dwtag  DW_TAG_variable, DW_AT_name("bRequest_bmRequestType")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_bRequest_bmRequestType")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$375	.dwtag  DW_TAG_variable, DW_AT_name("wValue")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$376	.dwtag  DW_TAG_variable, DW_AT_name("wIndex")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$377	.dwtag  DW_TAG_variable, DW_AT_name("wLength")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$378	.dwtag  DW_TAG_variable, DW_AT_name("appHidClassHandle")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_appHidClassHandle")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 1116,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1116| 
        MOV AR1, *SP(#10) ; |1116| 
	.dwpsn	file "src/csl_hid.c",line 1117,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1117| 
        MOV AR1, *SP(#11) ; |1117| 
	.dwpsn	file "src/csl_hid.c",line 1118,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |1118| 
        MOV AR1, *SP(#12) ; |1118| 
	.dwpsn	file "src/csl_hid.c",line 1119,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |1119| 
        MOV AR1, *SP(#13) ; |1119| 
	.dwpsn	file "src/csl_hid.c",line 1121,column 2,is_stmt
        MOV uns(high_byte(*SP(#10))), AR1 ; |1121| 
        AND #0x00ff, AR1, AC0 ; |1121| 
        MOV AC0, *SP(#8) ; |1121| 
	.dwpsn	file "src/csl_hid.c",line 1122,column 5,is_stmt
        MOV uns(low_byte(*SP(#10))), AR1 ; |1122| 
        MOV AR1, *SP(#9) ; |1122| 
	.dwpsn	file "src/csl_hid.c",line 1124,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_hid.c",line 1125,column 5,is_stmt
        MOV #0, AC0 ; |1125| 
        MOV AC0, dbl(*SP(#6)) ; |1125| 
	.dwpsn	file "src/csl_hid.c",line 1127,column 5,is_stmt
        B $C$L134 ; |1127| 
                                        ; branch occurs ; |1127| 
$C$L123:    
	.dwpsn	file "src/csl_hid.c",line 1130,column 13,is_stmt
        MOV #(_HID_reqGetStatus >> 16) << #16, AC0 ; |1130| 
        OR #(_HID_reqGetStatus & 0xffff), AC0, AC0 ; |1130| 
        MOV AC0, dbl(*SP(#6)) ; |1130| 
	.dwpsn	file "src/csl_hid.c",line 1131,column 18,is_stmt
        B $C$L135 ; |1131| 
                                        ; branch occurs ; |1131| 
$C$L124:    
	.dwpsn	file "src/csl_hid.c",line 1134,column 13,is_stmt
        MOV #(_HID_reqClearFeature >> 16) << #16, AC0 ; |1134| 
        OR #(_HID_reqClearFeature & 0xffff), AC0, AC0 ; |1134| 
        MOV AC0, dbl(*SP(#6)) ; |1134| 
	.dwpsn	file "src/csl_hid.c",line 1135,column 18,is_stmt
        B $C$L135 ; |1135| 
                                        ; branch occurs ; |1135| 
$C$L125:    
	.dwpsn	file "src/csl_hid.c",line 1138,column 13,is_stmt
        MOV #(_HID_reqSetFeature >> 16) << #16, AC0 ; |1138| 
        OR #(_HID_reqSetFeature & 0xffff), AC0, AC0 ; |1138| 
        MOV AC0, dbl(*SP(#6)) ; |1138| 
	.dwpsn	file "src/csl_hid.c",line 1139,column 18,is_stmt
        B $C$L135 ; |1139| 
                                        ; branch occurs ; |1139| 
$C$L126:    
	.dwpsn	file "src/csl_hid.c",line 1142,column 13,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("_HID_setAddrReq")
	.dwattr $C$DW$379, DW_AT_TI_call
        CALL #_HID_setAddrReq ; |1142| 
                                        ; call occurs [#_HID_setAddrReq] ; |1142| 
	.dwpsn	file "src/csl_hid.c",line 1143,column 18,is_stmt
        B $C$L135 ; |1143| 
                                        ; branch occurs ; |1143| 
$C$L127:    
	.dwpsn	file "src/csl_hid.c",line 1146,column 13,is_stmt
        MOV #(_HID_reqGetDescriptor >> 16) << #16, AC0 ; |1146| 
        OR #(_HID_reqGetDescriptor & 0xffff), AC0, AC0 ; |1146| 
        MOV AC0, dbl(*SP(#6)) ; |1146| 
	.dwpsn	file "src/csl_hid.c",line 1147,column 18,is_stmt
        B $C$L135 ; |1147| 
                                        ; branch occurs ; |1147| 
$C$L128:    
	.dwpsn	file "src/csl_hid.c",line 1150,column 13,is_stmt
        MOV #(_HID_reqUnknown >> 16) << #16, AC0 ; |1150| 
        OR #(_HID_reqUnknown & 0xffff), AC0, AC0 ; |1150| 
        MOV AC0, dbl(*SP(#6)) ; |1150| 
	.dwpsn	file "src/csl_hid.c",line 1151,column 18,is_stmt
        B $C$L135 ; |1151| 
                                        ; branch occurs ; |1151| 
$C$L129:    
	.dwpsn	file "src/csl_hid.c",line 1154,column 13,is_stmt
        MOV #(_HID_reqGetConfiguration >> 16) << #16, AC0 ; |1154| 
        OR #(_HID_reqGetConfiguration & 0xffff), AC0, AC0 ; |1154| 
        MOV AC0, dbl(*SP(#6)) ; |1154| 
	.dwpsn	file "src/csl_hid.c",line 1155,column 18,is_stmt
        B $C$L135 ; |1155| 
                                        ; branch occurs ; |1155| 
$C$L130:    
	.dwpsn	file "src/csl_hid.c",line 1158,column 13,is_stmt
        MOV #(_HID_reqSetConfiguration >> 16) << #16, AC0 ; |1158| 
        OR #(_HID_reqSetConfiguration & 0xffff), AC0, AC0 ; |1158| 
        MOV AC0, dbl(*SP(#6)) ; |1158| 
	.dwpsn	file "src/csl_hid.c",line 1159,column 18,is_stmt
        B $C$L135 ; |1159| 
                                        ; branch occurs ; |1159| 
$C$L131:    
	.dwpsn	file "src/csl_hid.c",line 1162,column 13,is_stmt
        MOV #(_HID_reqGetConfiguration >> 16) << #16, AC0 ; |1162| 
        OR #(_HID_reqGetConfiguration & 0xffff), AC0, AC0 ; |1162| 
        MOV AC0, dbl(*SP(#6)) ; |1162| 
	.dwpsn	file "src/csl_hid.c",line 1163,column 18,is_stmt
        B $C$L135 ; |1163| 
                                        ; branch occurs ; |1163| 
$C$L132:    
	.dwpsn	file "src/csl_hid.c",line 1166,column 13,is_stmt
        MOV #(_HID_reqSetConfiguration >> 16) << #16, AC0 ; |1166| 
        OR #(_HID_reqSetConfiguration & 0xffff), AC0, AC0 ; |1166| 
        MOV AC0, dbl(*SP(#6)) ; |1166| 
	.dwpsn	file "src/csl_hid.c",line 1167,column 18,is_stmt
        B $C$L135 ; |1167| 
                                        ; branch occurs ; |1167| 
$C$L133:    
	.dwpsn	file "src/csl_hid.c",line 1173,column 18,is_stmt
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("_HID_stallBus")
	.dwattr $C$DW$380, DW_AT_TI_call
        CALL #_HID_stallBus ; |1173| 
                                        ; call occurs [#_HID_stallBus] ; |1173| 
	.dwpsn	file "src/csl_hid.c",line 1174,column 18,is_stmt
        B $C$L135 ; |1174| 
                                        ; branch occurs ; |1174| 
$C$L134:    
	.dwpsn	file "src/csl_hid.c",line 1127,column 5,is_stmt
        MOV *SP(#8), AC0 ; |1127| 

        MOV AC0, AR1 ; |1127| 
||      MOV #11, AR2

        CMPU AR1 <= AR2, TC1 ; |1127| 
        BCC $C$L133,!TC1 ; |1127| 
                                        ; branchcc occurs ; |1127| 
        SFTL AC0, #1, AC0 ; |1127| 
        AND #0xffff, AC0, AC1 ; |1127| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |1127| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |1127| 
        ADD AC1, AC0 ; |1127| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |1127| 
        B AC0     ; |1127| 
                                        ; branch occurs ; |1127| 
	.sect	".switch:_HID_stdRequest"
	.clink
$C$SW1:	.long	$C$L123	; 0
	.long	$C$L124	; 1
	.long	$C$L133	; 0
	.long	$C$L125	; 3
	.long	$C$L133	; 0
	.long	$C$L126	; 5
	.long	$C$L127	; 6
	.long	$C$L128	; 7
	.long	$C$L129	; 8
	.long	$C$L130	; 9
	.long	$C$L131	; 10
	.long	$C$L132	; 11
	.sect	".text"
$C$L135:    
	.dwpsn	file "src/csl_hid.c",line 1177,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3 ; |1177| 
	.dwpsn	file "src/csl_hid.c",line 1178,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), AR1 ; |1178| 
        MOV AR1, *AR3(short(#1)) ; |1178| 
	.dwpsn	file "src/csl_hid.c",line 1179,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#8), AR1 ; |1179| 
        MOV AR1, *AR3(short(#2)) ; |1179| 
	.dwpsn	file "src/csl_hid.c",line 1180,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#11), AR1 ; |1180| 
        MOV AR1, *AR3(short(#3)) ; |1180| 
	.dwpsn	file "src/csl_hid.c",line 1181,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#12), AR1 ; |1181| 
        MOV AR1, *AR3(short(#4)) ; |1181| 
	.dwpsn	file "src/csl_hid.c",line 1182,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#13), AR1 ; |1182| 
        MOV AR1, *AR3(short(#5)) ; |1182| 
	.dwpsn	file "src/csl_hid.c",line 1184,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1184| 
        BCC $C$L136,AC0 == #0 ; |1184| 
                                        ; branchcc occurs ; |1184| 
	.dwpsn	file "src/csl_hid.c",line 1186,column 3,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*SP(#0)), XAR4
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#6)), AC0 ; |1186| 
        MOV dbl(*AR3), XAR0
        MOV dbl(*AR3(short(#2))), XAR2
        MOV dbl(*AR4), XAR4
        MOV dbl(*AR3(short(#6))), XAR3
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_TI_call
	.dwattr $C$DW$381, DW_AT_TI_indirect
        CALL AC0  ; |1186| 
                                        ; call occurs [AC0] ; |1186| 
	.dwpsn	file "src/csl_hid.c",line 1192,column 1,is_stmt
$C$L136:    
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$364, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$364, DW_AT_TI_end_line(0x4a8)
	.dwattr $C$DW$364, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$364

	.sect	".text"

$C$DW$383	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_ReqSetup")
	.dwattr $C$DW$383, DW_AT_low_pc(_HID_ReqSetup)
	.dwattr $C$DW$383, DW_AT_high_pc(0x00)
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_HID_ReqSetup")
	.dwattr $C$DW$383, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$383, DW_AT_TI_begin_line(0x4b3)
	.dwattr $C$DW$383, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$383, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_hid.c",line 1206,column 1,is_stmt,address _HID_ReqSetup

	.dwfde $C$DW$CIE, _HID_ReqSetup
$C$DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg17]
$C$DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg19]
$C$DW$386	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetUp")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: HID_ReqSetup                                                 *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_ReqSetup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$387	.dwtag  DW_TAG_variable, DW_AT_name("hidAppHandle")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_hidAppHandle")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$388	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$389	.dwtag  DW_TAG_variable, DW_AT_name("usbSetUp")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$390	.dwtag  DW_TAG_variable, DW_AT_name("bRequest_bmRequestType")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_bRequest_bmRequestType")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$391	.dwtag  DW_TAG_variable, DW_AT_name("bmRequestType")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 1210,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |1210| 
        MOV AR1, *SP(#6) ; |1210| 
	.dwpsn	file "src/csl_hid.c",line 1212,column 5,is_stmt
        MOV uns(low_byte(*SP(#6))), AR1 ; |1212| 
        MOV AR1, *SP(#7) ; |1212| 
	.dwpsn	file "src/csl_hid.c",line 1215,column 5,is_stmt
        B $C$L141 ; |1215| 
                                        ; branch occurs ; |1215| 
$C$L137:    
	.dwpsn	file "src/csl_hid.c",line 1217,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#4)), XAR2
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_name("_HID_stdRequest")
	.dwattr $C$DW$392, DW_AT_TI_call
        CALL #_HID_stdRequest ; |1217| 
                                        ; call occurs [#_HID_stdRequest] ; |1217| 
	.dwpsn	file "src/csl_hid.c",line 1218,column 18,is_stmt
        B $C$L142 ; |1218| 
                                        ; branch occurs ; |1218| 
$C$L138:    
	.dwpsn	file "src/csl_hid.c",line 1220,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#4)), XAR2
$C$DW$393	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$393, DW_AT_low_pc(0x00)
	.dwattr $C$DW$393, DW_AT_name("_HID_classTypeReq")
	.dwattr $C$DW$393, DW_AT_TI_call
        CALL #_HID_classTypeReq ; |1220| 
                                        ; call occurs [#_HID_classTypeReq] ; |1220| 
	.dwpsn	file "src/csl_hid.c",line 1221,column 18,is_stmt
        B $C$L142 ; |1221| 
                                        ; branch occurs ; |1221| 
$C$L139:    
	.dwpsn	file "src/csl_hid.c",line 1223,column 21,is_stmt
$C$DW$394	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$394, DW_AT_low_pc(0x00)
	.dwattr $C$DW$394, DW_AT_name("_HID_vendorReq")
	.dwattr $C$DW$394, DW_AT_TI_call
        CALL #_HID_vendorReq ; |1223| 
                                        ; call occurs [#_HID_vendorReq] ; |1223| 
	.dwpsn	file "src/csl_hid.c",line 1224,column 18,is_stmt
        B $C$L142 ; |1224| 
                                        ; branch occurs ; |1224| 
$C$L140:    
	.dwpsn	file "src/csl_hid.c",line 1226,column 21,is_stmt
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_name("_HID_stallBus")
	.dwattr $C$DW$395, DW_AT_TI_call
        CALL #_HID_stallBus ; |1226| 
                                        ; call occurs [#_HID_stallBus] ; |1226| 
	.dwpsn	file "src/csl_hid.c",line 1227,column 18,is_stmt
        B $C$L142 ; |1227| 
                                        ; branch occurs ; |1227| 
$C$L141:    
	.dwpsn	file "src/csl_hid.c",line 1215,column 5,is_stmt
        AND #0x0060, AR1, AR1 ; |1215| 
        BCC $C$L137,AR1 == #0 ; |1215| 
                                        ; branchcc occurs ; |1215| 
        MOV #32, AR2 ; |1215| 
        CMPU AR1 == AR2, TC1 ; |1215| 
        BCC $C$L138,TC1 ; |1215| 
                                        ; branchcc occurs ; |1215| 
        MOV #64, AR2 ; |1215| 
        CMPU AR1 == AR2, TC1 ; |1215| 
        BCC $C$L139,TC1 ; |1215| 
                                        ; branchcc occurs ; |1215| 
        B $C$L140 ; |1215| 
                                        ; branch occurs ; |1215| 
$C$L142:    
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$383, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$383, DW_AT_TI_end_line(0x4cd)
	.dwattr $C$DW$383, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$383

	.sect	".text"
	.global	_HID_eventHandler

$C$DW$397	.dwtag  DW_TAG_subprogram, DW_AT_name("HID_eventHandler")
	.dwattr $C$DW$397, DW_AT_low_pc(_HID_eventHandler)
	.dwattr $C$DW$397, DW_AT_high_pc(0x00)
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_HID_eventHandler")
	.dwattr $C$DW$397, DW_AT_external
	.dwattr $C$DW$397, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$397, DW_AT_TI_begin_line(0x508)
	.dwattr $C$DW$397, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$397, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_hid.c",line 1291,column 1,is_stmt,address _HID_eventHandler

	.dwfde $C$DW$CIE, _HID_eventHandler
$C$DW$398	.dwtag  DW_TAG_variable, DW_AT_name("bRequest")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_bRequest$1")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_addr _bRequest$1]
$C$DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pContext")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg17]
$C$DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pHidAppHandle")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_pHidAppHandle")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg19]
$C$DW$401	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetUp")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: HID_eventHandler                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,  *
;*                        XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_HID_eventHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$402	.dwtag  DW_TAG_variable, DW_AT_name("pContext")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_pContext")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$403	.dwtag  DW_TAG_variable, DW_AT_name("pHidAppHandle")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_pHidAppHandle")
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$403, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$404	.dwtag  DW_TAG_variable, DW_AT_name("usbSetUp")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_usbSetUp")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$404, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$405	.dwtag  DW_TAG_variable, DW_AT_name("RXPKTRDY")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_RXPKTRDY")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$406	.dwtag  DW_TAG_variable, DW_AT_name("TXPKTRDY")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_TXPKTRDY")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$407	.dwtag  DW_TAG_variable, DW_AT_name("SENTSTALL")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_SENTSTALL")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$408	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$409	.dwtag  DW_TAG_variable, DW_AT_name("inPtr")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_inPtr")
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$409, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$410	.dwtag  DW_TAG_variable, DW_AT_name("bRequest_bmRequestType")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_bRequest_bmRequestType")
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$411	.dwtag  DW_TAG_variable, DW_AT_name("appHidClassHandle")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_appHidClassHandle")
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$411, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_hid.c",line 1301,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_hid.c",line 1302,column 2,is_stmt
        AMOV #_input, XAR3 ; |1302| 
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 1304,column 2,is_stmt
        MOV #1282, T0 ; |1304| 
        MOV *(#_usbRegisters), AR3 ; |1304| 
        MOV port(*AR3(T0)), AR1 ; |1304| 
        AND #0x0001, AR1, AC0 ; |1304| 
        MOV AC0, *SP(#6) ; |1304| 
	.dwpsn	file "src/csl_hid.c",line 1305,column 2,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1305| 
        AND #0x0002, AR1, AC0 ; |1305| 
        MOV AC0, *SP(#7) ; |1305| 
	.dwpsn	file "src/csl_hid.c",line 1306,column 2,is_stmt
        MOV port(*AR3(T0)), AR1 ; |1306| 
        AND #0x0004, AR1, AC0 ; |1306| 
        MOV AC0, *SP(#8) ; |1306| 
	.dwpsn	file "src/csl_hid.c",line 1308,column 2,is_stmt
	.dwpsn	file "src/csl_hid.c",line 1311,column 2,is_stmt
        CMP *SP(#8) == #4, TC1 ; |1311| 
        BCC $C$L143,!TC1 ; |1311| 
                                        ; branchcc occurs ; |1311| 
	.dwpsn	file "src/csl_hid.c",line 1313,column 3,is_stmt
        AND #0xfffb, port(*AR3(T0)) ; |1313| 
	.dwpsn	file "src/csl_hid.c",line 1314,column 2,is_stmt
        B $C$L147 ; |1314| 
                                        ; branch occurs ; |1314| 
$C$L143:    
	.dwpsn	file "src/csl_hid.c",line 1316,column 7,is_stmt
        CMP *SP(#6) == #1, TC1 ; |1316| 
        BCC $C$L146,!TC1 ; |1316| 
                                        ; branchcc occurs ; |1316| 
	.dwpsn	file "src/csl_hid.c",line 1318,column 8,is_stmt
        MOV #0, *SP(#9) ; |1318| 
	.dwpsn	file "src/csl_hid.c",line 1318,column 15,is_stmt

        MOV *SP(#9), AR1 ; |1318| 
||      MOV #4, AR2

        CMP AR1 >= AR2, TC1 ; |1318| 
        BCC $C$L145,TC1 ; |1318| 
                                        ; branchcc occurs ; |1318| 
$C$L144:    
$C$DW$L$_HID_eventHandler$5$B:
	.dwpsn	file "src/csl_hid.c",line 1320,column 4,is_stmt
        MOV #1057, T0 ; |1320| 
        MOV *(#_usbRegisters), AR3 ; |1320| 
        MOV port(*AR3(T0)), AR1 ; |1320| 
        MOV dbl(*SP(#10)), XAR3
        MOV AR1, *AR3 ; |1320| 
	.dwpsn	file "src/csl_hid.c",line 1321,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 1318,column 22,is_stmt
        ADD #1, *SP(#9) ; |1318| 
	.dwpsn	file "src/csl_hid.c",line 1318,column 15,is_stmt
        MOV *SP(#9), AR1 ; |1318| 
        CMP AR1 < AR2, TC1 ; |1318| 
        BCC $C$L144,TC1 ; |1318| 
                                        ; branchcc occurs ; |1318| 
$C$DW$L$_HID_eventHandler$5$E:
$C$L145:    
	.dwpsn	file "src/csl_hid.c",line 1323,column 3,is_stmt
        AMOV #_input, XAR3 ; |1323| 
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_hid.c",line 1324,column 3,is_stmt
        MOV #1282, T0 ; |1324| 
        MOV *(#_usbRegisters), AR3 ; |1324| 
        OR #0x0040, port(*AR3(T0)) ; |1324| 
	.dwpsn	file "src/csl_hid.c",line 1326,column 3,is_stmt
        MOV *(#_input), AR1 ; |1326| 
        MOV AR1, *SP(#12) ; |1326| 
	.dwpsn	file "src/csl_hid.c",line 1328,column 9,is_stmt
        MOV uns(high_byte(*SP(#12))), AR1 ; |1328| 
        AND #0x00ff, AR1, AC0 ; |1328| 
        MOV AC0, *(#_bRequest$1) ; |1328| 
	.dwpsn	file "src/csl_hid.c",line 1330,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR2
        AMOV #_input, XAR1 ; |1330| 
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("_HID_ReqSetup")
	.dwattr $C$DW$412, DW_AT_TI_call
        CALL #_HID_ReqSetup ; |1330| 
                                        ; call occurs [#_HID_ReqSetup] ; |1330| 
	.dwpsn	file "src/csl_hid.c",line 1331,column 2,is_stmt
        B $C$L147 ; |1331| 
                                        ; branch occurs ; |1331| 
$C$L146:    
	.dwpsn	file "src/csl_hid.c",line 1335,column 3,is_stmt
        CMP *(#_bRequest$1) == #5, TC1 ; |1335| 
        BCC $C$L147,!TC1 ; |1335| 
                                        ; branchcc occurs ; |1335| 
	.dwpsn	file "src/csl_hid.c",line 1337,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV dbl(*SP(#2)), XAR4
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
        MOV dbl(*AR3(short(#2))), XAR2
        MOV dbl(*AR4), XAR4
        MOV dbl(*AR3(short(#6))), XAR3
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("_HID_reqSetAddress")
	.dwattr $C$DW$413, DW_AT_TI_call
        CALL #_HID_reqSetAddress ; |1337| 
                                        ; call occurs [#_HID_reqSetAddress] ; |1337| 
$C$L147:    
	.dwpsn	file "src/csl_hid.c",line 1347,column 2,is_stmt
        MOV *(#_usbRegisters), AR3 ; |1347| 
        MOV #1038, T0 ; |1347| 
        MOV #0, port(*AR3(T0)) ; |1347| 
	.dwpsn	file "src/csl_hid.c",line 1348,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$415	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$415, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_hid.asm:$C$L144:1:1714639437")
	.dwattr $C$DW$415, DW_AT_TI_begin_file("src/csl_hid.c")
	.dwattr $C$DW$415, DW_AT_TI_begin_line(0x526)
	.dwattr $C$DW$415, DW_AT_TI_end_line(0x52a)
$C$DW$416	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$416, DW_AT_low_pc($C$DW$L$_HID_eventHandler$5$B)
	.dwattr $C$DW$416, DW_AT_high_pc($C$DW$L$_HID_eventHandler$5$E)
	.dwendtag $C$DW$415

	.dwattr $C$DW$397, DW_AT_TI_end_file("src/csl_hid.c")
	.dwattr $C$DW$397, DW_AT_TI_end_line(0x544)
	.dwattr $C$DW$397, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$397

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"USB Reset failed",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_USB_init
	.global	_USB_open
	.global	_USB_config
	.global	_USB_requestEndpt
	.global	_USB_configEndpt
	.global	_USB_resetDev
	.global	_USB_getEvents
	.global	_USB_getSetupPacket
	.global	_USB_postTransaction
	.global	_USB_stallEndpt
	.global	_USB_clearEndptStall
	.global	_USB_getEndptStall
	.global	_USB_abortAllTransaction
	.global	_USB_connectDev
	.global	_USB_disconnectDev
	.global	_USB_setRemoteWakeup
	.global	_USB_getRemoteWakeupStat
	.global	_USB_setDevAddr
	.global	_USB_setParams
	.global	_printf
	.global	_usbRegisters

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$74	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB0"), DW_AT_const_value(0x00)
$C$DW$418	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB1"), DW_AT_const_value(0x01)
$C$DW$419	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$74

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevNum")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

$C$DW$T$88	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$420	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_DONE"), DW_AT_const_value(0x00)
$C$DW$421	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_STALL"), DW_AT_const_value(0x01)
$C$DW$422	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_SEND_ACK"), DW_AT_const_value(0x02)
$C$DW$423	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_GET_ACK"), DW_AT_const_value(0x03)
$C$DW$424	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_DATA_IN"), DW_AT_const_value(0x04)
$C$DW$425	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REQUEST_DATA_OUT"), DW_AT_const_value(0x05)
	.dwendtag $C$DW$T$88

$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidRequestRet")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$426	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$67)
$C$DW$427	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$90)
$C$DW$428	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$73)
$C$DW$429	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$73)
$C$DW$430	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$91

$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)
$C$DW$T$160	.dwtag  DW_TAG_typedef, DW_AT_name("fpHID_REQ_HANDLER")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)

$C$DW$T$112	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$431	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$432	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$433	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA_TXONLY"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$112

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbOpMode")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$126	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x01)
$C$DW$434	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_FALSE"), DW_AT_const_value(0x00)
$C$DW$435	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_TRUE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$126

$C$DW$T$127	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBoolean")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)

$C$DW$T$128	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x01)
$C$DW$436	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_UNKNOWN_SPEED"), DW_AT_const_value(0x00)
$C$DW$437	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_FULL_SPEED"), DW_AT_const_value(0x02)
$C$DW$438	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_HIGH_SPEED"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$128

$C$DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBusSpeed")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)

$C$DW$T$130	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x01)
$C$DW$439	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_IDLE"), DW_AT_const_value(0x00)
$C$DW$440	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_STATUS_IN"), DW_AT_const_value(0x01)
$C$DW$441	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_TX"), DW_AT_const_value(0x02)
$C$DW$442	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_RX"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$130

$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEp0State")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)

$C$DW$T$134	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x01)
$C$DW$443	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_DETACH"), DW_AT_const_value(0x00)
$C$DW$444	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_ATTACH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$134

$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDeviceEvent")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$141	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x01)
$C$DW$445	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP0"), DW_AT_const_value(0x00)
$C$DW$446	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP1"), DW_AT_const_value(0x01)
$C$DW$447	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP2"), DW_AT_const_value(0x02)
$C$DW$448	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP3"), DW_AT_const_value(0x03)
$C$DW$449	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP4"), DW_AT_const_value(0x04)
$C$DW$450	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP5"), DW_AT_const_value(0x05)
$C$DW$451	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP6"), DW_AT_const_value(0x06)
$C$DW$452	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP7"), DW_AT_const_value(0x07)
$C$DW$453	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP0"), DW_AT_const_value(0x08)
$C$DW$454	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP1"), DW_AT_const_value(0x09)
$C$DW$455	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP2"), DW_AT_const_value(0x0a)
$C$DW$456	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP3"), DW_AT_const_value(0x0b)
$C$DW$457	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP4"), DW_AT_const_value(0x0c)
$C$DW$458	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP5"), DW_AT_const_value(0x0d)
$C$DW$459	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP6"), DW_AT_const_value(0x0e)
$C$DW$460	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP7"), DW_AT_const_value(0x0f)
	.dwendtag $C$DW$T$141

$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpNum")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)

$C$DW$T$143	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x01)
$C$DW$461	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_CTRL"), DW_AT_const_value(0x00)
$C$DW$462	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BULK"), DW_AT_const_value(0x01)
$C$DW$463	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_INTR"), DW_AT_const_value(0x02)
$C$DW$464	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_ISO"), DW_AT_const_value(0x03)
$C$DW$465	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_HPORT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$143

$C$DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbXferType")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)

$C$DW$T$163	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x01)
$C$DW$466	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_DEVICE_DESCR"), DW_AT_const_value(0x00)
$C$DW$467	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_DEVICE_QUAL_DESCR"), DW_AT_const_value(0x01)
$C$DW$468	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_CONFIG_DESCR"), DW_AT_const_value(0x02)
$C$DW$469	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_INTERFACE_DESCR"), DW_AT_const_value(0x03)
$C$DW$470	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_STRING_LANGID_DESC"), DW_AT_const_value(0x04)
$C$DW$471	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_REPORT_DESC"), DW_AT_const_value(0x05)
$C$DW$472	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_HID_OTHER_SPEED_CONFIG_DESCR"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$163

$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidDescrId")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$473, DW_AT_name("TXFUNCADDR")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_TXFUNCADDR")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$474, DW_AT_name("TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_TXHUBADDR_TXHUBPORT")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$475, DW_AT_name("RSVD0")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_name("RXFUNCADDR")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_RXFUNCADDR")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$477, DW_AT_name("RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_RXHUBADDR_RXHUBPORT")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$478, DW_AT_name("RSVD36")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_RSVD36")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEptrgRegs")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x28)
$C$DW$479	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$479, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$40


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x10)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$480, DW_AT_name("TXMAXP")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_TXMAXP")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$481, DW_AT_name("PERI_TXCSR")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_PERI_TXCSR")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$482, DW_AT_name("RSVD0")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$483, DW_AT_name("RXMAXP")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_RXMAXP")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$484, DW_AT_name("PERI_RXCSR")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_PERI_RXCSR")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$485, DW_AT_name("RSVD1")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$486, DW_AT_name("RXCOUNT")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_RXCOUNT")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$487, DW_AT_name("RSVD41")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_RSVD41")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpcsrRegs")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x40)
$C$DW$488	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$488, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$43


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x20)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$489, DW_AT_name("TXGCR1")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_TXGCR1")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_name("TXGCR2")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_TXGCR2")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$491, DW_AT_name("RSVD0")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$492, DW_AT_name("RXGCR1")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_RXGCR1")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_name("RXGCR2")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_RXGCR2")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$494, DW_AT_name("RSVD1")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("RXHPCR1A")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_RXHPCR1A")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_name("RXHPCR2A")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_RXHPCR2A")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$497, DW_AT_name("RSVD2")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$498, DW_AT_name("RXHPCR1B")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_RXHPCR1B")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_name("RXHPCR2B")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_RXHPCR2B")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$500, DW_AT_name("RSVD46")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_RSVD46")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbChannelRegs")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x80)
$C$DW$501	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$501, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$47


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x04)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$502, DW_AT_name("ENTRYLSW")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_ENTRYLSW")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$503, DW_AT_name("ENTRYMSW")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_ENTRYMSW")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$504, DW_AT_name("RSVD49")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_RSVD49")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbCdmaschetblwordRegs")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x100)
$C$DW$505	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$505, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$51


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x10)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_name("QMEMRBASE1")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_QMEMRBASE1")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_name("QMEMRBASE2")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_QMEMRBASE2")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$508, DW_AT_name("RSVD0")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_name("QMEMRCTRL1")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_QMEMRCTRL1")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$510, DW_AT_name("QMEMRCTRL2")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_QMEMRCTRL2")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$511, DW_AT_name("RSVD63")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_RSVD63")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmmemregrRegs")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x100)
$C$DW$512	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$512, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$57


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x10)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$513, DW_AT_name("RSVD0")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$514, DW_AT_name("CTRL1D")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_CTRL1D")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$515, DW_AT_name("CTRL2D")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_CTRL2D")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$516, DW_AT_name("RSVD65")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_RSVD65")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnRegs")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x400)
$C$DW$517	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$517, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$60


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x10)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$518, DW_AT_name("QSTATA")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_QSTATA")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$519, DW_AT_name("RSVD0")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$520, DW_AT_name("QSTAT1B")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_QSTAT1B")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$521, DW_AT_name("QSTAT2B")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_QSTAT2B")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$522, DW_AT_name("RSVD1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$523, DW_AT_name("QSTAT1C")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_QSTAT1C")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$524, DW_AT_name("RSVD67")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_RSVD67")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbQmqnsRegs")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x400)
$C$DW$525	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$525, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x6c00)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$526, DW_AT_name("REVID1")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_REVID1")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$527, DW_AT_name("REVID2")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_REVID2")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$528, DW_AT_name("RSVD0")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$529, DW_AT_name("CTRLR")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_CTRLR")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$530, DW_AT_name("RSVD1")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$531, DW_AT_name("STATR")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_STATR")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$532, DW_AT_name("RSVD2")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$533, DW_AT_name("EMUR")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_EMUR")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$534, DW_AT_name("RSVD3")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$535, DW_AT_name("MODE1")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_MODE1")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$536, DW_AT_name("MODE2")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_MODE2")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$537, DW_AT_name("RSVD4")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$538, DW_AT_name("AUTOREQ")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_AUTOREQ")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$539, DW_AT_name("RSVD5")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$540, DW_AT_name("SPRFIXTIME1")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_SPRFIXTIME1")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$541, DW_AT_name("SPRFIXTIME2")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_SPRFIXTIME2")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_name("RSVD6")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$543, DW_AT_name("TEARDOWN1")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_TEARDOWN1")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$544, DW_AT_name("TEARDOWN2")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_TEARDOWN2")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$545, DW_AT_name("RSVD7")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$546, DW_AT_name("INTSRCR1")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_INTSRCR1")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$547, DW_AT_name("INTSRCR2")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_INTSRCR2")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$548, DW_AT_name("RSVD8")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$549, DW_AT_name("INTSETR1")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_INTSETR1")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$550, DW_AT_name("INTSETR2")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_INTSETR2")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$551, DW_AT_name("RSVD9")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$552, DW_AT_name("INTCLRR1")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_INTCLRR1")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$553, DW_AT_name("INTCLRR2")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_INTCLRR2")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$554, DW_AT_name("RSVD10")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$555, DW_AT_name("INTMSKR1")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_INTMSKR1")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$556, DW_AT_name("INTMSKR2")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_INTMSKR2")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$557, DW_AT_name("RSVD11")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$558, DW_AT_name("INTMSKSETR1")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_INTMSKSETR1")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$559, DW_AT_name("INTMSKSETR2")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_INTMSKSETR2")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$560, DW_AT_name("RSVD12")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$561, DW_AT_name("INTMSKCLRR1")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_INTMSKCLRR1")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$562, DW_AT_name("INTMSKCLRR2")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_INTMSKCLRR2")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$563, DW_AT_name("RSVD13")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$564, DW_AT_name("INTMASKEDR1")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_INTMASKEDR1")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$565, DW_AT_name("INTMASKEDR2")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_INTMASKEDR2")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$566, DW_AT_name("RSVD14")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$567, DW_AT_name("EOIR")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_EOIR")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$568, DW_AT_name("RSVD15")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$569, DW_AT_name("INTVECTR1")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_INTVECTR1")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$570, DW_AT_name("INTVECTR2")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_INTVECTR2")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$571, DW_AT_name("RSVD16")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$572, DW_AT_name("GREP1SZR1")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_GREP1SZR1")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$573, DW_AT_name("GREP1SZR2")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_GREP1SZR2")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$574, DW_AT_name("RSVD17")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$575, DW_AT_name("GREP2SZR1")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_GREP2SZR1")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$576, DW_AT_name("GREP2SZR2")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_GREP2SZR2")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$577, DW_AT_name("RSVD18")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$578, DW_AT_name("GREP3SZR1")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_GREP3SZR1")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$579, DW_AT_name("GREP3SZR2")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GREP3SZR2")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$580, DW_AT_name("RSVD19")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$581, DW_AT_name("GREP4SZR1")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GREP4SZR1")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$582, DW_AT_name("GREP4SZR2")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GREP4SZR2")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$583, DW_AT_name("RSVD20")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$584, DW_AT_name("FADDR_POWER")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_FADDR_POWER")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x401]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$585, DW_AT_name("INTRTX")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_INTRTX")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x402]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$586, DW_AT_name("RSVD21")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x403]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$587, DW_AT_name("INTRRX")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_INTRRX")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x405]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$588, DW_AT_name("INTRTXE")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_INTRTXE")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x406]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$589, DW_AT_name("RSVD22")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x407]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$590, DW_AT_name("INTRRXE")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_INTRRXE")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x409]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$591, DW_AT_name("INTRUSB_INTRUSBE")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_INTRUSB_INTRUSBE")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x40a]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$592, DW_AT_name("RSVD23")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x40b]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$593, DW_AT_name("FRAME")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_FRAME")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x40d]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$594, DW_AT_name("INDEX_TESTMODE")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_INDEX_TESTMODE")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x40e]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$595, DW_AT_name("RSVD24")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_RSVD24")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x40f]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$596, DW_AT_name("TXMAXP_INDX")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_TXMAXP_INDX")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x411]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$597, DW_AT_name("PERI_CSR0_INDX")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_PERI_CSR0_INDX")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x412]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$598, DW_AT_name("RSVD25")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_RSVD25")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x413]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$599, DW_AT_name("RXMAXP_INDX")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_RXMAXP_INDX")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x415]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$600, DW_AT_name("PERI_RXCSR_INDX")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_PERI_RXCSR_INDX")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x416]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$601, DW_AT_name("RSVD26")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_RSVD26")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x417]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$602, DW_AT_name("COUNT0_INDX")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_COUNT0_INDX")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x419]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$603, DW_AT_name("RSVD27")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_RSVD27")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x41a]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$604, DW_AT_name("CONFIGDATA_INDX")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_CONFIGDATA_INDX")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x41e]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$605, DW_AT_name("RSVD28")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_RSVD28")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x41f]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$606, DW_AT_name("FIFO0R1")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_FIFO0R1")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x421]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$607, DW_AT_name("FIFO0R2")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_FIFO0R2")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x422]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$608, DW_AT_name("RSVD29")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_RSVD29")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x423]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$609, DW_AT_name("FIFO1R1")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_FIFO1R1")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x425]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$610, DW_AT_name("FIFO1R2")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_FIFO1R2")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x426]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$611, DW_AT_name("RSVD30")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_RSVD30")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x427]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$612, DW_AT_name("FIFO2R1")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_FIFO2R1")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x429]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$613, DW_AT_name("FIFO2R2")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_FIFO2R2")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x42a]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$614, DW_AT_name("RSVD31")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_RSVD31")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x42b]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$615, DW_AT_name("FIFO3R1")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_FIFO3R1")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x42d]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$616, DW_AT_name("FIFO3R2")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_FIFO3R2")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x42e]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$617, DW_AT_name("RSVD32")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_RSVD32")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x42f]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$618, DW_AT_name("FIFO4R1")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_FIFO4R1")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x431]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$619, DW_AT_name("FIFO4R2")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_FIFO4R2")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x432]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$620, DW_AT_name("RSVD33")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_RSVD33")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x433]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$621, DW_AT_name("DEVCTL")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_DEVCTL")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x461]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$622, DW_AT_name("TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_TXFIFOSZ_RXFIFOSZ")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x462]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$623, DW_AT_name("RSVD34")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_RSVD34")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x463]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$624, DW_AT_name("TXFIFOADDR")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_TXFIFOADDR")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x465]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$625, DW_AT_name("RXFIFOADDR")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_RXFIFOADDR")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x466]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$626, DW_AT_name("RSVD35")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_RSVD35")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x467]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$627, DW_AT_name("HWVERS")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_HWVERS")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x46d]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$628, DW_AT_name("RSVD37")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_RSVD37")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x46e]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$629, DW_AT_name("EPTRG")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_EPTRG")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x481]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$630, DW_AT_name("RSVD38")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_RSVD38")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a9]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$631, DW_AT_name("PERI_CSR0")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_PERI_CSR0")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x502]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$632, DW_AT_name("RSVD39")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_RSVD39")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x503]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$633, DW_AT_name("COUNT0")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_COUNT0")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x509]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$634, DW_AT_name("RSVD40")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_RSVD40")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x50a]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$635, DW_AT_name("CONFIGDATA")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_CONFIGDATA")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x50e]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$636, DW_AT_name("RSVD42")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_RSVD42")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x50f]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$637, DW_AT_name("EPCSR")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_EPCSR")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x511]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$638, DW_AT_name("RSVD43")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_RSVD43")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x551]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$639, DW_AT_name("DMAREVID1")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_DMAREVID1")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1000]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$640, DW_AT_name("DMAREVID2")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_DMAREVID2")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x1001]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$641, DW_AT_name("RSVD44")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_RSVD44")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x1002]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$642, DW_AT_name("TDFDQ")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_TDFDQ")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x1004]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$643, DW_AT_name("RSVD45")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_RSVD45")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x1005]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$644, DW_AT_name("DMAEMU")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_DMAEMU")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x1008]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$645, DW_AT_name("RSVD47")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_RSVD47")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x1009]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$646, DW_AT_name("CHANNEL")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_CHANNEL")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x1800]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$647, DW_AT_name("RSVD48")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_RSVD48")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x1880]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$648, DW_AT_name("DMA_SCHED_CTRL1")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL1")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x2000]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$649, DW_AT_name("DMA_SCHED_CTRL2")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_DMA_SCHED_CTRL2")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x2001]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$650, DW_AT_name("RSVD50")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_RSVD50")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x2002]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$651, DW_AT_name("CDMASCHETBLWORD")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_CDMASCHETBLWORD")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x2800]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$652, DW_AT_name("RSVD51")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_RSVD51")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x2900]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$653, DW_AT_name("QMGRREVID1")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_QMGRREVID1")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x4000]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$654, DW_AT_name("QMGRREVID2")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_QMGRREVID2")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x4001]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$655, DW_AT_name("RSVD52")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_RSVD52")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x4002]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$656, DW_AT_name("DIVERSION1")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_DIVERSION1")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x4008]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$657, DW_AT_name("DIVERSION2")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_DIVERSION2")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x4009]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$658, DW_AT_name("RSVD53")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_RSVD53")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x400a]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$659, DW_AT_name("FDBSC0")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_FDBSC0")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x4020]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$660, DW_AT_name("FDBSC1")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_FDBSC1")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x4021]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$661, DW_AT_name("RSVD54")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_RSVD54")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x4022]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$662, DW_AT_name("FDBSC2")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_FDBSC2")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x4024]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$663, DW_AT_name("FDBSC3")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_FDBSC3")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x4025]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$664, DW_AT_name("RSVD55")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_RSVD55")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x4026]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$665, DW_AT_name("FDBSC4")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_FDBSC4")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x4028]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$666, DW_AT_name("FDBSC5")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_FDBSC5")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x4029]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$667, DW_AT_name("RSVD56")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_RSVD56")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x402a]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$668, DW_AT_name("FDBSC6")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_FDBSC6")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x402c]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$669, DW_AT_name("FDBSC7")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_FDBSC7")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x402d]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$670, DW_AT_name("RSVD57")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_RSVD57")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x402e]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$671, DW_AT_name("LRAM0BASE1")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_LRAM0BASE1")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x4080]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$672, DW_AT_name("LRAM0BASE2")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_LRAM0BASE2")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x4081]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$673, DW_AT_name("RSVD58")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_RSVD58")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x4082]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$674, DW_AT_name("LRAM0SIZE")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_LRAM0SIZE")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x4084]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$675, DW_AT_name("RSVD59")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_RSVD59")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x4085]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$676, DW_AT_name("LRAM1BASE1")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_LRAM1BASE1")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x4088]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$677, DW_AT_name("LRAM1BASE2")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_LRAM1BASE2")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x4089]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$678, DW_AT_name("RSVD60")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_RSVD60")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x408a]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$679, DW_AT_name("PEND0")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_PEND0")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x4090]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$680, DW_AT_name("PEND1")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_PEND1")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x4091]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$681, DW_AT_name("RSVD61")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_RSVD61")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x4092]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$682, DW_AT_name("PEND2")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_PEND2")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x4094]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$683, DW_AT_name("PEND3")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_PEND3")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x4095]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$684, DW_AT_name("RSVD62")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_RSVD62")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x4096]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$685, DW_AT_name("PEND4")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_PEND4")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x4098]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$686, DW_AT_name("PEND5")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_PEND5")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x4099]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$687, DW_AT_name("RSVD64")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_RSVD64")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x409a]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$688, DW_AT_name("QMMEMREGR")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_QMMEMREGR")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x5000]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$689, DW_AT_name("RSVD66")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_RSVD66")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x5100]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$690, DW_AT_name("QMQN")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_QMQN")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x6000]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$691, DW_AT_name("RSVD68")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_RSVD68")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x6400]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$692, DW_AT_name("QMQNS")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_QMQNS")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x6800]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegs")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
$C$DW$693	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$165)
$C$DW$694	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$693)
$C$DW$T$166	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$694)
$C$DW$T$167	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$167, DW_AT_address_class(0x10)
$C$DW$T$168	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbRegsOvly")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("CSL_HidClassStruct")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x4ba)
$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$695, DW_AT_name("usbDevHandle")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_usbDevHandle")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$696, DW_AT_name("ctrlHandle")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_ctrlHandle")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$697, DW_AT_name("hidHandle")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_hidHandle")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b4]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$T$169	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidClassStruct")
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$169, DW_AT_language(DW_LANG_C)
$C$DW$T$170	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$170, DW_AT_address_class(0x17)
$C$DW$T$171	.dwtag  DW_TAG_typedef, DW_AT_name("pHidClassHandle")
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C)

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("CSL_HidCtrlObject")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x3b2)
$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$698, DW_AT_name("ctrlInEpHandle")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_ctrlInEpHandle")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$699, DW_AT_name("devNum")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$700, DW_AT_name("ctrlOutEpHandle")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_ctrlOutEpHandle")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("suspendFlag")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_suspendFlag")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$702, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$703, DW_AT_name("usbSetup")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$704, DW_AT_name("deviceQualifierDescr")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_deviceQualifierDescr")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$705, DW_AT_name("deviceDescr")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_deviceDescr")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$706, DW_AT_name("confDescr")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_confDescr")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$707, DW_AT_name("osConfDescr")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_osConfDescr")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ca]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$708, DW_AT_name("hidClassIntDescr")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_hidClassIntDescr")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x35a]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$709, DW_AT_name("hidClassInterfcLnk")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_hidClassInterfcLnk")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x366]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$710, DW_AT_name("stringDescrLangid")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_stringDescrLangid")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x36c]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("curConfigStat")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x378]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$712, DW_AT_name("ctrlBuffer")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_ctrlBuffer")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x379]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$713, DW_AT_name("configDescrLnk")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_configDescrLnk")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x37e]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$714, DW_AT_name("strDescr")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_strDescr")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x384]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$715, DW_AT_name("hidReqTable")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_hidReqTable")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x386]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$716, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x388]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("hidClassHidReportDescrLen")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_hidClassHidReportDescrLen")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x38a]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$718, DW_AT_name("hidClassHidReportDescr")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_hidClassHidReportDescr")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x38b]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("hidIfNum")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_hidIfNum")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x3ae]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("hidReportId")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_hidReportId")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x3af]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("hidReportLen")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_hidReportLen")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("hidIdleRate")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_hidIdleRate")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b1]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$94

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidCtrlObject")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$172	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$172, DW_AT_address_class(0x17)

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("CSL_HidInitStructApp")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x18)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$723, DW_AT_name("pHidObj")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_pHidObj")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("pId")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_pId")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("vId")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_vId")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("numLun")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_numLun")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("txPktSize")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_txPktSize")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("rxPktSize")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_rxPktSize")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("hidTxPktSize")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_hidTxPktSize")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$730, DW_AT_name("strDescrApp")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_strDescrApp")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$731, DW_AT_name("lbaBufferHidReportApp")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_lbaBufferHidReportApp")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$732, DW_AT_name("hidReqTableApp")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_hidReqTableApp")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$733, DW_AT_name("ctrlHandler")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_ctrlHandler")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$734, DW_AT_name("hidHandler")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_hidHandler")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$735, DW_AT_name("getHidReportApp")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_getHidReportApp")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("hidIfNum")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_hidIfNum")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("hidReportId")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_hidReportId")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("hidReportLen")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_hidReportLen")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$102

$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidInitStructApp")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$174	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$174, DW_AT_address_class(0x17)
$C$DW$T$175	.dwtag  DW_TAG_typedef, DW_AT_name("pHidAppClassHandle")
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$175, DW_AT_language(DW_LANG_C)

$C$DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$105, DW_AT_name("CSL_HidLogicalUnit")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x3e)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$739, DW_AT_name("scsiInquiryData")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_scsiInquiryData")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$740, DW_AT_name("mediaSize")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_mediaSize")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$741, DW_AT_name("currLba")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_currLba")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$742, DW_AT_name("lbaSize")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_lbaSize")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("removeable")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_removeable")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("mediaState")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_mediaState")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("readwrite")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_readwrite")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("lbaCnt")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_lbaCnt")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("verifyFlag")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_verifyFlag")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$105

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidLogicalUnit")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0xf8)
$C$DW$748	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$748, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$107


$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("CSL_HidObject")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x106)
$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$749, DW_AT_name("getHidReport")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_getHidReport")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$750, DW_AT_name("lbaBufferHidReport")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_lbaBufferHidReport")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$751, DW_AT_name("lun")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_lun")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$752, DW_AT_name("hidIntInEpHandle")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_hidIntInEpHandle")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$753, DW_AT_name("hidIntOutEpHandle")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_hidIntOutEpHandle")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("noOfLun")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_noOfLun")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("mediaState")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_mediaState")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x101]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$756, DW_AT_name("tempBuffer")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_tempBuffer")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x102]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$109

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidObject")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$176	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$176, DW_AT_address_class(0x17)

$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("CSL_HidRequestStruct")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x04)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$757, DW_AT_name("request")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$758, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$111

$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_HidRequestStruct")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x17)

$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x16)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("maxCurrent")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$760, DW_AT_name("opMode")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$761, DW_AT_name("appSuspendCallBack")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_appSuspendCallBack")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$762, DW_AT_name("appWakeupCallBack")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_appWakeupCallBack")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$763, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$764, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$765, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$766, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$767, DW_AT_name("strDescPtr")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$768, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$769, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$770, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$122

$C$DW$T$177	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C)
$C$DW$T$178	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_address_class(0x17)

$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0xda)
$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$771, DW_AT_name("devNum")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$772, DW_AT_name("opMode")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$773, DW_AT_name("maxCurrent")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$774, DW_AT_name("fInitialized")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$775, DW_AT_name("fSetupPktCmd")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_fSetupPktCmd")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$776, DW_AT_name("fOutPhaseCmd")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_fOutPhaseCmd")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$777, DW_AT_name("fWaitingOnFlagA")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_fWaitingOnFlagA")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$778, DW_AT_name("fWaitingOnFlagB")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_fWaitingOnFlagB")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$779, DW_AT_name("fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$780, DW_AT_name("fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$781, DW_AT_name("pFIFOBaseAddress")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_pFIFOBaseAddress")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$782, DW_AT_name("pInterruptAddr")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_pInterruptAddr")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$783, DW_AT_name("fSendHandshake")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_fSendHandshake")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$784, DW_AT_name("fMUSBIsReady")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_fMUSBIsReady")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$785, DW_AT_name("cbOutEP0Buf")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_cbOutEP0Buf")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$786, DW_AT_name("cbOutEP0DataReceived")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_cbOutEP0DataReceived")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$787, DW_AT_name("dwOutEP0Buf")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_dwOutEP0Buf")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$788, DW_AT_name("fEP0BUFAvailable")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_fEP0BUFAvailable")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$789, DW_AT_name("fEP1InBUFAvailable")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_fEP1InBUFAvailable")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$790, DW_AT_name("dwIntSourceL")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_dwIntSourceL")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$791, DW_AT_name("dwIntSourceH")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_dwIntSourceH")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$792, DW_AT_name("remoteWkpStat")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_remoteWkpStat")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$793, DW_AT_name("busSpeed")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_busSpeed")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$794, DW_AT_name("ep0State")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_ep0State")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$795, DW_AT_name("pEpStatus")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_pEpStatus")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$796, DW_AT_name("cableState")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_cableState")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$797, DW_AT_name("usbSetup")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$798, DW_AT_name("suspendCallBackFxn")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_suspendCallBackFxn")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$799, DW_AT_name("wakeupCallBackFxn")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_wakeupCallBackFxn")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$800, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$801, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$802, DW_AT_name("dwFIFOStartAddr")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_dwFIFOStartAddr")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$803, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$804, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$805, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$806, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$807, DW_AT_name("strDescPtr")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("devAddr")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_devAddr")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$809, DW_AT_name("ctrlOutEpObj")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_ctrlOutEpObj")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$810, DW_AT_name("ctrlInEpObj")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_ctrlInEpObj")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$811, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("curConfigStat")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$813, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$138

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevHandle")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("pUsbContext")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)

$C$DW$T$140	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$140, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x06)
$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("bytes")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_bytes")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$815, DW_AT_name("pBuffer")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_pBuffer")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$816, DW_AT_name("pNextBuffer")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_pNextBuffer")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$140

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$139, DW_AT_address_class(0x17)

$C$DW$T$146	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$146, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x0a)
$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$817, DW_AT_name("opMode")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$818, DW_AT_name("epNum")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$819, DW_AT_name("xferType")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("maxPktSize")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("eventMask")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$822, DW_AT_name("dblPktBuf")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_dblPktBuf")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$823, DW_AT_name("asyncTxfer")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_asyncTxfer")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$824, DW_AT_name("fxn")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$146

$C$DW$T$182	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)
$C$DW$T$183	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_address_class(0x17)

$C$DW$T$149	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$149, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x22)
$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$825, DW_AT_name("epNum")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$826, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$827, DW_AT_name("xferType")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("maxPktSize")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("eventMask")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$830, DW_AT_name("fxn")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$831, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$832, DW_AT_name("fInitialized")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$833, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$834, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$835, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$836, DW_AT_name("hEventHandler")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$837, DW_AT_name("fStalled")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$838, DW_AT_name("pvBuffer")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$839, DW_AT_name("cbBuffer")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$840, DW_AT_name("cbTransferred")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$841, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$842, DW_AT_name("fComplete")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$843, DW_AT_name("ioFlags")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$844, DW_AT_name("hUsbDev")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$149

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpHandle")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$76	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x0c)
$C$DW$845	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$845, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$76


$C$DW$T$137	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x14)
$C$DW$846	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$846, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$137

$C$DW$T$187	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$187, DW_AT_address_class(0x17)

$C$DW$T$152	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$152, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x12)
$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$847, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$848, DW_AT_name("xferType")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$849, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$850, DW_AT_name("fInitialized")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$851, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$852, DW_AT_name("pTransfer")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$853, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$854, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$855, DW_AT_name("hEventHandler")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$856, DW_AT_name("fStalled")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$857, DW_AT_name("fSelected")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_fSelected")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$152

$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x17)

$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x06)
$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$858, DW_AT_name("newPacket")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_newPacket")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("bmRequestType")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("bRequest")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("wValue")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("wIndex")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("wLength")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$153

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x17)

$C$DW$T$154	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$154, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x0e)
$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$864, DW_AT_name("dwFlags")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_dwFlags")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$865, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$866, DW_AT_name("pvBuffer")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$867, DW_AT_name("cbBuffer")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$868, DW_AT_name("cbTransferred")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$869, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$870, DW_AT_name("fComplete")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$871, DW_AT_name("ioFlags")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$154

$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$147	.dwtag  DW_TAG_typedef, DW_AT_name("PVOID")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
$C$DW$T$97	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x20)
$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_EVENT_ISR")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)

$C$DW$T$114	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
$C$DW$872	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$114

$C$DW$T$115	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_address_class(0x20)
$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_CALLBACK")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
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
$C$DW$T$199	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)
$C$DW$T$193	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$193, DW_AT_address_class(0x17)

$C$DW$T$200	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$200, DW_AT_byte_size(0x08)
$C$DW$873	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$873, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$200

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)

$C$DW$T$100	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$874	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
$C$DW$875	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$95)
	.dwendtag $C$DW$T$100

$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x20)

$C$DW$T$119	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$876	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$3)
$C$DW$877	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$119

$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)
$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_TRANSFER_CALLBACK")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$225	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEventMask")
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$225, DW_AT_language(DW_LANG_C)
$C$DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbIoFlags")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
$C$DW$878	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$878)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$879	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$879, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x07)
$C$DW$880	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$880, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$23


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$881	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$881, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0e)
$C$DW$882	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$882, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$26


$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0a)
$C$DW$883	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$883, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$29


$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$884	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$884, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$31


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x03)
$C$DW$885	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$885, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$33


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x3a3)
$C$DW$886	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$886, DW_AT_upper_bound(0x3a2)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x04)
$C$DW$887	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$887, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x2e)
$C$DW$888	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$888, DW_AT_upper_bound(0x2d)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x13)
$C$DW$889	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$889, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$38


$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x59)
$C$DW$890	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$890, DW_AT_upper_bound(0x58)
	.dwendtag $C$DW$T$41


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0xaaf)
$C$DW$891	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$891, DW_AT_upper_bound(0xaae)
	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x7f7)
$C$DW$892	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$892, DW_AT_upper_bound(0x7f6)
	.dwendtag $C$DW$T$45


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x780)
$C$DW$893	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$893, DW_AT_upper_bound(0x77f)
	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x7fe)
$C$DW$894	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$894, DW_AT_upper_bound(0x7fd)
	.dwendtag $C$DW$T$49


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x1700)
$C$DW$895	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$895, DW_AT_upper_bound(0x16ff)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x16)
$C$DW$896	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$896, DW_AT_upper_bound(0x15)
	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x52)
$C$DW$897	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$897, DW_AT_upper_bound(0x51)
	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0xf66)
$C$DW$898	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$898, DW_AT_upper_bound(0xf65)
	.dwendtag $C$DW$T$55


$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0xf00)
$C$DW$899	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$899, DW_AT_upper_bound(0xeff)
	.dwendtag $C$DW$T$58


$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x400)
$C$DW$900	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$900, DW_AT_upper_bound(0x3ff)
	.dwendtag $C$DW$T$61

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x40)
$C$DW$901	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$901, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$125


$C$DW$T$78	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x0c)
$C$DW$902	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$902, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x14)
$C$DW$903	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$903, DW_AT_upper_bound(0x13)
	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x190)
$C$DW$904	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$904, DW_AT_upper_bound(0x18f)
	.dwendtag $C$DW$T$80


$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x05)
$C$DW$905	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$905, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$82


$C$DW$T$93	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x23)
$C$DW$906	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$906, DW_AT_upper_bound(0x22)
	.dwendtag $C$DW$T$93

$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)
$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x17)

$C$DW$T$136	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x08)
$C$DW$907	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$907, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$136


$C$DW$T$103	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x32)
$C$DW$908	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$908, DW_AT_upper_bound(0x31)
	.dwendtag $C$DW$T$103


$C$DW$T$108	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x04)
$C$DW$909	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$909, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$108

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
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x17)
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
$C$DW$T$83	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$83, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$83, DW_AT_name("signed char")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)
$C$DW$910	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$83)
$C$DW$T$234	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$910)
$C$DW$T$235	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$T$235, DW_AT_address_class(0x17)
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

$C$DW$911	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$911, DW_AT_location[DW_OP_reg0]
$C$DW$912	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$912, DW_AT_location[DW_OP_reg1]
$C$DW$913	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$913, DW_AT_location[DW_OP_reg2]
$C$DW$914	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$914, DW_AT_location[DW_OP_reg3]
$C$DW$915	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$915, DW_AT_location[DW_OP_reg4]
$C$DW$916	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$916, DW_AT_location[DW_OP_reg5]
$C$DW$917	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$917, DW_AT_location[DW_OP_reg6]
$C$DW$918	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$918, DW_AT_location[DW_OP_reg7]
$C$DW$919	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$919, DW_AT_location[DW_OP_reg8]
$C$DW$920	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$920, DW_AT_location[DW_OP_reg9]
$C$DW$921	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$921, DW_AT_location[DW_OP_reg10]
$C$DW$922	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$922, DW_AT_location[DW_OP_reg11]
$C$DW$923	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$923, DW_AT_location[DW_OP_reg12]
$C$DW$924	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$924, DW_AT_location[DW_OP_reg13]
$C$DW$925	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$925, DW_AT_location[DW_OP_reg14]
$C$DW$926	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$926, DW_AT_location[DW_OP_reg15]
$C$DW$927	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$927, DW_AT_location[DW_OP_reg16]
$C$DW$928	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$928, DW_AT_location[DW_OP_reg17]
$C$DW$929	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$929, DW_AT_location[DW_OP_reg18]
$C$DW$930	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$930, DW_AT_location[DW_OP_reg19]
$C$DW$931	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$931, DW_AT_location[DW_OP_reg20]
$C$DW$932	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$932, DW_AT_location[DW_OP_reg21]
$C$DW$933	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$933, DW_AT_location[DW_OP_reg22]
$C$DW$934	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$934, DW_AT_location[DW_OP_reg23]
$C$DW$935	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$935, DW_AT_location[DW_OP_reg24]
$C$DW$936	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$936, DW_AT_location[DW_OP_reg25]
$C$DW$937	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$937, DW_AT_location[DW_OP_reg26]
$C$DW$938	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$938, DW_AT_location[DW_OP_reg27]
$C$DW$939	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$939, DW_AT_location[DW_OP_reg28]
$C$DW$940	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$940, DW_AT_location[DW_OP_reg29]
$C$DW$941	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_reg30]
$C$DW$942	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$942, DW_AT_location[DW_OP_reg31]
$C$DW$943	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$943, DW_AT_location[DW_OP_regx 0x20]
$C$DW$944	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$944, DW_AT_location[DW_OP_regx 0x21]
$C$DW$945	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$945, DW_AT_location[DW_OP_regx 0x22]
$C$DW$946	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$946, DW_AT_location[DW_OP_regx 0x23]
$C$DW$947	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$947, DW_AT_location[DW_OP_regx 0x24]
$C$DW$948	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$948, DW_AT_location[DW_OP_regx 0x25]
$C$DW$949	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$949, DW_AT_location[DW_OP_regx 0x26]
$C$DW$950	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$950, DW_AT_location[DW_OP_regx 0x27]
$C$DW$951	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$951, DW_AT_location[DW_OP_regx 0x28]
$C$DW$952	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$952, DW_AT_location[DW_OP_regx 0x29]
$C$DW$953	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$953, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$954	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$954, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$955	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$955, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$956	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$956, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$957	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$957, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$958	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$958, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$959	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$959, DW_AT_location[DW_OP_regx 0x30]
$C$DW$960	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$960, DW_AT_location[DW_OP_regx 0x31]
$C$DW$961	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$961, DW_AT_location[DW_OP_regx 0x32]
$C$DW$962	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$962, DW_AT_location[DW_OP_regx 0x33]
$C$DW$963	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$963, DW_AT_location[DW_OP_regx 0x34]
$C$DW$964	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$964, DW_AT_location[DW_OP_regx 0x35]
$C$DW$965	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$965, DW_AT_location[DW_OP_regx 0x36]
$C$DW$966	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$966, DW_AT_location[DW_OP_regx 0x37]
$C$DW$967	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$967, DW_AT_location[DW_OP_regx 0x38]
$C$DW$968	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$968, DW_AT_location[DW_OP_regx 0x39]
$C$DW$969	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$969, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$970	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$970, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$971	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$971, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$972	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$972, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$973	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$973, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$974	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$974, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$975	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$975, DW_AT_location[DW_OP_regx 0x40]
$C$DW$976	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$976, DW_AT_location[DW_OP_regx 0x41]
$C$DW$977	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$977, DW_AT_location[DW_OP_regx 0x42]
$C$DW$978	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$978, DW_AT_location[DW_OP_regx 0x43]
$C$DW$979	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$979, DW_AT_location[DW_OP_regx 0x44]
$C$DW$980	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$980, DW_AT_location[DW_OP_regx 0x45]
$C$DW$981	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$981, DW_AT_location[DW_OP_regx 0x46]
$C$DW$982	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$982, DW_AT_location[DW_OP_regx 0x47]
$C$DW$983	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$983, DW_AT_location[DW_OP_regx 0x48]
$C$DW$984	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$984, DW_AT_location[DW_OP_regx 0x49]
$C$DW$985	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$985, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$986	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$986, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$987	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$987, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$988	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$988, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$989	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$989, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$990	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$990, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$991	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$991, DW_AT_location[DW_OP_regx 0x50]
$C$DW$992	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$992, DW_AT_location[DW_OP_regx 0x51]
$C$DW$993	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$993, DW_AT_location[DW_OP_regx 0x52]
$C$DW$994	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$994, DW_AT_location[DW_OP_regx 0x53]
$C$DW$995	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$995, DW_AT_location[DW_OP_regx 0x54]
$C$DW$996	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$996, DW_AT_location[DW_OP_regx 0x55]
$C$DW$997	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$997, DW_AT_location[DW_OP_regx 0x56]
$C$DW$998	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$998, DW_AT_location[DW_OP_regx 0x57]
$C$DW$999	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$999, DW_AT_location[DW_OP_regx 0x58]
$C$DW$1000	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$1000, DW_AT_location[DW_OP_regx 0x59]
$C$DW$1001	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$1001, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$1002	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$1002, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

