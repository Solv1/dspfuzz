/**********************************************************/
/*                                                        */
/*         LINKER command file for LEAD3 memory map       */
/*                                                        */
/**********************************************************/

-sysstack   0x0400   /* SECONDARY STACK SIZE  */
-heap	    0x6000 
MEMORY
{
    PAGE 0:

        MMR     : origin = 0000000h, length = 00000c0h 
        SPRAM   : origin = 00000c0h, length = 0000040
        DARAM0  : origin = 0000100h, length = 0003F00h
        DARAM1  (RWX): origin = 0004000h, length = 0004000h
        DARAM2 (RWX) : origin = 0008000h, length = 0008000h
        /*DARAM3 (RWX) : origin = 000c000h, length = 0004000h*/

        SARAM01 (RWX) : origin = 0010000h, length = 000c000h
        SARAM3  : origin = 001c000h, length = 0004000h
        SARAM4  : origin = 0020000h, length = 0004000h
        SARAM5  : origin = 0024000h, length = 0024000h	/* A little larger for storing the fuzzer itself */

        CE1     : origin = 0400000h, length = 0400000h
        CE2     : origin = 0800000h, length = 0400000h
        CE3     : origin = 0c00000h, length = 03f8000h

        PDROM   : origin = 0ff8000h, length = 07f00h
        VECS    : origin = 0ffff00h, length = 00100h  /* reset vector */
}	

 
SECTIONS
{
        vectors (NOLOAD) : {} > DARAM0  PAGE 0         /* interrupt vector table */ /* was VECS */
        .cinit   : {} > SARAM01 PAGE 0
        .text    : {} > SARAM01 PAGE 0
        isrs     : {} > SARAM3  PAGE 0
        .stack   : {} > DARAM0  PAGE 0 ALIGN = 4
        .sysstack: {} > DARAM0  PAGE 0 ALIGN = 4
        .sysmem  : {} > DARAM2 PAGE 0 ALIGN = 4
        .data    : {} > SARAM3  PAGE 0        /* force .data to not be on Page 0 */
        //.bss:saram  : {} > DARAM2  PAGE 0     /* must be a different on-chip block than .bss */
        //.bss:saram2 : {} > SARAM3  PAGE 0     /* must be a different on-chip block than .bss */
        //.bss     : {} > SARAM15 PAGE 0      /* for normal testing, move .bss off of DARAM */
        .bss    :  {} > SARAM5        /* for optimal timing tests, put .bss in DARAM */
        .input   : {} > DARAM2  PAGE 0        /* for optimal timing tests, put .input in DARAM */
        .coeffs  : {} > DARAM1  PAGE 0        /* for optimal timing tests, put .coeffs in DARAM */
        .dbuffer : {} > DARAM2  PAGE 0        /* for optimal timing tests, put .dbuffer in DARAM */
        .const   : {} > SARAM5  PAGE 0        
        .cio     : {} > DARAM2  PAGE 0
	.switch  : {} > SARAM5  PAGE 0
	.twiddle : {} > SARAM3  PAGE 0, align(2048)
}
