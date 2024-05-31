;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:49 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_audioClass.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$151)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$152)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("strlen")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_strlen")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$187)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$187)
$C$DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$7


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_init")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_USB_init")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_open")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_USB_open")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$11


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_config")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_USB_config")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$140)
	.dwendtag $C$DW$13


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_requestEndpt")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_USB_requestEndpt")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$113)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$145)
	.dwendtag $C$DW$16


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_configEndpt")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_USB_configEndpt")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$27)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$144)
	.dwendtag $C$DW$20


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_resetDev")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_USB_resetDev")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEvents")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_USB_getEvents")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$27)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$145)
	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getSetupPacket")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_USB_getSetupPacket")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$48)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$28


$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_postTransaction")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_USB_postTransaction")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$27)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$30)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$119)
	.dwendtag $C$DW$32


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_stallEndpt")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_USB_stallEndpt")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortAllTransaction")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_USB_abortAllTransaction")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_connectDev")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_USB_connectDev")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$41


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_disconnectDev")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_USB_disconnectDev")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$43


$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setParams")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_USB_setParams")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$148)
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$45

;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17246LgcLVJ 
	.sect	".text"

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqUnknown")
	.dwattr $C$DW$49, DW_AT_low_pc(_AC_reqUnknown)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_AC_reqUnknown")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("./inc/csl_audioClassAux.h")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./inc/csl_audioClassAux.h",line 127,column 1,is_stmt,address _AC_reqUnknown

	.dwfde $C$DW$CIE, _AC_reqUnknown
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg19]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg21]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg23]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqUnknown                                                *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqUnknown:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_audioClassAux.h",line 131,column 2,is_stmt
        MOV #1, *SP(#10) ; |131| 
	.dwpsn	file "./inc/csl_audioClassAux.h",line 133,column 2,is_stmt
        MOV *SP(#10), T0 ; |133| 
	.dwpsn	file "./inc/csl_audioClassAux.h",line 134,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$49, DW_AT_TI_end_file("./inc/csl_audioClassAux.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x86)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"

$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_lookupReqHandler")
	.dwattr $C$DW$62, DW_AT_low_pc(_AC_lookupReqHandler)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_AC_lookupReqHandler")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$62, DW_AT_TI_begin_file("./inc/csl_audioClassAux.h")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0xbb)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_audioClassAux.h",line 189,column 1,is_stmt,address _AC_lookupReqHandler

	.dwfde $C$DW$CIE, _AC_lookupReqHandler
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("request")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_lookupReqHandler                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_lookupReqHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |189| 
	.dwpsn	file "./inc/csl_audioClassAux.h",line 193,column 6,is_stmt
        MOV #0, *SP(#4) ; |193| 
	.dwpsn	file "./inc/csl_audioClassAux.h",line 193,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |193| 
        MOV AC0, AR1 ; |193| 
        AADD AR1, AR3 ; |193| 
        MOV dbl(*AR3(short(#2))), AC0 ; |193| 
        BCC $C$L3,AC0 == #0 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$L1:    
$C$DW$L$_AC_lookupReqHandler$2$B:
	.dwpsn	file "./inc/csl_audioClassAux.h",line 196,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |196| 
        MOV AC0, T0 ; |196| 
        MOV *SP(#0), AR1 ; |196| 
        MOV *AR3(T0), AR2 ; |196| 
        CMPU AR2 != AR1, TC1 ; |196| 
        BCC $C$L2,TC1 ; |196| 
                                        ; branchcc occurs ; |196| 
$C$DW$L$_AC_lookupReqHandler$2$E:
	.dwpsn	file "./inc/csl_audioClassAux.h",line 198,column 4,is_stmt
        MOV *SP(#4) << #2, AC0 ; |198| 
        MOV AC0, AR1 ; |198| 
        AADD AR1, AR3 ; |198| 
        MOV dbl(*AR3(short(#2))), AC0 ; |198| 
        B $C$L4   ; |198| 
                                        ; branch occurs ; |198| 
$C$L2:    
$C$DW$L$_AC_lookupReqHandler$4$B:
	.dwpsn	file "./inc/csl_audioClassAux.h",line 193,column 64,is_stmt
        ADD #1, *SP(#4) ; |193| 
	.dwpsn	file "./inc/csl_audioClassAux.h",line 193,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |193| 
        MOV AC0, AR1 ; |193| 
        AADD AR1, AR3 ; |193| 
        MOV dbl(*AR3(short(#2))), AC0 ; |193| 
        BCC $C$L1,AC0 != #0 ; |193| 
                                        ; branchcc occurs ; |193| 
$C$DW$L$_AC_lookupReqHandler$4$E:
$C$L3:    
	.dwpsn	file "./inc/csl_audioClassAux.h",line 204,column 2,is_stmt
        MOV #(_AC_reqUnknown >> 16) << #16, AC0 ; |204| 
        OR #(_AC_reqUnknown & 0xffff), AC0, AC0 ; |204| 
$C$L4:    
	.dwpsn	file "./inc/csl_audioClassAux.h",line 205,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L1:1:1714639429")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./inc/csl_audioClassAux.h")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xc8)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_AC_lookupReqHandler$2$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_AC_lookupReqHandler$2$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_AC_lookupReqHandler$4$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_AC_lookupReqHandler$4$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$62, DW_AT_TI_end_file("./inc/csl_audioClassAux.h")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0xcd)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.global	_AC_Open

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_Open")
	.dwattr $C$DW$72, DW_AT_low_pc(_AC_Open)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_AC_Open")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$72, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x2a)
	.dwpsn	file "src/csl_audioClass.c",line 105,column 1,is_stmt,address _AC_Open

	.dwfde $C$DW$CIE, _AC_Open
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_Open                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 42 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (38 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_Open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-41, SP
	.dwcfi	cfa_offset, 42
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("eventMask")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("usbEpConfig")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_usbEpConfig")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 30]
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 112,column 2,is_stmt
        MOV #0, *SP(#6) ; |112| 
	.dwpsn	file "src/csl_audioClass.c",line 113,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_audioClass.c",line 115,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L11,AC0 == #0 ; |115| 
                                        ; branchcc occurs ; |115| 
	.dwpsn	file "src/csl_audioClass.c",line 118,column 3,is_stmt
        MOV *AR3(short(#4)), AR1 ; |118| 
        BCC $C$L5,AR1 == #0 ; |118| 
                                        ; branchcc occurs ; |118| 
	.dwpsn	file "src/csl_audioClass.c",line 120,column 4,is_stmt
        MOV *AR3(short(#4)), AR1 ; |120| 
        MOV dbl(*SP(#4)), XAR3
        SUB #1, AR1 ; |120| 
        MOV AR1, *AR3(#680) ; |120| 
$C$L5:    
	.dwpsn	file "src/csl_audioClass.c",line 123,column 3,is_stmt
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_USB_init")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_USB_init ; |123| 
                                        ; call occurs [#_USB_init] ; |123| 
	.dwpsn	file "src/csl_audioClass.c",line 126,column 3,is_stmt
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_USB_open")
	.dwattr $C$DW$81, DW_AT_TI_call

        CALL #_USB_open ; |126| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |126| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_audioClass.c",line 127,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |127| 

        CMPU AC1 != AC0, TC1 ; |127| 
        BCC $C$L6,TC1 ; |127| 
                                        ; branchcc occurs ; |127| 
	.dwpsn	file "src/csl_audioClass.c",line 129,column 4,is_stmt
        MOV #-5, *SP(#6) ; |129| 
	.dwpsn	file "src/csl_audioClass.c",line 130,column 4,is_stmt
        MOV *SP(#6), T0 ; |130| 
        B $C$L13  ; |130| 
                                        ; branch occurs ; |130| 
$C$L6:    
	.dwpsn	file "src/csl_audioClass.c",line 133,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_USB_config")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_USB_config ; |133| 
                                        ; call occurs [#_USB_config] ; |133| 
        MOV T0, *SP(#6) ; |133| 
	.dwpsn	file "src/csl_audioClass.c",line 134,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |134| 
        BCC $C$L13,!TC1 ; |134| 
                                        ; branchcc occurs ; |134| 
	.dwpsn	file "src/csl_audioClass.c",line 136,column 4,is_stmt
	.dwpsn	file "src/csl_audioClass.c",line 140,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #_USB_resetDev ; |140| 
                                        ; call occurs [#_USB_resetDev] ; |140| 
        MOV T0, *SP(#6) ; |140| 
	.dwpsn	file "src/csl_audioClass.c",line 141,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L7,AR1 == #0 ; |141| 
                                        ; branchcc occurs ; |141| 
	.dwpsn	file "src/csl_audioClass.c",line 143,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |143| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_printf")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_printf ; |143| 
                                        ; call occurs [#_printf] ; |143| 
	.dwpsn	file "src/csl_audioClass.c",line 144,column 4,is_stmt
        MOV *SP(#6), T0 ; |144| 
        B $C$L13  ; |144| 
                                        ; branch occurs ; |144| 
$C$L7:    
	.dwpsn	file "src/csl_audioClass.c",line 147,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#4)) ; |147| 
	.dwpsn	file "src/csl_audioClass.c",line 150,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#8) ; |150| 
	.dwpsn	file "src/csl_audioClass.c",line 151,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#334) ; |151| 
	.dwpsn	file "src/csl_audioClass.c",line 153,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#56) ; |153| 
	.dwpsn	file "src/csl_audioClass.c",line 154,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #41344, *AR3(#57) ; |154| 
	.dwpsn	file "src/csl_audioClass.c",line 156,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#60) ; |156| 
	.dwpsn	file "src/csl_audioClass.c",line 157,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#61) ; |157| 
	.dwpsn	file "src/csl_audioClass.c",line 159,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#64) ; |159| 
	.dwpsn	file "src/csl_audioClass.c",line 160,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #384, *AR3(#65) ; |160| 
	.dwpsn	file "src/csl_audioClass.c",line 163,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR2(#8)), XAR2
        AMAR *+AR3(#322) ; |163| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "src/csl_audioClass.c",line 166,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#8)), XAR3
        MOV XAR3, dbl(*AR2(#354))
	.dwpsn	file "src/csl_audioClass.c",line 167,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#12)), XAR3
        MOV XAR3, dbl(*AR2(#356))
	.dwpsn	file "src/csl_audioClass.c",line 168,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, dbl(*AR2(#376))
	.dwpsn	file "src/csl_audioClass.c",line 170,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(#683) ; |170| 
	.dwpsn	file "src/csl_audioClass.c",line 171,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#682) ; |171| 
	.dwpsn	file "src/csl_audioClass.c",line 174,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, dbl(*AR2(#376))
	.dwpsn	file "src/csl_audioClass.c",line 177,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR0(#360) ; |177| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_AC_initAcVal")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_AC_initAcVal ; |177| 
                                        ; call occurs [#_AC_initAcVal] ; |177| 
	.dwpsn	file "src/csl_audioClass.c",line 179,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #360, T0 ; |179| 
        MOV dbl(*SP(#4)), XAR2
        AADD #22, AR3 ; |179| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |179| 
	.dwpsn	file "src/csl_audioClass.c",line 180,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #362, T0 ; |180| 
        MOV dbl(*SP(#4)), XAR2
        AADD #18, AR3 ; |180| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |180| 
	.dwpsn	file "src/csl_audioClass.c",line 181,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #366, T0 ; |181| 
        MOV dbl(*SP(#4)), XAR2
        AADD #24, AR3 ; |181| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |181| 
	.dwpsn	file "src/csl_audioClass.c",line 183,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #368, T0 ; |183| 
        MOV dbl(*SP(#4)), XAR2
        AADD #26, AR3 ; |183| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |183| 
	.dwpsn	file "src/csl_audioClass.c",line 184,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #370, T0 ; |184| 
        MOV dbl(*SP(#4)), XAR2
        AADD #28, AR3 ; |184| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |184| 
	.dwpsn	file "src/csl_audioClass.c",line 185,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #372, T0 ; |185| 
        MOV dbl(*SP(#4)), XAR2
        AADD #30, AR3 ; |185| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |185| 
	.dwpsn	file "src/csl_audioClass.c",line 186,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #374, T0 ; |186| 
        MOV dbl(*SP(#4)), XAR2
        AADD #32, AR3 ; |186| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |186| 
	.dwpsn	file "src/csl_audioClass.c",line 187,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #364, T0 ; |187| 
        MOV dbl(*SP(#4)), XAR2
        AADD #20, AR3 ; |187| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |187| 
	.dwpsn	file "src/csl_audioClass.c",line 190,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |190| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(#148) ; |190| 
	.dwpsn	file "src/csl_audioClass.c",line 191,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |191| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(#149) ; |191| 
	.dwpsn	file "src/csl_audioClass.c",line 194,column 3,is_stmt
        MOV #61, *SP(#7) ; |194| 
	.dwpsn	file "src/csl_audioClass.c",line 207,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$86, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |207| 
||      MOV #0, T0

                                        ; call occurs [#_USB_requestEndpt] ; |207| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "src/csl_audioClass.c",line 208,column 3,is_stmt

        MOV *SP(#6), AR1 ; |208| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |208| 
        BCC $C$L8,TC1 ; |208| 
                                        ; branchcc occurs ; |208| 
	.dwpsn	file "src/csl_audioClass.c",line 210,column 4,is_stmt
        MOV AR1, T0
        B $C$L13  ; |210| 
                                        ; branch occurs ; |210| 
$C$L8:    
	.dwpsn	file "src/csl_audioClass.c",line 213,column 3,is_stmt
        MOV #0, *SP(#30) ; |213| 
	.dwpsn	file "src/csl_audioClass.c",line 214,column 3,is_stmt
        MOV #0, *SP(#31) ; |214| 
	.dwpsn	file "src/csl_audioClass.c",line 215,column 3,is_stmt
        MOV #0, *SP(#32) ; |215| 
	.dwpsn	file "src/csl_audioClass.c",line 216,column 3,is_stmt
        MOV #64, *SP(#33) ; |216| 
	.dwpsn	file "src/csl_audioClass.c",line 217,column 3,is_stmt
        MOV *SP(#7), AR1 ; |217| 
        MOV AR1, *SP(#34) ; |217| 
	.dwpsn	file "src/csl_audioClass.c",line 218,column 3,is_stmt
        MOV #0, *SP(#35) ; |218| 
	.dwpsn	file "src/csl_audioClass.c",line 219,column 3,is_stmt
        MOV #0, *SP(#36) ; |219| 
	.dwpsn	file "src/csl_audioClass.c",line 220,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |220| 
        MOV AC0, dbl(*SP(#38)) ; |220| 
	.dwpsn	file "src/csl_audioClass.c",line 222,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#30), XAR1
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_USB_configEndpt ; |222| 
                                        ; call occurs [#_USB_configEndpt] ; |222| 
        MOV T0, *SP(#6) ; |222| 
	.dwpsn	file "src/csl_audioClass.c",line 224,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |224| 
        BCC $C$L13,!TC1 ; |224| 
                                        ; branchcc occurs ; |224| 
	.dwpsn	file "src/csl_audioClass.c",line 226,column 4,is_stmt
	.dwpsn	file "src/csl_audioClass.c",line 240,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$88, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |240| 
||      MOV #8, T0

                                        ; call occurs [#_USB_requestEndpt] ; |240| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_audioClass.c",line 241,column 3,is_stmt

        MOV *SP(#6), AR1 ; |241| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |241| 
        BCC $C$L9,TC1 ; |241| 
                                        ; branchcc occurs ; |241| 
	.dwpsn	file "src/csl_audioClass.c",line 243,column 4,is_stmt
        MOV AR1, T0
        B $C$L13  ; |243| 
                                        ; branch occurs ; |243| 
$C$L9:    
	.dwpsn	file "src/csl_audioClass.c",line 246,column 3,is_stmt
        MOV #0, *SP(#30) ; |246| 
	.dwpsn	file "src/csl_audioClass.c",line 247,column 3,is_stmt
        MOV #8, *SP(#31) ; |247| 
	.dwpsn	file "src/csl_audioClass.c",line 248,column 3,is_stmt
        MOV #0, *SP(#32) ; |248| 
	.dwpsn	file "src/csl_audioClass.c",line 249,column 3,is_stmt
        MOV #64, *SP(#33) ; |249| 
	.dwpsn	file "src/csl_audioClass.c",line 250,column 3,is_stmt
        MOV #32, *SP(#34) ; |250| 
	.dwpsn	file "src/csl_audioClass.c",line 251,column 3,is_stmt
        MOV #0, *SP(#35) ; |251| 
	.dwpsn	file "src/csl_audioClass.c",line 252,column 3,is_stmt
        MOV #0, *SP(#36) ; |252| 
	.dwpsn	file "src/csl_audioClass.c",line 253,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |253| 
        MOV AC0, dbl(*SP(#38)) ; |253| 
	.dwpsn	file "src/csl_audioClass.c",line 255,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#30), XAR1
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_USB_configEndpt ; |255| 
                                        ; call occurs [#_USB_configEndpt] ; |255| 
        MOV T0, *SP(#6) ; |255| 
	.dwpsn	file "src/csl_audioClass.c",line 257,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |257| 
        BCC $C$L13,!TC1 ; |257| 
                                        ; branchcc occurs ; |257| 
	.dwpsn	file "src/csl_audioClass.c",line 259,column 4,is_stmt
	.dwpsn	file "src/csl_audioClass.c",line 273,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#6), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$90, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |273| 
||      MOV #2, T0

                                        ; call occurs [#_USB_requestEndpt] ; |273| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#678))
	.dwpsn	file "src/csl_audioClass.c",line 274,column 3,is_stmt

        MOV *SP(#6), AR1 ; |274| 
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |274| 
        BCC $C$L10,TC1 ; |274| 
                                        ; branchcc occurs ; |274| 
	.dwpsn	file "src/csl_audioClass.c",line 276,column 4,is_stmt
        MOV AR1, T0
        B $C$L13  ; |276| 
                                        ; branch occurs ; |276| 
$C$L10:    
	.dwpsn	file "src/csl_audioClass.c",line 279,column 3,is_stmt
        MOV #0, *SP(#30) ; |279| 
	.dwpsn	file "src/csl_audioClass.c",line 280,column 3,is_stmt
        MOV #2, *SP(#31) ; |280| 
	.dwpsn	file "src/csl_audioClass.c",line 281,column 3,is_stmt
        MOV #3, *SP(#32) ; |281| 
	.dwpsn	file "src/csl_audioClass.c",line 282,column 3,is_stmt
        MOV #64, *SP(#33) ; |282| 
	.dwpsn	file "src/csl_audioClass.c",line 283,column 3,is_stmt
        MOV #32, *SP(#34) ; |283| 
	.dwpsn	file "src/csl_audioClass.c",line 284,column 3,is_stmt
        MOV #0, *SP(#35) ; |284| 
	.dwpsn	file "src/csl_audioClass.c",line 285,column 3,is_stmt
        MOV #0, *SP(#36) ; |285| 
	.dwpsn	file "src/csl_audioClass.c",line 286,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#14)), AC0 ; |286| 
        MOV AC0, dbl(*SP(#38)) ; |286| 
	.dwpsn	file "src/csl_audioClass.c",line 288,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#30), XAR1
        MOV dbl(*AR3(#678)), XAR0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_USB_configEndpt ; |288| 
                                        ; call occurs [#_USB_configEndpt] ; |288| 
        MOV T0, *SP(#6) ; |288| 
	.dwpsn	file "src/csl_audioClass.c",line 290,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |290| 
        BCC $C$L13,!TC1 ; |290| 
                                        ; branchcc occurs ; |290| 
	.dwpsn	file "src/csl_audioClass.c",line 292,column 4,is_stmt
	.dwpsn	file "src/csl_audioClass.c",line 297,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_audioClass.c",line 298,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#2))), XAR3
        MOV XAR3, dbl(*AR2(#12))
	.dwpsn	file "src/csl_audioClass.c",line 299,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#678)), XAR3
        MOV XAR3, dbl(*AR2(#14))
	.dwpsn	file "src/csl_audioClass.c",line 300,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#676)), XAR3
        MOV XAR3, dbl(*AR2(#16))
	.dwpsn	file "src/csl_audioClass.c",line 301,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, AC0 ; |301| 
        MOV AC0, dbl(*AR3(#18))
	.dwpsn	file "src/csl_audioClass.c",line 304,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#4)), XAR3
        AADD #10, AR1 ; |304| 
        MOV dbl(*AR3), XAR0
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$92, DW_AT_TI_call

        CALL #_USB_setParams ; |304| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |304| 
	.dwpsn	file "src/csl_audioClass.c",line 306,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_USB_connectDev")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_USB_connectDev ; |306| 
                                        ; call occurs [#_USB_connectDev] ; |306| 
	.dwpsn	file "src/csl_audioClass.c",line 307,column 2,is_stmt
        B $C$L12  ; |307| 
                                        ; branch occurs ; |307| 
$C$L11:    
	.dwpsn	file "src/csl_audioClass.c",line 310,column 3,is_stmt
        MOV #-5, *SP(#6) ; |310| 
$C$L12:    
	.dwpsn	file "src/csl_audioClass.c",line 313,column 2,is_stmt
        MOV *SP(#6), T0 ; |313| 
$C$L13:    
	.dwpsn	file "src/csl_audioClass.c",line 314,column 1,is_stmt
        AADD #41, SP
	.dwcfi	cfa_offset, 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$72, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x13a)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.global	_AC_Close

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_Close")
	.dwattr $C$DW$95, DW_AT_low_pc(_AC_Close)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_AC_Close")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x168)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_audioClass.c",line 361,column 1,is_stmt,address _AC_Close

	.dwfde $C$DW$CIE, _AC_Close
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_Close                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_Close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 366,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 368,column 2,is_stmt
        MOV #0, *SP(#4) ; |368| 
	.dwpsn	file "src/csl_audioClass.c",line 370,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L14,AC0 == #0 ; |370| 
                                        ; branchcc occurs ; |370| 
	.dwpsn	file "src/csl_audioClass.c",line 372,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_USB_disconnectDev")
	.dwattr $C$DW$100, DW_AT_TI_call
        CALL #_USB_disconnectDev ; |372| 
                                        ; call occurs [#_USB_disconnectDev] ; |372| 
        MOV T0, *SP(#4) ; |372| 
	.dwpsn	file "src/csl_audioClass.c",line 373,column 3,is_stmt
	.dwpsn	file "src/csl_audioClass.c",line 378,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |378| 
        MOV AC0, dbl(*AR3)
	.dwpsn	file "src/csl_audioClass.c",line 379,column 2,is_stmt
        B $C$L15  ; |379| 
                                        ; branch occurs ; |379| 
$C$L14:    
	.dwpsn	file "src/csl_audioClass.c",line 382,column 3,is_stmt
        MOV #-5, *SP(#4) ; |382| 
$C$L15:    
	.dwpsn	file "src/csl_audioClass.c",line 385,column 2,is_stmt
        MOV *SP(#4), T0 ; |385| 
	.dwpsn	file "src/csl_audioClass.c",line 386,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$95, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x182)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.global	_AC_Ctrl

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_Ctrl")
	.dwattr $C$DW$102, DW_AT_low_pc(_AC_Ctrl)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_AC_Ctrl")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x1b3)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_audioClass.c",line 436,column 1,is_stmt,address _AC_Ctrl

	.dwfde $C$DW$CIE, _AC_Ctrl
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_Ctrl                                                      *
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
_AC_Ctrl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        AADD #-14, SP
	.dwcfi	cfa_offset, 16
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("reqHandlerRet")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_reqHandlerRet")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("usbCtrlEvents")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_usbCtrlEvents")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpIn")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_hCtrlEpIn")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpOut")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_hCtrlEpOut")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 446,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L16,AC0 != #0 ; |446| 
                                        ; branchcc occurs ; |446| 
	.dwpsn	file "src/csl_audioClass.c",line 448,column 3,is_stmt
        MOV #-5, T0
        B $C$L29  ; |448| 
                                        ; branch occurs ; |448| 
$C$L16:    
	.dwpsn	file "src/csl_audioClass.c",line 451,column 5,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 452,column 5,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |452| 

	.dwpsn	file "src/csl_audioClass.c",line 453,column 5,is_stmt
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_audioClass.c",line 454,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 455,column 5,is_stmt
        MOV #0, *SP(#6) ; |455| 
	.dwpsn	file "src/csl_audioClass.c",line 457,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_AC_reqUnknown >> 16) << #16, AC0 ; |457| 
        OR #(_AC_reqUnknown & 0xffff), AC0, AC0 ; |457| 
        MOV AC0, dbl(*AR3(#356)) ; |457| 
	.dwpsn	file "src/csl_audioClass.c",line 459,column 5,is_stmt
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#10)), XAR0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #_USB_getEvents ; |459| 
                                        ; call occurs [#_USB_getEvents] ; |459| 
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#8)), XAR0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$114, DW_AT_TI_call

        CALL #_USB_getEvents ; |459| 
||      MOV T0, T2 ; |459| 

                                        ; call occurs [#_USB_getEvents] ; |459| 
        OR T2, T0 ; |459| 
        MOV T0, *SP(#7) ; |459| 
	.dwpsn	file "src/csl_audioClass.c",line 464,column 2,is_stmt
        BTST #0, *SP(#7), TC1 ; |464| 
        BCC $C$L17,!TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
	.dwpsn	file "src/csl_audioClass.c",line 466,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |466| 
	.dwpsn	file "src/csl_audioClass.c",line 468,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_USB_abortAllTransaction")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_USB_abortAllTransaction ; |468| 
                                        ; call occurs [#_USB_abortAllTransaction] ; |468| 
        OR *SP(#12), T0, AR1 ; |468| 
        MOV AR1, *SP(#12) ; |468| 
	.dwpsn	file "src/csl_audioClass.c",line 470,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#2)), XAR3
        AADD #8, AR1 ; |470| 
        MOV dbl(*AR3), XAR0
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$116, DW_AT_TI_call

        CALL #_USB_setParams ; |470| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |470| 
        OR *SP(#12), T0, AR1 ; |470| 
        MOV AR1, *SP(#12) ; |470| 
	.dwpsn	file "src/csl_audioClass.c",line 473,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#332) ; |473| 
$C$L17:    
	.dwpsn	file "src/csl_audioClass.c",line 476,column 2,is_stmt
        BTST #2, *SP(#7), TC1 ; |476| 
        BCC $C$L18,!TC1 ; |476| 
                                        ; branchcc occurs ; |476| 
	.dwpsn	file "src/csl_audioClass.c",line 478,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(short(#6)) ; |478| 
$C$L18:    
	.dwpsn	file "src/csl_audioClass.c",line 481,column 2,is_stmt
        BTST #3, *SP(#7), TC1 ; |481| 
        BCC $C$L19,!TC1 ; |481| 
                                        ; branchcc occurs ; |481| 
	.dwpsn	file "src/csl_audioClass.c",line 483,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |483| 
$C$L19:    
	.dwpsn	file "src/csl_audioClass.c",line 488,column 3,is_stmt
        MOV *SP(#7), AR1 ; |488| 

        AND #0x0010, AR1, AR1 ; |488| 
||      MOV #16, AR2 ; |488| 

        CMPU AR1 != AR2, TC1 ; |488| 
        BCC $C$L28,TC1 ; |488| 
                                        ; branchcc occurs ; |488| 
	.dwpsn	file "src/csl_audioClass.c",line 491,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
        AADD #18, AR1 ; |491| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_USB_getSetupPacket")
	.dwattr $C$DW$117, DW_AT_TI_call

        CALL #_USB_getSetupPacket ; |491| 
||      MOV #0, T0

                                        ; call occurs [#_USB_getSetupPacket] ; |491| 
        OR *SP(#12), T0, AR1 ; |491| 
        MOV AR1, *SP(#12) ; |491| 
	.dwpsn	file "src/csl_audioClass.c",line 493,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *AR2(#19), AC0 ; |493| 
        SFTL AC0, #8, AC0 ; |493| 
        AND #0xf000, AC0, AR1 ; |493| 
        OR *AR3(#20), AR1, AR1 ; |493| 
        MOV AR1, *SP(#13) ; |493| 
	.dwpsn	file "src/csl_audioClass.c",line 497,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#354)), XAR0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_AC_lookupReqHandler")
	.dwattr $C$DW$118, DW_AT_TI_call

        CALL #_AC_lookupReqHandler ; |497| 
||      MOV AR1, T0

                                        ; call occurs [#_AC_lookupReqHandler] ; |497| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#356)) ; |497| 
	.dwpsn	file "src/csl_audioClass.c",line 500,column 6,is_stmt
        MOV *SP(#6), AR1 ; |500| 
        BCC $C$L25,AR1 != #0 ; |500| 
                                        ; branchcc occurs ; |500| 
	.dwpsn	file "src/csl_audioClass.c",line 502,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3(#356)), AC0 ; |502| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#0)), XAR4
        AADD #18, AR1 ; |502| 
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#10)), XAR3
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_call
	.dwattr $C$DW$119, DW_AT_TI_indirect
        CALL AC0  ; |502| 
                                        ; call occurs [AC0] ; |502| 
        MOV T0, *SP(#6) ; |502| 
	.dwpsn	file "src/csl_audioClass.c",line 506,column 3,is_stmt
        B $C$L25  ; |506| 
                                        ; branch occurs ; |506| 
$C$L20:    
	.dwpsn	file "src/csl_audioClass.c",line 511,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
        AMOV #0, XAR1 ; |511| 
        MOV #0, T0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$120, DW_AT_TI_call

        CALL #_USB_postTransaction ; |511| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |511| 
        OR *SP(#12), T0, AR1 ; |511| 
        MOV AR1, *SP(#12) ; |511| 
	.dwpsn	file "src/csl_audioClass.c",line 513,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_AC_reqUnknown >> 16) << #16, AC0 ; |513| 
        OR #(_AC_reqUnknown & 0xffff), AC0, AC0 ; |513| 
        MOV AC0, dbl(*AR3(#356)) ; |513| 
	.dwpsn	file "src/csl_audioClass.c",line 514,column 10,is_stmt
        B $C$L27  ; |514| 
                                        ; branch occurs ; |514| 
$C$L21:    
	.dwpsn	file "src/csl_audioClass.c",line 523,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
        AMOV #0, XAR1 ; |523| 
        MOV #0, T0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$121, DW_AT_TI_call

        CALL #_USB_postTransaction ; |523| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |523| 
        OR *SP(#12), T0, AR1 ; |523| 
        MOV AR1, *SP(#12) ; |523| 
	.dwpsn	file "src/csl_audioClass.c",line 525,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_AC_reqUnknown >> 16) << #16, AC0 ; |525| 
        OR #(_AC_reqUnknown & 0xffff), AC0, AC0 ; |525| 
        MOV AC0, dbl(*AR3(#356)) ; |525| 
	.dwpsn	file "src/csl_audioClass.c",line 526,column 10,is_stmt
        B $C$L27  ; |526| 
                                        ; branch occurs ; |526| 
$C$L22:    
	.dwpsn	file "src/csl_audioClass.c",line 535,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |535| 
                                        ; call occurs [#_USB_stallEndpt] ; |535| 
        OR *SP(#12), T0, AR1 ; |535| 
        MOV AR1, *SP(#12) ; |535| 
	.dwpsn	file "src/csl_audioClass.c",line 536,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |536| 
                                        ; call occurs [#_USB_stallEndpt] ; |536| 
        OR *SP(#12), T0, AR1 ; |536| 
        MOV AR1, *SP(#12) ; |536| 
	.dwpsn	file "src/csl_audioClass.c",line 537,column 10,is_stmt
        B $C$L27  ; |537| 
                                        ; branch occurs ; |537| 
$C$L23:    
	.dwpsn	file "src/csl_audioClass.c",line 540,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_AC_reqUnknown >> 16) << #16, AC0 ; |540| 
        OR #(_AC_reqUnknown & 0xffff), AC0, AC0 ; |540| 
        MOV AC0, dbl(*AR3(#356)) ; |540| 
	.dwpsn	file "src/csl_audioClass.c",line 541,column 10,is_stmt
        B $C$L27  ; |541| 
                                        ; branch occurs ; |541| 
$C$L24:    
	.dwpsn	file "src/csl_audioClass.c",line 544,column 5,is_stmt
        MOV #-578, *SP(#12) ; |544| 
	.dwpsn	file "src/csl_audioClass.c",line 545,column 10,is_stmt
        B $C$L27  ; |545| 
                                        ; branch occurs ; |545| 
$C$L25:    
	.dwpsn	file "src/csl_audioClass.c",line 506,column 3,is_stmt

        MOV *SP(#6), AR1 ; |506| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |506| 
        BCC $C$L26,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        CMP AR1 == AR2, TC1 ; |506| 
        BCC $C$L21,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        BCC $C$L23,AR1 == #0 ; |506| 
                                        ; branchcc occurs ; |506| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |506| 
        BCC $C$L22,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |506| 
        BCC $C$L20,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        B $C$L24  ; |506| 
                                        ; branch occurs ; |506| 
$C$L26:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |506| 
        BCC $C$L27,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |506| 
        BCC $C$L24,!TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
$C$L27:    
	.dwpsn	file "src/csl_audioClass.c",line 549,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#18), AR1 ; |549| 
        BCC $C$L28,AR1 == #0 ; |549| 
                                        ; branchcc occurs ; |549| 
	.dwpsn	file "src/csl_audioClass.c",line 551,column 4,is_stmt
        MOV #0, *AR3(#18) ; |551| 
$C$L28:    
	.dwpsn	file "src/csl_audioClass.c",line 555,column 2,is_stmt
        MOV *SP(#12), T0 ; |555| 
$C$L29:    
	.dwpsn	file "src/csl_audioClass.c",line 556,column 1,is_stmt
        AADD #14, SP
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$102, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x22c)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.global	_AC_Iso

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_Iso")
	.dwattr $C$DW$125, DW_AT_low_pc(_AC_Iso)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_AC_Iso")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x25d)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_audioClass.c",line 606,column 1,is_stmt,address _AC_Iso

	.dwfde $C$DW$CIE, _AC_Iso
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_Iso                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,    *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_Iso:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("pAcHandle")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_pAcHandle")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("usbEvent")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_usbEvent")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 613,column 2,is_stmt
        MOV #0, *SP(#8) ; |613| 
	.dwpsn	file "src/csl_audioClass.c",line 615,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L31,AC0 == #0 ; |615| 
                                        ; branchcc occurs ; |615| 
	.dwpsn	file "src/csl_audioClass.c",line 617,column 3,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 618,column 3,is_stmt
        AMAR *+AR3(#360) ; |618| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_audioClass.c",line 619,column 3,is_stmt
        MOV dbl(*AR3(#318)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_audioClass.c",line 621,column 3,is_stmt
        AMAR *SP(#8), XAR1
        MOV dbl(*SP(#6)), XAR0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_USB_getEvents ; |621| 
                                        ; call occurs [#_USB_getEvents] ; |621| 
        MOV T0, *SP(#9) ; |621| 
	.dwpsn	file "src/csl_audioClass.c",line 623,column 3,is_stmt

        MOV T0, AR1 ; |623| 
||      MOV #2048, AR2 ; |623| 

        AND #0x0800, AR1, AR1 ; |623| 
        CMPU AR1 != AR2, TC1 ; |623| 
        BCC $C$L30,TC1 ; |623| 
                                        ; branchcc occurs ; |623| 
	.dwpsn	file "src/csl_audioClass.c",line 625,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#318)), XAR0
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#5)), T0 ; |625| 
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#16)), XAR1
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALL #_USB_postTransaction ; |625| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |625| 
        MOV T0, *SP(#8) ; |625| 
$C$L30:    
	.dwpsn	file "src/csl_audioClass.c",line 630,column 3,is_stmt
        MOV *SP(#9), AR1 ; |630| 
        MOV #8192, AR2 ; |630| 
        AND #0x2000, AR1, AR1 ; |630| 
        CMPU AR1 != AR2, TC1 ; |630| 
        BCC $C$L32,TC1 ; |630| 
                                        ; branchcc occurs ; |630| 
	.dwpsn	file "src/csl_audioClass.c",line 632,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |632| 
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV *AR3(short(#5)), AC1 ; |632| 
        MOV dbl(*SP(#4)), XAR3
        AMAR *+AR2(#322) ; |632| 
        BFXTR #0xfffe, AC1, T0 ; |632| 
        MOV dbl(*AR3(#16)), XAR0
        MOV dbl(*AR3(#16)), XAR1
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_call
	.dwattr $C$DW$135, DW_AT_TI_indirect
        CALL AC0  ; |632| 
                                        ; call occurs [AC0] ; |632| 
        MOV T0, *SP(#8) ; |632| 
	.dwpsn	file "src/csl_audioClass.c",line 635,column 2,is_stmt
        B $C$L32  ; |635| 
                                        ; branch occurs ; |635| 
$C$L31:    
	.dwpsn	file "src/csl_audioClass.c",line 638,column 3,is_stmt
        MOV #-5, *SP(#8) ; |638| 
$C$L32:    
	.dwpsn	file "src/csl_audioClass.c",line 641,column 2,is_stmt
        MOV *SP(#8), T0 ; |641| 
	.dwpsn	file "src/csl_audioClass.c",line 642,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$125, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x282)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.global	_AC_GetactivityFlagStatus

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_GetactivityFlagStatus")
	.dwattr $C$DW$137, DW_AT_low_pc(_AC_GetactivityFlagStatus)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_AC_GetactivityFlagStatus")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$137, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x2b1)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_audioClass.c",line 690,column 1,is_stmt,address _AC_GetactivityFlagStatus

	.dwfde $C$DW$CIE, _AC_GetactivityFlagStatus
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_GetactivityFlagStatus                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_GetactivityFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("pAcHandle")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_pAcHandle")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 694,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 695,column 4,is_stmt
        AMAR *+AR3(#360) ; |695| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_audioClass.c",line 697,column 4,is_stmt
        MOV *AR3(#283), T0 ; |697| 
	.dwpsn	file "src/csl_audioClass.c",line 698,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x2ba)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.global	_AC_GetsuspendFlagStatus

$C$DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_GetsuspendFlagStatus")
	.dwattr $C$DW$143, DW_AT_low_pc(_AC_GetsuspendFlagStatus)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_AC_GetsuspendFlagStatus")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$143, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x2e9)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_audioClass.c",line 746,column 1,is_stmt,address _AC_GetsuspendFlagStatus

	.dwfde $C$DW$CIE, _AC_GetsuspendFlagStatus
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_GetsuspendFlagStatus                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_GetsuspendFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 750,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_audioClass.c",line 751,column 4,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |751| 

	.dwpsn	file "src/csl_audioClass.c",line 753,column 4,is_stmt
        MOV *AR3(short(#6)), T0 ; |753| 
	.dwpsn	file "src/csl_audioClass.c",line 754,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$143, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x2f2)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.global	_AC_initDescriptors

$C$DW$149	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_initDescriptors")
	.dwattr $C$DW$149, DW_AT_low_pc(_AC_initDescriptors)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_AC_initDescriptors")
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$149, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x321)
	.dwattr $C$DW$149, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_audioClass.c",line 805,column 1,is_stmt,address _AC_initDescriptors

	.dwfde $C$DW$CIE, _AC_initDescriptors
$C$DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg17]
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descBuf")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_descBuf")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg19]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descrId")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_descrId")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg12]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("descrLen")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: AC_initDescriptors                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_initDescriptors:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("descBuf")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_descBuf")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("descrId")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_descrId")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("descrLen")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T1, *SP(#5) ; |805| 
        MOV T0, *SP(#4) ; |805| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 811,column 2,is_stmt
        MOV #-6, *SP(#10) ; |811| 
	.dwpsn	file "src/csl_audioClass.c",line 813,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L50,AC0 == #0 ; |813| 
                                        ; branchcc occurs ; |813| 
	.dwpsn	file "src/csl_audioClass.c",line 815,column 3,is_stmt
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_audioClass.c",line 816,column 6,is_stmt

        MOV XAR3, dbl(*SP(#8))
||      AADD #2, AR3 ; |816| 

	.dwpsn	file "src/csl_audioClass.c",line 818,column 6,is_stmt
        B $C$L48  ; |818| 
                                        ; branch occurs ; |818| 
$C$L33:    
	.dwpsn	file "src/csl_audioClass.c",line 822,column 5,is_stmt
        MOV #20, AR2 ; |822| 
        MOV *SP(#5), AR1 ; |822| 
        CMPU AR1 > AR2, TC1 ; |822| 
        BCC $C$L51,TC1 ; |822| 
                                        ; branchcc occurs ; |822| 
	.dwpsn	file "src/csl_audioClass.c",line 824,column 6,is_stmt
        MOV #0, *AR3(#141) ; |824| 
	.dwpsn	file "src/csl_audioClass.c",line 825,column 10,is_stmt
        MOV #0, *SP(#11) ; |825| 
	.dwpsn	file "src/csl_audioClass.c",line 825,column 22,is_stmt
        MOV *SP(#5), AR1 ; |825| 
        ADD #1, AR1 ; |825| 

        SFTL AR1, #-1 ; |825| 
||      MOV *SP(#11), AR2 ; |825| 

        CMPU AR2 >= AR1, TC1 ; |825| 
        BCC $C$L35,TC1 ; |825| 
                                        ; branchcc occurs ; |825| 
$C$L34:    
$C$DW$L$_AC_initDescriptors$6$B:
	.dwpsn	file "src/csl_audioClass.c",line 827,column 7,is_stmt
        MOV *SP(#11), T0 ; |827| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |827| 
        ADD #1, AR1 ; |827| 
        MOV *AR3(T0), AR2 ; |827| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |827| 
        MOV AR2, *AR3(#141) ; |827| 
	.dwpsn	file "src/csl_audioClass.c",line 825,column 47,is_stmt
        ADD #1, *SP(#11) ; |825| 
	.dwpsn	file "src/csl_audioClass.c",line 825,column 22,is_stmt
        MOV *SP(#5), AR1 ; |825| 
        ADD #1, AR1 ; |825| 

        SFTL AR1, #-1 ; |825| 
||      MOV *SP(#11), AR2 ; |825| 

        CMPU AR2 < AR1, TC1 ; |825| 
        BCC $C$L34,TC1 ; |825| 
                                        ; branchcc occurs ; |825| 
$C$DW$L$_AC_initDescriptors$6$E:
$C$L35:    
	.dwpsn	file "src/csl_audioClass.c",line 829,column 6,is_stmt
        MOV #0, *SP(#10) ; |829| 
	.dwpsn	file "src/csl_audioClass.c",line 831,column 13,is_stmt
        B $C$L51  ; |831| 
                                        ; branch occurs ; |831| 
$C$L36:    
	.dwpsn	file "src/csl_audioClass.c",line 835,column 5,is_stmt

        MOV *SP(#5), AR1 ; |835| 
||      MOV #12, AR2

        CMPU AR1 > AR2, TC1 ; |835| 
        BCC $C$L51,TC1 ; |835| 
                                        ; branchcc occurs ; |835| 
	.dwpsn	file "src/csl_audioClass.c",line 837,column 6,is_stmt
        MOV #0, *AR3(#129) ; |837| 
	.dwpsn	file "src/csl_audioClass.c",line 838,column 10,is_stmt
        MOV #0, *SP(#11) ; |838| 
	.dwpsn	file "src/csl_audioClass.c",line 838,column 22,is_stmt
        MOV *SP(#5), AR1 ; |838| 
        ADD #1, AR1 ; |838| 

        SFTL AR1, #-1 ; |838| 
||      MOV *SP(#11), AR2 ; |838| 

        CMPU AR2 >= AR1, TC1 ; |838| 
        BCC $C$L38,TC1 ; |838| 
                                        ; branchcc occurs ; |838| 
$C$L37:    
$C$DW$L$_AC_initDescriptors$10$B:
	.dwpsn	file "src/csl_audioClass.c",line 840,column 7,is_stmt
        MOV *SP(#11), T0 ; |840| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |840| 
        ADD #1, AR1 ; |840| 
        MOV *AR3(T0), AR2 ; |840| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |840| 
        MOV AR2, *AR3(#129) ; |840| 
	.dwpsn	file "src/csl_audioClass.c",line 838,column 47,is_stmt
        ADD #1, *SP(#11) ; |838| 
	.dwpsn	file "src/csl_audioClass.c",line 838,column 22,is_stmt
        MOV *SP(#5), AR1 ; |838| 
        ADD #1, AR1 ; |838| 

        SFTL AR1, #-1 ; |838| 
||      MOV *SP(#11), AR2 ; |838| 

        CMPU AR2 < AR1, TC1 ; |838| 
        BCC $C$L37,TC1 ; |838| 
                                        ; branchcc occurs ; |838| 
$C$DW$L$_AC_initDescriptors$10$E:
$C$L38:    
	.dwpsn	file "src/csl_audioClass.c",line 842,column 6,is_stmt
        MOV #0, *SP(#10) ; |842| 
	.dwpsn	file "src/csl_audioClass.c",line 844,column 13,is_stmt
        B $C$L51  ; |844| 
                                        ; branch occurs ; |844| 
$C$L39:    
	.dwpsn	file "src/csl_audioClass.c",line 848,column 5,is_stmt
        MOV #124, AR2 ; |848| 
        MOV *SP(#5), AR1 ; |848| 
        CMPU AR1 > AR2, TC1 ; |848| 
        BCC $C$L51,TC1 ; |848| 
                                        ; branchcc occurs ; |848| 
	.dwpsn	file "src/csl_audioClass.c",line 850,column 6,is_stmt
        MOV #0, *AR3(#161) ; |850| 
	.dwpsn	file "src/csl_audioClass.c",line 851,column 10,is_stmt
        MOV #0, *SP(#11) ; |851| 
	.dwpsn	file "src/csl_audioClass.c",line 851,column 22,is_stmt
        MOV *SP(#5), AR1 ; |851| 
        ADD #1, AR1 ; |851| 

        SFTL AR1, #-1 ; |851| 
||      MOV *SP(#11), AR2 ; |851| 

        CMPU AR2 >= AR1, TC1 ; |851| 
        BCC $C$L41,TC1 ; |851| 
                                        ; branchcc occurs ; |851| 
$C$L40:    
$C$DW$L$_AC_initDescriptors$14$B:
	.dwpsn	file "src/csl_audioClass.c",line 853,column 7,is_stmt
        MOV *SP(#11), T0 ; |853| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |853| 
        ADD #1, AR1 ; |853| 
        MOV *AR3(T0), AR2 ; |853| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |853| 
        MOV AR2, *AR3(#161) ; |853| 
	.dwpsn	file "src/csl_audioClass.c",line 851,column 47,is_stmt
        ADD #1, *SP(#11) ; |851| 
	.dwpsn	file "src/csl_audioClass.c",line 851,column 22,is_stmt
        MOV *SP(#5), AR1 ; |851| 
        ADD #1, AR1 ; |851| 

        SFTL AR1, #-1 ; |851| 
||      MOV *SP(#11), AR2 ; |851| 

        CMPU AR2 < AR1, TC1 ; |851| 
        BCC $C$L40,TC1 ; |851| 
                                        ; branchcc occurs ; |851| 
$C$DW$L$_AC_initDescriptors$14$E:
$C$L41:    
	.dwpsn	file "src/csl_audioClass.c",line 855,column 6,is_stmt
        MOV #0, *SP(#10) ; |855| 
	.dwpsn	file "src/csl_audioClass.c",line 857,column 13,is_stmt
        B $C$L51  ; |857| 
                                        ; branch occurs ; |857| 
$C$L42:    
	.dwpsn	file "src/csl_audioClass.c",line 860,column 5,is_stmt

        MOV *SP(#5), AR1 ; |860| 
||      MOV #12, AR2

        CMPU AR1 > AR2, TC1 ; |860| 
        BCC $C$L51,TC1 ; |860| 
                                        ; branchcc occurs ; |860| 
	.dwpsn	file "src/csl_audioClass.c",line 862,column 6,is_stmt
        MOV #0, *AR3(#285) ; |862| 
	.dwpsn	file "src/csl_audioClass.c",line 863,column 10,is_stmt
        MOV #0, *SP(#11) ; |863| 
	.dwpsn	file "src/csl_audioClass.c",line 863,column 22,is_stmt
        MOV *SP(#5), AR1 ; |863| 
        ADD #1, AR1 ; |863| 

        SFTL AR1, #-1 ; |863| 
||      MOV *SP(#11), AR2 ; |863| 

        CMPU AR2 >= AR1, TC1 ; |863| 
        BCC $C$L44,TC1 ; |863| 
                                        ; branchcc occurs ; |863| 
$C$L43:    
$C$DW$L$_AC_initDescriptors$18$B:
	.dwpsn	file "src/csl_audioClass.c",line 865,column 7,is_stmt
        MOV *SP(#11), T0 ; |865| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |865| 
        ADD #1, AR1 ; |865| 
        MOV *AR3(T0), AR2 ; |865| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |865| 
        MOV AR2, *AR3(#285) ; |865| 
	.dwpsn	file "src/csl_audioClass.c",line 863,column 47,is_stmt
        ADD #1, *SP(#11) ; |863| 
	.dwpsn	file "src/csl_audioClass.c",line 863,column 22,is_stmt
        MOV *SP(#5), AR1 ; |863| 
        ADD #1, AR1 ; |863| 

        SFTL AR1, #-1 ; |863| 
||      MOV *SP(#11), AR2 ; |863| 

        CMPU AR2 < AR1, TC1 ; |863| 
        BCC $C$L43,TC1 ; |863| 
                                        ; branchcc occurs ; |863| 
$C$DW$L$_AC_initDescriptors$18$E:
$C$L44:    
	.dwpsn	file "src/csl_audioClass.c",line 867,column 6,is_stmt
        MOV #0, *SP(#10) ; |867| 
	.dwpsn	file "src/csl_audioClass.c",line 869,column 13,is_stmt
        B $C$L51  ; |869| 
                                        ; branch occurs ; |869| 
$C$L45:    
	.dwpsn	file "src/csl_audioClass.c",line 872,column 5,is_stmt

        MOV *SP(#5), AR1 ; |872| 
||      MOV #12, AR2

        CMPU AR1 >= AR2, TC1 ; |872| 
        BCC $C$L51,TC1 ; |872| 
                                        ; branchcc occurs ; |872| 
	.dwpsn	file "src/csl_audioClass.c",line 874,column 6,is_stmt
        MOV #0, *AR3(#320) ; |874| 
	.dwpsn	file "src/csl_audioClass.c",line 875,column 10,is_stmt
        MOV #0, *SP(#11) ; |875| 
	.dwpsn	file "src/csl_audioClass.c",line 875,column 22,is_stmt
        MOV *SP(#5), AR1 ; |875| 
        ADD #1, AR1 ; |875| 

        SFTL AR1, #-1 ; |875| 
||      MOV *SP(#11), AR2 ; |875| 

        CMPU AR2 >= AR1, TC1 ; |875| 
        BCC $C$L47,TC1 ; |875| 
                                        ; branchcc occurs ; |875| 
$C$L46:    
$C$DW$L$_AC_initDescriptors$22$B:
	.dwpsn	file "src/csl_audioClass.c",line 877,column 7,is_stmt
        MOV *SP(#11), T0 ; |877| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AR1 ; |877| 
        ADD #1, AR1 ; |877| 
        MOV *AR3(T0), AR2 ; |877| 
        MOV dbl(*SP(#8)), XAR3
        AADD AR1, AR3 ; |877| 
        MOV AR2, *AR3(#320) ; |877| 
	.dwpsn	file "src/csl_audioClass.c",line 875,column 47,is_stmt
        ADD #1, *SP(#11) ; |875| 
	.dwpsn	file "src/csl_audioClass.c",line 875,column 22,is_stmt
        MOV *SP(#5), AR1 ; |875| 
        ADD #1, AR1 ; |875| 

        SFTL AR1, #-1 ; |875| 
||      MOV *SP(#11), AR2 ; |875| 

        CMPU AR2 < AR1, TC1 ; |875| 
        BCC $C$L46,TC1 ; |875| 
                                        ; branchcc occurs ; |875| 
$C$DW$L$_AC_initDescriptors$22$E:
$C$L47:    
	.dwpsn	file "src/csl_audioClass.c",line 879,column 6,is_stmt
        MOV #0, *SP(#10) ; |879| 
	.dwpsn	file "src/csl_audioClass.c",line 881,column 10,is_stmt
        B $C$L51  ; |881| 
                                        ; branch occurs ; |881| 
$C$L48:    
	.dwpsn	file "src/csl_audioClass.c",line 818,column 6,is_stmt

        MOV *SP(#4), AR1 ; |818| 
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |818| 
        BCC $C$L49,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
        CMP AR1 == AR2, TC1 ; |818| 
        BCC $C$L39,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
        BCC $C$L33,AR1 == #0 ; |818| 
                                        ; branchcc occurs ; |818| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |818| 
        BCC $C$L36,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
        B $C$L51  ; |818| 
                                        ; branch occurs ; |818| 
$C$L49:    
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |818| 
        BCC $C$L42,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |818| 
        BCC $C$L45,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
        B $C$L51  ; |818| 
                                        ; branch occurs ; |818| 
$C$L50:    
	.dwpsn	file "src/csl_audioClass.c",line 889,column 3,is_stmt
        MOV #-5, T0
        B $C$L52  ; |889| 
                                        ; branch occurs ; |889| 
$C$L51:    
	.dwpsn	file "src/csl_audioClass.c",line 892,column 2,is_stmt
        MOV *SP(#10), T0 ; |892| 
$C$L52:    
	.dwpsn	file "src/csl_audioClass.c",line 894,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$163	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$163, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L46:1:1714639429")
	.dwattr $C$DW$163, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$163, DW_AT_TI_begin_line(0x36b)
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x36e)
$C$DW$164	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$164, DW_AT_low_pc($C$DW$L$_AC_initDescriptors$22$B)
	.dwattr $C$DW$164, DW_AT_high_pc($C$DW$L$_AC_initDescriptors$22$E)
	.dwendtag $C$DW$163


$C$DW$165	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$165, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L43:1:1714639429")
	.dwattr $C$DW$165, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x35f)
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x362)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_AC_initDescriptors$18$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_AC_initDescriptors$18$E)
	.dwendtag $C$DW$165


$C$DW$167	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$167, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L40:1:1714639429")
	.dwattr $C$DW$167, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x353)
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x356)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_AC_initDescriptors$14$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_AC_initDescriptors$14$E)
	.dwendtag $C$DW$167


$C$DW$169	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$169, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L37:1:1714639429")
	.dwattr $C$DW$169, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0x346)
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x349)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_AC_initDescriptors$10$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_AC_initDescriptors$10$E)
	.dwendtag $C$DW$169


$C$DW$171	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$171, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L34:1:1714639429")
	.dwattr $C$DW$171, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0x339)
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x33c)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_AC_initDescriptors$6$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_AC_initDescriptors$6$E)
	.dwendtag $C$DW$171

	.dwattr $C$DW$149, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x37e)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$149

	.sect	".text"

$C$DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_initAcVal")
	.dwattr $C$DW$173, DW_AT_low_pc(_AC_initAcVal)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_AC_initAcVal")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$173, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x3a2)
	.dwattr $C$DW$173, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_audioClass.c",line 931,column 1,is_stmt,address _AC_initAcVal

	.dwfde $C$DW$CIE, _AC_initAcVal
$C$DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcHandle")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_pAcHandle")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: AC_initAcVal                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_initAcVal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("pAcHandle")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_pAcHandle")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("copyCnt")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_copyCnt")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 935,column 2,is_stmt
        MOV #0, *SP(#3) ; |935| 
	.dwpsn	file "src/csl_audioClass.c",line 937,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L56,AC0 == #0 ; |937| 
                                        ; branchcc occurs ; |937| 
	.dwpsn	file "src/csl_audioClass.c",line 939,column 3,is_stmt
        MOV #0, *AR3(#321) ; |939| 
	.dwpsn	file "src/csl_audioClass.c",line 940,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#283) ; |940| 
	.dwpsn	file "src/csl_audioClass.c",line 944,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, *AR3(#268) ; |944| 
	.dwpsn	file "src/csl_audioClass.c",line 946,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#269) ; |946| 
	.dwpsn	file "src/csl_audioClass.c",line 948,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #112, *AR3(#270) ; |948| 
	.dwpsn	file "src/csl_audioClass.c",line 950,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#271) ; |950| 
	.dwpsn	file "src/csl_audioClass.c",line 952,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#272) ; |952| 
	.dwpsn	file "src/csl_audioClass.c",line 954,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2816, *AR3(#273) ; |954| 
	.dwpsn	file "src/csl_audioClass.c",line 956,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #8, *AR3(#292) ; |956| 
	.dwpsn	file "src/csl_audioClass.c",line 958,column 7,is_stmt
        MOV #6, *SP(#2) ; |958| 
	.dwpsn	file "src/csl_audioClass.c",line 958,column 20,is_stmt

        MOV *SP(#2), AR1 ; |958| 
||      MOV #15, AR2

        CMPU AR1 >= AR2, TC1 ; |958| 
        BCC $C$L54,TC1 ; |958| 
                                        ; branchcc occurs ; |958| 
$C$L53:    
$C$DW$L$_AC_initAcVal$3$B:
	.dwpsn	file "src/csl_audioClass.c",line 960,column 4,is_stmt
        MOV *SP(#2), AR1 ; |960| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |960| 
        MOV #0, *AR3(#268) ; |960| 
	.dwpsn	file "src/csl_audioClass.c",line 958,column 34,is_stmt
        ADD #1, *SP(#2) ; |958| 
	.dwpsn	file "src/csl_audioClass.c",line 958,column 20,is_stmt
        MOV *SP(#2), AR1 ; |958| 
        CMPU AR1 < AR2, TC1 ; |958| 
        BCC $C$L53,TC1 ; |958| 
                                        ; branchcc occurs ; |958| 
$C$DW$L$_AC_initAcVal$3$E:
$C$L54:    
	.dwpsn	file "src/csl_audioClass.c",line 965,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#284) ; |965| 
	.dwpsn	file "src/csl_audioClass.c",line 966,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #21333, *AR3(#285) ; |966| 
	.dwpsn	file "src/csl_audioClass.c",line 967,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #21314, *AR3(#286) ; |967| 
	.dwpsn	file "src/csl_audioClass.c",line 968,column 8,is_stmt
        MOV #3, *SP(#2) ; |968| 
	.dwpsn	file "src/csl_audioClass.c",line 968,column 21,is_stmt

        MOV *SP(#2), AR1 ; |968| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |968| 
        BCC $C$L57,TC1 ; |968| 
                                        ; branchcc occurs ; |968| 
$C$L55:    
$C$DW$L$_AC_initAcVal$5$B:
	.dwpsn	file "src/csl_audioClass.c",line 970,column 4,is_stmt
        MOV *SP(#2), AR1 ; |970| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |970| 
        MOV #0, *AR3(#284) ; |970| 
	.dwpsn	file "src/csl_audioClass.c",line 968,column 34,is_stmt
        ADD #1, *SP(#2) ; |968| 
	.dwpsn	file "src/csl_audioClass.c",line 968,column 21,is_stmt
        MOV *SP(#2), AR1 ; |968| 
        CMPU AR1 < AR2, TC1 ; |968| 
        BCC $C$L55,TC1 ; |968| 
                                        ; branchcc occurs ; |968| 
$C$DW$L$_AC_initAcVal$5$E:
	.dwpsn	file "src/csl_audioClass.c",line 972,column 2,is_stmt
        B $C$L57  ; |972| 
                                        ; branch occurs ; |972| 
$C$L56:    
	.dwpsn	file "src/csl_audioClass.c",line 975,column 3,is_stmt
        MOV #-5, *SP(#3) ; |975| 
$C$L57:    
	.dwpsn	file "src/csl_audioClass.c",line 978,column 2,is_stmt
        MOV *SP(#3), T0 ; |978| 
	.dwpsn	file "src/csl_audioClass.c",line 979,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$179	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$179, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L55:1:1714639429")
	.dwattr $C$DW$179, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x3c8)
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x3cb)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_AC_initAcVal$5$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_AC_initAcVal$5$E)
	.dwendtag $C$DW$179


$C$DW$181	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$181, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L53:1:1714639429")
	.dwattr $C$DW$181, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x3be)
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x3c1)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$_AC_initAcVal$3$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$_AC_initAcVal$3$E)
	.dwendtag $C$DW$181

	.dwattr $C$DW$173, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x3d3)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text"
	.global	_AC_reqGetDescriptor

$C$DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqGetDescriptor")
	.dwattr $C$DW$183, DW_AT_low_pc(_AC_reqGetDescriptor)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_AC_reqGetDescriptor")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$183, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$183, DW_AT_TI_begin_line(0x407)
	.dwattr $C$DW$183, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(0x5a)
	.dwpsn	file "src/csl_audioClass.c",line 1036,column 1,is_stmt,address _AC_reqGetDescriptor

	.dwfde $C$DW$CIE, _AC_reqGetDescriptor
$C$DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg17]
$C$DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg19]
$C$DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg21]
$C$DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg23]
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqGetDescriptor                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,    *
;*                        XAR3,AR4,XAR4,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 90 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (88 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqGetDescriptor:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-89, SP
	.dwcfi	cfa_offset, 90
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("strLen")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_strLen")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("inOutFlag")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_inOutFlag")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("temp1")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_temp1")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("temp2")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_temp2")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("unicodeString")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_unicodeString")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("descrLen")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 82]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("pACClassHdl")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_pACClassHdl")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 84]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 86]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1048,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#84))
	.dwpsn	file "src/csl_audioClass.c",line 1049,column 2,is_stmt

        MOV XAR3, dbl(*SP(#86))
||      AADD #2, AR3 ; |1049| 

	.dwpsn	file "src/csl_audioClass.c",line 1050,column 2,is_stmt
        MOV #0, *SP(#13) ; |1050| 
	.dwpsn	file "src/csl_audioClass.c",line 1052,column 5,is_stmt
        B $C$L79  ; |1052| 
                                        ; branch occurs ; |1052| 
$C$L58:    
	.dwpsn	file "src/csl_audioClass.c",line 1056,column 10,is_stmt
        MOV dbl(*SP(#86)), XAR3
        MOV uns(low_byte(*AR3(#142))), AR1 ; |1056| 
        MOV AR1, *SP(#10) ; |1056| 
	.dwpsn	file "src/csl_audioClass.c",line 1058,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |1058| 
        MOV *AR3(short(#5)), AR1 ; |1058| 
        CMPU AR2 >= AR1, TC1 ; |1058| 
        BCC $C$L59,TC1 ; |1058| 
                                        ; branchcc occurs ; |1058| 

        B $C$L60  ; |1058| 
||      MOV AR2, AR1

                                        ; branch occurs ; |1058| 
$C$L59:    
        MOV *AR3(short(#5)), AR1 ; |1058| 
$C$L60:    
        MOV AR1, *SP(#10) ; |1058| 
	.dwpsn	file "src/csl_audioClass.c",line 1060,column 13,is_stmt
        MOV dbl(*SP(#86)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |1060| 
        AMAR *+AR1(#141) ; |1060| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$204, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1060| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1060| 
	.dwpsn	file "src/csl_audioClass.c",line 1063,column 18,is_stmt
        B $C$L80  ; |1063| 
                                        ; branch occurs ; |1063| 
$C$L61:    
	.dwpsn	file "src/csl_audioClass.c",line 1066,column 11,is_stmt
        MOV #12, *SP(#12) ; |1066| 
	.dwpsn	file "src/csl_audioClass.c",line 1067,column 11,is_stmt
        MOV dbl(*SP(#86)), XAR3
        MOV *AR3(#163), AR1 ; |1067| 
        MOV AR1, *SP(#10) ; |1067| 
	.dwpsn	file "src/csl_audioClass.c",line 1068,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |1068| 
        MOV *AR3(short(#5)), AR1 ; |1068| 
        CMPU AR2 != AR1, TC1 ; |1068| 
        BCC $C$L62,TC1 ; |1068| 
                                        ; branchcc occurs ; |1068| 
	.dwpsn	file "src/csl_audioClass.c",line 1070,column 5,is_stmt
        OR #0x0001, *SP(#12) ; |1070| 
$C$L62:    
	.dwpsn	file "src/csl_audioClass.c",line 1074,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |1074| 
        MOV *AR3(short(#5)), AR1 ; |1074| 
        CMPU AR2 >= AR1, TC1 ; |1074| 
        BCC $C$L63,TC1 ; |1074| 
                                        ; branchcc occurs ; |1074| 

        B $C$L64  ; |1074| 
||      MOV AR2, AR1

                                        ; branch occurs ; |1074| 
$C$L63:    
        MOV *AR3(short(#5)), AR1 ; |1074| 
$C$L64:    
        MOV AR1, *SP(#10) ; |1074| 
	.dwpsn	file "src/csl_audioClass.c",line 1077,column 4,is_stmt
        MOV dbl(*SP(#86)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |1077| 
        MOV *SP(#12), T1 ; |1077| 
        AMAR *+AR1(#161) ; |1077| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #_USB_postTransaction ; |1077| 
                                        ; call occurs [#_USB_postTransaction] ; |1077| 
	.dwpsn	file "src/csl_audioClass.c",line 1079,column 16,is_stmt
        B $C$L80  ; |1079| 
                                        ; branch occurs ; |1079| 
$C$L65:    
	.dwpsn	file "src/csl_audioClass.c",line 1082,column 11,is_stmt
        MOV #0, AC0 ; |1082| 
        MOV AC0, XAR2

        RPT #65   ; |1082| 
||      AMAR *SP(#16), XAR3

                                            ; loop starts ; |1082| 
$C$L66:    
$C$DW$L$_AC_reqGetDescriptor$14$B:
            MOV *AR2+, *AR3+ ; |1082| 
                                        ; loop ends ; |1082| 
$C$DW$L$_AC_reqGetDescriptor$14$E:
$C$L67:    
	.dwpsn	file "src/csl_audioClass.c",line 1084,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1084| 
        BCC $C$L70,AR1 != #0 ; |1084| 
                                        ; branchcc occurs ; |1084| 
	.dwpsn	file "src/csl_audioClass.c",line 1086,column 12,is_stmt
        MOV dbl(*SP(#86)), XAR3
        MOV uns(low_byte(*AR3(#321))), AR1 ; |1086| 
        MOV AR1, *SP(#10) ; |1086| 
	.dwpsn	file "src/csl_audioClass.c",line 1088,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |1088| 
        MOV *AR3(short(#5)), AR1 ; |1088| 
        CMPU AR2 >= AR1, TC1 ; |1088| 
        BCC $C$L68,TC1 ; |1088| 
                                        ; branchcc occurs ; |1088| 

        B $C$L69  ; |1088| 
||      MOV AR2, AR1

                                        ; branch occurs ; |1088| 
$C$L68:    
        MOV *AR3(short(#5)), AR1 ; |1088| 
$C$L69:    
        MOV AR1, *SP(#10) ; |1088| 
	.dwpsn	file "src/csl_audioClass.c",line 1091,column 14,is_stmt
        MOV dbl(*SP(#86)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |1091| 
        AMAR *+AR1(#320) ; |1091| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$206, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1091| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1091| 
	.dwpsn	file "src/csl_audioClass.c",line 1094,column 11,is_stmt
        B $C$L80  ; |1094| 
                                        ; branch occurs ; |1094| 
$C$L70:    
	.dwpsn	file "src/csl_audioClass.c",line 1098,column 12,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |1098| 
        MOV dbl(*SP(#86)), XAR3
        SFTL T0, #1 ; |1098| 
        MOV dbl(*AR3(#352)), XAR3
        MOV dbl(*AR3(T0)), XAR0
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_strlen")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #_strlen ; |1098| 
                                        ; call occurs [#_strlen] ; |1098| 
        MOV T0, *SP(#11) ; |1098| 
	.dwpsn	file "src/csl_audioClass.c",line 1103,column 5,is_stmt
        MOV T0, AR1
        SFTL AR1, #1 ; |1103| 
        ADD #2, AR1 ; |1103| 
        MOV AR1, *SP(#82) ; |1103| 
	.dwpsn	file "src/csl_audioClass.c",line 1106,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#82), AR2 ; |1106| 
        MOV *AR3(short(#5)), AR1 ; |1106| 
        CMPU AR2 >= AR1, TC1 ; |1106| 
        BCC $C$L71,TC1 ; |1106| 
                                        ; branchcc occurs ; |1106| 

        B $C$L72  ; |1106| 
||      MOV AR2, AR1

                                        ; branch occurs ; |1106| 
$C$L71:    
        MOV *AR3(short(#5)), AR1 ; |1106| 
$C$L72:    
        MOV AR1, *SP(#10) ; |1106| 
	.dwpsn	file "src/csl_audioClass.c",line 1110,column 18,is_stmt
        MOV #0, *SP(#13) ; |1110| 
	.dwpsn	file "src/csl_audioClass.c",line 1110,column 29,is_stmt
        MOV *SP(#13), AR2 ; |1110| 
        MOV *SP(#11), AR1 ; |1110| 
        CMPU AR2 >= AR1, TC1 ; |1110| 
        BCC $C$L74,TC1 ; |1110| 
                                        ; branchcc occurs ; |1110| 
$C$L73:    
$C$DW$L$_AC_reqGetDescriptor$24$B:
	.dwpsn	file "src/csl_audioClass.c",line 1112,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |1112| 
        MOV dbl(*SP(#86)), XAR3
        SFTL T0, #1 ; |1112| 
        MOV dbl(*AR3(#352)), XAR3
        MOV dbl(*AR3(T0)), XAR3
        MOV *SP(#13), T0 ; |1112| 
        MOV *AR3(T0), AR1 ; |1112| 
        MOV AR1, *SP(#14) ; |1112| 
	.dwpsn	file "src/csl_audioClass.c",line 1114,column 6,is_stmt
        MOV #0, *SP(#15) ; |1114| 
	.dwpsn	file "src/csl_audioClass.c",line 1115,column 6,is_stmt
        MOV *SP(#13), T0 ; |1115| 
        ADD #2, T0 ; |1115| 
        MOV *SP(#14), AC0 ; |1115| 
        MOV *SP(#15), AC1 ; |1115| 

        AMAR *SP(#16), XAR3
||      OR AC1 << #8, AC0 ; |1115| 

        MOV AC0, *AR3(T0) ; |1115| 
	.dwpsn	file "src/csl_audioClass.c",line 1110,column 45,is_stmt
        ADD #1, *SP(#13) ; |1110| 
	.dwpsn	file "src/csl_audioClass.c",line 1110,column 29,is_stmt
        MOV *SP(#13), AR2 ; |1110| 
        MOV *SP(#11), AR1 ; |1110| 
        CMPU AR2 < AR1, TC1 ; |1110| 
        BCC $C$L73,TC1 ; |1110| 
                                        ; branchcc occurs ; |1110| 
$C$DW$L$_AC_reqGetDescriptor$24$E:
$C$L74:    
	.dwpsn	file "src/csl_audioClass.c",line 1118,column 14,is_stmt
        MOV *SP(#10), AR1 ; |1118| 
        OR #0x0300, AR1, AR1 ; |1118| 
        MOV AR1, *SP(#17) ; |1118| 
	.dwpsn	file "src/csl_audioClass.c",line 1121,column 14,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |1121| 
        AMAR *SP(#16), XAR1
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$208, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1121| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1121| 
	.dwpsn	file "src/csl_audioClass.c",line 1124,column 15,is_stmt
        B $C$L80  ; |1124| 
                                        ; branch occurs ; |1124| 
$C$L75:    
	.dwpsn	file "src/csl_audioClass.c",line 1127,column 4,is_stmt
        MOV dbl(*SP(#86)), XAR3
        MOV uns(low_byte(*AR3(#130))), AR1 ; |1127| 
        MOV AR1, *SP(#10) ; |1127| 
	.dwpsn	file "src/csl_audioClass.c",line 1129,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |1129| 
        MOV *AR3(short(#5)), AR1 ; |1129| 
        CMPU AR2 >= AR1, TC1 ; |1129| 
        BCC $C$L76,TC1 ; |1129| 
                                        ; branchcc occurs ; |1129| 

        B $C$L77  ; |1129| 
||      MOV AR2, AR1

                                        ; branch occurs ; |1129| 
$C$L76:    
        MOV *AR3(short(#5)), AR1 ; |1129| 
$C$L77:    
        MOV AR1, *SP(#10) ; |1129| 
	.dwpsn	file "src/csl_audioClass.c",line 1131,column 13,is_stmt
        MOV dbl(*SP(#86)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |1131| 
        AMAR *+AR1(#129) ; |1131| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$209, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1131| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1131| 
	.dwpsn	file "src/csl_audioClass.c",line 1133,column 9,is_stmt
        B $C$L80  ; |1133| 
                                        ; branch occurs ; |1133| 
$C$L78:    
	.dwpsn	file "src/csl_audioClass.c",line 1136,column 7,is_stmt
        MOV #1, T0
        B $C$L81  ; |1136| 
                                        ; branch occurs ; |1136| 
$C$L79:    
	.dwpsn	file "src/csl_audioClass.c",line 1052,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV uns(high_byte(*AR3(short(#3)))), AR1 ; |1052| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |1052| 
        BCC $C$L58,TC1 ; |1052| 
                                        ; branchcc occurs ; |1052| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1052| 
        BCC $C$L61,TC1 ; |1052| 
                                        ; branchcc occurs ; |1052| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1052| 
        BCC $C$L65,TC1 ; |1052| 
                                        ; branchcc occurs ; |1052| 
        MOV #6, AR2
        CMPU AR1 == AR2, TC1 ; |1052| 
        BCC $C$L75,TC1 ; |1052| 
                                        ; branchcc occurs ; |1052| 
        B $C$L78  ; |1052| 
                                        ; branch occurs ; |1052| 
$C$L80:    
	.dwpsn	file "src/csl_audioClass.c",line 1139,column 2,is_stmt
        MOV #3, T0
$C$L81:    
	.dwpsn	file "src/csl_audioClass.c",line 1140,column 1,is_stmt
        AADD #89, SP
	.dwcfi	cfa_offset, 1
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$211	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$211, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L73:1:1714639429")
	.dwattr $C$DW$211, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$211, DW_AT_TI_begin_line(0x456)
	.dwattr $C$DW$211, DW_AT_TI_end_line(0x45c)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_AC_reqGetDescriptor$24$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_AC_reqGetDescriptor$24$E)
	.dwendtag $C$DW$211


$C$DW$213	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$213, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_audioClass.asm:$C$L66:1:1714639429")
	.dwattr $C$DW$213, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x43a)
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x43a)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_AC_reqGetDescriptor$14$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_AC_reqGetDescriptor$14$E)
	.dwendtag $C$DW$213

	.dwattr $C$DW$183, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x474)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text"
	.global	_AC_reqSetCurrent

$C$DW$215	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqSetCurrent")
	.dwattr $C$DW$215, DW_AT_low_pc(_AC_reqSetCurrent)
	.dwattr $C$DW$215, DW_AT_high_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_AC_reqSetCurrent")
	.dwattr $C$DW$215, DW_AT_external
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$215, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x4ac)
	.dwattr $C$DW$215, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$215, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1201,column 1,is_stmt,address _AC_reqSetCurrent

	.dwfde $C$DW$CIE, _AC_reqSetCurrent
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg17]
$C$DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg19]
$C$DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg21]
$C$DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg23]
$C$DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqSetCurrent                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqSetCurrent:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("requestRet")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_requestRet")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1207,column 2,is_stmt
        MOV #2, *SP(#15) ; |1207| 
	.dwpsn	file "src/csl_audioClass.c",line 1208,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 1209,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |1209| 

	.dwpsn	file "src/csl_audioClass.c",line 1211,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1211| 
        MOV AR1, *SP(#14) ; |1211| 
	.dwpsn	file "src/csl_audioClass.c",line 1213,column 2,is_stmt
        B $C$L88  ; |1213| 
                                        ; branch occurs ; |1213| 
$C$L82:    
	.dwpsn	file "src/csl_audioClass.c",line 1217,column 4,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1217| 
        BCC $C$L89,AR1 != #0 ; |1217| 
                                        ; branchcc occurs ; |1217| 
	.dwpsn	file "src/csl_audioClass.c",line 1219,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #0, *AR3(#48) ; |1219| 
	.dwpsn	file "src/csl_audioClass.c",line 1220,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #0, *AR3(#49) ; |1220| 
	.dwpsn	file "src/csl_audioClass.c",line 1221,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #0, *AR3(#50) ; |1221| 
	.dwpsn	file "src/csl_audioClass.c",line 1222,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#6)), XAR0

        AADD #48, AR1 ; |1222| 
||      MOV *SP(#14), T0 ; |1222| 

$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$230, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1222| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1222| 
	.dwpsn	file "src/csl_audioClass.c",line 1226,column 9,is_stmt
        B $C$L89  ; |1226| 
                                        ; branch occurs ; |1226| 
$C$L83:    
	.dwpsn	file "src/csl_audioClass.c",line 1229,column 4,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1229| 
        BCC $C$L84,AR1 != #0 ; |1229| 
                                        ; branchcc occurs ; |1229| 
	.dwpsn	file "src/csl_audioClass.c",line 1232,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#6)), XAR0

        AADD #36, AR1 ; |1232| 
||      MOV *SP(#14), T0 ; |1232| 

$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$231, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1232| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1232| 
	.dwpsn	file "src/csl_audioClass.c",line 1235,column 4,is_stmt
        B $C$L89  ; |1235| 
                                        ; branch occurs ; |1235| 
$C$L84:    
	.dwpsn	file "src/csl_audioClass.c",line 1236,column 9,is_stmt

        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1236| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |1236| 
        BCC $C$L85,TC1 ; |1236| 
                                        ; branchcc occurs ; |1236| 
	.dwpsn	file "src/csl_audioClass.c",line 1239,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#6)), XAR0

        AADD #24, AR1 ; |1239| 
||      MOV *SP(#14), T0 ; |1239| 

$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$232, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1239| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1239| 
	.dwpsn	file "src/csl_audioClass.c",line 1242,column 4,is_stmt
        B $C$L89  ; |1242| 
                                        ; branch occurs ; |1242| 
$C$L85:    
	.dwpsn	file "src/csl_audioClass.c",line 1243,column 9,is_stmt

        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1243| 
||      MOV #2, AR2

        CMPU AR1 != AR2, TC1 ; |1243| 
        BCC $C$L86,TC1 ; |1243| 
                                        ; branchcc occurs ; |1243| 
	.dwpsn	file "src/csl_audioClass.c",line 1246,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#6)), XAR0

        AADD #30, AR1 ; |1246| 
||      MOV *SP(#14), T0 ; |1246| 

$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$233, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1246| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1246| 
	.dwpsn	file "src/csl_audioClass.c",line 1249,column 4,is_stmt
        B $C$L89  ; |1249| 
                                        ; branch occurs ; |1249| 
$C$L86:    
	.dwpsn	file "src/csl_audioClass.c",line 1252,column 5,is_stmt
        MOV #1, *SP(#15) ; |1252| 
	.dwpsn	file "src/csl_audioClass.c",line 1254,column 9,is_stmt
        B $C$L89  ; |1254| 
                                        ; branch occurs ; |1254| 
$C$L87:    
	.dwpsn	file "src/csl_audioClass.c",line 1257,column 4,is_stmt
        MOV #1, *SP(#15) ; |1257| 
	.dwpsn	file "src/csl_audioClass.c",line 1258,column 9,is_stmt
        B $C$L89  ; |1258| 
                                        ; branch occurs ; |1258| 
$C$L88:    
	.dwpsn	file "src/csl_audioClass.c",line 1213,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV uns(high_byte(*AR3(short(#3)))), AR1 ; |1213| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |1213| 
        BCC $C$L82,TC1 ; |1213| 
                                        ; branchcc occurs ; |1213| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1213| 
        BCC $C$L83,TC1 ; |1213| 
                                        ; branchcc occurs ; |1213| 
        B $C$L87  ; |1213| 
                                        ; branch occurs ; |1213| 
$C$L89:    
	.dwpsn	file "src/csl_audioClass.c",line 1261,column 2,is_stmt
        MOV *SP(#15), T0 ; |1261| 
	.dwpsn	file "src/csl_audioClass.c",line 1262,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$215, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x4ee)
	.dwattr $C$DW$215, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$215

	.sect	".text"
	.global	_AC_reqGetCurrent

$C$DW$235	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqGetCurrent")
	.dwattr $C$DW$235, DW_AT_low_pc(_AC_reqGetCurrent)
	.dwattr $C$DW$235, DW_AT_high_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_AC_reqGetCurrent")
	.dwattr $C$DW$235, DW_AT_external
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$235, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$235, DW_AT_TI_begin_line(0x526)
	.dwattr $C$DW$235, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$235, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1323,column 1,is_stmt,address _AC_reqGetCurrent

	.dwfde $C$DW$CIE, _AC_reqGetCurrent
$C$DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg17]
$C$DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg19]
$C$DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg21]
$C$DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg23]
$C$DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqGetCurrent                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqGetCurrent:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$245	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$246	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$247	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$248	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$249	.dwtag  DW_TAG_variable, DW_AT_name("requestRet")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_requestRet")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1330,column 2,is_stmt
        MOV #3, *SP(#15) ; |1330| 
	.dwpsn	file "src/csl_audioClass.c",line 1331,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 1332,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |1332| 

	.dwpsn	file "src/csl_audioClass.c",line 1334,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1334| 
        MOV AR1, *SP(#14) ; |1334| 
	.dwpsn	file "src/csl_audioClass.c",line 1336,column 2,is_stmt
        B $C$L96  ; |1336| 
                                        ; branch occurs ; |1336| 
$C$L90:    
	.dwpsn	file "src/csl_audioClass.c",line 1340,column 4,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1340| 
        BCC $C$L97,AR1 != #0 ; |1340| 
                                        ; branchcc occurs ; |1340| 
	.dwpsn	file "src/csl_audioClass.c",line 1342,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #48, AR1 ; |1342| 
||      MOV *SP(#14), T0 ; |1342| 

$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$250, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1342| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1342| 
	.dwpsn	file "src/csl_audioClass.c",line 1346,column 9,is_stmt
        B $C$L97  ; |1346| 
                                        ; branch occurs ; |1346| 
$C$L91:    
	.dwpsn	file "src/csl_audioClass.c",line 1349,column 4,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1349| 
        BCC $C$L92,AR1 != #0 ; |1349| 
                                        ; branchcc occurs ; |1349| 
	.dwpsn	file "src/csl_audioClass.c",line 1352,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #36, AR1 ; |1352| 
||      MOV *SP(#14), T0 ; |1352| 

$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$251, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1352| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1352| 
	.dwpsn	file "src/csl_audioClass.c",line 1355,column 4,is_stmt
        B $C$L97  ; |1355| 
                                        ; branch occurs ; |1355| 
$C$L92:    
	.dwpsn	file "src/csl_audioClass.c",line 1356,column 9,is_stmt

        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1356| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |1356| 
        BCC $C$L93,TC1 ; |1356| 
                                        ; branchcc occurs ; |1356| 
	.dwpsn	file "src/csl_audioClass.c",line 1359,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #24, AR1 ; |1359| 
||      MOV *SP(#14), T0 ; |1359| 

$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$252, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1359| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1359| 
	.dwpsn	file "src/csl_audioClass.c",line 1362,column 4,is_stmt
        B $C$L97  ; |1362| 
                                        ; branch occurs ; |1362| 
$C$L93:    
	.dwpsn	file "src/csl_audioClass.c",line 1363,column 9,is_stmt

        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1363| 
||      MOV #2, AR2

        CMPU AR1 != AR2, TC1 ; |1363| 
        BCC $C$L94,TC1 ; |1363| 
                                        ; branchcc occurs ; |1363| 
	.dwpsn	file "src/csl_audioClass.c",line 1366,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #30, AR1 ; |1366| 
||      MOV *SP(#14), T0 ; |1366| 

$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$253, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1366| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1366| 
	.dwpsn	file "src/csl_audioClass.c",line 1369,column 4,is_stmt
        B $C$L97  ; |1369| 
                                        ; branch occurs ; |1369| 
$C$L94:    
	.dwpsn	file "src/csl_audioClass.c",line 1372,column 5,is_stmt
        MOV #1, *SP(#15) ; |1372| 
	.dwpsn	file "src/csl_audioClass.c",line 1374,column 9,is_stmt
        B $C$L97  ; |1374| 
                                        ; branch occurs ; |1374| 
$C$L95:    
	.dwpsn	file "src/csl_audioClass.c",line 1377,column 4,is_stmt
        MOV #1, *SP(#15) ; |1377| 
	.dwpsn	file "src/csl_audioClass.c",line 1378,column 9,is_stmt
        B $C$L97  ; |1378| 
                                        ; branch occurs ; |1378| 
$C$L96:    
	.dwpsn	file "src/csl_audioClass.c",line 1336,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV uns(high_byte(*AR3(short(#3)))), AR1 ; |1336| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |1336| 
        BCC $C$L90,TC1 ; |1336| 
                                        ; branchcc occurs ; |1336| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1336| 
        BCC $C$L91,TC1 ; |1336| 
                                        ; branchcc occurs ; |1336| 
        B $C$L95  ; |1336| 
                                        ; branch occurs ; |1336| 
$C$L97:    
	.dwpsn	file "src/csl_audioClass.c",line 1381,column 2,is_stmt
        MOV *SP(#15), T0 ; |1381| 
	.dwpsn	file "src/csl_audioClass.c",line 1382,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$235, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$235, DW_AT_TI_end_line(0x566)
	.dwattr $C$DW$235, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$235

	.sect	".text"
	.global	_AC_reqGetMinimum

$C$DW$255	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqGetMinimum")
	.dwattr $C$DW$255, DW_AT_low_pc(_AC_reqGetMinimum)
	.dwattr $C$DW$255, DW_AT_high_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_AC_reqGetMinimum")
	.dwattr $C$DW$255, DW_AT_external
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$255, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$255, DW_AT_TI_begin_line(0x59e)
	.dwattr $C$DW$255, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$255, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1443,column 1,is_stmt,address _AC_reqGetMinimum

	.dwfde $C$DW$CIE, _AC_reqGetMinimum
$C$DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg17]
$C$DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg19]
$C$DW$258	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg21]
$C$DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg23]
$C$DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqGetMinimum                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqGetMinimum:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1449,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 1450,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |1450| 

	.dwpsn	file "src/csl_audioClass.c",line 1451,column 2,is_stmt
        MOV #0, *SP(#15) ; |1451| 
	.dwpsn	file "src/csl_audioClass.c",line 1453,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1453| 
        MOV AR1, *SP(#14) ; |1453| 
	.dwpsn	file "src/csl_audioClass.c",line 1455,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #54, AR1 ; |1455| 
||      MOV *SP(#14), T0 ; |1455| 

$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$270, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1455| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1455| 
        MOV T0, *SP(#15) ; |1455| 
	.dwpsn	file "src/csl_audioClass.c",line 1458,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L98,AR1 == #0 ; |1458| 
                                        ; branchcc occurs ; |1458| 
	.dwpsn	file "src/csl_audioClass.c",line 1460,column 3,is_stmt
        MOV #1, T0
        B $C$L99  ; |1460| 
                                        ; branch occurs ; |1460| 
$C$L98:    
	.dwpsn	file "src/csl_audioClass.c",line 1463,column 2,is_stmt
        MOV #3, T0
$C$L99:    
	.dwpsn	file "src/csl_audioClass.c",line 1464,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$255, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x5b8)
	.dwattr $C$DW$255, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$255

	.sect	".text"
	.global	_AC_reqGetMaximum

$C$DW$272	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqGetMaximum")
	.dwattr $C$DW$272, DW_AT_low_pc(_AC_reqGetMaximum)
	.dwattr $C$DW$272, DW_AT_high_pc(0x00)
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_AC_reqGetMaximum")
	.dwattr $C$DW$272, DW_AT_external
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$272, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$272, DW_AT_TI_begin_line(0x5f0)
	.dwattr $C$DW$272, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$272, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1525,column 1,is_stmt,address _AC_reqGetMaximum

	.dwfde $C$DW$CIE, _AC_reqGetMaximum
$C$DW$273	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg17]
$C$DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg19]
$C$DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg21]
$C$DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg23]
$C$DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqGetMaximum                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqGetMaximum:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1531,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 1532,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |1532| 

	.dwpsn	file "src/csl_audioClass.c",line 1533,column 2,is_stmt
        MOV #0, *SP(#15) ; |1533| 
	.dwpsn	file "src/csl_audioClass.c",line 1535,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1535| 
        MOV AR1, *SP(#14) ; |1535| 
	.dwpsn	file "src/csl_audioClass.c",line 1537,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #58, AR1 ; |1537| 
||      MOV *SP(#14), T0 ; |1537| 

$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$287, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1537| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1537| 
        MOV T0, *SP(#15) ; |1537| 
	.dwpsn	file "src/csl_audioClass.c",line 1540,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L100,AR1 == #0 ; |1540| 
                                        ; branchcc occurs ; |1540| 
	.dwpsn	file "src/csl_audioClass.c",line 1542,column 3,is_stmt
        MOV #1, T0
        B $C$L101 ; |1542| 
                                        ; branch occurs ; |1542| 
$C$L100:    
	.dwpsn	file "src/csl_audioClass.c",line 1545,column 2,is_stmt
        MOV #3, T0
$C$L101:    
	.dwpsn	file "src/csl_audioClass.c",line 1546,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$272, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$272, DW_AT_TI_end_line(0x60a)
	.dwattr $C$DW$272, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$272

	.sect	".text"
	.global	_AC_reqGetResolution

$C$DW$289	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqGetResolution")
	.dwattr $C$DW$289, DW_AT_low_pc(_AC_reqGetResolution)
	.dwattr $C$DW$289, DW_AT_high_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_AC_reqGetResolution")
	.dwattr $C$DW$289, DW_AT_external
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$289, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0x642)
	.dwattr $C$DW$289, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$289, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1607,column 1,is_stmt,address _AC_reqGetResolution

	.dwfde $C$DW$CIE, _AC_reqGetResolution
$C$DW$290	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg17]
$C$DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg19]
$C$DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg21]
$C$DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg23]
$C$DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqGetResolution                                          *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,  *
;*                        SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqGetResolution:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$298	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$299	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$300	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$301	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$302	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1613,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_audioClass.c",line 1614,column 5,is_stmt

        MOV XAR3, dbl(*SP(#12))
||      AADD #2, AR3 ; |1614| 

	.dwpsn	file "src/csl_audioClass.c",line 1615,column 2,is_stmt
        MOV #0, *SP(#15) ; |1615| 
	.dwpsn	file "src/csl_audioClass.c",line 1617,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1617| 
        MOV AR1, *SP(#14) ; |1617| 
	.dwpsn	file "src/csl_audioClass.c",line 1619,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #62, AR1 ; |1619| 
||      MOV *SP(#14), T0 ; |1619| 

$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$304, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1619| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1619| 
        MOV T0, *SP(#15) ; |1619| 
	.dwpsn	file "src/csl_audioClass.c",line 1622,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L102,AR1 == #0 ; |1622| 
                                        ; branchcc occurs ; |1622| 
	.dwpsn	file "src/csl_audioClass.c",line 1624,column 3,is_stmt
        MOV #1, T0
        B $C$L103 ; |1624| 
                                        ; branch occurs ; |1624| 
$C$L102:    
	.dwpsn	file "src/csl_audioClass.c",line 1627,column 2,is_stmt
        MOV #3, T0
$C$L103:    
	.dwpsn	file "src/csl_audioClass.c",line 1628,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$289, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x65c)
	.dwattr $C$DW$289, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$289

	.sect	".text"
	.global	_AC_reqSetInterface

$C$DW$306	.dwtag  DW_TAG_subprogram, DW_AT_name("AC_reqSetInterface")
	.dwattr $C$DW$306, DW_AT_low_pc(_AC_reqSetInterface)
	.dwattr $C$DW$306, DW_AT_high_pc(0x00)
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_AC_reqSetInterface")
	.dwattr $C$DW$306, DW_AT_external
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$306, DW_AT_TI_begin_file("src/csl_audioClass.c")
	.dwattr $C$DW$306, DW_AT_TI_begin_line(0x695)
	.dwattr $C$DW$306, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$306, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_audioClass.c",line 1690,column 1,is_stmt,address _AC_reqSetInterface

	.dwfde $C$DW$CIE, _AC_reqSetInterface
$C$DW$307	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg17]
$C$DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg19]
$C$DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg21]
$C$DW$310	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg23]
$C$DW$311	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAcObj")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: AC_reqSetInterface                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,  *
;*                        XAR4,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_AC_reqSetInterface:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$313	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$314	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$315	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$316	.dwtag  DW_TAG_variable, DW_AT_name("pAcObj")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$317	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$318	.dwtag  DW_TAG_variable, DW_AT_name("mediaStatus")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_mediaStatus")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$319	.dwtag  DW_TAG_variable, DW_AT_name("pAcClassHdl")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_pAcClassHdl")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$320	.dwtag  DW_TAG_variable, DW_AT_name("pAcHandle")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_pAcHandle")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$321	.dwtag  DW_TAG_variable, DW_AT_name("dummy")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_audioClass.c",line 1697,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_audioClass.c",line 1698,column 2,is_stmt
        AMAR *+AR3(#360) ; |1698| 
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_audioClass.c",line 1699,column 2,is_stmt
        MOV #2, *SP(#10) ; |1699| 
	.dwpsn	file "src/csl_audioClass.c",line 1700,column 2,is_stmt
        MOV #0, *SP(#16) ; |1700| 
	.dwpsn	file "src/csl_audioClass.c",line 1702,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1702| 
        BCC $C$L104,AR1 != #0 ; |1702| 
                                        ; branchcc occurs ; |1702| 
	.dwpsn	file "src/csl_audioClass.c",line 1704,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |1704| 
        BCC $C$L110,AR1 != #0 ; |1704| 
                                        ; branchcc occurs ; |1704| 
	.dwpsn	file "src/csl_audioClass.c",line 1706,column 4,is_stmt
        MOV #2, *SP(#10) ; |1706| 
	.dwpsn	file "src/csl_audioClass.c",line 1708,column 2,is_stmt
        B $C$L110 ; |1708| 
                                        ; branch occurs ; |1708| 
$C$L104:    
	.dwpsn	file "src/csl_audioClass.c",line 1709,column 7,is_stmt
        CMP *AR3(short(#4)) == #1, TC1 ; |1709| 
        BCC $C$L109,!TC1 ; |1709| 
                                        ; branchcc occurs ; |1709| 
	.dwpsn	file "src/csl_audioClass.c",line 1711,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |1711| 
        BCC $C$L106,AR1 != #0 ; |1711| 
                                        ; branchcc occurs ; |1711| 
	.dwpsn	file "src/csl_audioClass.c",line 1713,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR3
        CMP *AR3(#322) == #1, TC1 ; |1713| 
        BCC $C$L105,!TC1 ; |1713| 
                                        ; branchcc occurs ; |1713| 
	.dwpsn	file "src/csl_audioClass.c",line 1715,column 5,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |1715| 
        MOV *SP(#16), T0 ; |1715| 
        AMAR *SP(#16), XAR0
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_TI_call
	.dwattr $C$DW$322, DW_AT_TI_indirect
        CALL AC0  ; |1715| 
                                        ; call occurs [AC0] ; |1715| 
        MOV T0, *SP(#11) ; |1715| 
	.dwpsn	file "src/csl_audioClass.c",line 1716,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV *SP(#16), T0 ; |1716| 
        MOV dbl(*AR3(#8)), AC0 ; |1716| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_call
	.dwattr $C$DW$323, DW_AT_TI_indirect
        CALL AC0  ; |1716| 
                                        ; call occurs [AC0] ; |1716| 
        MOV T0, *SP(#11) ; |1716| 
	.dwpsn	file "src/csl_audioClass.c",line 1717,column 5,is_stmt
        CMP *SP(#11) == #1, TC1 ; |1717| 
        BCC $C$L105,!TC1 ; |1717| 
                                        ; branchcc occurs ; |1717| 
	.dwpsn	file "src/csl_audioClass.c",line 1719,column 6,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV #0, *AR3(#322) ; |1719| 
$C$L105:    
	.dwpsn	file "src/csl_audioClass.c",line 1723,column 4,is_stmt
        MOV #2, *SP(#10) ; |1723| 
	.dwpsn	file "src/csl_audioClass.c",line 1724,column 3,is_stmt
        B $C$L110 ; |1724| 
                                        ; branch occurs ; |1724| 
$C$L106:    
	.dwpsn	file "src/csl_audioClass.c",line 1725,column 8,is_stmt
        CMP *AR3(short(#3)) == #1, TC1 ; |1725| 
        BCC $C$L108,!TC1 ; |1725| 
                                        ; branchcc occurs ; |1725| 
	.dwpsn	file "src/csl_audioClass.c",line 1728,column 4,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV *AR3(#323), AR1 ; |1728| 
        BCC $C$L107,AR1 != #0 ; |1728| 
                                        ; branchcc occurs ; |1728| 
	.dwpsn	file "src/csl_audioClass.c",line 1730,column 5,is_stmt
        MOV dbl(*AR3(#8)), AC0 ; |1730| 
        MOV *SP(#16), T0 ; |1730| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_call
	.dwattr $C$DW$324, DW_AT_TI_indirect
        CALL AC0  ; |1730| 
                                        ; call occurs [AC0] ; |1730| 
        MOV T0, *SP(#11) ; |1730| 
	.dwpsn	file "src/csl_audioClass.c",line 1731,column 5,is_stmt
        CMP *SP(#11) == #1, TC1 ; |1731| 
        BCC $C$L107,!TC1 ; |1731| 
                                        ; branchcc occurs ; |1731| 
	.dwpsn	file "src/csl_audioClass.c",line 1733,column 6,is_stmt
        MOV dbl(*SP(#14)), XAR3
        MOV #1, *AR3(#323) ; |1733| 
$C$L107:    
	.dwpsn	file "src/csl_audioClass.c",line 1736,column 4,is_stmt
        MOV #2, *SP(#10) ; |1736| 
	.dwpsn	file "src/csl_audioClass.c",line 1737,column 3,is_stmt
        B $C$L110 ; |1737| 
                                        ; branch occurs ; |1737| 
$C$L108:    
	.dwpsn	file "src/csl_audioClass.c",line 1740,column 4,is_stmt
        MOV #1, *SP(#10) ; |1740| 
	.dwpsn	file "src/csl_audioClass.c",line 1742,column 2,is_stmt
        B $C$L110 ; |1742| 
                                        ; branch occurs ; |1742| 
$C$L109:    
	.dwpsn	file "src/csl_audioClass.c",line 1746,column 3,is_stmt
        MOV #1, *SP(#10) ; |1746| 
$C$L110:    
	.dwpsn	file "src/csl_audioClass.c",line 1749,column 2,is_stmt
        MOV *SP(#10), T0 ; |1749| 
	.dwpsn	file "src/csl_audioClass.c",line 1750,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$306, DW_AT_TI_end_file("src/csl_audioClass.c")
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x6d6)
	.dwattr $C$DW$306, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$306

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"USB Reset failed",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strlen
	.global	_printf
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
	.global	_USB_abortAllTransaction
	.global	_USB_connectDev
	.global	_USB_disconnectDev
	.global	_USB_setParams

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$326	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB0"), DW_AT_const_value(0x00)
$C$DW$327	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB1"), DW_AT_const_value(0x01)
$C$DW$328	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$28

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevNum")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$329	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_DONE"), DW_AT_const_value(0x00)
$C$DW$330	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_STALL"), DW_AT_const_value(0x01)
$C$DW$331	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_SEND_ACK"), DW_AT_const_value(0x02)
$C$DW$332	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_GET_ACK"), DW_AT_const_value(0x03)
$C$DW$333	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_DATA_IN"), DW_AT_const_value(0x04)
$C$DW$334	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_REQUEST_DATA_OUT"), DW_AT_const_value(0x05)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcRequestRet")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$335	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$21)
$C$DW$336	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$48)
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$27)
$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$27)
$C$DW$339	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("fpAC_REQ_HANDLER")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$340	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_MEDIACCESS_OVERFLOW"), DW_AT_const_value(0x00)
$C$DW$341	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_MEDIACCESS_SUCCESS"), DW_AT_const_value(0x01)
$C$DW$342	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_MEDIACCESS_NOTPRESENT"), DW_AT_const_value(0x02)
$C$DW$343	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_MEDIACCESS_WRITEPROTECT"), DW_AT_const_value(0x03)
$C$DW$344	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_MEDIACCESS_BADMEDIA"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$55

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcMediaStatus")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$345	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$30)
$C$DW$346	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$52)
$C$DW$347	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$52)
$C$DW$348	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

$C$DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$349	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$30)
$C$DW$350	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$59

$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

$C$DW$T$61	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)

$C$DW$T$65	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$352	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$30)
$C$DW$353	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$65

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_UNLOCK"), DW_AT_const_value(0x00)
$C$DW$355	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_LOCK"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$63

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcMediaLockStatus")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$356	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$357	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$358	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA_TXONLY"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$81

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbOpMode")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$359	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_FALSE"), DW_AT_const_value(0x00)
$C$DW$360	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_TRUE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$97

$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBoolean")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$361	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_UNKNOWN_SPEED"), DW_AT_const_value(0x00)
$C$DW$362	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_FULL_SPEED"), DW_AT_const_value(0x02)
$C$DW$363	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_HIGH_SPEED"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$99

$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBusSpeed")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$364	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_IDLE"), DW_AT_const_value(0x00)
$C$DW$365	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_STATUS_IN"), DW_AT_const_value(0x01)
$C$DW$366	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_TX"), DW_AT_const_value(0x02)
$C$DW$367	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_RX"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$101

$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEp0State")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$368	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_DETACH"), DW_AT_const_value(0x00)
$C$DW$369	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_ATTACH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$105

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDeviceEvent")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$112	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP0"), DW_AT_const_value(0x00)
$C$DW$371	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP1"), DW_AT_const_value(0x01)
$C$DW$372	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP2"), DW_AT_const_value(0x02)
$C$DW$373	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP3"), DW_AT_const_value(0x03)
$C$DW$374	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP4"), DW_AT_const_value(0x04)
$C$DW$375	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP5"), DW_AT_const_value(0x05)
$C$DW$376	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP6"), DW_AT_const_value(0x06)
$C$DW$377	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP7"), DW_AT_const_value(0x07)
$C$DW$378	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP0"), DW_AT_const_value(0x08)
$C$DW$379	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP1"), DW_AT_const_value(0x09)
$C$DW$380	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP2"), DW_AT_const_value(0x0a)
$C$DW$381	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP3"), DW_AT_const_value(0x0b)
$C$DW$382	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP4"), DW_AT_const_value(0x0c)
$C$DW$383	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP5"), DW_AT_const_value(0x0d)
$C$DW$384	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP6"), DW_AT_const_value(0x0e)
$C$DW$385	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP7"), DW_AT_const_value(0x0f)
	.dwendtag $C$DW$T$112

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpNum")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$114	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$386	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_CTRL"), DW_AT_const_value(0x00)
$C$DW$387	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BULK"), DW_AT_const_value(0x01)
$C$DW$388	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_INTR"), DW_AT_const_value(0x02)
$C$DW$389	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_ISO"), DW_AT_const_value(0x03)
$C$DW$390	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_HPORT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$114

$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbXferType")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)

$C$DW$T$129	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x01)
$C$DW$391	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_DEVICE_DESCR"), DW_AT_const_value(0x00)
$C$DW$392	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_DEVICE_QUAL_DESCR"), DW_AT_const_value(0x01)
$C$DW$393	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_CONFIG_DESCR"), DW_AT_const_value(0x02)
$C$DW$394	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_INTERFACE_DESCR"), DW_AT_const_value(0x03)
$C$DW$395	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_AC_STRING_LANGID_DESC"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$129

$C$DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcDescrId")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("CSL_AcClassStruct")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x2b0)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$396, DW_AT_name("usbDevHandle")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_usbDevHandle")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$397, DW_AT_name("ctrlHandle")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_ctrlHandle")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$398, DW_AT_name("acHandle")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_acHandle")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x168]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcClassStruct")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x17)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("pAcClassHandle")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("CSL_AcCtrlObject")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x166)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$399, DW_AT_name("ctrlInEpHandle")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_ctrlInEpHandle")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$400, DW_AT_name("devNum")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$401, DW_AT_name("ctrlOutEpHandle")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_ctrlOutEpHandle")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$402, DW_AT_name("suspendFlag")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_suspendFlag")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$403, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$404, DW_AT_name("usbSetup")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$405, DW_AT_name("leftVolBuf")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_leftVolBuf")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$406, DW_AT_name("rightVolBuf")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_rightVolBuf")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$407, DW_AT_name("leftRightVolBuf")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_leftRightVolBuf")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$408, DW_AT_name("muteCtrlBuf")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_muteCtrlBuf")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$409, DW_AT_name("getMinBuffer")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_getMinBuffer")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$410, DW_AT_name("getMaxBuffer")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_getMaxBuffer")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$411, DW_AT_name("getResBuffer")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_getResBuffer")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$412, DW_AT_name("dummydesc")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_dummydesc")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$413, DW_AT_name("deviceQualifierDescr")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_deviceQualifierDescr")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x81]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$414, DW_AT_name("deviceDescr")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_deviceDescr")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x8d]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$415, DW_AT_name("confDescr")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_confDescr")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0xa1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$416, DW_AT_name("audioClassIntDescr")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_audioClassIntDescr")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x11d]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$417, DW_AT_name("audioClassIsoOutEndptDescr")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_audioClassIsoOutEndptDescr")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x129]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$418, DW_AT_name("audioClassInterfcLnk")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_audioClassInterfcLnk")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$419, DW_AT_name("audioClassIsoInEndptDescr")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_audioClassIsoInEndptDescr")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$420, DW_AT_name("audioClassIsoOutEndptLnk")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_audioClassIsoOutEndptLnk")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$421, DW_AT_name("stringDescrLangid")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_stringDescrLangid")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$422, DW_AT_name("curConfigStat")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$423, DW_AT_name("audioClassIsoInEndptLnk")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_audioClassIsoInEndptLnk")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x14e]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$424, DW_AT_name("ctrlBuffer")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_ctrlBuffer")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x154]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$425, DW_AT_name("configDescrLnk")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_configDescrLnk")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x15a]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$426, DW_AT_name("strDescr")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_strDescr")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x160]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$427, DW_AT_name("acReqTable")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_acReqTable")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$428, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x164]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcCtrlObject")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x17)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("CSL_AcInitStructApp")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x22)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$429, DW_AT_name("pAcObj")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_pAcObj")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$430, DW_AT_name("pId")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_pId")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$431, DW_AT_name("vId")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_vId")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$432, DW_AT_name("numLun")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_numLun")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$433, DW_AT_name("txPktSize")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_txPktSize")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$434, DW_AT_name("rxPktSize")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_rxPktSize")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$435, DW_AT_name("strDescrApp")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_strDescrApp")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$436, DW_AT_name("lbaBufferApp")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_lbaBufferApp")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$437, DW_AT_name("acReqTableApp")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_acReqTableApp")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$438, DW_AT_name("isoHandler")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_isoHandler")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$439, DW_AT_name("ctrlHandler")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_ctrlHandler")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$440, DW_AT_name("playAudioApp")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_playAudioApp")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$441, DW_AT_name("stopAudioApp")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_stopAudioApp")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$442, DW_AT_name("recordAudioApp")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_recordAudioApp")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$443, DW_AT_name("mediaGetPresentStateApp")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_mediaGetPresentStateApp")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$444, DW_AT_name("mediaInitApp")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_mediaInitApp")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$445, DW_AT_name("mediaEjectApp")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_mediaEjectApp")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$446, DW_AT_name("mediaLockUnitApp")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_mediaLockUnitApp")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$447, DW_AT_name("getMediaSizeApp")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_getMediaSizeApp")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcInitStructApp")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x17)
$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("pAcAppClassHandle")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("CSL_AcLogicalUnit")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x3e)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$448, DW_AT_name("scsiInquiryData")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_scsiInquiryData")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$449, DW_AT_name("mediaSize")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_mediaSize")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$450, DW_AT_name("currLba")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_currLba")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$451, DW_AT_name("lbaSize")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_lbaSize")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$452, DW_AT_name("removeable")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_removeable")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$453, DW_AT_name("mediaState")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_mediaState")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$454, DW_AT_name("readwrite")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_readwrite")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$455, DW_AT_name("lbaCnt")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_lbaCnt")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$456, DW_AT_name("verifyFlag")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_verifyFlag")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcLogicalUnit")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_byte_size(0xf8)
$C$DW$457	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$457, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$74


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("CSL_AcObject")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x148)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$458, DW_AT_name("recordAudio")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_recordAudio")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$459, DW_AT_name("playAudio")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_playAudio")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$460, DW_AT_name("stopAudio")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_stopAudio")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$461, DW_AT_name("mediaGetPresentState")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_mediaGetPresentState")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$462, DW_AT_name("mediaInit")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_mediaInit")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$463, DW_AT_name("mediaEject")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_mediaEject")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$464, DW_AT_name("mediaLockUnit")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_mediaLockUnit")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$465, DW_AT_name("getMediaSize")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_getMediaSize")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$466, DW_AT_name("lbaBuffer")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_lbaBuffer")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$467, DW_AT_name("cbwDataTransferLength")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_cbwDataTransferLength")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$468, DW_AT_name("lun")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_lun")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$469, DW_AT_name("senseData")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_senseData")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x10c]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$470, DW_AT_name("activityPresentFlag")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_activityPresentFlag")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x11b]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$471, DW_AT_name("csw")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_csw")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x11c]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$472, DW_AT_name("readCapacity")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_readCapacity")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x124]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$473, DW_AT_name("cbw")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_cbw")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x12a]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$474, DW_AT_name("isoInEpHandle")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_isoInEpHandle")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$475, DW_AT_name("isoOutEpHandle")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_isoOutEpHandle")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$476, DW_AT_name("noOfLun")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_noOfLun")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$477, DW_AT_name("mediaState")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_mediaState")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x141]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$478, DW_AT_name("playBackActive")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_playBackActive")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$479, DW_AT_name("mediaInitDone")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_mediaInitDone")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x143]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$480, DW_AT_name("tempBuffer")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_tempBuffer")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$78

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcObject")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$138	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$138, DW_AT_address_class(0x17)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("CSL_AcRequestStruct")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x04)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$481, DW_AT_name("request")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$482, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$80

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AcRequestStruct")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)

$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x16)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$483, DW_AT_name("maxCurrent")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$484, DW_AT_name("opMode")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$485, DW_AT_name("appSuspendCallBack")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_appSuspendCallBack")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$486, DW_AT_name("appWakeupCallBack")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_appWakeupCallBack")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$487, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$488, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$489, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$490, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$491, DW_AT_name("strDescPtr")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$492, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$493, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$494, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$93

$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
$C$DW$T$140	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_address_class(0x17)

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0xda)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$495, DW_AT_name("devNum")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$496, DW_AT_name("opMode")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$497, DW_AT_name("maxCurrent")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$498, DW_AT_name("fInitialized")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$499, DW_AT_name("fSetupPktCmd")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_fSetupPktCmd")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$500, DW_AT_name("fOutPhaseCmd")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_fOutPhaseCmd")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$501, DW_AT_name("fWaitingOnFlagA")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_fWaitingOnFlagA")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$502, DW_AT_name("fWaitingOnFlagB")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_fWaitingOnFlagB")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$503, DW_AT_name("fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$504, DW_AT_name("fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$505, DW_AT_name("pFIFOBaseAddress")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_pFIFOBaseAddress")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$506, DW_AT_name("pInterruptAddr")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_pInterruptAddr")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$507, DW_AT_name("fSendHandshake")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_fSendHandshake")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$508, DW_AT_name("fMUSBIsReady")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_fMUSBIsReady")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$509, DW_AT_name("cbOutEP0Buf")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_cbOutEP0Buf")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$510, DW_AT_name("cbOutEP0DataReceived")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_cbOutEP0DataReceived")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$511, DW_AT_name("dwOutEP0Buf")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_dwOutEP0Buf")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$512, DW_AT_name("fEP0BUFAvailable")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_fEP0BUFAvailable")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$513, DW_AT_name("fEP1InBUFAvailable")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_fEP1InBUFAvailable")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$514, DW_AT_name("dwIntSourceL")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_dwIntSourceL")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$515, DW_AT_name("dwIntSourceH")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_dwIntSourceH")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$516, DW_AT_name("remoteWkpStat")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_remoteWkpStat")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$517, DW_AT_name("busSpeed")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_busSpeed")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$518, DW_AT_name("ep0State")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_ep0State")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$519, DW_AT_name("pEpStatus")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_pEpStatus")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$520, DW_AT_name("cableState")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_cableState")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$521, DW_AT_name("usbSetup")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$522, DW_AT_name("suspendCallBackFxn")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_suspendCallBackFxn")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$523, DW_AT_name("wakeupCallBackFxn")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_wakeupCallBackFxn")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$524, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$525, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$526, DW_AT_name("dwFIFOStartAddr")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_dwFIFOStartAddr")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$527, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$528, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$529, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$530, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$531, DW_AT_name("strDescPtr")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$532, DW_AT_name("devAddr")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_devAddr")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$533, DW_AT_name("ctrlOutEpObj")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_ctrlOutEpObj")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$534, DW_AT_name("ctrlInEpObj")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_ctrlInEpObj")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$535, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$536, DW_AT_name("curConfigStat")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$537, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$109

$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevHandle")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x06)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$538, DW_AT_name("bytes")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_bytes")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$539, DW_AT_name("pBuffer")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_pBuffer")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$540, DW_AT_name("pNextBuffer")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_pNextBuffer")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$111

$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$110	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x17)

$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x0a)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$541, DW_AT_name("opMode")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$542, DW_AT_name("epNum")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$543, DW_AT_name("xferType")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$544, DW_AT_name("maxPktSize")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$545, DW_AT_name("eventMask")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$546, DW_AT_name("dblPktBuf")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_dblPktBuf")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$547, DW_AT_name("asyncTxfer")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_asyncTxfer")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$548, DW_AT_name("fxn")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$117

$C$DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
$C$DW$T$144	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x17)

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x22)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$549, DW_AT_name("epNum")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$550, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$551, DW_AT_name("xferType")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$552, DW_AT_name("maxPktSize")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$553, DW_AT_name("eventMask")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$554, DW_AT_name("fxn")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$555, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$556, DW_AT_name("fInitialized")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$557, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$558, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$559, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$560, DW_AT_name("hEventHandler")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$561, DW_AT_name("fStalled")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$562, DW_AT_name("pvBuffer")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$563, DW_AT_name("cbBuffer")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$564, DW_AT_name("cbTransferred")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$565, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$566, DW_AT_name("fComplete")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$567, DW_AT_name("ioFlags")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$568, DW_AT_name("hUsbDev")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$120

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpHandle")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$569	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$569, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$31


$C$DW$T$108	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x14)
$C$DW$570	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$570, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$108

$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x17)

$C$DW$T$123	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$123, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x12)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$571, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$572, DW_AT_name("xferType")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$573, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$574, DW_AT_name("fInitialized")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$575, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$576, DW_AT_name("pTransfer")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$577, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$578, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$579, DW_AT_name("hEventHandler")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$580, DW_AT_name("fStalled")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$581, DW_AT_name("fSelected")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_fSelected")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$123

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
$C$DW$T$104	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x17)

$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x06)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$582, DW_AT_name("newPacket")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_newPacket")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$583, DW_AT_name("bmRequestType")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$584, DW_AT_name("bRequest")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$585, DW_AT_name("wValue")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$586, DW_AT_name("wIndex")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$587, DW_AT_name("wLength")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$124

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x0e)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$588, DW_AT_name("dwFlags")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_dwFlags")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$589, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$590, DW_AT_name("pvBuffer")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$591, DW_AT_name("cbBuffer")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$592, DW_AT_name("cbTransferred")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$593, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$594, DW_AT_name("fComplete")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$595, DW_AT_name("ioFlags")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$125

$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("PVOID")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)
$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_EVENT_ISR")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)

$C$DW$T$83	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$596	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$83

$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_CALLBACK")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$597	.dwtag  DW_TAG_TI_far_type
$C$DW$T$150	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$597)
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x17)
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
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$598	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$3)
$C$DW$599	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$90

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_TRANSFER_CALLBACK")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEventMask")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbIoFlags")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x40)
$C$DW$600	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$600, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$96


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$601	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$601, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x0c)
$C$DW$602	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$602, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x04)
$C$DW$603	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$603, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x3f)
$C$DW$604	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$604, DW_AT_upper_bound(0x3e)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x14)
$C$DW$605	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$605, DW_AT_upper_bound(0x13)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x7c)
$C$DW$606	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$606, DW_AT_upper_bound(0x7b)
	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x05)
$C$DW$607	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$607, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$39

$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x17)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)

$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x08)
$C$DW$608	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$608, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$107


$C$DW$T$71	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x32)
$C$DW$609	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$609, DW_AT_upper_bound(0x31)
	.dwendtag $C$DW$T$71


$C$DW$T$75	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x0f)
$C$DW$610	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$610, DW_AT_upper_bound(0x0e)
	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x08)
$C$DW$611	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$611, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x11)
$C$DW$612	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$612, DW_AT_upper_bound(0x10)
	.dwendtag $C$DW$T$77


$C$DW$T$184	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x42)
$C$DW$613	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$613, DW_AT_upper_bound(0x41)
	.dwendtag $C$DW$T$184

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)

$C$DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$614	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x20)
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
$C$DW$T$41	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$41, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$41, DW_AT_name("signed char")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x17)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)
$C$DW$615	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$41)
$C$DW$T$186	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$615)
$C$DW$T$187	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_address_class(0x17)
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

$C$DW$616	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$616, DW_AT_location[DW_OP_reg0]
$C$DW$617	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$617, DW_AT_location[DW_OP_reg1]
$C$DW$618	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$618, DW_AT_location[DW_OP_reg2]
$C$DW$619	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$619, DW_AT_location[DW_OP_reg3]
$C$DW$620	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$620, DW_AT_location[DW_OP_reg4]
$C$DW$621	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg5]
$C$DW$622	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$622, DW_AT_location[DW_OP_reg6]
$C$DW$623	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$623, DW_AT_location[DW_OP_reg7]
$C$DW$624	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg8]
$C$DW$625	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg9]
$C$DW$626	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg10]
$C$DW$627	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg11]
$C$DW$628	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$628, DW_AT_location[DW_OP_reg12]
$C$DW$629	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$629, DW_AT_location[DW_OP_reg13]
$C$DW$630	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$630, DW_AT_location[DW_OP_reg14]
$C$DW$631	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$631, DW_AT_location[DW_OP_reg15]
$C$DW$632	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$632, DW_AT_location[DW_OP_reg16]
$C$DW$633	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$633, DW_AT_location[DW_OP_reg17]
$C$DW$634	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$634, DW_AT_location[DW_OP_reg18]
$C$DW$635	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$635, DW_AT_location[DW_OP_reg19]
$C$DW$636	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$636, DW_AT_location[DW_OP_reg20]
$C$DW$637	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$637, DW_AT_location[DW_OP_reg21]
$C$DW$638	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg22]
$C$DW$639	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg23]
$C$DW$640	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg24]
$C$DW$641	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg25]
$C$DW$642	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg26]
$C$DW$643	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_reg27]
$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg28]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg29]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg30]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg31]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_regx 0x20]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_regx 0x21]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_regx 0x22]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_regx 0x23]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_regx 0x24]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_regx 0x25]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_regx 0x26]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_regx 0x27]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_regx 0x28]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_regx 0x29]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_regx 0x30]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_regx 0x31]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_regx 0x32]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_regx 0x33]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_regx 0x34]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_regx 0x35]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_regx 0x36]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_regx 0x37]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_regx 0x38]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_regx 0x39]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x40]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x41]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x42]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x43]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x44]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x45]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x46]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x47]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x48]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x49]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_regx 0x50]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_regx 0x51]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_regx 0x52]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_regx 0x53]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_regx 0x54]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_regx 0x55]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_regx 0x56]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_regx 0x57]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_regx 0x58]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_regx 0x59]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

