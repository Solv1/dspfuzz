;/***********************************************************
;@debrief _coverage_log: inline assembly function for coverage
;@param NONE
;@return NONE
;***********************************************************/

	.global _coverage_log
	.ref _coverage_map, _cov_function_enter, _sut_start_address, _coverage_map_head;, _iterations

_coverage_log:
	;AADD #-10, SP
	
	PSH T0;
	PSH T1;
	PSH T2;			 		   ;Pushing Register Context to the stack.
	PSH T3;
	PSHBOTH XAR0;
	PSHBOTH XAR1;
	PSHBOTH XAR2;
	PSHBOTH XAR3;
	PSHBOTH XAR4;
	PSHBOTH XAR5;
	PSHBOTH XAR6;
	PSHBOTH XAR7;
	PSHBOTH AC0;
	PSHBOTH AC1;
	PSHBOTH AC2;
	PSHBOTH AC3;


	AADD #-3, SP;
	
	MOV RETA, dbl(*SP(#00h)); ;Saving the return address here
	MOV dbl(*SP(#00h)), AC0;		;This is the address of where the coverage_logging function begins in the SUT
	SUB #4, AC0;
	AND #0x0001, AC0, T0;			; The "FLAG for evenness is stored in AC1
	SFTL AC0, #-1;
	MOV AC0, XAR0;					;Do some address calculation magic here ORGIGNAL_ADDRESS - SIZE_OF_INSTURMENTION / 2 to account for data memory and program memory difference.
	

;	MOV dbl(*AR0), pair(T0); 		; First four bytes of memory to check AC0 has the memory location of the program.
;	ADD #2, AR0;
;	MOV *AR0, T2;					;Last two bytes
;	SUB #2, AR0;
	MOV #0x20, AR1;

;	AND #0x02000, T0;
	BCC even, T0 == #0 					;Mod is odd
odd:
		MOV AR1, low_byte(*AR0);
		;MOV AR1, high_byte(*AR0);
		ADD #1, AR0;
		MOV AR1, high_byte(*AR0);
		MOV AR1, low_byte(*AR0);
		ADD #1, AR0;
		MOV AR1, high_byte(*AR0);
		B map_store;

even:
	;XCC T0 == #0 					; Mod is even
		MOV AR1, low_byte(*AR0);
		MOV AR1, high_byte(*AR0);
		ADD #1, AR0;
		MOV AR1, low_byte(*AR0);
		MOV AR1, high_byte(*AR0);
		ADD #1, AR0;
		;MOV AR1, low_byte(*AR0);
		;MOV AR1, high_byte(*AR0);

map_store:
	MOV dbl(*SP(#00h)), AC0;    	;Return address for hashing function.
	SUB #4, AC0;
    MOV dbl(*(#_sut_start_address)), AC1; ;SUT address offset

	;CMP AC1 > AC0, TC1				;

	;BCC greater, TC1			;
    SUB AC1, AC0; 					;Raw Value = Return address - Start address -> AC0 
    MOV AC0, AC1;					;Offset -> AC0 and AC1
;	B finish

;greater:
;	SUB AC0, AC1;
;	MOV AC1, AC0;
;	B finish

	;Byte Postion in BitMap
    ;SFTL AC0, #-4 					; byte_address = offset >> 4
    ;AMOV #_coverage_map, XAR3;		;Accessing the coverage map at label _coverage_map
    ;ADD AC0, AR3;					; Adding the which byte this to the orginal address

	;Bit Position in BitMap
    ;AND #0xF, AC1, T0				; offset & 15 = bit index
    ;MOV #1, AC2						; Moves 1 into AC3
    ;SFTL AC2, T0					; 1 << index = set_value

	;Setting Bit in the BitMap
    ;MOV AC2, T0						; Move the bit that needs to be set to a temp register
    ;MOV *AR3, AC1					; Move current value @ AR3 to AC1
	;OR T0, AC1						; Set the bit in the byte of the bitmap
	;MOV AC1, *AR3					; Store this change in the bitmap


finish:
	MOV dbl(*(#_coverage_map_head)), XAR2
	MOV AC1, *AR2
	AMAR *AR2+					;Stores the offset in the coverage list.
	MOV XAR2, dbl(*(#_coverage_map_head))
	
	;ADD #1, #_coverage_map_head;				;Increment the head by one to reach the next address.
	MOV #1, *(#_cov_function_enter);

	;Restore the Register Context
    AADD #3, SP;
	
	POPBOTH AC3;
	POPBOTH AC2;
	POPBOTH AC1;
	POPBOTH AC0;
    POPBOTH XAR7;
    POPBOTH XAR6;
    POPBOTH XAR5;
    POPBOTH XAR4;
	POPBOTH XAR3;
	POPBOTH XAR2;
	POPBOTH XAR1;
	POPBOTH XAR0;
    POP T3;
    POP T2;
	POP T1;
	POP T0;
    

    ;AADD #10, SP;
    
    RET;


        
    
    
	