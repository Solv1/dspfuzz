;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:10 2013                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_ecuProfile+0,24
	.field  	0,8
	.field	0,32			; _ecuProfile._fptr @ 0
	.field	0,16			; _ecuProfile._use_cache @ 32
	.field	0,16			; _ecuProfile._enabled @ 48
	.field	0,32			; _ecuProfile._overhead @ 64
	.field	0,32			; _ecuProfile._start_cnt @ 96
	.field	0,32			; _ecuProfile._cycles @ 128
$C$IR_1:	.set	10


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$33)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$33)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("fflush")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_fflush")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("fprintf")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_fprintf")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$22)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$33)
$C$DW$11	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$8

$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("_ftable")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("__ftable")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.global	_ecuProfile
	.bss	_ecuProfile,10,0,2
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("ecuProfile")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ecuProfile")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _ecuProfile]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$13, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0046013 
	.sect	".text"

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_initCycleProfiling")
	.dwattr $C$DW$14, DW_AT_low_pc(_profile_initCycleProfiling)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_profile_initCycleProfiling")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x38)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 57,column 1,is_stmt,address _profile_initCycleProfiling

	.dwfde $C$DW$CIE, _profile_initCycleProfiling
;----------------------------------------------------------------------
;  56 | static inline tbool profile_initCycleProfiling(void)                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_initCycleProfiling                                   *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_initCycleProfiling:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 58,column 3,is_stmt
;----------------------------------------------------------------------
;  58 | C55X__TCR   =  (1<<C55X__TSS) | (1<<C55X__TLB) | (1<<C55X__ARB);       
;----------------------------------------------------------------------
        *port(#4098) = #1072 ; |58| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 59,column 3,is_stmt
;----------------------------------------------------------------------
;  59 | C55X__PRSC  =  (sdk_PROFILE_TDDR - 1);                                 
;----------------------------------------------------------------------
        *port(#4099) = #15 ; |59| 
        T0 = #1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 60,column 3,is_stmt
;----------------------------------------------------------------------
;  60 | C55X__PRD   =  (sdk_PROFILE_PRD  - 1);                                 
;----------------------------------------------------------------------
        *port(#4097) = #65535 ; |60| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 61,column 3,is_stmt
;----------------------------------------------------------------------
;  61 | C55X__TCR  &= ~(1<<C55X__TLB);                                         
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) & #0xfbff ; |61| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 62,column 3,is_stmt
;----------------------------------------------------------------------
;  62 | C55X__TCR  &= ~(1<<C55X__TSS);                                         
;  64 | return TRUE;                                                           
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) & #0xffef ; |62| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$14, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_getCPUcycleCount")
	.dwattr $C$DW$16, DW_AT_low_pc(_profile_getCPUcycleCount)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 68,column 1,is_stmt,address _profile_getCPUcycleCount

	.dwfde $C$DW$CIE, _profile_getCPUcycleCount
;----------------------------------------------------------------------
;  67 | static inline tlong profile_getCPUcycleCount(void)                     
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_getCPUcycleCount                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_getCPUcycleCount:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 69,column 3,is_stmt
;----------------------------------------------------------------------
;  69 | return ((tlong) sdk_PROFILE_TDDR * (sdk_PROFILE_PRD - C55X__TIM));     
;----------------------------------------------------------------------
        XAR3 = #65536 ; |69| 
        AC0 = XAR3
        AC0 = AC0 - uns(*port(#4096)) ; |69| 
        AC0 = AC0 << #4 ; |69| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$16, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("profile_closeCycleProfiling")
	.dwattr $C$DW$18, DW_AT_low_pc(_profile_closeCycleProfiling)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_profile_closeCycleProfiling")
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 73,column 1,is_stmt,address _profile_closeCycleProfiling

	.dwfde $C$DW$CIE, _profile_closeCycleProfiling
;----------------------------------------------------------------------
;  72 | static inline void profile_closeCycleProfiling(void)                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: profile_closeCycleProfiling                                  *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_profile_closeCycleProfiling:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/profile.h",line 74,column 3,is_stmt
;----------------------------------------------------------------------
;  74 | C55X__TCR |=  (1<<C55X__TSS);                                          
;----------------------------------------------------------------------
        *port(#4098) = *port(#4098) | #0x0010 ; |74| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/profile.h")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("memarchcfg_cacheEnable")
	.dwattr $C$DW$20, DW_AT_low_pc(_memarchcfg_cacheEnable)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_memarchcfg_cacheEnable")
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x06)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 7,column 1,is_stmt,address _memarchcfg_cacheEnable

	.dwfde $C$DW$CIE, _memarchcfg_cacheEnable
;----------------------------------------------------------------------
;   6 | static inline void memarchcfg_cacheEnable(void)                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: memarchcfg_cacheEnable                                       *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_memarchcfg_cacheEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 8,column 5,is_stmt
;----------------------------------------------------------------------
;   8 | *((ioport volatile unsigned int *)0x1400) = 0xCBFF; /* GCR */          
;----------------------------------------------------------------------
        *port(#5120) = #52223 ; |8| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 9,column 5,is_stmt
;----------------------------------------------------------------------
;   9 | *((ioport volatile unsigned int *)0x1403) = 0x000F; /* NWCR */         
;----------------------------------------------------------------------
        *port(#5123) = #15 ; |9| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 10,column 5,is_stmt
;----------------------------------------------------------------------
;  10 | *((ioport volatile unsigned int *)0x1405) = 0x0000; /* RCR1 */         
;----------------------------------------------------------------------
        *port(#5125) = #0 ; |10| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 12,column 5,is_stmt
;----------------------------------------------------------------------
;  12 | ST3 |= 0x2000;   /* Cache clear */                                     
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x2000 ; |12| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 13,column 5,is_stmt
;----------------------------------------------------------------------
;  13 | ST3 &= 0xdfff;                                                         
;----------------------------------------------------------------------
        *(#4) = *(#4) & #0xdfff ; |13| 
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 14,column 5,is_stmt
;----------------------------------------------------------------------
;  14 | ST3 |= 0x4000;   /* Cache Enable */                                    
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x4000 ; |14| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$20, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x0f)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("memarchcfg_cacheFlush")
	.dwattr $C$DW$22, DW_AT_low_pc(_memarchcfg_cacheFlush)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_memarchcfg_cacheFlush")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x11)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 18,column 1,is_stmt,address _memarchcfg_cacheFlush

	.dwfde $C$DW$CIE, _memarchcfg_cacheFlush
;----------------------------------------------------------------------
;  17 | static inline void memarchcfg_cacheFlush(void)                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: memarchcfg_cacheFlush                                        *
;*                                                                             *
;*   Function Uses Regs : SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_memarchcfg_cacheFlush:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 20,column 3,is_stmt
;----------------------------------------------------------------------
;  20 | ST3 |= 0x2000;  /* Cache clear */                                      
;----------------------------------------------------------------------
        *(#4) = *(#4) | #0x2000 ; |20| 
        nop
        nop
        nop
	.dwpsn	file "../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h",line 22,column 3,is_stmt
;----------------------------------------------------------------------
;  22 | while (ST3 & 0x2000);                                                  
;----------------------------------------------------------------------
        TC1 = bit(*(#4),#13) ; |22| 
        if (!TC1) goto $C$L2 ; |22| 
                                        ; branchcc occurs ; |22| 
$C$L1:    
$C$DW$L$_memarchcfg_cacheFlush$2$B:
        TC1 = bit(*(#4),#13) ; |22| 
        if (TC1) goto $C$L1 ; |22| 
                                        ; branchcc occurs ; |22| 
$C$DW$L$_memarchcfg_cacheFlush$2$E:
$C$L2:    
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecuprof.asm:$C$L1:1:1373047930")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x16)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x16)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_memarchcfg_cacheFlush$2$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_memarchcfg_cacheFlush$2$E)
	.dwendtag $C$DW$24

	.dwattr $C$DW$22, DW_AT_TI_end_file("../../../../../../../ti/mas/sdk/src/c55/memArchCfg.h")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x17)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_ecusim_profile_start

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_start")
	.dwattr $C$DW$26, DW_AT_low_pc(_ecusim_profile_start)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_ecusim_profile_start")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 98,column 1,is_stmt,address _ecusim_profile_start

	.dwfde $C$DW$CIE, _ecusim_profile_start
;----------------------------------------------------------------------
;  97 | void ecusim_profile_start (void)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecusim_profile_start                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecusim_profile_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-1
	.dwcfi	cfa_offset, 2
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 100,column 3,is_stmt
;----------------------------------------------------------------------
; 100 | if (ecuProfile.use_cache) {                                            
;----------------------------------------------------------------------
        AR1 = *(#(_ecuProfile+2)) ; |100| 
        if (AR1 == #0) goto $C$L3 ; |100| 
                                        ; branchcc occurs ; |100| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 101,column 5,is_stmt
;----------------------------------------------------------------------
; 101 | memarchcfg_cacheFlush ();                                              
;----------------------------------------------------------------------
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_memarchcfg_cacheFlush")
	.dwattr $C$DW$27, DW_AT_TI_call
        call #_memarchcfg_cacheFlush ; |101| 
                                        ; call occurs [#_memarchcfg_cacheFlush] ; |101| 
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 105,column 3,is_stmt
;----------------------------------------------------------------------
; 105 | ecuProfile.cycles     = 0L;                                            
;----------------------------------------------------------------------
        AC0 = #0  ; |105| 
        dbl(*(#(_ecuProfile+8))) = AC0 ; |105| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 106,column 3,is_stmt
;----------------------------------------------------------------------
; 106 | ecuProfile.start_cnt  = profile_getCPUcycleCount ();                   
;----------------------------------------------------------------------
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$28, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |106| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |106| 
        SP = SP + #1
        dbl(*(#(_ecuProfile+6))) = AC0 ; |106| 
	.dwcfi	cfa_offset, 1
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$26, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x6b)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.global	_ecusim_profile_stop

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_stop")
	.dwattr $C$DW$30, DW_AT_low_pc(_ecusim_profile_stop)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_ecusim_profile_stop")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x6e)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 111,column 1,is_stmt,address _ecusim_profile_stop

	.dwfde $C$DW$CIE, _ecusim_profile_stop
;----------------------------------------------------------------------
; 110 | void ecusim_profile_stop (void)                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecusim_profile_stop                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR3,XAR3,SP,CARRY,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecusim_profile_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-3
	.dwcfi	cfa_offset, 4
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 113,column 9,is_stmt
;----------------------------------------------------------------------
; 113 | tlong count = profile_getCPUcycleCount();                              
;----------------------------------------------------------------------
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_profile_getCPUcycleCount")
	.dwattr $C$DW$32, DW_AT_TI_call
        call #_profile_getCPUcycleCount ; |113| 
                                        ; call occurs [#_profile_getCPUcycleCount] ; |113| 
        dbl(*SP(#0)) = AC0 ; |113| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 116,column 3,is_stmt
;----------------------------------------------------------------------
; 116 | count -= ecuProfile.start_cnt;                                         
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_ecuProfile+6))) ; |116| 
        AC0 = dbl(*SP(#0)) - AC0 ; |116| 
        dbl(*SP(#0)) = AC0 ; |116| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 117,column 3,is_stmt
;----------------------------------------------------------------------
; 117 | if (count < 0) {                                                       
;----------------------------------------------------------------------
        AC0 = dbl(*SP(#0)) ; |117| 
        if (AC0 >= #0) goto $C$L4 ; |117| 
                                        ; branchcc occurs ; |117| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 118,column 5,is_stmt
;----------------------------------------------------------------------
; 118 | count += sdk_PROFILE_MAXCNT;                                           
;----------------------------------------------------------------------
        XAR3 = #1048576 ; |118| 
        AC0 = XAR3
        AC0 = AC0 + dbl(*SP(#0)) ; |118| 
        dbl(*SP(#0)) = AC0 ; |118| 
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 122,column 3,is_stmt
;----------------------------------------------------------------------
; 122 | ecuProfile.cycles = count - ecuProfile.overhead;                       
;----------------------------------------------------------------------
        AC0 = dbl(*(#(_ecuProfile+4))) ; |122| 
        AC0 = dbl(*SP(#0)) - AC0 ; |122| 
        SP = SP + #3
        dbl(*(#(_ecuProfile+8))) = AC0 ; |122| 
	.dwcfi	cfa_offset, 1
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$30, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.global	_ecusim_profile_init

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_init")
	.dwattr $C$DW$34, DW_AT_low_pc(_ecusim_profile_init)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ecusim_profile_init")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 127,column 1,is_stmt,address _ecusim_profile_init

	.dwfde $C$DW$CIE, _ecusim_profile_init
;----------------------------------------------------------------------
; 126 | void ecusim_profile_init (void)                                        
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecusim_profile_init                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecusim_profile_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 129,column 3,is_stmt
;----------------------------------------------------------------------
; 129 | ecuProfile.enabled = FALSE;                                            
;----------------------------------------------------------------------
        *(#(_ecuProfile+3)) = #0 ; |129| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 132,column 3,is_stmt
;----------------------------------------------------------------------
; 132 | profile_initCycleProfiling ();                                         
;----------------------------------------------------------------------
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_profile_initCycleProfiling")
	.dwattr $C$DW$35, DW_AT_TI_call
        call #_profile_initCycleProfiling ; |132| 
                                        ; call occurs [#_profile_initCycleProfiling] ; |132| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 133,column 3,is_stmt
;----------------------------------------------------------------------
; 133 | if (ecuProfile.use_cache) {                                            
;----------------------------------------------------------------------
        AR1 = *(#(_ecuProfile+2)) ; |133| 
        if (AR1 == #0) goto $C$L5 ; |133| 
                                        ; branchcc occurs ; |133| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 134,column 5,is_stmt
;----------------------------------------------------------------------
; 134 | memarchcfg_cacheEnable ();                                             
;----------------------------------------------------------------------
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_memarchcfg_cacheEnable")
	.dwattr $C$DW$36, DW_AT_TI_call
        call #_memarchcfg_cacheEnable ; |134| 
                                        ; call occurs [#_memarchcfg_cacheEnable] ; |134| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 138,column 3,is_stmt
;----------------------------------------------------------------------
; 138 | ecuProfile.overhead = 0L;                                              
;----------------------------------------------------------------------
        AC0 = #0  ; |138| 
        dbl(*(#(_ecuProfile+4))) = AC0 ; |138| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 139,column 3,is_stmt
;----------------------------------------------------------------------
; 139 | ecusim_profile_start ();                                               
;----------------------------------------------------------------------
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_ecusim_profile_start")
	.dwattr $C$DW$37, DW_AT_TI_call
        call #_ecusim_profile_start ; |139| 
                                        ; call occurs [#_ecusim_profile_start] ; |139| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 140,column 3,is_stmt
;----------------------------------------------------------------------
; 140 | ecusim_profile_stop  ();                                               
; 141 | ecuProfile.overhead = ecuProfile.cycles;                               
;----------------------------------------------------------------------
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_ecusim_profile_stop")
	.dwattr $C$DW$38, DW_AT_TI_call
        call #_ecusim_profile_stop ; |140| 
                                        ; call occurs [#_ecusim_profile_stop] ; |140| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 144,column 3,is_stmt
;----------------------------------------------------------------------
; 144 | ecuProfile.fptr = fopen (ecusim_PROFILE_FNAME, "w");                   
;----------------------------------------------------------------------
        XAR0 = #$C$FSL2 ; |144| 
        XAR1 = #$C$FSL1 ; |144| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 141,column 3,is_stmt
        AC0 = dbl(*(#(_ecuProfile+8))) ; |141| 
        dbl(*(#(_ecuProfile+4))) = AC0 ; |141| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 144,column 3,is_stmt
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_fopen")
	.dwattr $C$DW$39, DW_AT_TI_call
        call #_fopen ; |144| 
                                        ; call occurs [#_fopen] ; |144| 
        dbl(*(#_ecuProfile)) = XAR0
        XAR3 = dbl(*(#_ecuProfile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 145,column 3,is_stmt
;----------------------------------------------------------------------
; 145 | if (ecuProfile.fptr == (FILE *) NULL) {                                
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L6 ; |145| 
                                        ; branchcc occurs ; |145| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 146,column 5,is_stmt
;----------------------------------------------------------------------
; 146 | fprintf (stderr, "Unable to open profiling file");                     
;----------------------------------------------------------------------
        XAR3 = #$C$FSL3 ; |146| 
        XAR0 = #(__ftable+24) ; |146| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 147,column 3,is_stmt
;----------------------------------------------------------------------
; 148 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L7 ; |147| 
                                        ; branch occurs ; |147| 
$C$L6:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 149,column 5,is_stmt
;----------------------------------------------------------------------
; 149 | fprintf (stdout, " - Opened file: %s\n", ecusim_PROFILE_FNAME);        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |149| 
        dbl(*SP(#0)) = XAR3
        XAR0 = #(__ftable+12) ; |149| 
        XAR3 = #$C$FSL2 ; |149| 
        dbl(*SP(#2)) = XAR3
$C$L7:    
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_fprintf")
	.dwattr $C$DW$40, DW_AT_TI_call
        call #_fprintf ; |149| 
                                        ; call occurs [#_fprintf] ; |149| 
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$34, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x97)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.global	_ecusim_profile_close

$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_close")
	.dwattr $C$DW$42, DW_AT_low_pc(_ecusim_profile_close)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ecusim_profile_close")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 156,column 1,is_stmt,address _ecusim_profile_close

	.dwfde $C$DW$CIE, _ecusim_profile_close
;----------------------------------------------------------------------
; 155 | void ecusim_profile_close (void)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecusim_profile_close                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecusim_profile_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 158,column 3,is_stmt
;----------------------------------------------------------------------
; 158 | ecuProfile.enabled = FALSE;                                            
;----------------------------------------------------------------------
        *(#(_ecuProfile+3)) = #0 ; |158| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 161,column 3,is_stmt
;----------------------------------------------------------------------
; 161 | profile_closeCycleProfiling ();                                        
;----------------------------------------------------------------------
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_profile_closeCycleProfiling")
	.dwattr $C$DW$43, DW_AT_TI_call
        call #_profile_closeCycleProfiling ; |161| 
                                        ; call occurs [#_profile_closeCycleProfiling] ; |161| 
        XAR3 = dbl(*(#_ecuProfile))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 164,column 3,is_stmt
;----------------------------------------------------------------------
; 164 | if (ecuProfile.fptr != NULL) {                                         
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L8 ; |164| 
                                        ; branchcc occurs ; |164| 
        XAR0 = dbl(*(#_ecuProfile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 165,column 5,is_stmt
;----------------------------------------------------------------------
; 165 | fclose (ecuProfile.fptr);                                              
;----------------------------------------------------------------------
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_fclose")
	.dwattr $C$DW$44, DW_AT_TI_call
        call #_fclose ; |165| 
                                        ; call occurs [#_fclose] ; |165| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 166,column 5,is_stmt
;----------------------------------------------------------------------
; 166 | fprintf (stdout, " - Closed file: %s\n", ecusim_PROFILE_FNAME);        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL5 ; |166| 
        dbl(*SP(#0)) = XAR3
        XAR0 = #(__ftable+12) ; |166| 
        XAR3 = #$C$FSL2 ; |166| 
        dbl(*SP(#2)) = XAR3
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_fprintf")
	.dwattr $C$DW$45, DW_AT_TI_call
        call #_fprintf ; |166| 
                                        ; call occurs [#_fprintf] ; |166| 
$C$L8:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$42, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0xa8)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.global	_ecusim_profile_print

$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("ecusim_profile_print")
	.dwattr $C$DW$47, DW_AT_low_pc(_ecusim_profile_print)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_ecusim_profile_print")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0xac)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 173,column 1,is_stmt,address _ecusim_profile_print

	.dwfde $C$DW$CIE, _ecusim_profile_print
;----------------------------------------------------------------------
; 172 | void ecusim_profile_print (void)                                       
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecusim_profile_print                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecusim_profile_print:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 175,column 3,is_stmt
;----------------------------------------------------------------------
; 175 | if (ecuProfile.enabled && ecuProfile.fptr != NULL) {                   
;----------------------------------------------------------------------
        AR1 = *(#(_ecuProfile+3)) ; |175| 
        if (AR1 == #0) goto $C$L9 ; |175| 
                                        ; branchcc occurs ; |175| 
        XAR3 = dbl(*(#_ecuProfile))
        AC0 = XAR3
        if (AC0 == #0) goto $C$L9 ; |175| 
                                        ; branchcc occurs ; |175| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 176,column 5,is_stmt
;----------------------------------------------------------------------
; 176 | fprintf (ecuProfile.fptr, "%8d\n", ecuProfile.cycles);                 
;----------------------------------------------------------------------
        XAR3 = #$C$FSL6 ; |176| 
        AC0 = dbl(*(#(_ecuProfile+8))) ; |176| 
        XAR0 = dbl(*(#_ecuProfile))
        dbl(*SP(#0)) = XAR3
        dbl(*SP(#2)) = AC0 ; |176| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_fprintf")
	.dwattr $C$DW$48, DW_AT_TI_call
        call #_fprintf ; |176| 
                                        ; call occurs [#_fprintf] ; |176| 
        XAR0 = dbl(*(#_ecuProfile))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c",line 177,column 5,is_stmt
;----------------------------------------------------------------------
; 177 | fflush  (ecuProfile.fptr);                                             
;----------------------------------------------------------------------
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_fflush")
	.dwattr $C$DW$49, DW_AT_TI_call
        call #_fflush ; |177| 
                                        ; call occurs [#_fflush] ; |177| 
$C$L9:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$47, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecuprof.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0xb3)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"w",0
	.align	2
$C$FSL2:	.string	"../../../vectors/profile/profile.txt",0
	.align	2
$C$FSL3:	.string	"Unable to open profiling file",0
	.align	2
$C$FSL4:	.string	" - Opened file: %s",10,0
	.align	2
$C$FSL5:	.string	" - Closed file: %s",10,0
	.align	2
$C$FSL6:	.string	"%8d",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_fclose
	.global	_fopen
	.global	_fflush
	.global	_fprintf
	.global	__ftable

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_name("fd")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("buf")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("pos")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("bufend")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("buff_stop")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$56, DW_AT_name("flags")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x78)
$C$DW$57	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$57, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$36


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0a)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_name("fptr")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$59, DW_AT_name("use_cache")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_use_cache")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$60, DW_AT_name("enabled")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_enabled")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$61, DW_AT_name("overhead")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_overhead")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$62, DW_AT_name("start_cnt")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_start_cnt")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$63, DW_AT_name("cycles")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_cycles")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("ecuProfile_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
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
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x17)
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
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$64	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$11)
$C$DW$65	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$64)
$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$65)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x10)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("profIOPort")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("tlong")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
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
$C$DW$T$31	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$31, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$31, DW_AT_name("signed char")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$66	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$31)
$C$DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$66)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x17)
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

$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg1]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg2]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg3]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg4]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg5]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg6]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg7]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg8]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg9]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg10]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg11]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg12]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg13]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg14]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg15]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg16]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg17]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg18]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg19]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg20]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg21]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg22]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg23]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg24]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg25]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg26]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg27]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg28]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg29]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg30]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg31]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x20]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x21]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x22]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x23]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x24]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x25]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x26]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x27]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x28]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x29]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x30]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x31]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x32]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x33]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x34]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x35]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x36]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x37]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x38]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x39]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x40]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x41]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x42]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x43]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x44]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x45]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x46]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x47]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x48]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x49]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x50]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x51]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x52]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x53]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x54]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x55]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x56]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x57]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x58]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x59]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

