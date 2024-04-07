;/***********************************************************
;@debrief _coverage_log: inline assembly function for coverage
;@param NONE
;@return NONE
;***********************************************************/

	.global _coverage_log
	.ref _coverage_map, _isIncreasing, _sut_start_address

_coverage_log:
	AADD #-5, SP
	MOV RETA, dbl(*SP(#00h)); ;Saving the return address here
	
	PSH T2;			 		   ;Pushing Register Context to the stack.
	PSH T3;
	PSHBOTH XAR5;
	PSHBOTH XAR6;
	PSHBOTH XAR7;
	AADD #5, SP;
	
	MOV dbl(*SP(#00h)), AC0;		;This is the address of where the coverage_logging function begins in the SUT
	SUB #4, AC0;
	SFTL AC0, #-1;
	MOV AC0, XAR0;					;Do some address calculation magic here ORGIGNAL_ADDRESS - SIZE_OF_INSTURMENTION / 2 to account for data memory and program memory difference.
	

	MOV dbl(*AR0), pair(T0); 		; First four bytes of memory to check AC0 has the memory location of the program.
	ADD #2, AR0;
	MOV *AR0, T2;					;Last two bytes
	SUB #2, AR0;
	MOV #0x20, AR1;

	AND #0x02000, T0;				; The fun stuff compares memory to see if the alignment for the instructions is weird and then correctly sets the high byte or low byte
	XCC T0 != #0 ||					; 20XX XXXX XX20 | 0020 XXXX XXXX 2000
		MOV AR1, low_byte(*AR0);	; The NOP guardrails are here for the program to clear the function safely.
	XCC T0 == #0 ||
		MOV AR1, low_byte(*AR0);
		MOV AR1, high_byte(*AR0);
	ADD #1, AR0;
	MOV AR1, low_byte(*AR0);
	MOV AR1, high_byte(*AR0);
	AND #0x0020, T2;
	ADD #1, AR0;
	XCC T2 != #0
		MOV AR1, high_byte(*AR0);
	XCC T2 == #0 ||
		MOV AR1, low_byte(*AR0);
		MOV AR1, high_byte(*AR0);
	
	MOV dbl(*SP(#00h)), AC0;    	;Return address for hashing function.
    MOV dbl(*(#_sut_start_address)), AC1; ;SUT address offset
    SUB AC1, AC0; 					;Raw Value = Return address - Start address -> AC0
    MOV AC0, AC1; 
    AND #0x7FFF, AC0, AC0; 			;index = raw_value % (MAX_COVERAGE*2) Because MAX_COVERAGE is a power of 2 we can use a & to mimic a modulo -> (i^2 -1)
    SFTL AC0, #-1; 					;This is now the hash map index
    
    SFTL AC1, #-1;
    AND #0x0001, AC1, AC1; 			;byte_index = (address >> 1) % 2

    AMOV #_coverage_map, XAR3;		;Accessing the coverage map at label _coverage_map
    ADD AC0, AR3;
    XCC AC1 != #0 ||
    	OR #0x0100, *AR3;
    XCC AC1 == #0  ||
    	OR #0x0001, *AR3;

    AADD #-5, SP;       ;Restore the Register Context
    POPBOTH XAR7;
    POPBOTH XAR6;
    POPBOTH XAR5;
    POP T3;
    POP T2;

    MOV #1, *(#_isIncreasing);
    
    AADD #5, SP;
    
    RET;


        
    
    
	
