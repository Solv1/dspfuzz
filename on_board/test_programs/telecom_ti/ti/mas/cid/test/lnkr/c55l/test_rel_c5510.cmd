
-c  /* ROM autoinitialization module */
-a  /* LINK USING C CONVENTIONS      */

-l ../../sdk/lib/sdk_c.a55L
-l ../../util/lib/util_c.a55L
-l ../../util/lib/util_a.a55L
-l ../../cid/lib/cid_c.a55L

-stack    0x1000
-heap     0x4000
-sysstack 0x1000

MEMORY
{
  IMEM1 : origin = 0x00100, length = 0x1FF00
  IMEM2 : origin = 0x20000, length = 0x20000
  IMEM3 : origin = 0x40000, length = 0x10000
  EMEM1 : origin = 0x50000, length = 0x30000
}
													   
/* SPECIFY THE SECTIONS ALLOCATION INTO MEMORY */

SECTIONS
{
  vectors   > IMEM3
  
  .text     > IMEM2
  .cinit    > IMEM1
  .switch   > IMEM1
                                              
  .bss      > IMEM1
  .const    > IMEM1
  .sysmem   > IMEM1
  .stack    > IMEM1
  .sysstack > IMEM1
  .data     > IMEM1
  .cio      > IMEM1
  .far      > IMEM1
}

../../sdk/lib/sdk_c.a55L
../../util/lib/util_c.a55L
../../util/lib/util_a.a55L
../../cid/lib/cid_c.a55L
