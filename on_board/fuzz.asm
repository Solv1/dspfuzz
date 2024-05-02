;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Mon Apr 01 11:35:23 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:none 
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
;*   Debug Info         : No Debug Info                                        *
;*******************************************************************************
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_coverage_map+0,24
	.field  	0,8
	.field	0,16			; _coverage_map[0] @ 0
$C$IR_1:	.set	1

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_crash_buffer+0,24
	.field  	0,8
	.field	0,16			; _crash_buffer[0] @ 0
$C$IR_2:	.set	1

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_crash_iterator+0,24
	.field  	0,8
	.field	0,16			; _crash_iterator @ 0

	.sect	".cinit"
	.align	1
	.field  	$C$IR_3,16
	.field  	_hang_buffer+0,24
	.field  	0,8
	.field	0,16			; _hang_buffer[0] @ 0
$C$IR_3:	.set	1

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_hang_iterator+0,24
	.field  	0,8
	.field	0,16			; _hang_iterator @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_sut_start_address+0,24
	.field  	0,8
	.field	0,32			; _sut_start_address @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isHang+0,24
	.field  	0,8
	.field	0,16			; _isHang @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isIncreasing+0,24
	.field  	0,8
	.field	0,16			; _isIncreasing @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isBufferFull+0,24
	.field  	0,8
	.field	0,16			; _isBufferFull @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_cpuCycleCount+0,24
	.field  	0,8
	.field	0,32			; _cpuCycleCount @ 0

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_count+0,24
	.field  	0,8
	.field	0,32			; _count @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isTest+0,24
	.field  	0,8
	.field	1,16			; _isTest @ 0

	.global	_seed_corpus
	.bss	_seed_corpus,20,0,0
	.global	_coverage_map
	.bss	_coverage_map,16411,0,0
	.global	_crash_buffer
	.bss	_crash_buffer,50,0,0
	.global	_crash_iterator
	.bss	_crash_iterator,1,0,0
	.global	_hang_buffer
	.bss	_hang_buffer,50,0,0
	.global	_hang_iterator
	.bss	_hang_iterator,1,0,0
	.global	_sut_start_address
	.bss	_sut_start_address,2,0,2
	.global	_isHang
	.bss	_isHang,1,0,0
	.global	_isIncreasing
	.bss	_isIncreasing,1,0,0
	.global	_isBufferFull
	.bss	_isBufferFull,1,0,0
	.global	_saved_context
	.bss	_saved_context,16,0,2
	.global	_cpuCycleCount
	.bss	_cpuCycleCount,2,0,2
	.global	_sysClk
	.bss	_sysClk,2,0,2
	.global	_count
	.bss	_count,2,0,2
	.global	_isTest
	.bss	_isTest,1,0,0
;	C:\ti\ccs1250\ccs\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\Users\\garci\\AppData\\Local\\Temp\\1468012 
	.sect	".text:retain"
	.global	_fuzzer_isr
;*******************************************************************************
;* INTERRUPT NAME: fuzzer_isr                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,XAR0,AR1,  *
;*                        AR2,AR3,AR4,SP,BKC,BK03,BK47,ST1,ST2,ST3,BRC0,RSA0,  *
;*                        REA0,BRS1,BRC1,RSA1,REA1,CSR,RPTC,CDP,TRN0,TRN1,     *
;*                        BSA01,BSA23,BSA45,BSA67,BSAC,CARRY,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Save On Entry Regs : AC0,AC0,AC1,AC1,AC2,AC2,AC3,AC3,T0,T1,AR0,AR1,AR2,   *
;*                        AR3,AR4,BKC,BK03,BK47,BRC0,RSA0,REA0,BRS1,BRC1,RSA1, *
;*                        REA1,CSR,RPTC,CDP,TRN0,TRN1,BSA01,BSA23,BSA45,BSA67, *
;*                        BSAC                                                 *
;*******************************************************************************
_fuzzer_isr:
        AND #0xf91f, mmap(ST1_55)
        OR #0x4100, mmap(ST1_55)
        AND #0xfa00, mmap(ST2_55)
        OR #0x8000, mmap(ST2_55)
        PSH mmap(ST3_55)
        PSH dbl(AC0)
        PSH mmap(AC0G)
        PSH dbl(AC1)
        PSH mmap(AC1G)
        PSH dbl(AC2)
        PSH mmap(AC2G)
        PSH dbl(AC3)
        PSH mmap(AC3G)
        PSH T1, T0
        PSHBOTH XAR0
        PSHBOTH XAR1
        PSHBOTH XAR2
        PSHBOTH XAR3
        PSHBOTH XAR4
        PSH mmap(BKC)
        PSH mmap(BK03)
        PSH mmap(BK47)
        PSH mmap(BRC0)
        PSH mmap(RSA0L)
        PSH mmap(RSA0H)
        PSH mmap(REA0L)
        PSH mmap(REA0H)
        PSH mmap(BRS1)
        PSH mmap(BRC1)
        PSH mmap(RSA1L)
        PSH mmap(RSA1H)
        PSH mmap(REA1L)
        PSH mmap(REA1H)
        PSH mmap(CSR)
        PSH mmap(RPTC)
        PSHBOTH XCDP
        PSH mmap(TRN0)
        PSH mmap(TRN1)
        PSH mmap(BSA01)
        PSH mmap(BSA23)
        PSH mmap(BSA45)
        PSH mmap(BSA67)
        PSH mmap(BSAC)
        AMAR *SP(#0), XAR1
        AND #0xfffe, mmap(SP)
        BSET ST3_SMUL

        PSH AR1
||      BCLR ST3_SATA

        AADD #-1, SP

        CALL #_IRQ_clear ; |63| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_clear] ; |63| 
        MOV #1, *port(#7188) ; |64| 
        MOV dbl(*(#_count)), AC0 ; |65| 
        ADD #1, AC0 ; |65| 
        MOV AC0, dbl(*(#_count)) ; |65| 
        NOP
        NOP
        MOV #5000, AC1 ; |66| 
        MOV dbl(*(#_count)), AC0 ; |66| 
        CALL #__remul ; |66| 
                                        ; call occurs [#__remul] ; |66| 
        BCC $C$L1,AC0 != #0 ; |66| 
                                        ; branchcc occurs ; |66| 
        MOV #0, AC0 ; |68| 
        MOV #1, *(#_isHang) ; |67| 
        AMOV #_saved_context, XAR0 ; |69| 
        MOV AC0, dbl(*(#_count)) ; |68| 

        CALL #_longjmp ; |69| 
||      MOV #1, T0

                                        ; call occurs [#_longjmp] ; |69| 
$C$L1:    
        AADD #1, SP
        POP mmap(SP)
        POP mmap(BSAC)
        POP mmap(BSA67)
        POP mmap(BSA45)
        POP mmap(BSA23)
        POP mmap(BSA01)
        POP mmap(TRN1)
        POP mmap(TRN0)
        POPBOTH XCDP
        POP mmap(RPTC)
        POP mmap(CSR)
        POP mmap(REA1H)
        POP mmap(REA1L)
        POP mmap(RSA1H)
        POP mmap(RSA1L)
        POP mmap(BRC1)
        POP mmap(BRS1)
        POP mmap(REA0H)
        POP mmap(REA0L)
        POP mmap(RSA0H)
        POP mmap(RSA0L)
        POP mmap(BRC0)
        POP mmap(BK47)
        POP mmap(BK03)
        POP mmap(BKC)
        POPBOTH XAR4
        POPBOTH XAR3
        POPBOTH XAR2
        POPBOTH XAR1
        POPBOTH XAR0
        POP T1,T0
        POP mmap(AC3G)
        POP dbl(AC3)
        POP mmap(AC2G)
        POP dbl(AC2)
        POP mmap(AC1G)
        POP dbl(AC1)
        POP mmap(AC0G)
        POP dbl(AC0)
        POP mmap(ST3_55)
        RETI
                                        ; return occurs
	.sect	".text"
	.global	_start_timer
;*******************************************************************************
;* FUNCTION NAME: start_timer                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_start_timer:
        AADD #-11, SP
        MOV XAR0, dbl(*SP(#0))
        AMAR *SP(#2), XAR1
        AMAR *SP(#8), XAR0

        CALL #_GPT_open ; |84| 
||      MOV #0, T0

                                        ; call occurs [#_GPT_open] ; |84| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR0, dbl(*AR3)
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
        CALL #_GPT_reset ; |96| 
                                        ; call occurs [#_GPT_reset] ; |96| 
        MOV T0, *SP(#2) ; |96| 
        CALL #_IRQ_clearAll ; |109| 
                                        ; call occurs [#_IRQ_clearAll] ; |109| 
        CALL #_IRQ_disableAll ; |111| 
                                        ; call occurs [#_IRQ_disableAll] ; |111| 
        MOV #(_VECSTART >> 16) << #16, AC0 ; |113| 
        OR #(_VECSTART & 0xffff), AC0, AC0 ; |113| 
        CALL #_IRQ_setVecs ; |113| 
                                        ; call occurs [#_IRQ_setVecs] ; |113| 
        MOV #(_fuzzer_isr >> 16) << #16, AC0 ; |114| 
        OR #(_fuzzer_isr & 0xffff), AC0, AC0 ; |114| 

        CALL #_IRQ_plug ; |114| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_plug] ; |114| 

        CALL #_IRQ_enable ; |115| 
||      MOV #4, T0

                                        ; call occurs [#_IRQ_enable] ; |115| 
        MOV #1, *SP(#3) ; |117| 
        MOV #1, *SP(#5) ; |118| 
        MOV dbl(*(#_sysClk)), AC0 ; |120| 

        SFTL AC0, #-2, AC0 ; |120| 
||      MOV #1, *SP(#4) ; |119| 

        MOV AC0, *SP(#6) ; |120| 
        MOV #0, *SP(#7) ; |121| 
        MOV dbl(*SP(#0)), XAR3
        AMAR *SP(#3), XAR1
        MOV dbl(*AR3), XAR0
        CALL #_GPT_config ; |123| 
                                        ; call occurs [#_GPT_config] ; |123| 
        MOV T0, *SP(#2) ; |123| 
        CALL #_IRQ_globalEnable ; |136| 
                                        ; call occurs [#_IRQ_globalEnable] ; |136| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
        CALL #_GPT_start ; |138| 
                                        ; call occurs [#_GPT_start] ; |138| 
        AADD #11, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_stop_timer
;*******************************************************************************
;* FUNCTION NAME: stop_timer                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_stop_timer:
        AADD #-3, SP
        MOV XAR0, dbl(*SP(#0))
        CALL #_IRQ_globalDisable ; |151| 
                                        ; call occurs [#_IRQ_globalDisable] ; |151| 
        CALL #_IRQ_clearAll ; |153| 
                                        ; call occurs [#_IRQ_clearAll] ; |153| 
        CALL #_IRQ_disableAll ; |155| 
                                        ; call occurs [#_IRQ_disableAll] ; |155| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
        CALL #_GPT_stop ; |157| 
                                        ; call occurs [#_GPT_stop] ; |157| 
        MOV T0, *SP(#2) ; |157| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR0
        CALL #_GPT_reset ; |170| 
                                        ; call occurs [#_GPT_reset] ; |170| 
        MOV T0, *SP(#2) ; |170| 
        AADD #3, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_setup
;*******************************************************************************
;* FUNCTION NAME: setup                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup:
        AADD #-1, SP
        AMOV #_coverage_map, XAR0 ; |182| 
        MOV #16411, T1 ; |182| 

        CALL #_memset ; |182| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |182| 
        MOV #50, T1 ; |183| 
        AMOV #_hang_buffer, XAR0 ; |183| 

        CALL #_memset ; |183| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |183| 
        MOV #50, T1 ; |184| 
        AMOV #_crash_buffer, XAR0 ; |184| 

        CALL #_memset ; |184| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |184| 
        MOV #(_intial_fuzz >> 16) << #16, AC0 ; |186| 
        OR #(_intial_fuzz & 0xffff), AC0, AC0 ; |186| 
        MOV AC0, dbl(*(#_sut_start_address)) ; |186| 
        MOV #(_coverage_map >> 16) << #16, AC0 ; |188| 
        OR #(_coverage_map & 0xffff), AC0, AC0 ; |188| 
        BCC $C$L2,AC0 == #0 ; |188| 
                                        ; branchcc occurs ; |188| 
        MOV #(_hang_buffer >> 16) << #16, AC0 ; |188| 
        OR #(_hang_buffer & 0xffff), AC0, AC0 ; |188| 
        BCC $C$L2,AC0 == #0 ; |188| 
                                        ; branchcc occurs ; |188| 
        MOV #(_crash_buffer >> 16) << #16, AC0 ; |188| 
        OR #(_crash_buffer & 0xffff), AC0, AC0 ; |188| 
        BCC $C$L3,AC0 != #0 ; |188| 
                                        ; branchcc occurs ; |188| 
$C$L2:    
        MOV #-1, T0
        B $C$L4   ; |192| 
                                        ; branch occurs ; |192| 
$C$L3:    
        MOV #0, T0
$C$L4:    
        AADD #1, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_mutator
;*******************************************************************************
;* FUNCTION NAME: mutator                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mutator:
        AADD #-3, SP
        MOV T0, *SP(#0) ; |201| 
        CMP *SP(#0) == #5, TC1 ; |207| 
        BCC $C$L6,!TC1 ; |207| 
                                        ; branchcc occurs ; |207| 
        MOV #0, *SP(#1) ; |210| 

        MOV *SP(#1), AR1 ; |210| 
||      MOV #10, AR2

        CMP AR1 >= AR2, TC1 ; |210| 
        BCC $C$L6,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$L5:    
        CALL #_clock ; |211| 
                                        ; call occurs [#_clock] ; |211| 
        MOV AC0, *SP(#2) ; |211| 

        CALL #_srand ; |212| 
||      MOV AC0, T0 ; |211| 

                                        ; call occurs [#_srand] ; |212| 
        CALL #_rand ; |213| 
                                        ; call occurs [#_rand] ; |213| 

        MOV *SP(#1), T0 ; |213| 
||      MOV T0, AR1 ; |213| 

        SFTL T0, #1 ; |213| 
        AMOV #_seed_corpus, XAR3 ; |213| 
        MOV AR1, *AR3(T0) ; |213| 
        ADD #1, *SP(#1) ; |210| 

        MOV *SP(#1), AR1 ; |210| 
||      MOV #10, AR2

        CMP AR1 < AR2, TC1 ; |210| 
        BCC $C$L5,TC1 ; |210| 
                                        ; branchcc occurs ; |210| 
$C$L6:    
        MOV #0, T0
        AADD #3, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_track_coverage
;*******************************************************************************
;* FUNCTION NAME: track_coverage                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,AR3,XAR3,SP,CARRY,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_track_coverage:
        AADD #-5, SP
        MOV AC0, dbl(*SP(#0)) ; |226| 
        MOV #-1 << #16, AC1 ; |234| 
        MOV dbl(*(#_sut_start_address)), AC0 ; |232| 
        MOV #0, *SP(#2) ; |229| 
        OR #0x8036, AC1, AC1 ; |234| 
        MOV #0, *SP(#3) ; |230| 
        SUB AC0, dbl(*SP(#0)), AC0 ; |232| 
        MOV AC0, dbl(*SP(#0)) ; |232| 
        MOV dbl(*SP(#0)), AC0 ; |234| 
        CALL #__remul ; |234| 
                                        ; call occurs [#__remul] ; |234| 
        MOV AC0, AR1 ; |234| 

        SFTL AR1, #-1 ; |236| 
||      MOV AC0, *SP(#2) ; |234| 

        MOV AR1, *SP(#2) ; |236| 
        MOV dbl(*SP(#0)), AC0 ; |238| 
        SFTL AC0, #-1 ; |238| 
        AND #0x0001, AC0, AC0 ; |238| 
        MOV AC0, AR1 ; |238| 
        MOV AC0, *SP(#3) ; |238| 
        MOV *SP(#2), T0 ; |241| 
        AMOV #_coverage_map, XAR3 ; |241| 
        XCC AR1 != #0 ||
           OR #0x0100, *AR3(T0) ; |241| 
        MOV *SP(#2), T0 ; |244| 
        AMOV #_coverage_map, XAR3 ; |244| 
        XCC AR1 == #0 ||
           OR #0x0001, *AR3(T0) ; |244| 
        AADD #5, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_coverage_log
;*******************************************************************************
;* FUNCTION NAME: coverage_log                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,CARRY,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_coverage_log:
        MOV #0, AC0 ; |256| 
        AADD #-5, SP
        MOV AC0, dbl(*SP(#0)) ; |256| 
        MOV AC0, dbl(*SP(#2)) ; |257| is this nessacry?
	MOV RETA, dbl(*SP(#02h)) ; saving the return address

	PSH T2 ;
	PSH T3 ;
	PSHBOTH XAR5 ;
	PSHBOTH XAR6 ;
	PSHBOTH XAR7 ;
	AADD #5, SP ;

        MOV dbl(*SP(#2)), AC0 ; |269| 
        SUB #4, AC0 ; |269| 
        MOV AC0, dbl(*SP(#0)) ; |269| 
        MOV dbl(*SP(#0)), AC0 ; |270| 

        SFTL AC0, #-1 ; |270| 
||      MOV #8224, T0 ; |271| 

        MOV AC0, dbl(*SP(#0)) ; |270| 
        MOV dbl(*SP(#0)), XAR0

        CALL #_memset ; |271| 
||      MOV #2, T1

                                        ; call occurs [#_memset] ; |271| 
        MOV dbl(*SP(#2)), AC0 ; |278| 
        CALL #_track_coverage ; |278| 
                                        ; call occurs [#_track_coverage] ; |278| 
	AADD #-5, SP ;
	POPBOTH XAR7 ;
	POPBOTH XAR6 ;
	POPBOTH XAR5 ;
	POP T3 ;
	POP T2 ;
        MOV #1, *(#_isIncreasing) ; |287| 
        AADD #5, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_handle_results
;*******************************************************************************
;* FUNCTION NAME: handle_results                                               *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_handle_results:
        AADD #-3, SP
        MOV *(#_hang_iterator), AR1 ; |302| 
        MOV #50, AR2 ; |302| 

        CMPU AR1 > AR2, TC1 ; |302| 
||      MOV T1, *SP(#1) ; |301| 

        MOV T0, *SP(#0) ; |301| 
        BCC $C$L7,TC1 ; |302| 
                                        ; branchcc occurs ; |302| 
        MOV *(#_crash_iterator), AR1 ; |302| 
        CMPU AR1 <= AR2, TC1 ; |302| 
        BCC $C$L8,TC1 ; |302| 
                                        ; branchcc occurs ; |302| 
$C$L7:    
        MOV #1, *(#_isBufferFull) ; |303| 
$C$L8:    
        CMP *SP(#1) == #2, TC1 ; |306| 
        BCC $C$L9,!TC1 ; |306| 
                                        ; branchcc occurs ; |306| 
        MOV *(#_hang_iterator), AR1 ; |307| 
        MOV *SP(#0), T0 ; |307| 
        SFTL T0, #1 ; |307| 
        AMOV #_hang_buffer, XAR3 ; |307| 
        AMOV #_seed_corpus, XAR2 ; |307| 
        AADD AR1, AR3 ; |307| 
        MOV *AR2(T0), *AR3 ; |307| 
        ADD #1, *(#_hang_iterator) ; |308| 
        B $C$L11  ; |309| 
                                        ; branch occurs ; |309| 
$C$L9:    
        CMP *SP(#1) == #1, TC1 ; |310| 
        BCC $C$L10,!TC1 ; |310| 
                                        ; branchcc occurs ; |310| 
        MOV *(#_crash_iterator), AR1 ; |311| 
        MOV *SP(#0), T0 ; |311| 
        SFTL T0, #1 ; |311| 
        AMOV #_crash_buffer, XAR3 ; |311| 
        AMOV #_seed_corpus, XAR2 ; |311| 
        AADD AR1, AR3 ; |311| 
        MOV *AR2(T0), *AR3 ; |311| 
        ADD #1, *(#_crash_iterator) ; |312| 
        B $C$L11  ; |313| 
                                        ; branch occurs ; |313| 
$C$L10:    
        CMP *SP(#1) == #4, TC1 ; |314| 
        BCC $C$L11,!TC1 ; |314| 
                                        ; branchcc occurs ; |314| 
        MOV *SP(#0), T0 ; |315| 
        SFTL T0, #1 ; |315| 
        AMOV #(_seed_corpus+1), XAR3 ; |315| 
        MOV #1, *AR3(T0) ; |315| 
$C$L11:    
        AADD #3, SP
        RET
                                        ; return occurs
	.sect	".text"
	.global	_fuzz_loop
;*******************************************************************************
;* FUNCTION NAME: fuzz_loop                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fuzz_loop:
        AADD #-11, SP
        MOV #0, *(#_isBufferFull) ; |333| 
        MOV #0, *SP(#6) ; |330| 
        CALL #_setup ; |336| 
                                        ; call occurs [#_setup] ; |336| 
$C$L12:    

        CALL #_mutator ; |340| 
||      MOV #5, T0

                                        ; call occurs [#_mutator] ; |340| 
        MOV #0, *SP(#7) ; |343| 

        MOV *SP(#7), AR1 ; |343| 
||      MOV #10, AR2

        CMPU AR1 >= AR2, TC1 ; |343| 
        BCC $C$L19,TC1 ; |343| 
                                        ; branchcc occurs ; |343| 
$C$L13:    
        MOV *(#_isBufferFull), AR1 ; |344| 
        BCC $C$L15,AR1 == #0 ; |344| 
                                        ; branchcc occurs ; |344| 
$C$L14:    
        B $C$L14  ; |345| 
                                        ; branch occurs ; |345| 
$C$L15:    
        AMOV #$C$FSL1, XAR3 ; |348| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |348| 
        SFTL T0, #1 ; |348| 
        AMOV #_seed_corpus, XAR3 ; |348| 
        MOV *AR3(T0), AR1 ; |348| 
        MOV AR1, *SP(#2) ; |348| 
        MOV *SP(#6), AR1 ; |348| 
        MOV AR1, *SP(#3) ; |348| 
        CALL #_printf ; |348| 
                                        ; call occurs [#_printf] ; |348| 
        AMOV #_saved_context, XAR0 ; |350| 
        CALL #__setjmp ; |350| 
                                        ; call occurs [#__setjmp] ; |350| 
        AMAR *SP(#4), XAR0
        CALL #_start_timer ; |352| 
                                        ; call occurs [#_start_timer] ; |352| 
        MOV *(#_isHang), AR1 ; |354| 
        BCC $C$L16,AR1 != #0 ; |354| 
                                        ; branchcc occurs ; |354| 
        MOV *SP(#7), AR1 ; |356| 
        SFTL AR1, #1 ; |356| 
        AMOV #_seed_corpus, XAR0 ; |356| 
        AADD AR1, AR0 ; |356| 

        CALL #_intial_fuzz ; |356| 
||      MOV #1, T0

                                        ; call occurs [#_intial_fuzz] ; |356| 
        MOV T0, *SP(#8) ; |356| 
        AMAR *SP(#4), XAR0
        CALL #_stop_timer ; |357| 
                                        ; call occurs [#_stop_timer] ; |357| 
        CMP *SP(#8) == #-1, TC1 ; |359| 
        BCC $C$L17,!TC1 ; |359| 
                                        ; branchcc occurs ; |359| 
        AMOV #$C$FSL2, XAR3 ; |360| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |360| 
        SFTL T0, #1 ; |360| 
        AMOV #_seed_corpus, XAR3 ; |360| 
        MOV *AR3(T0), AR1 ; |360| 
        MOV AR1, *SP(#2) ; |360| 
        CALL #_printf ; |360| 
                                        ; call occurs [#_printf] ; |360| 
        MOV *SP(#7), T0 ; |361| 

        CALL #_handle_results ; |361| 
||      MOV #1, T1

                                        ; call occurs [#_handle_results] ; |361| 
        B $C$L17  ; |363| 
                                        ; branch occurs ; |363| 
$C$L16:    
        AMAR *SP(#4), XAR0
        CALL #_stop_timer ; |366| 
                                        ; call occurs [#_stop_timer] ; |366| 
        AMOV #$C$FSL3, XAR3 ; |367| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |367| 
        SFTL T0, #1 ; |367| 
        AMOV #_seed_corpus, XAR3 ; |367| 
        MOV *AR3(T0), AR1 ; |367| 
        MOV AR1, *SP(#2) ; |367| 
        CALL #_printf ; |367| 
                                        ; call occurs [#_printf] ; |367| 
        MOV *SP(#7), T0 ; |368| 

        CALL #_handle_results ; |368| 
||      MOV #2, T1

                                        ; call occurs [#_handle_results] ; |368| 
        MOV #0, *(#_isHang) ; |369| 
$C$L17:    
        MOV *(#_isIncreasing), AR1 ; |371| 
        BCC $C$L18,AR1 == #0 ; |371| 
                                        ; branchcc occurs ; |371| 
        AMOV #$C$FSL4, XAR3 ; |373| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), T0 ; |373| 
        SFTL T0, #1 ; |373| 
        AMOV #_seed_corpus, XAR3 ; |373| 
        MOV *AR3(T0), AR1 ; |373| 
        MOV AR1, *SP(#2) ; |373| 
        CALL #_printf ; |373| 
                                        ; call occurs [#_printf] ; |373| 
        MOV *SP(#7), T0 ; |374| 

        CALL #_handle_results ; |374| 
||      MOV #4, T1

                                        ; call occurs [#_handle_results] ; |374| 
        MOV #0, *(#_isIncreasing) ; |375| 
$C$L18:    
        ADD #1, *SP(#6) ; |379| 
        ADD #1, *SP(#7) ; |343| 

        MOV *SP(#7), AR1 ; |343| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |343| 
        BCC $C$L13,TC1 ; |343| 
                                        ; branchcc occurs ; |343| 
$C$L19:    
        MOV *SP(#6), T0 ; |382| 
        MOV #20, T1 ; |382| 
        CALL #__remu ; |382| 
                                        ; call occurs [#__remu] ; |382| 
        BCC $C$L12,T0 != #0 ; |382| 
                                        ; branchcc occurs ; |382| 
        AMOV #$C$FSL5, XAR3 ; |383| 
        MOV XAR3, dbl(*SP(#0))
        CALL #_printf ; |383| 
                                        ; call occurs [#_printf] ; |383| 
        MOV #50, AR2 ; |384| 
        MOV #0, *SP(#7) ; |384| 
        MOV *SP(#7), AR1 ; |384| 
        CMPU AR1 >= AR2, TC1 ; |384| 
        BCC $C$L21,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L20:    
        MOV *SP(#7), T0 ; |385| 
        AMOV #_hang_buffer, XAR3 ; |385| 
        MOV *AR3(T0), AR1 ; |385| 
        MOV AR1, *SP(#9) ; |385| 
        BCC $C$L21,AR1 == #0 ; |386| 
                                        ; branchcc occurs ; |386| 
        AMOV #$C$FSL6, XAR3 ; |390| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#9), AR1 ; |390| 
        MOV AR1, *SP(#2) ; |390| 
        CALL #_printf ; |390| 
                                        ; call occurs [#_printf] ; |390| 
        MOV #50, AR2 ; |384| 
        ADD #1, *SP(#7) ; |384| 
        MOV *SP(#7), AR1 ; |384| 
        CMPU AR1 < AR2, TC1 ; |384| 
        BCC $C$L20,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L21:    
        AMOV #$C$FSL7, XAR3 ; |394| 
        MOV XAR3, dbl(*SP(#0))
        CALL #_printf ; |394| 
                                        ; call occurs [#_printf] ; |394| 
        MOV #50, AR2 ; |395| 
        MOV #0, *SP(#7) ; |395| 
        MOV *SP(#7), AR1 ; |395| 
        CMPU AR1 >= AR2, TC1 ; |395| 
        BCC $C$L12,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
$C$L22:    
        MOV *SP(#7), T0 ; |396| 
        AMOV #_crash_buffer, XAR3 ; |396| 
        MOV *AR3(T0), AR1 ; |396| 
        MOV AR1, *SP(#9) ; |396| 
        BCC $C$L12,AR1 == #0 ; |397| 
                                        ; branchcc occurs ; |397| 
        AMOV #$C$FSL6, XAR3 ; |401| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#9), AR1 ; |401| 
        MOV AR1, *SP(#2) ; |401| 
        CALL #_printf ; |401| 
                                        ; call occurs [#_printf] ; |401| 
        MOV #50, AR2 ; |395| 
        ADD #1, *SP(#7) ; |395| 
        MOV *SP(#7), AR1 ; |395| 
        CMPU AR1 < AR2, TC1 ; |395| 
        BCC $C$L22,TC1 ; |395| 
                                        ; branchcc occurs ; |395| 
        B $C$L12  ; |338| 
                                        ; branch occurs ; |338| 
	.sect	".text"
	.global	_main
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
        AADD #-1, SP
        CALL #_fuzz_loop ; |411| 
                                        ; call occurs [#_fuzz_loop] ; |411| 
        MOV #0, T0
        AADD #1, SP
        RET
                                        ; return occurs
;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	10,"LOG: Trying %d, on loop interation %d ",10,0
	.align	2
$C$FSL2:	.string	"LOG: Found a 'crash' with input %d ",10,0
	.align	2
$C$FSL3:	.string	"LOG: Hang or Stall Detected with input %d ",10,0
	.align	2
$C$FSL4:	.string	"LOG: Interesting Input Increased Coverage %d ",10,0
	.align	2
$C$FSL5:	.string	"LOG: Hanged inputs ",0
	.align	2
$C$FSL6:	.string	"%d ",0
	.align	2
$C$FSL7:	.string	10,"LOG: Crashed inputs ",0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_srand
	.global	_printf
	.global	__setjmp
	.global	_longjmp
	.global	_memset
	.global	_clock
	.global	_GPT_open
	.global	_GPT_reset
	.global	_GPT_start
	.global	_GPT_stop
	.global	_GPT_config
	.global	_IRQ_plug
	.global	_IRQ_clear
	.global	_IRQ_clearAll
	.global	_IRQ_disableAll
	.global	_IRQ_enable
	.global	_IRQ_setVecs
	.global	_IRQ_globalDisable
	.global	_IRQ_globalEnable
	.global	_VECSTART
	.global	_intial_fuzz
	.global	__remul
	.global	__remu
