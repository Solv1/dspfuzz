;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:17 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("strcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_strcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$1

	.global	_siuContext
	.bss	_siuContext,14,0,2
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("siuContext")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_siuContext")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _siuContext]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$4, DW_AT_external
	.global	_siuInst
	.bss	_siuInst,28,0,2
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("siuInst")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_siuInst")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _siuInst]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$5, DW_AT_external
	.global	_siu_dbg_id
	.bss	_siu_dbg_id,1,0,0
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("siu_dbg_id")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_siu_dbg_id")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _siu_dbg_id]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$6, DW_AT_external
	.global	_siu_dbg_message
	.bss	_siu_dbg_message,256,0,0
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("siu_dbg_message")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_siu_dbg_message")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _siu_dbg_message]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$7, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0778813 
	.sect	".text"

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("siu_tuint_to_hex")
	.dwattr $C$DW$8, DW_AT_low_pc(_siu_tuint_to_hex)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_siu_tuint_to_hex")
	.dwattr $C$DW$8, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x66)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 103,column 1,is_stmt,address _siu_tuint_to_hex

	.dwfde $C$DW$CIE, _siu_tuint_to_hex
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 102 | static inline void siu_tuint_to_hex (char *dest, tuint val)            
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siu_tuint_to_hex                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siu_tuint_to_hex:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("dest")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 3]
;----------------------------------------------------------------------
; 104 | tint i;                                                                
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |103| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 106,column 3,is_stmt
;----------------------------------------------------------------------
; 106 | dest[4] = 0; /* Null terminate */                                      
;----------------------------------------------------------------------
        *AR3(short(#4)) = #0 ; |106| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 108,column 8,is_stmt
;----------------------------------------------------------------------
; 108 | for (i=3; i>=0; i--) {                                                 
;----------------------------------------------------------------------
        *SP(#3) = #3 ; |108| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 108,column 13,is_stmt
        AR1 = *SP(#3) ; |108| 
        if (AR1 < #0) goto $C$L2 ; |108| 
                                        ; branchcc occurs ; |108| 
$C$L1:    
$C$DW$L$_siu_tuint_to_hex$2$B:
        T0 = AR1
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 109,column 5,is_stmt
;----------------------------------------------------------------------
; 109 | dest[i] = (val & 0xF);                                                 
;----------------------------------------------------------------------
        AR1 = *SP(#2) ; |109| 
        AC0 = AR1 & #0x000f ; |109| 
        *AR3(T0) = AC0 ; |109| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 110,column 5,is_stmt
;----------------------------------------------------------------------
; 110 | if (dest[i] > 9)                                                       
;----------------------------------------------------------------------
        T0 = *SP(#3) ; |110| 
        XAR3 = dbl(*SP(#0))

        AR1 = *AR3(T0) ; |110| 
||      AR2 = #9

        TC1 = (AR1 <= AR2) ; |110| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 111,column 7,is_stmt
;----------------------------------------------------------------------
; 111 | dest[i] += 'A' - 10;                                                   
; 112 | else                                                                   
;----------------------------------------------------------------------
        if (!TC1) execute (AD_Unit) ||
           *AR3(T0) = *AR3(T0) + #55 ; |111| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 113,column 7,is_stmt
;----------------------------------------------------------------------
; 113 | dest[i] += '0';                                                        
;----------------------------------------------------------------------
        T0 = *SP(#3) ; |113| 
        XAR3 = dbl(*SP(#0))
        if (TC1) execute (AD_Unit) ||
           *AR3(T0) = *AR3(T0) + #48 ; |113| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 114,column 5,is_stmt
;----------------------------------------------------------------------
; 114 | val >>= 4;                                                             
;----------------------------------------------------------------------
        AC0 = uns(*SP(#2)) ; |114| 
        AC0 = AC0 << #-4 ; |114| 
        *SP(#2) = AC0 ; |114| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 108,column 19,is_stmt
        *SP(#3) = *SP(#3) - #1 ; |108| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 108,column 13,is_stmt
        AR1 = *SP(#3) ; |108| 
        if (AR1 >= #0) goto $C$L1 ; |108| 
                                        ; branchcc occurs ; |108| 
$C$DW$L$_siu_tuint_to_hex$2$E:
$C$L2:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$15	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$15, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siu.asm:$C$L1:1:1373047937")
	.dwattr $C$DW$15, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x73)
$C$DW$16	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$16, DW_AT_low_pc($C$DW$L$_siu_tuint_to_hex$2$B)
	.dwattr $C$DW$16, DW_AT_high_pc($C$DW$L$_siu_tuint_to_hex$2$E)
	.dwendtag $C$DW$15

	.dwattr $C$DW$8, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInternal")
	.dwattr $C$DW$17, DW_AT_low_pc(_siuDebugInternal)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_siuDebugInternal")
	.dwattr $C$DW$17, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 119,column 1,is_stmt,address _siuDebugInternal

	.dwfde $C$DW$CIE, _siuDebugInternal
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 118 | static inline void siuDebugInternal (tuint id, char *str)              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebugInternal                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebugInternal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("str")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_str")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#2)) = XAR0
;----------------------------------------------------------------------
; 120 | int i;                                                                 
; 121 | char *src, *dst;                                                       
;----------------------------------------------------------------------
        *SP(#0) = T0 ; |119| 
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#6)) = XAR3

        AR2 = #256 ; |126| 
||      AR1 = T0  ; |119| 

	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 124,column 3,is_stmt
;----------------------------------------------------------------------
; 124 | siu_dbg_id = id;                                                       
;----------------------------------------------------------------------
        *(#_siu_dbg_id) = AR1 ; |124| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 125,column 14,is_stmt
;----------------------------------------------------------------------
; 125 | src = str; dst = (char*)&siu_dbg_message[0];                           
;----------------------------------------------------------------------
        XAR3 = #_siu_dbg_message ; |125| 
        dbl(*SP(#8)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 126,column 8,is_stmt
;----------------------------------------------------------------------
; 126 | for (i = 0; i < SIU_DBGMSG_SIZE; i++)                                  
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 126,column 15,is_stmt
        AR1 = *SP(#4) ; |126| 
        TC1 = (AR1 >= AR2) ; |126| 
        if (TC1) goto $C$L4 ; |126| 
                                        ; branchcc occurs ; |126| 
$C$L3:    
$C$DW$L$_siuDebugInternal$2$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 127,column 5,is_stmt
;----------------------------------------------------------------------
; 127 | *dst++ = *src++;                                                       
;----------------------------------------------------------------------
        AR1 = *AR3+ ; |127| 
        dbl(*SP(#6)) = XAR3
        XAR2 = dbl(*SP(#8))
        XAR3 = mar(*AR2)
        mar(*AR3+)
        dbl(*SP(#8)) = XAR3
        *AR2 = AR1 ; |127| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 126,column 15,is_stmt
        AR2 = #256 ; |126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 126,column 36,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 126,column 15,is_stmt
        AR1 = *SP(#4) ; |126| 
        TC1 = (AR1 < AR2) ; |126| 
        if (TC1) goto $C$L3 ; |126| 
                                        ; branchcc occurs ; |126| 
$C$DW$L$_siuDebugInternal$2$E:
$C$L4:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siu.asm:$C$L3:1:1373047937")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x7f)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_siuDebugInternal$2$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_siuDebugInternal$2$E)
	.dwendtag $C$DW$26

	.dwattr $C$DW$17, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.global	_siuDebug

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebug")
	.dwattr $C$DW$28, DW_AT_low_pc(_siuDebug)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_siuDebug")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 131,column 1,is_stmt,address _siuDebug

	.dwfde $C$DW$CIE, _siuDebug
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 130 | void siuDebug (tuint id, char *s)                                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebug                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebug:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR0
        *SP(#0) = T0 ; |131| 
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 132,column 3,is_stmt
;----------------------------------------------------------------------
; 132 | siuDebugInternal (id, s);                                              
;----------------------------------------------------------------------
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_siuDebugInternal")
	.dwattr $C$DW$33, DW_AT_TI_call
        call #_siuDebugInternal ; |132| 
                                        ; call occurs [#_siuDebugInternal] ; |132| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x85)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_siuException

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("siuException")
	.dwattr $C$DW$35, DW_AT_low_pc(_siuException)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_siuException")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x87)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 136,column 1,is_stmt,address _siuException

	.dwfde $C$DW$CIE, _siuException
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 135 | void siuException (tuint id, char *s)                                  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuException                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuException:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_s")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR0
        *SP(#0) = T0 ; |136| 
        XAR0 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 137,column 3,is_stmt
;----------------------------------------------------------------------
; 137 | siuDebugInternal (id, s);                                              
;----------------------------------------------------------------------
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_siuDebugInternal")
	.dwattr $C$DW$40, DW_AT_TI_call
        call #_siuDebugInternal ; |137| 
                                        ; call occurs [#_siuDebugInternal] ; |137| 
$C$L5:    
$C$DW$L$_siuException$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 139,column 3,is_stmt
;----------------------------------------------------------------------
; 139 | loop;     /* loop forever */                                           
;----------------------------------------------------------------------
        goto $C$L5 ; |139| 
                                        ; branch occurs ; |139| 
$C$DW$L$_siuException$2$E:
	.dwcfi	cfa_offset, 1

$C$DW$41	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$41, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siu.asm:$C$L5:1:1373047937")
	.dwattr $C$DW$41, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x8b)
$C$DW$42	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$42, DW_AT_low_pc($C$DW$L$_siuException$2$B)
	.dwattr $C$DW$42, DW_AT_high_pc($C$DW$L$_siuException$2$E)
	.dwendtag $C$DW$41

	.dwattr $C$DW$35, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x8c)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_siuDebugInfo

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("siuDebugInfo")
	.dwattr $C$DW$43, DW_AT_low_pc(_siuDebugInfo)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_siuDebugInfo")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 143,column 1,is_stmt,address _siuDebugInfo

	.dwfde $C$DW$CIE, _siuDebugInfo
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("id")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg13]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg16]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg18]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 142 | void siuDebugInfo (tuint id, tuint type, tuint code, tuint len, tuint *
;     | data)                                                                  
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuDebugInfo                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 32 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (31 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuDebugInfo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-31
	.dwcfi	cfa_offset, 32
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("id")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_id")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("type")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("exc_string")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_exc_string")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 6]
        dbl(*SP(#4)) = XAR2
;----------------------------------------------------------------------
; 144 | char exc_string[25];                                                   
;----------------------------------------------------------------------
        *SP(#3) = AR1 ; |143| 
        *SP(#2) = AR0 ; |143| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 147 | strcpy (exc_string, "Exception 0x");                                   
;----------------------------------------------------------------------
        XAR1 = #$C$FSL1 ; |147| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 143,column 1,is_stmt
        *SP(#1) = T1 ; |143| 
        XAR0 = mar(*SP(#6))
        *SP(#0) = T0 ; |143| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 147,column 3,is_stmt
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_strcpy")
	.dwattr $C$DW$55, DW_AT_TI_call
        call #_strcpy ; |147| 
        nop       ;                     avoids Silicon Exception CPU_90
                                        ; call occurs [#_strcpy] ; |147| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 150,column 3,is_stmt
;----------------------------------------------------------------------
; 150 | siu_tuint_to_hex (exc_string+12, ((id & 0xFF00) << 2) | (code & 0x3FF))
;     | ;                                                                      
;----------------------------------------------------------------------
        AR1 = *SP(#0) ; |150| 
        AC1 = AR1 & #0xff00 ; |150| 
        AR1 = *SP(#2) ; |150| 
        AC0 = AR1 & #0x03ff ; |150| 
        AC0 = AC0 | (AC1 <<< #2) ; |150| 

        T0 = AC0  ; |150| 
||      XAR0 = mar(*SP(#18))

$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_siu_tuint_to_hex")
	.dwattr $C$DW$56, DW_AT_TI_call
        call #_siu_tuint_to_hex ; |150| 
                                        ; call occurs [#_siu_tuint_to_hex] ; |150| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 152,column 3,is_stmt
;----------------------------------------------------------------------
; 152 | switch (type)                                                          
; 154 |   case dbg_EXCEPTION_FATAL:                                            
;----------------------------------------------------------------------
        goto $C$L8 ; |152| 
                                        ; branch occurs ; |152| 
$C$L6:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 155,column 7,is_stmt
;----------------------------------------------------------------------
; 155 | siuException (id, exc_string);                                         
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |155| 
        XAR0 = mar(*SP(#6))
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_siuException")
	.dwattr $C$DW$57, DW_AT_TI_call
        call #_siuException ; |155| 
                                        ; call occurs [#_siuException] ; |155| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 156,column 12,is_stmt
;----------------------------------------------------------------------
; 156 | break;                                                                 
; 157 | case dbg_TRACE_INFO:                                                   
;----------------------------------------------------------------------
        goto $C$L9 ; |156| 
                                        ; branch occurs ; |156| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 159,column 7,is_stmt
;----------------------------------------------------------------------
; 159 | siuDebug (id, exc_string);                                             
;----------------------------------------------------------------------
        T0 = *SP(#0) ; |159| 
        XAR0 = mar(*SP(#6))
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_siuDebug")
	.dwattr $C$DW$58, DW_AT_TI_call
        call #_siuDebug ; |159| 
                                        ; call occurs [#_siuDebug] ; |159| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 160,column 12,is_stmt
;----------------------------------------------------------------------
; 160 | break;                                                                 
; 161 | default:                                                               
; 162 | break;  /* Ignore invalid message types */                             
;----------------------------------------------------------------------
        goto $C$L9 ; |160| 
                                        ; branch occurs ; |160| 
$C$L8:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 152,column 3,is_stmt
        AR1 = *SP(#1) ; |152| 
        if (AR1 == #0) goto $C$L7 ; |152| 
                                        ; branchcc occurs ; |152| 
        AR2 = #2
        TC1 = uns(AR1 == AR2) ; |152| 
        if (TC1) goto $C$L6 ; |152| 
                                        ; branchcc occurs ; |152| 
$C$L9:    
        SP = SP + #31
	.dwcfi	cfa_offset, 1
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$43, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.global	_siuInit

$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("siuInit")
	.dwattr $C$DW$60, DW_AT_low_pc(_siuInit)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_siuInit")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$60, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 174,column 1,is_stmt,address _siuInit

	.dwfde $C$DW$CIE, _siuInit
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cfg")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 173 | tint siuInit (siuConfig_t *cfg)                                        
; 175 | int i;                                                                 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: siuInit                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_siuInit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("cfg")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_cfg")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 178,column 3,is_stmt
;----------------------------------------------------------------------
; 178 | siuContext.ID           = cfg->ID;        /* has SIU MID and 0 for chnu
;     | m */                                                                   
;----------------------------------------------------------------------
        AR1 = *AR3 ; |178| 
        *(#_siuContext) = AR1 ; |178| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 179,column 3,is_stmt
;----------------------------------------------------------------------
; 179 | siuContext.exception    = cfg->exception;                              
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#2))) ; |179| 
        dbl(*(#(_siuContext+2))) = AC0 ; |179| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 180,column 3,is_stmt
;----------------------------------------------------------------------
; 180 | siuContext.debug        = cfg->debug;                                  
; 181 | siuContext.cheap        = cfg->core_heap;                              
;----------------------------------------------------------------------
        AC0 = dbl(*AR3(short(#4))) ; |180| 
        dbl(*(#(_siuContext+4))) = AC0 ; |180| 
        XAR3 = dbl(*AR3(#8))
        dbl(*(#(_siuContext+8))) = XAR3
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 182,column 3,is_stmt
;----------------------------------------------------------------------
; 182 | siuContext.cheap_used   = 0;                                           
; 183 | siuContext.vheap        = cfg->voice_heap;                             
; 184 | siuContext.vheap_used   = 0;                                           
;----------------------------------------------------------------------
        *(#(_siuContext+6)) = #0 ; |182| 
        XAR3 = dbl(*AR3(#10))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 189,column 8,is_stmt
;----------------------------------------------------------------------
; 189 | for (i = 0; i < SIU_MAX_CHANNELS; i++) {                               
;----------------------------------------------------------------------
        *SP(#2) = #0 ; |189| 
        dbl(*(#(_siuContext+12))) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 189,column 15,is_stmt
        AR1 = *SP(#2) ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 184,column 3,is_stmt
        *(#(_siuContext+10)) = #0 ; |184| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 189,column 15,is_stmt
        if (AR1 > #0) goto $C$L11 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$L10:    
$C$DW$L$_siuInit$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 190,column 5,is_stmt
;----------------------------------------------------------------------
; 190 | siuInst[i].ID                 = siuMakeID (SIU_MID_SIU, i+1);          
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |190| 
        T0 = AC0  ; |190| 
        AR1 = AR1 + #1 ; |190| 
        XAR3 = #_siuInst ; |190| 
        bit(AR1, @#8) = #1 ; |190| 
        *AR3(T0) = AR1 ; |190| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 191,column 5,is_stmt
;----------------------------------------------------------------------
; 191 | siuInst[i].exception          = siuContext.exception;                  
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |191| 
        T0 = AC0  ; |191| 
        AC1 = dbl(*(#(_siuContext+2))) ; |191| 
        XAR3 = #(_siuInst+2) ; |191| 
        dbl(*AR3(T0)) = AC1 ; |191| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 192,column 5,is_stmt
;----------------------------------------------------------------------
; 192 | siuInst[i].debug              = siuContext.debug;                      
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |192| 
        T0 = AC0  ; |192| 
        XAR3 = #(_siuInst+4) ; |192| 
        AC1 = dbl(*(#(_siuContext+4))) ; |192| 
        dbl(*AR3(T0)) = AC1 ; |192| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 193,column 5,is_stmt
;----------------------------------------------------------------------
; 193 | siuInst[i].cheap_used         = 0;                                     
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |193| 
        T0 = AC0  ; |193| 
        XAR3 = #(_siuInst+20) ; |193| 
        *AR3(T0) = #0 ; |193| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 194,column 5,is_stmt
;----------------------------------------------------------------------
; 194 | siuInst[i].vheap_used         = 0;                                     
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |194| 
        T0 = AC0  ; |194| 
        XAR3 = #(_siuInst+21) ; |194| 
        *AR3(T0) = #0 ; |194| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 195,column 5,is_stmt
;----------------------------------------------------------------------
; 195 | siuInst[i].companding_law     = cfg->companding_law;  /* default compan
;     | ding */                                                                
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |195| 
        T0 = AC0  ; |195| 
        XAR2 = #(_siuInst+22) ; |195| 
        AR1 = *AR3(short(#6)) ; |195| 
        *AR2(T0) = AR1 ; |195| 
        XAR3 = dbl(*SP(#0))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 196,column 5,is_stmt
;----------------------------------------------------------------------
; 196 | siuInst[i].pcm_bits           = cfg->pcm_bits;                         
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |196| 
        T0 = AC0  ; |196| 
        XAR2 = #(_siuInst+23) ; |196| 
        AR1 = *AR3(short(#7)) ; |196| 
        *AR2(T0) = AR1 ; |196| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 197,column 5,is_stmt
;----------------------------------------------------------------------
; 197 | siuInst[i].piuInst            = NULL;                                  
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |197| 
        T0 = AC0  ; |197| 
        AC1 = #0  ; |197| 
        XAR3 = #(_siuInst+24) ; |197| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 198,column 5,is_stmt
;----------------------------------------------------------------------
; 198 | siuInst[i].ecuInst            = NULL;                                  
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |198| 
        T0 = AC0  ; |198| 
        XAR3 = #(_siuInst+26) ; |198| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 199,column 2,is_stmt
;----------------------------------------------------------------------
; 199 | siuInst[i].slmInst            = NULL;                                  
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |199| 
        T0 = AC0  ; |199| 
        XAR3 = #(_siuInst+18) ; |199| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 202,column 5,is_stmt
;----------------------------------------------------------------------
; 202 | siuInst[i].TxInst.enabled               = FALSE;                       
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |202| 
        T0 = AC0  ; |202| 
        XAR3 = #(_siuInst+6) ; |202| 
        *AR3(T0) = #0 ; |202| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 203,column 5,is_stmt
;----------------------------------------------------------------------
; 203 | siuInst[i].TxInst.send_frame_length     = 0;                           
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |203| 
        T0 = AC0  ; |203| 
        XAR3 = #(_siuInst+7) ; |203| 
        *AR3(T0) = #0 ; |203| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 204,column 5,is_stmt
;----------------------------------------------------------------------
; 204 | siuInst[i].TxInst.recv_frame_length     = 0;                           
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |204| 
        T0 = AC0  ; |204| 
        XAR3 = #(_siuInst+8) ; |204| 
        *AR3(T0) = #0 ; |204| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 205,column 5,is_stmt
;----------------------------------------------------------------------
; 205 | siuInst[i].TxInst.send_frame_ptr        = NULL;                        
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |205| 
        T0 = AC0  ; |205| 
        XAR3 = #(_siuInst+10) ; |205| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 206,column 5,is_stmt
;----------------------------------------------------------------------
; 206 | siuInst[i].TxInst.recv_frame_ptr        = NULL;                        
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |206| 
        T0 = AC0  ; |206| 
        XAR3 = #(_siuInst+12) ; |206| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 207,column 5,is_stmt
;----------------------------------------------------------------------
; 207 | siuInst[i].TxInst.TxSendOut.fcn         = NULL;                        
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |207| 
        T0 = AC0  ; |207| 
        XAR3 = #(_siuInst+14) ; |207| 
        dbl(*AR3(T0)) = AC1 ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 208,column 5,is_stmt
;----------------------------------------------------------------------
; 208 | siuInst[i].TxInst.TxSendOut.targetInst  = NULL;                        
; 210 | return(SIU_NOERR);                                                     
;----------------------------------------------------------------------
        AC0 = *SP(#2) * #28 ; |208| 
        T0 = AC0  ; |208| 
        XAR3 = #(_siuInst+16) ; |208| 
        dbl(*AR3(T0)) = AC1
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 189,column 37,is_stmt
        *SP(#2) = *SP(#2) + #1 ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c",line 189,column 15,is_stmt
        AR1 = *SP(#2) ; |189| 
        if (AR1 <= #0) goto $C$L10 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_siuInit$2$E:
$C$L11:    
        T0 = #0
        SP = SP + #3
	.dwcfi	cfa_offset, 1
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$65	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$65, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\siu.asm:$C$L10:1:1373047937")
	.dwattr $C$DW$65, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0xbd)
	.dwattr $C$DW$65, DW_AT_TI_end_line(0xd1)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_siuInit$2$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_siuInit$2$E)
	.dwendtag $C$DW$65

	.dwattr $C$DW$60, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/siu.c")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0xd3)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"Exception 0x",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0c)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$67, DW_AT_name("ID")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$68, DW_AT_name("exception")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$69, DW_AT_name("debug")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$70, DW_AT_name("companding_law")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$71, DW_AT_name("pcm_bits")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$72, DW_AT_name("core_heap")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_core_heap")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$73, DW_AT_name("voice_heap")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_voice_heap")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("siuConfig_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0e)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$74, DW_AT_name("ID")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$75, DW_AT_name("exception")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$76, DW_AT_name("debug")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$77, DW_AT_name("cheap_used")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$78, DW_AT_name("cheap")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_cheap")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$79, DW_AT_name("vheap_used")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$80, DW_AT_name("vheap")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_vheap")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("siuContext_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x04)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$81, DW_AT_name("fcn")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_fcn")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$82, DW_AT_name("targetInst")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_targetInst")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxSendOut_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x0c)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$83, DW_AT_name("enabled")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$84, DW_AT_name("send_frame_length")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_send_frame_length")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$85, DW_AT_name("recv_frame_length")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_recv_frame_length")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$86, DW_AT_name("send_frame_ptr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_send_frame_ptr")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$87, DW_AT_name("recv_frame_ptr")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_recv_frame_ptr")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$88, DW_AT_name("TxSendOut")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_TxSendOut")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("siuTxInst_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x1c)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_name("ID")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$90, DW_AT_name("exception")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_exception")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$91, DW_AT_name("debug")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_debug")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$92, DW_AT_name("TxInst")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_TxInst")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$93, DW_AT_name("slmInst")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_slmInst")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$94, DW_AT_name("cheap_used")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_cheap_used")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$95, DW_AT_name("vheap_used")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_vheap_used")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$96, DW_AT_name("companding_law")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_companding_law")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$97, DW_AT_name("pcm_bits")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$98, DW_AT_name("piuInst")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_piuInst")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$99, DW_AT_name("ecuInst")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_ecuInst")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("siuInst_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x1c)
$C$DW$100	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$100, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$47

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$T$24

$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$3)
$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$3)
$C$DW$105	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$3)
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)
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
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x17)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)
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
$C$DW$T$22	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$22, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$22, DW_AT_name("signed char")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)
$C$DW$107	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$22)
$C$DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$107)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x100)
$C$DW$108	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$108, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x19)
$C$DW$109	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$109, DW_AT_upper_bound(0x18)
	.dwendtag $C$DW$T$59

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

$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg0]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg1]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg2]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg3]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg4]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg5]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg6]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg7]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg8]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg9]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg10]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg11]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg13]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg14]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg15]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg16]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg18]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg19]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg20]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg21]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg22]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg23]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg24]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg25]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg26]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg27]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg28]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg29]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg30]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg31]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x20]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x21]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x22]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x23]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x24]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x25]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x26]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x27]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x28]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x29]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x30]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x31]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x32]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x33]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x34]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x35]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x36]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x37]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x38]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x39]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x40]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x41]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x42]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x43]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x44]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x45]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x46]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x47]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x48]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x49]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x50]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x51]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x52]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x53]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x54]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x55]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x56]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x57]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x58]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x59]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

