;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:15 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0488412 
	.sect	".text"

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("frctDivLFbyP2")
	.dwattr $C$DW$1, DW_AT_low_pc(_frctDivLFbyP2)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_frctDivLFbyP2")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../../../../../../../ti/mas/fract/c55/fract.h")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x16)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 296,column 1,is_stmt,address _frctDivLFbyP2

	.dwfde $C$DW$CIE, _frctDivLFbyP2
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Qa")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_Qa")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p2")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_p2")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg13]
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Qres")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_Qres")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg16]
;----------------------------------------------------------------------
; 295 | static inline LFract frctDivLFbyP2 (LFract a, tint Qa, tint p2, tint Qr
;     | es)                                                                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: frctDivLFbyP2                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,AR1,SP,CARRY,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_frctDivLFbyP2:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("Qa")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_Qa")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("p2")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_p2")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("Qres")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_Qres")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 6]
;----------------------------------------------------------------------
; 297 | LFract y;                                                              
;----------------------------------------------------------------------
        *SP(#4) = AR0 ; |296| 
        *SP(#3) = T1 ; |296| 
        *SP(#2) = T0 ; |296| 
        dbl(*SP(#0)) = AC0 ; |296| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 300,column 3,is_stmt
;----------------------------------------------------------------------
; 300 | y = frctAdjustQ(a,Qa,Qres-p2);                                         
;----------------------------------------------------------------------
        AR1 = *SP(#3) ; |300| 
        AR1 = *SP(#4) - AR1 ; |300| 
        AR1 = AR1 - *SP(#2) ; |300| 
        if (AR1 <= #0) goto $C$L1 ; |300| 
                                        ; branchcc occurs ; |300| 
        AR1 = *SP(#3) ; |300| 
        AR1 = *SP(#4) - AR1 ; |300| 
        T1 = AR1 - *SP(#2) ; |300| 
        goto $C$L2 ; |300| 
                                        ; branch occurs ; |300| 
$C$L1:    
        AR1 = *SP(#2) ; |300| 
        AR1 = *SP(#4) - AR1 ; |300| 
        T1 = AR1 - *SP(#3) ; |300| 
$C$L2:    
        AC0 = dbl(*SP(#0)) ; |300| 
        AC0 = AC0 << T1 ; |300| 
        dbl(*SP(#6)) = AC0 ; |300| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 301,column 3,is_stmt
;----------------------------------------------------------------------
; 301 | return(y);                                                             
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |301| 
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("../../../../../../../ti/mas/fract/c55/fract.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("frctMulLFbyLF")
	.dwattr $C$DW$12, DW_AT_low_pc(_frctMulLFbyLF)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_frctMulLFbyLF")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../../../../../../../ti/mas/fract/c55/fract.h")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x1bb)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x16)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 445,column 1,is_stmt,address _frctMulLFbyLF

	.dwfde $C$DW$CIE, _frctMulLFbyLF
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Qa")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_Qa")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_b")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg3]
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Qb")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_Qb")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg13]
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Qres")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Qres")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg16]
;----------------------------------------------------------------------
; 443 | static inline LFract frctMulLFbyLF (LFract a, tint Qa,                 
; 444 | LFract b, tint Qb, tint Qres)                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: frctMulLFbyLF                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,AR1,SP,CARRY,M40,SATA,SATD,*
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_frctMulLFbyLF:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-15
	.dwcfi	cfa_offset, 16
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("Qa")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Qa")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_b")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("Qb")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_Qb")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("Qres")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_Qres")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("Qr")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_Qr")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 12]
;----------------------------------------------------------------------
; 446 | tint Qr;                                                               
; 447 | LFract r, y;                                                           
;----------------------------------------------------------------------
        *SP(#7) = AR0 ; |445| 
        *SP(#6) = T1 ; |445| 
        dbl(*SP(#4)) = AC1 ; |445| 
        *SP(#2) = T0 ; |445| 
        dbl(*SP(#0)) = AC0 ; |445| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 449,column 3,is_stmt
;----------------------------------------------------------------------
; 449 | r = a * b;                                                             
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#0)) ; |449| 
        AC1 = dbl(*SP(#4)) ; |449| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__mpyli")
	.dwattr $C$DW$26, DW_AT_TI_call
        call #__mpyli ; |449| 
                                        ; call occurs [#__mpyli] ; |449| 
        dbl(*SP(#10)) = AC0 ; |449| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 450,column 3,is_stmt
;----------------------------------------------------------------------
; 450 | Qr = Qa + Qb;                                                          
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |450| 
        AR1 = AR1 + *SP(#2) ; |450| 
        *SP(#8) = AR1 ; |450| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 451,column 3,is_stmt
;----------------------------------------------------------------------
; 451 | y = frctAdjustQ(r,Qr,Qres);                                            
;----------------------------------------------------------------------
        AR1 = *SP(#7) - AR1 ; |451| 
        AR1 = *SP(#8) ; |451| 
        T1 = *SP(#7) - AR1 ; |451| 
        AC0 = dbl(*SP(#10)) ; |451| 
        AC0 = AC0 << T1 ; |451| 
        dbl(*SP(#12)) = AC0 ; |451| 
	.dwpsn	file "../../../../../../../ti/mas/fract/c55/fract.h",line 452,column 3,is_stmt
;----------------------------------------------------------------------
; 452 | return(y);                                                             
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#12)) ; |452| 
        SP = SP + #15
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("../../../../../../../ti/mas/fract/c55/fract.h")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x1c5)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_piu_frame_energy

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_frame_energy")
	.dwattr $C$DW$28, DW_AT_low_pc(_piu_frame_energy)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_piu_frame_energy")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 107,column 1,is_stmt,address _piu_frame_energy

	.dwfde $C$DW$CIE, _piu_frame_energy
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frameLen")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg17]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("energy")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_energy")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 106 | void piu_frame_energy (tint frameLen, Fract *frame, LFract *energy)    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_frame_energy                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_frame_energy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-13
	.dwcfi	cfa_offset, 14
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("frameLen")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("energy")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_energy")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("e")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_e")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("dE")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_dE")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 12]
        dbl(*SP(#4)) = XAR1
        dbl(*SP(#2)) = XAR0
;----------------------------------------------------------------------
; 108 | LFract x, e, dE;                                                       
; 109 | int    i;                                                              
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |107| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 111,column 3,is_stmt
;----------------------------------------------------------------------
; 111 | *energy = frctAdjustQ(*energy,2,0);                                    
;----------------------------------------------------------------------
        AC0 = dbl(*AR3) ; |111| 
        AC0 = AC0 << #-2 ; |111| 
        dbl(*AR3) = AC0 ; |111| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 112,column 8,is_stmt
;----------------------------------------------------------------------
; 112 | for (i = 0; i < frameLen; i++)                                         
;----------------------------------------------------------------------
        *SP(#12) = #0 ; |112| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 112,column 15,is_stmt
        AR2 = *SP(#12) ; |112| 
        AR1 = *SP(#0) ; |112| 
        TC1 = (AR2 >= AR1) ; |112| 
        if (TC1) goto $C$L4 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$L3:    
$C$DW$L$_piu_frame_energy$2$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 114,column 5,is_stmt
;----------------------------------------------------------------------
; 114 | x = frctF2LF(frame[i], 0, 0);                                          
;----------------------------------------------------------------------
        AC0 = *AR3(T0) ; |114| 

        dbl(*SP(#6)) = AC0 ; |114| 
||      T1 = #0

        AC1 = dbl(*SP(#6)) ; |115| 
||      AR0 = #0

        AC0 = dbl(*SP(#6)) ; |115| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 115,column 5,is_stmt
;----------------------------------------------------------------------
; 115 | e = frctMulLFbyLF (x, 0, x, 0, 0);/* e */                              
;----------------------------------------------------------------------
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_frctMulLFbyLF")
	.dwattr $C$DW$39, DW_AT_TI_call
        call #_frctMulLFbyLF ; |115| 
                                        ; call occurs [#_frctMulLFbyLF] ; |115| 
        dbl(*SP(#8)) = AC0 ; |115| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 116,column 5,is_stmt
;----------------------------------------------------------------------
; 116 | dE = e - *energy;                 /* e - E(n-1) */                     
;----------------------------------------------------------------------
        AC0 = dbl(*AR3) ; |116| 
        AC0 = dbl(*SP(#8)) - AC0 ; |116| 

        dbl(*SP(#10)) = AC0 ; |116| 
||      T0 = #0

        AC0 = dbl(*SP(#10)) ; |117| 
||      T1 = #8

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 117,column 5,is_stmt
;----------------------------------------------------------------------
; 117 | dE = frctDivLFbyP2 (dE, 0, 8, 0); /* alpha * [e - E(n-1)] */           
;----------------------------------------------------------------------
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_frctDivLFbyP2")
	.dwattr $C$DW$40, DW_AT_TI_call
        call #_frctDivLFbyP2 ; |117| 
                                        ; call occurs [#_frctDivLFbyP2] ; |117| 
        dbl(*SP(#10)) = AC0 ; |117| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 118,column 5,is_stmt
;----------------------------------------------------------------------
; 118 | *energy += dE;                                                         
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#10)) ; |118| 
        AC0 = AC0 + dbl(*AR3) ; |118| 
        dbl(*AR3) = AC0 ; |118| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 112,column 29,is_stmt
        *SP(#12) = *SP(#12) + #1 ; |112| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 112,column 15,is_stmt
        AR2 = *SP(#12) ; |112| 
        AR1 = *SP(#0) ; |112| 
        TC1 = (AR2 < AR1) ; |112| 
        if (TC1) goto $C$L3 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$DW$L$_piu_frame_energy$2$E:
$C$L4:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 120,column 3,is_stmt
;----------------------------------------------------------------------
; 120 | *energy = frctAdjustQ(*energy,0,2);                                    
;----------------------------------------------------------------------
        AC0 = dbl(*AR3) ; |120| 
        AC0 = AC0 << #2 ; |120| 
        dbl(*AR3) = AC0 ; |120| 
        SP = SP + #13
	.dwcfi	cfa_offset, 1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piufutil.asm:$C$L3:1:1373047935")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x77)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$_piu_frame_energy$2$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$_piu_frame_energy$2$E)
	.dwendtag $C$DW$42

	.dwattr $C$DW$28, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_piu_frame_DClevel

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_frame_DClevel")
	.dwattr $C$DW$44, DW_AT_low_pc(_piu_frame_DClevel)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_piu_frame_DClevel")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 138,column 1,is_stmt,address _piu_frame_DClevel

	.dwfde $C$DW$CIE, _piu_frame_DClevel
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frameLen")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg17]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("DC_level")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_DC_level")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 137 | void piu_frame_DClevel (tint frameLen, Fract *frame, LFract *DC_level) 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_frame_DClevel                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_frame_DClevel:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("frameLen")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("DC_level")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_DC_level")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("dLevel")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_dLevel")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#4)) = XAR1
        dbl(*SP(#2)) = XAR0
;----------------------------------------------------------------------
; 139 | LFract dLevel;                                                         
; 140 | int    i;                                                              
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |138| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 142,column 8,is_stmt
;----------------------------------------------------------------------
; 142 | for (i = 0; i < frameLen; i++)                                         
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |142| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 142,column 15,is_stmt
        AR2 = *SP(#8) ; |142| 
        AR1 = *SP(#0) ; |142| 
        TC1 = (AR2 >= AR1) ; |142| 
        if (TC1) goto $C$L6 ; |142| 
                                        ; branchcc occurs ; |142| 
$C$L5:    
$C$DW$L$_piu_frame_DClevel$2$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 144,column 5,is_stmt
;----------------------------------------------------------------------
; 144 | dLevel = frame[i] - *DC_level;    /* dLevel = x - DC_level */          
;----------------------------------------------------------------------
        AC0 = *AR3(T0) ; |144| 
        XAR3 = dbl(*SP(#4))

        AC0 = AC0 - dbl(*AR3) ; |144| 
||      T1 = #13

        dbl(*SP(#6)) = AC0 ; |144| 
||      AR0 = #0

        AC0 = dbl(*SP(#6)) ; |145| 
||      T0 = #0

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 145,column 5,is_stmt
;----------------------------------------------------------------------
; 145 | dLevel = frctDivLFbyP2 (dLevel, 0, 13, 0); /* alpha(13)*(x-dc) */      
;----------------------------------------------------------------------
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_frctDivLFbyP2")
	.dwattr $C$DW$53, DW_AT_TI_call
        call #_frctDivLFbyP2 ; |145| 
                                        ; call occurs [#_frctDivLFbyP2] ; |145| 
        dbl(*SP(#6)) = AC0 ; |145| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 146,column 5,is_stmt
;----------------------------------------------------------------------
; 146 | *DC_level += dLevel;                       /* dc+alpha*(x-dc)  */      
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#6)) ; |146| 
        AC0 = AC0 + dbl(*AR3) ; |146| 
        dbl(*AR3) = AC0 ; |146| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 142,column 29,is_stmt
        *SP(#8) = *SP(#8) + #1 ; |142| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 142,column 15,is_stmt
        AR2 = *SP(#8) ; |142| 
        AR1 = *SP(#0) ; |142| 
        TC1 = (AR2 < AR1) ; |142| 
        if (TC1) goto $C$L5 ; |142| 
                                        ; branchcc occurs ; |142| 
$C$DW$L$_piu_frame_DClevel$2$E:
$C$L6:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$55	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$55, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piufutil.asm:$C$L5:1:1373047935")
	.dwattr $C$DW$55, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x93)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_piu_frame_DClevel$2$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_piu_frame_DClevel$2$E)
	.dwendtag $C$DW$55

	.dwattr $C$DW$44, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x94)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_piu_remove_dc_component

$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("piu_remove_dc_component")
	.dwattr $C$DW$57, DW_AT_low_pc(_piu_remove_dc_component)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_piu_remove_dc_component")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 155,column 1,is_stmt,address _piu_remove_dc_component

	.dwfde $C$DW$CIE, _piu_remove_dc_component
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frameLen")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("frame")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg17]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("DC_level")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_DC_level")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg19]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("alpha")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_alpha")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg13]
;----------------------------------------------------------------------
; 151 | void piu_remove_dc_component (tint frameLen, Fract *frame, LFract *DC_l
;     | evel, tint alpha)                                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: piu_remove_dc_component                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_piu_remove_dc_component:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("frameLen")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_frameLen")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("frame")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_frame")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("DC_level")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_DC_level")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("alpha")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_alpha")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("dLevel")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_dLevel")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 8]
;----------------------------------------------------------------------
; 156 | int   i;                                                               
; 157 | LFract dLevel;                                                         
;----------------------------------------------------------------------
        *SP(#6) = T1 ; |155| 
        dbl(*SP(#4)) = XAR1
        dbl(*SP(#2)) = XAR0
        *SP(#0) = T0 ; |155| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 159,column 8,is_stmt
;----------------------------------------------------------------------
; 159 | for (i = 0; i < frameLen; i++)                                         
;----------------------------------------------------------------------
        *SP(#7) = #0 ; |159| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 159,column 15,is_stmt
        AR2 = *SP(#7) ; |159| 
        AR1 = *SP(#0) ; |159| 
        TC1 = (AR2 >= AR1) ; |159| 
        if (TC1) goto $C$L8 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$L7:    
$C$DW$L$_piu_remove_dc_component$2$B:
        T0 = AR2
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 161,column 6,is_stmt
;----------------------------------------------------------------------
; 161 | dLevel = *DC_level - frame[i];                                         
;----------------------------------------------------------------------
        AC0 = *AR3(T0) ; |161| 
        XAR3 = dbl(*SP(#4))
        AC0 = dbl(*AR3) - AC0 ; |161| 
        dbl(*SP(#8)) = AC0 ; |161| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 162,column 6,is_stmt
;----------------------------------------------------------------------
; 162 | dLevel = dLevel<<alpha;                                                
;----------------------------------------------------------------------
        T1 = *SP(#6) ; |162| 
        AC0 = dbl(*SP(#8)) ; |162| 
        AC0 = AC0 << T1 ; |162| 
        dbl(*SP(#8)) = AC0 ; |162| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 163,column 6,is_stmt
;----------------------------------------------------------------------
; 163 | *DC_level -= dLevel;                                                   
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#8)) ; |163| 
        AC0 = dbl(*AR3) - AC0 ; |163| 
        dbl(*AR3) = AC0 ; |163| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 164,column 6,is_stmt
;----------------------------------------------------------------------
; 164 | frame[i] -= *DC_level;                                                 
;----------------------------------------------------------------------
        T0 = *SP(#7) ; |164| 
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#4))
        AC0 = *AR3(T0) ; |164| 
        AC0 = AC0 - dbl(*AR2) ; |164| 
        *AR3(T0) = AC0 ; |164| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 159,column 29,is_stmt
        *SP(#7) = *SP(#7) + #1 ; |159| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c",line 159,column 15,is_stmt
        AR1 = *SP(#0) ; |159| 
        AR2 = *SP(#7) ; |159| 
        TC1 = (AR2 < AR1) ; |159| 
        if (TC1) goto $C$L7 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$DW$L$_piu_remove_dc_component$2$E:
$C$L8:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\piufutil.asm:$C$L7:1:1373047935")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xa6)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_piu_remove_dc_component$2$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_piu_remove_dc_component$2$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$57, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/piufutil.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__mpyli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
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
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("LFract")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)
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

$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg1]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg2]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg3]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg4]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg5]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg6]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg7]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg8]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg9]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg10]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg11]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg13]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg14]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg15]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg16]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg17]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg18]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg19]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg20]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg21]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg22]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg23]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg24]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg25]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg26]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg27]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg28]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg29]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg30]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg31]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x20]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x21]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x22]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x23]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x24]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x25]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x26]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x27]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x28]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x29]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x30]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x31]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x32]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x33]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x34]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x35]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x36]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x37]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x38]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x39]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x40]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x41]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x42]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x43]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x44]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x45]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x46]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x47]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x48]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x49]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x50]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x51]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x52]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x53]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x54]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x55]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x56]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x57]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x58]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x59]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

