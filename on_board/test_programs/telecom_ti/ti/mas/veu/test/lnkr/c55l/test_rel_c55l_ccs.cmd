/* link files */
-l"../../../../../veu/lib/veu_c.a55L"
-l"../../../../../util/lib/util_a.a55L"
-l"../../../../../util/lib/util_c.a55L"


/* Default flags */
-c                                         /* ROM autoinitialization module */
-a                                         /* LINK USING C CONVENTIONS      */
-stack    0x1000                           /* STACK                         */
-sysstack 0x1000
-heap     0x4000                           /* HEAP                          */


/* SPECIFY THE SYSTEM MEMORY MAP */
MEMORY
{
  SARAM_P1 : origin = 0x10000, length = 0x30000
  DARAM    : origin = 0x02000, length = 0x0E000
  SARAM_P2 : origin = 0x40000, length = 0x08000
  SARAM_P3 : origin = 0x48000, length = 0x08000
}

SECTIONS
{
  .stack    > SARAM_P2
  .sysstack > SARAM_P2
  .text     > SARAM_P1
  .cinit    > SARAM_P2
  .switch   > SARAM_P2
  .bss      > DARAM
  .const    > SARAM_P3
  .data     > DARAM
  .cio      > SARAM_P2
  .sysmem   > SARAM_P2
  .far      > DARAM
}
