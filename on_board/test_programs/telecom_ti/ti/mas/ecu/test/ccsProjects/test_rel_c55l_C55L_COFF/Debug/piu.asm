;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:13 2013                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_2_1 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.model call=c55_std
	.model mem=large
	.noremark 5503  ; code avoids SE CPU_84 MMR write
	.noremark 5505  ; code avoids SE CPU_84 MMR read
	.noremark 5673  ; code avoids SE CPU_89
	.noremark 5684  ; code avoids SE CPU_116 indirect write
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("utldB2LinPower")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_utldB2LinPower")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$108)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("utlLsMemSet")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_utlLsMemSet")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$37)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$36)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_get_stats")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_piu_get_stats")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$73)
	.dwendtag $C$DW$7

	.global	_piuContext
	.bss	_piuContext,12,0,2
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("piuContext")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_piuContext")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _piuContext]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$10, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\1116812 
	.sect	".text"
	.global	_piu_exception

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_exception")
	.dwattr $C$DW$11, DW_AT_low_pc(_piu_exception)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_piu_exception")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 99,column 1,is_stmt,address _piu_exception

	.dwfde $C$DW$CIE, _piu_exception
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ID")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
;  98 | void piu_exception(tuint ID, tuint code)                               
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_exception                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,XAR2,SP,M40,SATA,SATD,*
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_exception:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ID")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 1]
        *SP(#1) = T1 ; |99| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 100,column 4,is_stmt
;----------------------------------------------------------------------
; 100 | piuContext.debugInfo ((void *)&ID, dbg_EXCEPTION_FATAL, code, 0, NULL);
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_piuContext+2))) ; |100| 
        XAR2 = #0 ; |100| 
        XAR0 = mar(*SP(#0))

        *SP(#0) = T0 ; |99| 
||      AR1 = #0

        T1 = *SP(#1) ; |100| 
||      T0 = #2

$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_call
	.dwattr $C$DW$16, DW_AT_TI_indirect
        call AC0  ; |100| 
                                        ; call occurs [AC0] ; |100| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$11, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_piuDelete

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("piuDelete")
	.dwattr $C$DW$18, DW_AT_low_pc(_piuDelete)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_piuDelete")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 116,column 1,is_stmt,address _piuDelete

	.dwfde $C$DW$CIE, _piuDelete
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nbufs")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg12]
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufs")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 115 | void piuDelete (void **piuInst, tint nbufs, ecomemBuffer_t *bufs)      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuDelete                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuDelete:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("nbufs")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("bufs")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_bufs")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 117 | piuInst_t    *inst    = (piuInst_t *) *piuInst;                        
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |116| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3)
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 119,column 3,is_stmt
;----------------------------------------------------------------------
; 119 | piu_exc_assert ((inst->state == piu_CLOSED), piu_EXC_DELETE, inst);    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |119| 
        if (AR1 == #0) goto $C$L1 ; |119| 
                                        ; branchcc occurs ; |119| 

        T1 = #2
||      T0 = *AR3 ; |119| 

$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_piu_exception")
	.dwattr $C$DW$26, DW_AT_TI_call
        call #_piu_exception ; |119| 
                                        ; call occurs [#_piu_exception] ; |119| 
$C$L1:    
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 122,column 3,is_stmt
;----------------------------------------------------------------------
; 122 | *piuInst = NULL;                                                       
;----------------------------------------------------------------------
        AC0 = #0  ; |122| 
        dbl(*AR3) = AC0
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_piu_reset_receive_in_buf

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_reset_receive_in_buf")
	.dwattr $C$DW$28, DW_AT_low_pc(_piu_reset_receive_in_buf)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_piu_reset_receive_in_buf")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 129,column 1,is_stmt,address _piu_reset_receive_in_buf

	.dwfde $C$DW$CIE, _piu_reset_receive_in_buf
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 128 | void piu_reset_receive_in_buf (piuInst_t *inst)                        
; 130 | inst->receive_in_buf.in_ptr  = inst->receive_in_buf.out_ptr =          
; 131 | inst->receive_in_buf.end_ptr = inst->receive_in_buf.start_ptr;         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_reset_receive_in_buf                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_reset_receive_in_buf:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 0]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        XAR2 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(#40))
        dbl(*AR2(#42)) = XAR3
        XAR2 = dbl(*SP(#0))
        dbl(*AR2(#38)) = XAR3
        XAR2 = dbl(*SP(#0))
        dbl(*AR2(#36)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 132,column 3,is_stmt
;----------------------------------------------------------------------
; 132 | while ((inst->receive_in_buf.top_ptr - inst->receive_in_buf.end_ptr)   
; 133 |         >= inst->segment_size) {                                       
;----------------------------------------------------------------------
        goto $C$L3 ; |132| 
                                        ; branch occurs ; |132| 
$C$L2:    
$C$DW$L$_piu_reset_receive_in_buf$2$B:
        XAR2 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 134,column 5,is_stmt
;----------------------------------------------------------------------
; 134 | inst->receive_in_buf.end_ptr += inst->segment_size;                    
; 135 | };                                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |134| 
        XAR3 = dbl(*AR2(#42))
        mar(AR3 + AR1) ; |134| 
        dbl(*AR2(#42)) = XAR3
$C$DW$L$_piu_reset_receive_in_buf$2$E:
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 132,column 3,is_stmt
$C$DW$L$_piu_reset_receive_in_buf$3$B:
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(#42))
        AC1 = XAR3
        XAR3 = dbl(*SP(#0))
        XAR3 = dbl(*AR3(#44))
        AC0 = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 132,column 10,is_stmt
        AC0 = AC0 - AC1 ; |132| 

        AR2 = *AR3(short(#7)) ; |132| 
||      AR1 = AC0 ; |132| 

        TC1 = (AR1 >= AR2) ; |132| 
        if (TC1) goto $C$L2 ; |132| 
                                        ; branchcc occurs ; |132| 
$C$DW$L$_piu_reset_receive_in_buf$3$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 136,column 3,is_stmt
;----------------------------------------------------------------------
; 136 | inst->receive_in_buf.segment_count = 0;                                
;----------------------------------------------------------------------
        *AR3(#46) = #0 ; |136| 
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$32	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$32, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piu.asm:$C$L3:1:1373047933")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x86)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_piu_reset_receive_in_buf$3$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_piu_reset_receive_in_buf$3$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_piu_reset_receive_in_buf$2$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_piu_reset_receive_in_buf$2$E)
	.dwendtag $C$DW$32

	.dwattr $C$DW$28, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_piuSetCompanding

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("piuSetCompanding")
	.dwattr $C$DW$35, DW_AT_low_pc(_piuSetCompanding)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_piuSetCompanding")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 145,column 1,is_stmt,address _piuSetCompanding

	.dwfde $C$DW$CIE, _piuSetCompanding
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inst")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg17]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 144 | void piuSetCompanding (piuInst_t *inst, piuCompandingCfg_t *cfg)       
; 146 | inst->pcm_expand_table  = cfg->pcm_expand_table;                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuSetCompanding                                             *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuSetCompanding:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*AR3(short(#2)))
        XAR3 = dbl(*SP(#0))
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 147 | inst->pcm_format        = cfg->law;                                    
;----------------------------------------------------------------------
        AR1 = *AR3 ; |147| 
        XAR3 = dbl(*SP(#0))
        *AR3(short(#6)) = AR1 ; |147| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 148,column 3,is_stmt
;----------------------------------------------------------------------
; 148 | if (inst->pcm_format == piu_COMP_ULAW)                                 
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#6)) == #1) ; |148| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 149,column 5,is_stmt
;----------------------------------------------------------------------
; 149 | inst->silence_pattern = piu_MULAW_SILENCE;                             
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit)
           *AR3(#62) = #127 ; |149| 
        if (TC1) goto $C$L4 ; |149| 
                                        ; branchcc occurs ; |149| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 150,column 8,is_stmt
;----------------------------------------------------------------------
; 150 | else if (inst->pcm_format == piu_COMP_ALAW)                            
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |150| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 151,column 5,is_stmt
;----------------------------------------------------------------------
; 151 | inst->silence_pattern = piu_ALAW_SILENCE;                              
; 152 | else                                                                   
;----------------------------------------------------------------------
        if (AR1 == #0) execute (D_Unit)
           *AR3(#62) = #85 ; |151| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 153,column 5,is_stmt
;----------------------------------------------------------------------
; 153 | inst->silence_pattern = piu_LINEAR_SILENCE;                            
;----------------------------------------------------------------------
        if (AR1 != #0) execute (D_Unit)
           *AR3(#62) = #0 ; |153| 
$C$L4:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$35, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_piuOpen

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("piuOpen")
	.dwattr $C$DW$41, DW_AT_low_pc(_piuOpen)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_piuOpen")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 169,column 1,is_stmt,address _piuOpen

	.dwfde $C$DW$CIE, _piuOpen
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg17]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 168 | void piuOpen (void *piuInst, piuConfig_t *cfg)                         
; 170 | piuInst_t    *inst    = (piuInst_t *) piuInst;                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuOpen                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuOpen:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 171,column 3,is_stmt
;----------------------------------------------------------------------
; 171 | piu_exc_assert ((inst->state == piu_CLOSED), piu_EXC_OPEN, inst);      
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |171| 
        if (AR1 == #0) goto $C$L5 ; |171| 
                                        ; branchcc occurs ; |171| 

        T1 = #1
||      T0 = *AR3 ; |171| 

$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_piu_exception")
	.dwattr $C$DW$47, DW_AT_TI_call
        call #_piu_exception ; |171| 
                                        ; call occurs [#_piu_exception] ; |171| 
$C$L5:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 174,column 3,is_stmt
;----------------------------------------------------------------------
; 174 | inst->mode_bitfield &= piu_CTRL_BIT_TRIPLE_RX_BUF;                     
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0x0200 ; |174| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 175,column 3,is_stmt
;----------------------------------------------------------------------
; 175 | inst->mode_bitfield |= piu_CTRL_BIT_RECV_IN_BUF_EMPTY;                 
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0400 ; |175| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 177,column 3,is_stmt
;----------------------------------------------------------------------
; 177 | if (cfg->transp_mode) { /* Set transparent mode flag */                
;----------------------------------------------------------------------
        AR1 = *AR3 ; |177| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 178,column 5,is_stmt
;----------------------------------------------------------------------
; 178 | inst->mode_bitfield    |= piu_CTRL_BIT_TRANSPARENT_MODE;               
;----------------------------------------------------------------------
        if (AR1 != #0) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) | #0x0001 ; |178| 
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 181,column 3,is_stmt
;----------------------------------------------------------------------
; 181 | piuSetCompanding(inst, &cfg->companding);                              
;----------------------------------------------------------------------
        mar(AR1 + #12) ; |181| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_piuSetCompanding")
	.dwattr $C$DW$48, DW_AT_TI_call
        call #_piuSetCompanding ; |181| 
                                        ; call occurs [#_piuSetCompanding] ; |181| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 185,column 3,is_stmt
;----------------------------------------------------------------------
; 185 | piu_exc_assert (cfg->segment_size > 0, piu_EXC_SUBFRAMESIZE, inst);    
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |185| 
        if (AR1 > #0) goto $C$L6 ; |185| 
                                        ; branchcc occurs ; |185| 
        XAR3 = dbl(*SP(#4))

        T0 = *AR3 ; |185| 
||      T1 = #3

$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_piu_exception")
	.dwattr $C$DW$49, DW_AT_TI_call
        call #_piu_exception ; |185| 
                                        ; call occurs [#_piu_exception] ; |185| 
$C$L6:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 187,column 3,is_stmt
;----------------------------------------------------------------------
; 187 | inst->segment_size      = cfg->segment_size;                           
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |187| 
        XAR3 = dbl(*SP(#4))
        *AR3(short(#7)) = AR1 ; |187| 
        XAR3 = dbl(*SP(#4))
        AR1 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 188,column 3,is_stmt
;----------------------------------------------------------------------
; 188 | inst->rx_underflow_cnt  = inst->rx_overflow_cnt  = 0;                  
;----------------------------------------------------------------------
        *AR3(#10) = AR1 ; |188| 
        XAR3 = dbl(*SP(#4))
        *AR3(#9) = AR1 ; |188| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 189,column 3,is_stmt
;----------------------------------------------------------------------
; 189 | inst->rx_delay          = cfg->rx_delay;                               
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |189| 
        XAR3 = dbl(*SP(#4))
        *AR3(#8) = AR1 ; |189| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 192,column 3,is_stmt
;----------------------------------------------------------------------
; 192 | inst->energy_DClevel.txEnergy  = inst->energy_DClevel.rxEnergy         
; 193 | = inst->energy_DClevel.txDClevel = inst->energy_DClevel.rxDClevel = 0; 
;----------------------------------------------------------------------
        AC0 = #0  ; |192| 
        dbl(*AR3(#32)) = AC0 ; |192| 
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(#30)) = AC0 ; |192| 
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(#28)) = AC0 ; |192| 
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(#26)) = AC0 ; |192| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 196,column 3,is_stmt
;----------------------------------------------------------------------
; 196 | inst->bidSilence.txSilDetEnergy = inst->bidSilence.rxSilDetEnergy = 0; 
; 198 | inst->reportOutTargetInst    = cfg->reportOutTargetInst;               
; 199 | inst->sendOutProcTargetInst  = cfg->sendOutProcTargetInst;             
; 200 | inst->sendOutIsrTargetInst   = cfg->sendOutIsrTargetInst;              
;----------------------------------------------------------------------
        dbl(*AR3(#50)) = AC0 ; |196| 
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(#48)) = AC0 ; |196| 
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#6)))
        dbl(*AR2(#20)) = XAR3
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#2)))
        dbl(*AR2(#22)) = XAR3
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#4)))
        dbl(*AR2(#24)) = XAR3
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 203,column 3,is_stmt
;----------------------------------------------------------------------
; 203 | inst->generatePattern = 0;             /* Default pattern */           
; 206 | inst->receive_out_buf_ptr = inst->receive_out_buf;                     
;----------------------------------------------------------------------
        *AR3(#34) = #0 ; |203| 
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#12))
        dbl(*AR2(#14)) = XAR3
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 207,column 3,is_stmt
;----------------------------------------------------------------------
; 207 | if (cfg->use_recv_out_buf) {                                           
;----------------------------------------------------------------------
        AR1 = *AR3(#10) ; |207| 
        if (AR1 == #0) goto $C$L7 ; |207| 
                                        ; branchcc occurs ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 207,column 30,is_stmt
;----------------------------------------------------------------------
; 208 | tuint loc_segment_size;                                                
;----------------------------------------------------------------------

$C$DW$50	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("loc_segment_size")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_loc_segment_size")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 6]
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 210,column 5,is_stmt
;----------------------------------------------------------------------
; 210 | loc_segment_size =                                                     
; 211 |   (inst->mode_bitfield & piu_CTRL_BIT_TRIPLE_RX_BUF ? piu_NUMSEGM_RX3 :
;     |  piu_NUMSEGM_RX2);                                                     
; 212 | #if PIUDLCOMP_ENABLE                                                   
;----------------------------------------------------------------------
        TC1 = bit(*AR3(short(#2)),#9) ; |210| 
        AR1 = #3
        if (!TC1) execute (D_Unit) ||
           AR1 = #2
        *SP(#6) = AR1 ; |210| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 213,column 5,is_stmt
;----------------------------------------------------------------------
; 213 | loc_segment_size *= (inst->segment_size>>1);                           
; 214 | #else                                                                  
; 215 | loc_segment_size *= inst->segment_size;                                
; 216 | #endif                                                                 
;----------------------------------------------------------------------
        T1 = *AR3(short(#7)) ; |213| 
        T1 = T1 >> #1 ; |213| 
        AC0 = T1 * *SP(#6) ; |213| 
        *SP(#6) = AC0 ; |213| 
        XAR3 = dbl(*SP(#4))

        T1 = *SP(#6) ; |217| 
||      T0 = #0

        XAR0 = dbl(*AR3(#12))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 217,column 5,is_stmt
;----------------------------------------------------------------------
; 217 | utlLsMemSet (inst->receive_out_buf, (linSample) 0, loc_segment_size);  
;----------------------------------------------------------------------
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$52, DW_AT_TI_call
        call #_utlLsMemSet ; |217| 
                                        ; call occurs [#_utlLsMemSet] ; |217| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 218,column 5,is_stmt
;----------------------------------------------------------------------
; 218 | inst->mode_bitfield |= piu_CTRL_BIT_USE_RECV_OUT_BUF;                  
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0100 ; |218| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 219,column 3,is_stmt
;----------------------------------------------------------------------
; 222 | inst->send_out_buf_ptr = inst->send_out_buf;                           
;----------------------------------------------------------------------
	.dwendtag $C$DW$50

$C$L7:    
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#16))
        dbl(*AR2(#18)) = XAR3
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 223,column 3,is_stmt
;----------------------------------------------------------------------
; 223 | utlLsMemSet ( inst->send_out_buf, (linSample) 0,                       
; 224 |               piu_NUMSEGM_TX * inst->segment_size );                   
;----------------------------------------------------------------------
        AC0 = *AR3(short(#7)) << #1 ; |223| 
        XAR0 = dbl(*AR3(#16))

        T1 = AC0  ; |223| 
||      T0 = #0

$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_utlLsMemSet")
	.dwattr $C$DW$53, DW_AT_TI_call
        call #_utlLsMemSet ; |223| 
                                        ; call occurs [#_utlLsMemSet] ; |223| 
        XAR0 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 227,column 3,is_stmt
;----------------------------------------------------------------------
; 227 | piu_reset_receive_in_buf(inst);                                        
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_piu_reset_receive_in_buf")
	.dwattr $C$DW$54, DW_AT_TI_call
        call #_piu_reset_receive_in_buf ; |227| 
                                        ; call occurs [#_piu_reset_receive_in_buf] ; |227| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 228 | inst->state = piu_OPEN;     /* set state to open */                    
;----------------------------------------------------------------------
        *AR3(short(#1)) = #1 ; |228| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$41, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0xe6)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.global	_piuClose

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("piuClose")
	.dwattr $C$DW$56, DW_AT_low_pc(_piuClose)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_piuClose")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xf0)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 241,column 1,is_stmt,address _piuClose

	.dwfde $C$DW$CIE, _piuClose
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 240 | void piuClose ( void *piuInst )                                        
; 242 | piuInst_t *inst = (piuInst_t *) piuInst ;                              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuClose                                                     *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuClose:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#2)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 245,column 3,is_stmt
;----------------------------------------------------------------------
; 245 | inst->state = piu_CLOSED ;                                             
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |245| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$56, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.global	_piuBidSilenceDetect

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("piuBidSilenceDetect")
	.dwattr $C$DW$61, DW_AT_low_pc(_piuBidSilenceDetect)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_piuBidSilenceDetect")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x106)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 263,column 1,is_stmt,address _piuBidSilenceDetect

	.dwfde $C$DW$CIE, _piuBidSilenceDetect
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctrl")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 262 | void piuBidSilenceDetect (void *piuInst, bidSilenceDet_t *ctrl)        
; 264 | LFract    lin_thres;                                                   
; 265 | piuInst_t *inst = (piuInst_t *) piuInst;                               
; 266 | LFract    linpwr;                                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuBidSilenceDetect                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuBidSilenceDetect:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("ctrl")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("lin_thres")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_lin_thres")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("linpwr")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_linpwr")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 268,column 3,is_stmt
;----------------------------------------------------------------------
; 268 | if (ctrl->enable) {                                                    
;----------------------------------------------------------------------
        AR1 = *AR3 ; |268| 
        if (AR1 == #0) goto $C$L8 ; |268| 
                                        ; branchcc occurs ; |268| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 269,column 5,is_stmt
;----------------------------------------------------------------------
; 269 | linpwr = utldB2LinPower(frctAdjustQ (ctrl->threshold, 0, 4));          
;----------------------------------------------------------------------
        AC0 = *AR3(short(#1)) << #4 ; |269| 
        T0 = AC0  ; |269| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_utldB2LinPower")
	.dwattr $C$DW$69, DW_AT_TI_call
        call #_utldB2LinPower ; |269| 
                                        ; call occurs [#_utldB2LinPower] ; |269| 
        dbl(*SP(#8)) = AC0 ; |269| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 270,column 5,is_stmt
;----------------------------------------------------------------------
; 270 | inst->bidSilence.threshold = frctAdjustQ(linpwr,0,piu_ENERGY_Q);       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#8)) ; |270| 
        AC0 = AC0 << #2 ; |270| 
        dbl(*AR3(#52)) = AC0 ; |270| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 271,column 5,is_stmt
;----------------------------------------------------------------------
; 271 | inst->bidSilence.initCnt   = (ctrl->hangover)<< piu_BIDIR_SILENCE_RESOL
;     | UTION_LOG2_FACTOR;                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |271| 
        XAR3 = dbl(*SP(#6))
        AR1 = AR1 <<< #1 ; |271| 
        *AR3(#55) = AR1 ; |271| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 272,column 5,is_stmt
;----------------------------------------------------------------------
; 272 | inst->bidSilence.cnt       = inst->bidSilence.initCnt;                 
;----------------------------------------------------------------------
        AR1 = *AR3(#55) ; |272| 
        *AR3(#54) = AR1 ; |272| 
        XAR2 = dbl(*SP(#6))
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 273,column 5,is_stmt
;----------------------------------------------------------------------
; 273 | inst->bidSilence.txSilDetEnergy = inst->energy_DClevel.txDClevel;      
;----------------------------------------------------------------------
        mar(AR2 + #48) ; |273| 
        mar(AR3 + #30) ; |273| 
        dbl(*AR2) = dbl(*AR3) ; |273| 
        XAR3 = dbl(*SP(#6))
        XAR2 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 274,column 5,is_stmt
;----------------------------------------------------------------------
; 274 | inst->bidSilence.rxSilDetEnergy = inst->energy_DClevel.rxDClevel;      
;----------------------------------------------------------------------
        mar(AR3 + #32) ; |274| 
        mar(AR2 + #50) ; |274| 
        dbl(*AR2) = dbl(*AR3) ; |274| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 275,column 5,is_stmt
;----------------------------------------------------------------------
; 275 | lin_thres                       = inst->bidSilence.threshold*8;        
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(#52)) ; |275| 
        AC0 = AC0 << #3 ; |275| 
        dbl(*SP(#4)) = AC0 ; |275| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 276,column 5,is_stmt
;----------------------------------------------------------------------
; 276 | if (inst->energy_DClevel.txDClevel > lin_thres)                        
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#4)) ; |276| 
        AC1 = dbl(*AR3(#30)) ; |276| 
        TC1 = (AC1 <= AC0) ; |276| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 277,column 7,is_stmt
;----------------------------------------------------------------------
; 277 | inst->bidSilence.txSilDetEnergy = lin_thres;                           
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#4)) ; |277| 
        if (!TC1) execute (D_Unit)
           dbl(*AR3(#48)) = AC0 ; |277| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 278,column 5,is_stmt
;----------------------------------------------------------------------
; 278 | if (inst->energy_DClevel.rxDClevel > lin_thres)                        
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#4)) ; |278| 
        AC1 = dbl(*AR3(#32)) ; |278| 
        TC1 = (AC1 <= AC0) ; |278| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 279,column 7,is_stmt
;----------------------------------------------------------------------
; 279 | inst->bidSilence.rxSilDetEnergy = lin_thres;                           
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#4)) ; |279| 
        if (!TC1) execute (D_Unit)
           dbl(*AR3(#50)) = AC0 ; |279| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 282,column 5,is_stmt
;----------------------------------------------------------------------
; 282 | inst->mode_bitfield |= piu_CTRL_BIT_BID_SILENCE_DET;                   
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0020 ; |282| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 283,column 3,is_stmt
;----------------------------------------------------------------------
; 284 | else                                                                   
;----------------------------------------------------------------------
        goto $C$L9 ; |283| 
                                        ; branch occurs ; |283| 
$C$L8:    
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 285,column 5,is_stmt
;----------------------------------------------------------------------
; 285 | inst->mode_bitfield &= (~piu_CTRL_BIT_BID_SILENCE_DET);                
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xffdf ; |285| 
$C$L9:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$61, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_piuPatternDetect

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("piuPatternDetect")
	.dwattr $C$DW$71, DW_AT_low_pc(_piuPatternDetect)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_piuPatternDetect")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 303,column 1,is_stmt,address _piuPatternDetect

	.dwfde $C$DW$CIE, _piuPatternDetect
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg17]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pattern_detect")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 302 | void piuPatternDetect (void *piuInst, pcmPatternDet_t *pattern_detect) 
; 304 | piuInst_t             *inst       = (piuInst_t *) piuInst;             
; 305 | piuPcmPatternDetect_t *pcmPattern = &inst->pcmPattern;                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuPatternDetect                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuPatternDetect:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("pattern_detect")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("pcmPattern")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3

        dbl(*SP(#6)) = XAR3
||      mar(AR3 + #56) ; |305| 

        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 307,column 3,is_stmt
;----------------------------------------------------------------------
; 307 | if (pattern_detect->enable)                                            
;----------------------------------------------------------------------
        AR1 = *AR3 ; |307| 
        if (AR1 == #0) goto $C$L10 ; |307| 
                                        ; branchcc occurs ; |307| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 310,column 5,is_stmt
;----------------------------------------------------------------------
; 310 | pcmPattern->type    = pattern_detect->type;                            
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |310| 
        XAR3 = dbl(*SP(#6))
        *AR3 = AR1 ; |310| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 311,column 5,is_stmt
;----------------------------------------------------------------------
; 311 | pcmPattern->initCnt = pattern_detect->time;                            
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |311| 
        XAR3 = dbl(*SP(#6))
        *AR3(short(#4)) = AR1 ; |311| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 312,column 5,is_stmt
;----------------------------------------------------------------------
; 312 | pcmPattern->cnt     = (pcmPattern->initCnt * 8); /* [ms] to [samples] *
;     | /                                                                      
;----------------------------------------------------------------------
        AC0 = *AR3(short(#4)) << #3 ; |312| 

        AC0 = @AC0_L ; |312| 
||      mmap()

        dbl(*AR3(short(#2))) = AC0 ; |312| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 313,column 5,is_stmt
;----------------------------------------------------------------------
; 313 | pcmPattern->custom  = pattern_detect->custom;                          
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |313| 
        XAR3 = dbl(*SP(#6))
        *AR3(short(#1)) = AR1 ; |313| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 315,column 5,is_stmt
;----------------------------------------------------------------------
; 315 | inst->mode_bitfield |= piu_CTRL_BIT_PATTERN_DETECT;                    
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0040 ; |315| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 316,column 3,is_stmt
;----------------------------------------------------------------------
; 317 | else                                                                   
;----------------------------------------------------------------------
        goto $C$L11 ; |316| 
                                        ; branch occurs ; |316| 
$C$L10:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 318,column 5,is_stmt
;----------------------------------------------------------------------
; 318 | inst->mode_bitfield &= (~piu_CTRL_BIT_PATTERN_DETECT);                 
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xffbf ; |318| 
$C$L11:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$71, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x13f)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_piuPatternGeneration

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("piuPatternGeneration")
	.dwattr $C$DW$79, DW_AT_low_pc(_piuPatternGeneration)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_piuPatternGeneration")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x14b)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 332,column 1,is_stmt,address _piuPatternGeneration

	.dwfde $C$DW$CIE, _piuPatternGeneration
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg17]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctrl")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 331 | void piuPatternGeneration(void *piuInst, pcmPatternGen_t *ctrl)        
; 333 | piuInst_t *inst   = (piuInst_t *) piuInst;                             
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuPatternGeneration                                         *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,*
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuPatternGeneration:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("ctrl")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("pattern")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_pattern")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 334,column 13,is_stmt
;----------------------------------------------------------------------
; 334 | tuint     pattern = ctrl->pattern;                                     
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |334| 
        *SP(#6) = AR1 ; |334| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 336,column 3,is_stmt
;----------------------------------------------------------------------
; 336 | if(ctrl->enable)                                                       
;----------------------------------------------------------------------
        AR1 = *AR3 ; |336| 
        if (AR1 == #0) goto $C$L12 ; |336| 
                                        ; branchcc occurs ; |336| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 338,column 5,is_stmt
;----------------------------------------------------------------------
; 338 | inst->mode_bitfield  |= piu_CTRL_BIT_PATTERN_GENERATE;                 
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0080 ; |338| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 339,column 4,is_stmt
;----------------------------------------------------------------------
; 339 | inst->generatePattern = pattern;                                       
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |339| 
        *AR3(#34) = AR1 ; |339| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 340,column 3,is_stmt
;----------------------------------------------------------------------
; 341 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L13 ; |340| 
                                        ; branch occurs ; |340| 
$C$L12:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 342,column 5,is_stmt
;----------------------------------------------------------------------
; 342 | inst->mode_bitfield  &= (~piu_CTRL_BIT_PATTERN_GENERATE);              
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xff7f ; |342| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 343,column 4,is_stmt
;----------------------------------------------------------------------
; 343 | inst->generatePattern = 0;                                             
;----------------------------------------------------------------------
        *AR3(#34) = #0 ; |343| 
$C$L13:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$79, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text"
	.global	_piu_loopback_config

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_loopback_config")
	.dwattr $C$DW$87, DW_AT_low_pc(_piu_loopback_config)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_piu_loopback_config")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x167)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 360,column 1,is_stmt,address _piu_loopback_config

	.dwfde $C$DW$CIE, _piu_loopback_config
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg17]
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("selection")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_selection")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 359 | void piu_loopback_config (void *piuInst, tint selection)               
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_loopback_config                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_loopback_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("selection")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_selection")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 4]
;----------------------------------------------------------------------
; 361 | piuInst_t *inst = (piuInst_t *) piuInst;                               
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |360| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 363,column 3,is_stmt
;----------------------------------------------------------------------
; 363 | inst->mode_bitfield &= (~piu_CTRL_BIT_DO_PCM_LOOPBACK);                
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xfffd ; |363| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 364,column 3,is_stmt
;----------------------------------------------------------------------
; 364 | inst->mode_bitfield &= (~piu_CTRL_BIT_DO_LIN_LOOPBACK);                
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xfffb ; |364| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 365,column 3,is_stmt
;----------------------------------------------------------------------
; 365 | inst->mode_bitfield &= (~piu_CTRL_BIT_LOOPBACK_NOPASS); /* enable */   
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xffef ; |365| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 366,column 3,is_stmt
;----------------------------------------------------------------------
; 366 | if (selection & PCM_LOOPBACK_ON) { /* PCM loopback */                  
;----------------------------------------------------------------------
        TC1 = bit(*SP(#2),#0) ; |366| 
        if (!TC1) goto $C$L14 ; |366| 
                                        ; branchcc occurs ; |366| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 367,column 5,is_stmt
;----------------------------------------------------------------------
; 367 | inst->mode_bitfield |= piu_CTRL_BIT_DO_PCM_LOOPBACK;                   
; 368 | inst->receive_in_buf.in_ptr  = inst->receive_in_buf.start_ptr;         
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0002 ; |367| 
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#40))
        dbl(*AR2(#36)) = XAR3
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 369,column 5,is_stmt
;----------------------------------------------------------------------
; 369 | inst->receive_in_buf.out_ptr = inst->receive_in_buf.start_ptr          
; 370 |                                 + inst->segment_size;                /*
;     |  Why is this so ? */                                                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |369| 
        XAR3 = dbl(*AR3(#40))
        XAR2 = dbl(*SP(#4))
        mar(AR3 + AR1) ; |369| 
        dbl(*AR2(#38)) = XAR3
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 371,column 5,is_stmt
;----------------------------------------------------------------------
; 371 | inst->receive_in_buf.segment_count = -1;                               
;----------------------------------------------------------------------
        *AR3(#46) = #-1 ; |371| 
$C$L14:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 373,column 3,is_stmt
;----------------------------------------------------------------------
; 373 | if (selection & LIN_LOOPBACK_ON) { /* linear loopback */               
;----------------------------------------------------------------------
        TC1 = bit(*SP(#2),#1) ; |373| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 374,column 5,is_stmt
;----------------------------------------------------------------------
; 374 | inst->mode_bitfield |= piu_CTRL_BIT_DO_LIN_LOOPBACK;                   
;----------------------------------------------------------------------
        if (TC1) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) | #0x0004 ; |374| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 376,column 3,is_stmt
;----------------------------------------------------------------------
; 376 | if (selection & DATA_FLOW_DISABLE) { /* linear loopback */             
;----------------------------------------------------------------------
        TC1 = bit(*SP(#2),#4) ; |376| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 377,column 5,is_stmt
;----------------------------------------------------------------------
; 377 | inst->mode_bitfield |= piu_CTRL_BIT_LOOPBACK_NOPASS;                   
;----------------------------------------------------------------------
        if (TC1) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) | #0x0010 ; |377| 
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$87, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.global	_piuDcOffsetRemoval

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("piuDcOffsetRemoval")
	.dwattr $C$DW$94, DW_AT_low_pc(_piuDcOffsetRemoval)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_piuDcOffsetRemoval")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x188)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 393,column 1,is_stmt,address _piuDcOffsetRemoval

	.dwfde $C$DW$CIE, _piuDcOffsetRemoval
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg17]
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mode")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 392 | void piuDcOffsetRemoval(void *piuInst, tint mode)                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuDcOffsetRemoval                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuDcOffsetRemoval:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("mode")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 4]
;----------------------------------------------------------------------
; 394 | piuInst_t *inst   = (piuInst_t *) piuInst;                             
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |393| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 396,column 3,is_stmt
;----------------------------------------------------------------------
; 396 | if(mode == piu_DC_OFFSET_DISABLE)                                      
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |396| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 398,column 5,is_stmt
;----------------------------------------------------------------------
; 398 | inst->mode_bitfield  &= (~piu_CTRL_BIT_REMOVE_DC_COMP);                
;----------------------------------------------------------------------
        if (AR1 == #0) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) & #0xfff7 ; |398| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 399,column 3,is_stmt
;----------------------------------------------------------------------
; 400 | else                                                                   
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L15 ; |399| 
                                        ; branchcc occurs ; |399| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 402,column 5,is_stmt
;----------------------------------------------------------------------
; 402 | inst->mode_bitfield  |= piu_CTRL_BIT_REMOVE_DC_COMP;                   
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0008 ; |402| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 403,column 5,is_stmt
;----------------------------------------------------------------------
; 403 | if (mode == piu_DC_OFFSET_MODE1)                                       
;----------------------------------------------------------------------
        TC1 = (*SP(#2) == #1) ; |403| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 405,column 8,is_stmt
;----------------------------------------------------------------------
; 405 | inst->mode_bitfield |= piu_CTRL_BIT_DC_FILTR_SELECT_MODE1;             
; 407 | else                                                                   
;----------------------------------------------------------------------
        if (TC1) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) | #0x1000 ; |405| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 409,column 9,is_stmt
;----------------------------------------------------------------------
; 409 | inst->mode_bitfield &= (~piu_CTRL_BIT_DC_FILTR_SELECT_MODE1);          
;----------------------------------------------------------------------
        if (!TC1) execute (AD_Unit) ||
           *AR3(short(#2)) = *AR3(short(#2)) & #0xefff ; |409| 
$C$L15:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$94, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x19c)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text"
	.global	_piuControl

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("piuControl")
	.dwattr $C$DW$101, DW_AT_low_pc(_piuControl)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_piuControl")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x1ab)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 428,column 1,is_stmt,address _piuControl

	.dwfde $C$DW$CIE, _piuControl
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piuInst")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg17]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ctl")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 427 | tint piuControl (void *piuInst, piuControl_t *ctl)                     
; 429 | piuInst_t  *inst = (piuInst_t *) piuInst;                              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piuControl                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piuControl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("piuInst")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("ctl")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("inst")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_inst")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("ret_val")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_ret_val")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 7]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#4)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 430,column 15,is_stmt
;----------------------------------------------------------------------
; 430 | tint        ret_val = piu_NOERR;                                       
;----------------------------------------------------------------------
        *SP(#6) = #0 ; |430| 
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 431,column 15,is_stmt
;----------------------------------------------------------------------
; 431 | tint        code = ctl->ctl_code;                                      
;----------------------------------------------------------------------
        AR1 = *AR3 ; |431| 
        *SP(#7) = AR1 ; |431| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 434,column 3,is_stmt
;----------------------------------------------------------------------
; 434 | if (inst->state != piu_OPEN)                                           
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#1)) == #1) ; |434| 
        if (TC1) goto $C$L27 ; |434| 
                                        ; branchcc occurs ; |434| 
        T0 = #1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 435,column 5,is_stmt
;----------------------------------------------------------------------
; 435 | return (piu_ERROR);                                                    
; 437 | switch (code) {                                                        
; 438 | case piu_SET_LOOPBACK:                                                 
;----------------------------------------------------------------------
        goto $C$L29 ; |435| 
                                        ; branch occurs ; |435| 
$C$L16:    
        XAR3 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 439,column 5,is_stmt
;----------------------------------------------------------------------
; 439 | piu_loopback_config (piuInst, ctl->u.loopback_select);                 
;----------------------------------------------------------------------
        T0 = *AR3(short(#2)) ; |439| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_piu_loopback_config")
	.dwattr $C$DW$109, DW_AT_TI_call
        call #_piu_loopback_config ; |439| 
                                        ; call occurs [#_piu_loopback_config] ; |439| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 440,column 10,is_stmt
;----------------------------------------------------------------------
; 440 | break;                                                                 
; 441 | case piu_SET_FRAME_SIZE:                                               
; 442 | PIU_BEGIN_CRITICAL_SECTION();                                          
;----------------------------------------------------------------------
        goto $C$L28 ; |440| 
                                        ; branch occurs ; |440| 
$C$L17:    
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 443,column 7,is_stmt
;----------------------------------------------------------------------
; 443 | inst->segment_size = ctl->u.set_frame.frame_size;                      
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |443| 
        XAR3 = dbl(*SP(#4))
        *AR3(short(#7)) = AR1 ; |443| 
        XAR0 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 444,column 7,is_stmt
;----------------------------------------------------------------------
; 444 | piu_reset_receive_in_buf(inst);                                        
; 445 | inst->send_out_buf_ptr          = inst->send_out_buf;                  
; 446 | inst->receive_out_buf_ptr       = inst->receive_out_buf;               
; 447 | ctl->u.set_frame.send_out_buf   = (tuint *)inst->send_out_buf;         
; 448 | ctl->u.set_frame.receive_in_buf = (tuint *)inst->receive_in_buf.start_p
;     | tr;                                                                    
; 449 | PIU_END_CRITICAL_SECTION();                                            
;----------------------------------------------------------------------
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_piu_reset_receive_in_buf")
	.dwattr $C$DW$110, DW_AT_TI_call
        call #_piu_reset_receive_in_buf ; |444| 
                                        ; call occurs [#_piu_reset_receive_in_buf] ; |444| 
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#16))
        dbl(*AR2(#18)) = XAR3
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(#12))
        dbl(*AR2(#14)) = XAR3
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*AR3(#16))
        XAR3 = dbl(*SP(#2))
        dbl(*AR3(short(#4))) = XAR2
        XAR3 = dbl(*SP(#4))
        XAR2 = dbl(*AR3(#40))
        XAR3 = dbl(*SP(#2))
        dbl(*AR3(short(#6))) = XAR2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 450,column 10,is_stmt
;----------------------------------------------------------------------
; 450 | break;                                                                 
; 451 | case piu_ENABLE_UNDERRUN_REPORT:                                       
;----------------------------------------------------------------------
        goto $C$L28 ; |450| 
                                        ; branch occurs ; |450| 
$C$L18:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 452,column 5,is_stmt
;----------------------------------------------------------------------
; 452 | inst->mode_bitfield |= piu_CTRL_BIT_UNDERRUN_REPORT;                   
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) | #0x0800 ; |452| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 453,column 10,is_stmt
;----------------------------------------------------------------------
; 453 | break;                                                                 
; 454 | case piu_DISABLE_UNDERRUN_REPORT:                                      
;----------------------------------------------------------------------
        goto $C$L28 ; |453| 
                                        ; branch occurs ; |453| 
$C$L19:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 455,column 5,is_stmt
;----------------------------------------------------------------------
; 455 | inst->mode_bitfield &= (~piu_CTRL_BIT_UNDERRUN_REPORT);                
;----------------------------------------------------------------------
        *AR3(short(#2)) = *AR3(short(#2)) & #0xf7ff ; |455| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 456,column 10,is_stmt
;----------------------------------------------------------------------
; 456 | break;                                                                 
; 457 | case piu_GET_LEVELS:                                                   
;----------------------------------------------------------------------
        goto $C$L28 ; |456| 
                                        ; branch occurs ; |456| 
$C$L20:    
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 458,column 5,is_stmt
;----------------------------------------------------------------------
; 458 | piu_get_stats (piuInst, (piuStats_t *)&ctl->u.stats);                  
;----------------------------------------------------------------------
        mar(AR1 + #2) ; |458| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_piu_get_stats")
	.dwattr $C$DW$111, DW_AT_TI_call
        call #_piu_get_stats ; |458| 
                                        ; call occurs [#_piu_get_stats] ; |458| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 459,column 10,is_stmt
;----------------------------------------------------------------------
; 459 | break;                                                                 
; 460 | case piu_PATTERN_GENERATION:                                           
;----------------------------------------------------------------------
        goto $C$L28 ; |459| 
                                        ; branch occurs ; |459| 
$C$L21:    
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 461,column 5,is_stmt
;----------------------------------------------------------------------
; 461 | piuPatternGeneration(piuInst, (pcmPatternGen_t *)&ctl->u.pattern_genera
;     | te);                                                                   
;----------------------------------------------------------------------
        mar(AR1 + #2) ; |461| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_piuPatternGeneration")
	.dwattr $C$DW$112, DW_AT_TI_call
        call #_piuPatternGeneration ; |461| 
                                        ; call occurs [#_piuPatternGeneration] ; |461| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 462,column 10,is_stmt
;----------------------------------------------------------------------
; 462 | break;                                                                 
; 463 | case piu_PATTERN_DETECTION:                                            
;----------------------------------------------------------------------
        goto $C$L28 ; |462| 
                                        ; branch occurs ; |462| 
$C$L22:    
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 464,column 5,is_stmt
;----------------------------------------------------------------------
; 464 | piuPatternDetect (piuInst, (pcmPatternDet_t *)&ctl->u.pattern_detect); 
;----------------------------------------------------------------------
        mar(AR1 + #2) ; |464| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_piuPatternDetect")
	.dwattr $C$DW$113, DW_AT_TI_call
        call #_piuPatternDetect ; |464| 
                                        ; call occurs [#_piuPatternDetect] ; |464| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 465,column 10,is_stmt
;----------------------------------------------------------------------
; 465 | break;                                                                 
; 466 | case piu_BID_SILENCE_DETECTION:                                        
;----------------------------------------------------------------------
        goto $C$L28 ; |465| 
                                        ; branch occurs ; |465| 
$C$L23:    
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 467,column 5,is_stmt
;----------------------------------------------------------------------
; 467 | piuBidSilenceDetect (piuInst, (bidSilenceDet_t *)&ctl->u.bid_silence_de
;     | tect);                                                                 
;----------------------------------------------------------------------
        mar(AR1 + #2) ; |467| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_piuBidSilenceDetect")
	.dwattr $C$DW$114, DW_AT_TI_call
        call #_piuBidSilenceDetect ; |467| 
                                        ; call occurs [#_piuBidSilenceDetect] ; |467| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 468,column 10,is_stmt
;----------------------------------------------------------------------
; 468 | break;                                                                 
; 469 | case piu_SET_COMPANDING:                                               
;----------------------------------------------------------------------
        goto $C$L28 ; |468| 
                                        ; branch occurs ; |468| 
$C$L24:    
        XAR1 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 470,column 5,is_stmt
;----------------------------------------------------------------------
; 470 | piuSetCompanding (piuInst, &ctl->u.companding);                        
;----------------------------------------------------------------------
        mar(AR1 + #2) ; |470| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_piuSetCompanding")
	.dwattr $C$DW$115, DW_AT_TI_call
        call #_piuSetCompanding ; |470| 
                                        ; call occurs [#_piuSetCompanding] ; |470| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 471,column 10,is_stmt
;----------------------------------------------------------------------
; 471 | break;                                                                 
; 472 | case  piu_DC_OFFSET_REMOVAL:                                           
;----------------------------------------------------------------------
        goto $C$L28 ; |471| 
                                        ; branch occurs ; |471| 
$C$L25:    
        XAR3 = dbl(*SP(#2))
        XAR0 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 473,column 5,is_stmt
;----------------------------------------------------------------------
; 473 | piuDcOffsetRemoval (piuInst, ctl->u.dc_offset_removal_select);         
;----------------------------------------------------------------------
        T0 = *AR3(short(#2)) ; |473| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_piuDcOffsetRemoval")
	.dwattr $C$DW$116, DW_AT_TI_call
        call #_piuDcOffsetRemoval ; |473| 
                                        ; call occurs [#_piuDcOffsetRemoval] ; |473| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 474,column 10,is_stmt
;----------------------------------------------------------------------
; 474 | break;                                                                 
; 476 | default:  /* invalid control code */                                   
;----------------------------------------------------------------------
        goto $C$L28 ; |474| 
                                        ; branch occurs ; |474| 
$C$L26:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 477,column 5,is_stmt
;----------------------------------------------------------------------
; 477 | ret_val = piu_ERROR;                                                   
;----------------------------------------------------------------------
        *SP(#6) = #1 ; |477| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 478,column 10,is_stmt
;----------------------------------------------------------------------
; 478 | break;                                                                 
;----------------------------------------------------------------------
        goto $C$L28 ; |478| 
                                        ; branch occurs ; |478| 
$C$L27:    
        AR2 = #10
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 437,column 3,is_stmt
        TC1 = uns(AR1 <= AR2) ; |437| 
        AC0 = AR1
        if (!TC1) goto $C$L26 ; |437| 
                                        ; branchcc occurs ; |437| 
        AC0 = AC0 << #1 ; |437| 

        AC1 = @AC0_L ; |437| 
||      mmap()

        AC0 = #($C$SW1 >> 16) << #16 ; |437| 
        AC0 = AC0 | #($C$SW1 & 0xffff) ; |437| 
        AC0 = AC0 + AC1 ; |437| 
        XAR3 = AC0
        AC0 = dbl(*AR3) ; |437| 
        goto AC0  ; |437| 
                                        ; branch occurs ; |437| 
	.sect	".switch:_piuControl"
	.clink
$C$SW1:	.long	$C$L16	; 0
	.long	$C$L17	; 1
	.long	$C$L26	; 0
	.long	$C$L20	; 3
	.long	$C$L21	; 4
	.long	$C$L22	; 5
	.long	$C$L23	; 6
	.long	$C$L18	; 7
	.long	$C$L19	; 8
	.long	$C$L24	; 9
	.long	$C$L25	; 10
	.sect	".text"
$C$L28:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c",line 480,column 3,is_stmt
;----------------------------------------------------------------------
; 480 | return (ret_val);                                                      
;----------------------------------------------------------------------
        T0 = *SP(#6) ; |480| 
$C$L29:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$101, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piu.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x1e1)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_utldB2LinPower
	.global	_utlLsMemSet
	.global	_piu_get_stats

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x05)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$118, DW_AT_name("send_out")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_send_out")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$119, DW_AT_name("send_out_mean")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_send_out_mean")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$120, DW_AT_name("receive_out")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_receive_out")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_name("receive_out_mean")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_receive_out_mean")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$122, DW_AT_name("underrun")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_underrun")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("piuStats_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x06)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_name("mclass")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$124, DW_AT_name("log2align")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$125, DW_AT_name("size")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$126, DW_AT_name("volat")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$127, DW_AT_name("base")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x17)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x08)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$128, DW_AT_name("txEnergy")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_txEnergy")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$129, DW_AT_name("rxEnergy")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_rxEnergy")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$130, DW_AT_name("txDClevel")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_txDClevel")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$131, DW_AT_name("rxDClevel")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_rxDClevel")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("piuEnergyDCLevel_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0c)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$132, DW_AT_name("in_ptr")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_in_ptr")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$133, DW_AT_name("out_ptr")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_out_ptr")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$134, DW_AT_name("start_ptr")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_start_ptr")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$135, DW_AT_name("end_ptr")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_end_ptr")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$136, DW_AT_name("top_ptr")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_top_ptr")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$137, DW_AT_name("segment_count")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_segment_count")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("receive_in_buf_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x08)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$138, DW_AT_name("txSilDetEnergy")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_txSilDetEnergy")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$139, DW_AT_name("rxSilDetEnergy")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_rxSilDetEnergy")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$140, DW_AT_name("threshold")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$141, DW_AT_name("cnt")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$142, DW_AT_name("initCnt")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceCtrl_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x06)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$143, DW_AT_name("type")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$144, DW_AT_name("custom")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$145, DW_AT_name("cnt")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$146, DW_AT_name("initCnt")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_initCnt")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("piuPcmPatternDetect_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x17)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x04)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$147, DW_AT_name("law")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_law")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$148, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("piuCompandingCfg_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x10)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$149, DW_AT_name("transp_mode")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_transp_mode")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$150, DW_AT_name("segment_size")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$151, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$152, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$153, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$154, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$155, DW_AT_name("rx_delay")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$156, DW_AT_name("use_recv_out_buf")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_use_recv_out_buf")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$157, DW_AT_name("companding")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("piuConfig_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x03)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$158, DW_AT_name("enable")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$159, DW_AT_name("threshold")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$160, DW_AT_name("hangover")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_hangover")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceDet_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x17)

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x04)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$161, DW_AT_name("enable")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$162, DW_AT_name("type")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$163, DW_AT_name("time")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_time")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$164, DW_AT_name("custom")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$47

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternDet_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$165, DW_AT_name("enable")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$166, DW_AT_name("pattern")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_pattern")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternGen_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x06)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$167, DW_AT_name("frame_size")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$168, DW_AT_name("send_out_buf")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$169, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("setFrame_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x08)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$170, DW_AT_name("ctl_code")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$171, DW_AT_name("u")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("piuControl_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x0c)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$172, DW_AT_name("max_pcm_val")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_max_pcm_val")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$173, DW_AT_name("debugInfo")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_debugInfo")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$174, DW_AT_name("reportOutFcn")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_reportOutFcn")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$175, DW_AT_name("sendOutProcFcn")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_sendOutProcFcn")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$176, DW_AT_name("sendOutIsrFcn")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_sendOutIsrFcn")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$177, DW_AT_name("pcmSampleTrace")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_pcmSampleTrace")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$61

$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("piuContext_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x06)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$178, DW_AT_name("loopback_select")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_loopback_select")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$179, DW_AT_name("frame_size")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$180, DW_AT_name("set_frame")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_set_frame")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$181, DW_AT_name("stats")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$182, DW_AT_name("bid_silence_detect")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_bid_silence_detect")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$183, DW_AT_name("pattern_detect")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$184, DW_AT_name("pattern_generate")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_pattern_generate")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$185, DW_AT_name("companding")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$186, DW_AT_name("dc_offset_removal_select")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_dc_offset_removal_select")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)

$C$DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$187	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$3)
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$24)
$C$DW$189	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$24)
$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$24)
$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$T$52

$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("dbgInfo_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$3)
$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$55

$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)

$C$DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$3)
$C$DW$195	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$3)
$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$3)
$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

$C$DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$21)
$C$DW$199	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$21)
$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$3)
$C$DW$201	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$59

$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x17)
$C$DW$202	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$21)
$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$202)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
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

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("piuInst_s")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x40)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$203, DW_AT_name("ID")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$204, DW_AT_name("state")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$205, DW_AT_name("mode_bitfield")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_mode_bitfield")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$206, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$207, DW_AT_name("pcm_format")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$208, DW_AT_name("segment_size")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_segment_size")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$209, DW_AT_name("rx_delay")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_rx_delay")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$210, DW_AT_name("rx_underflow_cnt")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_rx_underflow_cnt")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$211, DW_AT_name("rx_overflow_cnt")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_rx_overflow_cnt")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$212, DW_AT_name("receive_out_buf")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_receive_out_buf")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$213, DW_AT_name("receive_out_buf_ptr")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_receive_out_buf_ptr")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$214, DW_AT_name("send_out_buf")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$215, DW_AT_name("send_out_buf_ptr")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_send_out_buf_ptr")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$216, DW_AT_name("reportOutTargetInst")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_reportOutTargetInst")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$217, DW_AT_name("sendOutProcTargetInst")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_sendOutProcTargetInst")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$218, DW_AT_name("sendOutIsrTargetInst")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_sendOutIsrTargetInst")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$219, DW_AT_name("energy_DClevel")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_energy_DClevel")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$220, DW_AT_name("generatePattern")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_generatePattern")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$221, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$222, DW_AT_name("bidSilence")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_bidSilence")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$223, DW_AT_name("pcmPattern")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_pcmPattern")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$224, DW_AT_name("silence_pattern")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_silence_pattern")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("piuInst_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x17)
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

$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg0]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg1]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg2]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg3]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg4]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg5]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg6]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg7]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg8]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg9]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg10]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg11]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg12]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg13]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg14]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg15]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg16]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg17]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg18]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg19]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg20]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg21]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg22]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg23]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg24]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg25]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg26]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg27]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg28]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg29]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg30]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg31]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x20]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x21]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x22]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x23]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x24]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x25]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x26]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x27]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x28]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x29]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x30]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x31]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x32]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x33]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x34]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x35]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x36]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x37]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x38]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x39]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x40]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x41]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x42]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x43]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x44]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x45]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x46]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x47]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x48]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x49]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x50]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x51]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x52]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x53]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x54]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x55]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x56]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x57]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x58]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x59]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

