****************************************************************************************************
*
*	Date   : 03/10/2000
*       Author : Herve DANIEL (h-daniel@ti.com)
*
*       Test Cases Macros :
*		_Hwa_ME_8
*		_Hwa_ME_4
*		_Hwa_ME_2
*		_Hwa_ME_1
*
****************************************************************************************************


****************************************************************************************************
*	_Hwa_ME_8 : Computes 3 errors with d=8
****************************************************************************************************
_Hwa_ME_8	.macro  

			.noremark 5579

;			BRC0 = #6		; repeat 7 times			
			AC0,AC1 = copr(#0x5c,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
       			localrepeat {
			repeat(#0x5)		; repeat 6 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*(AR0+DR0),*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x5)		; repeat 6 times
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*(AR1+DR0),coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
                        repeat(#0x7)		; repeat 8 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x3)		; repeat 4 times
                        AC0,AC1 = copr(#0x4d,AC0,AC1,*AR0,*AR1+,coef(*CDP))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
			AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))    
			
			.remark 5579
		
		.endm

****************************************************************************************************
*	_Hwa_ME_4 : Computes 3 errors with d=4
****************************************************************************************************
_Hwa_ME_4	.macro  

			.noremark 5579

			;BRC0 = #6
			AC0,AC1 = copr(#0x5a,AC0,AC1,*AR0+,*AR1,coef(*CDP+)) 			
            AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))  
            AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+)) 
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			localrepeat { 
			repeat(#0x5)		; repeat 6 times
            AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))     
			AC0,AC1 = copr(#0x4e,AC0,AC1,*(AR0+DR0),*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))		
			repeat(#0x5)		; repeat 6 times
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))            
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*(AR1+DR0),coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
            repeat(#0x7)		; repeat 8 times
            AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
            AC0,AC1 = copr(#0x4d,AC0,AC1,*AR0,*AR1+,coef(*CDP))
            AC0,AC1 = copr(#0x4d,AC0,AC1,*AR0,*AR1+,coef(*CDP))
            AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
            AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
			AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))

			.remark 5579
		.endm

****************************************************************************************************
*	_Hwa_ME_2 : Computes 3 errors with d=2
****************************************************************************************************
_Hwa_ME_2	.macro        

			.noremark 5579

;		BRC1 = #6
			AC0,AC1 = copr(#0x58,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			localrepeat {
			repeat(#0x5)		; repeat 6 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*(AR0+DR0),*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x5)		; repeat 6 times
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*(AR1+DR0),coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
                        repeat(#0x7)		; repeat 8 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
                        AC0,AC1 = copr(#0x4d,AC0,AC1,*AR0,*AR1+,coef(*CDP))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
			AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))

			.remark 5579
			
		.endm


****************************************************************************************************
*	_Hwa_ME_1 : Computes 3 errors with d=1
****************************************************************************************************
_Hwa_ME_1	.macro    

			.noremark 5579

;		BRC1 = #6
			AC0,AC1 = copr(#0x54,AC0,AC1,*AR0+,*AR1,coef(*CDP))
                        AC0,AC1 = copr(#0x40,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			localrepeat {
			repeat(#0x4)		; repeat 5 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*(AR0+DR0),*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x4)		; repeat 5 times
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*(AR1+DR0),coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
                        repeat(#0x7)		; repeat 8 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
			AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))
                        
			.remark 5579
			                        
		.endm


