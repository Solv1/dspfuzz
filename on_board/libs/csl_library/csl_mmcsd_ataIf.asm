;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:06 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_gCountRead+0,24
	.field  	0,8
	.field	0,32			; _gCountRead @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_ReadNBufs+0,24
	.field  	0,8
	.field	187,16			; _ReadNBufs[0] @ 0
$C$IR_1:	.set	1

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_gWriteSector+0,24
	.field  	0,8
	.field	0,32			; _gWriteSector @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_gDoneWrite+0,24
	.field  	0,8
	.field	0,16			; _gDoneWrite @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_gWordCount+0,24
	.field  	0,8
	.field	256,16			; _gWordCount @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_gNextPhySector+0,24
	.field  	0,8
	.field	0,32			; _gNextPhySector @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_nbuf_cached+0,24
	.field  	0,8
	.field	0,16			; _nbuf_cached @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_ATA_No_Swap+0,24
	.field  	0,8
	.field	0,16			; _ATA_No_Swap @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_read")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_MMC_read")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$135)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$28)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$103)
	.dwendtag $C$DW$1


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_write")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_MMC_write")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$135)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$28)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$103)
	.dwendtag $C$DW$6

	.global	_gCountRead
	.bss	_gCountRead,2,0,2
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("gCountRead")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_gCountRead")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _gCountRead]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$11, DW_AT_external
	.global	_ReadNBufs
	.bss	_ReadNBufs,2048,0,4
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("ReadNBufs")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ReadNBufs")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _ReadNBufs]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$12, DW_AT_external
	.global	_sector
	.bss	_sector,16,0,2
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("sector")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_sector")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _sector]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$13, DW_AT_external
	.global	_count
	.bss	_count,1,0,0
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _count]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_external
	.global	_gWriteSector
	.bss	_gWriteSector,2,0,2
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("gWriteSector")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_gWriteSector")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _gWriteSector]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$15, DW_AT_external
	.global	_gDoneWrite
	.bss	_gDoneWrite,1,0,0
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("gDoneWrite")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_gDoneWrite")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr _gDoneWrite]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_external
	.global	_gReadBuf
	.bss	_gReadBuf,256,0,0
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("gReadBuf")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_gReadBuf")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _gReadBuf]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$17, DW_AT_external
	.global	_sectBuffered
	.bss	_sectBuffered,1,0,0
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("sectBuffered")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_sectBuffered")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _sectBuffered]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_external
	.global	_gWordCount
	.bss	_gWordCount,1,0,0
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("gWordCount")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_gWordCount")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _gWordCount]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_external
	.global	_gNextPhySector
	.bss	_gNextPhySector,2,0,2
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("gNextPhySector")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_gNextPhySector")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _gNextPhySector]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$20, DW_AT_external
	.global	_gWriteBuf
	.bss	_gWriteBuf,1024,0,4
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("gWriteBuf")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_gWriteBuf")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _gWriteBuf]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$21, DW_AT_external
	.global	_cached_phySector0
	.bss	_cached_phySector0,2,0,2
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("cached_phySector0")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_cached_phySector0")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _cached_phySector0]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$22, DW_AT_external
	.global	_cached_phySector1
	.bss	_cached_phySector1,2,0,2
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("cached_phySector1")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_cached_phySector1")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _cached_phySector1]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$23, DW_AT_external
	.global	_cached_phySector2
	.bss	_cached_phySector2,2,0,2
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("cached_phySector2")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_cached_phySector2")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _cached_phySector2]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$24, DW_AT_external
	.global	_cached_phySector3
	.bss	_cached_phySector3,2,0,2
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("cached_phySector3")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_cached_phySector3")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _cached_phySector3]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$25, DW_AT_external
	.global	_nbuf_cached
	.bss	_nbuf_cached,1,0,0
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("nbuf_cached")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_nbuf_cached")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _nbuf_cached]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$26, DW_AT_external
	.global	_ATA_No_Swap
	.bss	_ATA_No_Swap,1,0,0
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("ATA_No_Swap")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_ATA_No_Swap")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _ATA_No_Swap]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$27, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17478aGaIKH 
	.sect	".text"
	.global	_MMC_initState

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_initState")
	.dwattr $C$DW$28, DW_AT_low_pc(_MMC_initState)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_MMC_initState")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x95)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 150,column 1,is_stmt,address _MMC_initState

	.dwfde $C$DW$CIE, _MMC_initState
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pDrive")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_pDrive")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_initState                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR2,XAR2,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_initState:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("pDrive")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_pDrive")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("ataMMCState")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_ataMMCState")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 153,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 == #0 ; |153| 
                                        ; branchcc occurs ; |153| 
        MOV dbl(*AR3(#24)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |153| 
                                        ; branchcc occurs ; |153| 
$C$L1:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 155,column 3,is_stmt
        MOV #768, T0 ; |155| 
        B $C$L3   ; |155| 
                                        ; branch occurs ; |155| 
$C$L2:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 158,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#24)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 160,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 162,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_reset >> 16) << #16, AC0 ; |162| 
        OR #(_MMC_reset & 0xffff), AC0, AC0 ; |162| 
        MOV AC0, dbl(*AR3(#26)) ; |162| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 163,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_busyStatusCheck >> 16) << #16, AC0 ; |163| 
        OR #(_MMC_busyStatusCheck & 0xffff), AC0, AC0 ; |163| 
        MOV AC0, dbl(*AR3(#30)) ; |163| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 164,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_getSerialID >> 16) << #16, AC0 ; |164| 
        OR #(_MMC_getSerialID & 0xffff), AC0, AC0 ; |164| 
        MOV AC0, dbl(*AR3(#32)) ; |164| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 165,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_issueReadCommand >> 16) << #16, AC0 ; |165| 
        OR #(_MMC_issueReadCommand & 0xffff), AC0, AC0 ; |165| 
        MOV AC0, dbl(*AR3(#34)) ; |165| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 166,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_commandReadyStatusCheck >> 16) << #16, AC0 ; |166| 
        OR #(_MMC_commandReadyStatusCheck & 0xffff), AC0, AC0 ; |166| 
        MOV AC0, dbl(*AR3(#28)) ; |166| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 167,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_dataReadyStatusCheck >> 16) << #16, AC0 ; |167| 
        OR #(_MMC_dataReadyStatusCheck & 0xffff), AC0, AC0 ; |167| 
        MOV AC0, dbl(*AR3(#36)) ; |167| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 168,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_readNextWord >> 16) << #16, AC0 ; |168| 
        OR #(_MMC_readNextWord & 0xffff), AC0, AC0 ; |168| 
        MOV AC0, dbl(*AR3(#38)) ; |168| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 169,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_readNextWord1 >> 16) << #16, AC0 ; |169| 
        OR #(_MMC_readNextWord1 & 0xffff), AC0, AC0 ; |169| 
        MOV AC0, dbl(*AR3(#40)) ; |169| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 170,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_readNextNWords >> 16) << #16, AC0 ; |170| 
        OR #(_MMC_readNextNWords & 0xffff), AC0, AC0 ; |170| 
        MOV AC0, dbl(*AR3(#42)) ; |170| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 172,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_readWriteControl >> 16) << #16, AC0 ; |172| 
        OR #(_MMC_readWriteControl & 0xffff), AC0, AC0 ; |172| 
        MOV AC0, dbl(*AR3(#44)) ; |172| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 173,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_writeSectorFlush >> 16) << #16, AC0 ; |173| 
        OR #(_MMC_writeSectorFlush & 0xffff), AC0, AC0 ; |173| 
        MOV AC0, dbl(*AR3(#46)) ; |173| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_file_system_format >> 16) << #16, AC0 ; |174| 
        OR #(_MMC_file_system_format & 0xffff), AC0, AC0 ; |174| 
        MOV AC0, dbl(*AR3(#54)) ; |174| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_flushFat >> 16) << #16, AC0 ; |175| 
        OR #(_MMC_flushFat & 0xffff), AC0, AC0 ; |175| 
        MOV AC0, dbl(*AR3(#50)) ; |175| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 176,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_get_date >> 16) << #16, AC0 ; |176| 
        OR #(_MMC_get_date & 0xffff), AC0, AC0 ; |176| 
        MOV AC0, dbl(*AR3(#62)) ; |176| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 177,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_get_time >> 16) << #16, AC0 ; |177| 
        OR #(_MMC_get_time & 0xffff), AC0, AC0 ; |177| 
        MOV AC0, dbl(*AR3(#60)) ; |177| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 178,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_get_mod_date >> 16) << #16, AC0 ; |178| 
        OR #(_MMC_get_mod_date & 0xffff), AC0, AC0 ; |178| 
        MOV AC0, dbl(*AR3(#58)) ; |178| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 179,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #(_MMC_get_mod_time >> 16) << #16, AC0 ; |179| 
        OR #(_MMC_get_mod_time & 0xffff), AC0, AC0 ; |179| 
        MOV AC0, dbl(*AR3(#56)) ; |179| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 181,column 5,is_stmt
        MOV #0, T0
$C$L3:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 182,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_MMC_readWriteControl

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_readWriteControl")
	.dwattr $C$DW$33, DW_AT_low_pc(_MMC_readWriteControl)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_MMC_readWriteControl")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 243,column 1,is_stmt,address _MMC_readWriteControl

	.dwfde $C$DW$CIE, _MMC_readWriteControl
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phySector")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg17]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWord")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg19]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("last_sector")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_last_sector")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_readWriteControl                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_readWriteControl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("phySector")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("pWord")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("last_sector")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_last_sector")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("idx")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#6) ; |243| 
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |243| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 247,column 3,is_stmt
        MOV #0, *SP(#7) ; |247| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 250,column 3,is_stmt
        MOV *(#_ATA_No_Swap), AR1 ; |250| 
        BCC $C$L22,AR1 == #0 ; |250| 
                                        ; branchcc occurs ; |250| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 252,column 5,is_stmt
        MOV *(#_nbuf_cached), AR1 ; |252| 
        BCC $C$L7,AR1 != #0 ; |252| 
                                        ; branchcc occurs ; |252| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 254,column 4,is_stmt
        MOV *SP(#6), AR1 ; |254| 
        BCC $C$L4,AR1 == #0 ; |254| 
                                        ; branchcc occurs ; |254| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 256,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |256| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL #_MMC_writeSector ; |256| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |256| 
        MOV T0, *SP(#7) ; |256| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 257,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L23,AR1 == #0 ; |257| 
                                        ; branchcc occurs ; |257| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 259,column 11,is_stmt
        B $C$L27  ; |259| 
                                        ; branch occurs ; |259| 
$C$L4:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 264,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |264| 
        MOV AC0, dbl(*(#_cached_phySector0)) ; |264| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 265,column 14,is_stmt
        MOV #0, *SP(#8) ; |265| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 265,column 20,is_stmt
        MOV #256, AR2 ; |265| 
        MOV *SP(#8), AR1 ; |265| 
        CMPU AR1 >= AR2, TC1 ; |265| 
        BCC $C$L6,TC1 ; |265| 
                                        ; branchcc occurs ; |265| 
$C$L5:    
$C$DW$L$_MMC_readWriteControl$8$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 265,column 53,is_stmt
        MOV *SP(#8), T0 ; |265| 
        MOV T0, AR1 ; |265| 
        MOV dbl(*SP(#4)), XAR2
        AMOV #_gWriteBuf, XAR3 ; |265| 
        AADD AR1, AR3 ; |265| 
        MOV *AR2(T0), *AR3 ; |265| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 265,column 46,is_stmt
        ADD #1, *SP(#8) ; |265| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 265,column 20,is_stmt
        MOV #256, AR2 ; |265| 
        MOV *SP(#8), AR1 ; |265| 
        CMPU AR1 < AR2, TC1 ; |265| 
        BCC $C$L5,TC1 ; |265| 
                                        ; branchcc occurs ; |265| 
$C$DW$L$_MMC_readWriteControl$8$E:
$C$L6:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 266,column 6,is_stmt
        ADD #1, *(#_nbuf_cached) ; |266| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 268,column 5,is_stmt
        B $C$L23  ; |268| 
                                        ; branch occurs ; |268| 
$C$L7:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 271,column 7,is_stmt
        CMP *(#_nbuf_cached) == #1, TC1 ; |271| 
        BCC $C$L12,!TC1 ; |271| 
                                        ; branchcc occurs ; |271| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 273,column 9,is_stmt
        MOV dbl(*(#_cached_phySector0)), AC0 ; |273| 

        ADD #1, AC0 ; |273| 
||      MOV dbl(*SP(#0)), AC1 ; |273| 

        CMPU AC1 == AC0, TC1 ; |273| 
        BCC $C$L8,TC1 ; |273| 
                                        ; branchcc occurs ; |273| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 275,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |275| 
        AMOV #_gWriteBuf, XAR1 ; |275| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$45, DW_AT_TI_call

        CALL #_MMC_writeSector ; |275| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |275| 
        MOV T0, *SP(#7) ; |275| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 276,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |276| 
                                        ; branchcc occurs ; |276| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 278,column 13,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 280,column 11,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |280| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$46, DW_AT_TI_call

        CALL #_MMC_writeSector ; |280| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |280| 
        MOV T0, *SP(#7) ; |280| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 281,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |281| 
                                        ; branchcc occurs ; |281| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 283,column 13,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 285,column 5,is_stmt
        MOV #0, *(#_nbuf_cached) ; |285| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 286,column 6,is_stmt
        B $C$L23  ; |286| 
                                        ; branch occurs ; |286| 
$C$L8:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 289,column 11,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |289| 
        MOV AC0, dbl(*(#_cached_phySector1)) ; |289| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 290,column 16,is_stmt
        MOV #0, *SP(#8) ; |290| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 290,column 22,is_stmt
        MOV #256, AR2 ; |290| 
        MOV *SP(#8), AR1 ; |290| 
        CMPU AR1 >= AR2, TC1 ; |290| 
        BCC $C$L10,TC1 ; |290| 
                                        ; branchcc occurs ; |290| 
$C$L9:    
$C$DW$L$_MMC_readWriteControl$16$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 290,column 55,is_stmt
        ADD #256, AR1, AR1 ; |290| 
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#8), T0 ; |290| 
        AMOV #_gWriteBuf, XAR3 ; |290| 
        AADD AR1, AR3 ; |290| 
        MOV *AR2(T0), *AR3 ; |290| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 290,column 48,is_stmt
        ADD #1, *SP(#8) ; |290| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 290,column 22,is_stmt
        MOV #256, AR2 ; |290| 
        MOV *SP(#8), AR1 ; |290| 
        CMPU AR1 < AR2, TC1 ; |290| 
        BCC $C$L9,TC1 ; |290| 
                                        ; branchcc occurs ; |290| 
$C$DW$L$_MMC_readWriteControl$16$E:
$C$L10:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 291,column 5,is_stmt
        MOV *SP(#6), AR1 ; |291| 
        BCC $C$L11,AR1 == #0 ; |291| 
                                        ; branchcc occurs ; |291| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 293,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |293| 
        AMOV #_gWriteBuf, XAR1 ; |293| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$47, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |293| 
||      MOV #2, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |293| 
        MOV T0, *SP(#7) ; |293| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 294,column 7,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |294| 
                                        ; branchcc occurs ; |294| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 296,column 15,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 298,column 4,is_stmt
        MOV #0, *(#_nbuf_cached) ; |298| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 299,column 5,is_stmt
        B $C$L23  ; |299| 
                                        ; branch occurs ; |299| 
$C$L11:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 302,column 13,is_stmt
        ADD #1, *(#_nbuf_cached) ; |302| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 306,column 4,is_stmt
        B $C$L23  ; |306| 
                                        ; branch occurs ; |306| 
$C$L12:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 309,column 6,is_stmt
        CMP *(#_nbuf_cached) == #2, TC1 ; |309| 
        BCC $C$L17,!TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 311,column 11,is_stmt
        MOV dbl(*(#_cached_phySector1)), AC0 ; |311| 

        ADD #1, AC0 ; |311| 
||      MOV dbl(*SP(#0)), AC1 ; |311| 

        CMPU AC1 == AC0, TC1 ; |311| 
        BCC $C$L13,TC1 ; |311| 
                                        ; branchcc occurs ; |311| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 313,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |313| 
        AMOV #_gWriteBuf, XAR1 ; |313| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$48, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |313| 
||      MOV #2, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |313| 
        MOV T0, *SP(#7) ; |313| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 314,column 7,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |314| 
                                        ; branchcc occurs ; |314| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 316,column 15,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 318,column 13,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |318| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$49, DW_AT_TI_call

        CALL #_MMC_writeSector ; |318| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |318| 
        MOV T0, *SP(#7) ; |318| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 319,column 7,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |319| 
                                        ; branchcc occurs ; |319| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 321,column 15,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 323,column 4,is_stmt
        MOV #0, *(#_nbuf_cached) ; |323| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 324,column 5,is_stmt
        B $C$L23  ; |324| 
                                        ; branch occurs ; |324| 
$C$L13:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 327,column 13,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |327| 
        MOV AC0, dbl(*(#_cached_phySector2)) ; |327| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 328,column 18,is_stmt
        MOV #0, *SP(#8) ; |328| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 328,column 24,is_stmt
        MOV #256, AR2 ; |328| 
        MOV *SP(#8), AR1 ; |328| 
        CMPU AR1 >= AR2, TC1 ; |328| 
        BCC $C$L15,TC1 ; |328| 
                                        ; branchcc occurs ; |328| 
$C$L14:    
$C$DW$L$_MMC_readWriteControl$27$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 328,column 57,is_stmt
        ADD #512, AR1, AR1 ; |328| 
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#8), T0 ; |328| 
        AMOV #_gWriteBuf, XAR3 ; |328| 
        AADD AR1, AR3 ; |328| 
        MOV *AR2(T0), *AR3 ; |328| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 328,column 50,is_stmt
        ADD #1, *SP(#8) ; |328| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 328,column 24,is_stmt
        MOV #256, AR2 ; |328| 
        MOV *SP(#8), AR1 ; |328| 
        CMPU AR1 < AR2, TC1 ; |328| 
        BCC $C$L14,TC1 ; |328| 
                                        ; branchcc occurs ; |328| 
$C$DW$L$_MMC_readWriteControl$27$E:
$C$L15:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 329,column 4,is_stmt
        MOV *SP(#6), AR1 ; |329| 
        BCC $C$L16,AR1 == #0 ; |329| 
                                        ; branchcc occurs ; |329| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 331,column 15,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |331| 
        AMOV #_gWriteBuf, XAR1 ; |331| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$50, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |331| 
||      MOV #3, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |331| 
        MOV T0, *SP(#7) ; |331| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 332,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |332| 
                                        ; branchcc occurs ; |332| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 334,column 17,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 336,column 6,is_stmt
        MOV #0, *(#_nbuf_cached) ; |336| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 337,column 4,is_stmt
        B $C$L23  ; |337| 
                                        ; branch occurs ; |337| 
$C$L16:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 340,column 6,is_stmt
        ADD #1, *(#_nbuf_cached) ; |340| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 344,column 3,is_stmt
        B $C$L23  ; |344| 
                                        ; branch occurs ; |344| 
$C$L17:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 347,column 11,is_stmt
        CMP *(#_nbuf_cached) == #3, TC1 ; |347| 
        BCC $C$L23,!TC1 ; |347| 
                                        ; branchcc occurs ; |347| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 349,column 13,is_stmt
        MOV dbl(*(#_cached_phySector2)), AC0 ; |349| 

        ADD #1, AC0 ; |349| 
||      MOV dbl(*SP(#0)), AC1 ; |349| 

        CMPU AC1 == AC0, TC1 ; |349| 
        BCC $C$L18,TC1 ; |349| 
                                        ; branchcc occurs ; |349| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 351,column 15,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |351| 
        AMOV #_gWriteBuf, XAR1 ; |351| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$51, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |351| 
||      MOV #3, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |351| 
        MOV T0, *SP(#7) ; |351| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 352,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |352| 
                                        ; branchcc occurs ; |352| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 354,column 17,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 356,column 15,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |356| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$52, DW_AT_TI_call

        CALL #_MMC_writeSector ; |356| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |356| 
        MOV T0, *SP(#7) ; |356| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 357,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L21,AR1 == #0 ; |357| 
                                        ; branchcc occurs ; |357| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 359,column 17,is_stmt
        B $C$L27  ; |359| 
                                        ; branch occurs ; |359| 
$C$L18:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 364,column 15,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |364| 
        MOV AC0, dbl(*(#_cached_phySector3)) ; |364| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 365,column 20,is_stmt
        MOV #0, *SP(#8) ; |365| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 365,column 26,is_stmt
        MOV #256, AR2 ; |365| 
        MOV *SP(#8), AR1 ; |365| 
        CMPU AR1 >= AR2, TC1 ; |365| 
        BCC $C$L20,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$L19:    
$C$DW$L$_MMC_readWriteControl$39$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 365,column 59,is_stmt
        ADD #768, AR1, AR1 ; |365| 
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#8), T0 ; |365| 
        AMOV #_gWriteBuf, XAR3 ; |365| 
        AADD AR1, AR3 ; |365| 
        MOV *AR2(T0), *AR3 ; |365| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 365,column 52,is_stmt
        ADD #1, *SP(#8) ; |365| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 365,column 26,is_stmt
        MOV #256, AR2 ; |365| 
        MOV *SP(#8), AR1 ; |365| 
        CMPU AR1 < AR2, TC1 ; |365| 
        BCC $C$L19,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$DW$L$_MMC_readWriteControl$39$E:
$C$L20:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 366,column 12,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*(#_cached_phySector0)), AC0 ; |366| 
        AMOV #_gWriteBuf, XAR1 ; |366| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$53, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |366| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |366| 
        MOV T0, *SP(#7) ; |366| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 367,column 9,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |367| 
                                        ; branchcc occurs ; |367| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 369,column 17,is_stmt
$C$L21:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 372,column 7,is_stmt
        MOV #0, *(#_nbuf_cached) ; |372| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 378,column 3,is_stmt
        B $C$L23  ; |378| 
                                        ; branch occurs ; |378| 
$C$L22:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 381,column 5,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |381| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#4)), XAR1
        MOV *SP(#6), T0 ; |381| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_MMC_writeSector ; |381| 
                                        ; call occurs [#_MMC_writeSector] ; |381| 
        MOV T0, *SP(#7) ; |381| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 382,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L27,AR1 != #0 ; |382| 
                                        ; branchcc occurs ; |382| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 384,column 7,is_stmt
$C$L23:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 389,column 7,is_stmt
        MOV #0, *SP(#8) ; |389| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 389,column 16,is_stmt

        MOV *SP(#8), AR1 ; |389| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |389| 
        BCC $C$L26,TC1 ; |389| 
                                        ; branchcc occurs ; |389| 
$C$L24:    
$C$DW$L$_MMC_readWriteControl$46$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 391,column 7,is_stmt
        MOV *SP(#8), T0 ; |391| 
        SFTL T0, #1 ; |391| 
        AMOV #_sector, XAR3 ; |391| 
        MOV dbl(*SP(#0)), AC1 ; |391| 
        MOV dbl(*AR3(T0)), AC0 ; |391| 
        CMPU AC1 != AC0, TC1 ; |391| 
        BCC $C$L25,TC1 ; |391| 
                                        ; branchcc occurs ; |391| 
$C$DW$L$_MMC_readWriteControl$46$E:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 393,column 8,is_stmt
        MOV #1, *(#_gDoneWrite) ; |393| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 394,column 5,is_stmt
        B $C$L26  ; |394| 
                                        ; branch occurs ; |394| 
$C$L25:    
$C$DW$L$_MMC_readWriteControl$48$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 389,column 25,is_stmt
        ADD #1, *SP(#8) ; |389| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 389,column 16,is_stmt
        MOV *SP(#8), AR1 ; |389| 
        CMPU AR1 < AR2, TC1 ; |389| 
        BCC $C$L24,TC1 ; |389| 
                                        ; branchcc occurs ; |389| 
$C$DW$L$_MMC_readWriteControl$48$E:
$C$L26:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 399,column 3,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |399| 
        MOV AC0, dbl(*(#_gWriteSector)) ; |399| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 408,column 3,is_stmt
        MOV *SP(#7), T0 ; |408| 
$C$L27:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 410,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L24:1:1714639446")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x185)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x18c)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$46$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$46$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$48$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$48$E)
	.dwendtag $C$DW$56


$C$DW$59	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$59, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L19:1:1714639446")
	.dwattr $C$DW$59, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x16d)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$39$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$39$E)
	.dwendtag $C$DW$59


$C$DW$61	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$61, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L14:1:1714639446")
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x148)
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x148)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$27$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$27$E)
	.dwendtag $C$DW$61


$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L9:1:1714639446")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x122)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$16$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$16$E)
	.dwendtag $C$DW$63


$C$DW$65	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$65, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L5:1:1714639446")
	.dwattr $C$DW$65, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x109)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_MMC_readWriteControl$8$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_MMC_readWriteControl$8$E)
	.dwendtag $C$DW$65

	.dwattr $C$DW$33, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x19a)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_MMC_issueReadCommand

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_issueReadCommand")
	.dwattr $C$DW$67, DW_AT_low_pc(_MMC_issueReadCommand)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_MMC_issueReadCommand")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x1d4)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 471,column 1,is_stmt,address _MMC_issueReadCommand

	.dwfde $C$DW$CIE, _MMC_issueReadCommand
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phySector")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg0]
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg17]
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sectorCount")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_issueReadCommand                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_issueReadCommand:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("phySector")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("sectorCount")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("ATA_No_Swap_sav")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_ATA_No_Swap_sav")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("idx")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("readEndianMode")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#4) ; |471| 
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |471| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 484,column 5,is_stmt
        MOV #0, *SP(#5) ; |484| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 485,column 5,is_stmt
        MOV #0, *SP(#6) ; |485| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 491,column 5,is_stmt
        CMP *(#_nbuf_cached) == #1, TC1 ; |491| 
        BCC $C$L28,!TC1 ; |491| 
                                        ; branchcc occurs ; |491| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 492,column 4,is_stmt
        MOV *(#_ATA_No_Swap), AR1 ; |492| 
        MOV AR1, *SP(#12) ; |492| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 493,column 4,is_stmt
        MOV #1, *(#_ATA_No_Swap) ; |493| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 494,column 7,is_stmt
        MOV dbl(*(#_cached_phySector0)), AC0 ; |494| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_gWriteBuf, XAR1 ; |494| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_MMC_writeSector")
	.dwattr $C$DW$81, DW_AT_TI_call

        CALL #_MMC_writeSector ; |494| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_writeSector] ; |494| 
        MOV T0, *SP(#6) ; |494| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 495,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L51,AR1 != #0 ; |495| 
                                        ; branchcc occurs ; |495| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 497,column 9,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 499,column 4,is_stmt
        MOV #0, *(#_nbuf_cached) ; |499| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 500,column 4,is_stmt
        MOV *SP(#12), AR1 ; |500| 
        MOV AR1, *(#_ATA_No_Swap) ; |500| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 501,column 2,is_stmt
        B $C$L30  ; |501| 
                                        ; branch occurs ; |501| 
$C$L28:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 504,column 7,is_stmt
        CMP *(#_nbuf_cached) == #2, TC1 ; |504| 
        BCC $C$L29,!TC1 ; |504| 
                                        ; branchcc occurs ; |504| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 506,column 6,is_stmt
        MOV *(#_ATA_No_Swap), AR1 ; |506| 
        MOV AR1, *SP(#12) ; |506| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 507,column 6,is_stmt
        MOV #1, *(#_ATA_No_Swap) ; |507| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 508,column 6,is_stmt
        MOV dbl(*(#_cached_phySector0)), AC0 ; |508| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_gWriteBuf, XAR1 ; |508| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$82, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |508| 
||      MOV #2, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |508| 
        MOV T0, *SP(#6) ; |508| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 509,column 6,is_stmt
        MOV T0, AR1
        BCC $C$L51,AR1 != #0 ; |509| 
                                        ; branchcc occurs ; |509| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 511,column 11,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 513,column 9,is_stmt
        MOV #0, *(#_nbuf_cached) ; |513| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 514,column 6,is_stmt
        MOV *SP(#12), AR1 ; |514| 
        MOV AR1, *(#_ATA_No_Swap) ; |514| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 515,column 4,is_stmt
        B $C$L30  ; |515| 
                                        ; branch occurs ; |515| 
$C$L29:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 518,column 6,is_stmt
        CMP *(#_nbuf_cached) == #3, TC1 ; |518| 
        BCC $C$L30,!TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 520,column 8,is_stmt
        MOV *(#_ATA_No_Swap), AR1 ; |520| 
        MOV AR1, *SP(#12) ; |520| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 521,column 8,is_stmt
        MOV #1, *(#_ATA_No_Swap) ; |521| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 522,column 8,is_stmt
        MOV dbl(*(#_cached_phySector0)), AC0 ; |522| 
        MOV dbl(*SP(#2)), XAR0
        AMOV #_gWriteBuf, XAR1 ; |522| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_MMC_writeNSectors")
	.dwattr $C$DW$83, DW_AT_TI_call

        CALL #_MMC_writeNSectors ; |522| 
||      MOV #3, T0

                                        ; call occurs [#_MMC_writeNSectors] ; |522| 
        MOV T0, *SP(#6) ; |522| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 523,column 8,is_stmt
        MOV T0, AR1
        BCC $C$L51,AR1 != #0 ; |523| 
                                        ; branchcc occurs ; |523| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 525,column 13,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 527,column 11,is_stmt
        MOV #0, *(#_nbuf_cached) ; |527| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 528,column 8,is_stmt
        MOV *SP(#12), AR1 ; |528| 
        MOV AR1, *(#_ATA_No_Swap) ; |528| 
$C$L30:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 536,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 538,column 5,is_stmt

        MOV XAR3, AC0
||      MOV #0, AC1 ; |538| 

        CMPU AC1 == AC0, TC1 ; |538| 
        BCC $C$L31,TC1 ; |538| 
                                        ; branchcc occurs ; |538| 
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |538| 
        BCC $C$L31,TC1 ; |538| 
                                        ; branchcc occurs ; |538| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |538| 

        CMPU AR2 != AR1, TC1 ; |538| 
        BCC $C$L32,TC1 ; |538| 
                                        ; branchcc occurs ; |538| 
$C$L31:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 542,column 3,is_stmt
        MOV #768, *SP(#6) ; |542| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 543,column 3,is_stmt
        MOV *SP(#6), T0 ; |543| 
        B $C$L51  ; |543| 
                                        ; branch occurs ; |543| 
$C$L32:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 547,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 549,column 3,is_stmt
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |549| 

        SUB #1, AC0 ; |549| 
||      MOV dbl(*SP(#0)), AC1 ; |549| 

        CMPU AC1 <= AC0, TC1 ; |549| 
        BCC $C$L33,TC1 ; |549| 
                                        ; branchcc occurs ; |549| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 551,column 4,is_stmt
        MOV #768, *SP(#6) ; |551| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 552,column 11,is_stmt
        MOV *SP(#6), T0 ; |552| 
        B $C$L51  ; |552| 
                                        ; branch occurs ; |552| 
$C$L33:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 559,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3(#61), AR1 ; |559| 
        MOV AR1, *SP(#14) ; |559| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 561,column 4,is_stmt
        MOV #1, AR2
        MOV *(#_ATA_No_Swap), AR1 ; |561| 
        CMPU AR2 != AR1, TC1 ; |561| 
        BCC $C$L34,TC1 ; |561| 
                                        ; branchcc occurs ; |561| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 563,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #1, *AR3(#61) ; |563| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 564,column 4,is_stmt
        B $C$L35  ; |564| 
                                        ; branch occurs ; |564| 
$C$L34:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 567,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #0, *AR3(#61) ; |567| 
$C$L35:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 571,column 4,is_stmt
        MOV #0, *(#_gWordCount) ; |571| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 574,column 13,is_stmt
        MOV #0, *(#_sectBuffered) ; |574| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 577,column 17,is_stmt
        MOV #0, *SP(#13) ; |577| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 577,column 26,is_stmt

        MOV *SP(#13), AR1 ; |577| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |577| 
        BCC $C$L38,TC1 ; |577| 
                                        ; branchcc occurs ; |577| 
$C$L36:    
$C$DW$L$_MMC_issueReadCommand$22$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 579,column 7,is_stmt
        MOV *SP(#13), T0 ; |579| 
        SFTL T0, #1 ; |579| 
        AMOV #_sector, XAR3 ; |579| 
        MOV dbl(*(#_gWriteSector)), AC1 ; |579| 
        MOV dbl(*AR3(T0)), AC0 ; |579| 
        CMPU AC1 != AC0, TC1 ; |579| 
        BCC $C$L37,TC1 ; |579| 
                                        ; branchcc occurs ; |579| 
$C$DW$L$_MMC_issueReadCommand$22$E:
$C$DW$L$_MMC_issueReadCommand$23$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 581,column 11,is_stmt
        MOV #1, *(#_gDoneWrite) ; |581| 
$C$DW$L$_MMC_issueReadCommand$23$E:
$C$L37:    
$C$DW$L$_MMC_issueReadCommand$24$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 577,column 35,is_stmt
        ADD #1, *SP(#13) ; |577| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 577,column 26,is_stmt
        MOV *SP(#13), AR1 ; |577| 
        CMPU AR1 < AR2, TC1 ; |577| 
        BCC $C$L36,TC1 ; |577| 
                                        ; branchcc occurs ; |577| 
$C$DW$L$_MMC_issueReadCommand$24$E:
$C$L38:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 585,column 13,is_stmt
        MOV #0, *SP(#13) ; |585| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 587,column 13,is_stmt
        MOV #256, AR4 ; |591| 

        B $C$L43  ; |587| 
||      MOV #8, AR1

                                        ; branch occurs ; |587| 
$C$L39:    
$C$DW$L$_MMC_issueReadCommand$26$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 589,column 5,is_stmt
        MOV *SP(#13), T0 ; |589| 
        SFTL T0, #1 ; |589| 
        AMOV #_sector, XAR3 ; |589| 
        MOV dbl(*SP(#0)), AC1 ; |589| 
        MOV dbl(*AR3(T0)), AC0 ; |589| 
        CMPU AC1 != AC0, TC1 ; |589| 
        BCC $C$L42,TC1 ; |589| 
                                        ; branchcc occurs ; |589| 
$C$DW$L$_MMC_issueReadCommand$26$E:
$C$DW$L$_MMC_issueReadCommand$27$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 591,column 24,is_stmt
        MOV #0, *(#_count) ; |591| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 591,column 34,is_stmt
        MOV *(#_count), AR2 ; |591| 
        CMPU AR2 >= AR4, TC1 ; |591| 
        BCC $C$L41,TC1 ; |591| 
                                        ; branchcc occurs ; |591| 
$C$DW$L$_MMC_issueReadCommand$27$E:
$C$L40:    
$C$DW$L$_MMC_issueReadCommand$28$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 593,column 12,is_stmt
        MOV *SP(#13), AC0 ; |593| 
        SFTL AC0, #9, AC0 ; |593| 
        MOV AC0, AR3 ; |593| 
        SFTL AR3, #-1 ; |593| 
        MOV *(#_count), T1 ; |593| 
        MOV AR3, AC0 ; |593| 
        ADD *(#_count), AC0, T0 ; |593| 
        AMOV #_ReadNBufs, XAR2 ; |593| 
        AMOV #_gReadBuf, XAR3 ; |593| 
        AADD T1, AR3 ; |593| 
        MOV *AR2(T0), *AR3 ; |593| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 591,column 67,is_stmt
        ADD #1, *(#_count) ; |591| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 591,column 34,is_stmt
        MOV *(#_count), AR2 ; |591| 
        MOV #256, AR3 ; |591| 
        CMPU AR2 < AR3, TC1 ; |591| 
        BCC $C$L40,TC1 ; |591| 
                                        ; branchcc occurs ; |591| 
$C$DW$L$_MMC_issueReadCommand$28$E:
$C$L41:    
$C$DW$L$_MMC_issueReadCommand$29$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 595,column 8,is_stmt
        MOV #1, *(#_sectBuffered) ; |595| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 596,column 8,is_stmt
        MOV #0, *(#_gDoneWrite) ; |596| 
$C$DW$L$_MMC_issueReadCommand$29$E:
$C$L42:    
$C$DW$L$_MMC_issueReadCommand$30$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 598,column 5,is_stmt
        ADD #1, *SP(#13) ; |598| 
$C$DW$L$_MMC_issueReadCommand$30$E:
$C$L43:    
$C$DW$L$_MMC_issueReadCommand$31$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 587,column 19,is_stmt
        MOV *SP(#13), AR2 ; |587| 
        CMPU AR2 >= AR1, TC1 ; |587| 
        BCC $C$L44,TC1 ; |587| 
                                        ; branchcc occurs ; |587| 
$C$DW$L$_MMC_issueReadCommand$31$E:
$C$DW$L$_MMC_issueReadCommand$32$B:
        MOV *(#_sectBuffered), AR2 ; |587| 
        BCC $C$L44,AR2 != #0 ; |587| 
                                        ; branchcc occurs ; |587| 
$C$DW$L$_MMC_issueReadCommand$32$E:
$C$DW$L$_MMC_issueReadCommand$33$B:
        CMP *(#_gDoneWrite) == #1, TC1 ; |587| 
        BCC $C$L39,!TC1 ; |587| 
                                        ; branchcc occurs ; |587| 
$C$DW$L$_MMC_issueReadCommand$33$E:
$C$L44:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 601,column 4,is_stmt
        MOV *(#_sectBuffered), AR1 ; |601| 
        BCC $C$L45,AR1 == #0 ; |601| 
                                        ; branchcc occurs ; |601| 
        CMP *(#_gDoneWrite) == #1, TC1 ; |601| 
        BCC $C$L49,!TC1 ; |601| 
                                        ; branchcc occurs ; |601| 
$C$L45:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 603,column 17,is_stmt
        MOV #0, *(#_gDoneWrite) ; |603| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 606,column 21,is_stmt
        MOV #0, *SP(#13) ; |606| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 606,column 30,is_stmt

        MOV *SP(#13), AR1 ; |606| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |606| 
        BCC $C$L47,TC1 ; |606| 
                                        ; branchcc occurs ; |606| 
$C$L46:    
$C$DW$L$_MMC_issueReadCommand$37$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 608,column 9,is_stmt
        MOV *SP(#13), T0 ; |608| 
        SFTL T0, #1 ; |608| 
        MOV uns(*SP(#13)), AC0 ; |608| 
        AMOV #_sector, XAR3 ; |608| 
        ADD dbl(*SP(#0)), AC0, AC0 ; |608| 
        MOV AC0, dbl(*AR3(T0)) ; |608| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 606,column 38,is_stmt
        ADD #1, *SP(#13) ; |606| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 606,column 30,is_stmt
        MOV *SP(#13), AR1 ; |606| 
        CMPU AR1 < AR2, TC1 ; |606| 
        BCC $C$L46,TC1 ; |606| 
                                        ; branchcc occurs ; |606| 
$C$DW$L$_MMC_issueReadCommand$37$E:
$C$L47:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 611,column 8,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |611| 
        ADD #1, AC0 ; |611| 
        MOV AC0, dbl(*(#_gNextPhySector)) ; |611| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 612,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR0
        AMOV #_ReadNBufs, XAR1 ; |612| 
        MOV dbl(*SP(#0)), AC0 ; |612| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_MMC_readNSectors")
	.dwattr $C$DW$84, DW_AT_TI_call

        CALL #_MMC_readNSectors ; |612| 
||      MOV #8, T0

                                        ; call occurs [#_MMC_readNSectors] ; |612| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 630,column 20,is_stmt
        MOV #0, *(#_count) ; |630| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 630,column 30,is_stmt
        MOV #256, AR2 ; |630| 
        MOV *(#_count), AR1 ; |630| 
        CMPU AR1 >= AR2, TC1 ; |630| 
        BCC $C$L49,TC1 ; |630| 
                                        ; branchcc occurs ; |630| 
$C$L48:    
$C$DW$L$_MMC_issueReadCommand$39$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 632,column 11,is_stmt
        MOV *(#_count), T0 ; |632| 
        MOV T0, AR1 ; |632| 
        AMOV #_gReadBuf, XAR3 ; |632| 
        AMOV #_ReadNBufs, XAR2 ; |632| 
        AADD AR1, AR3 ; |632| 
        MOV *AR2(T0), *AR3 ; |632| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 630,column 63,is_stmt
        ADD #1, *(#_count) ; |630| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 630,column 30,is_stmt
        MOV #256, AR2 ; |630| 
        MOV *(#_count), AR1 ; |630| 
        CMPU AR1 < AR2, TC1 ; |630| 
        BCC $C$L48,TC1 ; |630| 
                                        ; branchcc occurs ; |630| 
$C$DW$L$_MMC_issueReadCommand$39$E:
$C$L49:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 660,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#14), AR1 ; |660| 
        MOV AR1, *AR3(#61) ; |660| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 663,column 4,is_stmt
        MOV *SP(#5), AR1 ; |663| 
        BCC $C$L50,AR1 == #0 ; |663| 
                                        ; branchcc occurs ; |663| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 665,column 5,is_stmt
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_getAtaErrorNo")
	.dwattr $C$DW$85, DW_AT_TI_call

        CALL #_getAtaErrorNo ; |665| 
||      MOV AR1, T0

                                        ; call occurs [#_getAtaErrorNo] ; |665| 
        MOV T0, *SP(#6) ; |665| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 666,column 12,is_stmt
        B $C$L51  ; |666| 
                                        ; branch occurs ; |666| 
$C$L50:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 670,column 5,is_stmt
        MOV *SP(#6), T0 ; |670| 
$C$L51:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 671,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$87	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$87, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L48:1:1714639446")
	.dwattr $C$DW$87, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x276)
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x279)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$39$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$39$E)
	.dwendtag $C$DW$87


$C$DW$89	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$89, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L46:1:1714639446")
	.dwattr $C$DW$89, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x25e)
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x261)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$37$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$37$E)
	.dwendtag $C$DW$89


$C$DW$91	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$91, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L43:1:1714639446")
	.dwattr $C$DW$91, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x24b)
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x256)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$31$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$31$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$27$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$27$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$32$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$32$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$33$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$33$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$26$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$26$E)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$29$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$29$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$30$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$30$E)

$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L40:2:1714639446")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x24f)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x252)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$28$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$28$E)
	.dwendtag $C$DW$99

	.dwendtag $C$DW$91


$C$DW$101	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$101, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L36:1:1714639446")
	.dwattr $C$DW$101, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x241)
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x247)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$22$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$22$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$23$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$23$E)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_MMC_issueReadCommand$24$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_MMC_issueReadCommand$24$E)
	.dwendtag $C$DW$101

	.dwattr $C$DW$67, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x29f)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.global	_MMC_readNextWord

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_readNextWord")
	.dwattr $C$DW$105, DW_AT_low_pc(_MMC_readNextWord)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_MMC_readNextWord")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$105, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x2de)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 736,column 1,is_stmt,address _MMC_readNextWord

	.dwfde $C$DW$CIE, _MMC_readNextWord
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg17]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWord")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_readNextWord                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_readNextWord:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("pWord")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 740,column 5,is_stmt
        MOV #0, *SP(#6) ; |740| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 742,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |742| 

        CMPU AC1 == AC0, TC1 ; |742| 
        BCC $C$L52,TC1 ; |742| 
                                        ; branchcc occurs ; |742| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |742| 
        BCC $C$L53,TC1 ; |742| 
                                        ; branchcc occurs ; |742| 
$C$L52:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 745,column 3,is_stmt
        MOV #768, *SP(#6) ; |745| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 746,column 3,is_stmt
        MOV *SP(#6), T0 ; |746| 
        B $C$L55  ; |746| 
                                        ; branch occurs ; |746| 
$C$L53:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 749,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 751,column 5,is_stmt
        MOV *(#_gWordCount), AR1 ; |751| 
        MOV #256, AR2 ; |751| 
        CMPU AR2 != AR1, TC1 ; |751| 
        BCC $C$L54,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 753,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*(#_gNextPhySector)), AC0 ; |753| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_MMC_issueReadCommand")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALL #_MMC_issueReadCommand ; |753| 
||      MOV #1, T0

                                        ; call occurs [#_MMC_issueReadCommand] ; |753| 
        MOV T0, *SP(#6) ; |753| 
$C$L54:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 756,column 2,is_stmt
        MOV *(#_gWordCount), T0 ; |756| 
        MOV dbl(*SP(#2)), XAR2
        AMOV #_gReadBuf, XAR3 ; |756| 
        ADD #1, T0, AR1 ; |756| 
        MOV AR1, *(#_gWordCount) ; |756| 
        MOV *AR3(T0), *AR2 ; |756| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 758,column 5,is_stmt
        MOV *SP(#6), T0 ; |758| 
$C$L55:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 759,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$105, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x2f7)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.global	_MMC_readNextWord1

$C$DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_readNextWord1")
	.dwattr $C$DW$114, DW_AT_low_pc(_MMC_readNextWord1)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_MMC_readNextWord1")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$114, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x337)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 826,column 1,is_stmt,address _MMC_readNextWord1

	.dwfde $C$DW$CIE, _MMC_readNextWord1
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg17]
$C$DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWord")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg19]
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("word_delta")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_word_delta")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_readNextWord1                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_readNextWord1:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("pWord")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("word_delta")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_word_delta")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV T0, *SP(#4) ; |826| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 831,column 5,is_stmt
        MOV #0, *SP(#8) ; |831| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 833,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |833| 

        CMPU AC1 != AC0, TC1 ; |833| 
        BCC $C$L56,TC1 ; |833| 
                                        ; branchcc occurs ; |833| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 835,column 3,is_stmt
        MOV #768, *SP(#8) ; |835| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 836,column 3,is_stmt
        MOV *SP(#8), T0 ; |836| 
        B $C$L59  ; |836| 
                                        ; branch occurs ; |836| 
$C$L56:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 839,column 5,is_stmt
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 855,column 5,is_stmt
        MOV #256, AR2 ; |855| 
        MOV *SP(#4), AR1 ; |855| 
        CMPU AR1 < AR2, TC1 ; |855| 
        BCC $C$L57,TC1 ; |855| 
                                        ; branchcc occurs ; |855| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 857,column 4,is_stmt
        SUB #256, AR1, AR1 ; |857| 
        MOV AR1, *SP(#9) ; |857| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 858,column 4,is_stmt
        MOV dbl(*(#_gNextPhySector)), AC0 ; |858| 
        MOV dbl(*SP(#6)), XAR0
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_MMC_issueReadCommand")
	.dwattr $C$DW$124, DW_AT_TI_call

        CALL #_MMC_issueReadCommand ; |858| 
||      MOV #1, T0

                                        ; call occurs [#_MMC_issueReadCommand] ; |858| 
        MOV T0, *SP(#8) ; |858| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 859,column 4,is_stmt
        MOV *SP(#9), AR1 ; |859| 
        MOV AR1, *(#_gWordCount) ; |859| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 860,column 5,is_stmt
        B $C$L58  ; |860| 
                                        ; branch occurs ; |860| 
$C$L57:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 863,column 4,is_stmt
        MOV AR1, *(#_gWordCount) ; |863| 
$C$L58:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 866,column 2,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#2)), XAR2
        AMOV #_gReadBuf, XAR3 ; |866| 
        ADD #1, T0, AR1 ; |866| 
        MOV AR1, *(#_gWordCount) ; |866| 
        MOV *AR3(T0), *AR2 ; |866| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 868,column 5,is_stmt
        MOV *SP(#8), T0 ; |868| 
$C$L59:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 869,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$114, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x365)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.global	_MMC_readNextNWords

$C$DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_readNextNWords")
	.dwattr $C$DW$126, DW_AT_low_pc(_MMC_readNextNWords)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_MMC_readNextNWords")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$126, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x39f)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 930,column 1,is_stmt,address _MMC_readNextNWords

	.dwfde $C$DW$CIE, _MMC_readNextNWords
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pData")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_pData")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg19]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("words")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_words")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_readNextNWords                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_readNextNWords:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("pData")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_pData")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("words")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_words")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |930| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 936,column 5,is_stmt
        MOV #0, *SP(#5) ; |936| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 938,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |938| 

        CMPU AC1 == AC0, TC1 ; |938| 
        BCC $C$L60,TC1 ; |938| 
                                        ; branchcc occurs ; |938| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |938| 
        BCC $C$L60,TC1 ; |938| 
                                        ; branchcc occurs ; |938| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |938| 

        CMPU AR2 != AR1, TC1 ; |938| 
        BCC $C$L61,TC1 ; |938| 
                                        ; branchcc occurs ; |938| 
$C$L60:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 942,column 3,is_stmt
        MOV #768, T0 ; |942| 
        B $C$L64  ; |942| 
                                        ; branch occurs ; |942| 
$C$L61:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 945,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 948,column 9,is_stmt
        MOV #0, *SP(#6) ; |948| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 948,column 20,is_stmt
        MOV *SP(#4), AR1 ; |948| 
        MOV *SP(#6), AR2 ; |948| 
        CMPU AR2 >= AR1, TC1 ; |948| 
        BCC $C$L63,TC1 ; |948| 
                                        ; branchcc occurs ; |948| 
$C$L62:    
$C$DW$L$_MMC_readNextNWords$6$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 950,column 3,is_stmt
        MOV *SP(#6), AR2 ; |950| 
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#8)), XAR0
        AADD AR2, AR1 ; |950| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_MMC_readNextWord")
	.dwattr $C$DW$136, DW_AT_TI_call
        CALL #_MMC_readNextWord ; |950| 
                                        ; call occurs [#_MMC_readNextWord] ; |950| 
        MOV T0, *SP(#5) ; |950| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 951,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L63,AR1 != #0 ; |951| 
                                        ; branchcc occurs ; |951| 
$C$DW$L$_MMC_readNextNWords$6$E:
$C$DW$L$_MMC_readNextNWords$7$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 953,column 4,is_stmt
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 948,column 35,is_stmt
        ADD #1, *SP(#6) ; |948| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 948,column 20,is_stmt
        MOV *SP(#4), AR1 ; |948| 
        MOV *SP(#6), AR2 ; |948| 
        CMPU AR2 < AR1, TC1 ; |948| 
        BCC $C$L62,TC1 ; |948| 
                                        ; branchcc occurs ; |948| 
$C$DW$L$_MMC_readNextNWords$7$E:
$C$L63:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 957,column 2,is_stmt
        MOV *SP(#5), T0 ; |957| 
$C$L64:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 958,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$138	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$138, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L62:1:1714639446")
	.dwattr $C$DW$138, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x3b4)
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x3bb)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_MMC_readNextNWords$6$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_MMC_readNextNWords$6$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_MMC_readNextNWords$7$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_MMC_readNextNWords$7$E)
	.dwendtag $C$DW$138

	.dwattr $C$DW$126, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x3be)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.global	_MMC_writeSector

$C$DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_writeSector")
	.dwattr $C$DW$141, DW_AT_low_pc(_MMC_writeSector)
	.dwattr $C$DW$141, DW_AT_high_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_MMC_writeSector")
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$141, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$141, DW_AT_TI_begin_line(0x3fa)
	.dwattr $C$DW$141, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$141, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1022,column 1,is_stmt,address _MMC_writeSector

	.dwfde $C$DW$CIE, _MMC_writeSector
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("phySector")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg0]
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg17]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWord")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg19]
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("byteSwap")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_byteSwap")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_writeSector                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_writeSector:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("phySector")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_phySector")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("pWord")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_pWord")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("byteSwap")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_byteSwap")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#6) ; |1022| 
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |1022| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1032,column 5,is_stmt
        MOV #0, *SP(#7) ; |1032| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1033,column 5,is_stmt
        MOV #0, *SP(#8) ; |1033| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1035,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1037,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1037| 

        CMPU AC1 == AC0, TC1 ; |1037| 
        BCC $C$L65,TC1 ; |1037| 
                                        ; branchcc occurs ; |1037| 
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1037| 
        BCC $C$L65,TC1 ; |1037| 
                                        ; branchcc occurs ; |1037| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1037| 
        BCC $C$L66,TC1 ; |1037| 
                                        ; branchcc occurs ; |1037| 
$C$L65:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1041,column 3,is_stmt
        MOV #768, T0 ; |1041| 
        B $C$L74  ; |1041| 
                                        ; branch occurs ; |1041| 
$C$L66:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1044,column 2,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1046,column 2,is_stmt
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |1046| 

        SUB #1, AC0 ; |1046| 
||      MOV dbl(*SP(#0)), AC1 ; |1046| 

        CMPU AC1 <= AC0, TC1 ; |1046| 
        BCC $C$L67,TC1 ; |1046| 
                                        ; branchcc occurs ; |1046| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1048,column 3,is_stmt
        MOV #768, *SP(#8) ; |1048| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1049,column 3,is_stmt
        MOV *SP(#8), T0 ; |1049| 
        B $C$L74  ; |1049| 
                                        ; branch occurs ; |1049| 
$C$L67:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1055,column 3,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(#62), AR1 ; |1055| 
        MOV AR1, *SP(#14) ; |1055| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1057,column 3,is_stmt
        MOV #1, AR2
        MOV *(#_ATA_No_Swap), AR1 ; |1057| 
        CMPU AR2 != AR1, TC1 ; |1057| 
        BCC $C$L68,TC1 ; |1057| 
                                        ; branchcc occurs ; |1057| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1059,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #1, *AR3(#62) ; |1059| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1060,column 3,is_stmt
        B $C$L69  ; |1060| 
                                        ; branch occurs ; |1060| 
$C$L68:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1063,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #0, *AR3(#62) ; |1063| 
$C$L69:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1068,column 3,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#26) == #1, TC1 ; |1068| 
        BCC $C$L70,TC1 ; |1068| 
                                        ; branchcc occurs ; |1068| 
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#27) == #1, TC1 ; |1068| 
        BCC $C$L71,!TC1 ; |1068| 
                                        ; branchcc occurs ; |1068| 
$C$L70:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1075,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#0)), AC0 ; |1075| 
        MOV dbl(*SP(#4)), XAR1
        MOV #512, T0 ; |1075| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_MMC_write")
	.dwattr $C$DW$155, DW_AT_TI_call
        CALL #_MMC_write ; |1075| 
                                        ; call occurs [#_MMC_write] ; |1075| 
        MOV T0, *SP(#7) ; |1075| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1076,column 3,is_stmt
        B $C$L72  ; |1076| 
                                        ; branch occurs ; |1076| 
$C$L71:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1081,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#0)), AC0 ; |1081| 
        MOV #512, T0 ; |1081| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_MMC_write")
	.dwattr $C$DW$156, DW_AT_TI_call

        CALL #_MMC_write ; |1081| 
||      SFTL AC0, #9, AC0 ; |1081| 

                                        ; call occurs [#_MMC_write] ; |1081| 
        MOV T0, *SP(#7) ; |1081| 
$C$L72:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1086,column 4,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV *SP(#14), AR1 ; |1086| 
        MOV AR1, *AR3(#62) ; |1086| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1089,column 3,is_stmt
        MOV *SP(#7), AR1 ; |1089| 
        BCC $C$L73,AR1 == #0 ; |1089| 
                                        ; branchcc occurs ; |1089| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1091,column 4,is_stmt
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_getAtaErrorNo")
	.dwattr $C$DW$157, DW_AT_TI_call

        CALL #_getAtaErrorNo ; |1091| 
||      MOV AR1, T0

                                        ; call occurs [#_getAtaErrorNo] ; |1091| 
        MOV T0, *SP(#8) ; |1091| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1092,column 4,is_stmt
        B $C$L74  ; |1092| 
                                        ; branch occurs ; |1092| 
$C$L73:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1096,column 5,is_stmt
        MOV *SP(#8), T0 ; |1096| 
$C$L74:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1097,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$141, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x449)
	.dwattr $C$DW$141, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$141

	.sect	".text"
	.global	_MMC_readNSectors

$C$DW$159	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_readNSectors")
	.dwattr $C$DW$159, DW_AT_low_pc(_MMC_readNSectors)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_MMC_readNSectors")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$159, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x481)
	.dwattr $C$DW$159, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1157,column 1,is_stmt,address _MMC_readNSectors

	.dwfde $C$DW$CIE, _MMC_readNSectors
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg17]
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuf")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg19]
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startSector")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_startSector")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sectorCount")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_readNSectors                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_readNSectors:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuf")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("startSector")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_startSector")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("sectorCount")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("validSectors")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_validSectors")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#6) ; |1157| 
        MOV AC0, dbl(*SP(#4)) ; |1157| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1164,column 5,is_stmt
        MOV #0, *SP(#7) ; |1164| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1165,column 5,is_stmt
        MOV #0, *SP(#8) ; |1165| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1167,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1169,column 5,is_stmt

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1169| 

        CMPU AC1 == AC0, TC1 ; |1169| 
        BCC $C$L75,TC1 ; |1169| 
                                        ; branchcc occurs ; |1169| 
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1169| 
        BCC $C$L75,TC1 ; |1169| 
                                        ; branchcc occurs ; |1169| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1169| 
        BCC $C$L75,TC1 ; |1169| 
                                        ; branchcc occurs ; |1169| 

        MOV #0, AR2
||      MOV *SP(#6), AR1 ; |1169| 

        CMPU AR2 != AR1, TC1 ; |1169| 
        BCC $C$L76,TC1 ; |1169| 
                                        ; branchcc occurs ; |1169| 
$C$L75:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1174,column 3,is_stmt
        MOV #768, T0 ; |1174| 
        B $C$L83  ; |1174| 
                                        ; branch occurs ; |1174| 
$C$L76:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1177,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1179,column 2,is_stmt
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1179| 
        SUB AC0, dbl(*AR3(#12)), AC0 ; |1179| 
        MOV AC0, dbl(*SP(#14)) ; |1179| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1181,column 2,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |1181| 

        SUB #1, AC0 ; |1181| 
||      MOV dbl(*SP(#4)), AC1 ; |1181| 

        CMPU AC1 > AC0, TC1 ; |1181| 
        BCC $C$L77,TC1 ; |1181| 
                                        ; branchcc occurs ; |1181| 
        MOV dbl(*SP(#14)), AC0 ; |1181| 
        MOV uns(*SP(#6)), AC1 ; |1181| 
        CMPU AC1 <= AC0, TC1 ; |1181| 
        BCC $C$L78,TC1 ; |1181| 
                                        ; branchcc occurs ; |1181| 
$C$L77:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1184,column 3,is_stmt
        MOV #768, *SP(#7) ; |1184| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1185,column 3,is_stmt
        MOV *SP(#7), T0 ; |1185| 
        B $C$L83  ; |1185| 
                                        ; branch occurs ; |1185| 
$C$L78:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1189,column 3,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#26) == #1, TC1 ; |1189| 
        BCC $C$L79,TC1 ; |1189| 
                                        ; branchcc occurs ; |1189| 
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#27) == #1, TC1 ; |1189| 
        BCC $C$L80,!TC1 ; |1189| 
                                        ; branchcc occurs ; |1189| 
$C$L79:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1192,column 13,is_stmt
        MOV dbl(*(#_gCountRead)), AC0 ; |1192| 
        ADD #1, AC0 ; |1192| 
        MOV AC0, dbl(*(#_gCountRead)) ; |1192| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1195,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#6), AC0 ; |1195| 

        MOV dbl(*SP(#4)), AC0 ; |1195| 
||      SFTL AC0, #9, AC1 ; |1195| 

$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_MMC_read")
	.dwattr $C$DW$173, DW_AT_TI_call

        CALL #_MMC_read ; |1195| 
||      MOV AC1, T0 ; |1195| 

                                        ; call occurs [#_MMC_read] ; |1195| 
        MOV T0, *SP(#8) ; |1195| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1197,column 3,is_stmt
        B $C$L81  ; |1197| 
                                        ; branch occurs ; |1197| 
$C$L80:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1202,column 4,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1202| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#2)), XAR1

        SFTL AC0, #9, AC0 ; |1202| 
||      MOV *SP(#6), AC1 ; |1202| 

        SFTL AC1, #9, AC1 ; |1202| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_MMC_read")
	.dwattr $C$DW$174, DW_AT_TI_call

        CALL #_MMC_read ; |1202| 
||      MOV AC1, T0 ; |1202| 

                                        ; call occurs [#_MMC_read] ; |1202| 
        MOV T0, *SP(#8) ; |1202| 
$C$L81:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1206,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L82,AR1 == #0 ; |1206| 
                                        ; branchcc occurs ; |1206| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1208,column 4,is_stmt
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_getAtaErrorNo")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #_getAtaErrorNo ; |1208| 
                                        ; call occurs [#_getAtaErrorNo] ; |1208| 
        MOV T0, *SP(#7) ; |1208| 
$C$L82:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1212,column 5,is_stmt
        MOV *SP(#7), T0 ; |1212| 
$C$L83:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1213,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$159, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x4bd)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text"
	.global	_MMC_writeNSectors

$C$DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_writeNSectors")
	.dwattr $C$DW$177, DW_AT_low_pc(_MMC_writeNSectors)
	.dwattr $C$DW$177, DW_AT_high_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_MMC_writeNSectors")
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$177, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$177, DW_AT_TI_begin_line(0x4f4)
	.dwattr $C$DW$177, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$177, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1272,column 1,is_stmt,address _MMC_writeNSectors

	.dwfde $C$DW$CIE, _MMC_writeNSectors
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg17]
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg19]
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startSector")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_startSector")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg0]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sectorCount")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_writeNSectors                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_writeNSectors:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("startSector")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_startSector")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("sectorCount")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_sectorCount")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("ataResult")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_ataResult")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("validSectors")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_validSectors")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV T0, *SP(#6) ; |1272| 
        MOV AC0, dbl(*SP(#4)) ; |1272| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1283,column 5,is_stmt
        MOV #0, *SP(#7) ; |1283| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1284,column 5,is_stmt
        MOV #0, *SP(#8) ; |1284| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1286,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1288,column 5,is_stmt

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1288| 

        CMPU AC1 == AC0, TC1 ; |1288| 
        BCC $C$L84,TC1 ; |1288| 
                                        ; branchcc occurs ; |1288| 
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1288| 
        BCC $C$L84,TC1 ; |1288| 
                                        ; branchcc occurs ; |1288| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1288| 
        BCC $C$L84,TC1 ; |1288| 
                                        ; branchcc occurs ; |1288| 

        MOV #0, AR2
||      MOV *SP(#6), AR1 ; |1288| 

        CMPU AR2 != AR1, TC1 ; |1288| 
        BCC $C$L85,TC1 ; |1288| 
                                        ; branchcc occurs ; |1288| 
$C$L84:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1293,column 3,is_stmt
        MOV #768, T0 ; |1293| 
        B $C$L94  ; |1293| 
                                        ; branch occurs ; |1293| 
$C$L85:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1296,column 2,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1298,column 2,is_stmt
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1298| 
        SUB AC0, dbl(*AR3(#12)), AC0 ; |1298| 
        MOV AC0, dbl(*SP(#14)) ; |1298| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1300,column 2,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |1300| 

        SUB #1, AC0 ; |1300| 
||      MOV dbl(*SP(#4)), AC1 ; |1300| 

        CMPU AC1 > AC0, TC1 ; |1300| 
        BCC $C$L86,TC1 ; |1300| 
                                        ; branchcc occurs ; |1300| 
        MOV dbl(*SP(#14)), AC0 ; |1300| 
        MOV uns(*SP(#6)), AC1 ; |1300| 
        CMPU AC1 <= AC0, TC1 ; |1300| 
        BCC $C$L87,TC1 ; |1300| 
                                        ; branchcc occurs ; |1300| 
$C$L86:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1303,column 3,is_stmt
        MOV #768, *SP(#7) ; |1303| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1304,column 3,is_stmt
        MOV *SP(#7), T0 ; |1304| 
        B $C$L94  ; |1304| 
                                        ; branch occurs ; |1304| 
$C$L87:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1310,column 3,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3(#62), AR1 ; |1310| 
        MOV AR1, *SP(#16) ; |1310| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1312,column 3,is_stmt
        MOV #1, AR2
        MOV *(#_ATA_No_Swap), AR1 ; |1312| 
        CMPU AR2 != AR1, TC1 ; |1312| 
        BCC $C$L88,TC1 ; |1312| 
                                        ; branchcc occurs ; |1312| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1314,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #1, *AR3(#62) ; |1314| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1315,column 3,is_stmt
        B $C$L89  ; |1315| 
                                        ; branch occurs ; |1315| 
$C$L88:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1318,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #0, *AR3(#62) ; |1318| 
$C$L89:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1323,column 3,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#26) == #1, TC1 ; |1323| 
        BCC $C$L90,TC1 ; |1323| 
                                        ; branchcc occurs ; |1323| 
        MOV dbl(*SP(#10)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#27) == #1, TC1 ; |1323| 
        BCC $C$L91,!TC1 ; |1323| 
                                        ; branchcc occurs ; |1323| 
$C$L90:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1328,column 4,is_stmt
        MOV *SP(#6), AC0 ; |1328| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#2)), XAR1

        MOV dbl(*SP(#4)), AC0 ; |1328| 
||      SFTL AC0, #9, AC1 ; |1328| 

$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_MMC_write")
	.dwattr $C$DW$192, DW_AT_TI_call

        CALL #_MMC_write ; |1328| 
||      MOV AC1, T0 ; |1328| 

                                        ; call occurs [#_MMC_write] ; |1328| 
        MOV T0, *SP(#8) ; |1328| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1330,column 3,is_stmt
        B $C$L92  ; |1330| 
                                        ; branch occurs ; |1330| 
$C$L91:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1335,column 4,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1335| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#2)), XAR1

        SFTL AC0, #9, AC0 ; |1335| 
||      MOV *SP(#6), AC1 ; |1335| 

        SFTL AC1, #9, AC1 ; |1335| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_MMC_write")
	.dwattr $C$DW$193, DW_AT_TI_call

        CALL #_MMC_write ; |1335| 
||      MOV AC1, T0 ; |1335| 

                                        ; call occurs [#_MMC_write] ; |1335| 
        MOV T0, *SP(#8) ; |1335| 
$C$L92:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1340,column 4,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *SP(#16), AR1 ; |1340| 
        MOV AR1, *AR3(#62) ; |1340| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1343,column 3,is_stmt
        MOV *SP(#8), AR1 ; |1343| 
        BCC $C$L93,AR1 == #0 ; |1343| 
                                        ; branchcc occurs ; |1343| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1345,column 4,is_stmt
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_getAtaErrorNo")
	.dwattr $C$DW$194, DW_AT_TI_call

        CALL #_getAtaErrorNo ; |1345| 
||      MOV AR1, T0

                                        ; call occurs [#_getAtaErrorNo] ; |1345| 
        MOV T0, *SP(#7) ; |1345| 
$C$L93:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1349,column 5,is_stmt
        MOV *SP(#7), T0 ; |1349| 
$C$L94:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1350,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$177, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$177, DW_AT_TI_end_line(0x546)
	.dwattr $C$DW$177, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$177

	.sect	".text"
	.global	_MMC_read_CID

$C$DW$196	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_read_CID")
	.dwattr $C$DW$196, DW_AT_low_pc(_MMC_read_CID)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_MMC_read_CID")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$196, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x581)
	.dwattr $C$DW$196, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1411,column 1,is_stmt,address _MMC_read_CID

	.dwfde $C$DW$CIE, _MMC_read_CID
$C$DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg17]
$C$DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_read_CID                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_read_CID:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1417,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1419,column 5,is_stmt

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1419| 

        CMPU AC1 == AC0, TC1 ; |1419| 
        BCC $C$L95,TC1 ; |1419| 
                                        ; branchcc occurs ; |1419| 
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1419| 
        BCC $C$L95,TC1 ; |1419| 
                                        ; branchcc occurs ; |1419| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1419| 
        BCC $C$L96,TC1 ; |1419| 
                                        ; branchcc occurs ; |1419| 
$C$L95:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1423,column 3,is_stmt
        MOV #768, T0 ; |1423| 
        B $C$L99  ; |1423| 
                                        ; branch occurs ; |1423| 
$C$L96:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1426,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1428,column 2,is_stmt
        MOV #0, *SP(#9) ; |1428| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1429,column 6,is_stmt
        MOV #7, *SP(#8) ; |1429| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1429,column 18,is_stmt
        MOV *SP(#8), AR1 ; |1429| 
        BCC $C$L98,AR1 < #0 ; |1429| 
                                        ; branchcc occurs ; |1429| 
$C$L97:    
$C$DW$L$_MMC_read_CID$6$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1431,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |1431| 
        ADD #1, T0, AR2 ; |1431| 
        AADD AR1, AR3 ; |1431| 
        MOV *AR3(#53), AR1 ; |1431| 
        MOV AR2, *SP(#9) ; |1431| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(T0) ; |1431| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1429,column 31,is_stmt
        SUB #1, *SP(#8) ; |1429| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1429,column 18,is_stmt
        MOV *SP(#8), AR1 ; |1429| 
        BCC $C$L97,AR1 >= #0 ; |1429| 
                                        ; branchcc occurs ; |1429| 
$C$DW$L$_MMC_read_CID$6$E:
$C$L98:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1434,column 5,is_stmt
        MOV #0, T0
$C$L99:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1435,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$206	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$206, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L97:1:1714639446")
	.dwattr $C$DW$206, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$206, DW_AT_TI_begin_line(0x595)
	.dwattr $C$DW$206, DW_AT_TI_end_line(0x598)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_MMC_read_CID$6$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_MMC_read_CID$6$E)
	.dwendtag $C$DW$206

	.dwattr $C$DW$196, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x59b)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".text"
	.global	_MMC_read_CSD

$C$DW$208	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_read_CSD")
	.dwattr $C$DW$208, DW_AT_low_pc(_MMC_read_CSD)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_MMC_read_CSD")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$208, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$208, DW_AT_TI_begin_line(0x5d6)
	.dwattr $C$DW$208, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1496,column 1,is_stmt,address _MMC_read_CSD

	.dwfde $C$DW$CIE, _MMC_read_CSD
$C$DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg17]
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_read_CSD                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_read_CSD:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("pMediaState")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_pMediaState")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1503,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1505,column 5,is_stmt

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1505| 

        CMPU AC1 == AC0, TC1 ; |1505| 
        BCC $C$L100,TC1 ; |1505| 
                                        ; branchcc occurs ; |1505| 
        MOV dbl(*AR3), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1505| 
        BCC $C$L100,TC1 ; |1505| 
                                        ; branchcc occurs ; |1505| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1505| 
        BCC $C$L101,TC1 ; |1505| 
                                        ; branchcc occurs ; |1505| 
$C$L100:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1509,column 3,is_stmt
        MOV #768, T0 ; |1509| 
        B $C$L104 ; |1509| 
                                        ; branch occurs ; |1509| 
$C$L101:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1512,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1514,column 2,is_stmt
        MOV #0, *SP(#9) ; |1514| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1515,column 6,is_stmt
        MOV #7, *SP(#8) ; |1515| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1515,column 18,is_stmt
        MOV *SP(#8), AR1 ; |1515| 
        BCC $C$L103,AR1 < #0 ; |1515| 
                                        ; branchcc occurs ; |1515| 
$C$L102:    
$C$DW$L$_MMC_read_CSD$6$B:
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1517,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |1517| 
        ADD #1, T0, AR2 ; |1517| 
        AADD AR1, AR3 ; |1517| 
        MOV *AR3(#53), AR1 ; |1517| 
        MOV AR2, *SP(#9) ; |1517| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(T0) ; |1517| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1515,column 31,is_stmt
        SUB #1, *SP(#8) ; |1515| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1515,column 18,is_stmt
        MOV *SP(#8), AR1 ; |1515| 
        BCC $C$L102,AR1 >= #0 ; |1515| 
                                        ; branchcc occurs ; |1515| 
$C$DW$L$_MMC_read_CSD$6$E:
$C$L103:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1520,column 5,is_stmt
        MOV #0, T0
$C$L104:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1521,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$218	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$218, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd_ataIf.asm:$C$L102:1:1714639446")
	.dwattr $C$DW$218, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x5eb)
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x5ee)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_MMC_read_CSD$6$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_MMC_read_CSD$6$E)
	.dwendtag $C$DW$218

	.dwattr $C$DW$208, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x5f1)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text"
	.global	_MMC_writeSectorFlush

$C$DW$220	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_writeSectorFlush")
	.dwattr $C$DW$220, DW_AT_low_pc(_MMC_writeSectorFlush)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_MMC_writeSectorFlush")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$220, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x61e)
	.dwattr $C$DW$220, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1567,column 1,is_stmt,address _MMC_writeSectorFlush

	.dwfde $C$DW$CIE, _MMC_writeSectorFlush
$C$DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_writeSectorFlush                                         *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_writeSectorFlush:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1568,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1569,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$220, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x621)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text"
	.global	_MMC_commandReadyStatusCheck

$C$DW$224	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_commandReadyStatusCheck")
	.dwattr $C$DW$224, DW_AT_low_pc(_MMC_commandReadyStatusCheck)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_MMC_commandReadyStatusCheck")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$224, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x64f)
	.dwattr $C$DW$224, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1616,column 1,is_stmt,address _MMC_commandReadyStatusCheck

	.dwfde $C$DW$CIE, _MMC_commandReadyStatusCheck
$C$DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_commandReadyStatusCheck                                  *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_commandReadyStatusCheck:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1617,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1618,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$224, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x652)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text"
	.global	_MMC_dataReadyStatusCheck

$C$DW$228	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_dataReadyStatusCheck")
	.dwattr $C$DW$228, DW_AT_low_pc(_MMC_dataReadyStatusCheck)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_MMC_dataReadyStatusCheck")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$228, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x67f)
	.dwattr $C$DW$228, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1664,column 1,is_stmt,address _MMC_dataReadyStatusCheck

	.dwfde $C$DW$CIE, _MMC_dataReadyStatusCheck
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_dataReadyStatusCheck                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_dataReadyStatusCheck:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1665,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1666,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$228, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x682)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text"
	.global	_MMC_busyStatusCheck

$C$DW$232	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_busyStatusCheck")
	.dwattr $C$DW$232, DW_AT_low_pc(_MMC_busyStatusCheck)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_MMC_busyStatusCheck")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$232, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$232, DW_AT_TI_begin_line(0x6af)
	.dwattr $C$DW$232, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1712,column 1,is_stmt,address _MMC_busyStatusCheck

	.dwfde $C$DW$CIE, _MMC_busyStatusCheck
$C$DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_busyStatusCheck                                          *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_busyStatusCheck:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1713,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1714,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$232, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x6b2)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text"
	.global	_MMC_getSerialID

$C$DW$236	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getSerialID")
	.dwattr $C$DW$236, DW_AT_low_pc(_MMC_getSerialID)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_MMC_getSerialID")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$236, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x6e3)
	.dwattr $C$DW$236, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1765,column 1,is_stmt,address _MMC_getSerialID

	.dwfde $C$DW$CIE, _MMC_getSerialID
$C$DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg17]
$C$DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSerID")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_pSerID")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getSerialID                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getSerialID:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("pSerID")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_pSerID")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1766,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1767,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$236, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x6e7)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$236

	.sect	".text"
	.global	_MMC_file_system_format

$C$DW$242	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_file_system_format")
	.dwattr $C$DW$242, DW_AT_low_pc(_MMC_file_system_format)
	.dwattr $C$DW$242, DW_AT_high_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_MMC_file_system_format")
	.dwattr $C$DW$242, DW_AT_external
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$242, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0x715)
	.dwattr $C$DW$242, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$242, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1814,column 1,is_stmt,address _MMC_file_system_format

	.dwfde $C$DW$CIE, _MMC_file_system_format
$C$DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_file_system_format                                       *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_file_system_format:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1815,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1816,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$242, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x718)
	.dwattr $C$DW$242, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$242

	.sect	".text"
	.global	_MMC_reset

$C$DW$246	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_reset")
	.dwattr $C$DW$246, DW_AT_low_pc(_MMC_reset)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_MMC_reset")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$246, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x745)
	.dwattr $C$DW$246, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1862,column 1,is_stmt,address _MMC_reset

	.dwfde $C$DW$CIE, _MMC_reset
$C$DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$248	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1863,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1864,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$246, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x748)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text"
	.global	_MMC_get_time

$C$DW$250	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_get_time")
	.dwattr $C$DW$250, DW_AT_low_pc(_MMC_get_time)
	.dwattr $C$DW$250, DW_AT_high_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_MMC_get_time")
	.dwattr $C$DW$250, DW_AT_external
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$250, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$250, DW_AT_TI_begin_line(0x773)
	.dwattr $C$DW$250, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$250, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1908,column 1,is_stmt,address _MMC_get_time

	.dwfde $C$DW$CIE, _MMC_get_time
;*******************************************************************************
;* FUNCTION NAME: MMC_get_time                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_get_time:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1909,column 3,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1910,column 1,is_stmt
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$250, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$250, DW_AT_TI_end_line(0x776)
	.dwattr $C$DW$250, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$250

	.sect	".text"
	.global	_MMC_get_mod_time

$C$DW$252	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_get_mod_time")
	.dwattr $C$DW$252, DW_AT_low_pc(_MMC_get_mod_time)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_MMC_get_mod_time")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$252, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$252, DW_AT_TI_begin_line(0x7a1)
	.dwattr $C$DW$252, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1954,column 1,is_stmt,address _MMC_get_mod_time

	.dwfde $C$DW$CIE, _MMC_get_mod_time
;*******************************************************************************
;* FUNCTION NAME: MMC_get_mod_time                                             *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_get_mod_time:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1955,column 3,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 1956,column 1,is_stmt
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$252, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x7a4)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

	.sect	".text"
	.global	_MMC_get_date

$C$DW$254	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_get_date")
	.dwattr $C$DW$254, DW_AT_low_pc(_MMC_get_date)
	.dwattr $C$DW$254, DW_AT_high_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_MMC_get_date")
	.dwattr $C$DW$254, DW_AT_external
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$254, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$254, DW_AT_TI_begin_line(0x7d0)
	.dwattr $C$DW$254, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$254, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2001,column 1,is_stmt,address _MMC_get_date

	.dwfde $C$DW$CIE, _MMC_get_date
;*******************************************************************************
;* FUNCTION NAME: MMC_get_date                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_get_date:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2002,column 3,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2003,column 1,is_stmt
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$254, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$254, DW_AT_TI_end_line(0x7d3)
	.dwattr $C$DW$254, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$254

	.sect	".text"
	.global	_MMC_get_mod_date

$C$DW$256	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_get_mod_date")
	.dwattr $C$DW$256, DW_AT_low_pc(_MMC_get_mod_date)
	.dwattr $C$DW$256, DW_AT_high_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_MMC_get_mod_date")
	.dwattr $C$DW$256, DW_AT_external
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$256, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x7fe)
	.dwattr $C$DW$256, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$256, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2047,column 1,is_stmt,address _MMC_get_mod_date

	.dwfde $C$DW$CIE, _MMC_get_mod_date
;*******************************************************************************
;* FUNCTION NAME: MMC_get_mod_date                                             *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_get_mod_date:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2048,column 3,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2049,column 1,is_stmt
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$256, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x801)
	.dwattr $C$DW$256, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$256

	.sect	".text"
	.global	_MMC_flushFat

$C$DW$258	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_flushFat")
	.dwattr $C$DW$258, DW_AT_low_pc(_MMC_flushFat)
	.dwattr $C$DW$258, DW_AT_high_pc(0x00)
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_MMC_flushFat")
	.dwattr $C$DW$258, DW_AT_external
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$258, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$258, DW_AT_TI_begin_line(0x82d)
	.dwattr $C$DW$258, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$258, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2094,column 1,is_stmt,address _MMC_flushFat

	.dwfde $C$DW$CIE, _MMC_flushFat
$C$DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_flushFat                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_flushFat:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2095,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2096,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$258, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$258, DW_AT_TI_end_line(0x830)
	.dwattr $C$DW$258, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$258

	.sect	".text"

$C$DW$262	.dwtag  DW_TAG_subprogram, DW_AT_name("getAtaErrorNo")
	.dwattr $C$DW$262, DW_AT_low_pc(_getAtaErrorNo)
	.dwattr $C$DW$262, DW_AT_high_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_getAtaErrorNo")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$262, DW_AT_TI_begin_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x859)
	.dwattr $C$DW$262, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$262, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2138,column 1,is_stmt,address _getAtaErrorNo

	.dwfde $C$DW$CIE, _getAtaErrorNo
$C$DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_name("result")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: getAtaErrorNo                                                *
;*                                                                             *
;*   Function Uses Regs : T0,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_getAtaErrorNo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |2138| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2139,column 2,is_stmt
        CMP *SP(#0) == #-10, TC1 ; |2139| 
        BCC $C$L105,!TC1 ; |2139| 
                                        ; branchcc occurs ; |2139| 
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2141,column 9,is_stmt
        MOV #4, T0
        B $C$L108 ; |2141| 
                                        ; branch occurs ; |2141| 
$C$L105:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2143,column 10,is_stmt
        CMP *SP(#0) == #-6, TC1 ; |2143| 
        BCC $C$L106,TC1 ; |2143| 
                                        ; branchcc occurs ; |2143| 
        CMP *SP(#0) == #-5, TC1 ; |2143| 
        BCC $C$L107,!TC1 ; |2143| 
                                        ; branchcc occurs ; |2143| 
$C$L106:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2145,column 9,is_stmt
        MOV #768, T0 ; |2145| 
        B $C$L108 ; |2145| 
                                        ; branch occurs ; |2145| 
$C$L107:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2149,column 9,is_stmt
        MOV #1, T0
$C$L108:    
	.dwpsn	file "src/csl_mmcsd_ataIf.c",line 2151,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$262, DW_AT_TI_end_file("src/csl_mmcsd_ataIf.c")
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x867)
	.dwattr $C$DW$262, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$262

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_MMC_read
	.global	_MMC_write

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$266	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CARD_NONE"), DW_AT_const_value(0x00)
$C$DW$267	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SD_CARD"), DW_AT_const_value(0x01)
$C$DW$268	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMC_CARD"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CardType")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$269	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN0"), DW_AT_const_value(0x00)
$C$DW$270	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN1"), DW_AT_const_value(0x01)
$C$DW$271	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN2"), DW_AT_const_value(0x02)
$C$DW$272	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN3"), DW_AT_const_value(0x03)
$C$DW$273	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN4"), DW_AT_const_value(0x04)
$C$DW$274	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN5"), DW_AT_const_value(0x05)
$C$DW$275	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN6"), DW_AT_const_value(0x06)
$C$DW$276	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN7"), DW_AT_const_value(0x07)
$C$DW$277	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN8"), DW_AT_const_value(0x08)
$C$DW$278	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN9"), DW_AT_const_value(0x09)
$C$DW$279	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN10"), DW_AT_const_value(0x0a)
$C$DW$280	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN11"), DW_AT_const_value(0x0b)
$C$DW$281	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN12"), DW_AT_const_value(0x0c)
$C$DW$282	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN13"), DW_AT_const_value(0x0d)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN14"), DW_AT_const_value(0x0e)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN15"), DW_AT_const_value(0x0f)
$C$DW$285	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN_INV"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$53

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanNum")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$286	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE0"), DW_AT_const_value(0x00)
$C$DW$287	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE1"), DW_AT_const_value(0x01)
$C$DW$288	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE2"), DW_AT_const_value(0x02)
$C$DW$289	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE3"), DW_AT_const_value(0x03)
$C$DW$290	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINEINV"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$55

$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEngineId")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$291	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_READ"), DW_AT_const_value(0x00)
$C$DW$292	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_WRITE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanDir")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_SOFTWARE_TRIGGER"), DW_AT_const_value(0x00)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVENT_TRIGGER"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$59

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATriggerType")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_IO_MEMORY"), DW_AT_const_value(0x00)
$C$DW$296	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_MEMORY"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATransferType")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$297	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$298	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$63

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAInterruptState")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$66	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$299	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_DISABLE"), DW_AT_const_value(0x00)
$C$DW$300	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$66

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAPingPongMode")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)

$C$DW$T$68	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$301	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_DISABLE"), DW_AT_const_value(0x00)
$C$DW$302	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAAutoReloadMode")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$303	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_1WORD"), DW_AT_const_value(0x00)
$C$DW$304	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_2WORD"), DW_AT_const_value(0x01)
$C$DW$305	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_4WORD"), DW_AT_const_value(0x02)
$C$DW$306	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_8WORD"), DW_AT_const_value(0x03)
$C$DW$307	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_16WORD"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$70

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATxBurstLen")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)

$C$DW$T$72	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$308	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_NONE"), DW_AT_const_value(0x00)
$C$DW$309	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_TX"), DW_AT_const_value(0x01)
$C$DW$310	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_RX"), DW_AT_const_value(0x02)
$C$DW$311	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_TX"), DW_AT_const_value(0x01)
$C$DW$312	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_RX"), DW_AT_const_value(0x02)
$C$DW$313	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_TX"), DW_AT_const_value(0x01)
$C$DW$314	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_RX"), DW_AT_const_value(0x02)
$C$DW$315	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_TX"), DW_AT_const_value(0x04)
$C$DW$316	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_RX"), DW_AT_const_value(0x05)
$C$DW$317	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TX"), DW_AT_const_value(0x01)
$C$DW$318	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RX"), DW_AT_const_value(0x02)
$C$DW$319	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TXA"), DW_AT_const_value(0x03)
$C$DW$320	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RXA"), DW_AT_const_value(0x04)
$C$DW$321	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_TX"), DW_AT_const_value(0x05)
$C$DW$322	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_RX"), DW_AT_const_value(0x06)
$C$DW$323	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_TX"), DW_AT_const_value(0x07)
$C$DW$324	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_RX"), DW_AT_const_value(0x08)
$C$DW$325	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER0"), DW_AT_const_value(0x0c)
$C$DW$326	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER1"), DW_AT_const_value(0x0d)
$C$DW$327	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER2"), DW_AT_const_value(0x0e)
$C$DW$328	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_TX"), DW_AT_const_value(0x05)
$C$DW$329	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_RX"), DW_AT_const_value(0x06)
$C$DW$330	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_TX"), DW_AT_const_value(0x01)
$C$DW$331	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_RX"), DW_AT_const_value(0x02)
$C$DW$332	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_SAR_AD"), DW_AT_const_value(0x03)
$C$DW$333	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_RX"), DW_AT_const_value(0x03)
$C$DW$334	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_TX"), DW_AT_const_value(0x04)
$C$DW$335	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_RX"), DW_AT_const_value(0x09)
$C$DW$336	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_TX"), DW_AT_const_value(0x0a)
$C$DW$337	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_RX"), DW_AT_const_value(0x0b)
$C$DW$338	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_TX"), DW_AT_const_value(0x0f)
$C$DW$339	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_INVALID"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$72

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEvtType")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$340	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$341	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$342	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_DMA"), DW_AT_const_value(0x02)
$C$DW$343	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_NONE"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$85

$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDOpMode")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$344	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ENDIAN_LITTLE"), DW_AT_const_value(0x00)
$C$DW$345	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ENDIAN_BIG"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdEndianMode")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x75)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_name("MMCCTL")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_MMCCTL")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_name("RSVD0")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$348, DW_AT_name("MMCCLK")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_MMCCLK")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$349, DW_AT_name("RSVD1")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$350, DW_AT_name("MMCST0")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_MMCST0")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$351, DW_AT_name("RSVD2")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$352, DW_AT_name("MMCST1")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_MMCST1")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("RSVD3")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$354, DW_AT_name("MMCIM")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_MMCIM")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$355, DW_AT_name("RSVD4")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$356, DW_AT_name("MMCTOR")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_MMCTOR")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_name("RSVD5")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$358, DW_AT_name("MMCTOD")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_MMCTOD")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$359, DW_AT_name("RSVD6")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$360, DW_AT_name("MMCBLEN")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_MMCBLEN")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("RSVD7")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$362, DW_AT_name("MMCNBLK")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_MMCNBLK")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$363, DW_AT_name("RSVD8")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$364, DW_AT_name("MMCNBLC")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_MMCNBLC")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$365, DW_AT_name("RSVD9")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$366, DW_AT_name("MMCDRR1")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_MMCDRR1")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$367, DW_AT_name("MMCDRR2")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_MMCDRR2")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$368, DW_AT_name("RSVD10")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$369, DW_AT_name("MMCDXR1")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_MMCDXR1")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$370, DW_AT_name("MMCDXR2")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_MMCDXR2")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$371, DW_AT_name("RSVD11")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$372, DW_AT_name("MMCCMD1")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_MMCCMD1")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$373, DW_AT_name("MMCCMD2")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_MMCCMD2")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$374, DW_AT_name("RSVD12")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$375, DW_AT_name("MMCARG1")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_MMCARG1")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$376, DW_AT_name("MMCARG2")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_MMCARG2")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$377, DW_AT_name("RSVD13")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$378, DW_AT_name("MMCRSP0")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_MMCRSP0")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$379, DW_AT_name("MMCRSP1")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_MMCRSP1")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$380, DW_AT_name("RSVD14")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$381, DW_AT_name("MMCRSP2")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_MMCRSP2")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$382, DW_AT_name("MMCRSP3")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_MMCRSP3")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$383, DW_AT_name("RSVD15")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$384, DW_AT_name("MMCRSP4")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_MMCRSP4")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$385, DW_AT_name("MMCRSP5")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_MMCRSP5")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$386, DW_AT_name("RSVD16")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$387, DW_AT_name("MMCRSP6")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_MMCRSP6")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$388, DW_AT_name("MMCRSP7")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_MMCRSP7")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$389, DW_AT_name("RSVD17")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$390, DW_AT_name("MMCDRSP")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_MMCDRSP")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$391, DW_AT_name("RSVD18")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$392, DW_AT_name("MMCCIDX")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_MMCCIDX")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$393, DW_AT_name("RSVD19")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$394, DW_AT_name("SDIOCTL")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_SDIOCTL")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("RSVD20")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_name("SDIOST0")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_SDIOST0")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$397, DW_AT_name("RSVD21")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x69]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$398, DW_AT_name("SDIOIEN")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_SDIOIEN")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$399, DW_AT_name("RSVD22")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x6d]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$400, DW_AT_name("SDIOIST")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_SDIOIST")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$401, DW_AT_name("RSVD23")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$402, DW_AT_name("MMCFIFOCTL")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_MMCFIFOCTL")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegs")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$403	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$77)
$C$DW$404	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$403)
$C$DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$404)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x10)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegsOvly")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x10)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("mfgId")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_mfgId")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("oemAppId")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_oemAppId")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$407, DW_AT_name("productName")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_productName")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("productRev")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_productRev")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$409, DW_AT_name("serialNumber")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_serialNumber")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("month")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_month")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("year")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_year")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("checksum")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardIdObj")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x22)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("csdStruct")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_csdStruct")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("mmcProt")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_mmcProt")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("taac")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_taac")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("nsac")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_nsac")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("tranSpeed")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_tranSpeed")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("ccc")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_ccc")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("readBlLen")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_readBlLen")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("readBlPartial")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_readBlPartial")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("writeBlkMisalign")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_writeBlkMisalign")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("readBlkMisalign")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_readBlkMisalign")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("dsrImp")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_dsrImp")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("cSize")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_cSize")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("vddRCurrMin")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_vddRCurrMin")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("vddRCurrMax")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_vddRCurrMax")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("vddWCurrMin")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_vddWCurrMin")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("vddWCurrMax")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_vddWCurrMax")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("cSizeMult")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_cSizeMult")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("eraseBlkEnable")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_eraseBlkEnable")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("eraseGrpSize")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_eraseGrpSize")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("eraseGrpMult")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_eraseGrpMult")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("wpGrpSize")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_wpGrpSize")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("wpGrpEnable")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_wpGrpEnable")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("defaultEcc")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_defaultEcc")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("r2wFactor")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_r2wFactor")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("writeBlLen")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_writeBlLen")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("writeBlPartial")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_writeBlPartial")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("contProtApp")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_contProtApp")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("fileFmtGrp")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_fileFmtGrp")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("copyFlag")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_copyFlag")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("permWriteProtect")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_permWriteProtect")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("tmpWriteProtect")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_tmpWriteProtect")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("fileFmt")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_fileFmt")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("ecc")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_ecc")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("crc")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_crc")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardCsdObj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x17)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x06)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("securitySysId")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_securitySysId")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("securitySysVers")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_securitySysVers")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("maxLicenses")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_maxLicenses")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$450, DW_AT_name("xStatus")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_xStatus")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardXCsdObj")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x1e)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("rca")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("ST0")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_ST0")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("ST1")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_ST1")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("cardIndex")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_cardIndex")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$455, DW_AT_name("maxXfrRate")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_maxXfrRate")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$456, DW_AT_name("readAccessTime")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_readAccessTime")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$457, DW_AT_name("cardCapacity")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_cardCapacity")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$458, DW_AT_name("blockLength")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_blockLength")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$459, DW_AT_name("totalSectors")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_totalSectors")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$460, DW_AT_name("lastAddrRead")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_lastAddrRead")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$461, DW_AT_name("lastAddrWritten")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_lastAddrWritten")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$462, DW_AT_name("cardType")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_cardType")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$463, DW_AT_name("cid")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_cid")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$464, DW_AT_name("csd")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_csd")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$465, DW_AT_name("xcsd")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_xcsd")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$466, DW_AT_name("sdHcDetected")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_sdHcDetected")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$467, DW_AT_name("mmcHcDetected")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_mmcHcDetected")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$468, DW_AT_name("cardAtaFsOpen")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_cardAtaFsOpen")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("cardMscStatus")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_cardMscStatus")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardObj")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x18)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$470, DW_AT_name("isr")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_isr")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCallBackObj")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x66)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$471, DW_AT_name("DMACH0SSAL")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_DMACH0SSAL")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$472, DW_AT_name("DMACH0SSAU")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_DMACH0SSAU")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$473, DW_AT_name("DMACH0DSAL")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_DMACH0DSAL")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$474, DW_AT_name("DMACH0DSAU")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_DMACH0DSAU")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$475, DW_AT_name("DMACH0TCR1")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_DMACH0TCR1")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_name("DMACH0TCR2")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_DMACH0TCR2")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$477, DW_AT_name("RSVD0")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$478, DW_AT_name("DMACH1SSAL")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_DMACH1SSAL")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$479, DW_AT_name("DMACH1SSAU")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_DMACH1SSAU")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$480, DW_AT_name("DMACH1DSAL")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_DMACH1DSAL")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$481, DW_AT_name("DMACH1DSAU")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_DMACH1DSAU")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$482, DW_AT_name("DMACH1TCR1")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_DMACH1TCR1")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$483, DW_AT_name("DMACH1TCR2")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_DMACH1TCR2")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$484, DW_AT_name("RSVD1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$485, DW_AT_name("DMACH2SSAL")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_DMACH2SSAL")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$486, DW_AT_name("DMACH2SSAU")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_DMACH2SSAU")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$487, DW_AT_name("DMACH2DSAL")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_DMACH2DSAL")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$488, DW_AT_name("DMACH2DSAU")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_DMACH2DSAU")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$489, DW_AT_name("DMACH2TCR1")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_DMACH2TCR1")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_name("DMACH2TCR2")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_DMACH2TCR2")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$491, DW_AT_name("RSVD2")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$492, DW_AT_name("DMACH3SSAL")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_DMACH3SSAL")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_name("DMACH3SSAU")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_DMACH3SSAU")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_name("DMACH3DSAL")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_DMACH3DSAL")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("DMACH3DSAU")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_DMACH3DSAU")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x63]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_name("DMACH3TCR1")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_DMACH3TCR1")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_name("DMACH3TCR2")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_DMACH3TCR2")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegs")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$498	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$49)
$C$DW$499	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$498)
$C$DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$499)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x10)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegsOvly")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x09)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$500, DW_AT_name("dmaRegs")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_dmaRegs")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$501, DW_AT_name("chanNum")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$502, DW_AT_name("dmaInstNum")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_dmaInstNum")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$503, DW_AT_name("isChanFree")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_isChanFree")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$504, DW_AT_name("chanDir")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$505, DW_AT_name("trigger")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$506, DW_AT_name("trfType")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$507, DW_AT_name("dmaInt")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$508, DW_AT_name("pingPongEnabled")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_pingPongEnabled")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$65

$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_ChannelObj")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Handle")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x0e)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$509, DW_AT_name("pingPongMode")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_pingPongMode")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$510, DW_AT_name("autoMode")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_autoMode")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$511, DW_AT_name("burstLen")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_burstLen")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$512, DW_AT_name("trigger")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$513, DW_AT_name("dmaEvt")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_dmaEvt")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$514, DW_AT_name("dmaInt")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$515, DW_AT_name("chanDir")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$516, DW_AT_name("trfType")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("dataLen")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_dataLen")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$518, DW_AT_name("srcAddr")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$519, DW_AT_name("destAddr")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Config")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x08)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("slice127_112")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_slice127_112")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("slice111_96")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_slice111_96")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("slice95_80")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_slice95_80")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("slice79_64")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_slice79_64")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("slice63_48")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_slice63_48")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("slice47_32")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_slice47_32")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("slice31_16")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_slice31_16")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("slice15_0")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_slice15_0")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$75

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDCidStruct")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x08)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("slice127_112")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_slice127_112")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("slice111_96")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_slice111_96")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("slice95_80")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_slice95_80")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("slice79_64")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_slice79_64")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("slice63_48")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_slice63_48")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("slice47_32")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_slice47_32")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("slice31_16")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_slice31_16")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("slice15_0")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_slice15_0")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDCsdStruct")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x40)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$536, DW_AT_name("mmcRegs")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_mmcRegs")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$537, DW_AT_name("cardObj")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_cardObj")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("numCardsActive")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_numCardsActive")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$539, DW_AT_name("callBackTbl")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_callBackTbl")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$540, DW_AT_name("opMode")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$541, DW_AT_name("hDmaWrite")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_hDmaWrite")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$542, DW_AT_name("hDmaRead")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_hDmaRead")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$543, DW_AT_name("dmaWriteCfg")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_dmaWriteCfg")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$544, DW_AT_name("dmaReadCfg")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_dmaReadCfg")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$545, DW_AT_name("dataTransferCallback")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_dataTransferCallback")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$546, DW_AT_name("isCallbackSet")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_isCallbackSet")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$547, DW_AT_name("cidSliceInfo")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_cidSliceInfo")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$548, DW_AT_name("csdSliceInfo")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_csdSliceInfo")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$549, DW_AT_name("readEndianMode")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$550, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("blockLen")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_blockLen")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$98

$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCControllerObj")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x17)
$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdHandle")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("AtaMMCState")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x14)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$552, DW_AT_name("hMmcSd")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$553, DW_AT_name("pDrive")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_pDrive")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$554, DW_AT_name("pMmcSdptr")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_pMmcSdptr")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$555, DW_AT_name("pReadBuf")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$556, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$557, DW_AT_name("currentsectorR")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_currentsectorR")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$558, DW_AT_name("currentwordR")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_currentwordR")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$559, DW_AT_name("currentsectorWr")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_currentsectorWr")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$560, DW_AT_name("currentwordWr")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_currentwordWr")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$561, DW_AT_name("mmcsdCallBack")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_mmcsdCallBack")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$104

$C$DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("AtaMMCState")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x17)

$C$DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$131, DW_AT_name("AtaStateStruct")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x44)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$562, DW_AT_name("BootPhySector")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_BootPhySector")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$563, DW_AT_name("FatType")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_FatType")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$564, DW_AT_name("WordsPerLogSector")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_WordsPerLogSector")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$565, DW_AT_name("LogSectorsPerCluster")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_LogSectorsPerCluster")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$566, DW_AT_name("RootDirEntries")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_RootDirEntries")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$567, DW_AT_name("LogSectorsPerFat")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_LogSectorsPerFat")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$568, DW_AT_name("FirstFatSector")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_FirstFatSector")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$569, DW_AT_name("RootDirSector")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_RootDirSector")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$570, DW_AT_name("FirstDataSector")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_FirstDataSector")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$571, DW_AT_name("TotalSectors")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_TotalSectors")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$572, DW_AT_name("Data")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$573, DW_AT_name("CurrentWord")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_CurrentWord")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$574, DW_AT_name("CurrentPhySector")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_CurrentPhySector")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$575, DW_AT_name("WordsPerCluster")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_WordsPerCluster")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$576, DW_AT_name("NumberOfFats")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_NumberOfFats")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$577, DW_AT_name("MFWFlag")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_MFWFlag")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$578, DW_AT_name("Err_Status")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_Err_Status")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$579, DW_AT_name("pAtaMediaState")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_pAtaMediaState")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$580, DW_AT_name("AtaReset")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_AtaReset")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$581, DW_AT_name("AtaCommandReadyStatusCheck")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_AtaCommandReadyStatusCheck")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$582, DW_AT_name("AtaBusyStatusCheck")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_AtaBusyStatusCheck")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$583, DW_AT_name("AtaGetSerialID")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_AtaGetSerialID")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$584, DW_AT_name("AtaIssueReadCommand")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_AtaIssueReadCommand")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$585, DW_AT_name("AtaDataReadyStatusCheck")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_AtaDataReadyStatusCheck")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$586, DW_AT_name("AtaReadNextWord")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_AtaReadNextWord")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$587, DW_AT_name("AtaReadNextWord1")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_AtaReadNextWord1")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$588, DW_AT_name("AtaReadNextNWords")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_AtaReadNextNWords")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$589, DW_AT_name("AtaWriteSector")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_AtaWriteSector")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$590, DW_AT_name("AtaWriteSectorFlush")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_AtaWriteSectorFlush")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$591, DW_AT_name("AtaInitAtaMediaState")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_AtaInitAtaMediaState")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$592, DW_AT_name("AtaFlushFat")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_AtaFlushFat")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$593, DW_AT_name("AtaErrorCallback")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_AtaErrorCallback")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$594, DW_AT_name("AtaFileSystemType")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_AtaFileSystemType")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$595, DW_AT_name("get_mod_time")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_get_mod_time")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$596, DW_AT_name("get_mod_date")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_get_mod_date")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$597, DW_AT_name("get_time")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_get_time")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$598, DW_AT_name("get_date")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_get_date")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$599, DW_AT_name("_AtaWriteBuffer")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("__AtaWriteBuffer")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$600, DW_AT_name("_AtaWriteCurrentPhySector")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("__AtaWriteCurrentPhySector")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$131

$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("AtaState")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCallBackPtr")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x18)
$C$DW$601	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$601, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$45


$C$DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$602	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$91

$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCDataTxferCallBackPtr")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
$C$DW$603	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$T$125

$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x20)
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
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x06)
$C$DW$604	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$604, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$27

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("AtaUint16")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("AtaError")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)

$C$DW$T$108	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$605	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$108

$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x20)

$C$DW$T$117	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
$C$DW$606	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$105)
$C$DW$607	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$3)
$C$DW$608	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$101)
	.dwendtag $C$DW$T$117

$C$DW$T$118	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_address_class(0x20)

$C$DW$T$119	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$609	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$3)
$C$DW$610	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$102)
	.dwendtag $C$DW$T$119

$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)

$C$DW$T$121	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
$C$DW$611	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$3)
$C$DW$612	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$102)
$C$DW$613	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$101)
	.dwendtag $C$DW$T$121

$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x20)

$C$DW$T$123	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$614	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$105)
$C$DW$615	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$3)
$C$DW$616	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$102)
$C$DW$617	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$123

$C$DW$T$124	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x20)
$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x17)

$C$DW$T$112	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x10)
$C$DW$618	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$618, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$112

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("AtaSerialID")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
$C$DW$T$114	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x17)

$C$DW$T$115	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$619	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$3)
$C$DW$620	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$114)
	.dwendtag $C$DW$T$115

$C$DW$T$116	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_address_class(0x20)

$C$DW$T$127	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
$C$DW$621	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$127

$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)

$C$DW$T$129	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
$C$DW$T$130	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_address_class(0x20)
$C$DW$622	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$622)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$623	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$623, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$624	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$624, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x07)
$C$DW$625	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$625, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x13)
$C$DW$626	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$626, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$24


$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x1a)
$C$DW$627	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$627, DW_AT_upper_bound(0x19)
	.dwendtag $C$DW$T$47

$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x17)

$C$DW$T$151	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x800)
$C$DW$628	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$628, DW_AT_upper_bound(0x7ff)
	.dwendtag $C$DW$T$151


$C$DW$T$152	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x100)
$C$DW$629	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$629, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$152


$C$DW$T$153	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x400)
$C$DW$630	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$630, DW_AT_upper_bound(0x3ff)
	.dwendtag $C$DW$T$153

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$110	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$631	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$110

$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x20)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x17)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("AtaSector")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)

$C$DW$T$154	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x10)
$C$DW$632	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$632, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$154

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("AtaUint32")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
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

$C$DW$633	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$633, DW_AT_location[DW_OP_reg0]
$C$DW$634	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$634, DW_AT_location[DW_OP_reg1]
$C$DW$635	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$635, DW_AT_location[DW_OP_reg2]
$C$DW$636	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$636, DW_AT_location[DW_OP_reg3]
$C$DW$637	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$637, DW_AT_location[DW_OP_reg4]
$C$DW$638	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg5]
$C$DW$639	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg6]
$C$DW$640	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg7]
$C$DW$641	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg8]
$C$DW$642	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg9]
$C$DW$643	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_reg10]
$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg11]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg12]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg13]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg14]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_reg15]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_reg16]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_reg17]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_reg18]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg19]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_reg20]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_reg21]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg22]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_reg23]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_reg24]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_reg25]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_reg26]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_reg27]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_reg28]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_reg29]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_reg30]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg31]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_regx 0x20]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_regx 0x21]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_regx 0x22]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_regx 0x23]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_regx 0x24]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_regx 0x25]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_regx 0x26]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_regx 0x27]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_regx 0x28]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_regx 0x29]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x30]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x31]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x32]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x33]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x34]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x35]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x36]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x37]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x38]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x39]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_regx 0x40]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_regx 0x41]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_regx 0x42]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_regx 0x43]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_regx 0x44]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_regx 0x45]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_regx 0x46]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_regx 0x47]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_regx 0x48]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_regx 0x49]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x50]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x51]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x52]
$C$DW$716	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_regx 0x53]
$C$DW$717	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_regx 0x54]
$C$DW$718	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_regx 0x55]
$C$DW$719	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_regx 0x56]
$C$DW$720	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_regx 0x57]
$C$DW$721	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_regx 0x58]
$C$DW$722	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_regx 0x59]
$C$DW$723	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$724	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

