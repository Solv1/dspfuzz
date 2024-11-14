;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Tue Sep 10 19:12:51 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./telecom/lcdc_panel.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_lcdFontTable+0,24
	.field  	0,8
	.field	0,16			; _lcdFontTable[0] @ 0
	.field	0,16			; _lcdFontTable[1] @ 16
	.field	0,16			; _lcdFontTable[2] @ 32
	.field	0,16			; _lcdFontTable[3] @ 48
	.field	0,16			; _lcdFontTable[4] @ 64
	.field	0,16			; _lcdFontTable[5] @ 80
	.field	0,16			; _lcdFontTable[6] @ 96
	.field	0,16			; _lcdFontTable[7] @ 112
	.field	0,16			; _lcdFontTable[8] @ 128
	.field	0,16			; _lcdFontTable[9] @ 144
	.field	0,16			; _lcdFontTable[10] @ 160
	.field	0,16			; _lcdFontTable[11] @ 176
	.field	0,16			; _lcdFontTable[12] @ 192
	.field	0,16			; _lcdFontTable[13] @ 208
	.field	0,16			; _lcdFontTable[14] @ 224
	.field	0,16			; _lcdFontTable[15] @ 240
	.field	0,16			; _lcdFontTable[16] @ 256
	.field	0,16			; _lcdFontTable[17] @ 272
	.field	126,16			; _lcdFontTable[18] @ 288
	.field	129,16			; _lcdFontTable[19] @ 304
	.field	165,16			; _lcdFontTable[20] @ 320
	.field	129,16			; _lcdFontTable[21] @ 336
	.field	129,16			; _lcdFontTable[22] @ 352
	.field	189,16			; _lcdFontTable[23] @ 368
	.field	153,16			; _lcdFontTable[24] @ 384
	.field	129,16			; _lcdFontTable[25] @ 400
	.field	129,16			; _lcdFontTable[26] @ 416
	.field	126,16			; _lcdFontTable[27] @ 432
	.field	0,16			; _lcdFontTable[28] @ 448
	.field	0,16			; _lcdFontTable[29] @ 464
	.field	0,16			; _lcdFontTable[30] @ 480
	.field	0,16			; _lcdFontTable[31] @ 496
	.field	0,16			; _lcdFontTable[32] @ 512
	.field	0,16			; _lcdFontTable[33] @ 528
	.field	126,16			; _lcdFontTable[34] @ 544
	.field	255,16			; _lcdFontTable[35] @ 560
	.field	219,16			; _lcdFontTable[36] @ 576
	.field	255,16			; _lcdFontTable[37] @ 592
	.field	255,16			; _lcdFontTable[38] @ 608
	.field	195,16			; _lcdFontTable[39] @ 624
	.field	231,16			; _lcdFontTable[40] @ 640
	.field	255,16			; _lcdFontTable[41] @ 656
	.field	255,16			; _lcdFontTable[42] @ 672
	.field	126,16			; _lcdFontTable[43] @ 688
	.field	0,16			; _lcdFontTable[44] @ 704
	.field	0,16			; _lcdFontTable[45] @ 720
	.field	0,16			; _lcdFontTable[46] @ 736
	.field	0,16			; _lcdFontTable[47] @ 752
	.field	0,16			; _lcdFontTable[48] @ 768
	.field	0,16			; _lcdFontTable[49] @ 784
	.field	0,16			; _lcdFontTable[50] @ 800
	.field	0,16			; _lcdFontTable[51] @ 816
	.field	108,16			; _lcdFontTable[52] @ 832
	.field	254,16			; _lcdFontTable[53] @ 848
	.field	254,16			; _lcdFontTable[54] @ 864
	.field	254,16			; _lcdFontTable[55] @ 880
	.field	254,16			; _lcdFontTable[56] @ 896
	.field	124,16			; _lcdFontTable[57] @ 912
	.field	56,16			; _lcdFontTable[58] @ 928
	.field	16,16			; _lcdFontTable[59] @ 944
	.field	0,16			; _lcdFontTable[60] @ 960
	.field	0,16			; _lcdFontTable[61] @ 976
	.field	0,16			; _lcdFontTable[62] @ 992
	.field	0,16			; _lcdFontTable[63] @ 1008
	.field	0,16			; _lcdFontTable[64] @ 1024
	.field	0,16			; _lcdFontTable[65] @ 1040
	.field	0,16			; _lcdFontTable[66] @ 1056
	.field	0,16			; _lcdFontTable[67] @ 1072
	.field	16,16			; _lcdFontTable[68] @ 1088
	.field	56,16			; _lcdFontTable[69] @ 1104
	.field	124,16			; _lcdFontTable[70] @ 1120
	.field	254,16			; _lcdFontTable[71] @ 1136
	.field	124,16			; _lcdFontTable[72] @ 1152
	.field	56,16			; _lcdFontTable[73] @ 1168
	.field	16,16			; _lcdFontTable[74] @ 1184
	.field	0,16			; _lcdFontTable[75] @ 1200
	.field	0,16			; _lcdFontTable[76] @ 1216
	.field	0,16			; _lcdFontTable[77] @ 1232
	.field	0,16			; _lcdFontTable[78] @ 1248
	.field	0,16			; _lcdFontTable[79] @ 1264
	.field	0,16			; _lcdFontTable[80] @ 1280
	.field	0,16			; _lcdFontTable[81] @ 1296
	.field	0,16			; _lcdFontTable[82] @ 1312
	.field	24,16			; _lcdFontTable[83] @ 1328
	.field	60,16			; _lcdFontTable[84] @ 1344
	.field	60,16			; _lcdFontTable[85] @ 1360
	.field	231,16			; _lcdFontTable[86] @ 1376
	.field	231,16			; _lcdFontTable[87] @ 1392
	.field	231,16			; _lcdFontTable[88] @ 1408
	.field	24,16			; _lcdFontTable[89] @ 1424
	.field	24,16			; _lcdFontTable[90] @ 1440
	.field	60,16			; _lcdFontTable[91] @ 1456
	.field	0,16			; _lcdFontTable[92] @ 1472
	.field	0,16			; _lcdFontTable[93] @ 1488
	.field	0,16			; _lcdFontTable[94] @ 1504
	.field	0,16			; _lcdFontTable[95] @ 1520
	.field	0,16			; _lcdFontTable[96] @ 1536
	.field	0,16			; _lcdFontTable[97] @ 1552
	.field	0,16			; _lcdFontTable[98] @ 1568
	.field	24,16			; _lcdFontTable[99] @ 1584
	.field	60,16			; _lcdFontTable[100] @ 1600
	.field	126,16			; _lcdFontTable[101] @ 1616
	.field	255,16			; _lcdFontTable[102] @ 1632
	.field	255,16			; _lcdFontTable[103] @ 1648
	.field	126,16			; _lcdFontTable[104] @ 1664
	.field	24,16			; _lcdFontTable[105] @ 1680
	.field	24,16			; _lcdFontTable[106] @ 1696
	.field	60,16			; _lcdFontTable[107] @ 1712
	.field	0,16			; _lcdFontTable[108] @ 1728
	.field	0,16			; _lcdFontTable[109] @ 1744
	.field	0,16			; _lcdFontTable[110] @ 1760
	.field	0,16			; _lcdFontTable[111] @ 1776
	.field	0,16			; _lcdFontTable[112] @ 1792
	.field	0,16			; _lcdFontTable[113] @ 1808
	.field	0,16			; _lcdFontTable[114] @ 1824
	.field	0,16			; _lcdFontTable[115] @ 1840
	.field	0,16			; _lcdFontTable[116] @ 1856
	.field	0,16			; _lcdFontTable[117] @ 1872
	.field	24,16			; _lcdFontTable[118] @ 1888
	.field	60,16			; _lcdFontTable[119] @ 1904
	.field	60,16			; _lcdFontTable[120] @ 1920
	.field	24,16			; _lcdFontTable[121] @ 1936
	.field	0,16			; _lcdFontTable[122] @ 1952
	.field	0,16			; _lcdFontTable[123] @ 1968
	.field	0,16			; _lcdFontTable[124] @ 1984
	.field	0,16			; _lcdFontTable[125] @ 2000
	.field	0,16			; _lcdFontTable[126] @ 2016
	.field	0,16			; _lcdFontTable[127] @ 2032
	.field	255,16			; _lcdFontTable[128] @ 2048
	.field	255,16			; _lcdFontTable[129] @ 2064
	.field	255,16			; _lcdFontTable[130] @ 2080
	.field	255,16			; _lcdFontTable[131] @ 2096
	.field	255,16			; _lcdFontTable[132] @ 2112
	.field	255,16			; _lcdFontTable[133] @ 2128
	.field	231,16			; _lcdFontTable[134] @ 2144
	.field	195,16			; _lcdFontTable[135] @ 2160
	.field	195,16			; _lcdFontTable[136] @ 2176
	.field	231,16			; _lcdFontTable[137] @ 2192
	.field	255,16			; _lcdFontTable[138] @ 2208
	.field	255,16			; _lcdFontTable[139] @ 2224
	.field	255,16			; _lcdFontTable[140] @ 2240
	.field	255,16			; _lcdFontTable[141] @ 2256
	.field	255,16			; _lcdFontTable[142] @ 2272
	.field	255,16			; _lcdFontTable[143] @ 2288
	.field	0,16			; _lcdFontTable[144] @ 2304
	.field	0,16			; _lcdFontTable[145] @ 2320
	.field	0,16			; _lcdFontTable[146] @ 2336
	.field	0,16			; _lcdFontTable[147] @ 2352
	.field	0,16			; _lcdFontTable[148] @ 2368
	.field	60,16			; _lcdFontTable[149] @ 2384
	.field	102,16			; _lcdFontTable[150] @ 2400
	.field	66,16			; _lcdFontTable[151] @ 2416
	.field	66,16			; _lcdFontTable[152] @ 2432
	.field	102,16			; _lcdFontTable[153] @ 2448
	.field	60,16			; _lcdFontTable[154] @ 2464
	.field	0,16			; _lcdFontTable[155] @ 2480
	.field	0,16			; _lcdFontTable[156] @ 2496
	.field	0,16			; _lcdFontTable[157] @ 2512
	.field	0,16			; _lcdFontTable[158] @ 2528
	.field	0,16			; _lcdFontTable[159] @ 2544
	.field	255,16			; _lcdFontTable[160] @ 2560
	.field	255,16			; _lcdFontTable[161] @ 2576
	.field	255,16			; _lcdFontTable[162] @ 2592
	.field	255,16			; _lcdFontTable[163] @ 2608
	.field	255,16			; _lcdFontTable[164] @ 2624
	.field	195,16			; _lcdFontTable[165] @ 2640
	.field	153,16			; _lcdFontTable[166] @ 2656
	.field	189,16			; _lcdFontTable[167] @ 2672
	.field	189,16			; _lcdFontTable[168] @ 2688
	.field	153,16			; _lcdFontTable[169] @ 2704
	.field	195,16			; _lcdFontTable[170] @ 2720
	.field	255,16			; _lcdFontTable[171] @ 2736
	.field	255,16			; _lcdFontTable[172] @ 2752
	.field	255,16			; _lcdFontTable[173] @ 2768
	.field	255,16			; _lcdFontTable[174] @ 2784
	.field	255,16			; _lcdFontTable[175] @ 2800
	.field	0,16			; _lcdFontTable[176] @ 2816
	.field	0,16			; _lcdFontTable[177] @ 2832
	.field	30,16			; _lcdFontTable[178] @ 2848
	.field	14,16			; _lcdFontTable[179] @ 2864
	.field	26,16			; _lcdFontTable[180] @ 2880
	.field	50,16			; _lcdFontTable[181] @ 2896
	.field	120,16			; _lcdFontTable[182] @ 2912
	.field	204,16			; _lcdFontTable[183] @ 2928
	.field	204,16			; _lcdFontTable[184] @ 2944
	.field	204,16			; _lcdFontTable[185] @ 2960
	.field	204,16			; _lcdFontTable[186] @ 2976
	.field	120,16			; _lcdFontTable[187] @ 2992
	.field	0,16			; _lcdFontTable[188] @ 3008
	.field	0,16			; _lcdFontTable[189] @ 3024
	.field	0,16			; _lcdFontTable[190] @ 3040
	.field	0,16			; _lcdFontTable[191] @ 3056
	.field	0,16			; _lcdFontTable[192] @ 3072
	.field	0,16			; _lcdFontTable[193] @ 3088
	.field	60,16			; _lcdFontTable[194] @ 3104
	.field	102,16			; _lcdFontTable[195] @ 3120
	.field	102,16			; _lcdFontTable[196] @ 3136
	.field	102,16			; _lcdFontTable[197] @ 3152
	.field	102,16			; _lcdFontTable[198] @ 3168
	.field	60,16			; _lcdFontTable[199] @ 3184
	.field	24,16			; _lcdFontTable[200] @ 3200
	.field	126,16			; _lcdFontTable[201] @ 3216
	.field	24,16			; _lcdFontTable[202] @ 3232
	.field	24,16			; _lcdFontTable[203] @ 3248
	.field	0,16			; _lcdFontTable[204] @ 3264
	.field	0,16			; _lcdFontTable[205] @ 3280
	.field	0,16			; _lcdFontTable[206] @ 3296
	.field	0,16			; _lcdFontTable[207] @ 3312
	.field	0,16			; _lcdFontTable[208] @ 3328
	.field	0,16			; _lcdFontTable[209] @ 3344
	.field	63,16			; _lcdFontTable[210] @ 3360
	.field	51,16			; _lcdFontTable[211] @ 3376
	.field	63,16			; _lcdFontTable[212] @ 3392
	.field	48,16			; _lcdFontTable[213] @ 3408
	.field	48,16			; _lcdFontTable[214] @ 3424
	.field	48,16			; _lcdFontTable[215] @ 3440
	.field	48,16			; _lcdFontTable[216] @ 3456
	.field	112,16			; _lcdFontTable[217] @ 3472
	.field	240,16			; _lcdFontTable[218] @ 3488
	.field	224,16			; _lcdFontTable[219] @ 3504
	.field	0,16			; _lcdFontTable[220] @ 3520
	.field	0,16			; _lcdFontTable[221] @ 3536
	.field	0,16			; _lcdFontTable[222] @ 3552
	.field	0,16			; _lcdFontTable[223] @ 3568
	.field	0,16			; _lcdFontTable[224] @ 3584
	.field	0,16			; _lcdFontTable[225] @ 3600
	.field	127,16			; _lcdFontTable[226] @ 3616
	.field	99,16			; _lcdFontTable[227] @ 3632
	.field	127,16			; _lcdFontTable[228] @ 3648
	.field	99,16			; _lcdFontTable[229] @ 3664
	.field	99,16			; _lcdFontTable[230] @ 3680
	.field	99,16			; _lcdFontTable[231] @ 3696
	.field	99,16			; _lcdFontTable[232] @ 3712
	.field	103,16			; _lcdFontTable[233] @ 3728
	.field	231,16			; _lcdFontTable[234] @ 3744
	.field	230,16			; _lcdFontTable[235] @ 3760
	.field	192,16			; _lcdFontTable[236] @ 3776
	.field	0,16			; _lcdFontTable[237] @ 3792
	.field	0,16			; _lcdFontTable[238] @ 3808
	.field	0,16			; _lcdFontTable[239] @ 3824
	.field	0,16			; _lcdFontTable[240] @ 3840
	.field	0,16			; _lcdFontTable[241] @ 3856
	.field	0,16			; _lcdFontTable[242] @ 3872
	.field	24,16			; _lcdFontTable[243] @ 3888
	.field	24,16			; _lcdFontTable[244] @ 3904
	.field	219,16			; _lcdFontTable[245] @ 3920
	.field	60,16			; _lcdFontTable[246] @ 3936
	.field	231,16			; _lcdFontTable[247] @ 3952
	.field	60,16			; _lcdFontTable[248] @ 3968
	.field	219,16			; _lcdFontTable[249] @ 3984
	.field	24,16			; _lcdFontTable[250] @ 4000
	.field	24,16			; _lcdFontTable[251] @ 4016
	.field	0,16			; _lcdFontTable[252] @ 4032
	.field	0,16			; _lcdFontTable[253] @ 4048
	.field	0,16			; _lcdFontTable[254] @ 4064
	.field	0,16			; _lcdFontTable[255] @ 4080
	.field	0,16			; _lcdFontTable[256] @ 4096
	.field	128,16			; _lcdFontTable[257] @ 4112
	.field	192,16			; _lcdFontTable[258] @ 4128
	.field	224,16			; _lcdFontTable[259] @ 4144
	.field	240,16			; _lcdFontTable[260] @ 4160
	.field	248,16			; _lcdFontTable[261] @ 4176
	.field	254,16			; _lcdFontTable[262] @ 4192
	.field	248,16			; _lcdFontTable[263] @ 4208
	.field	240,16			; _lcdFontTable[264] @ 4224
	.field	224,16			; _lcdFontTable[265] @ 4240
	.field	192,16			; _lcdFontTable[266] @ 4256
	.field	128,16			; _lcdFontTable[267] @ 4272
	.field	0,16			; _lcdFontTable[268] @ 4288
	.field	0,16			; _lcdFontTable[269] @ 4304
	.field	0,16			; _lcdFontTable[270] @ 4320
	.field	0,16			; _lcdFontTable[271] @ 4336
	.field	0,16			; _lcdFontTable[272] @ 4352
	.field	2,16			; _lcdFontTable[273] @ 4368
	.field	6,16			; _lcdFontTable[274] @ 4384
	.field	14,16			; _lcdFontTable[275] @ 4400
	.field	30,16			; _lcdFontTable[276] @ 4416
	.field	62,16			; _lcdFontTable[277] @ 4432
	.field	254,16			; _lcdFontTable[278] @ 4448
	.field	62,16			; _lcdFontTable[279] @ 4464
	.field	30,16			; _lcdFontTable[280] @ 4480
	.field	14,16			; _lcdFontTable[281] @ 4496
	.field	6,16			; _lcdFontTable[282] @ 4512
	.field	2,16			; _lcdFontTable[283] @ 4528
	.field	0,16			; _lcdFontTable[284] @ 4544
	.field	0,16			; _lcdFontTable[285] @ 4560
	.field	0,16			; _lcdFontTable[286] @ 4576
	.field	0,16			; _lcdFontTable[287] @ 4592
	.field	0,16			; _lcdFontTable[288] @ 4608
	.field	0,16			; _lcdFontTable[289] @ 4624
	.field	24,16			; _lcdFontTable[290] @ 4640
	.field	60,16			; _lcdFontTable[291] @ 4656
	.field	126,16			; _lcdFontTable[292] @ 4672
	.field	24,16			; _lcdFontTable[293] @ 4688
	.field	24,16			; _lcdFontTable[294] @ 4704
	.field	24,16			; _lcdFontTable[295] @ 4720
	.field	126,16			; _lcdFontTable[296] @ 4736
	.field	60,16			; _lcdFontTable[297] @ 4752
	.field	24,16			; _lcdFontTable[298] @ 4768
	.field	0,16			; _lcdFontTable[299] @ 4784
	.field	0,16			; _lcdFontTable[300] @ 4800
	.field	0,16			; _lcdFontTable[301] @ 4816
	.field	0,16			; _lcdFontTable[302] @ 4832
	.field	0,16			; _lcdFontTable[303] @ 4848
	.field	0,16			; _lcdFontTable[304] @ 4864
	.field	0,16			; _lcdFontTable[305] @ 4880
	.field	102,16			; _lcdFontTable[306] @ 4896
	.field	102,16			; _lcdFontTable[307] @ 4912
	.field	102,16			; _lcdFontTable[308] @ 4928
	.field	102,16			; _lcdFontTable[309] @ 4944
	.field	102,16			; _lcdFontTable[310] @ 4960
	.field	102,16			; _lcdFontTable[311] @ 4976
	.field	102,16			; _lcdFontTable[312] @ 4992
	.field	0,16			; _lcdFontTable[313] @ 5008
	.field	102,16			; _lcdFontTable[314] @ 5024
	.field	102,16			; _lcdFontTable[315] @ 5040
	.field	0,16			; _lcdFontTable[316] @ 5056
	.field	0,16			; _lcdFontTable[317] @ 5072
	.field	0,16			; _lcdFontTable[318] @ 5088
	.field	0,16			; _lcdFontTable[319] @ 5104
	.field	0,16			; _lcdFontTable[320] @ 5120
	.field	0,16			; _lcdFontTable[321] @ 5136
	.field	127,16			; _lcdFontTable[322] @ 5152
	.field	219,16			; _lcdFontTable[323] @ 5168
	.field	219,16			; _lcdFontTable[324] @ 5184
	.field	219,16			; _lcdFontTable[325] @ 5200
	.field	123,16			; _lcdFontTable[326] @ 5216
	.field	27,16			; _lcdFontTable[327] @ 5232
	.field	27,16			; _lcdFontTable[328] @ 5248
	.field	27,16			; _lcdFontTable[329] @ 5264
	.field	27,16			; _lcdFontTable[330] @ 5280
	.field	27,16			; _lcdFontTable[331] @ 5296
	.field	0,16			; _lcdFontTable[332] @ 5312
	.field	0,16			; _lcdFontTable[333] @ 5328
	.field	0,16			; _lcdFontTable[334] @ 5344
	.field	0,16			; _lcdFontTable[335] @ 5360
	.field	0,16			; _lcdFontTable[336] @ 5376
	.field	124,16			; _lcdFontTable[337] @ 5392
	.field	198,16			; _lcdFontTable[338] @ 5408
	.field	96,16			; _lcdFontTable[339] @ 5424
	.field	56,16			; _lcdFontTable[340] @ 5440
	.field	108,16			; _lcdFontTable[341] @ 5456
	.field	198,16			; _lcdFontTable[342] @ 5472
	.field	198,16			; _lcdFontTable[343] @ 5488
	.field	108,16			; _lcdFontTable[344] @ 5504
	.field	56,16			; _lcdFontTable[345] @ 5520
	.field	12,16			; _lcdFontTable[346] @ 5536
	.field	198,16			; _lcdFontTable[347] @ 5552
	.field	124,16			; _lcdFontTable[348] @ 5568
	.field	0,16			; _lcdFontTable[349] @ 5584
	.field	0,16			; _lcdFontTable[350] @ 5600
	.field	0,16			; _lcdFontTable[351] @ 5616
	.field	0,16			; _lcdFontTable[352] @ 5632
	.field	0,16			; _lcdFontTable[353] @ 5648
	.field	0,16			; _lcdFontTable[354] @ 5664
	.field	0,16			; _lcdFontTable[355] @ 5680
	.field	0,16			; _lcdFontTable[356] @ 5696
	.field	0,16			; _lcdFontTable[357] @ 5712
	.field	0,16			; _lcdFontTable[358] @ 5728
	.field	0,16			; _lcdFontTable[359] @ 5744
	.field	254,16			; _lcdFontTable[360] @ 5760
	.field	254,16			; _lcdFontTable[361] @ 5776
	.field	254,16			; _lcdFontTable[362] @ 5792
	.field	254,16			; _lcdFontTable[363] @ 5808
	.field	0,16			; _lcdFontTable[364] @ 5824
	.field	0,16			; _lcdFontTable[365] @ 5840
	.field	0,16			; _lcdFontTable[366] @ 5856
	.field	0,16			; _lcdFontTable[367] @ 5872
	.field	0,16			; _lcdFontTable[368] @ 5888
	.field	0,16			; _lcdFontTable[369] @ 5904
	.field	24,16			; _lcdFontTable[370] @ 5920
	.field	60,16			; _lcdFontTable[371] @ 5936
	.field	126,16			; _lcdFontTable[372] @ 5952
	.field	24,16			; _lcdFontTable[373] @ 5968
	.field	24,16			; _lcdFontTable[374] @ 5984
	.field	24,16			; _lcdFontTable[375] @ 6000
	.field	126,16			; _lcdFontTable[376] @ 6016
	.field	60,16			; _lcdFontTable[377] @ 6032
	.field	24,16			; _lcdFontTable[378] @ 6048
	.field	126,16			; _lcdFontTable[379] @ 6064
	.field	0,16			; _lcdFontTable[380] @ 6080
	.field	0,16			; _lcdFontTable[381] @ 6096
	.field	0,16			; _lcdFontTable[382] @ 6112
	.field	0,16			; _lcdFontTable[383] @ 6128
	.field	0,16			; _lcdFontTable[384] @ 6144
	.field	0,16			; _lcdFontTable[385] @ 6160
	.field	24,16			; _lcdFontTable[386] @ 6176
	.field	60,16			; _lcdFontTable[387] @ 6192
	.field	126,16			; _lcdFontTable[388] @ 6208
	.field	24,16			; _lcdFontTable[389] @ 6224
	.field	24,16			; _lcdFontTable[390] @ 6240
	.field	24,16			; _lcdFontTable[391] @ 6256
	.field	24,16			; _lcdFontTable[392] @ 6272
	.field	24,16			; _lcdFontTable[393] @ 6288
	.field	24,16			; _lcdFontTable[394] @ 6304
	.field	24,16			; _lcdFontTable[395] @ 6320
	.field	0,16			; _lcdFontTable[396] @ 6336
	.field	0,16			; _lcdFontTable[397] @ 6352
	.field	0,16			; _lcdFontTable[398] @ 6368
	.field	0,16			; _lcdFontTable[399] @ 6384
	.field	0,16			; _lcdFontTable[400] @ 6400
	.field	0,16			; _lcdFontTable[401] @ 6416
	.field	24,16			; _lcdFontTable[402] @ 6432
	.field	24,16			; _lcdFontTable[403] @ 6448
	.field	24,16			; _lcdFontTable[404] @ 6464
	.field	24,16			; _lcdFontTable[405] @ 6480
	.field	24,16			; _lcdFontTable[406] @ 6496
	.field	24,16			; _lcdFontTable[407] @ 6512
	.field	24,16			; _lcdFontTable[408] @ 6528
	.field	126,16			; _lcdFontTable[409] @ 6544
	.field	60,16			; _lcdFontTable[410] @ 6560
	.field	24,16			; _lcdFontTable[411] @ 6576
	.field	0,16			; _lcdFontTable[412] @ 6592
	.field	0,16			; _lcdFontTable[413] @ 6608
	.field	0,16			; _lcdFontTable[414] @ 6624
	.field	0,16			; _lcdFontTable[415] @ 6640
	.field	0,16			; _lcdFontTable[416] @ 6656
	.field	0,16			; _lcdFontTable[417] @ 6672
	.field	0,16			; _lcdFontTable[418] @ 6688
	.field	0,16			; _lcdFontTable[419] @ 6704
	.field	0,16			; _lcdFontTable[420] @ 6720
	.field	24,16			; _lcdFontTable[421] @ 6736
	.field	12,16			; _lcdFontTable[422] @ 6752
	.field	254,16			; _lcdFontTable[423] @ 6768
	.field	12,16			; _lcdFontTable[424] @ 6784
	.field	24,16			; _lcdFontTable[425] @ 6800
	.field	0,16			; _lcdFontTable[426] @ 6816
	.field	0,16			; _lcdFontTable[427] @ 6832
	.field	0,16			; _lcdFontTable[428] @ 6848
	.field	0,16			; _lcdFontTable[429] @ 6864
	.field	0,16			; _lcdFontTable[430] @ 6880
	.field	0,16			; _lcdFontTable[431] @ 6896
	.field	0,16			; _lcdFontTable[432] @ 6912
	.field	0,16			; _lcdFontTable[433] @ 6928
	.field	0,16			; _lcdFontTable[434] @ 6944
	.field	0,16			; _lcdFontTable[435] @ 6960
	.field	0,16			; _lcdFontTable[436] @ 6976
	.field	48,16			; _lcdFontTable[437] @ 6992
	.field	96,16			; _lcdFontTable[438] @ 7008
	.field	254,16			; _lcdFontTable[439] @ 7024
	.field	96,16			; _lcdFontTable[440] @ 7040
	.field	48,16			; _lcdFontTable[441] @ 7056
	.field	0,16			; _lcdFontTable[442] @ 7072
	.field	0,16			; _lcdFontTable[443] @ 7088
	.field	0,16			; _lcdFontTable[444] @ 7104
	.field	0,16			; _lcdFontTable[445] @ 7120
	.field	0,16			; _lcdFontTable[446] @ 7136
	.field	0,16			; _lcdFontTable[447] @ 7152
	.field	0,16			; _lcdFontTable[448] @ 7168
	.field	0,16			; _lcdFontTable[449] @ 7184
	.field	0,16			; _lcdFontTable[450] @ 7200
	.field	0,16			; _lcdFontTable[451] @ 7216
	.field	0,16			; _lcdFontTable[452] @ 7232
	.field	0,16			; _lcdFontTable[453] @ 7248
	.field	192,16			; _lcdFontTable[454] @ 7264
	.field	192,16			; _lcdFontTable[455] @ 7280
	.field	192,16			; _lcdFontTable[456] @ 7296
	.field	254,16			; _lcdFontTable[457] @ 7312
	.field	0,16			; _lcdFontTable[458] @ 7328
	.field	0,16			; _lcdFontTable[459] @ 7344
	.field	0,16			; _lcdFontTable[460] @ 7360
	.field	0,16			; _lcdFontTable[461] @ 7376
	.field	0,16			; _lcdFontTable[462] @ 7392
	.field	0,16			; _lcdFontTable[463] @ 7408
	.field	0,16			; _lcdFontTable[464] @ 7424
	.field	0,16			; _lcdFontTable[465] @ 7440
	.field	0,16			; _lcdFontTable[466] @ 7456
	.field	0,16			; _lcdFontTable[467] @ 7472
	.field	0,16			; _lcdFontTable[468] @ 7488
	.field	40,16			; _lcdFontTable[469] @ 7504
	.field	108,16			; _lcdFontTable[470] @ 7520
	.field	254,16			; _lcdFontTable[471] @ 7536
	.field	108,16			; _lcdFontTable[472] @ 7552
	.field	40,16			; _lcdFontTable[473] @ 7568
	.field	0,16			; _lcdFontTable[474] @ 7584
	.field	0,16			; _lcdFontTable[475] @ 7600
	.field	0,16			; _lcdFontTable[476] @ 7616
	.field	0,16			; _lcdFontTable[477] @ 7632
	.field	0,16			; _lcdFontTable[478] @ 7648
	.field	0,16			; _lcdFontTable[479] @ 7664
	.field	0,16			; _lcdFontTable[480] @ 7680
	.field	0,16			; _lcdFontTable[481] @ 7696
	.field	0,16			; _lcdFontTable[482] @ 7712
	.field	0,16			; _lcdFontTable[483] @ 7728
	.field	16,16			; _lcdFontTable[484] @ 7744
	.field	56,16			; _lcdFontTable[485] @ 7760
	.field	56,16			; _lcdFontTable[486] @ 7776
	.field	124,16			; _lcdFontTable[487] @ 7792
	.field	124,16			; _lcdFontTable[488] @ 7808
	.field	254,16			; _lcdFontTable[489] @ 7824
	.field	254,16			; _lcdFontTable[490] @ 7840
	.field	0,16			; _lcdFontTable[491] @ 7856
	.field	0,16			; _lcdFontTable[492] @ 7872
	.field	0,16			; _lcdFontTable[493] @ 7888
	.field	0,16			; _lcdFontTable[494] @ 7904
	.field	0,16			; _lcdFontTable[495] @ 7920
	.field	0,16			; _lcdFontTable[496] @ 7936
	.field	0,16			; _lcdFontTable[497] @ 7952
	.field	0,16			; _lcdFontTable[498] @ 7968
	.field	0,16			; _lcdFontTable[499] @ 7984
	.field	254,16			; _lcdFontTable[500] @ 8000
	.field	254,16			; _lcdFontTable[501] @ 8016
	.field	124,16			; _lcdFontTable[502] @ 8032
	.field	124,16			; _lcdFontTable[503] @ 8048
	.field	56,16			; _lcdFontTable[504] @ 8064
	.field	56,16			; _lcdFontTable[505] @ 8080
	.field	16,16			; _lcdFontTable[506] @ 8096
	.field	0,16			; _lcdFontTable[507] @ 8112
	.field	0,16			; _lcdFontTable[508] @ 8128
	.field	0,16			; _lcdFontTable[509] @ 8144
	.field	0,16			; _lcdFontTable[510] @ 8160
	.field	0,16			; _lcdFontTable[511] @ 8176
	.field	0,16			; _lcdFontTable[512] @ 8192
	.field	0,16			; _lcdFontTable[513] @ 8208
	.field	0,16			; _lcdFontTable[514] @ 8224
	.field	0,16			; _lcdFontTable[515] @ 8240
	.field	0,16			; _lcdFontTable[516] @ 8256
	.field	0,16			; _lcdFontTable[517] @ 8272
	.field	0,16			; _lcdFontTable[518] @ 8288
	.field	0,16			; _lcdFontTable[519] @ 8304
	.field	0,16			; _lcdFontTable[520] @ 8320
	.field	0,16			; _lcdFontTable[521] @ 8336
	.field	0,16			; _lcdFontTable[522] @ 8352
	.field	0,16			; _lcdFontTable[523] @ 8368
	.field	0,16			; _lcdFontTable[524] @ 8384
	.field	0,16			; _lcdFontTable[525] @ 8400
	.field	0,16			; _lcdFontTable[526] @ 8416
	.field	0,16			; _lcdFontTable[527] @ 8432
	.field	0,16			; _lcdFontTable[528] @ 8448
	.field	0,16			; _lcdFontTable[529] @ 8464
	.field	24,16			; _lcdFontTable[530] @ 8480
	.field	60,16			; _lcdFontTable[531] @ 8496
	.field	60,16			; _lcdFontTable[532] @ 8512
	.field	60,16			; _lcdFontTable[533] @ 8528
	.field	24,16			; _lcdFontTable[534] @ 8544
	.field	24,16			; _lcdFontTable[535] @ 8560
	.field	24,16			; _lcdFontTable[536] @ 8576
	.field	0,16			; _lcdFontTable[537] @ 8592
	.field	24,16			; _lcdFontTable[538] @ 8608
	.field	24,16			; _lcdFontTable[539] @ 8624
	.field	0,16			; _lcdFontTable[540] @ 8640
	.field	0,16			; _lcdFontTable[541] @ 8656
	.field	0,16			; _lcdFontTable[542] @ 8672
	.field	0,16			; _lcdFontTable[543] @ 8688
	.field	0,16			; _lcdFontTable[544] @ 8704
	.field	102,16			; _lcdFontTable[545] @ 8720
	.field	102,16			; _lcdFontTable[546] @ 8736
	.field	102,16			; _lcdFontTable[547] @ 8752
	.field	36,16			; _lcdFontTable[548] @ 8768
	.field	0,16			; _lcdFontTable[549] @ 8784
	.field	0,16			; _lcdFontTable[550] @ 8800
	.field	0,16			; _lcdFontTable[551] @ 8816
	.field	0,16			; _lcdFontTable[552] @ 8832
	.field	0,16			; _lcdFontTable[553] @ 8848
	.field	0,16			; _lcdFontTable[554] @ 8864
	.field	0,16			; _lcdFontTable[555] @ 8880
	.field	0,16			; _lcdFontTable[556] @ 8896
	.field	0,16			; _lcdFontTable[557] @ 8912
	.field	0,16			; _lcdFontTable[558] @ 8928
	.field	0,16			; _lcdFontTable[559] @ 8944
	.field	0,16			; _lcdFontTable[560] @ 8960
	.field	0,16			; _lcdFontTable[561] @ 8976
	.field	0,16			; _lcdFontTable[562] @ 8992
	.field	108,16			; _lcdFontTable[563] @ 9008
	.field	108,16			; _lcdFontTable[564] @ 9024
	.field	254,16			; _lcdFontTable[565] @ 9040
	.field	108,16			; _lcdFontTable[566] @ 9056
	.field	108,16			; _lcdFontTable[567] @ 9072
	.field	108,16			; _lcdFontTable[568] @ 9088
	.field	254,16			; _lcdFontTable[569] @ 9104
	.field	108,16			; _lcdFontTable[570] @ 9120
	.field	108,16			; _lcdFontTable[571] @ 9136
	.field	0,16			; _lcdFontTable[572] @ 9152
	.field	0,16			; _lcdFontTable[573] @ 9168
	.field	0,16			; _lcdFontTable[574] @ 9184
	.field	0,16			; _lcdFontTable[575] @ 9200
	.field	24,16			; _lcdFontTable[576] @ 9216
	.field	24,16			; _lcdFontTable[577] @ 9232
	.field	124,16			; _lcdFontTable[578] @ 9248
	.field	198,16			; _lcdFontTable[579] @ 9264
	.field	194,16			; _lcdFontTable[580] @ 9280
	.field	192,16			; _lcdFontTable[581] @ 9296
	.field	124,16			; _lcdFontTable[582] @ 9312
	.field	6,16			; _lcdFontTable[583] @ 9328
	.field	6,16			; _lcdFontTable[584] @ 9344
	.field	134,16			; _lcdFontTable[585] @ 9360
	.field	198,16			; _lcdFontTable[586] @ 9376
	.field	124,16			; _lcdFontTable[587] @ 9392
	.field	24,16			; _lcdFontTable[588] @ 9408
	.field	24,16			; _lcdFontTable[589] @ 9424
	.field	0,16			; _lcdFontTable[590] @ 9440
	.field	0,16			; _lcdFontTable[591] @ 9456
	.field	0,16			; _lcdFontTable[592] @ 9472
	.field	0,16			; _lcdFontTable[593] @ 9488
	.field	0,16			; _lcdFontTable[594] @ 9504
	.field	0,16			; _lcdFontTable[595] @ 9520
	.field	194,16			; _lcdFontTable[596] @ 9536
	.field	198,16			; _lcdFontTable[597] @ 9552
	.field	12,16			; _lcdFontTable[598] @ 9568
	.field	24,16			; _lcdFontTable[599] @ 9584
	.field	48,16			; _lcdFontTable[600] @ 9600
	.field	96,16			; _lcdFontTable[601] @ 9616
	.field	198,16			; _lcdFontTable[602] @ 9632
	.field	134,16			; _lcdFontTable[603] @ 9648
	.field	0,16			; _lcdFontTable[604] @ 9664
	.field	0,16			; _lcdFontTable[605] @ 9680
	.field	0,16			; _lcdFontTable[606] @ 9696
	.field	0,16			; _lcdFontTable[607] @ 9712
	.field	0,16			; _lcdFontTable[608] @ 9728
	.field	0,16			; _lcdFontTable[609] @ 9744
	.field	56,16			; _lcdFontTable[610] @ 9760
	.field	108,16			; _lcdFontTable[611] @ 9776
	.field	108,16			; _lcdFontTable[612] @ 9792
	.field	56,16			; _lcdFontTable[613] @ 9808
	.field	118,16			; _lcdFontTable[614] @ 9824
	.field	220,16			; _lcdFontTable[615] @ 9840
	.field	204,16			; _lcdFontTable[616] @ 9856
	.field	204,16			; _lcdFontTable[617] @ 9872
	.field	204,16			; _lcdFontTable[618] @ 9888
	.field	118,16			; _lcdFontTable[619] @ 9904
	.field	0,16			; _lcdFontTable[620] @ 9920
	.field	0,16			; _lcdFontTable[621] @ 9936
	.field	0,16			; _lcdFontTable[622] @ 9952
	.field	0,16			; _lcdFontTable[623] @ 9968
	.field	0,16			; _lcdFontTable[624] @ 9984
	.field	48,16			; _lcdFontTable[625] @ 10000
	.field	48,16			; _lcdFontTable[626] @ 10016
	.field	48,16			; _lcdFontTable[627] @ 10032
	.field	96,16			; _lcdFontTable[628] @ 10048
	.field	0,16			; _lcdFontTable[629] @ 10064
	.field	0,16			; _lcdFontTable[630] @ 10080
	.field	0,16			; _lcdFontTable[631] @ 10096
	.field	0,16			; _lcdFontTable[632] @ 10112
	.field	0,16			; _lcdFontTable[633] @ 10128
	.field	0,16			; _lcdFontTable[634] @ 10144
	.field	0,16			; _lcdFontTable[635] @ 10160
	.field	0,16			; _lcdFontTable[636] @ 10176
	.field	0,16			; _lcdFontTable[637] @ 10192
	.field	0,16			; _lcdFontTable[638] @ 10208
	.field	0,16			; _lcdFontTable[639] @ 10224
	.field	0,16			; _lcdFontTable[640] @ 10240
	.field	0,16			; _lcdFontTable[641] @ 10256
	.field	12,16			; _lcdFontTable[642] @ 10272
	.field	24,16			; _lcdFontTable[643] @ 10288
	.field	48,16			; _lcdFontTable[644] @ 10304
	.field	48,16			; _lcdFontTable[645] @ 10320
	.field	48,16			; _lcdFontTable[646] @ 10336
	.field	48,16			; _lcdFontTable[647] @ 10352
	.field	48,16			; _lcdFontTable[648] @ 10368
	.field	48,16			; _lcdFontTable[649] @ 10384
	.field	24,16			; _lcdFontTable[650] @ 10400
	.field	12,16			; _lcdFontTable[651] @ 10416
	.field	0,16			; _lcdFontTable[652] @ 10432
	.field	0,16			; _lcdFontTable[653] @ 10448
	.field	0,16			; _lcdFontTable[654] @ 10464
	.field	0,16			; _lcdFontTable[655] @ 10480
	.field	0,16			; _lcdFontTable[656] @ 10496
	.field	0,16			; _lcdFontTable[657] @ 10512
	.field	48,16			; _lcdFontTable[658] @ 10528
	.field	24,16			; _lcdFontTable[659] @ 10544
	.field	12,16			; _lcdFontTable[660] @ 10560
	.field	12,16			; _lcdFontTable[661] @ 10576
	.field	12,16			; _lcdFontTable[662] @ 10592
	.field	12,16			; _lcdFontTable[663] @ 10608
	.field	12,16			; _lcdFontTable[664] @ 10624
	.field	12,16			; _lcdFontTable[665] @ 10640
	.field	24,16			; _lcdFontTable[666] @ 10656
	.field	48,16			; _lcdFontTable[667] @ 10672
	.field	0,16			; _lcdFontTable[668] @ 10688
	.field	0,16			; _lcdFontTable[669] @ 10704
	.field	0,16			; _lcdFontTable[670] @ 10720
	.field	0,16			; _lcdFontTable[671] @ 10736
	.field	0,16			; _lcdFontTable[672] @ 10752
	.field	0,16			; _lcdFontTable[673] @ 10768
	.field	0,16			; _lcdFontTable[674] @ 10784
	.field	0,16			; _lcdFontTable[675] @ 10800
	.field	0,16			; _lcdFontTable[676] @ 10816
	.field	102,16			; _lcdFontTable[677] @ 10832
	.field	60,16			; _lcdFontTable[678] @ 10848
	.field	255,16			; _lcdFontTable[679] @ 10864
	.field	60,16			; _lcdFontTable[680] @ 10880
	.field	102,16			; _lcdFontTable[681] @ 10896
	.field	0,16			; _lcdFontTable[682] @ 10912
	.field	0,16			; _lcdFontTable[683] @ 10928
	.field	0,16			; _lcdFontTable[684] @ 10944
	.field	0,16			; _lcdFontTable[685] @ 10960
	.field	0,16			; _lcdFontTable[686] @ 10976
	.field	0,16			; _lcdFontTable[687] @ 10992
	.field	0,16			; _lcdFontTable[688] @ 11008
	.field	0,16			; _lcdFontTable[689] @ 11024
	.field	0,16			; _lcdFontTable[690] @ 11040
	.field	0,16			; _lcdFontTable[691] @ 11056
	.field	0,16			; _lcdFontTable[692] @ 11072
	.field	24,16			; _lcdFontTable[693] @ 11088
	.field	24,16			; _lcdFontTable[694] @ 11104
	.field	126,16			; _lcdFontTable[695] @ 11120
	.field	24,16			; _lcdFontTable[696] @ 11136
	.field	24,16			; _lcdFontTable[697] @ 11152
	.field	0,16			; _lcdFontTable[698] @ 11168
	.field	0,16			; _lcdFontTable[699] @ 11184
	.field	0,16			; _lcdFontTable[700] @ 11200
	.field	0,16			; _lcdFontTable[701] @ 11216
	.field	0,16			; _lcdFontTable[702] @ 11232
	.field	0,16			; _lcdFontTable[703] @ 11248
	.field	0,16			; _lcdFontTable[704] @ 11264
	.field	0,16			; _lcdFontTable[705] @ 11280
	.field	0,16			; _lcdFontTable[706] @ 11296
	.field	0,16			; _lcdFontTable[707] @ 11312
	.field	0,16			; _lcdFontTable[708] @ 11328
	.field	0,16			; _lcdFontTable[709] @ 11344
	.field	0,16			; _lcdFontTable[710] @ 11360
	.field	0,16			; _lcdFontTable[711] @ 11376
	.field	0,16			; _lcdFontTable[712] @ 11392
	.field	24,16			; _lcdFontTable[713] @ 11408
	.field	24,16			; _lcdFontTable[714] @ 11424
	.field	24,16			; _lcdFontTable[715] @ 11440
	.field	48,16			; _lcdFontTable[716] @ 11456
	.field	0,16			; _lcdFontTable[717] @ 11472
	.field	0,16			; _lcdFontTable[718] @ 11488
	.field	0,16			; _lcdFontTable[719] @ 11504
	.field	0,16			; _lcdFontTable[720] @ 11520
	.field	0,16			; _lcdFontTable[721] @ 11536
	.field	0,16			; _lcdFontTable[722] @ 11552
	.field	0,16			; _lcdFontTable[723] @ 11568
	.field	0,16			; _lcdFontTable[724] @ 11584
	.field	0,16			; _lcdFontTable[725] @ 11600
	.field	0,16			; _lcdFontTable[726] @ 11616
	.field	254,16			; _lcdFontTable[727] @ 11632
	.field	0,16			; _lcdFontTable[728] @ 11648
	.field	0,16			; _lcdFontTable[729] @ 11664
	.field	0,16			; _lcdFontTable[730] @ 11680
	.field	0,16			; _lcdFontTable[731] @ 11696
	.field	0,16			; _lcdFontTable[732] @ 11712
	.field	0,16			; _lcdFontTable[733] @ 11728
	.field	0,16			; _lcdFontTable[734] @ 11744
	.field	0,16			; _lcdFontTable[735] @ 11760
	.field	0,16			; _lcdFontTable[736] @ 11776
	.field	0,16			; _lcdFontTable[737] @ 11792
	.field	0,16			; _lcdFontTable[738] @ 11808
	.field	0,16			; _lcdFontTable[739] @ 11824
	.field	0,16			; _lcdFontTable[740] @ 11840
	.field	0,16			; _lcdFontTable[741] @ 11856
	.field	0,16			; _lcdFontTable[742] @ 11872
	.field	0,16			; _lcdFontTable[743] @ 11888
	.field	0,16			; _lcdFontTable[744] @ 11904
	.field	0,16			; _lcdFontTable[745] @ 11920
	.field	24,16			; _lcdFontTable[746] @ 11936
	.field	24,16			; _lcdFontTable[747] @ 11952
	.field	0,16			; _lcdFontTable[748] @ 11968
	.field	0,16			; _lcdFontTable[749] @ 11984
	.field	0,16			; _lcdFontTable[750] @ 12000
	.field	0,16			; _lcdFontTable[751] @ 12016
	.field	0,16			; _lcdFontTable[752] @ 12032
	.field	0,16			; _lcdFontTable[753] @ 12048
	.field	0,16			; _lcdFontTable[754] @ 12064
	.field	0,16			; _lcdFontTable[755] @ 12080
	.field	2,16			; _lcdFontTable[756] @ 12096
	.field	6,16			; _lcdFontTable[757] @ 12112
	.field	12,16			; _lcdFontTable[758] @ 12128
	.field	24,16			; _lcdFontTable[759] @ 12144
	.field	48,16			; _lcdFontTable[760] @ 12160
	.field	96,16			; _lcdFontTable[761] @ 12176
	.field	192,16			; _lcdFontTable[762] @ 12192
	.field	128,16			; _lcdFontTable[763] @ 12208
	.field	0,16			; _lcdFontTable[764] @ 12224
	.field	0,16			; _lcdFontTable[765] @ 12240
	.field	0,16			; _lcdFontTable[766] @ 12256
	.field	0,16			; _lcdFontTable[767] @ 12272
	.field	0,16			; _lcdFontTable[768] @ 12288
	.field	0,16			; _lcdFontTable[769] @ 12304
	.field	56,16			; _lcdFontTable[770] @ 12320
	.field	108,16			; _lcdFontTable[771] @ 12336
	.field	198,16			; _lcdFontTable[772] @ 12352
	.field	198,16			; _lcdFontTable[773] @ 12368
	.field	214,16			; _lcdFontTable[774] @ 12384
	.field	214,16			; _lcdFontTable[775] @ 12400
	.field	198,16			; _lcdFontTable[776] @ 12416
	.field	198,16			; _lcdFontTable[777] @ 12432
	.field	108,16			; _lcdFontTable[778] @ 12448
	.field	56,16			; _lcdFontTable[779] @ 12464
	.field	0,16			; _lcdFontTable[780] @ 12480
	.field	0,16			; _lcdFontTable[781] @ 12496
	.field	0,16			; _lcdFontTable[782] @ 12512
	.field	0,16			; _lcdFontTable[783] @ 12528
	.field	0,16			; _lcdFontTable[784] @ 12544
	.field	0,16			; _lcdFontTable[785] @ 12560
	.field	24,16			; _lcdFontTable[786] @ 12576
	.field	56,16			; _lcdFontTable[787] @ 12592
	.field	120,16			; _lcdFontTable[788] @ 12608
	.field	24,16			; _lcdFontTable[789] @ 12624
	.field	24,16			; _lcdFontTable[790] @ 12640
	.field	24,16			; _lcdFontTable[791] @ 12656
	.field	24,16			; _lcdFontTable[792] @ 12672
	.field	24,16			; _lcdFontTable[793] @ 12688
	.field	24,16			; _lcdFontTable[794] @ 12704
	.field	126,16			; _lcdFontTable[795] @ 12720
	.field	0,16			; _lcdFontTable[796] @ 12736
	.field	0,16			; _lcdFontTable[797] @ 12752
	.field	0,16			; _lcdFontTable[798] @ 12768
	.field	0,16			; _lcdFontTable[799] @ 12784
	.field	0,16			; _lcdFontTable[800] @ 12800
	.field	0,16			; _lcdFontTable[801] @ 12816
	.field	124,16			; _lcdFontTable[802] @ 12832
	.field	198,16			; _lcdFontTable[803] @ 12848
	.field	6,16			; _lcdFontTable[804] @ 12864
	.field	12,16			; _lcdFontTable[805] @ 12880
	.field	24,16			; _lcdFontTable[806] @ 12896
	.field	48,16			; _lcdFontTable[807] @ 12912
	.field	96,16			; _lcdFontTable[808] @ 12928
	.field	192,16			; _lcdFontTable[809] @ 12944
	.field	198,16			; _lcdFontTable[810] @ 12960
	.field	254,16			; _lcdFontTable[811] @ 12976
	.field	0,16			; _lcdFontTable[812] @ 12992
	.field	0,16			; _lcdFontTable[813] @ 13008
	.field	0,16			; _lcdFontTable[814] @ 13024
	.field	0,16			; _lcdFontTable[815] @ 13040
	.field	0,16			; _lcdFontTable[816] @ 13056
	.field	0,16			; _lcdFontTable[817] @ 13072
	.field	124,16			; _lcdFontTable[818] @ 13088
	.field	198,16			; _lcdFontTable[819] @ 13104
	.field	6,16			; _lcdFontTable[820] @ 13120
	.field	6,16			; _lcdFontTable[821] @ 13136
	.field	60,16			; _lcdFontTable[822] @ 13152
	.field	6,16			; _lcdFontTable[823] @ 13168
	.field	6,16			; _lcdFontTable[824] @ 13184
	.field	6,16			; _lcdFontTable[825] @ 13200
	.field	198,16			; _lcdFontTable[826] @ 13216
	.field	124,16			; _lcdFontTable[827] @ 13232
	.field	0,16			; _lcdFontTable[828] @ 13248
	.field	0,16			; _lcdFontTable[829] @ 13264
	.field	0,16			; _lcdFontTable[830] @ 13280
	.field	0,16			; _lcdFontTable[831] @ 13296
	.field	0,16			; _lcdFontTable[832] @ 13312
	.field	0,16			; _lcdFontTable[833] @ 13328
	.field	12,16			; _lcdFontTable[834] @ 13344
	.field	28,16			; _lcdFontTable[835] @ 13360
	.field	60,16			; _lcdFontTable[836] @ 13376
	.field	108,16			; _lcdFontTable[837] @ 13392
	.field	204,16			; _lcdFontTable[838] @ 13408
	.field	254,16			; _lcdFontTable[839] @ 13424
	.field	12,16			; _lcdFontTable[840] @ 13440
	.field	12,16			; _lcdFontTable[841] @ 13456
	.field	12,16			; _lcdFontTable[842] @ 13472
	.field	30,16			; _lcdFontTable[843] @ 13488
	.field	0,16			; _lcdFontTable[844] @ 13504
	.field	0,16			; _lcdFontTable[845] @ 13520
	.field	0,16			; _lcdFontTable[846] @ 13536
	.field	0,16			; _lcdFontTable[847] @ 13552
	.field	0,16			; _lcdFontTable[848] @ 13568
	.field	0,16			; _lcdFontTable[849] @ 13584
	.field	254,16			; _lcdFontTable[850] @ 13600
	.field	192,16			; _lcdFontTable[851] @ 13616
	.field	192,16			; _lcdFontTable[852] @ 13632
	.field	192,16			; _lcdFontTable[853] @ 13648
	.field	252,16			; _lcdFontTable[854] @ 13664
	.field	6,16			; _lcdFontTable[855] @ 13680
	.field	6,16			; _lcdFontTable[856] @ 13696
	.field	6,16			; _lcdFontTable[857] @ 13712
	.field	198,16			; _lcdFontTable[858] @ 13728
	.field	124,16			; _lcdFontTable[859] @ 13744
	.field	0,16			; _lcdFontTable[860] @ 13760
	.field	0,16			; _lcdFontTable[861] @ 13776
	.field	0,16			; _lcdFontTable[862] @ 13792
	.field	0,16			; _lcdFontTable[863] @ 13808
	.field	0,16			; _lcdFontTable[864] @ 13824
	.field	0,16			; _lcdFontTable[865] @ 13840
	.field	56,16			; _lcdFontTable[866] @ 13856
	.field	96,16			; _lcdFontTable[867] @ 13872
	.field	192,16			; _lcdFontTable[868] @ 13888
	.field	192,16			; _lcdFontTable[869] @ 13904
	.field	252,16			; _lcdFontTable[870] @ 13920
	.field	198,16			; _lcdFontTable[871] @ 13936
	.field	198,16			; _lcdFontTable[872] @ 13952
	.field	198,16			; _lcdFontTable[873] @ 13968
	.field	198,16			; _lcdFontTable[874] @ 13984
	.field	124,16			; _lcdFontTable[875] @ 14000
	.field	0,16			; _lcdFontTable[876] @ 14016
	.field	0,16			; _lcdFontTable[877] @ 14032
	.field	0,16			; _lcdFontTable[878] @ 14048
	.field	0,16			; _lcdFontTable[879] @ 14064
	.field	0,16			; _lcdFontTable[880] @ 14080
	.field	0,16			; _lcdFontTable[881] @ 14096
	.field	254,16			; _lcdFontTable[882] @ 14112
	.field	198,16			; _lcdFontTable[883] @ 14128
	.field	6,16			; _lcdFontTable[884] @ 14144
	.field	6,16			; _lcdFontTable[885] @ 14160
	.field	12,16			; _lcdFontTable[886] @ 14176
	.field	24,16			; _lcdFontTable[887] @ 14192
	.field	48,16			; _lcdFontTable[888] @ 14208
	.field	48,16			; _lcdFontTable[889] @ 14224
	.field	48,16			; _lcdFontTable[890] @ 14240
	.field	48,16			; _lcdFontTable[891] @ 14256
	.field	0,16			; _lcdFontTable[892] @ 14272
	.field	0,16			; _lcdFontTable[893] @ 14288
	.field	0,16			; _lcdFontTable[894] @ 14304
	.field	0,16			; _lcdFontTable[895] @ 14320
	.field	0,16			; _lcdFontTable[896] @ 14336
	.field	0,16			; _lcdFontTable[897] @ 14352
	.field	124,16			; _lcdFontTable[898] @ 14368
	.field	198,16			; _lcdFontTable[899] @ 14384
	.field	198,16			; _lcdFontTable[900] @ 14400
	.field	198,16			; _lcdFontTable[901] @ 14416
	.field	124,16			; _lcdFontTable[902] @ 14432
	.field	198,16			; _lcdFontTable[903] @ 14448
	.field	198,16			; _lcdFontTable[904] @ 14464
	.field	198,16			; _lcdFontTable[905] @ 14480
	.field	198,16			; _lcdFontTable[906] @ 14496
	.field	124,16			; _lcdFontTable[907] @ 14512
	.field	0,16			; _lcdFontTable[908] @ 14528
	.field	0,16			; _lcdFontTable[909] @ 14544
	.field	0,16			; _lcdFontTable[910] @ 14560
	.field	0,16			; _lcdFontTable[911] @ 14576
	.field	0,16			; _lcdFontTable[912] @ 14592
	.field	0,16			; _lcdFontTable[913] @ 14608
	.field	124,16			; _lcdFontTable[914] @ 14624
	.field	198,16			; _lcdFontTable[915] @ 14640
	.field	198,16			; _lcdFontTable[916] @ 14656
	.field	198,16			; _lcdFontTable[917] @ 14672
	.field	126,16			; _lcdFontTable[918] @ 14688
	.field	6,16			; _lcdFontTable[919] @ 14704
	.field	6,16			; _lcdFontTable[920] @ 14720
	.field	6,16			; _lcdFontTable[921] @ 14736
	.field	12,16			; _lcdFontTable[922] @ 14752
	.field	120,16			; _lcdFontTable[923] @ 14768
	.field	0,16			; _lcdFontTable[924] @ 14784
	.field	0,16			; _lcdFontTable[925] @ 14800
	.field	0,16			; _lcdFontTable[926] @ 14816
	.field	0,16			; _lcdFontTable[927] @ 14832
	.field	0,16			; _lcdFontTable[928] @ 14848
	.field	0,16			; _lcdFontTable[929] @ 14864
	.field	0,16			; _lcdFontTable[930] @ 14880
	.field	0,16			; _lcdFontTable[931] @ 14896
	.field	24,16			; _lcdFontTable[932] @ 14912
	.field	24,16			; _lcdFontTable[933] @ 14928
	.field	0,16			; _lcdFontTable[934] @ 14944
	.field	0,16			; _lcdFontTable[935] @ 14960
	.field	0,16			; _lcdFontTable[936] @ 14976
	.field	24,16			; _lcdFontTable[937] @ 14992
	.field	24,16			; _lcdFontTable[938] @ 15008
	.field	0,16			; _lcdFontTable[939] @ 15024
	.field	0,16			; _lcdFontTable[940] @ 15040
	.field	0,16			; _lcdFontTable[941] @ 15056
	.field	0,16			; _lcdFontTable[942] @ 15072
	.field	0,16			; _lcdFontTable[943] @ 15088
	.field	0,16			; _lcdFontTable[944] @ 15104
	.field	0,16			; _lcdFontTable[945] @ 15120
	.field	0,16			; _lcdFontTable[946] @ 15136
	.field	0,16			; _lcdFontTable[947] @ 15152
	.field	24,16			; _lcdFontTable[948] @ 15168
	.field	24,16			; _lcdFontTable[949] @ 15184
	.field	0,16			; _lcdFontTable[950] @ 15200
	.field	0,16			; _lcdFontTable[951] @ 15216
	.field	0,16			; _lcdFontTable[952] @ 15232
	.field	24,16			; _lcdFontTable[953] @ 15248
	.field	24,16			; _lcdFontTable[954] @ 15264
	.field	48,16			; _lcdFontTable[955] @ 15280
	.field	0,16			; _lcdFontTable[956] @ 15296
	.field	0,16			; _lcdFontTable[957] @ 15312
	.field	0,16			; _lcdFontTable[958] @ 15328
	.field	0,16			; _lcdFontTable[959] @ 15344
	.field	0,16			; _lcdFontTable[960] @ 15360
	.field	0,16			; _lcdFontTable[961] @ 15376
	.field	0,16			; _lcdFontTable[962] @ 15392
	.field	6,16			; _lcdFontTable[963] @ 15408
	.field	12,16			; _lcdFontTable[964] @ 15424
	.field	24,16			; _lcdFontTable[965] @ 15440
	.field	48,16			; _lcdFontTable[966] @ 15456
	.field	96,16			; _lcdFontTable[967] @ 15472
	.field	48,16			; _lcdFontTable[968] @ 15488
	.field	24,16			; _lcdFontTable[969] @ 15504
	.field	12,16			; _lcdFontTable[970] @ 15520
	.field	6,16			; _lcdFontTable[971] @ 15536
	.field	0,16			; _lcdFontTable[972] @ 15552
	.field	0,16			; _lcdFontTable[973] @ 15568
	.field	0,16			; _lcdFontTable[974] @ 15584
	.field	0,16			; _lcdFontTable[975] @ 15600
	.field	0,16			; _lcdFontTable[976] @ 15616
	.field	0,16			; _lcdFontTable[977] @ 15632
	.field	0,16			; _lcdFontTable[978] @ 15648
	.field	0,16			; _lcdFontTable[979] @ 15664
	.field	0,16			; _lcdFontTable[980] @ 15680
	.field	126,16			; _lcdFontTable[981] @ 15696
	.field	0,16			; _lcdFontTable[982] @ 15712
	.field	0,16			; _lcdFontTable[983] @ 15728
	.field	126,16			; _lcdFontTable[984] @ 15744
	.field	0,16			; _lcdFontTable[985] @ 15760
	.field	0,16			; _lcdFontTable[986] @ 15776
	.field	0,16			; _lcdFontTable[987] @ 15792
	.field	0,16			; _lcdFontTable[988] @ 15808
	.field	0,16			; _lcdFontTable[989] @ 15824
	.field	0,16			; _lcdFontTable[990] @ 15840
	.field	0,16			; _lcdFontTable[991] @ 15856
	.field	0,16			; _lcdFontTable[992] @ 15872
	.field	0,16			; _lcdFontTable[993] @ 15888
	.field	0,16			; _lcdFontTable[994] @ 15904
	.field	96,16			; _lcdFontTable[995] @ 15920
	.field	48,16			; _lcdFontTable[996] @ 15936
	.field	24,16			; _lcdFontTable[997] @ 15952
	.field	12,16			; _lcdFontTable[998] @ 15968
	.field	6,16			; _lcdFontTable[999] @ 15984
	.field	12,16			; _lcdFontTable[1000] @ 16000
	.field	24,16			; _lcdFontTable[1001] @ 16016
	.field	48,16			; _lcdFontTable[1002] @ 16032
	.field	96,16			; _lcdFontTable[1003] @ 16048
	.field	0,16			; _lcdFontTable[1004] @ 16064
	.field	0,16			; _lcdFontTable[1005] @ 16080
	.field	0,16			; _lcdFontTable[1006] @ 16096
	.field	0,16			; _lcdFontTable[1007] @ 16112
	.field	0,16			; _lcdFontTable[1008] @ 16128
	.field	0,16			; _lcdFontTable[1009] @ 16144
	.field	124,16			; _lcdFontTable[1010] @ 16160
	.field	198,16			; _lcdFontTable[1011] @ 16176
	.field	198,16			; _lcdFontTable[1012] @ 16192
	.field	12,16			; _lcdFontTable[1013] @ 16208
	.field	24,16			; _lcdFontTable[1014] @ 16224
	.field	24,16			; _lcdFontTable[1015] @ 16240
	.field	24,16			; _lcdFontTable[1016] @ 16256
	.field	0,16			; _lcdFontTable[1017] @ 16272
	.field	24,16			; _lcdFontTable[1018] @ 16288
	.field	24,16			; _lcdFontTable[1019] @ 16304
	.field	0,16			; _lcdFontTable[1020] @ 16320
	.field	0,16			; _lcdFontTable[1021] @ 16336
	.field	0,16			; _lcdFontTable[1022] @ 16352
	.field	0,16			; _lcdFontTable[1023] @ 16368
	.field	0,16			; _lcdFontTable[1024] @ 16384
	.field	0,16			; _lcdFontTable[1025] @ 16400
	.field	0,16			; _lcdFontTable[1026] @ 16416
	.field	124,16			; _lcdFontTable[1027] @ 16432
	.field	198,16			; _lcdFontTable[1028] @ 16448
	.field	198,16			; _lcdFontTable[1029] @ 16464
	.field	222,16			; _lcdFontTable[1030] @ 16480
	.field	222,16			; _lcdFontTable[1031] @ 16496
	.field	222,16			; _lcdFontTable[1032] @ 16512
	.field	220,16			; _lcdFontTable[1033] @ 16528
	.field	192,16			; _lcdFontTable[1034] @ 16544
	.field	124,16			; _lcdFontTable[1035] @ 16560
	.field	0,16			; _lcdFontTable[1036] @ 16576
	.field	0,16			; _lcdFontTable[1037] @ 16592
	.field	0,16			; _lcdFontTable[1038] @ 16608
	.field	0,16			; _lcdFontTable[1039] @ 16624
	.field	0,16			; _lcdFontTable[1040] @ 16640
	.field	0,16			; _lcdFontTable[1041] @ 16656
	.field	16,16			; _lcdFontTable[1042] @ 16672
	.field	56,16			; _lcdFontTable[1043] @ 16688
	.field	108,16			; _lcdFontTable[1044] @ 16704
	.field	198,16			; _lcdFontTable[1045] @ 16720
	.field	198,16			; _lcdFontTable[1046] @ 16736
	.field	254,16			; _lcdFontTable[1047] @ 16752
	.field	198,16			; _lcdFontTable[1048] @ 16768
	.field	198,16			; _lcdFontTable[1049] @ 16784
	.field	198,16			; _lcdFontTable[1050] @ 16800
	.field	198,16			; _lcdFontTable[1051] @ 16816
	.field	0,16			; _lcdFontTable[1052] @ 16832
	.field	0,16			; _lcdFontTable[1053] @ 16848
	.field	0,16			; _lcdFontTable[1054] @ 16864
	.field	0,16			; _lcdFontTable[1055] @ 16880
	.field	0,16			; _lcdFontTable[1056] @ 16896
	.field	0,16			; _lcdFontTable[1057] @ 16912
	.field	252,16			; _lcdFontTable[1058] @ 16928
	.field	102,16			; _lcdFontTable[1059] @ 16944
	.field	102,16			; _lcdFontTable[1060] @ 16960
	.field	102,16			; _lcdFontTable[1061] @ 16976
	.field	124,16			; _lcdFontTable[1062] @ 16992
	.field	102,16			; _lcdFontTable[1063] @ 17008
	.field	102,16			; _lcdFontTable[1064] @ 17024
	.field	102,16			; _lcdFontTable[1065] @ 17040
	.field	102,16			; _lcdFontTable[1066] @ 17056
	.field	252,16			; _lcdFontTable[1067] @ 17072
	.field	0,16			; _lcdFontTable[1068] @ 17088
	.field	0,16			; _lcdFontTable[1069] @ 17104
	.field	0,16			; _lcdFontTable[1070] @ 17120
	.field	0,16			; _lcdFontTable[1071] @ 17136
	.field	0,16			; _lcdFontTable[1072] @ 17152
	.field	0,16			; _lcdFontTable[1073] @ 17168
	.field	60,16			; _lcdFontTable[1074] @ 17184
	.field	102,16			; _lcdFontTable[1075] @ 17200
	.field	194,16			; _lcdFontTable[1076] @ 17216
	.field	192,16			; _lcdFontTable[1077] @ 17232
	.field	192,16			; _lcdFontTable[1078] @ 17248
	.field	192,16			; _lcdFontTable[1079] @ 17264
	.field	192,16			; _lcdFontTable[1080] @ 17280
	.field	194,16			; _lcdFontTable[1081] @ 17296
	.field	102,16			; _lcdFontTable[1082] @ 17312
	.field	60,16			; _lcdFontTable[1083] @ 17328
	.field	0,16			; _lcdFontTable[1084] @ 17344
	.field	0,16			; _lcdFontTable[1085] @ 17360
	.field	0,16			; _lcdFontTable[1086] @ 17376
	.field	0,16			; _lcdFontTable[1087] @ 17392
	.field	0,16			; _lcdFontTable[1088] @ 17408
	.field	0,16			; _lcdFontTable[1089] @ 17424
	.field	248,16			; _lcdFontTable[1090] @ 17440
	.field	108,16			; _lcdFontTable[1091] @ 17456
	.field	102,16			; _lcdFontTable[1092] @ 17472
	.field	102,16			; _lcdFontTable[1093] @ 17488
	.field	102,16			; _lcdFontTable[1094] @ 17504
	.field	102,16			; _lcdFontTable[1095] @ 17520
	.field	102,16			; _lcdFontTable[1096] @ 17536
	.field	102,16			; _lcdFontTable[1097] @ 17552
	.field	108,16			; _lcdFontTable[1098] @ 17568
	.field	248,16			; _lcdFontTable[1099] @ 17584
	.field	0,16			; _lcdFontTable[1100] @ 17600
	.field	0,16			; _lcdFontTable[1101] @ 17616
	.field	0,16			; _lcdFontTable[1102] @ 17632
	.field	0,16			; _lcdFontTable[1103] @ 17648
	.field	0,16			; _lcdFontTable[1104] @ 17664
	.field	0,16			; _lcdFontTable[1105] @ 17680
	.field	254,16			; _lcdFontTable[1106] @ 17696
	.field	102,16			; _lcdFontTable[1107] @ 17712
	.field	98,16			; _lcdFontTable[1108] @ 17728
	.field	104,16			; _lcdFontTable[1109] @ 17744
	.field	120,16			; _lcdFontTable[1110] @ 17760
	.field	104,16			; _lcdFontTable[1111] @ 17776
	.field	96,16			; _lcdFontTable[1112] @ 17792
	.field	98,16			; _lcdFontTable[1113] @ 17808
	.field	102,16			; _lcdFontTable[1114] @ 17824
	.field	254,16			; _lcdFontTable[1115] @ 17840
	.field	0,16			; _lcdFontTable[1116] @ 17856
	.field	0,16			; _lcdFontTable[1117] @ 17872
	.field	0,16			; _lcdFontTable[1118] @ 17888
	.field	0,16			; _lcdFontTable[1119] @ 17904
	.field	0,16			; _lcdFontTable[1120] @ 17920
	.field	0,16			; _lcdFontTable[1121] @ 17936
	.field	254,16			; _lcdFontTable[1122] @ 17952
	.field	102,16			; _lcdFontTable[1123] @ 17968
	.field	98,16			; _lcdFontTable[1124] @ 17984
	.field	104,16			; _lcdFontTable[1125] @ 18000
	.field	120,16			; _lcdFontTable[1126] @ 18016
	.field	104,16			; _lcdFontTable[1127] @ 18032
	.field	96,16			; _lcdFontTable[1128] @ 18048
	.field	96,16			; _lcdFontTable[1129] @ 18064
	.field	96,16			; _lcdFontTable[1130] @ 18080
	.field	240,16			; _lcdFontTable[1131] @ 18096
	.field	0,16			; _lcdFontTable[1132] @ 18112
	.field	0,16			; _lcdFontTable[1133] @ 18128
	.field	0,16			; _lcdFontTable[1134] @ 18144
	.field	0,16			; _lcdFontTable[1135] @ 18160
	.field	0,16			; _lcdFontTable[1136] @ 18176
	.field	0,16			; _lcdFontTable[1137] @ 18192
	.field	60,16			; _lcdFontTable[1138] @ 18208
	.field	102,16			; _lcdFontTable[1139] @ 18224
	.field	194,16			; _lcdFontTable[1140] @ 18240
	.field	192,16			; _lcdFontTable[1141] @ 18256
	.field	192,16			; _lcdFontTable[1142] @ 18272
	.field	222,16			; _lcdFontTable[1143] @ 18288
	.field	198,16			; _lcdFontTable[1144] @ 18304
	.field	198,16			; _lcdFontTable[1145] @ 18320
	.field	102,16			; _lcdFontTable[1146] @ 18336
	.field	58,16			; _lcdFontTable[1147] @ 18352
	.field	0,16			; _lcdFontTable[1148] @ 18368
	.field	0,16			; _lcdFontTable[1149] @ 18384
	.field	0,16			; _lcdFontTable[1150] @ 18400
	.field	0,16			; _lcdFontTable[1151] @ 18416
	.field	0,16			; _lcdFontTable[1152] @ 18432
	.field	0,16			; _lcdFontTable[1153] @ 18448
	.field	198,16			; _lcdFontTable[1154] @ 18464
	.field	198,16			; _lcdFontTable[1155] @ 18480
	.field	198,16			; _lcdFontTable[1156] @ 18496
	.field	198,16			; _lcdFontTable[1157] @ 18512
	.field	254,16			; _lcdFontTable[1158] @ 18528
	.field	198,16			; _lcdFontTable[1159] @ 18544
	.field	198,16			; _lcdFontTable[1160] @ 18560
	.field	198,16			; _lcdFontTable[1161] @ 18576
	.field	198,16			; _lcdFontTable[1162] @ 18592
	.field	198,16			; _lcdFontTable[1163] @ 18608
	.field	0,16			; _lcdFontTable[1164] @ 18624
	.field	0,16			; _lcdFontTable[1165] @ 18640
	.field	0,16			; _lcdFontTable[1166] @ 18656
	.field	0,16			; _lcdFontTable[1167] @ 18672
	.field	0,16			; _lcdFontTable[1168] @ 18688
	.field	0,16			; _lcdFontTable[1169] @ 18704
	.field	60,16			; _lcdFontTable[1170] @ 18720
	.field	24,16			; _lcdFontTable[1171] @ 18736
	.field	24,16			; _lcdFontTable[1172] @ 18752
	.field	24,16			; _lcdFontTable[1173] @ 18768
	.field	24,16			; _lcdFontTable[1174] @ 18784
	.field	24,16			; _lcdFontTable[1175] @ 18800
	.field	24,16			; _lcdFontTable[1176] @ 18816
	.field	24,16			; _lcdFontTable[1177] @ 18832
	.field	24,16			; _lcdFontTable[1178] @ 18848
	.field	60,16			; _lcdFontTable[1179] @ 18864
	.field	0,16			; _lcdFontTable[1180] @ 18880
	.field	0,16			; _lcdFontTable[1181] @ 18896
	.field	0,16			; _lcdFontTable[1182] @ 18912
	.field	0,16			; _lcdFontTable[1183] @ 18928
	.field	0,16			; _lcdFontTable[1184] @ 18944
	.field	0,16			; _lcdFontTable[1185] @ 18960
	.field	30,16			; _lcdFontTable[1186] @ 18976
	.field	12,16			; _lcdFontTable[1187] @ 18992
	.field	12,16			; _lcdFontTable[1188] @ 19008
	.field	12,16			; _lcdFontTable[1189] @ 19024
	.field	12,16			; _lcdFontTable[1190] @ 19040
	.field	12,16			; _lcdFontTable[1191] @ 19056
	.field	204,16			; _lcdFontTable[1192] @ 19072
	.field	204,16			; _lcdFontTable[1193] @ 19088
	.field	204,16			; _lcdFontTable[1194] @ 19104
	.field	120,16			; _lcdFontTable[1195] @ 19120
	.field	0,16			; _lcdFontTable[1196] @ 19136
	.field	0,16			; _lcdFontTable[1197] @ 19152
	.field	0,16			; _lcdFontTable[1198] @ 19168
	.field	0,16			; _lcdFontTable[1199] @ 19184
	.field	0,16			; _lcdFontTable[1200] @ 19200
	.field	0,16			; _lcdFontTable[1201] @ 19216
	.field	230,16			; _lcdFontTable[1202] @ 19232
	.field	102,16			; _lcdFontTable[1203] @ 19248
	.field	102,16			; _lcdFontTable[1204] @ 19264
	.field	108,16			; _lcdFontTable[1205] @ 19280
	.field	120,16			; _lcdFontTable[1206] @ 19296
	.field	120,16			; _lcdFontTable[1207] @ 19312
	.field	108,16			; _lcdFontTable[1208] @ 19328
	.field	102,16			; _lcdFontTable[1209] @ 19344
	.field	102,16			; _lcdFontTable[1210] @ 19360
	.field	230,16			; _lcdFontTable[1211] @ 19376
	.field	0,16			; _lcdFontTable[1212] @ 19392
	.field	0,16			; _lcdFontTable[1213] @ 19408
	.field	0,16			; _lcdFontTable[1214] @ 19424
	.field	0,16			; _lcdFontTable[1215] @ 19440
	.field	0,16			; _lcdFontTable[1216] @ 19456
	.field	0,16			; _lcdFontTable[1217] @ 19472
	.field	240,16			; _lcdFontTable[1218] @ 19488
	.field	96,16			; _lcdFontTable[1219] @ 19504
	.field	96,16			; _lcdFontTable[1220] @ 19520
	.field	96,16			; _lcdFontTable[1221] @ 19536
	.field	96,16			; _lcdFontTable[1222] @ 19552
	.field	96,16			; _lcdFontTable[1223] @ 19568
	.field	96,16			; _lcdFontTable[1224] @ 19584
	.field	98,16			; _lcdFontTable[1225] @ 19600
	.field	102,16			; _lcdFontTable[1226] @ 19616
	.field	254,16			; _lcdFontTable[1227] @ 19632
	.field	0,16			; _lcdFontTable[1228] @ 19648
	.field	0,16			; _lcdFontTable[1229] @ 19664
	.field	0,16			; _lcdFontTable[1230] @ 19680
	.field	0,16			; _lcdFontTable[1231] @ 19696
	.field	0,16			; _lcdFontTable[1232] @ 19712
	.field	0,16			; _lcdFontTable[1233] @ 19728
	.field	198,16			; _lcdFontTable[1234] @ 19744
	.field	238,16			; _lcdFontTable[1235] @ 19760
	.field	254,16			; _lcdFontTable[1236] @ 19776
	.field	254,16			; _lcdFontTable[1237] @ 19792
	.field	214,16			; _lcdFontTable[1238] @ 19808
	.field	198,16			; _lcdFontTable[1239] @ 19824
	.field	198,16			; _lcdFontTable[1240] @ 19840
	.field	198,16			; _lcdFontTable[1241] @ 19856
	.field	198,16			; _lcdFontTable[1242] @ 19872
	.field	198,16			; _lcdFontTable[1243] @ 19888
	.field	0,16			; _lcdFontTable[1244] @ 19904
	.field	0,16			; _lcdFontTable[1245] @ 19920
	.field	0,16			; _lcdFontTable[1246] @ 19936
	.field	0,16			; _lcdFontTable[1247] @ 19952
	.field	0,16			; _lcdFontTable[1248] @ 19968
	.field	0,16			; _lcdFontTable[1249] @ 19984
	.field	198,16			; _lcdFontTable[1250] @ 20000
	.field	230,16			; _lcdFontTable[1251] @ 20016
	.field	246,16			; _lcdFontTable[1252] @ 20032
	.field	254,16			; _lcdFontTable[1253] @ 20048
	.field	222,16			; _lcdFontTable[1254] @ 20064
	.field	206,16			; _lcdFontTable[1255] @ 20080
	.field	198,16			; _lcdFontTable[1256] @ 20096
	.field	198,16			; _lcdFontTable[1257] @ 20112
	.field	198,16			; _lcdFontTable[1258] @ 20128
	.field	198,16			; _lcdFontTable[1259] @ 20144
	.field	0,16			; _lcdFontTable[1260] @ 20160
	.field	0,16			; _lcdFontTable[1261] @ 20176
	.field	0,16			; _lcdFontTable[1262] @ 20192
	.field	0,16			; _lcdFontTable[1263] @ 20208
	.field	0,16			; _lcdFontTable[1264] @ 20224
	.field	0,16			; _lcdFontTable[1265] @ 20240
	.field	124,16			; _lcdFontTable[1266] @ 20256
	.field	198,16			; _lcdFontTable[1267] @ 20272
	.field	198,16			; _lcdFontTable[1268] @ 20288
	.field	198,16			; _lcdFontTable[1269] @ 20304
	.field	198,16			; _lcdFontTable[1270] @ 20320
	.field	198,16			; _lcdFontTable[1271] @ 20336
	.field	198,16			; _lcdFontTable[1272] @ 20352
	.field	198,16			; _lcdFontTable[1273] @ 20368
	.field	198,16			; _lcdFontTable[1274] @ 20384
	.field	124,16			; _lcdFontTable[1275] @ 20400
	.field	0,16			; _lcdFontTable[1276] @ 20416
	.field	0,16			; _lcdFontTable[1277] @ 20432
	.field	0,16			; _lcdFontTable[1278] @ 20448
	.field	0,16			; _lcdFontTable[1279] @ 20464
	.field	0,16			; _lcdFontTable[1280] @ 20480
	.field	0,16			; _lcdFontTable[1281] @ 20496
	.field	252,16			; _lcdFontTable[1282] @ 20512
	.field	102,16			; _lcdFontTable[1283] @ 20528
	.field	102,16			; _lcdFontTable[1284] @ 20544
	.field	102,16			; _lcdFontTable[1285] @ 20560
	.field	124,16			; _lcdFontTable[1286] @ 20576
	.field	96,16			; _lcdFontTable[1287] @ 20592
	.field	96,16			; _lcdFontTable[1288] @ 20608
	.field	96,16			; _lcdFontTable[1289] @ 20624
	.field	96,16			; _lcdFontTable[1290] @ 20640
	.field	240,16			; _lcdFontTable[1291] @ 20656
	.field	0,16			; _lcdFontTable[1292] @ 20672
	.field	0,16			; _lcdFontTable[1293] @ 20688
	.field	0,16			; _lcdFontTable[1294] @ 20704
	.field	0,16			; _lcdFontTable[1295] @ 20720
	.field	0,16			; _lcdFontTable[1296] @ 20736
	.field	0,16			; _lcdFontTable[1297] @ 20752
	.field	124,16			; _lcdFontTable[1298] @ 20768
	.field	198,16			; _lcdFontTable[1299] @ 20784
	.field	198,16			; _lcdFontTable[1300] @ 20800
	.field	198,16			; _lcdFontTable[1301] @ 20816
	.field	198,16			; _lcdFontTable[1302] @ 20832
	.field	198,16			; _lcdFontTable[1303] @ 20848
	.field	198,16			; _lcdFontTable[1304] @ 20864
	.field	214,16			; _lcdFontTable[1305] @ 20880
	.field	222,16			; _lcdFontTable[1306] @ 20896
	.field	124,16			; _lcdFontTable[1307] @ 20912
	.field	12,16			; _lcdFontTable[1308] @ 20928
	.field	14,16			; _lcdFontTable[1309] @ 20944
	.field	0,16			; _lcdFontTable[1310] @ 20960
	.field	0,16			; _lcdFontTable[1311] @ 20976
	.field	0,16			; _lcdFontTable[1312] @ 20992
	.field	0,16			; _lcdFontTable[1313] @ 21008
	.field	252,16			; _lcdFontTable[1314] @ 21024
	.field	102,16			; _lcdFontTable[1315] @ 21040
	.field	102,16			; _lcdFontTable[1316] @ 21056
	.field	102,16			; _lcdFontTable[1317] @ 21072
	.field	124,16			; _lcdFontTable[1318] @ 21088
	.field	108,16			; _lcdFontTable[1319] @ 21104
	.field	102,16			; _lcdFontTable[1320] @ 21120
	.field	102,16			; _lcdFontTable[1321] @ 21136
	.field	102,16			; _lcdFontTable[1322] @ 21152
	.field	230,16			; _lcdFontTable[1323] @ 21168
	.field	0,16			; _lcdFontTable[1324] @ 21184
	.field	0,16			; _lcdFontTable[1325] @ 21200
	.field	0,16			; _lcdFontTable[1326] @ 21216
	.field	0,16			; _lcdFontTable[1327] @ 21232
	.field	0,16			; _lcdFontTable[1328] @ 21248
	.field	0,16			; _lcdFontTable[1329] @ 21264
	.field	124,16			; _lcdFontTable[1330] @ 21280
	.field	198,16			; _lcdFontTable[1331] @ 21296
	.field	198,16			; _lcdFontTable[1332] @ 21312
	.field	96,16			; _lcdFontTable[1333] @ 21328
	.field	56,16			; _lcdFontTable[1334] @ 21344
	.field	12,16			; _lcdFontTable[1335] @ 21360
	.field	6,16			; _lcdFontTable[1336] @ 21376
	.field	198,16			; _lcdFontTable[1337] @ 21392
	.field	198,16			; _lcdFontTable[1338] @ 21408
	.field	124,16			; _lcdFontTable[1339] @ 21424
	.field	0,16			; _lcdFontTable[1340] @ 21440
	.field	0,16			; _lcdFontTable[1341] @ 21456
	.field	0,16			; _lcdFontTable[1342] @ 21472
	.field	0,16			; _lcdFontTable[1343] @ 21488
	.field	0,16			; _lcdFontTable[1344] @ 21504
	.field	0,16			; _lcdFontTable[1345] @ 21520
	.field	126,16			; _lcdFontTable[1346] @ 21536
	.field	126,16			; _lcdFontTable[1347] @ 21552
	.field	90,16			; _lcdFontTable[1348] @ 21568
	.field	24,16			; _lcdFontTable[1349] @ 21584
	.field	24,16			; _lcdFontTable[1350] @ 21600
	.field	24,16			; _lcdFontTable[1351] @ 21616
	.field	24,16			; _lcdFontTable[1352] @ 21632
	.field	24,16			; _lcdFontTable[1353] @ 21648
	.field	24,16			; _lcdFontTable[1354] @ 21664
	.field	60,16			; _lcdFontTable[1355] @ 21680
	.field	0,16			; _lcdFontTable[1356] @ 21696
	.field	0,16			; _lcdFontTable[1357] @ 21712
	.field	0,16			; _lcdFontTable[1358] @ 21728
	.field	0,16			; _lcdFontTable[1359] @ 21744
	.field	0,16			; _lcdFontTable[1360] @ 21760
	.field	0,16			; _lcdFontTable[1361] @ 21776
	.field	198,16			; _lcdFontTable[1362] @ 21792
	.field	198,16			; _lcdFontTable[1363] @ 21808
	.field	198,16			; _lcdFontTable[1364] @ 21824
	.field	198,16			; _lcdFontTable[1365] @ 21840
	.field	198,16			; _lcdFontTable[1366] @ 21856
	.field	198,16			; _lcdFontTable[1367] @ 21872
	.field	198,16			; _lcdFontTable[1368] @ 21888
	.field	198,16			; _lcdFontTable[1369] @ 21904
	.field	198,16			; _lcdFontTable[1370] @ 21920
	.field	124,16			; _lcdFontTable[1371] @ 21936
	.field	0,16			; _lcdFontTable[1372] @ 21952
	.field	0,16			; _lcdFontTable[1373] @ 21968
	.field	0,16			; _lcdFontTable[1374] @ 21984
	.field	0,16			; _lcdFontTable[1375] @ 22000
	.field	0,16			; _lcdFontTable[1376] @ 22016
	.field	0,16			; _lcdFontTable[1377] @ 22032
	.field	198,16			; _lcdFontTable[1378] @ 22048
	.field	198,16			; _lcdFontTable[1379] @ 22064
	.field	198,16			; _lcdFontTable[1380] @ 22080
	.field	198,16			; _lcdFontTable[1381] @ 22096
	.field	198,16			; _lcdFontTable[1382] @ 22112
	.field	198,16			; _lcdFontTable[1383] @ 22128
	.field	198,16			; _lcdFontTable[1384] @ 22144
	.field	108,16			; _lcdFontTable[1385] @ 22160
	.field	56,16			; _lcdFontTable[1386] @ 22176
	.field	16,16			; _lcdFontTable[1387] @ 22192
	.field	0,16			; _lcdFontTable[1388] @ 22208
	.field	0,16			; _lcdFontTable[1389] @ 22224
	.field	0,16			; _lcdFontTable[1390] @ 22240
	.field	0,16			; _lcdFontTable[1391] @ 22256
	.field	0,16			; _lcdFontTable[1392] @ 22272
	.field	0,16			; _lcdFontTable[1393] @ 22288
	.field	198,16			; _lcdFontTable[1394] @ 22304
	.field	198,16			; _lcdFontTable[1395] @ 22320
	.field	198,16			; _lcdFontTable[1396] @ 22336
	.field	198,16			; _lcdFontTable[1397] @ 22352
	.field	214,16			; _lcdFontTable[1398] @ 22368
	.field	214,16			; _lcdFontTable[1399] @ 22384
	.field	214,16			; _lcdFontTable[1400] @ 22400
	.field	254,16			; _lcdFontTable[1401] @ 22416
	.field	238,16			; _lcdFontTable[1402] @ 22432
	.field	108,16			; _lcdFontTable[1403] @ 22448
	.field	0,16			; _lcdFontTable[1404] @ 22464
	.field	0,16			; _lcdFontTable[1405] @ 22480
	.field	0,16			; _lcdFontTable[1406] @ 22496
	.field	0,16			; _lcdFontTable[1407] @ 22512
	.field	0,16			; _lcdFontTable[1408] @ 22528
	.field	0,16			; _lcdFontTable[1409] @ 22544
	.field	198,16			; _lcdFontTable[1410] @ 22560
	.field	198,16			; _lcdFontTable[1411] @ 22576
	.field	108,16			; _lcdFontTable[1412] @ 22592
	.field	124,16			; _lcdFontTable[1413] @ 22608
	.field	56,16			; _lcdFontTable[1414] @ 22624
	.field	56,16			; _lcdFontTable[1415] @ 22640
	.field	124,16			; _lcdFontTable[1416] @ 22656
	.field	108,16			; _lcdFontTable[1417] @ 22672
	.field	198,16			; _lcdFontTable[1418] @ 22688
	.field	198,16			; _lcdFontTable[1419] @ 22704
	.field	0,16			; _lcdFontTable[1420] @ 22720
	.field	0,16			; _lcdFontTable[1421] @ 22736
	.field	0,16			; _lcdFontTable[1422] @ 22752
	.field	0,16			; _lcdFontTable[1423] @ 22768
	.field	0,16			; _lcdFontTable[1424] @ 22784
	.field	0,16			; _lcdFontTable[1425] @ 22800
	.field	102,16			; _lcdFontTable[1426] @ 22816
	.field	102,16			; _lcdFontTable[1427] @ 22832
	.field	102,16			; _lcdFontTable[1428] @ 22848
	.field	102,16			; _lcdFontTable[1429] @ 22864
	.field	60,16			; _lcdFontTable[1430] @ 22880
	.field	24,16			; _lcdFontTable[1431] @ 22896
	.field	24,16			; _lcdFontTable[1432] @ 22912
	.field	24,16			; _lcdFontTable[1433] @ 22928
	.field	24,16			; _lcdFontTable[1434] @ 22944
	.field	60,16			; _lcdFontTable[1435] @ 22960
	.field	0,16			; _lcdFontTable[1436] @ 22976
	.field	0,16			; _lcdFontTable[1437] @ 22992
	.field	0,16			; _lcdFontTable[1438] @ 23008
	.field	0,16			; _lcdFontTable[1439] @ 23024
	.field	0,16			; _lcdFontTable[1440] @ 23040
	.field	0,16			; _lcdFontTable[1441] @ 23056
	.field	254,16			; _lcdFontTable[1442] @ 23072
	.field	198,16			; _lcdFontTable[1443] @ 23088
	.field	134,16			; _lcdFontTable[1444] @ 23104
	.field	12,16			; _lcdFontTable[1445] @ 23120
	.field	24,16			; _lcdFontTable[1446] @ 23136
	.field	48,16			; _lcdFontTable[1447] @ 23152
	.field	96,16			; _lcdFontTable[1448] @ 23168
	.field	194,16			; _lcdFontTable[1449] @ 23184
	.field	198,16			; _lcdFontTable[1450] @ 23200
	.field	254,16			; _lcdFontTable[1451] @ 23216
	.field	0,16			; _lcdFontTable[1452] @ 23232
	.field	0,16			; _lcdFontTable[1453] @ 23248
	.field	0,16			; _lcdFontTable[1454] @ 23264
	.field	0,16			; _lcdFontTable[1455] @ 23280
	.field	0,16			; _lcdFontTable[1456] @ 23296
	.field	0,16			; _lcdFontTable[1457] @ 23312
	.field	60,16			; _lcdFontTable[1458] @ 23328
	.field	48,16			; _lcdFontTable[1459] @ 23344
	.field	48,16			; _lcdFontTable[1460] @ 23360
	.field	48,16			; _lcdFontTable[1461] @ 23376
	.field	48,16			; _lcdFontTable[1462] @ 23392
	.field	48,16			; _lcdFontTable[1463] @ 23408
	.field	48,16			; _lcdFontTable[1464] @ 23424
	.field	48,16			; _lcdFontTable[1465] @ 23440
	.field	48,16			; _lcdFontTable[1466] @ 23456
	.field	60,16			; _lcdFontTable[1467] @ 23472
	.field	0,16			; _lcdFontTable[1468] @ 23488
	.field	0,16			; _lcdFontTable[1469] @ 23504
	.field	0,16			; _lcdFontTable[1470] @ 23520
	.field	0,16			; _lcdFontTable[1471] @ 23536
	.field	0,16			; _lcdFontTable[1472] @ 23552
	.field	0,16			; _lcdFontTable[1473] @ 23568
	.field	0,16			; _lcdFontTable[1474] @ 23584
	.field	128,16			; _lcdFontTable[1475] @ 23600
	.field	192,16			; _lcdFontTable[1476] @ 23616
	.field	224,16			; _lcdFontTable[1477] @ 23632
	.field	112,16			; _lcdFontTable[1478] @ 23648
	.field	56,16			; _lcdFontTable[1479] @ 23664
	.field	28,16			; _lcdFontTable[1480] @ 23680
	.field	14,16			; _lcdFontTable[1481] @ 23696
	.field	6,16			; _lcdFontTable[1482] @ 23712
	.field	2,16			; _lcdFontTable[1483] @ 23728
	.field	0,16			; _lcdFontTable[1484] @ 23744
	.field	0,16			; _lcdFontTable[1485] @ 23760
	.field	0,16			; _lcdFontTable[1486] @ 23776
	.field	0,16			; _lcdFontTable[1487] @ 23792
	.field	0,16			; _lcdFontTable[1488] @ 23808
	.field	0,16			; _lcdFontTable[1489] @ 23824
	.field	60,16			; _lcdFontTable[1490] @ 23840
	.field	12,16			; _lcdFontTable[1491] @ 23856
	.field	12,16			; _lcdFontTable[1492] @ 23872
	.field	12,16			; _lcdFontTable[1493] @ 23888
	.field	12,16			; _lcdFontTable[1494] @ 23904
	.field	12,16			; _lcdFontTable[1495] @ 23920
	.field	12,16			; _lcdFontTable[1496] @ 23936
	.field	12,16			; _lcdFontTable[1497] @ 23952
	.field	12,16			; _lcdFontTable[1498] @ 23968
	.field	60,16			; _lcdFontTable[1499] @ 23984
	.field	0,16			; _lcdFontTable[1500] @ 24000
	.field	0,16			; _lcdFontTable[1501] @ 24016
	.field	0,16			; _lcdFontTable[1502] @ 24032
	.field	0,16			; _lcdFontTable[1503] @ 24048
	.field	16,16			; _lcdFontTable[1504] @ 24064
	.field	56,16			; _lcdFontTable[1505] @ 24080
	.field	108,16			; _lcdFontTable[1506] @ 24096
	.field	198,16			; _lcdFontTable[1507] @ 24112
	.field	0,16			; _lcdFontTable[1508] @ 24128
	.field	0,16			; _lcdFontTable[1509] @ 24144
	.field	0,16			; _lcdFontTable[1510] @ 24160
	.field	0,16			; _lcdFontTable[1511] @ 24176
	.field	0,16			; _lcdFontTable[1512] @ 24192
	.field	0,16			; _lcdFontTable[1513] @ 24208
	.field	0,16			; _lcdFontTable[1514] @ 24224
	.field	0,16			; _lcdFontTable[1515] @ 24240
	.field	0,16			; _lcdFontTable[1516] @ 24256
	.field	0,16			; _lcdFontTable[1517] @ 24272
	.field	0,16			; _lcdFontTable[1518] @ 24288
	.field	0,16			; _lcdFontTable[1519] @ 24304
	.field	0,16			; _lcdFontTable[1520] @ 24320
	.field	0,16			; _lcdFontTable[1521] @ 24336
	.field	0,16			; _lcdFontTable[1522] @ 24352
	.field	0,16			; _lcdFontTable[1523] @ 24368
	.field	0,16			; _lcdFontTable[1524] @ 24384
	.field	0,16			; _lcdFontTable[1525] @ 24400
	.field	0,16			; _lcdFontTable[1526] @ 24416
	.field	0,16			; _lcdFontTable[1527] @ 24432
	.field	0,16			; _lcdFontTable[1528] @ 24448
	.field	0,16			; _lcdFontTable[1529] @ 24464
	.field	0,16			; _lcdFontTable[1530] @ 24480
	.field	0,16			; _lcdFontTable[1531] @ 24496
	.field	0,16			; _lcdFontTable[1532] @ 24512
	.field	255,16			; _lcdFontTable[1533] @ 24528
	.field	0,16			; _lcdFontTable[1534] @ 24544
	.field	0,16			; _lcdFontTable[1535] @ 24560
	.field	0,16			; _lcdFontTable[1536] @ 24576
	.field	48,16			; _lcdFontTable[1537] @ 24592
	.field	24,16			; _lcdFontTable[1538] @ 24608
	.field	12,16			; _lcdFontTable[1539] @ 24624
	.field	0,16			; _lcdFontTable[1540] @ 24640
	.field	0,16			; _lcdFontTable[1541] @ 24656
	.field	0,16			; _lcdFontTable[1542] @ 24672
	.field	0,16			; _lcdFontTable[1543] @ 24688
	.field	0,16			; _lcdFontTable[1544] @ 24704
	.field	0,16			; _lcdFontTable[1545] @ 24720
	.field	0,16			; _lcdFontTable[1546] @ 24736
	.field	0,16			; _lcdFontTable[1547] @ 24752
	.field	0,16			; _lcdFontTable[1548] @ 24768
	.field	0,16			; _lcdFontTable[1549] @ 24784
	.field	0,16			; _lcdFontTable[1550] @ 24800
	.field	0,16			; _lcdFontTable[1551] @ 24816
	.field	0,16			; _lcdFontTable[1552] @ 24832
	.field	0,16			; _lcdFontTable[1553] @ 24848
	.field	0,16			; _lcdFontTable[1554] @ 24864
	.field	0,16			; _lcdFontTable[1555] @ 24880
	.field	0,16			; _lcdFontTable[1556] @ 24896
	.field	120,16			; _lcdFontTable[1557] @ 24912
	.field	12,16			; _lcdFontTable[1558] @ 24928
	.field	124,16			; _lcdFontTable[1559] @ 24944
	.field	204,16			; _lcdFontTable[1560] @ 24960
	.field	204,16			; _lcdFontTable[1561] @ 24976
	.field	204,16			; _lcdFontTable[1562] @ 24992
	.field	118,16			; _lcdFontTable[1563] @ 25008
	.field	0,16			; _lcdFontTable[1564] @ 25024
	.field	0,16			; _lcdFontTable[1565] @ 25040
	.field	0,16			; _lcdFontTable[1566] @ 25056
	.field	0,16			; _lcdFontTable[1567] @ 25072
	.field	0,16			; _lcdFontTable[1568] @ 25088
	.field	0,16			; _lcdFontTable[1569] @ 25104
	.field	224,16			; _lcdFontTable[1570] @ 25120
	.field	96,16			; _lcdFontTable[1571] @ 25136
	.field	96,16			; _lcdFontTable[1572] @ 25152
	.field	120,16			; _lcdFontTable[1573] @ 25168
	.field	108,16			; _lcdFontTable[1574] @ 25184
	.field	102,16			; _lcdFontTable[1575] @ 25200
	.field	102,16			; _lcdFontTable[1576] @ 25216
	.field	102,16			; _lcdFontTable[1577] @ 25232
	.field	102,16			; _lcdFontTable[1578] @ 25248
	.field	124,16			; _lcdFontTable[1579] @ 25264
	.field	0,16			; _lcdFontTable[1580] @ 25280
	.field	0,16			; _lcdFontTable[1581] @ 25296
	.field	0,16			; _lcdFontTable[1582] @ 25312
	.field	0,16			; _lcdFontTable[1583] @ 25328
	.field	0,16			; _lcdFontTable[1584] @ 25344
	.field	0,16			; _lcdFontTable[1585] @ 25360
	.field	0,16			; _lcdFontTable[1586] @ 25376
	.field	0,16			; _lcdFontTable[1587] @ 25392
	.field	0,16			; _lcdFontTable[1588] @ 25408
	.field	124,16			; _lcdFontTable[1589] @ 25424
	.field	198,16			; _lcdFontTable[1590] @ 25440
	.field	192,16			; _lcdFontTable[1591] @ 25456
	.field	192,16			; _lcdFontTable[1592] @ 25472
	.field	192,16			; _lcdFontTable[1593] @ 25488
	.field	198,16			; _lcdFontTable[1594] @ 25504
	.field	124,16			; _lcdFontTable[1595] @ 25520
	.field	0,16			; _lcdFontTable[1596] @ 25536
	.field	0,16			; _lcdFontTable[1597] @ 25552
	.field	0,16			; _lcdFontTable[1598] @ 25568
	.field	0,16			; _lcdFontTable[1599] @ 25584
	.field	0,16			; _lcdFontTable[1600] @ 25600
	.field	0,16			; _lcdFontTable[1601] @ 25616
	.field	28,16			; _lcdFontTable[1602] @ 25632
	.field	12,16			; _lcdFontTable[1603] @ 25648
	.field	12,16			; _lcdFontTable[1604] @ 25664
	.field	60,16			; _lcdFontTable[1605] @ 25680
	.field	108,16			; _lcdFontTable[1606] @ 25696
	.field	204,16			; _lcdFontTable[1607] @ 25712
	.field	204,16			; _lcdFontTable[1608] @ 25728
	.field	204,16			; _lcdFontTable[1609] @ 25744
	.field	204,16			; _lcdFontTable[1610] @ 25760
	.field	118,16			; _lcdFontTable[1611] @ 25776
	.field	0,16			; _lcdFontTable[1612] @ 25792
	.field	0,16			; _lcdFontTable[1613] @ 25808
	.field	0,16			; _lcdFontTable[1614] @ 25824
	.field	0,16			; _lcdFontTable[1615] @ 25840
	.field	0,16			; _lcdFontTable[1616] @ 25856
	.field	0,16			; _lcdFontTable[1617] @ 25872
	.field	0,16			; _lcdFontTable[1618] @ 25888
	.field	0,16			; _lcdFontTable[1619] @ 25904
	.field	0,16			; _lcdFontTable[1620] @ 25920
	.field	124,16			; _lcdFontTable[1621] @ 25936
	.field	198,16			; _lcdFontTable[1622] @ 25952
	.field	254,16			; _lcdFontTable[1623] @ 25968
	.field	192,16			; _lcdFontTable[1624] @ 25984
	.field	192,16			; _lcdFontTable[1625] @ 26000
	.field	198,16			; _lcdFontTable[1626] @ 26016
	.field	124,16			; _lcdFontTable[1627] @ 26032
	.field	0,16			; _lcdFontTable[1628] @ 26048
	.field	0,16			; _lcdFontTable[1629] @ 26064
	.field	0,16			; _lcdFontTable[1630] @ 26080
	.field	0,16			; _lcdFontTable[1631] @ 26096
	.field	0,16			; _lcdFontTable[1632] @ 26112
	.field	0,16			; _lcdFontTable[1633] @ 26128
	.field	28,16			; _lcdFontTable[1634] @ 26144
	.field	54,16			; _lcdFontTable[1635] @ 26160
	.field	50,16			; _lcdFontTable[1636] @ 26176
	.field	48,16			; _lcdFontTable[1637] @ 26192
	.field	120,16			; _lcdFontTable[1638] @ 26208
	.field	48,16			; _lcdFontTable[1639] @ 26224
	.field	48,16			; _lcdFontTable[1640] @ 26240
	.field	48,16			; _lcdFontTable[1641] @ 26256
	.field	48,16			; _lcdFontTable[1642] @ 26272
	.field	120,16			; _lcdFontTable[1643] @ 26288
	.field	0,16			; _lcdFontTable[1644] @ 26304
	.field	0,16			; _lcdFontTable[1645] @ 26320
	.field	0,16			; _lcdFontTable[1646] @ 26336
	.field	0,16			; _lcdFontTable[1647] @ 26352
	.field	0,16			; _lcdFontTable[1648] @ 26368
	.field	0,16			; _lcdFontTable[1649] @ 26384
	.field	0,16			; _lcdFontTable[1650] @ 26400
	.field	0,16			; _lcdFontTable[1651] @ 26416
	.field	0,16			; _lcdFontTable[1652] @ 26432
	.field	118,16			; _lcdFontTable[1653] @ 26448
	.field	204,16			; _lcdFontTable[1654] @ 26464
	.field	204,16			; _lcdFontTable[1655] @ 26480
	.field	204,16			; _lcdFontTable[1656] @ 26496
	.field	204,16			; _lcdFontTable[1657] @ 26512
	.field	204,16			; _lcdFontTable[1658] @ 26528
	.field	124,16			; _lcdFontTable[1659] @ 26544
	.field	12,16			; _lcdFontTable[1660] @ 26560
	.field	204,16			; _lcdFontTable[1661] @ 26576
	.field	120,16			; _lcdFontTable[1662] @ 26592
	.field	0,16			; _lcdFontTable[1663] @ 26608
	.field	0,16			; _lcdFontTable[1664] @ 26624
	.field	0,16			; _lcdFontTable[1665] @ 26640
	.field	224,16			; _lcdFontTable[1666] @ 26656
	.field	96,16			; _lcdFontTable[1667] @ 26672
	.field	96,16			; _lcdFontTable[1668] @ 26688
	.field	108,16			; _lcdFontTable[1669] @ 26704
	.field	118,16			; _lcdFontTable[1670] @ 26720
	.field	102,16			; _lcdFontTable[1671] @ 26736
	.field	102,16			; _lcdFontTable[1672] @ 26752
	.field	102,16			; _lcdFontTable[1673] @ 26768
	.field	102,16			; _lcdFontTable[1674] @ 26784
	.field	230,16			; _lcdFontTable[1675] @ 26800
	.field	0,16			; _lcdFontTable[1676] @ 26816
	.field	0,16			; _lcdFontTable[1677] @ 26832
	.field	0,16			; _lcdFontTable[1678] @ 26848
	.field	0,16			; _lcdFontTable[1679] @ 26864
	.field	0,16			; _lcdFontTable[1680] @ 26880
	.field	0,16			; _lcdFontTable[1681] @ 26896
	.field	24,16			; _lcdFontTable[1682] @ 26912
	.field	24,16			; _lcdFontTable[1683] @ 26928
	.field	0,16			; _lcdFontTable[1684] @ 26944
	.field	56,16			; _lcdFontTable[1685] @ 26960
	.field	24,16			; _lcdFontTable[1686] @ 26976
	.field	24,16			; _lcdFontTable[1687] @ 26992
	.field	24,16			; _lcdFontTable[1688] @ 27008
	.field	24,16			; _lcdFontTable[1689] @ 27024
	.field	24,16			; _lcdFontTable[1690] @ 27040
	.field	60,16			; _lcdFontTable[1691] @ 27056
	.field	0,16			; _lcdFontTable[1692] @ 27072
	.field	0,16			; _lcdFontTable[1693] @ 27088
	.field	0,16			; _lcdFontTable[1694] @ 27104
	.field	0,16			; _lcdFontTable[1695] @ 27120
	.field	0,16			; _lcdFontTable[1696] @ 27136
	.field	0,16			; _lcdFontTable[1697] @ 27152
	.field	6,16			; _lcdFontTable[1698] @ 27168
	.field	6,16			; _lcdFontTable[1699] @ 27184
	.field	0,16			; _lcdFontTable[1700] @ 27200
	.field	14,16			; _lcdFontTable[1701] @ 27216
	.field	6,16			; _lcdFontTable[1702] @ 27232
	.field	6,16			; _lcdFontTable[1703] @ 27248
	.field	6,16			; _lcdFontTable[1704] @ 27264
	.field	6,16			; _lcdFontTable[1705] @ 27280
	.field	6,16			; _lcdFontTable[1706] @ 27296
	.field	6,16			; _lcdFontTable[1707] @ 27312
	.field	102,16			; _lcdFontTable[1708] @ 27328
	.field	102,16			; _lcdFontTable[1709] @ 27344
	.field	60,16			; _lcdFontTable[1710] @ 27360
	.field	0,16			; _lcdFontTable[1711] @ 27376
	.field	0,16			; _lcdFontTable[1712] @ 27392
	.field	0,16			; _lcdFontTable[1713] @ 27408
	.field	224,16			; _lcdFontTable[1714] @ 27424
	.field	96,16			; _lcdFontTable[1715] @ 27440
	.field	96,16			; _lcdFontTable[1716] @ 27456
	.field	102,16			; _lcdFontTable[1717] @ 27472
	.field	108,16			; _lcdFontTable[1718] @ 27488
	.field	120,16			; _lcdFontTable[1719] @ 27504
	.field	120,16			; _lcdFontTable[1720] @ 27520
	.field	108,16			; _lcdFontTable[1721] @ 27536
	.field	102,16			; _lcdFontTable[1722] @ 27552
	.field	230,16			; _lcdFontTable[1723] @ 27568
	.field	0,16			; _lcdFontTable[1724] @ 27584
	.field	0,16			; _lcdFontTable[1725] @ 27600
	.field	0,16			; _lcdFontTable[1726] @ 27616
	.field	0,16			; _lcdFontTable[1727] @ 27632
	.field	0,16			; _lcdFontTable[1728] @ 27648
	.field	0,16			; _lcdFontTable[1729] @ 27664
	.field	56,16			; _lcdFontTable[1730] @ 27680
	.field	24,16			; _lcdFontTable[1731] @ 27696
	.field	24,16			; _lcdFontTable[1732] @ 27712
	.field	24,16			; _lcdFontTable[1733] @ 27728
	.field	24,16			; _lcdFontTable[1734] @ 27744
	.field	24,16			; _lcdFontTable[1735] @ 27760
	.field	24,16			; _lcdFontTable[1736] @ 27776
	.field	24,16			; _lcdFontTable[1737] @ 27792
	.field	24,16			; _lcdFontTable[1738] @ 27808
	.field	60,16			; _lcdFontTable[1739] @ 27824
	.field	0,16			; _lcdFontTable[1740] @ 27840
	.field	0,16			; _lcdFontTable[1741] @ 27856
	.field	0,16			; _lcdFontTable[1742] @ 27872
	.field	0,16			; _lcdFontTable[1743] @ 27888
	.field	0,16			; _lcdFontTable[1744] @ 27904
	.field	0,16			; _lcdFontTable[1745] @ 27920
	.field	0,16			; _lcdFontTable[1746] @ 27936
	.field	0,16			; _lcdFontTable[1747] @ 27952
	.field	0,16			; _lcdFontTable[1748] @ 27968
	.field	236,16			; _lcdFontTable[1749] @ 27984
	.field	254,16			; _lcdFontTable[1750] @ 28000
	.field	214,16			; _lcdFontTable[1751] @ 28016
	.field	214,16			; _lcdFontTable[1752] @ 28032
	.field	214,16			; _lcdFontTable[1753] @ 28048
	.field	214,16			; _lcdFontTable[1754] @ 28064
	.field	198,16			; _lcdFontTable[1755] @ 28080
	.field	0,16			; _lcdFontTable[1756] @ 28096
	.field	0,16			; _lcdFontTable[1757] @ 28112
	.field	0,16			; _lcdFontTable[1758] @ 28128
	.field	0,16			; _lcdFontTable[1759] @ 28144
	.field	0,16			; _lcdFontTable[1760] @ 28160
	.field	0,16			; _lcdFontTable[1761] @ 28176
	.field	0,16			; _lcdFontTable[1762] @ 28192
	.field	0,16			; _lcdFontTable[1763] @ 28208
	.field	0,16			; _lcdFontTable[1764] @ 28224
	.field	220,16			; _lcdFontTable[1765] @ 28240
	.field	102,16			; _lcdFontTable[1766] @ 28256
	.field	102,16			; _lcdFontTable[1767] @ 28272
	.field	102,16			; _lcdFontTable[1768] @ 28288
	.field	102,16			; _lcdFontTable[1769] @ 28304
	.field	102,16			; _lcdFontTable[1770] @ 28320
	.field	102,16			; _lcdFontTable[1771] @ 28336
	.field	0,16			; _lcdFontTable[1772] @ 28352
	.field	0,16			; _lcdFontTable[1773] @ 28368
	.field	0,16			; _lcdFontTable[1774] @ 28384
	.field	0,16			; _lcdFontTable[1775] @ 28400
	.field	0,16			; _lcdFontTable[1776] @ 28416
	.field	0,16			; _lcdFontTable[1777] @ 28432
	.field	0,16			; _lcdFontTable[1778] @ 28448
	.field	0,16			; _lcdFontTable[1779] @ 28464
	.field	0,16			; _lcdFontTable[1780] @ 28480
	.field	124,16			; _lcdFontTable[1781] @ 28496
	.field	198,16			; _lcdFontTable[1782] @ 28512
	.field	198,16			; _lcdFontTable[1783] @ 28528
	.field	198,16			; _lcdFontTable[1784] @ 28544
	.field	198,16			; _lcdFontTable[1785] @ 28560
	.field	198,16			; _lcdFontTable[1786] @ 28576
	.field	124,16			; _lcdFontTable[1787] @ 28592
	.field	0,16			; _lcdFontTable[1788] @ 28608
	.field	0,16			; _lcdFontTable[1789] @ 28624
	.field	0,16			; _lcdFontTable[1790] @ 28640
	.field	0,16			; _lcdFontTable[1791] @ 28656
	.field	0,16			; _lcdFontTable[1792] @ 28672
	.field	0,16			; _lcdFontTable[1793] @ 28688
	.field	0,16			; _lcdFontTable[1794] @ 28704
	.field	0,16			; _lcdFontTable[1795] @ 28720
	.field	0,16			; _lcdFontTable[1796] @ 28736
	.field	220,16			; _lcdFontTable[1797] @ 28752
	.field	102,16			; _lcdFontTable[1798] @ 28768
	.field	102,16			; _lcdFontTable[1799] @ 28784
	.field	102,16			; _lcdFontTable[1800] @ 28800
	.field	102,16			; _lcdFontTable[1801] @ 28816
	.field	102,16			; _lcdFontTable[1802] @ 28832
	.field	124,16			; _lcdFontTable[1803] @ 28848
	.field	96,16			; _lcdFontTable[1804] @ 28864
	.field	96,16			; _lcdFontTable[1805] @ 28880
	.field	240,16			; _lcdFontTable[1806] @ 28896
	.field	0,16			; _lcdFontTable[1807] @ 28912
	.field	0,16			; _lcdFontTable[1808] @ 28928
	.field	0,16			; _lcdFontTable[1809] @ 28944
	.field	0,16			; _lcdFontTable[1810] @ 28960
	.field	0,16			; _lcdFontTable[1811] @ 28976
	.field	0,16			; _lcdFontTable[1812] @ 28992
	.field	118,16			; _lcdFontTable[1813] @ 29008
	.field	204,16			; _lcdFontTable[1814] @ 29024
	.field	204,16			; _lcdFontTable[1815] @ 29040
	.field	204,16			; _lcdFontTable[1816] @ 29056
	.field	204,16			; _lcdFontTable[1817] @ 29072
	.field	204,16			; _lcdFontTable[1818] @ 29088
	.field	124,16			; _lcdFontTable[1819] @ 29104
	.field	12,16			; _lcdFontTable[1820] @ 29120
	.field	12,16			; _lcdFontTable[1821] @ 29136
	.field	30,16			; _lcdFontTable[1822] @ 29152
	.field	0,16			; _lcdFontTable[1823] @ 29168
	.field	0,16			; _lcdFontTable[1824] @ 29184
	.field	0,16			; _lcdFontTable[1825] @ 29200
	.field	0,16			; _lcdFontTable[1826] @ 29216
	.field	0,16			; _lcdFontTable[1827] @ 29232
	.field	0,16			; _lcdFontTable[1828] @ 29248
	.field	220,16			; _lcdFontTable[1829] @ 29264
	.field	118,16			; _lcdFontTable[1830] @ 29280
	.field	102,16			; _lcdFontTable[1831] @ 29296
	.field	96,16			; _lcdFontTable[1832] @ 29312
	.field	96,16			; _lcdFontTable[1833] @ 29328
	.field	96,16			; _lcdFontTable[1834] @ 29344
	.field	240,16			; _lcdFontTable[1835] @ 29360
	.field	0,16			; _lcdFontTable[1836] @ 29376
	.field	0,16			; _lcdFontTable[1837] @ 29392
	.field	0,16			; _lcdFontTable[1838] @ 29408
	.field	0,16			; _lcdFontTable[1839] @ 29424
	.field	0,16			; _lcdFontTable[1840] @ 29440
	.field	0,16			; _lcdFontTable[1841] @ 29456
	.field	0,16			; _lcdFontTable[1842] @ 29472
	.field	0,16			; _lcdFontTable[1843] @ 29488
	.field	0,16			; _lcdFontTable[1844] @ 29504
	.field	124,16			; _lcdFontTable[1845] @ 29520
	.field	198,16			; _lcdFontTable[1846] @ 29536
	.field	96,16			; _lcdFontTable[1847] @ 29552
	.field	56,16			; _lcdFontTable[1848] @ 29568
	.field	12,16			; _lcdFontTable[1849] @ 29584
	.field	198,16			; _lcdFontTable[1850] @ 29600
	.field	124,16			; _lcdFontTable[1851] @ 29616
	.field	0,16			; _lcdFontTable[1852] @ 29632
	.field	0,16			; _lcdFontTable[1853] @ 29648
	.field	0,16			; _lcdFontTable[1854] @ 29664
	.field	0,16			; _lcdFontTable[1855] @ 29680
	.field	0,16			; _lcdFontTable[1856] @ 29696
	.field	0,16			; _lcdFontTable[1857] @ 29712
	.field	16,16			; _lcdFontTable[1858] @ 29728
	.field	48,16			; _lcdFontTable[1859] @ 29744
	.field	48,16			; _lcdFontTable[1860] @ 29760
	.field	252,16			; _lcdFontTable[1861] @ 29776
	.field	48,16			; _lcdFontTable[1862] @ 29792
	.field	48,16			; _lcdFontTable[1863] @ 29808
	.field	48,16			; _lcdFontTable[1864] @ 29824
	.field	48,16			; _lcdFontTable[1865] @ 29840
	.field	54,16			; _lcdFontTable[1866] @ 29856
	.field	28,16			; _lcdFontTable[1867] @ 29872
	.field	0,16			; _lcdFontTable[1868] @ 29888
	.field	0,16			; _lcdFontTable[1869] @ 29904
	.field	0,16			; _lcdFontTable[1870] @ 29920
	.field	0,16			; _lcdFontTable[1871] @ 29936
	.field	0,16			; _lcdFontTable[1872] @ 29952
	.field	0,16			; _lcdFontTable[1873] @ 29968
	.field	0,16			; _lcdFontTable[1874] @ 29984
	.field	0,16			; _lcdFontTable[1875] @ 30000
	.field	0,16			; _lcdFontTable[1876] @ 30016
	.field	204,16			; _lcdFontTable[1877] @ 30032
	.field	204,16			; _lcdFontTable[1878] @ 30048
	.field	204,16			; _lcdFontTable[1879] @ 30064
	.field	204,16			; _lcdFontTable[1880] @ 30080
	.field	204,16			; _lcdFontTable[1881] @ 30096
	.field	204,16			; _lcdFontTable[1882] @ 30112
	.field	118,16			; _lcdFontTable[1883] @ 30128
	.field	0,16			; _lcdFontTable[1884] @ 30144
	.field	0,16			; _lcdFontTable[1885] @ 30160
	.field	0,16			; _lcdFontTable[1886] @ 30176
	.field	0,16			; _lcdFontTable[1887] @ 30192
	.field	0,16			; _lcdFontTable[1888] @ 30208
	.field	0,16			; _lcdFontTable[1889] @ 30224
	.field	0,16			; _lcdFontTable[1890] @ 30240
	.field	0,16			; _lcdFontTable[1891] @ 30256
	.field	0,16			; _lcdFontTable[1892] @ 30272
	.field	198,16			; _lcdFontTable[1893] @ 30288
	.field	198,16			; _lcdFontTable[1894] @ 30304
	.field	198,16			; _lcdFontTable[1895] @ 30320
	.field	198,16			; _lcdFontTable[1896] @ 30336
	.field	198,16			; _lcdFontTable[1897] @ 30352
	.field	108,16			; _lcdFontTable[1898] @ 30368
	.field	56,16			; _lcdFontTable[1899] @ 30384
	.field	0,16			; _lcdFontTable[1900] @ 30400
	.field	0,16			; _lcdFontTable[1901] @ 30416
	.field	0,16			; _lcdFontTable[1902] @ 30432
	.field	0,16			; _lcdFontTable[1903] @ 30448
	.field	0,16			; _lcdFontTable[1904] @ 30464
	.field	0,16			; _lcdFontTable[1905] @ 30480
	.field	0,16			; _lcdFontTable[1906] @ 30496
	.field	0,16			; _lcdFontTable[1907] @ 30512
	.field	0,16			; _lcdFontTable[1908] @ 30528
	.field	198,16			; _lcdFontTable[1909] @ 30544
	.field	198,16			; _lcdFontTable[1910] @ 30560
	.field	214,16			; _lcdFontTable[1911] @ 30576
	.field	214,16			; _lcdFontTable[1912] @ 30592
	.field	214,16			; _lcdFontTable[1913] @ 30608
	.field	254,16			; _lcdFontTable[1914] @ 30624
	.field	108,16			; _lcdFontTable[1915] @ 30640
	.field	0,16			; _lcdFontTable[1916] @ 30656
	.field	0,16			; _lcdFontTable[1917] @ 30672
	.field	0,16			; _lcdFontTable[1918] @ 30688
	.field	0,16			; _lcdFontTable[1919] @ 30704
	.field	0,16			; _lcdFontTable[1920] @ 30720
	.field	0,16			; _lcdFontTable[1921] @ 30736
	.field	0,16			; _lcdFontTable[1922] @ 30752
	.field	0,16			; _lcdFontTable[1923] @ 30768
	.field	0,16			; _lcdFontTable[1924] @ 30784
	.field	198,16			; _lcdFontTable[1925] @ 30800
	.field	108,16			; _lcdFontTable[1926] @ 30816
	.field	56,16			; _lcdFontTable[1927] @ 30832
	.field	56,16			; _lcdFontTable[1928] @ 30848
	.field	56,16			; _lcdFontTable[1929] @ 30864
	.field	108,16			; _lcdFontTable[1930] @ 30880
	.field	198,16			; _lcdFontTable[1931] @ 30896
	.field	0,16			; _lcdFontTable[1932] @ 30912
	.field	0,16			; _lcdFontTable[1933] @ 30928
	.field	0,16			; _lcdFontTable[1934] @ 30944
	.field	0,16			; _lcdFontTable[1935] @ 30960
	.field	0,16			; _lcdFontTable[1936] @ 30976
	.field	0,16			; _lcdFontTable[1937] @ 30992
	.field	0,16			; _lcdFontTable[1938] @ 31008
	.field	0,16			; _lcdFontTable[1939] @ 31024
	.field	0,16			; _lcdFontTable[1940] @ 31040
	.field	198,16			; _lcdFontTable[1941] @ 31056
	.field	198,16			; _lcdFontTable[1942] @ 31072
	.field	198,16			; _lcdFontTable[1943] @ 31088
	.field	198,16			; _lcdFontTable[1944] @ 31104
	.field	198,16			; _lcdFontTable[1945] @ 31120
	.field	198,16			; _lcdFontTable[1946] @ 31136
	.field	126,16			; _lcdFontTable[1947] @ 31152
	.field	6,16			; _lcdFontTable[1948] @ 31168
	.field	12,16			; _lcdFontTable[1949] @ 31184
	.field	248,16			; _lcdFontTable[1950] @ 31200
	.field	0,16			; _lcdFontTable[1951] @ 31216
	.field	0,16			; _lcdFontTable[1952] @ 31232
	.field	0,16			; _lcdFontTable[1953] @ 31248
	.field	0,16			; _lcdFontTable[1954] @ 31264
	.field	0,16			; _lcdFontTable[1955] @ 31280
	.field	0,16			; _lcdFontTable[1956] @ 31296
	.field	254,16			; _lcdFontTable[1957] @ 31312
	.field	204,16			; _lcdFontTable[1958] @ 31328
	.field	24,16			; _lcdFontTable[1959] @ 31344
	.field	48,16			; _lcdFontTable[1960] @ 31360
	.field	96,16			; _lcdFontTable[1961] @ 31376
	.field	198,16			; _lcdFontTable[1962] @ 31392
	.field	254,16			; _lcdFontTable[1963] @ 31408
	.field	0,16			; _lcdFontTable[1964] @ 31424
	.field	0,16			; _lcdFontTable[1965] @ 31440
	.field	0,16			; _lcdFontTable[1966] @ 31456
	.field	0,16			; _lcdFontTable[1967] @ 31472
	.field	0,16			; _lcdFontTable[1968] @ 31488
	.field	0,16			; _lcdFontTable[1969] @ 31504
	.field	14,16			; _lcdFontTable[1970] @ 31520
	.field	24,16			; _lcdFontTable[1971] @ 31536
	.field	24,16			; _lcdFontTable[1972] @ 31552
	.field	24,16			; _lcdFontTable[1973] @ 31568
	.field	112,16			; _lcdFontTable[1974] @ 31584
	.field	24,16			; _lcdFontTable[1975] @ 31600
	.field	24,16			; _lcdFontTable[1976] @ 31616
	.field	24,16			; _lcdFontTable[1977] @ 31632
	.field	24,16			; _lcdFontTable[1978] @ 31648
	.field	14,16			; _lcdFontTable[1979] @ 31664
	.field	0,16			; _lcdFontTable[1980] @ 31680
	.field	0,16			; _lcdFontTable[1981] @ 31696
	.field	0,16			; _lcdFontTable[1982] @ 31712
	.field	0,16			; _lcdFontTable[1983] @ 31728
	.field	0,16			; _lcdFontTable[1984] @ 31744
	.field	0,16			; _lcdFontTable[1985] @ 31760
	.field	24,16			; _lcdFontTable[1986] @ 31776
	.field	24,16			; _lcdFontTable[1987] @ 31792
	.field	24,16			; _lcdFontTable[1988] @ 31808
	.field	24,16			; _lcdFontTable[1989] @ 31824
	.field	24,16			; _lcdFontTable[1990] @ 31840
	.field	24,16			; _lcdFontTable[1991] @ 31856
	.field	24,16			; _lcdFontTable[1992] @ 31872
	.field	24,16			; _lcdFontTable[1993] @ 31888
	.field	24,16			; _lcdFontTable[1994] @ 31904
	.field	24,16			; _lcdFontTable[1995] @ 31920
	.field	0,16			; _lcdFontTable[1996] @ 31936
	.field	0,16			; _lcdFontTable[1997] @ 31952
	.field	0,16			; _lcdFontTable[1998] @ 31968
	.field	0,16			; _lcdFontTable[1999] @ 31984
	.field	0,16			; _lcdFontTable[2000] @ 32000
	.field	0,16			; _lcdFontTable[2001] @ 32016
	.field	112,16			; _lcdFontTable[2002] @ 32032
	.field	24,16			; _lcdFontTable[2003] @ 32048
	.field	24,16			; _lcdFontTable[2004] @ 32064
	.field	24,16			; _lcdFontTable[2005] @ 32080
	.field	14,16			; _lcdFontTable[2006] @ 32096
	.field	24,16			; _lcdFontTable[2007] @ 32112
	.field	24,16			; _lcdFontTable[2008] @ 32128
	.field	24,16			; _lcdFontTable[2009] @ 32144
	.field	24,16			; _lcdFontTable[2010] @ 32160
	.field	112,16			; _lcdFontTable[2011] @ 32176
	.field	0,16			; _lcdFontTable[2012] @ 32192
	.field	0,16			; _lcdFontTable[2013] @ 32208
	.field	0,16			; _lcdFontTable[2014] @ 32224
	.field	0,16			; _lcdFontTable[2015] @ 32240
	.field	0,16			; _lcdFontTable[2016] @ 32256
	.field	118,16			; _lcdFontTable[2017] @ 32272
	.field	220,16			; _lcdFontTable[2018] @ 32288
	.field	0,16			; _lcdFontTable[2019] @ 32304
	.field	0,16			; _lcdFontTable[2020] @ 32320
	.field	0,16			; _lcdFontTable[2021] @ 32336
	.field	0,16			; _lcdFontTable[2022] @ 32352
	.field	0,16			; _lcdFontTable[2023] @ 32368
	.field	0,16			; _lcdFontTable[2024] @ 32384
	.field	0,16			; _lcdFontTable[2025] @ 32400
	.field	0,16			; _lcdFontTable[2026] @ 32416
	.field	0,16			; _lcdFontTable[2027] @ 32432
	.field	0,16			; _lcdFontTable[2028] @ 32448
	.field	0,16			; _lcdFontTable[2029] @ 32464
	.field	0,16			; _lcdFontTable[2030] @ 32480
	.field	0,16			; _lcdFontTable[2031] @ 32496
	.field	0,16			; _lcdFontTable[2032] @ 32512
	.field	0,16			; _lcdFontTable[2033] @ 32528
	.field	0,16			; _lcdFontTable[2034] @ 32544
	.field	0,16			; _lcdFontTable[2035] @ 32560
	.field	16,16			; _lcdFontTable[2036] @ 32576
	.field	56,16			; _lcdFontTable[2037] @ 32592
	.field	108,16			; _lcdFontTable[2038] @ 32608
	.field	198,16			; _lcdFontTable[2039] @ 32624
	.field	198,16			; _lcdFontTable[2040] @ 32640
	.field	198,16			; _lcdFontTable[2041] @ 32656
	.field	254,16			; _lcdFontTable[2042] @ 32672
	.field	0,16			; _lcdFontTable[2043] @ 32688
	.field	0,16			; _lcdFontTable[2044] @ 32704
	.field	0,16			; _lcdFontTable[2045] @ 32720
	.field	0,16			; _lcdFontTable[2046] @ 32736
	.field	0,16			; _lcdFontTable[2047] @ 32752
	.field	0,16			; _lcdFontTable[2048] @ 32768
	.field	0,16			; _lcdFontTable[2049] @ 32784
	.field	60,16			; _lcdFontTable[2050] @ 32800
	.field	102,16			; _lcdFontTable[2051] @ 32816
	.field	194,16			; _lcdFontTable[2052] @ 32832
	.field	192,16			; _lcdFontTable[2053] @ 32848
	.field	192,16			; _lcdFontTable[2054] @ 32864
	.field	192,16			; _lcdFontTable[2055] @ 32880
	.field	192,16			; _lcdFontTable[2056] @ 32896
	.field	194,16			; _lcdFontTable[2057] @ 32912
	.field	102,16			; _lcdFontTable[2058] @ 32928
	.field	60,16			; _lcdFontTable[2059] @ 32944
	.field	24,16			; _lcdFontTable[2060] @ 32960
	.field	112,16			; _lcdFontTable[2061] @ 32976
	.field	0,16			; _lcdFontTable[2062] @ 32992
	.field	0,16			; _lcdFontTable[2063] @ 33008
	.field	0,16			; _lcdFontTable[2064] @ 33024
	.field	0,16			; _lcdFontTable[2065] @ 33040
	.field	204,16			; _lcdFontTable[2066] @ 33056
	.field	0,16			; _lcdFontTable[2067] @ 33072
	.field	0,16			; _lcdFontTable[2068] @ 33088
	.field	204,16			; _lcdFontTable[2069] @ 33104
	.field	204,16			; _lcdFontTable[2070] @ 33120
	.field	204,16			; _lcdFontTable[2071] @ 33136
	.field	204,16			; _lcdFontTable[2072] @ 33152
	.field	204,16			; _lcdFontTable[2073] @ 33168
	.field	204,16			; _lcdFontTable[2074] @ 33184
	.field	118,16			; _lcdFontTable[2075] @ 33200
	.field	0,16			; _lcdFontTable[2076] @ 33216
	.field	0,16			; _lcdFontTable[2077] @ 33232
	.field	0,16			; _lcdFontTable[2078] @ 33248
	.field	0,16			; _lcdFontTable[2079] @ 33264
	.field	0,16			; _lcdFontTable[2080] @ 33280
	.field	12,16			; _lcdFontTable[2081] @ 33296
	.field	24,16			; _lcdFontTable[2082] @ 33312
	.field	48,16			; _lcdFontTable[2083] @ 33328
	.field	0,16			; _lcdFontTable[2084] @ 33344
	.field	124,16			; _lcdFontTable[2085] @ 33360
	.field	198,16			; _lcdFontTable[2086] @ 33376
	.field	254,16			; _lcdFontTable[2087] @ 33392
	.field	192,16			; _lcdFontTable[2088] @ 33408
	.field	192,16			; _lcdFontTable[2089] @ 33424
	.field	198,16			; _lcdFontTable[2090] @ 33440
	.field	124,16			; _lcdFontTable[2091] @ 33456
	.field	0,16			; _lcdFontTable[2092] @ 33472
	.field	0,16			; _lcdFontTable[2093] @ 33488
	.field	0,16			; _lcdFontTable[2094] @ 33504
	.field	0,16			; _lcdFontTable[2095] @ 33520
	.field	0,16			; _lcdFontTable[2096] @ 33536
	.field	16,16			; _lcdFontTable[2097] @ 33552
	.field	56,16			; _lcdFontTable[2098] @ 33568
	.field	108,16			; _lcdFontTable[2099] @ 33584
	.field	0,16			; _lcdFontTable[2100] @ 33600
	.field	120,16			; _lcdFontTable[2101] @ 33616
	.field	12,16			; _lcdFontTable[2102] @ 33632
	.field	124,16			; _lcdFontTable[2103] @ 33648
	.field	204,16			; _lcdFontTable[2104] @ 33664
	.field	204,16			; _lcdFontTable[2105] @ 33680
	.field	204,16			; _lcdFontTable[2106] @ 33696
	.field	118,16			; _lcdFontTable[2107] @ 33712
	.field	0,16			; _lcdFontTable[2108] @ 33728
	.field	0,16			; _lcdFontTable[2109] @ 33744
	.field	0,16			; _lcdFontTable[2110] @ 33760
	.field	0,16			; _lcdFontTable[2111] @ 33776
	.field	0,16			; _lcdFontTable[2112] @ 33792
	.field	0,16			; _lcdFontTable[2113] @ 33808
	.field	204,16			; _lcdFontTable[2114] @ 33824
	.field	0,16			; _lcdFontTable[2115] @ 33840
	.field	0,16			; _lcdFontTable[2116] @ 33856
	.field	120,16			; _lcdFontTable[2117] @ 33872
	.field	12,16			; _lcdFontTable[2118] @ 33888
	.field	124,16			; _lcdFontTable[2119] @ 33904
	.field	204,16			; _lcdFontTable[2120] @ 33920
	.field	204,16			; _lcdFontTable[2121] @ 33936
	.field	204,16			; _lcdFontTable[2122] @ 33952
	.field	118,16			; _lcdFontTable[2123] @ 33968
	.field	0,16			; _lcdFontTable[2124] @ 33984
	.field	0,16			; _lcdFontTable[2125] @ 34000
	.field	0,16			; _lcdFontTable[2126] @ 34016
	.field	0,16			; _lcdFontTable[2127] @ 34032
	.field	0,16			; _lcdFontTable[2128] @ 34048
	.field	96,16			; _lcdFontTable[2129] @ 34064
	.field	48,16			; _lcdFontTable[2130] @ 34080
	.field	24,16			; _lcdFontTable[2131] @ 34096
	.field	0,16			; _lcdFontTable[2132] @ 34112
	.field	120,16			; _lcdFontTable[2133] @ 34128
	.field	12,16			; _lcdFontTable[2134] @ 34144
	.field	124,16			; _lcdFontTable[2135] @ 34160
	.field	204,16			; _lcdFontTable[2136] @ 34176
	.field	204,16			; _lcdFontTable[2137] @ 34192
	.field	204,16			; _lcdFontTable[2138] @ 34208
	.field	118,16			; _lcdFontTable[2139] @ 34224
	.field	0,16			; _lcdFontTable[2140] @ 34240
	.field	0,16			; _lcdFontTable[2141] @ 34256
	.field	0,16			; _lcdFontTable[2142] @ 34272
	.field	0,16			; _lcdFontTable[2143] @ 34288
	.field	0,16			; _lcdFontTable[2144] @ 34304
	.field	56,16			; _lcdFontTable[2145] @ 34320
	.field	108,16			; _lcdFontTable[2146] @ 34336
	.field	56,16			; _lcdFontTable[2147] @ 34352
	.field	0,16			; _lcdFontTable[2148] @ 34368
	.field	120,16			; _lcdFontTable[2149] @ 34384
	.field	12,16			; _lcdFontTable[2150] @ 34400
	.field	124,16			; _lcdFontTable[2151] @ 34416
	.field	204,16			; _lcdFontTable[2152] @ 34432
	.field	204,16			; _lcdFontTable[2153] @ 34448
	.field	204,16			; _lcdFontTable[2154] @ 34464
	.field	118,16			; _lcdFontTable[2155] @ 34480
	.field	0,16			; _lcdFontTable[2156] @ 34496
	.field	0,16			; _lcdFontTable[2157] @ 34512
	.field	0,16			; _lcdFontTable[2158] @ 34528
	.field	0,16			; _lcdFontTable[2159] @ 34544
	.field	0,16			; _lcdFontTable[2160] @ 34560
	.field	0,16			; _lcdFontTable[2161] @ 34576
	.field	0,16			; _lcdFontTable[2162] @ 34592
	.field	0,16			; _lcdFontTable[2163] @ 34608
	.field	0,16			; _lcdFontTable[2164] @ 34624
	.field	124,16			; _lcdFontTable[2165] @ 34640
	.field	198,16			; _lcdFontTable[2166] @ 34656
	.field	192,16			; _lcdFontTable[2167] @ 34672
	.field	192,16			; _lcdFontTable[2168] @ 34688
	.field	192,16			; _lcdFontTable[2169] @ 34704
	.field	198,16			; _lcdFontTable[2170] @ 34720
	.field	124,16			; _lcdFontTable[2171] @ 34736
	.field	24,16			; _lcdFontTable[2172] @ 34752
	.field	112,16			; _lcdFontTable[2173] @ 34768
	.field	0,16			; _lcdFontTable[2174] @ 34784
	.field	0,16			; _lcdFontTable[2175] @ 34800
	.field	0,16			; _lcdFontTable[2176] @ 34816
	.field	16,16			; _lcdFontTable[2177] @ 34832
	.field	56,16			; _lcdFontTable[2178] @ 34848
	.field	108,16			; _lcdFontTable[2179] @ 34864
	.field	0,16			; _lcdFontTable[2180] @ 34880
	.field	124,16			; _lcdFontTable[2181] @ 34896
	.field	198,16			; _lcdFontTable[2182] @ 34912
	.field	254,16			; _lcdFontTable[2183] @ 34928
	.field	192,16			; _lcdFontTable[2184] @ 34944
	.field	192,16			; _lcdFontTable[2185] @ 34960
	.field	198,16			; _lcdFontTable[2186] @ 34976
	.field	124,16			; _lcdFontTable[2187] @ 34992
	.field	0,16			; _lcdFontTable[2188] @ 35008
	.field	0,16			; _lcdFontTable[2189] @ 35024
	.field	0,16			; _lcdFontTable[2190] @ 35040
	.field	0,16			; _lcdFontTable[2191] @ 35056
	.field	0,16			; _lcdFontTable[2192] @ 35072
	.field	0,16			; _lcdFontTable[2193] @ 35088
	.field	198,16			; _lcdFontTable[2194] @ 35104
	.field	0,16			; _lcdFontTable[2195] @ 35120
	.field	0,16			; _lcdFontTable[2196] @ 35136
	.field	124,16			; _lcdFontTable[2197] @ 35152
	.field	198,16			; _lcdFontTable[2198] @ 35168
	.field	254,16			; _lcdFontTable[2199] @ 35184
	.field	192,16			; _lcdFontTable[2200] @ 35200
	.field	192,16			; _lcdFontTable[2201] @ 35216
	.field	198,16			; _lcdFontTable[2202] @ 35232
	.field	124,16			; _lcdFontTable[2203] @ 35248
	.field	0,16			; _lcdFontTable[2204] @ 35264
	.field	0,16			; _lcdFontTable[2205] @ 35280
	.field	0,16			; _lcdFontTable[2206] @ 35296
	.field	0,16			; _lcdFontTable[2207] @ 35312
	.field	0,16			; _lcdFontTable[2208] @ 35328
	.field	96,16			; _lcdFontTable[2209] @ 35344
	.field	48,16			; _lcdFontTable[2210] @ 35360
	.field	24,16			; _lcdFontTable[2211] @ 35376
	.field	0,16			; _lcdFontTable[2212] @ 35392
	.field	124,16			; _lcdFontTable[2213] @ 35408
	.field	198,16			; _lcdFontTable[2214] @ 35424
	.field	254,16			; _lcdFontTable[2215] @ 35440
	.field	192,16			; _lcdFontTable[2216] @ 35456
	.field	192,16			; _lcdFontTable[2217] @ 35472
	.field	198,16			; _lcdFontTable[2218] @ 35488
	.field	124,16			; _lcdFontTable[2219] @ 35504
	.field	0,16			; _lcdFontTable[2220] @ 35520
	.field	0,16			; _lcdFontTable[2221] @ 35536
	.field	0,16			; _lcdFontTable[2222] @ 35552
	.field	0,16			; _lcdFontTable[2223] @ 35568
	.field	0,16			; _lcdFontTable[2224] @ 35584
	.field	0,16			; _lcdFontTable[2225] @ 35600
	.field	102,16			; _lcdFontTable[2226] @ 35616
	.field	0,16			; _lcdFontTable[2227] @ 35632
	.field	0,16			; _lcdFontTable[2228] @ 35648
	.field	56,16			; _lcdFontTable[2229] @ 35664
	.field	24,16			; _lcdFontTable[2230] @ 35680
	.field	24,16			; _lcdFontTable[2231] @ 35696
	.field	24,16			; _lcdFontTable[2232] @ 35712
	.field	24,16			; _lcdFontTable[2233] @ 35728
	.field	24,16			; _lcdFontTable[2234] @ 35744
	.field	60,16			; _lcdFontTable[2235] @ 35760
	.field	0,16			; _lcdFontTable[2236] @ 35776
	.field	0,16			; _lcdFontTable[2237] @ 35792
	.field	0,16			; _lcdFontTable[2238] @ 35808
	.field	0,16			; _lcdFontTable[2239] @ 35824
	.field	0,16			; _lcdFontTable[2240] @ 35840
	.field	24,16			; _lcdFontTable[2241] @ 35856
	.field	60,16			; _lcdFontTable[2242] @ 35872
	.field	102,16			; _lcdFontTable[2243] @ 35888
	.field	0,16			; _lcdFontTable[2244] @ 35904
	.field	56,16			; _lcdFontTable[2245] @ 35920
	.field	24,16			; _lcdFontTable[2246] @ 35936
	.field	24,16			; _lcdFontTable[2247] @ 35952
	.field	24,16			; _lcdFontTable[2248] @ 35968
	.field	24,16			; _lcdFontTable[2249] @ 35984
	.field	24,16			; _lcdFontTable[2250] @ 36000
	.field	60,16			; _lcdFontTable[2251] @ 36016
	.field	0,16			; _lcdFontTable[2252] @ 36032
	.field	0,16			; _lcdFontTable[2253] @ 36048
	.field	0,16			; _lcdFontTable[2254] @ 36064
	.field	0,16			; _lcdFontTable[2255] @ 36080
	.field	0,16			; _lcdFontTable[2256] @ 36096
	.field	96,16			; _lcdFontTable[2257] @ 36112
	.field	48,16			; _lcdFontTable[2258] @ 36128
	.field	24,16			; _lcdFontTable[2259] @ 36144
	.field	0,16			; _lcdFontTable[2260] @ 36160
	.field	56,16			; _lcdFontTable[2261] @ 36176
	.field	24,16			; _lcdFontTable[2262] @ 36192
	.field	24,16			; _lcdFontTable[2263] @ 36208
	.field	24,16			; _lcdFontTable[2264] @ 36224
	.field	24,16			; _lcdFontTable[2265] @ 36240
	.field	24,16			; _lcdFontTable[2266] @ 36256
	.field	60,16			; _lcdFontTable[2267] @ 36272
	.field	0,16			; _lcdFontTable[2268] @ 36288
	.field	0,16			; _lcdFontTable[2269] @ 36304
	.field	0,16			; _lcdFontTable[2270] @ 36320
	.field	0,16			; _lcdFontTable[2271] @ 36336
	.field	0,16			; _lcdFontTable[2272] @ 36352
	.field	198,16			; _lcdFontTable[2273] @ 36368
	.field	0,16			; _lcdFontTable[2274] @ 36384
	.field	16,16			; _lcdFontTable[2275] @ 36400
	.field	56,16			; _lcdFontTable[2276] @ 36416
	.field	108,16			; _lcdFontTable[2277] @ 36432
	.field	198,16			; _lcdFontTable[2278] @ 36448
	.field	198,16			; _lcdFontTable[2279] @ 36464
	.field	254,16			; _lcdFontTable[2280] @ 36480
	.field	198,16			; _lcdFontTable[2281] @ 36496
	.field	198,16			; _lcdFontTable[2282] @ 36512
	.field	198,16			; _lcdFontTable[2283] @ 36528
	.field	0,16			; _lcdFontTable[2284] @ 36544
	.field	0,16			; _lcdFontTable[2285] @ 36560
	.field	0,16			; _lcdFontTable[2286] @ 36576
	.field	0,16			; _lcdFontTable[2287] @ 36592
	.field	56,16			; _lcdFontTable[2288] @ 36608
	.field	108,16			; _lcdFontTable[2289] @ 36624
	.field	56,16			; _lcdFontTable[2290] @ 36640
	.field	16,16			; _lcdFontTable[2291] @ 36656
	.field	56,16			; _lcdFontTable[2292] @ 36672
	.field	108,16			; _lcdFontTable[2293] @ 36688
	.field	198,16			; _lcdFontTable[2294] @ 36704
	.field	254,16			; _lcdFontTable[2295] @ 36720
	.field	198,16			; _lcdFontTable[2296] @ 36736
	.field	198,16			; _lcdFontTable[2297] @ 36752
	.field	198,16			; _lcdFontTable[2298] @ 36768
	.field	198,16			; _lcdFontTable[2299] @ 36784
	.field	0,16			; _lcdFontTable[2300] @ 36800
	.field	0,16			; _lcdFontTable[2301] @ 36816
	.field	0,16			; _lcdFontTable[2302] @ 36832
	.field	0,16			; _lcdFontTable[2303] @ 36848
	.field	12,16			; _lcdFontTable[2304] @ 36864
	.field	24,16			; _lcdFontTable[2305] @ 36880
	.field	0,16			; _lcdFontTable[2306] @ 36896
	.field	254,16			; _lcdFontTable[2307] @ 36912
	.field	102,16			; _lcdFontTable[2308] @ 36928
	.field	98,16			; _lcdFontTable[2309] @ 36944
	.field	104,16			; _lcdFontTable[2310] @ 36960
	.field	120,16			; _lcdFontTable[2311] @ 36976
	.field	104,16			; _lcdFontTable[2312] @ 36992
	.field	98,16			; _lcdFontTable[2313] @ 37008
	.field	102,16			; _lcdFontTable[2314] @ 37024
	.field	254,16			; _lcdFontTable[2315] @ 37040
	.field	0,16			; _lcdFontTable[2316] @ 37056
	.field	0,16			; _lcdFontTable[2317] @ 37072
	.field	0,16			; _lcdFontTable[2318] @ 37088
	.field	0,16			; _lcdFontTable[2319] @ 37104
	.field	0,16			; _lcdFontTable[2320] @ 37120
	.field	0,16			; _lcdFontTable[2321] @ 37136
	.field	0,16			; _lcdFontTable[2322] @ 37152
	.field	0,16			; _lcdFontTable[2323] @ 37168
	.field	0,16			; _lcdFontTable[2324] @ 37184
	.field	236,16			; _lcdFontTable[2325] @ 37200
	.field	54,16			; _lcdFontTable[2326] @ 37216
	.field	54,16			; _lcdFontTable[2327] @ 37232
	.field	126,16			; _lcdFontTable[2328] @ 37248
	.field	216,16			; _lcdFontTable[2329] @ 37264
	.field	216,16			; _lcdFontTable[2330] @ 37280
	.field	110,16			; _lcdFontTable[2331] @ 37296
	.field	0,16			; _lcdFontTable[2332] @ 37312
	.field	0,16			; _lcdFontTable[2333] @ 37328
	.field	0,16			; _lcdFontTable[2334] @ 37344
	.field	0,16			; _lcdFontTable[2335] @ 37360
	.field	0,16			; _lcdFontTable[2336] @ 37376
	.field	0,16			; _lcdFontTable[2337] @ 37392
	.field	62,16			; _lcdFontTable[2338] @ 37408
	.field	108,16			; _lcdFontTable[2339] @ 37424
	.field	204,16			; _lcdFontTable[2340] @ 37440
	.field	204,16			; _lcdFontTable[2341] @ 37456
	.field	254,16			; _lcdFontTable[2342] @ 37472
	.field	204,16			; _lcdFontTable[2343] @ 37488
	.field	204,16			; _lcdFontTable[2344] @ 37504
	.field	204,16			; _lcdFontTable[2345] @ 37520
	.field	204,16			; _lcdFontTable[2346] @ 37536
	.field	206,16			; _lcdFontTable[2347] @ 37552
	.field	0,16			; _lcdFontTable[2348] @ 37568
	.field	0,16			; _lcdFontTable[2349] @ 37584
	.field	0,16			; _lcdFontTable[2350] @ 37600
	.field	0,16			; _lcdFontTable[2351] @ 37616
	.field	0,16			; _lcdFontTable[2352] @ 37632
	.field	16,16			; _lcdFontTable[2353] @ 37648
	.field	56,16			; _lcdFontTable[2354] @ 37664
	.field	108,16			; _lcdFontTable[2355] @ 37680
	.field	0,16			; _lcdFontTable[2356] @ 37696
	.field	124,16			; _lcdFontTable[2357] @ 37712
	.field	198,16			; _lcdFontTable[2358] @ 37728
	.field	198,16			; _lcdFontTable[2359] @ 37744
	.field	198,16			; _lcdFontTable[2360] @ 37760
	.field	198,16			; _lcdFontTable[2361] @ 37776
	.field	198,16			; _lcdFontTable[2362] @ 37792
	.field	124,16			; _lcdFontTable[2363] @ 37808
	.field	0,16			; _lcdFontTable[2364] @ 37824
	.field	0,16			; _lcdFontTable[2365] @ 37840
	.field	0,16			; _lcdFontTable[2366] @ 37856
	.field	0,16			; _lcdFontTable[2367] @ 37872
	.field	0,16			; _lcdFontTable[2368] @ 37888
	.field	0,16			; _lcdFontTable[2369] @ 37904
	.field	198,16			; _lcdFontTable[2370] @ 37920
	.field	0,16			; _lcdFontTable[2371] @ 37936
	.field	0,16			; _lcdFontTable[2372] @ 37952
	.field	124,16			; _lcdFontTable[2373] @ 37968
	.field	198,16			; _lcdFontTable[2374] @ 37984
	.field	198,16			; _lcdFontTable[2375] @ 38000
	.field	198,16			; _lcdFontTable[2376] @ 38016
	.field	198,16			; _lcdFontTable[2377] @ 38032
	.field	198,16			; _lcdFontTable[2378] @ 38048
	.field	124,16			; _lcdFontTable[2379] @ 38064
	.field	0,16			; _lcdFontTable[2380] @ 38080
	.field	0,16			; _lcdFontTable[2381] @ 38096
	.field	0,16			; _lcdFontTable[2382] @ 38112
	.field	0,16			; _lcdFontTable[2383] @ 38128
	.field	0,16			; _lcdFontTable[2384] @ 38144
	.field	96,16			; _lcdFontTable[2385] @ 38160
	.field	48,16			; _lcdFontTable[2386] @ 38176
	.field	24,16			; _lcdFontTable[2387] @ 38192
	.field	0,16			; _lcdFontTable[2388] @ 38208
	.field	124,16			; _lcdFontTable[2389] @ 38224
	.field	198,16			; _lcdFontTable[2390] @ 38240
	.field	198,16			; _lcdFontTable[2391] @ 38256
	.field	198,16			; _lcdFontTable[2392] @ 38272
	.field	198,16			; _lcdFontTable[2393] @ 38288
	.field	198,16			; _lcdFontTable[2394] @ 38304
	.field	124,16			; _lcdFontTable[2395] @ 38320
	.field	0,16			; _lcdFontTable[2396] @ 38336
	.field	0,16			; _lcdFontTable[2397] @ 38352
	.field	0,16			; _lcdFontTable[2398] @ 38368
	.field	0,16			; _lcdFontTable[2399] @ 38384
	.field	0,16			; _lcdFontTable[2400] @ 38400
	.field	48,16			; _lcdFontTable[2401] @ 38416
	.field	120,16			; _lcdFontTable[2402] @ 38432
	.field	204,16			; _lcdFontTable[2403] @ 38448
	.field	0,16			; _lcdFontTable[2404] @ 38464
	.field	204,16			; _lcdFontTable[2405] @ 38480
	.field	204,16			; _lcdFontTable[2406] @ 38496
	.field	204,16			; _lcdFontTable[2407] @ 38512
	.field	204,16			; _lcdFontTable[2408] @ 38528
	.field	204,16			; _lcdFontTable[2409] @ 38544
	.field	204,16			; _lcdFontTable[2410] @ 38560
	.field	118,16			; _lcdFontTable[2411] @ 38576
	.field	0,16			; _lcdFontTable[2412] @ 38592
	.field	0,16			; _lcdFontTable[2413] @ 38608
	.field	0,16			; _lcdFontTable[2414] @ 38624
	.field	0,16			; _lcdFontTable[2415] @ 38640
	.field	0,16			; _lcdFontTable[2416] @ 38656
	.field	96,16			; _lcdFontTable[2417] @ 38672
	.field	48,16			; _lcdFontTable[2418] @ 38688
	.field	24,16			; _lcdFontTable[2419] @ 38704
	.field	0,16			; _lcdFontTable[2420] @ 38720
	.field	204,16			; _lcdFontTable[2421] @ 38736
	.field	204,16			; _lcdFontTable[2422] @ 38752
	.field	204,16			; _lcdFontTable[2423] @ 38768
	.field	204,16			; _lcdFontTable[2424] @ 38784
	.field	204,16			; _lcdFontTable[2425] @ 38800
	.field	204,16			; _lcdFontTable[2426] @ 38816
	.field	118,16			; _lcdFontTable[2427] @ 38832
	.field	0,16			; _lcdFontTable[2428] @ 38848
	.field	0,16			; _lcdFontTable[2429] @ 38864
	.field	0,16			; _lcdFontTable[2430] @ 38880
	.field	0,16			; _lcdFontTable[2431] @ 38896
	.field	0,16			; _lcdFontTable[2432] @ 38912
	.field	0,16			; _lcdFontTable[2433] @ 38928
	.field	198,16			; _lcdFontTable[2434] @ 38944
	.field	0,16			; _lcdFontTable[2435] @ 38960
	.field	0,16			; _lcdFontTable[2436] @ 38976
	.field	198,16			; _lcdFontTable[2437] @ 38992
	.field	198,16			; _lcdFontTable[2438] @ 39008
	.field	198,16			; _lcdFontTable[2439] @ 39024
	.field	198,16			; _lcdFontTable[2440] @ 39040
	.field	198,16			; _lcdFontTable[2441] @ 39056
	.field	198,16			; _lcdFontTable[2442] @ 39072
	.field	126,16			; _lcdFontTable[2443] @ 39088
	.field	6,16			; _lcdFontTable[2444] @ 39104
	.field	12,16			; _lcdFontTable[2445] @ 39120
	.field	120,16			; _lcdFontTable[2446] @ 39136
	.field	0,16			; _lcdFontTable[2447] @ 39152
	.field	0,16			; _lcdFontTable[2448] @ 39168
	.field	198,16			; _lcdFontTable[2449] @ 39184
	.field	0,16			; _lcdFontTable[2450] @ 39200
	.field	124,16			; _lcdFontTable[2451] @ 39216
	.field	198,16			; _lcdFontTable[2452] @ 39232
	.field	198,16			; _lcdFontTable[2453] @ 39248
	.field	198,16			; _lcdFontTable[2454] @ 39264
	.field	198,16			; _lcdFontTable[2455] @ 39280
	.field	198,16			; _lcdFontTable[2456] @ 39296
	.field	198,16			; _lcdFontTable[2457] @ 39312
	.field	198,16			; _lcdFontTable[2458] @ 39328
	.field	124,16			; _lcdFontTable[2459] @ 39344
	.field	0,16			; _lcdFontTable[2460] @ 39360
	.field	0,16			; _lcdFontTable[2461] @ 39376
	.field	0,16			; _lcdFontTable[2462] @ 39392
	.field	0,16			; _lcdFontTable[2463] @ 39408
	.field	0,16			; _lcdFontTable[2464] @ 39424
	.field	198,16			; _lcdFontTable[2465] @ 39440
	.field	0,16			; _lcdFontTable[2466] @ 39456
	.field	198,16			; _lcdFontTable[2467] @ 39472
	.field	198,16			; _lcdFontTable[2468] @ 39488
	.field	198,16			; _lcdFontTable[2469] @ 39504
	.field	198,16			; _lcdFontTable[2470] @ 39520
	.field	198,16			; _lcdFontTable[2471] @ 39536
	.field	198,16			; _lcdFontTable[2472] @ 39552
	.field	198,16			; _lcdFontTable[2473] @ 39568
	.field	198,16			; _lcdFontTable[2474] @ 39584
	.field	124,16			; _lcdFontTable[2475] @ 39600
	.field	0,16			; _lcdFontTable[2476] @ 39616
	.field	0,16			; _lcdFontTable[2477] @ 39632
	.field	0,16			; _lcdFontTable[2478] @ 39648
	.field	0,16			; _lcdFontTable[2479] @ 39664
	.field	0,16			; _lcdFontTable[2480] @ 39680
	.field	24,16			; _lcdFontTable[2481] @ 39696
	.field	24,16			; _lcdFontTable[2482] @ 39712
	.field	124,16			; _lcdFontTable[2483] @ 39728
	.field	198,16			; _lcdFontTable[2484] @ 39744
	.field	192,16			; _lcdFontTable[2485] @ 39760
	.field	192,16			; _lcdFontTable[2486] @ 39776
	.field	192,16			; _lcdFontTable[2487] @ 39792
	.field	198,16			; _lcdFontTable[2488] @ 39808
	.field	124,16			; _lcdFontTable[2489] @ 39824
	.field	24,16			; _lcdFontTable[2490] @ 39840
	.field	24,16			; _lcdFontTable[2491] @ 39856
	.field	0,16			; _lcdFontTable[2492] @ 39872
	.field	0,16			; _lcdFontTable[2493] @ 39888
	.field	0,16			; _lcdFontTable[2494] @ 39904
	.field	0,16			; _lcdFontTable[2495] @ 39920
	.field	0,16			; _lcdFontTable[2496] @ 39936
	.field	56,16			; _lcdFontTable[2497] @ 39952
	.field	108,16			; _lcdFontTable[2498] @ 39968
	.field	100,16			; _lcdFontTable[2499] @ 39984
	.field	96,16			; _lcdFontTable[2500] @ 40000
	.field	240,16			; _lcdFontTable[2501] @ 40016
	.field	96,16			; _lcdFontTable[2502] @ 40032
	.field	96,16			; _lcdFontTable[2503] @ 40048
	.field	96,16			; _lcdFontTable[2504] @ 40064
	.field	96,16			; _lcdFontTable[2505] @ 40080
	.field	230,16			; _lcdFontTable[2506] @ 40096
	.field	252,16			; _lcdFontTable[2507] @ 40112
	.field	0,16			; _lcdFontTable[2508] @ 40128
	.field	0,16			; _lcdFontTable[2509] @ 40144
	.field	0,16			; _lcdFontTable[2510] @ 40160
	.field	0,16			; _lcdFontTable[2511] @ 40176
	.field	0,16			; _lcdFontTable[2512] @ 40192
	.field	0,16			; _lcdFontTable[2513] @ 40208
	.field	102,16			; _lcdFontTable[2514] @ 40224
	.field	102,16			; _lcdFontTable[2515] @ 40240
	.field	60,16			; _lcdFontTable[2516] @ 40256
	.field	24,16			; _lcdFontTable[2517] @ 40272
	.field	126,16			; _lcdFontTable[2518] @ 40288
	.field	24,16			; _lcdFontTable[2519] @ 40304
	.field	126,16			; _lcdFontTable[2520] @ 40320
	.field	24,16			; _lcdFontTable[2521] @ 40336
	.field	24,16			; _lcdFontTable[2522] @ 40352
	.field	24,16			; _lcdFontTable[2523] @ 40368
	.field	0,16			; _lcdFontTable[2524] @ 40384
	.field	0,16			; _lcdFontTable[2525] @ 40400
	.field	0,16			; _lcdFontTable[2526] @ 40416
	.field	0,16			; _lcdFontTable[2527] @ 40432
	.field	0,16			; _lcdFontTable[2528] @ 40448
	.field	248,16			; _lcdFontTable[2529] @ 40464
	.field	204,16			; _lcdFontTable[2530] @ 40480
	.field	204,16			; _lcdFontTable[2531] @ 40496
	.field	248,16			; _lcdFontTable[2532] @ 40512
	.field	196,16			; _lcdFontTable[2533] @ 40528
	.field	204,16			; _lcdFontTable[2534] @ 40544
	.field	222,16			; _lcdFontTable[2535] @ 40560
	.field	204,16			; _lcdFontTable[2536] @ 40576
	.field	204,16			; _lcdFontTable[2537] @ 40592
	.field	204,16			; _lcdFontTable[2538] @ 40608
	.field	198,16			; _lcdFontTable[2539] @ 40624
	.field	0,16			; _lcdFontTable[2540] @ 40640
	.field	0,16			; _lcdFontTable[2541] @ 40656
	.field	0,16			; _lcdFontTable[2542] @ 40672
	.field	0,16			; _lcdFontTable[2543] @ 40688
	.field	0,16			; _lcdFontTable[2544] @ 40704
	.field	14,16			; _lcdFontTable[2545] @ 40720
	.field	27,16			; _lcdFontTable[2546] @ 40736
	.field	24,16			; _lcdFontTable[2547] @ 40752
	.field	24,16			; _lcdFontTable[2548] @ 40768
	.field	24,16			; _lcdFontTable[2549] @ 40784
	.field	126,16			; _lcdFontTable[2550] @ 40800
	.field	24,16			; _lcdFontTable[2551] @ 40816
	.field	24,16			; _lcdFontTable[2552] @ 40832
	.field	24,16			; _lcdFontTable[2553] @ 40848
	.field	216,16			; _lcdFontTable[2554] @ 40864
	.field	112,16			; _lcdFontTable[2555] @ 40880
	.field	0,16			; _lcdFontTable[2556] @ 40896
	.field	0,16			; _lcdFontTable[2557] @ 40912
	.field	0,16			; _lcdFontTable[2558] @ 40928
	.field	0,16			; _lcdFontTable[2559] @ 40944
	.field	0,16			; _lcdFontTable[2560] @ 40960
	.field	24,16			; _lcdFontTable[2561] @ 40976
	.field	48,16			; _lcdFontTable[2562] @ 40992
	.field	96,16			; _lcdFontTable[2563] @ 41008
	.field	0,16			; _lcdFontTable[2564] @ 41024
	.field	120,16			; _lcdFontTable[2565] @ 41040
	.field	12,16			; _lcdFontTable[2566] @ 41056
	.field	124,16			; _lcdFontTable[2567] @ 41072
	.field	204,16			; _lcdFontTable[2568] @ 41088
	.field	204,16			; _lcdFontTable[2569] @ 41104
	.field	204,16			; _lcdFontTable[2570] @ 41120
	.field	118,16			; _lcdFontTable[2571] @ 41136
	.field	0,16			; _lcdFontTable[2572] @ 41152
	.field	0,16			; _lcdFontTable[2573] @ 41168
	.field	0,16			; _lcdFontTable[2574] @ 41184
	.field	0,16			; _lcdFontTable[2575] @ 41200
	.field	0,16			; _lcdFontTable[2576] @ 41216
	.field	12,16			; _lcdFontTable[2577] @ 41232
	.field	24,16			; _lcdFontTable[2578] @ 41248
	.field	48,16			; _lcdFontTable[2579] @ 41264
	.field	0,16			; _lcdFontTable[2580] @ 41280
	.field	56,16			; _lcdFontTable[2581] @ 41296
	.field	24,16			; _lcdFontTable[2582] @ 41312
	.field	24,16			; _lcdFontTable[2583] @ 41328
	.field	24,16			; _lcdFontTable[2584] @ 41344
	.field	24,16			; _lcdFontTable[2585] @ 41360
	.field	24,16			; _lcdFontTable[2586] @ 41376
	.field	60,16			; _lcdFontTable[2587] @ 41392
	.field	0,16			; _lcdFontTable[2588] @ 41408
	.field	0,16			; _lcdFontTable[2589] @ 41424
	.field	0,16			; _lcdFontTable[2590] @ 41440
	.field	0,16			; _lcdFontTable[2591] @ 41456
	.field	0,16			; _lcdFontTable[2592] @ 41472
	.field	24,16			; _lcdFontTable[2593] @ 41488
	.field	48,16			; _lcdFontTable[2594] @ 41504
	.field	96,16			; _lcdFontTable[2595] @ 41520
	.field	0,16			; _lcdFontTable[2596] @ 41536
	.field	124,16			; _lcdFontTable[2597] @ 41552
	.field	198,16			; _lcdFontTable[2598] @ 41568
	.field	198,16			; _lcdFontTable[2599] @ 41584
	.field	198,16			; _lcdFontTable[2600] @ 41600
	.field	198,16			; _lcdFontTable[2601] @ 41616
	.field	198,16			; _lcdFontTable[2602] @ 41632
	.field	124,16			; _lcdFontTable[2603] @ 41648
	.field	0,16			; _lcdFontTable[2604] @ 41664
	.field	0,16			; _lcdFontTable[2605] @ 41680
	.field	0,16			; _lcdFontTable[2606] @ 41696
	.field	0,16			; _lcdFontTable[2607] @ 41712
	.field	0,16			; _lcdFontTable[2608] @ 41728
	.field	24,16			; _lcdFontTable[2609] @ 41744
	.field	48,16			; _lcdFontTable[2610] @ 41760
	.field	96,16			; _lcdFontTable[2611] @ 41776
	.field	0,16			; _lcdFontTable[2612] @ 41792
	.field	204,16			; _lcdFontTable[2613] @ 41808
	.field	204,16			; _lcdFontTable[2614] @ 41824
	.field	204,16			; _lcdFontTable[2615] @ 41840
	.field	204,16			; _lcdFontTable[2616] @ 41856
	.field	204,16			; _lcdFontTable[2617] @ 41872
	.field	204,16			; _lcdFontTable[2618] @ 41888
	.field	118,16			; _lcdFontTable[2619] @ 41904
	.field	0,16			; _lcdFontTable[2620] @ 41920
	.field	0,16			; _lcdFontTable[2621] @ 41936
	.field	0,16			; _lcdFontTable[2622] @ 41952
	.field	0,16			; _lcdFontTable[2623] @ 41968
	.field	0,16			; _lcdFontTable[2624] @ 41984
	.field	0,16			; _lcdFontTable[2625] @ 42000
	.field	118,16			; _lcdFontTable[2626] @ 42016
	.field	220,16			; _lcdFontTable[2627] @ 42032
	.field	0,16			; _lcdFontTable[2628] @ 42048
	.field	220,16			; _lcdFontTable[2629] @ 42064
	.field	102,16			; _lcdFontTable[2630] @ 42080
	.field	102,16			; _lcdFontTable[2631] @ 42096
	.field	102,16			; _lcdFontTable[2632] @ 42112
	.field	102,16			; _lcdFontTable[2633] @ 42128
	.field	102,16			; _lcdFontTable[2634] @ 42144
	.field	102,16			; _lcdFontTable[2635] @ 42160
	.field	0,16			; _lcdFontTable[2636] @ 42176
	.field	0,16			; _lcdFontTable[2637] @ 42192
	.field	0,16			; _lcdFontTable[2638] @ 42208
	.field	0,16			; _lcdFontTable[2639] @ 42224
	.field	118,16			; _lcdFontTable[2640] @ 42240
	.field	220,16			; _lcdFontTable[2641] @ 42256
	.field	0,16			; _lcdFontTable[2642] @ 42272
	.field	198,16			; _lcdFontTable[2643] @ 42288
	.field	230,16			; _lcdFontTable[2644] @ 42304
	.field	246,16			; _lcdFontTable[2645] @ 42320
	.field	254,16			; _lcdFontTable[2646] @ 42336
	.field	222,16			; _lcdFontTable[2647] @ 42352
	.field	206,16			; _lcdFontTable[2648] @ 42368
	.field	198,16			; _lcdFontTable[2649] @ 42384
	.field	198,16			; _lcdFontTable[2650] @ 42400
	.field	198,16			; _lcdFontTable[2651] @ 42416
	.field	0,16			; _lcdFontTable[2652] @ 42432
	.field	0,16			; _lcdFontTable[2653] @ 42448
	.field	0,16			; _lcdFontTable[2654] @ 42464
	.field	0,16			; _lcdFontTable[2655] @ 42480
	.field	0,16			; _lcdFontTable[2656] @ 42496
	.field	0,16			; _lcdFontTable[2657] @ 42512
	.field	60,16			; _lcdFontTable[2658] @ 42528
	.field	108,16			; _lcdFontTable[2659] @ 42544
	.field	108,16			; _lcdFontTable[2660] @ 42560
	.field	62,16			; _lcdFontTable[2661] @ 42576
	.field	0,16			; _lcdFontTable[2662] @ 42592
	.field	126,16			; _lcdFontTable[2663] @ 42608
	.field	0,16			; _lcdFontTable[2664] @ 42624
	.field	0,16			; _lcdFontTable[2665] @ 42640
	.field	0,16			; _lcdFontTable[2666] @ 42656
	.field	0,16			; _lcdFontTable[2667] @ 42672
	.field	0,16			; _lcdFontTable[2668] @ 42688
	.field	0,16			; _lcdFontTable[2669] @ 42704
	.field	0,16			; _lcdFontTable[2670] @ 42720
	.field	0,16			; _lcdFontTable[2671] @ 42736
	.field	0,16			; _lcdFontTable[2672] @ 42752
	.field	0,16			; _lcdFontTable[2673] @ 42768
	.field	56,16			; _lcdFontTable[2674] @ 42784
	.field	108,16			; _lcdFontTable[2675] @ 42800
	.field	108,16			; _lcdFontTable[2676] @ 42816
	.field	56,16			; _lcdFontTable[2677] @ 42832
	.field	0,16			; _lcdFontTable[2678] @ 42848
	.field	124,16			; _lcdFontTable[2679] @ 42864
	.field	0,16			; _lcdFontTable[2680] @ 42880
	.field	0,16			; _lcdFontTable[2681] @ 42896
	.field	0,16			; _lcdFontTable[2682] @ 42912
	.field	0,16			; _lcdFontTable[2683] @ 42928
	.field	0,16			; _lcdFontTable[2684] @ 42944
	.field	0,16			; _lcdFontTable[2685] @ 42960
	.field	0,16			; _lcdFontTable[2686] @ 42976
	.field	0,16			; _lcdFontTable[2687] @ 42992
	.field	0,16			; _lcdFontTable[2688] @ 43008
	.field	0,16			; _lcdFontTable[2689] @ 43024
	.field	48,16			; _lcdFontTable[2690] @ 43040
	.field	48,16			; _lcdFontTable[2691] @ 43056
	.field	0,16			; _lcdFontTable[2692] @ 43072
	.field	48,16			; _lcdFontTable[2693] @ 43088
	.field	48,16			; _lcdFontTable[2694] @ 43104
	.field	96,16			; _lcdFontTable[2695] @ 43120
	.field	192,16			; _lcdFontTable[2696] @ 43136
	.field	198,16			; _lcdFontTable[2697] @ 43152
	.field	198,16			; _lcdFontTable[2698] @ 43168
	.field	124,16			; _lcdFontTable[2699] @ 43184
	.field	0,16			; _lcdFontTable[2700] @ 43200
	.field	0,16			; _lcdFontTable[2701] @ 43216
	.field	0,16			; _lcdFontTable[2702] @ 43232
	.field	0,16			; _lcdFontTable[2703] @ 43248
	.field	0,16			; _lcdFontTable[2704] @ 43264
	.field	0,16			; _lcdFontTable[2705] @ 43280
	.field	0,16			; _lcdFontTable[2706] @ 43296
	.field	0,16			; _lcdFontTable[2707] @ 43312
	.field	0,16			; _lcdFontTable[2708] @ 43328
	.field	0,16			; _lcdFontTable[2709] @ 43344
	.field	254,16			; _lcdFontTable[2710] @ 43360
	.field	192,16			; _lcdFontTable[2711] @ 43376
	.field	192,16			; _lcdFontTable[2712] @ 43392
	.field	192,16			; _lcdFontTable[2713] @ 43408
	.field	192,16			; _lcdFontTable[2714] @ 43424
	.field	0,16			; _lcdFontTable[2715] @ 43440
	.field	0,16			; _lcdFontTable[2716] @ 43456
	.field	0,16			; _lcdFontTable[2717] @ 43472
	.field	0,16			; _lcdFontTable[2718] @ 43488
	.field	0,16			; _lcdFontTable[2719] @ 43504
	.field	0,16			; _lcdFontTable[2720] @ 43520
	.field	0,16			; _lcdFontTable[2721] @ 43536
	.field	0,16			; _lcdFontTable[2722] @ 43552
	.field	0,16			; _lcdFontTable[2723] @ 43568
	.field	0,16			; _lcdFontTable[2724] @ 43584
	.field	0,16			; _lcdFontTable[2725] @ 43600
	.field	254,16			; _lcdFontTable[2726] @ 43616
	.field	6,16			; _lcdFontTable[2727] @ 43632
	.field	6,16			; _lcdFontTable[2728] @ 43648
	.field	6,16			; _lcdFontTable[2729] @ 43664
	.field	6,16			; _lcdFontTable[2730] @ 43680
	.field	0,16			; _lcdFontTable[2731] @ 43696
	.field	0,16			; _lcdFontTable[2732] @ 43712
	.field	0,16			; _lcdFontTable[2733] @ 43728
	.field	0,16			; _lcdFontTable[2734] @ 43744
	.field	0,16			; _lcdFontTable[2735] @ 43760
	.field	0,16			; _lcdFontTable[2736] @ 43776
	.field	96,16			; _lcdFontTable[2737] @ 43792
	.field	224,16			; _lcdFontTable[2738] @ 43808
	.field	98,16			; _lcdFontTable[2739] @ 43824
	.field	102,16			; _lcdFontTable[2740] @ 43840
	.field	108,16			; _lcdFontTable[2741] @ 43856
	.field	24,16			; _lcdFontTable[2742] @ 43872
	.field	48,16			; _lcdFontTable[2743] @ 43888
	.field	96,16			; _lcdFontTable[2744] @ 43904
	.field	220,16			; _lcdFontTable[2745] @ 43920
	.field	134,16			; _lcdFontTable[2746] @ 43936
	.field	12,16			; _lcdFontTable[2747] @ 43952
	.field	24,16			; _lcdFontTable[2748] @ 43968
	.field	62,16			; _lcdFontTable[2749] @ 43984
	.field	0,16			; _lcdFontTable[2750] @ 44000
	.field	0,16			; _lcdFontTable[2751] @ 44016
	.field	0,16			; _lcdFontTable[2752] @ 44032
	.field	96,16			; _lcdFontTable[2753] @ 44048
	.field	224,16			; _lcdFontTable[2754] @ 44064
	.field	98,16			; _lcdFontTable[2755] @ 44080
	.field	102,16			; _lcdFontTable[2756] @ 44096
	.field	108,16			; _lcdFontTable[2757] @ 44112
	.field	24,16			; _lcdFontTable[2758] @ 44128
	.field	48,16			; _lcdFontTable[2759] @ 44144
	.field	102,16			; _lcdFontTable[2760] @ 44160
	.field	206,16			; _lcdFontTable[2761] @ 44176
	.field	154,16			; _lcdFontTable[2762] @ 44192
	.field	63,16			; _lcdFontTable[2763] @ 44208
	.field	6,16			; _lcdFontTable[2764] @ 44224
	.field	6,16			; _lcdFontTable[2765] @ 44240
	.field	0,16			; _lcdFontTable[2766] @ 44256
	.field	0,16			; _lcdFontTable[2767] @ 44272
	.field	0,16			; _lcdFontTable[2768] @ 44288
	.field	0,16			; _lcdFontTable[2769] @ 44304
	.field	24,16			; _lcdFontTable[2770] @ 44320
	.field	24,16			; _lcdFontTable[2771] @ 44336
	.field	0,16			; _lcdFontTable[2772] @ 44352
	.field	24,16			; _lcdFontTable[2773] @ 44368
	.field	24,16			; _lcdFontTable[2774] @ 44384
	.field	24,16			; _lcdFontTable[2775] @ 44400
	.field	60,16			; _lcdFontTable[2776] @ 44416
	.field	60,16			; _lcdFontTable[2777] @ 44432
	.field	60,16			; _lcdFontTable[2778] @ 44448
	.field	24,16			; _lcdFontTable[2779] @ 44464
	.field	0,16			; _lcdFontTable[2780] @ 44480
	.field	0,16			; _lcdFontTable[2781] @ 44496
	.field	0,16			; _lcdFontTable[2782] @ 44512
	.field	0,16			; _lcdFontTable[2783] @ 44528
	.field	0,16			; _lcdFontTable[2784] @ 44544
	.field	0,16			; _lcdFontTable[2785] @ 44560
	.field	0,16			; _lcdFontTable[2786] @ 44576
	.field	0,16			; _lcdFontTable[2787] @ 44592
	.field	0,16			; _lcdFontTable[2788] @ 44608
	.field	54,16			; _lcdFontTable[2789] @ 44624
	.field	108,16			; _lcdFontTable[2790] @ 44640
	.field	216,16			; _lcdFontTable[2791] @ 44656
	.field	108,16			; _lcdFontTable[2792] @ 44672
	.field	54,16			; _lcdFontTable[2793] @ 44688
	.field	0,16			; _lcdFontTable[2794] @ 44704
	.field	0,16			; _lcdFontTable[2795] @ 44720
	.field	0,16			; _lcdFontTable[2796] @ 44736
	.field	0,16			; _lcdFontTable[2797] @ 44752
	.field	0,16			; _lcdFontTable[2798] @ 44768
	.field	0,16			; _lcdFontTable[2799] @ 44784
	.field	0,16			; _lcdFontTable[2800] @ 44800
	.field	0,16			; _lcdFontTable[2801] @ 44816
	.field	0,16			; _lcdFontTable[2802] @ 44832
	.field	0,16			; _lcdFontTable[2803] @ 44848
	.field	0,16			; _lcdFontTable[2804] @ 44864
	.field	216,16			; _lcdFontTable[2805] @ 44880
	.field	108,16			; _lcdFontTable[2806] @ 44896
	.field	54,16			; _lcdFontTable[2807] @ 44912
	.field	108,16			; _lcdFontTable[2808] @ 44928
	.field	216,16			; _lcdFontTable[2809] @ 44944
	.field	0,16			; _lcdFontTable[2810] @ 44960
	.field	0,16			; _lcdFontTable[2811] @ 44976
	.field	0,16			; _lcdFontTable[2812] @ 44992
	.field	0,16			; _lcdFontTable[2813] @ 45008
	.field	0,16			; _lcdFontTable[2814] @ 45024
	.field	0,16			; _lcdFontTable[2815] @ 45040
	.field	17,16			; _lcdFontTable[2816] @ 45056
	.field	68,16			; _lcdFontTable[2817] @ 45072
	.field	17,16			; _lcdFontTable[2818] @ 45088
	.field	68,16			; _lcdFontTable[2819] @ 45104
	.field	17,16			; _lcdFontTable[2820] @ 45120
	.field	68,16			; _lcdFontTable[2821] @ 45136
	.field	17,16			; _lcdFontTable[2822] @ 45152
	.field	68,16			; _lcdFontTable[2823] @ 45168
	.field	17,16			; _lcdFontTable[2824] @ 45184
	.field	68,16			; _lcdFontTable[2825] @ 45200
	.field	17,16			; _lcdFontTable[2826] @ 45216
	.field	68,16			; _lcdFontTable[2827] @ 45232
	.field	17,16			; _lcdFontTable[2828] @ 45248
	.field	68,16			; _lcdFontTable[2829] @ 45264
	.field	17,16			; _lcdFontTable[2830] @ 45280
	.field	68,16			; _lcdFontTable[2831] @ 45296
	.field	85,16			; _lcdFontTable[2832] @ 45312
	.field	170,16			; _lcdFontTable[2833] @ 45328
	.field	85,16			; _lcdFontTable[2834] @ 45344
	.field	170,16			; _lcdFontTable[2835] @ 45360
	.field	85,16			; _lcdFontTable[2836] @ 45376
	.field	170,16			; _lcdFontTable[2837] @ 45392
	.field	85,16			; _lcdFontTable[2838] @ 45408
	.field	170,16			; _lcdFontTable[2839] @ 45424
	.field	85,16			; _lcdFontTable[2840] @ 45440
	.field	170,16			; _lcdFontTable[2841] @ 45456
	.field	85,16			; _lcdFontTable[2842] @ 45472
	.field	170,16			; _lcdFontTable[2843] @ 45488
	.field	85,16			; _lcdFontTable[2844] @ 45504
	.field	170,16			; _lcdFontTable[2845] @ 45520
	.field	85,16			; _lcdFontTable[2846] @ 45536
	.field	170,16			; _lcdFontTable[2847] @ 45552
	.field	221,16			; _lcdFontTable[2848] @ 45568
	.field	119,16			; _lcdFontTable[2849] @ 45584
	.field	221,16			; _lcdFontTable[2850] @ 45600
	.field	119,16			; _lcdFontTable[2851] @ 45616
	.field	221,16			; _lcdFontTable[2852] @ 45632
	.field	119,16			; _lcdFontTable[2853] @ 45648
	.field	221,16			; _lcdFontTable[2854] @ 45664
	.field	119,16			; _lcdFontTable[2855] @ 45680
	.field	221,16			; _lcdFontTable[2856] @ 45696
	.field	119,16			; _lcdFontTable[2857] @ 45712
	.field	221,16			; _lcdFontTable[2858] @ 45728
	.field	119,16			; _lcdFontTable[2859] @ 45744
	.field	221,16			; _lcdFontTable[2860] @ 45760
	.field	119,16			; _lcdFontTable[2861] @ 45776
	.field	221,16			; _lcdFontTable[2862] @ 45792
	.field	119,16			; _lcdFontTable[2863] @ 45808
	.field	24,16			; _lcdFontTable[2864] @ 45824
	.field	24,16			; _lcdFontTable[2865] @ 45840
	.field	24,16			; _lcdFontTable[2866] @ 45856
	.field	24,16			; _lcdFontTable[2867] @ 45872
	.field	24,16			; _lcdFontTable[2868] @ 45888
	.field	24,16			; _lcdFontTable[2869] @ 45904
	.field	24,16			; _lcdFontTable[2870] @ 45920
	.field	24,16			; _lcdFontTable[2871] @ 45936
	.field	24,16			; _lcdFontTable[2872] @ 45952
	.field	24,16			; _lcdFontTable[2873] @ 45968
	.field	24,16			; _lcdFontTable[2874] @ 45984
	.field	24,16			; _lcdFontTable[2875] @ 46000
	.field	24,16			; _lcdFontTable[2876] @ 46016
	.field	24,16			; _lcdFontTable[2877] @ 46032
	.field	24,16			; _lcdFontTable[2878] @ 46048
	.field	24,16			; _lcdFontTable[2879] @ 46064
	.field	24,16			; _lcdFontTable[2880] @ 46080
	.field	24,16			; _lcdFontTable[2881] @ 46096
	.field	24,16			; _lcdFontTable[2882] @ 46112
	.field	24,16			; _lcdFontTable[2883] @ 46128
	.field	24,16			; _lcdFontTable[2884] @ 46144
	.field	24,16			; _lcdFontTable[2885] @ 46160
	.field	24,16			; _lcdFontTable[2886] @ 46176
	.field	248,16			; _lcdFontTable[2887] @ 46192
	.field	24,16			; _lcdFontTable[2888] @ 46208
	.field	24,16			; _lcdFontTable[2889] @ 46224
	.field	24,16			; _lcdFontTable[2890] @ 46240
	.field	24,16			; _lcdFontTable[2891] @ 46256
	.field	24,16			; _lcdFontTable[2892] @ 46272
	.field	24,16			; _lcdFontTable[2893] @ 46288
	.field	24,16			; _lcdFontTable[2894] @ 46304
	.field	24,16			; _lcdFontTable[2895] @ 46320
	.field	24,16			; _lcdFontTable[2896] @ 46336
	.field	24,16			; _lcdFontTable[2897] @ 46352
	.field	24,16			; _lcdFontTable[2898] @ 46368
	.field	24,16			; _lcdFontTable[2899] @ 46384
	.field	24,16			; _lcdFontTable[2900] @ 46400
	.field	248,16			; _lcdFontTable[2901] @ 46416
	.field	24,16			; _lcdFontTable[2902] @ 46432
	.field	248,16			; _lcdFontTable[2903] @ 46448
	.field	24,16			; _lcdFontTable[2904] @ 46464
	.field	24,16			; _lcdFontTable[2905] @ 46480
	.field	24,16			; _lcdFontTable[2906] @ 46496
	.field	24,16			; _lcdFontTable[2907] @ 46512
	.field	24,16			; _lcdFontTable[2908] @ 46528
	.field	24,16			; _lcdFontTable[2909] @ 46544
	.field	24,16			; _lcdFontTable[2910] @ 46560
	.field	24,16			; _lcdFontTable[2911] @ 46576
	.field	54,16			; _lcdFontTable[2912] @ 46592
	.field	54,16			; _lcdFontTable[2913] @ 46608
	.field	54,16			; _lcdFontTable[2914] @ 46624
	.field	54,16			; _lcdFontTable[2915] @ 46640
	.field	54,16			; _lcdFontTable[2916] @ 46656
	.field	54,16			; _lcdFontTable[2917] @ 46672
	.field	54,16			; _lcdFontTable[2918] @ 46688
	.field	246,16			; _lcdFontTable[2919] @ 46704
	.field	54,16			; _lcdFontTable[2920] @ 46720
	.field	54,16			; _lcdFontTable[2921] @ 46736
	.field	54,16			; _lcdFontTable[2922] @ 46752
	.field	54,16			; _lcdFontTable[2923] @ 46768
	.field	54,16			; _lcdFontTable[2924] @ 46784
	.field	54,16			; _lcdFontTable[2925] @ 46800
	.field	54,16			; _lcdFontTable[2926] @ 46816
	.field	54,16			; _lcdFontTable[2927] @ 46832
	.field	0,16			; _lcdFontTable[2928] @ 46848
	.field	0,16			; _lcdFontTable[2929] @ 46864
	.field	0,16			; _lcdFontTable[2930] @ 46880
	.field	0,16			; _lcdFontTable[2931] @ 46896
	.field	0,16			; _lcdFontTable[2932] @ 46912
	.field	0,16			; _lcdFontTable[2933] @ 46928
	.field	0,16			; _lcdFontTable[2934] @ 46944
	.field	254,16			; _lcdFontTable[2935] @ 46960
	.field	54,16			; _lcdFontTable[2936] @ 46976
	.field	54,16			; _lcdFontTable[2937] @ 46992
	.field	54,16			; _lcdFontTable[2938] @ 47008
	.field	54,16			; _lcdFontTable[2939] @ 47024
	.field	54,16			; _lcdFontTable[2940] @ 47040
	.field	54,16			; _lcdFontTable[2941] @ 47056
	.field	54,16			; _lcdFontTable[2942] @ 47072
	.field	54,16			; _lcdFontTable[2943] @ 47088
	.field	0,16			; _lcdFontTable[2944] @ 47104
	.field	0,16			; _lcdFontTable[2945] @ 47120
	.field	0,16			; _lcdFontTable[2946] @ 47136
	.field	0,16			; _lcdFontTable[2947] @ 47152
	.field	0,16			; _lcdFontTable[2948] @ 47168
	.field	248,16			; _lcdFontTable[2949] @ 47184
	.field	24,16			; _lcdFontTable[2950] @ 47200
	.field	248,16			; _lcdFontTable[2951] @ 47216
	.field	24,16			; _lcdFontTable[2952] @ 47232
	.field	24,16			; _lcdFontTable[2953] @ 47248
	.field	24,16			; _lcdFontTable[2954] @ 47264
	.field	24,16			; _lcdFontTable[2955] @ 47280
	.field	24,16			; _lcdFontTable[2956] @ 47296
	.field	24,16			; _lcdFontTable[2957] @ 47312
	.field	24,16			; _lcdFontTable[2958] @ 47328
	.field	24,16			; _lcdFontTable[2959] @ 47344
	.field	54,16			; _lcdFontTable[2960] @ 47360
	.field	54,16			; _lcdFontTable[2961] @ 47376
	.field	54,16			; _lcdFontTable[2962] @ 47392
	.field	54,16			; _lcdFontTable[2963] @ 47408
	.field	54,16			; _lcdFontTable[2964] @ 47424
	.field	246,16			; _lcdFontTable[2965] @ 47440
	.field	6,16			; _lcdFontTable[2966] @ 47456
	.field	246,16			; _lcdFontTable[2967] @ 47472
	.field	54,16			; _lcdFontTable[2968] @ 47488
	.field	54,16			; _lcdFontTable[2969] @ 47504
	.field	54,16			; _lcdFontTable[2970] @ 47520
	.field	54,16			; _lcdFontTable[2971] @ 47536
	.field	54,16			; _lcdFontTable[2972] @ 47552
	.field	54,16			; _lcdFontTable[2973] @ 47568
	.field	54,16			; _lcdFontTable[2974] @ 47584
	.field	54,16			; _lcdFontTable[2975] @ 47600
	.field	54,16			; _lcdFontTable[2976] @ 47616
	.field	54,16			; _lcdFontTable[2977] @ 47632
	.field	54,16			; _lcdFontTable[2978] @ 47648
	.field	54,16			; _lcdFontTable[2979] @ 47664
	.field	54,16			; _lcdFontTable[2980] @ 47680
	.field	54,16			; _lcdFontTable[2981] @ 47696
	.field	54,16			; _lcdFontTable[2982] @ 47712
	.field	54,16			; _lcdFontTable[2983] @ 47728
	.field	54,16			; _lcdFontTable[2984] @ 47744
	.field	54,16			; _lcdFontTable[2985] @ 47760
	.field	54,16			; _lcdFontTable[2986] @ 47776
	.field	54,16			; _lcdFontTable[2987] @ 47792
	.field	54,16			; _lcdFontTable[2988] @ 47808
	.field	54,16			; _lcdFontTable[2989] @ 47824
	.field	54,16			; _lcdFontTable[2990] @ 47840
	.field	54,16			; _lcdFontTable[2991] @ 47856
	.field	0,16			; _lcdFontTable[2992] @ 47872
	.field	0,16			; _lcdFontTable[2993] @ 47888
	.field	0,16			; _lcdFontTable[2994] @ 47904
	.field	0,16			; _lcdFontTable[2995] @ 47920
	.field	0,16			; _lcdFontTable[2996] @ 47936
	.field	254,16			; _lcdFontTable[2997] @ 47952
	.field	6,16			; _lcdFontTable[2998] @ 47968
	.field	246,16			; _lcdFontTable[2999] @ 47984
	.field	54,16			; _lcdFontTable[3000] @ 48000
	.field	54,16			; _lcdFontTable[3001] @ 48016
	.field	54,16			; _lcdFontTable[3002] @ 48032
	.field	54,16			; _lcdFontTable[3003] @ 48048
	.field	54,16			; _lcdFontTable[3004] @ 48064
	.field	54,16			; _lcdFontTable[3005] @ 48080
	.field	54,16			; _lcdFontTable[3006] @ 48096
	.field	54,16			; _lcdFontTable[3007] @ 48112
	.field	54,16			; _lcdFontTable[3008] @ 48128
	.field	54,16			; _lcdFontTable[3009] @ 48144
	.field	54,16			; _lcdFontTable[3010] @ 48160
	.field	54,16			; _lcdFontTable[3011] @ 48176
	.field	54,16			; _lcdFontTable[3012] @ 48192
	.field	246,16			; _lcdFontTable[3013] @ 48208
	.field	6,16			; _lcdFontTable[3014] @ 48224
	.field	254,16			; _lcdFontTable[3015] @ 48240
	.field	0,16			; _lcdFontTable[3016] @ 48256
	.field	0,16			; _lcdFontTable[3017] @ 48272
	.field	0,16			; _lcdFontTable[3018] @ 48288
	.field	0,16			; _lcdFontTable[3019] @ 48304
	.field	0,16			; _lcdFontTable[3020] @ 48320
	.field	0,16			; _lcdFontTable[3021] @ 48336
	.field	0,16			; _lcdFontTable[3022] @ 48352
	.field	0,16			; _lcdFontTable[3023] @ 48368
	.field	54,16			; _lcdFontTable[3024] @ 48384
	.field	54,16			; _lcdFontTable[3025] @ 48400
	.field	54,16			; _lcdFontTable[3026] @ 48416
	.field	54,16			; _lcdFontTable[3027] @ 48432
	.field	54,16			; _lcdFontTable[3028] @ 48448
	.field	54,16			; _lcdFontTable[3029] @ 48464
	.field	54,16			; _lcdFontTable[3030] @ 48480
	.field	254,16			; _lcdFontTable[3031] @ 48496
	.field	0,16			; _lcdFontTable[3032] @ 48512
	.field	0,16			; _lcdFontTable[3033] @ 48528
	.field	0,16			; _lcdFontTable[3034] @ 48544
	.field	0,16			; _lcdFontTable[3035] @ 48560
	.field	0,16			; _lcdFontTable[3036] @ 48576
	.field	0,16			; _lcdFontTable[3037] @ 48592
	.field	0,16			; _lcdFontTable[3038] @ 48608
	.field	0,16			; _lcdFontTable[3039] @ 48624
	.field	24,16			; _lcdFontTable[3040] @ 48640
	.field	24,16			; _lcdFontTable[3041] @ 48656
	.field	24,16			; _lcdFontTable[3042] @ 48672
	.field	24,16			; _lcdFontTable[3043] @ 48688
	.field	24,16			; _lcdFontTable[3044] @ 48704
	.field	248,16			; _lcdFontTable[3045] @ 48720
	.field	24,16			; _lcdFontTable[3046] @ 48736
	.field	248,16			; _lcdFontTable[3047] @ 48752
	.field	0,16			; _lcdFontTable[3048] @ 48768
	.field	0,16			; _lcdFontTable[3049] @ 48784
	.field	0,16			; _lcdFontTable[3050] @ 48800
	.field	0,16			; _lcdFontTable[3051] @ 48816
	.field	0,16			; _lcdFontTable[3052] @ 48832
	.field	0,16			; _lcdFontTable[3053] @ 48848
	.field	0,16			; _lcdFontTable[3054] @ 48864
	.field	0,16			; _lcdFontTable[3055] @ 48880
	.field	0,16			; _lcdFontTable[3056] @ 48896
	.field	0,16			; _lcdFontTable[3057] @ 48912
	.field	0,16			; _lcdFontTable[3058] @ 48928
	.field	0,16			; _lcdFontTable[3059] @ 48944
	.field	0,16			; _lcdFontTable[3060] @ 48960
	.field	0,16			; _lcdFontTable[3061] @ 48976
	.field	0,16			; _lcdFontTable[3062] @ 48992
	.field	248,16			; _lcdFontTable[3063] @ 49008
	.field	24,16			; _lcdFontTable[3064] @ 49024
	.field	24,16			; _lcdFontTable[3065] @ 49040
	.field	24,16			; _lcdFontTable[3066] @ 49056
	.field	24,16			; _lcdFontTable[3067] @ 49072
	.field	24,16			; _lcdFontTable[3068] @ 49088
	.field	24,16			; _lcdFontTable[3069] @ 49104
	.field	24,16			; _lcdFontTable[3070] @ 49120
	.field	24,16			; _lcdFontTable[3071] @ 49136
	.field	24,16			; _lcdFontTable[3072] @ 49152
	.field	24,16			; _lcdFontTable[3073] @ 49168
	.field	24,16			; _lcdFontTable[3074] @ 49184
	.field	24,16			; _lcdFontTable[3075] @ 49200
	.field	24,16			; _lcdFontTable[3076] @ 49216
	.field	24,16			; _lcdFontTable[3077] @ 49232
	.field	24,16			; _lcdFontTable[3078] @ 49248
	.field	31,16			; _lcdFontTable[3079] @ 49264
	.field	0,16			; _lcdFontTable[3080] @ 49280
	.field	0,16			; _lcdFontTable[3081] @ 49296
	.field	0,16			; _lcdFontTable[3082] @ 49312
	.field	0,16			; _lcdFontTable[3083] @ 49328
	.field	0,16			; _lcdFontTable[3084] @ 49344
	.field	0,16			; _lcdFontTable[3085] @ 49360
	.field	0,16			; _lcdFontTable[3086] @ 49376
	.field	0,16			; _lcdFontTable[3087] @ 49392
	.field	24,16			; _lcdFontTable[3088] @ 49408
	.field	24,16			; _lcdFontTable[3089] @ 49424
	.field	24,16			; _lcdFontTable[3090] @ 49440
	.field	24,16			; _lcdFontTable[3091] @ 49456
	.field	24,16			; _lcdFontTable[3092] @ 49472
	.field	24,16			; _lcdFontTable[3093] @ 49488
	.field	24,16			; _lcdFontTable[3094] @ 49504
	.field	255,16			; _lcdFontTable[3095] @ 49520
	.field	0,16			; _lcdFontTable[3096] @ 49536
	.field	0,16			; _lcdFontTable[3097] @ 49552
	.field	0,16			; _lcdFontTable[3098] @ 49568
	.field	0,16			; _lcdFontTable[3099] @ 49584
	.field	0,16			; _lcdFontTable[3100] @ 49600
	.field	0,16			; _lcdFontTable[3101] @ 49616
	.field	0,16			; _lcdFontTable[3102] @ 49632
	.field	0,16			; _lcdFontTable[3103] @ 49648
	.field	0,16			; _lcdFontTable[3104] @ 49664
	.field	0,16			; _lcdFontTable[3105] @ 49680
	.field	0,16			; _lcdFontTable[3106] @ 49696
	.field	0,16			; _lcdFontTable[3107] @ 49712
	.field	0,16			; _lcdFontTable[3108] @ 49728
	.field	0,16			; _lcdFontTable[3109] @ 49744
	.field	0,16			; _lcdFontTable[3110] @ 49760
	.field	255,16			; _lcdFontTable[3111] @ 49776
	.field	24,16			; _lcdFontTable[3112] @ 49792
	.field	24,16			; _lcdFontTable[3113] @ 49808
	.field	24,16			; _lcdFontTable[3114] @ 49824
	.field	24,16			; _lcdFontTable[3115] @ 49840
	.field	24,16			; _lcdFontTable[3116] @ 49856
	.field	24,16			; _lcdFontTable[3117] @ 49872
	.field	24,16			; _lcdFontTable[3118] @ 49888
	.field	24,16			; _lcdFontTable[3119] @ 49904
	.field	24,16			; _lcdFontTable[3120] @ 49920
	.field	24,16			; _lcdFontTable[3121] @ 49936
	.field	24,16			; _lcdFontTable[3122] @ 49952
	.field	24,16			; _lcdFontTable[3123] @ 49968
	.field	24,16			; _lcdFontTable[3124] @ 49984
	.field	24,16			; _lcdFontTable[3125] @ 50000
	.field	24,16			; _lcdFontTable[3126] @ 50016
	.field	31,16			; _lcdFontTable[3127] @ 50032
	.field	24,16			; _lcdFontTable[3128] @ 50048
	.field	24,16			; _lcdFontTable[3129] @ 50064
	.field	24,16			; _lcdFontTable[3130] @ 50080
	.field	24,16			; _lcdFontTable[3131] @ 50096
	.field	24,16			; _lcdFontTable[3132] @ 50112
	.field	24,16			; _lcdFontTable[3133] @ 50128
	.field	24,16			; _lcdFontTable[3134] @ 50144
	.field	24,16			; _lcdFontTable[3135] @ 50160
	.field	0,16			; _lcdFontTable[3136] @ 50176
	.field	0,16			; _lcdFontTable[3137] @ 50192
	.field	0,16			; _lcdFontTable[3138] @ 50208
	.field	0,16			; _lcdFontTable[3139] @ 50224
	.field	0,16			; _lcdFontTable[3140] @ 50240
	.field	0,16			; _lcdFontTable[3141] @ 50256
	.field	0,16			; _lcdFontTable[3142] @ 50272
	.field	255,16			; _lcdFontTable[3143] @ 50288
	.field	0,16			; _lcdFontTable[3144] @ 50304
	.field	0,16			; _lcdFontTable[3145] @ 50320
	.field	0,16			; _lcdFontTable[3146] @ 50336
	.field	0,16			; _lcdFontTable[3147] @ 50352
	.field	0,16			; _lcdFontTable[3148] @ 50368
	.field	0,16			; _lcdFontTable[3149] @ 50384
	.field	0,16			; _lcdFontTable[3150] @ 50400
	.field	0,16			; _lcdFontTable[3151] @ 50416
	.field	24,16			; _lcdFontTable[3152] @ 50432
	.field	24,16			; _lcdFontTable[3153] @ 50448
	.field	24,16			; _lcdFontTable[3154] @ 50464
	.field	24,16			; _lcdFontTable[3155] @ 50480
	.field	24,16			; _lcdFontTable[3156] @ 50496
	.field	24,16			; _lcdFontTable[3157] @ 50512
	.field	24,16			; _lcdFontTable[3158] @ 50528
	.field	255,16			; _lcdFontTable[3159] @ 50544
	.field	24,16			; _lcdFontTable[3160] @ 50560
	.field	24,16			; _lcdFontTable[3161] @ 50576
	.field	24,16			; _lcdFontTable[3162] @ 50592
	.field	24,16			; _lcdFontTable[3163] @ 50608
	.field	24,16			; _lcdFontTable[3164] @ 50624
	.field	24,16			; _lcdFontTable[3165] @ 50640
	.field	24,16			; _lcdFontTable[3166] @ 50656
	.field	24,16			; _lcdFontTable[3167] @ 50672
	.field	24,16			; _lcdFontTable[3168] @ 50688
	.field	24,16			; _lcdFontTable[3169] @ 50704
	.field	24,16			; _lcdFontTable[3170] @ 50720
	.field	24,16			; _lcdFontTable[3171] @ 50736
	.field	24,16			; _lcdFontTable[3172] @ 50752
	.field	31,16			; _lcdFontTable[3173] @ 50768
	.field	24,16			; _lcdFontTable[3174] @ 50784
	.field	31,16			; _lcdFontTable[3175] @ 50800
	.field	24,16			; _lcdFontTable[3176] @ 50816
	.field	24,16			; _lcdFontTable[3177] @ 50832
	.field	24,16			; _lcdFontTable[3178] @ 50848
	.field	24,16			; _lcdFontTable[3179] @ 50864
	.field	24,16			; _lcdFontTable[3180] @ 50880
	.field	24,16			; _lcdFontTable[3181] @ 50896
	.field	24,16			; _lcdFontTable[3182] @ 50912
	.field	24,16			; _lcdFontTable[3183] @ 50928
	.field	54,16			; _lcdFontTable[3184] @ 50944
	.field	54,16			; _lcdFontTable[3185] @ 50960
	.field	54,16			; _lcdFontTable[3186] @ 50976
	.field	54,16			; _lcdFontTable[3187] @ 50992
	.field	54,16			; _lcdFontTable[3188] @ 51008
	.field	54,16			; _lcdFontTable[3189] @ 51024
	.field	54,16			; _lcdFontTable[3190] @ 51040
	.field	55,16			; _lcdFontTable[3191] @ 51056
	.field	54,16			; _lcdFontTable[3192] @ 51072
	.field	54,16			; _lcdFontTable[3193] @ 51088
	.field	54,16			; _lcdFontTable[3194] @ 51104
	.field	54,16			; _lcdFontTable[3195] @ 51120
	.field	54,16			; _lcdFontTable[3196] @ 51136
	.field	54,16			; _lcdFontTable[3197] @ 51152
	.field	54,16			; _lcdFontTable[3198] @ 51168
	.field	54,16			; _lcdFontTable[3199] @ 51184
	.field	54,16			; _lcdFontTable[3200] @ 51200
	.field	54,16			; _lcdFontTable[3201] @ 51216
	.field	54,16			; _lcdFontTable[3202] @ 51232
	.field	54,16			; _lcdFontTable[3203] @ 51248
	.field	54,16			; _lcdFontTable[3204] @ 51264
	.field	55,16			; _lcdFontTable[3205] @ 51280
	.field	48,16			; _lcdFontTable[3206] @ 51296
	.field	63,16			; _lcdFontTable[3207] @ 51312
	.field	0,16			; _lcdFontTable[3208] @ 51328
	.field	0,16			; _lcdFontTable[3209] @ 51344
	.field	0,16			; _lcdFontTable[3210] @ 51360
	.field	0,16			; _lcdFontTable[3211] @ 51376
	.field	0,16			; _lcdFontTable[3212] @ 51392
	.field	0,16			; _lcdFontTable[3213] @ 51408
	.field	0,16			; _lcdFontTable[3214] @ 51424
	.field	0,16			; _lcdFontTable[3215] @ 51440
	.field	0,16			; _lcdFontTable[3216] @ 51456
	.field	0,16			; _lcdFontTable[3217] @ 51472
	.field	0,16			; _lcdFontTable[3218] @ 51488
	.field	0,16			; _lcdFontTable[3219] @ 51504
	.field	0,16			; _lcdFontTable[3220] @ 51520
	.field	63,16			; _lcdFontTable[3221] @ 51536
	.field	48,16			; _lcdFontTable[3222] @ 51552
	.field	55,16			; _lcdFontTable[3223] @ 51568
	.field	54,16			; _lcdFontTable[3224] @ 51584
	.field	54,16			; _lcdFontTable[3225] @ 51600
	.field	54,16			; _lcdFontTable[3226] @ 51616
	.field	54,16			; _lcdFontTable[3227] @ 51632
	.field	54,16			; _lcdFontTable[3228] @ 51648
	.field	54,16			; _lcdFontTable[3229] @ 51664
	.field	54,16			; _lcdFontTable[3230] @ 51680
	.field	54,16			; _lcdFontTable[3231] @ 51696
	.field	54,16			; _lcdFontTable[3232] @ 51712
	.field	54,16			; _lcdFontTable[3233] @ 51728
	.field	54,16			; _lcdFontTable[3234] @ 51744
	.field	54,16			; _lcdFontTable[3235] @ 51760
	.field	54,16			; _lcdFontTable[3236] @ 51776
	.field	247,16			; _lcdFontTable[3237] @ 51792
	.field	0,16			; _lcdFontTable[3238] @ 51808
	.field	255,16			; _lcdFontTable[3239] @ 51824
	.field	0,16			; _lcdFontTable[3240] @ 51840
	.field	0,16			; _lcdFontTable[3241] @ 51856
	.field	0,16			; _lcdFontTable[3242] @ 51872
	.field	0,16			; _lcdFontTable[3243] @ 51888
	.field	0,16			; _lcdFontTable[3244] @ 51904
	.field	0,16			; _lcdFontTable[3245] @ 51920
	.field	0,16			; _lcdFontTable[3246] @ 51936
	.field	0,16			; _lcdFontTable[3247] @ 51952
	.field	0,16			; _lcdFontTable[3248] @ 51968
	.field	0,16			; _lcdFontTable[3249] @ 51984
	.field	0,16			; _lcdFontTable[3250] @ 52000
	.field	0,16			; _lcdFontTable[3251] @ 52016
	.field	0,16			; _lcdFontTable[3252] @ 52032
	.field	255,16			; _lcdFontTable[3253] @ 52048
	.field	0,16			; _lcdFontTable[3254] @ 52064
	.field	247,16			; _lcdFontTable[3255] @ 52080
	.field	54,16			; _lcdFontTable[3256] @ 52096
	.field	54,16			; _lcdFontTable[3257] @ 52112
	.field	54,16			; _lcdFontTable[3258] @ 52128
	.field	54,16			; _lcdFontTable[3259] @ 52144
	.field	54,16			; _lcdFontTable[3260] @ 52160
	.field	54,16			; _lcdFontTable[3261] @ 52176
	.field	54,16			; _lcdFontTable[3262] @ 52192
	.field	54,16			; _lcdFontTable[3263] @ 52208
	.field	54,16			; _lcdFontTable[3264] @ 52224
	.field	54,16			; _lcdFontTable[3265] @ 52240
	.field	54,16			; _lcdFontTable[3266] @ 52256
	.field	54,16			; _lcdFontTable[3267] @ 52272
	.field	54,16			; _lcdFontTable[3268] @ 52288
	.field	55,16			; _lcdFontTable[3269] @ 52304
	.field	48,16			; _lcdFontTable[3270] @ 52320
	.field	55,16			; _lcdFontTable[3271] @ 52336
	.field	54,16			; _lcdFontTable[3272] @ 52352
	.field	54,16			; _lcdFontTable[3273] @ 52368
	.field	54,16			; _lcdFontTable[3274] @ 52384
	.field	54,16			; _lcdFontTable[3275] @ 52400
	.field	54,16			; _lcdFontTable[3276] @ 52416
	.field	54,16			; _lcdFontTable[3277] @ 52432
	.field	54,16			; _lcdFontTable[3278] @ 52448
	.field	54,16			; _lcdFontTable[3279] @ 52464
	.field	0,16			; _lcdFontTable[3280] @ 52480
	.field	0,16			; _lcdFontTable[3281] @ 52496
	.field	0,16			; _lcdFontTable[3282] @ 52512
	.field	0,16			; _lcdFontTable[3283] @ 52528
	.field	0,16			; _lcdFontTable[3284] @ 52544
	.field	255,16			; _lcdFontTable[3285] @ 52560
	.field	0,16			; _lcdFontTable[3286] @ 52576
	.field	255,16			; _lcdFontTable[3287] @ 52592
	.field	0,16			; _lcdFontTable[3288] @ 52608
	.field	0,16			; _lcdFontTable[3289] @ 52624
	.field	0,16			; _lcdFontTable[3290] @ 52640
	.field	0,16			; _lcdFontTable[3291] @ 52656
	.field	0,16			; _lcdFontTable[3292] @ 52672
	.field	0,16			; _lcdFontTable[3293] @ 52688
	.field	0,16			; _lcdFontTable[3294] @ 52704
	.field	0,16			; _lcdFontTable[3295] @ 52720
	.field	54,16			; _lcdFontTable[3296] @ 52736
	.field	54,16			; _lcdFontTable[3297] @ 52752
	.field	54,16			; _lcdFontTable[3298] @ 52768
	.field	54,16			; _lcdFontTable[3299] @ 52784
	.field	54,16			; _lcdFontTable[3300] @ 52800
	.field	247,16			; _lcdFontTable[3301] @ 52816
	.field	0,16			; _lcdFontTable[3302] @ 52832
	.field	247,16			; _lcdFontTable[3303] @ 52848
	.field	54,16			; _lcdFontTable[3304] @ 52864
	.field	54,16			; _lcdFontTable[3305] @ 52880
	.field	54,16			; _lcdFontTable[3306] @ 52896
	.field	54,16			; _lcdFontTable[3307] @ 52912
	.field	54,16			; _lcdFontTable[3308] @ 52928
	.field	54,16			; _lcdFontTable[3309] @ 52944
	.field	54,16			; _lcdFontTable[3310] @ 52960
	.field	54,16			; _lcdFontTable[3311] @ 52976
	.field	24,16			; _lcdFontTable[3312] @ 52992
	.field	24,16			; _lcdFontTable[3313] @ 53008
	.field	24,16			; _lcdFontTable[3314] @ 53024
	.field	24,16			; _lcdFontTable[3315] @ 53040
	.field	24,16			; _lcdFontTable[3316] @ 53056
	.field	255,16			; _lcdFontTable[3317] @ 53072
	.field	0,16			; _lcdFontTable[3318] @ 53088
	.field	255,16			; _lcdFontTable[3319] @ 53104
	.field	0,16			; _lcdFontTable[3320] @ 53120
	.field	0,16			; _lcdFontTable[3321] @ 53136
	.field	0,16			; _lcdFontTable[3322] @ 53152
	.field	0,16			; _lcdFontTable[3323] @ 53168
	.field	0,16			; _lcdFontTable[3324] @ 53184
	.field	0,16			; _lcdFontTable[3325] @ 53200
	.field	0,16			; _lcdFontTable[3326] @ 53216
	.field	0,16			; _lcdFontTable[3327] @ 53232
	.field	54,16			; _lcdFontTable[3328] @ 53248
	.field	54,16			; _lcdFontTable[3329] @ 53264
	.field	54,16			; _lcdFontTable[3330] @ 53280
	.field	54,16			; _lcdFontTable[3331] @ 53296
	.field	54,16			; _lcdFontTable[3332] @ 53312
	.field	54,16			; _lcdFontTable[3333] @ 53328
	.field	54,16			; _lcdFontTable[3334] @ 53344
	.field	255,16			; _lcdFontTable[3335] @ 53360
	.field	0,16			; _lcdFontTable[3336] @ 53376
	.field	0,16			; _lcdFontTable[3337] @ 53392
	.field	0,16			; _lcdFontTable[3338] @ 53408
	.field	0,16			; _lcdFontTable[3339] @ 53424
	.field	0,16			; _lcdFontTable[3340] @ 53440
	.field	0,16			; _lcdFontTable[3341] @ 53456
	.field	0,16			; _lcdFontTable[3342] @ 53472
	.field	0,16			; _lcdFontTable[3343] @ 53488
	.field	0,16			; _lcdFontTable[3344] @ 53504
	.field	0,16			; _lcdFontTable[3345] @ 53520
	.field	0,16			; _lcdFontTable[3346] @ 53536
	.field	0,16			; _lcdFontTable[3347] @ 53552
	.field	0,16			; _lcdFontTable[3348] @ 53568
	.field	255,16			; _lcdFontTable[3349] @ 53584
	.field	0,16			; _lcdFontTable[3350] @ 53600
	.field	255,16			; _lcdFontTable[3351] @ 53616
	.field	24,16			; _lcdFontTable[3352] @ 53632
	.field	24,16			; _lcdFontTable[3353] @ 53648
	.field	24,16			; _lcdFontTable[3354] @ 53664
	.field	24,16			; _lcdFontTable[3355] @ 53680
	.field	24,16			; _lcdFontTable[3356] @ 53696
	.field	24,16			; _lcdFontTable[3357] @ 53712
	.field	24,16			; _lcdFontTable[3358] @ 53728
	.field	24,16			; _lcdFontTable[3359] @ 53744
	.field	0,16			; _lcdFontTable[3360] @ 53760
	.field	0,16			; _lcdFontTable[3361] @ 53776
	.field	0,16			; _lcdFontTable[3362] @ 53792
	.field	0,16			; _lcdFontTable[3363] @ 53808
	.field	0,16			; _lcdFontTable[3364] @ 53824
	.field	0,16			; _lcdFontTable[3365] @ 53840
	.field	0,16			; _lcdFontTable[3366] @ 53856
	.field	255,16			; _lcdFontTable[3367] @ 53872
	.field	54,16			; _lcdFontTable[3368] @ 53888
	.field	54,16			; _lcdFontTable[3369] @ 53904
	.field	54,16			; _lcdFontTable[3370] @ 53920
	.field	54,16			; _lcdFontTable[3371] @ 53936
	.field	54,16			; _lcdFontTable[3372] @ 53952
	.field	54,16			; _lcdFontTable[3373] @ 53968
	.field	54,16			; _lcdFontTable[3374] @ 53984
	.field	54,16			; _lcdFontTable[3375] @ 54000
	.field	54,16			; _lcdFontTable[3376] @ 54016
	.field	54,16			; _lcdFontTable[3377] @ 54032
	.field	54,16			; _lcdFontTable[3378] @ 54048
	.field	54,16			; _lcdFontTable[3379] @ 54064
	.field	54,16			; _lcdFontTable[3380] @ 54080
	.field	54,16			; _lcdFontTable[3381] @ 54096
	.field	54,16			; _lcdFontTable[3382] @ 54112
	.field	63,16			; _lcdFontTable[3383] @ 54128
	.field	0,16			; _lcdFontTable[3384] @ 54144
	.field	0,16			; _lcdFontTable[3385] @ 54160
	.field	0,16			; _lcdFontTable[3386] @ 54176
	.field	0,16			; _lcdFontTable[3387] @ 54192
	.field	0,16			; _lcdFontTable[3388] @ 54208
	.field	0,16			; _lcdFontTable[3389] @ 54224
	.field	0,16			; _lcdFontTable[3390] @ 54240
	.field	0,16			; _lcdFontTable[3391] @ 54256
	.field	24,16			; _lcdFontTable[3392] @ 54272
	.field	24,16			; _lcdFontTable[3393] @ 54288
	.field	24,16			; _lcdFontTable[3394] @ 54304
	.field	24,16			; _lcdFontTable[3395] @ 54320
	.field	24,16			; _lcdFontTable[3396] @ 54336
	.field	31,16			; _lcdFontTable[3397] @ 54352
	.field	24,16			; _lcdFontTable[3398] @ 54368
	.field	31,16			; _lcdFontTable[3399] @ 54384
	.field	0,16			; _lcdFontTable[3400] @ 54400
	.field	0,16			; _lcdFontTable[3401] @ 54416
	.field	0,16			; _lcdFontTable[3402] @ 54432
	.field	0,16			; _lcdFontTable[3403] @ 54448
	.field	0,16			; _lcdFontTable[3404] @ 54464
	.field	0,16			; _lcdFontTable[3405] @ 54480
	.field	0,16			; _lcdFontTable[3406] @ 54496
	.field	0,16			; _lcdFontTable[3407] @ 54512
	.field	0,16			; _lcdFontTable[3408] @ 54528
	.field	0,16			; _lcdFontTable[3409] @ 54544
	.field	0,16			; _lcdFontTable[3410] @ 54560
	.field	0,16			; _lcdFontTable[3411] @ 54576
	.field	0,16			; _lcdFontTable[3412] @ 54592
	.field	31,16			; _lcdFontTable[3413] @ 54608
	.field	24,16			; _lcdFontTable[3414] @ 54624
	.field	31,16			; _lcdFontTable[3415] @ 54640
	.field	24,16			; _lcdFontTable[3416] @ 54656
	.field	24,16			; _lcdFontTable[3417] @ 54672
	.field	24,16			; _lcdFontTable[3418] @ 54688
	.field	24,16			; _lcdFontTable[3419] @ 54704
	.field	24,16			; _lcdFontTable[3420] @ 54720
	.field	24,16			; _lcdFontTable[3421] @ 54736
	.field	24,16			; _lcdFontTable[3422] @ 54752
	.field	24,16			; _lcdFontTable[3423] @ 54768
	.field	0,16			; _lcdFontTable[3424] @ 54784
	.field	0,16			; _lcdFontTable[3425] @ 54800
	.field	0,16			; _lcdFontTable[3426] @ 54816
	.field	0,16			; _lcdFontTable[3427] @ 54832
	.field	0,16			; _lcdFontTable[3428] @ 54848
	.field	0,16			; _lcdFontTable[3429] @ 54864
	.field	0,16			; _lcdFontTable[3430] @ 54880
	.field	63,16			; _lcdFontTable[3431] @ 54896
	.field	54,16			; _lcdFontTable[3432] @ 54912
	.field	54,16			; _lcdFontTable[3433] @ 54928
	.field	54,16			; _lcdFontTable[3434] @ 54944
	.field	54,16			; _lcdFontTable[3435] @ 54960
	.field	54,16			; _lcdFontTable[3436] @ 54976
	.field	54,16			; _lcdFontTable[3437] @ 54992
	.field	54,16			; _lcdFontTable[3438] @ 55008
	.field	54,16			; _lcdFontTable[3439] @ 55024
	.field	54,16			; _lcdFontTable[3440] @ 55040
	.field	54,16			; _lcdFontTable[3441] @ 55056
	.field	54,16			; _lcdFontTable[3442] @ 55072
	.field	54,16			; _lcdFontTable[3443] @ 55088
	.field	54,16			; _lcdFontTable[3444] @ 55104
	.field	54,16			; _lcdFontTable[3445] @ 55120
	.field	54,16			; _lcdFontTable[3446] @ 55136
	.field	255,16			; _lcdFontTable[3447] @ 55152
	.field	54,16			; _lcdFontTable[3448] @ 55168
	.field	54,16			; _lcdFontTable[3449] @ 55184
	.field	54,16			; _lcdFontTable[3450] @ 55200
	.field	54,16			; _lcdFontTable[3451] @ 55216
	.field	54,16			; _lcdFontTable[3452] @ 55232
	.field	54,16			; _lcdFontTable[3453] @ 55248
	.field	54,16			; _lcdFontTable[3454] @ 55264
	.field	54,16			; _lcdFontTable[3455] @ 55280
	.field	24,16			; _lcdFontTable[3456] @ 55296
	.field	24,16			; _lcdFontTable[3457] @ 55312
	.field	24,16			; _lcdFontTable[3458] @ 55328
	.field	24,16			; _lcdFontTable[3459] @ 55344
	.field	24,16			; _lcdFontTable[3460] @ 55360
	.field	255,16			; _lcdFontTable[3461] @ 55376
	.field	24,16			; _lcdFontTable[3462] @ 55392
	.field	255,16			; _lcdFontTable[3463] @ 55408
	.field	24,16			; _lcdFontTable[3464] @ 55424
	.field	24,16			; _lcdFontTable[3465] @ 55440
	.field	24,16			; _lcdFontTable[3466] @ 55456
	.field	24,16			; _lcdFontTable[3467] @ 55472
	.field	24,16			; _lcdFontTable[3468] @ 55488
	.field	24,16			; _lcdFontTable[3469] @ 55504
	.field	24,16			; _lcdFontTable[3470] @ 55520
	.field	24,16			; _lcdFontTable[3471] @ 55536
	.field	24,16			; _lcdFontTable[3472] @ 55552
	.field	24,16			; _lcdFontTable[3473] @ 55568
	.field	24,16			; _lcdFontTable[3474] @ 55584
	.field	24,16			; _lcdFontTable[3475] @ 55600
	.field	24,16			; _lcdFontTable[3476] @ 55616
	.field	24,16			; _lcdFontTable[3477] @ 55632
	.field	24,16			; _lcdFontTable[3478] @ 55648
	.field	248,16			; _lcdFontTable[3479] @ 55664
	.field	0,16			; _lcdFontTable[3480] @ 55680
	.field	0,16			; _lcdFontTable[3481] @ 55696
	.field	0,16			; _lcdFontTable[3482] @ 55712
	.field	0,16			; _lcdFontTable[3483] @ 55728
	.field	0,16			; _lcdFontTable[3484] @ 55744
	.field	0,16			; _lcdFontTable[3485] @ 55760
	.field	0,16			; _lcdFontTable[3486] @ 55776
	.field	0,16			; _lcdFontTable[3487] @ 55792
	.field	0,16			; _lcdFontTable[3488] @ 55808
	.field	0,16			; _lcdFontTable[3489] @ 55824
	.field	0,16			; _lcdFontTable[3490] @ 55840
	.field	0,16			; _lcdFontTable[3491] @ 55856
	.field	0,16			; _lcdFontTable[3492] @ 55872
	.field	0,16			; _lcdFontTable[3493] @ 55888
	.field	0,16			; _lcdFontTable[3494] @ 55904
	.field	31,16			; _lcdFontTable[3495] @ 55920
	.field	24,16			; _lcdFontTable[3496] @ 55936
	.field	24,16			; _lcdFontTable[3497] @ 55952
	.field	24,16			; _lcdFontTable[3498] @ 55968
	.field	24,16			; _lcdFontTable[3499] @ 55984
	.field	24,16			; _lcdFontTable[3500] @ 56000
	.field	24,16			; _lcdFontTable[3501] @ 56016
	.field	24,16			; _lcdFontTable[3502] @ 56032
	.field	24,16			; _lcdFontTable[3503] @ 56048
	.field	255,16			; _lcdFontTable[3504] @ 56064
	.field	255,16			; _lcdFontTable[3505] @ 56080
	.field	255,16			; _lcdFontTable[3506] @ 56096
	.field	255,16			; _lcdFontTable[3507] @ 56112
	.field	255,16			; _lcdFontTable[3508] @ 56128
	.field	255,16			; _lcdFontTable[3509] @ 56144
	.field	255,16			; _lcdFontTable[3510] @ 56160
	.field	255,16			; _lcdFontTable[3511] @ 56176
	.field	255,16			; _lcdFontTable[3512] @ 56192
	.field	255,16			; _lcdFontTable[3513] @ 56208
	.field	255,16			; _lcdFontTable[3514] @ 56224
	.field	255,16			; _lcdFontTable[3515] @ 56240
	.field	255,16			; _lcdFontTable[3516] @ 56256
	.field	255,16			; _lcdFontTable[3517] @ 56272
	.field	255,16			; _lcdFontTable[3518] @ 56288
	.field	255,16			; _lcdFontTable[3519] @ 56304
	.field	0,16			; _lcdFontTable[3520] @ 56320
	.field	0,16			; _lcdFontTable[3521] @ 56336
	.field	0,16			; _lcdFontTable[3522] @ 56352
	.field	0,16			; _lcdFontTable[3523] @ 56368
	.field	0,16			; _lcdFontTable[3524] @ 56384
	.field	0,16			; _lcdFontTable[3525] @ 56400
	.field	0,16			; _lcdFontTable[3526] @ 56416
	.field	255,16			; _lcdFontTable[3527] @ 56432
	.field	255,16			; _lcdFontTable[3528] @ 56448
	.field	255,16			; _lcdFontTable[3529] @ 56464
	.field	255,16			; _lcdFontTable[3530] @ 56480
	.field	255,16			; _lcdFontTable[3531] @ 56496
	.field	255,16			; _lcdFontTable[3532] @ 56512
	.field	255,16			; _lcdFontTable[3533] @ 56528
	.field	255,16			; _lcdFontTable[3534] @ 56544
	.field	255,16			; _lcdFontTable[3535] @ 56560
	.field	240,16			; _lcdFontTable[3536] @ 56576
	.field	240,16			; _lcdFontTable[3537] @ 56592
	.field	240,16			; _lcdFontTable[3538] @ 56608
	.field	240,16			; _lcdFontTable[3539] @ 56624
	.field	240,16			; _lcdFontTable[3540] @ 56640
	.field	240,16			; _lcdFontTable[3541] @ 56656
	.field	240,16			; _lcdFontTable[3542] @ 56672
	.field	240,16			; _lcdFontTable[3543] @ 56688
	.field	240,16			; _lcdFontTable[3544] @ 56704
	.field	240,16			; _lcdFontTable[3545] @ 56720
	.field	240,16			; _lcdFontTable[3546] @ 56736
	.field	240,16			; _lcdFontTable[3547] @ 56752
	.field	240,16			; _lcdFontTable[3548] @ 56768
	.field	240,16			; _lcdFontTable[3549] @ 56784
	.field	240,16			; _lcdFontTable[3550] @ 56800
	.field	240,16			; _lcdFontTable[3551] @ 56816
	.field	15,16			; _lcdFontTable[3552] @ 56832
	.field	15,16			; _lcdFontTable[3553] @ 56848
	.field	15,16			; _lcdFontTable[3554] @ 56864
	.field	15,16			; _lcdFontTable[3555] @ 56880
	.field	15,16			; _lcdFontTable[3556] @ 56896
	.field	15,16			; _lcdFontTable[3557] @ 56912
	.field	15,16			; _lcdFontTable[3558] @ 56928
	.field	15,16			; _lcdFontTable[3559] @ 56944
	.field	15,16			; _lcdFontTable[3560] @ 56960
	.field	15,16			; _lcdFontTable[3561] @ 56976
	.field	15,16			; _lcdFontTable[3562] @ 56992
	.field	15,16			; _lcdFontTable[3563] @ 57008
	.field	15,16			; _lcdFontTable[3564] @ 57024
	.field	15,16			; _lcdFontTable[3565] @ 57040
	.field	15,16			; _lcdFontTable[3566] @ 57056
	.field	15,16			; _lcdFontTable[3567] @ 57072
	.field	255,16			; _lcdFontTable[3568] @ 57088
	.field	255,16			; _lcdFontTable[3569] @ 57104
	.field	255,16			; _lcdFontTable[3570] @ 57120
	.field	255,16			; _lcdFontTable[3571] @ 57136
	.field	255,16			; _lcdFontTable[3572] @ 57152
	.field	255,16			; _lcdFontTable[3573] @ 57168
	.field	255,16			; _lcdFontTable[3574] @ 57184
	.field	0,16			; _lcdFontTable[3575] @ 57200
	.field	0,16			; _lcdFontTable[3576] @ 57216
	.field	0,16			; _lcdFontTable[3577] @ 57232
	.field	0,16			; _lcdFontTable[3578] @ 57248
	.field	0,16			; _lcdFontTable[3579] @ 57264
	.field	0,16			; _lcdFontTable[3580] @ 57280
	.field	0,16			; _lcdFontTable[3581] @ 57296
	.field	0,16			; _lcdFontTable[3582] @ 57312
	.field	0,16			; _lcdFontTable[3583] @ 57328
	.field	0,16			; _lcdFontTable[3584] @ 57344
	.field	0,16			; _lcdFontTable[3585] @ 57360
	.field	0,16			; _lcdFontTable[3586] @ 57376
	.field	0,16			; _lcdFontTable[3587] @ 57392
	.field	0,16			; _lcdFontTable[3588] @ 57408
	.field	118,16			; _lcdFontTable[3589] @ 57424
	.field	220,16			; _lcdFontTable[3590] @ 57440
	.field	216,16			; _lcdFontTable[3591] @ 57456
	.field	216,16			; _lcdFontTable[3592] @ 57472
	.field	216,16			; _lcdFontTable[3593] @ 57488
	.field	220,16			; _lcdFontTable[3594] @ 57504
	.field	118,16			; _lcdFontTable[3595] @ 57520
	.field	0,16			; _lcdFontTable[3596] @ 57536
	.field	0,16			; _lcdFontTable[3597] @ 57552
	.field	0,16			; _lcdFontTable[3598] @ 57568
	.field	0,16			; _lcdFontTable[3599] @ 57584
	.field	0,16			; _lcdFontTable[3600] @ 57600
	.field	0,16			; _lcdFontTable[3601] @ 57616
	.field	120,16			; _lcdFontTable[3602] @ 57632
	.field	204,16			; _lcdFontTable[3603] @ 57648
	.field	204,16			; _lcdFontTable[3604] @ 57664
	.field	204,16			; _lcdFontTable[3605] @ 57680
	.field	216,16			; _lcdFontTable[3606] @ 57696
	.field	204,16			; _lcdFontTable[3607] @ 57712
	.field	198,16			; _lcdFontTable[3608] @ 57728
	.field	198,16			; _lcdFontTable[3609] @ 57744
	.field	198,16			; _lcdFontTable[3610] @ 57760
	.field	204,16			; _lcdFontTable[3611] @ 57776
	.field	0,16			; _lcdFontTable[3612] @ 57792
	.field	0,16			; _lcdFontTable[3613] @ 57808
	.field	0,16			; _lcdFontTable[3614] @ 57824
	.field	0,16			; _lcdFontTable[3615] @ 57840
	.field	0,16			; _lcdFontTable[3616] @ 57856
	.field	0,16			; _lcdFontTable[3617] @ 57872
	.field	254,16			; _lcdFontTable[3618] @ 57888
	.field	198,16			; _lcdFontTable[3619] @ 57904
	.field	198,16			; _lcdFontTable[3620] @ 57920
	.field	192,16			; _lcdFontTable[3621] @ 57936
	.field	192,16			; _lcdFontTable[3622] @ 57952
	.field	192,16			; _lcdFontTable[3623] @ 57968
	.field	192,16			; _lcdFontTable[3624] @ 57984
	.field	192,16			; _lcdFontTable[3625] @ 58000
	.field	192,16			; _lcdFontTable[3626] @ 58016
	.field	192,16			; _lcdFontTable[3627] @ 58032
	.field	0,16			; _lcdFontTable[3628] @ 58048
	.field	0,16			; _lcdFontTable[3629] @ 58064
	.field	0,16			; _lcdFontTable[3630] @ 58080
	.field	0,16			; _lcdFontTable[3631] @ 58096
	.field	0,16			; _lcdFontTable[3632] @ 58112
	.field	0,16			; _lcdFontTable[3633] @ 58128
	.field	0,16			; _lcdFontTable[3634] @ 58144
	.field	0,16			; _lcdFontTable[3635] @ 58160
	.field	0,16			; _lcdFontTable[3636] @ 58176
	.field	254,16			; _lcdFontTable[3637] @ 58192
	.field	108,16			; _lcdFontTable[3638] @ 58208
	.field	108,16			; _lcdFontTable[3639] @ 58224
	.field	108,16			; _lcdFontTable[3640] @ 58240
	.field	108,16			; _lcdFontTable[3641] @ 58256
	.field	108,16			; _lcdFontTable[3642] @ 58272
	.field	108,16			; _lcdFontTable[3643] @ 58288
	.field	0,16			; _lcdFontTable[3644] @ 58304
	.field	0,16			; _lcdFontTable[3645] @ 58320
	.field	0,16			; _lcdFontTable[3646] @ 58336
	.field	0,16			; _lcdFontTable[3647] @ 58352
	.field	0,16			; _lcdFontTable[3648] @ 58368
	.field	0,16			; _lcdFontTable[3649] @ 58384
	.field	254,16			; _lcdFontTable[3650] @ 58400
	.field	198,16			; _lcdFontTable[3651] @ 58416
	.field	96,16			; _lcdFontTable[3652] @ 58432
	.field	48,16			; _lcdFontTable[3653] @ 58448
	.field	24,16			; _lcdFontTable[3654] @ 58464
	.field	24,16			; _lcdFontTable[3655] @ 58480
	.field	48,16			; _lcdFontTable[3656] @ 58496
	.field	96,16			; _lcdFontTable[3657] @ 58512
	.field	198,16			; _lcdFontTable[3658] @ 58528
	.field	254,16			; _lcdFontTable[3659] @ 58544
	.field	0,16			; _lcdFontTable[3660] @ 58560
	.field	0,16			; _lcdFontTable[3661] @ 58576
	.field	0,16			; _lcdFontTable[3662] @ 58592
	.field	0,16			; _lcdFontTable[3663] @ 58608
	.field	0,16			; _lcdFontTable[3664] @ 58624
	.field	0,16			; _lcdFontTable[3665] @ 58640
	.field	0,16			; _lcdFontTable[3666] @ 58656
	.field	0,16			; _lcdFontTable[3667] @ 58672
	.field	0,16			; _lcdFontTable[3668] @ 58688
	.field	126,16			; _lcdFontTable[3669] @ 58704
	.field	216,16			; _lcdFontTable[3670] @ 58720
	.field	216,16			; _lcdFontTable[3671] @ 58736
	.field	216,16			; _lcdFontTable[3672] @ 58752
	.field	216,16			; _lcdFontTable[3673] @ 58768
	.field	216,16			; _lcdFontTable[3674] @ 58784
	.field	112,16			; _lcdFontTable[3675] @ 58800
	.field	0,16			; _lcdFontTable[3676] @ 58816
	.field	0,16			; _lcdFontTable[3677] @ 58832
	.field	0,16			; _lcdFontTable[3678] @ 58848
	.field	0,16			; _lcdFontTable[3679] @ 58864
	.field	0,16			; _lcdFontTable[3680] @ 58880
	.field	0,16			; _lcdFontTable[3681] @ 58896
	.field	0,16			; _lcdFontTable[3682] @ 58912
	.field	0,16			; _lcdFontTable[3683] @ 58928
	.field	0,16			; _lcdFontTable[3684] @ 58944
	.field	102,16			; _lcdFontTable[3685] @ 58960
	.field	102,16			; _lcdFontTable[3686] @ 58976
	.field	102,16			; _lcdFontTable[3687] @ 58992
	.field	102,16			; _lcdFontTable[3688] @ 59008
	.field	102,16			; _lcdFontTable[3689] @ 59024
	.field	102,16			; _lcdFontTable[3690] @ 59040
	.field	124,16			; _lcdFontTable[3691] @ 59056
	.field	96,16			; _lcdFontTable[3692] @ 59072
	.field	96,16			; _lcdFontTable[3693] @ 59088
	.field	192,16			; _lcdFontTable[3694] @ 59104
	.field	0,16			; _lcdFontTable[3695] @ 59120
	.field	0,16			; _lcdFontTable[3696] @ 59136
	.field	0,16			; _lcdFontTable[3697] @ 59152
	.field	0,16			; _lcdFontTable[3698] @ 59168
	.field	0,16			; _lcdFontTable[3699] @ 59184
	.field	118,16			; _lcdFontTable[3700] @ 59200
	.field	220,16			; _lcdFontTable[3701] @ 59216
	.field	24,16			; _lcdFontTable[3702] @ 59232
	.field	24,16			; _lcdFontTable[3703] @ 59248
	.field	24,16			; _lcdFontTable[3704] @ 59264
	.field	24,16			; _lcdFontTable[3705] @ 59280
	.field	24,16			; _lcdFontTable[3706] @ 59296
	.field	24,16			; _lcdFontTable[3707] @ 59312
	.field	0,16			; _lcdFontTable[3708] @ 59328
	.field	0,16			; _lcdFontTable[3709] @ 59344
	.field	0,16			; _lcdFontTable[3710] @ 59360
	.field	0,16			; _lcdFontTable[3711] @ 59376
	.field	0,16			; _lcdFontTable[3712] @ 59392
	.field	0,16			; _lcdFontTable[3713] @ 59408
	.field	126,16			; _lcdFontTable[3714] @ 59424
	.field	24,16			; _lcdFontTable[3715] @ 59440
	.field	60,16			; _lcdFontTable[3716] @ 59456
	.field	102,16			; _lcdFontTable[3717] @ 59472
	.field	102,16			; _lcdFontTable[3718] @ 59488
	.field	102,16			; _lcdFontTable[3719] @ 59504
	.field	102,16			; _lcdFontTable[3720] @ 59520
	.field	60,16			; _lcdFontTable[3721] @ 59536
	.field	24,16			; _lcdFontTable[3722] @ 59552
	.field	126,16			; _lcdFontTable[3723] @ 59568
	.field	0,16			; _lcdFontTable[3724] @ 59584
	.field	0,16			; _lcdFontTable[3725] @ 59600
	.field	0,16			; _lcdFontTable[3726] @ 59616
	.field	0,16			; _lcdFontTable[3727] @ 59632
	.field	0,16			; _lcdFontTable[3728] @ 59648
	.field	0,16			; _lcdFontTable[3729] @ 59664
	.field	56,16			; _lcdFontTable[3730] @ 59680
	.field	108,16			; _lcdFontTable[3731] @ 59696
	.field	198,16			; _lcdFontTable[3732] @ 59712
	.field	198,16			; _lcdFontTable[3733] @ 59728
	.field	254,16			; _lcdFontTable[3734] @ 59744
	.field	198,16			; _lcdFontTable[3735] @ 59760
	.field	198,16			; _lcdFontTable[3736] @ 59776
	.field	198,16			; _lcdFontTable[3737] @ 59792
	.field	108,16			; _lcdFontTable[3738] @ 59808
	.field	56,16			; _lcdFontTable[3739] @ 59824
	.field	0,16			; _lcdFontTable[3740] @ 59840
	.field	0,16			; _lcdFontTable[3741] @ 59856
	.field	0,16			; _lcdFontTable[3742] @ 59872
	.field	0,16			; _lcdFontTable[3743] @ 59888
	.field	0,16			; _lcdFontTable[3744] @ 59904
	.field	0,16			; _lcdFontTable[3745] @ 59920
	.field	56,16			; _lcdFontTable[3746] @ 59936
	.field	108,16			; _lcdFontTable[3747] @ 59952
	.field	198,16			; _lcdFontTable[3748] @ 59968
	.field	198,16			; _lcdFontTable[3749] @ 59984
	.field	198,16			; _lcdFontTable[3750] @ 60000
	.field	108,16			; _lcdFontTable[3751] @ 60016
	.field	108,16			; _lcdFontTable[3752] @ 60032
	.field	108,16			; _lcdFontTable[3753] @ 60048
	.field	108,16			; _lcdFontTable[3754] @ 60064
	.field	238,16			; _lcdFontTable[3755] @ 60080
	.field	0,16			; _lcdFontTable[3756] @ 60096
	.field	0,16			; _lcdFontTable[3757] @ 60112
	.field	0,16			; _lcdFontTable[3758] @ 60128
	.field	0,16			; _lcdFontTable[3759] @ 60144
	.field	0,16			; _lcdFontTable[3760] @ 60160
	.field	0,16			; _lcdFontTable[3761] @ 60176
	.field	30,16			; _lcdFontTable[3762] @ 60192
	.field	48,16			; _lcdFontTable[3763] @ 60208
	.field	24,16			; _lcdFontTable[3764] @ 60224
	.field	12,16			; _lcdFontTable[3765] @ 60240
	.field	62,16			; _lcdFontTable[3766] @ 60256
	.field	102,16			; _lcdFontTable[3767] @ 60272
	.field	102,16			; _lcdFontTable[3768] @ 60288
	.field	102,16			; _lcdFontTable[3769] @ 60304
	.field	102,16			; _lcdFontTable[3770] @ 60320
	.field	60,16			; _lcdFontTable[3771] @ 60336
	.field	0,16			; _lcdFontTable[3772] @ 60352
	.field	0,16			; _lcdFontTable[3773] @ 60368
	.field	0,16			; _lcdFontTable[3774] @ 60384
	.field	0,16			; _lcdFontTable[3775] @ 60400
	.field	0,16			; _lcdFontTable[3776] @ 60416
	.field	0,16			; _lcdFontTable[3777] @ 60432
	.field	0,16			; _lcdFontTable[3778] @ 60448
	.field	0,16			; _lcdFontTable[3779] @ 60464
	.field	0,16			; _lcdFontTable[3780] @ 60480
	.field	126,16			; _lcdFontTable[3781] @ 60496
	.field	219,16			; _lcdFontTable[3782] @ 60512
	.field	219,16			; _lcdFontTable[3783] @ 60528
	.field	219,16			; _lcdFontTable[3784] @ 60544
	.field	126,16			; _lcdFontTable[3785] @ 60560
	.field	0,16			; _lcdFontTable[3786] @ 60576
	.field	0,16			; _lcdFontTable[3787] @ 60592
	.field	0,16			; _lcdFontTable[3788] @ 60608
	.field	0,16			; _lcdFontTable[3789] @ 60624
	.field	0,16			; _lcdFontTable[3790] @ 60640
	.field	0,16			; _lcdFontTable[3791] @ 60656
	.field	0,16			; _lcdFontTable[3792] @ 60672
	.field	0,16			; _lcdFontTable[3793] @ 60688
	.field	0,16			; _lcdFontTable[3794] @ 60704
	.field	3,16			; _lcdFontTable[3795] @ 60720
	.field	6,16			; _lcdFontTable[3796] @ 60736
	.field	126,16			; _lcdFontTable[3797] @ 60752
	.field	219,16			; _lcdFontTable[3798] @ 60768
	.field	219,16			; _lcdFontTable[3799] @ 60784
	.field	243,16			; _lcdFontTable[3800] @ 60800
	.field	126,16			; _lcdFontTable[3801] @ 60816
	.field	96,16			; _lcdFontTable[3802] @ 60832
	.field	192,16			; _lcdFontTable[3803] @ 60848
	.field	0,16			; _lcdFontTable[3804] @ 60864
	.field	0,16			; _lcdFontTable[3805] @ 60880
	.field	0,16			; _lcdFontTable[3806] @ 60896
	.field	0,16			; _lcdFontTable[3807] @ 60912
	.field	0,16			; _lcdFontTable[3808] @ 60928
	.field	0,16			; _lcdFontTable[3809] @ 60944
	.field	28,16			; _lcdFontTable[3810] @ 60960
	.field	48,16			; _lcdFontTable[3811] @ 60976
	.field	96,16			; _lcdFontTable[3812] @ 60992
	.field	96,16			; _lcdFontTable[3813] @ 61008
	.field	124,16			; _lcdFontTable[3814] @ 61024
	.field	96,16			; _lcdFontTable[3815] @ 61040
	.field	96,16			; _lcdFontTable[3816] @ 61056
	.field	96,16			; _lcdFontTable[3817] @ 61072
	.field	48,16			; _lcdFontTable[3818] @ 61088
	.field	28,16			; _lcdFontTable[3819] @ 61104
	.field	0,16			; _lcdFontTable[3820] @ 61120
	.field	0,16			; _lcdFontTable[3821] @ 61136
	.field	0,16			; _lcdFontTable[3822] @ 61152
	.field	0,16			; _lcdFontTable[3823] @ 61168
	.field	0,16			; _lcdFontTable[3824] @ 61184
	.field	0,16			; _lcdFontTable[3825] @ 61200
	.field	0,16			; _lcdFontTable[3826] @ 61216
	.field	124,16			; _lcdFontTable[3827] @ 61232
	.field	198,16			; _lcdFontTable[3828] @ 61248
	.field	198,16			; _lcdFontTable[3829] @ 61264
	.field	198,16			; _lcdFontTable[3830] @ 61280
	.field	198,16			; _lcdFontTable[3831] @ 61296
	.field	198,16			; _lcdFontTable[3832] @ 61312
	.field	198,16			; _lcdFontTable[3833] @ 61328
	.field	198,16			; _lcdFontTable[3834] @ 61344
	.field	198,16			; _lcdFontTable[3835] @ 61360
	.field	0,16			; _lcdFontTable[3836] @ 61376
	.field	0,16			; _lcdFontTable[3837] @ 61392
	.field	0,16			; _lcdFontTable[3838] @ 61408
	.field	0,16			; _lcdFontTable[3839] @ 61424
	.field	0,16			; _lcdFontTable[3840] @ 61440
	.field	0,16			; _lcdFontTable[3841] @ 61456
	.field	0,16			; _lcdFontTable[3842] @ 61472
	.field	0,16			; _lcdFontTable[3843] @ 61488
	.field	254,16			; _lcdFontTable[3844] @ 61504
	.field	0,16			; _lcdFontTable[3845] @ 61520
	.field	0,16			; _lcdFontTable[3846] @ 61536
	.field	254,16			; _lcdFontTable[3847] @ 61552
	.field	0,16			; _lcdFontTable[3848] @ 61568
	.field	0,16			; _lcdFontTable[3849] @ 61584
	.field	254,16			; _lcdFontTable[3850] @ 61600
	.field	0,16			; _lcdFontTable[3851] @ 61616
	.field	0,16			; _lcdFontTable[3852] @ 61632
	.field	0,16			; _lcdFontTable[3853] @ 61648
	.field	0,16			; _lcdFontTable[3854] @ 61664
	.field	0,16			; _lcdFontTable[3855] @ 61680
	.field	0,16			; _lcdFontTable[3856] @ 61696
	.field	0,16			; _lcdFontTable[3857] @ 61712
	.field	0,16			; _lcdFontTable[3858] @ 61728
	.field	0,16			; _lcdFontTable[3859] @ 61744
	.field	24,16			; _lcdFontTable[3860] @ 61760
	.field	24,16			; _lcdFontTable[3861] @ 61776
	.field	126,16			; _lcdFontTable[3862] @ 61792
	.field	24,16			; _lcdFontTable[3863] @ 61808
	.field	24,16			; _lcdFontTable[3864] @ 61824
	.field	0,16			; _lcdFontTable[3865] @ 61840
	.field	0,16			; _lcdFontTable[3866] @ 61856
	.field	126,16			; _lcdFontTable[3867] @ 61872
	.field	0,16			; _lcdFontTable[3868] @ 61888
	.field	0,16			; _lcdFontTable[3869] @ 61904
	.field	0,16			; _lcdFontTable[3870] @ 61920
	.field	0,16			; _lcdFontTable[3871] @ 61936
	.field	0,16			; _lcdFontTable[3872] @ 61952
	.field	0,16			; _lcdFontTable[3873] @ 61968
	.field	0,16			; _lcdFontTable[3874] @ 61984
	.field	48,16			; _lcdFontTable[3875] @ 62000
	.field	24,16			; _lcdFontTable[3876] @ 62016
	.field	12,16			; _lcdFontTable[3877] @ 62032
	.field	6,16			; _lcdFontTable[3878] @ 62048
	.field	12,16			; _lcdFontTable[3879] @ 62064
	.field	24,16			; _lcdFontTable[3880] @ 62080
	.field	48,16			; _lcdFontTable[3881] @ 62096
	.field	0,16			; _lcdFontTable[3882] @ 62112
	.field	126,16			; _lcdFontTable[3883] @ 62128
	.field	0,16			; _lcdFontTable[3884] @ 62144
	.field	0,16			; _lcdFontTable[3885] @ 62160
	.field	0,16			; _lcdFontTable[3886] @ 62176
	.field	0,16			; _lcdFontTable[3887] @ 62192
	.field	0,16			; _lcdFontTable[3888] @ 62208
	.field	0,16			; _lcdFontTable[3889] @ 62224
	.field	0,16			; _lcdFontTable[3890] @ 62240
	.field	12,16			; _lcdFontTable[3891] @ 62256
	.field	24,16			; _lcdFontTable[3892] @ 62272
	.field	48,16			; _lcdFontTable[3893] @ 62288
	.field	96,16			; _lcdFontTable[3894] @ 62304
	.field	48,16			; _lcdFontTable[3895] @ 62320
	.field	24,16			; _lcdFontTable[3896] @ 62336
	.field	12,16			; _lcdFontTable[3897] @ 62352
	.field	0,16			; _lcdFontTable[3898] @ 62368
	.field	126,16			; _lcdFontTable[3899] @ 62384
	.field	0,16			; _lcdFontTable[3900] @ 62400
	.field	0,16			; _lcdFontTable[3901] @ 62416
	.field	0,16			; _lcdFontTable[3902] @ 62432
	.field	0,16			; _lcdFontTable[3903] @ 62448
	.field	0,16			; _lcdFontTable[3904] @ 62464
	.field	0,16			; _lcdFontTable[3905] @ 62480
	.field	14,16			; _lcdFontTable[3906] @ 62496
	.field	27,16			; _lcdFontTable[3907] @ 62512
	.field	27,16			; _lcdFontTable[3908] @ 62528
	.field	24,16			; _lcdFontTable[3909] @ 62544
	.field	24,16			; _lcdFontTable[3910] @ 62560
	.field	24,16			; _lcdFontTable[3911] @ 62576
	.field	24,16			; _lcdFontTable[3912] @ 62592
	.field	24,16			; _lcdFontTable[3913] @ 62608
	.field	24,16			; _lcdFontTable[3914] @ 62624
	.field	24,16			; _lcdFontTable[3915] @ 62640
	.field	24,16			; _lcdFontTable[3916] @ 62656
	.field	24,16			; _lcdFontTable[3917] @ 62672
	.field	24,16			; _lcdFontTable[3918] @ 62688
	.field	24,16			; _lcdFontTable[3919] @ 62704
	.field	24,16			; _lcdFontTable[3920] @ 62720
	.field	24,16			; _lcdFontTable[3921] @ 62736
	.field	24,16			; _lcdFontTable[3922] @ 62752
	.field	24,16			; _lcdFontTable[3923] @ 62768
	.field	24,16			; _lcdFontTable[3924] @ 62784
	.field	24,16			; _lcdFontTable[3925] @ 62800
	.field	24,16			; _lcdFontTable[3926] @ 62816
	.field	24,16			; _lcdFontTable[3927] @ 62832
	.field	24,16			; _lcdFontTable[3928] @ 62848
	.field	216,16			; _lcdFontTable[3929] @ 62864
	.field	216,16			; _lcdFontTable[3930] @ 62880
	.field	216,16			; _lcdFontTable[3931] @ 62896
	.field	112,16			; _lcdFontTable[3932] @ 62912
	.field	0,16			; _lcdFontTable[3933] @ 62928
	.field	0,16			; _lcdFontTable[3934] @ 62944
	.field	0,16			; _lcdFontTable[3935] @ 62960
	.field	0,16			; _lcdFontTable[3936] @ 62976
	.field	0,16			; _lcdFontTable[3937] @ 62992
	.field	0,16			; _lcdFontTable[3938] @ 63008
	.field	0,16			; _lcdFontTable[3939] @ 63024
	.field	0,16			; _lcdFontTable[3940] @ 63040
	.field	24,16			; _lcdFontTable[3941] @ 63056
	.field	0,16			; _lcdFontTable[3942] @ 63072
	.field	126,16			; _lcdFontTable[3943] @ 63088
	.field	0,16			; _lcdFontTable[3944] @ 63104
	.field	24,16			; _lcdFontTable[3945] @ 63120
	.field	0,16			; _lcdFontTable[3946] @ 63136
	.field	0,16			; _lcdFontTable[3947] @ 63152
	.field	0,16			; _lcdFontTable[3948] @ 63168
	.field	0,16			; _lcdFontTable[3949] @ 63184
	.field	0,16			; _lcdFontTable[3950] @ 63200
	.field	0,16			; _lcdFontTable[3951] @ 63216
	.field	0,16			; _lcdFontTable[3952] @ 63232
	.field	0,16			; _lcdFontTable[3953] @ 63248
	.field	0,16			; _lcdFontTable[3954] @ 63264
	.field	0,16			; _lcdFontTable[3955] @ 63280
	.field	0,16			; _lcdFontTable[3956] @ 63296
	.field	118,16			; _lcdFontTable[3957] @ 63312
	.field	220,16			; _lcdFontTable[3958] @ 63328
	.field	0,16			; _lcdFontTable[3959] @ 63344
	.field	118,16			; _lcdFontTable[3960] @ 63360
	.field	220,16			; _lcdFontTable[3961] @ 63376
	.field	0,16			; _lcdFontTable[3962] @ 63392
	.field	0,16			; _lcdFontTable[3963] @ 63408
	.field	0,16			; _lcdFontTable[3964] @ 63424
	.field	0,16			; _lcdFontTable[3965] @ 63440
	.field	0,16			; _lcdFontTable[3966] @ 63456
	.field	0,16			; _lcdFontTable[3967] @ 63472
	.field	0,16			; _lcdFontTable[3968] @ 63488
	.field	56,16			; _lcdFontTable[3969] @ 63504
	.field	108,16			; _lcdFontTable[3970] @ 63520
	.field	108,16			; _lcdFontTable[3971] @ 63536
	.field	56,16			; _lcdFontTable[3972] @ 63552
	.field	0,16			; _lcdFontTable[3973] @ 63568
	.field	0,16			; _lcdFontTable[3974] @ 63584
	.field	0,16			; _lcdFontTable[3975] @ 63600
	.field	0,16			; _lcdFontTable[3976] @ 63616
	.field	0,16			; _lcdFontTable[3977] @ 63632
	.field	0,16			; _lcdFontTable[3978] @ 63648
	.field	0,16			; _lcdFontTable[3979] @ 63664
	.field	0,16			; _lcdFontTable[3980] @ 63680
	.field	0,16			; _lcdFontTable[3981] @ 63696
	.field	0,16			; _lcdFontTable[3982] @ 63712
	.field	0,16			; _lcdFontTable[3983] @ 63728
	.field	0,16			; _lcdFontTable[3984] @ 63744
	.field	0,16			; _lcdFontTable[3985] @ 63760
	.field	0,16			; _lcdFontTable[3986] @ 63776
	.field	0,16			; _lcdFontTable[3987] @ 63792
	.field	0,16			; _lcdFontTable[3988] @ 63808
	.field	0,16			; _lcdFontTable[3989] @ 63824
	.field	0,16			; _lcdFontTable[3990] @ 63840
	.field	24,16			; _lcdFontTable[3991] @ 63856
	.field	24,16			; _lcdFontTable[3992] @ 63872
	.field	0,16			; _lcdFontTable[3993] @ 63888
	.field	0,16			; _lcdFontTable[3994] @ 63904
	.field	0,16			; _lcdFontTable[3995] @ 63920
	.field	0,16			; _lcdFontTable[3996] @ 63936
	.field	0,16			; _lcdFontTable[3997] @ 63952
	.field	0,16			; _lcdFontTable[3998] @ 63968
	.field	0,16			; _lcdFontTable[3999] @ 63984
	.field	0,16			; _lcdFontTable[4000] @ 64000
	.field	0,16			; _lcdFontTable[4001] @ 64016
	.field	0,16			; _lcdFontTable[4002] @ 64032
	.field	0,16			; _lcdFontTable[4003] @ 64048
	.field	0,16			; _lcdFontTable[4004] @ 64064
	.field	0,16			; _lcdFontTable[4005] @ 64080
	.field	0,16			; _lcdFontTable[4006] @ 64096
	.field	24,16			; _lcdFontTable[4007] @ 64112
	.field	0,16			; _lcdFontTable[4008] @ 64128
	.field	0,16			; _lcdFontTable[4009] @ 64144
	.field	0,16			; _lcdFontTable[4010] @ 64160
	.field	0,16			; _lcdFontTable[4011] @ 64176
	.field	0,16			; _lcdFontTable[4012] @ 64192
	.field	0,16			; _lcdFontTable[4013] @ 64208
	.field	0,16			; _lcdFontTable[4014] @ 64224
	.field	0,16			; _lcdFontTable[4015] @ 64240
	.field	0,16			; _lcdFontTable[4016] @ 64256
	.field	15,16			; _lcdFontTable[4017] @ 64272
	.field	12,16			; _lcdFontTable[4018] @ 64288
	.field	12,16			; _lcdFontTable[4019] @ 64304
	.field	12,16			; _lcdFontTable[4020] @ 64320
	.field	12,16			; _lcdFontTable[4021] @ 64336
	.field	12,16			; _lcdFontTable[4022] @ 64352
	.field	236,16			; _lcdFontTable[4023] @ 64368
	.field	108,16			; _lcdFontTable[4024] @ 64384
	.field	108,16			; _lcdFontTable[4025] @ 64400
	.field	60,16			; _lcdFontTable[4026] @ 64416
	.field	28,16			; _lcdFontTable[4027] @ 64432
	.field	0,16			; _lcdFontTable[4028] @ 64448
	.field	0,16			; _lcdFontTable[4029] @ 64464
	.field	0,16			; _lcdFontTable[4030] @ 64480
	.field	0,16			; _lcdFontTable[4031] @ 64496
	.field	0,16			; _lcdFontTable[4032] @ 64512
	.field	108,16			; _lcdFontTable[4033] @ 64528
	.field	54,16			; _lcdFontTable[4034] @ 64544
	.field	54,16			; _lcdFontTable[4035] @ 64560
	.field	54,16			; _lcdFontTable[4036] @ 64576
	.field	54,16			; _lcdFontTable[4037] @ 64592
	.field	54,16			; _lcdFontTable[4038] @ 64608
	.field	0,16			; _lcdFontTable[4039] @ 64624
	.field	0,16			; _lcdFontTable[4040] @ 64640
	.field	0,16			; _lcdFontTable[4041] @ 64656
	.field	0,16			; _lcdFontTable[4042] @ 64672
	.field	0,16			; _lcdFontTable[4043] @ 64688
	.field	0,16			; _lcdFontTable[4044] @ 64704
	.field	0,16			; _lcdFontTable[4045] @ 64720
	.field	0,16			; _lcdFontTable[4046] @ 64736
	.field	0,16			; _lcdFontTable[4047] @ 64752
	.field	0,16			; _lcdFontTable[4048] @ 64768
	.field	60,16			; _lcdFontTable[4049] @ 64784
	.field	102,16			; _lcdFontTable[4050] @ 64800
	.field	12,16			; _lcdFontTable[4051] @ 64816
	.field	24,16			; _lcdFontTable[4052] @ 64832
	.field	50,16			; _lcdFontTable[4053] @ 64848
	.field	126,16			; _lcdFontTable[4054] @ 64864
	.field	0,16			; _lcdFontTable[4055] @ 64880
	.field	0,16			; _lcdFontTable[4056] @ 64896
	.field	0,16			; _lcdFontTable[4057] @ 64912
	.field	0,16			; _lcdFontTable[4058] @ 64928
	.field	0,16			; _lcdFontTable[4059] @ 64944
	.field	0,16			; _lcdFontTable[4060] @ 64960
	.field	0,16			; _lcdFontTable[4061] @ 64976
	.field	0,16			; _lcdFontTable[4062] @ 64992
	.field	0,16			; _lcdFontTable[4063] @ 65008
	.field	0,16			; _lcdFontTable[4064] @ 65024
	.field	0,16			; _lcdFontTable[4065] @ 65040
	.field	0,16			; _lcdFontTable[4066] @ 65056
	.field	0,16			; _lcdFontTable[4067] @ 65072
	.field	126,16			; _lcdFontTable[4068] @ 65088
	.field	126,16			; _lcdFontTable[4069] @ 65104
	.field	126,16			; _lcdFontTable[4070] @ 65120
	.field	126,16			; _lcdFontTable[4071] @ 65136
	.field	126,16			; _lcdFontTable[4072] @ 65152
	.field	126,16			; _lcdFontTable[4073] @ 65168
	.field	126,16			; _lcdFontTable[4074] @ 65184
	.field	0,16			; _lcdFontTable[4075] @ 65200
	.field	0,16			; _lcdFontTable[4076] @ 65216
	.field	0,16			; _lcdFontTable[4077] @ 65232
	.field	0,16			; _lcdFontTable[4078] @ 65248
	.field	0,16			; _lcdFontTable[4079] @ 65264
	.field	0,16			; _lcdFontTable[4080] @ 65280
	.field	0,16			; _lcdFontTable[4081] @ 65296
	.field	0,16			; _lcdFontTable[4082] @ 65312
	.field	0,16			; _lcdFontTable[4083] @ 65328
	.field	0,16			; _lcdFontTable[4084] @ 65344
	.field	0,16			; _lcdFontTable[4085] @ 65360
	.field	0,16			; _lcdFontTable[4086] @ 65376
	.field	0,16			; _lcdFontTable[4087] @ 65392
	.field	0,16			; _lcdFontTable[4088] @ 65408
	.field	0,16			; _lcdFontTable[4089] @ 65424
	.field	0,16			; _lcdFontTable[4090] @ 65440
	.field	0,16			; _lcdFontTable[4091] @ 65456
	.field	0,16			; _lcdFontTable[4092] @ 65472
	.field	0,16			; _lcdFontTable[4093] @ 65488
	.field	0,16			; _lcdFontTable[4094] @ 65504
	.field	0,16			; _lcdFontTable[4095] @ 65520
$C$IR_1:	.set	4096


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("strlen")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_strlen")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$109)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_configDMA")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_LCD_configDMA")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$52)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$3

	.bss	_lcdFontTable,4096,0,0
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("lcdFontTable")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_lcdFontTable")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _lcdFontTable]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.global	_done_flag
	.bss	_done_flag,1,0,0
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("done_flag")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_done_flag")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _done_flag]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_external
	.global	_cnt_lcd
	.bss	_cnt_lcd,1,0,0
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("cnt_lcd")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_cnt_lcd")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _cnt_lcd]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$9, DW_AT_external
	.global	_LCD_TempBuf
	.bss	_LCD_TempBuf,8,0,0
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("LCD_TempBuf")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_LCD_TempBuf")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _LCD_TempBuf]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$10, DW_AT_external
	.global	_LCD_TextFrameBuf
	.bss	_LCD_TextFrameBuf,64,0,0
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("LCD_TextFrameBuf")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_LCD_TextFrameBuf")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _LCD_TextFrameBuf]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$11, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/36244rQbgxk 
	.sect	".text"

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_lcdcEnableLiddDMA")
	.dwattr $C$DW$12, DW_AT_low_pc(_CSL_lcdcEnableLiddDMA)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_CSL_lcdcEnableLiddDMA")
	.dwattr $C$DW$12, DW_AT_TI_begin_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 114,column 1,is_stmt,address _CSL_lcdcEnableLiddDMA

	.dwfde $C$DW$CIE, _CSL_lcdcEnableLiddDMA
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: CSL_lcdcEnableLiddDMA                                        *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,  *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CSL_lcdcEnableLiddDMA:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 115,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |115| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |115| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |115| 
        BCLR @#8, AR1 ; |115| 
        BSET @#8, AR1 ; |115| 
        MOV AR1, port(*AR3(T0)) ; |115| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 116,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_lcdcLiddWriteCsAddr")
	.dwattr $C$DW$16, DW_AT_low_pc(_CSL_lcdcLiddWriteCsAddr)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_CSL_lcdcLiddWriteCsAddr")
	.dwattr $C$DW$16, DW_AT_TI_begin_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0xc2)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 204,column 1,is_stmt,address _CSL_lcdcLiddWriteCsAddr

	.dwfde $C$DW$CIE, _CSL_lcdcLiddWriteCsAddr
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs0cs1")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: CSL_lcdcLiddWriteCsAddr                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CSL_lcdcLiddWriteCsAddr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("cs0cs1")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#4)) ; |204| 
        MOV T0, *SP(#2) ; |204| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 205,column 5,is_stmt

        MOV *SP(#2), AR1 ; |205| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |205| 
        BCC $C$L1,TC1 ; |205| 
                                        ; branchcc occurs ; |205| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 207,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |207| 
        MOV *AR3, AR3 ; |207| 
        MOV port(*AR3(T0)), AR1 ; |207| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |207| 
        MOV dbl(*SP(#4)), AC0 ; |207| 
        MOV #0 << #16, AC1 ; |207| 
        AND #0xffff, AC0, AC0 ; |207| 
        OR AC1, AC0 ; |207| 
        MOV AC0, port(*AR3(T0)) ; |207| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 209,column 5,is_stmt
        B $C$L2   ; |209| 
                                        ; branch occurs ; |209| 
$C$L1:    
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 212,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |212| 
        MOV *AR3, AR3 ; |212| 
        MOV port(*AR3(T0)), AR1 ; |212| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |212| 
        MOV dbl(*SP(#4)), AC0 ; |212| 
        MOV #0 << #16, AC1 ; |212| 
        AND #0xffff, AC0, AC0 ; |212| 
        OR AC1, AC0 ; |212| 
        MOV AC0, port(*AR3(T0)) ; |212| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 215,column 1,is_stmt
$C$L2:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$16, DW_AT_TI_end_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xd7)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_lcdcLiddWriteCsData")
	.dwattr $C$DW$24, DW_AT_low_pc(_CSL_lcdcLiddWriteCsData)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_CSL_lcdcLiddWriteCsData")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0xf8)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 258,column 1,is_stmt,address _CSL_lcdcLiddWriteCsData

	.dwfde $C$DW$CIE, _CSL_lcdcLiddWriteCsData
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs0cs1")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: CSL_lcdcLiddWriteCsData                                      *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,*
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CSL_lcdcLiddWriteCsData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("cs0cs1")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#3) ; |258| 
        MOV T0, *SP(#2) ; |258| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 259,column 5,is_stmt

        MOV *SP(#2), AR1 ; |259| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |259| 
        BCC $C$L3,TC1 ; |259| 
                                        ; branchcc occurs ; |259| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 261,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |261| 
        MOV *AR3, AR3 ; |261| 
        MOV port(*AR3(T0)), AR1 ; |261| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |261| 
        MOV *SP(#3), AR1 ; |261| 
        OR #0x0000, AR1, AR1 ; |261| 
        MOV AR1, port(*AR3(T0)) ; |261| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 263,column 5,is_stmt
        B $C$L4   ; |263| 
                                        ; branch occurs ; |263| 
$C$L3:    
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 266,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |266| 
        MOV *AR3, AR3 ; |266| 
        MOV port(*AR3(T0)), AR1 ; |266| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |266| 
        MOV *SP(#3), AR1 ; |266| 
        OR #0x0000, AR1, AR1 ; |266| 
        MOV AR1, port(*AR3(T0)) ; |266| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 269,column 1,is_stmt
$C$L4:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$24, DW_AT_TI_end_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_lcdcGetLiddCsData")
	.dwattr $C$DW$32, DW_AT_low_pc(_CSL_lcdcGetLiddCsData)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_CSL_lcdcGetLiddCsData")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 312,column 1,is_stmt,address _CSL_lcdcGetLiddCsData

	.dwfde $C$DW$CIE, _CSL_lcdcGetLiddCsData
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg17]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs0cs1")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: CSL_lcdcGetLiddCsData                                        *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CSL_lcdcGetLiddCsData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("cs0cs1")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_cs0cs1")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |312| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 313,column 5,is_stmt

        MOV *SP(#2), AR1 ; |313| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |313| 
        BCC $C$L5,TC1 ; |313| 
                                        ; branchcc occurs ; |313| 
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 315,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |315| 
        MOV *AR3, AR3 ; |315| 
        MOV port(*AR3(T0)), T0 ; |315| 
        B $C$L6   ; |315| 
                                        ; branch occurs ; |315| 
$C$L5:    
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 319,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |319| 
        MOV *AR3, AR3 ; |319| 
        MOV port(*AR3(T0)), T0 ; |319| 
$C$L6:    
	.dwpsn	file "/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h",line 321,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$32, DW_AT_TI_end_file("/home/santiago/Research/Ti/c55_csl_3.08.01/inc/csl_lcdcAux.h")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x141)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.global	_wait

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("wait")
	.dwattr $C$DW$38, DW_AT_low_pc(_wait)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_wait")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 46,column 1,is_stmt,address _wait

	.dwfde $C$DW$CIE, _wait
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: wait                                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_wait:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#0)) ; |46| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 49,column 6,is_stmt
        MOV #0, *SP(#2) ; |49| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 49,column 10,is_stmt
        MOV *SP(#2), AC1 ; |49| 
        MOV dbl(*SP(#0)), AC0 ; |49| 
        CMPU AC1 >= AC0, TC1 ; |49| 
        BCC $C$L8,TC1 ; |49| 
                                        ; branchcc occurs ; |49| 
$C$L7:    
$C$DW$L$_wait$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 50,column 2,is_stmt
	nop
	.dwpsn	file "./telecom/lcdc_panel.c",line 49,column 18,is_stmt
        ADD #1, *SP(#2) ; |49| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 49,column 10,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |49| 
        MOV *SP(#2), AC1 ; |49| 
        CMPU AC1 < AC0, TC1 ; |49| 
        BCC $C$L7,TC1 ; |49| 
                                        ; branchcc occurs ; |49| 
$C$DW$L$_wait$2$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 51,column 1,is_stmt
$C$L8:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$43	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$43, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L7:1:1726009971")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x32)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_wait$2$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_wait$2$E)
	.dwendtag $C$DW$43

	.dwattr $C$DW$38, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text"
	.global	_DisplayOn

$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("DisplayOn")
	.dwattr $C$DW$45, DW_AT_low_pc(_DisplayOn)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_DisplayOn")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./telecom/lcdc_panel.c",line 72,column 1,is_stmt,address _DisplayOn

	.dwfde $C$DW$CIE, _DisplayOn
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: DisplayOn                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DisplayOn:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |72| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 73,column 6,is_stmt
        MOV #175, T0 ; |73| 
        MOV *SP(#0), T1 ; |73| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_cmdWrite ; |73| 
                                        ; call occurs [#_cmdWrite] ; |73| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 74,column 3,is_stmt
        MOV #166, T0 ; |74| 
        MOV *SP(#0), T1 ; |74| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_cmdWrite ; |74| 
                                        ; call occurs [#_cmdWrite] ; |74| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 75,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$45, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.global	_DisplayOff

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("DisplayOff")
	.dwattr $C$DW$51, DW_AT_low_pc(_DisplayOff)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_DisplayOff")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./telecom/lcdc_panel.c",line 85,column 1,is_stmt,address _DisplayOff

	.dwfde $C$DW$CIE, _DisplayOff
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: DisplayOff                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DisplayOff:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |85| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 86,column 5,is_stmt
        MOV #164, T0 ; |86| 
        MOV *SP(#0), T1 ; |86| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_cmdWrite ; |86| 
                                        ; call occurs [#_cmdWrite] ; |86| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 87,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$51, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x57)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_DisplayColorMode

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("DisplayColorMode")
	.dwattr $C$DW$56, DW_AT_low_pc(_DisplayColorMode)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_DisplayColorMode")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x60)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 99,column 1,is_stmt,address _DisplayColorMode

	.dwfde $C$DW$CIE, _DisplayColorMode
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colorMode")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_colorMode")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: DisplayColorMode                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR1,AR2,AR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DisplayColorMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("colorMode")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_colorMode")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T1, *SP(#1) ; |99| 
        MOV T0, *SP(#0) ; |99| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 101,column 5,is_stmt
        MOV #160, T0 ; |101| 
        MOV *SP(#1), T1 ; |101| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_cmdWrite ; |101| 
                                        ; call occurs [#_cmdWrite] ; |101| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 102,column 2,is_stmt
        CMP *SP(#0) == #3, TC1 ; |102| 
        BCC $C$L9,!TC1 ; |102| 
                                        ; branchcc occurs ; |102| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 104,column 6,is_stmt
        MOV *SP(#1), T1 ; |104| 
        MOV #164, T0 ; |104| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_dataWrite")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_dataWrite ; |104| 
                                        ; call occurs [#_dataWrite] ; |104| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 105,column 2,is_stmt
        B $C$L13  ; |105| 
                                        ; branch occurs ; |105| 
$C$L9:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 106,column 7,is_stmt
        CMP *SP(#0) == #2, TC1 ; |106| 
        BCC $C$L10,!TC1 ; |106| 
                                        ; branchcc occurs ; |106| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 111,column 3,is_stmt
        MOV *SP(#1), T1 ; |111| 
        MOV #177, T0 ; |111| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_dataWrite")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_dataWrite ; |111| 
                                        ; call occurs [#_dataWrite] ; |111| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 113,column 2,is_stmt
        B $C$L13  ; |113| 
                                        ; branch occurs ; |113| 
$C$L10:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 114,column 7,is_stmt
        CMP *SP(#0) == #1, TC1 ; |114| 
        BCC $C$L11,!TC1 ; |114| 
                                        ; branchcc occurs ; |114| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 119,column 3,is_stmt
        MOV *SP(#1), T1 ; |119| 
        MOV #48, T0 ; |119| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_dataWrite")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_dataWrite ; |119| 
                                        ; call occurs [#_dataWrite] ; |119| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 121,column 5,is_stmt
        B $C$L13  ; |121| 
                                        ; branch occurs ; |121| 
$C$L11:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 124,column 9,is_stmt

        MOV *SP(#0), AR1 ; |124| 
||      MOV #4, AR2

        CMP AR1 >= AR2, TC1 ; |124| 

        BCC $C$L12,TC1 ; |124| 
||      MOV #0, AR3

                                        ; branchcc occurs ; |124| 
        MOV #1, AR3
$C$L12:    
        ADD #52, AR3, AR1 ; |124| 
        MOV AR1, *SP(#2) ; |124| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 125,column 6,is_stmt
        MOV *SP(#1), T1 ; |125| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_dataWrite")
	.dwattr $C$DW$66, DW_AT_TI_call

        CALL #_dataWrite ; |125| 
||      MOV AR1, T0

                                        ; call occurs [#_dataWrite] ; |125| 
$C$L13:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 127,column 2,is_stmt
        MOV *SP(#1), T1 ; |127| 
        MOV #166, T0 ; |127| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_cmdWrite ; |127| 
                                        ; call occurs [#_cmdWrite] ; |127| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 128,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$56, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.global	_SetSleep

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("SetSleep")
	.dwattr $C$DW$69, DW_AT_low_pc(_SetSleep)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_SetSleep")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x88)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./telecom/lcdc_panel.c",line 138,column 1,is_stmt,address _SetSleep

	.dwfde $C$DW$CIE, _SetSleep
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SetSleep                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetSleep:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |138| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 140,column 5,is_stmt
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_DisplayOff")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #_DisplayOff ; |140| 
                                        ; call occurs [#_DisplayOff] ; |140| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 141,column 2,is_stmt
        MOV *SP(#0), T1 ; |141| 
        MOV #174, T0 ; |141| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$73, DW_AT_TI_call
        CALL #_cmdWrite ; |141| 
                                        ; call occurs [#_cmdWrite] ; |141| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 142,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$69, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_CancelSleep

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("CancelSleep")
	.dwattr $C$DW$75, DW_AT_low_pc(_CancelSleep)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_CancelSleep")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./telecom/lcdc_panel.c",line 152,column 1,is_stmt,address _CancelSleep

	.dwfde $C$DW$CIE, _CancelSleep
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: CancelSleep                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CancelSleep:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |152| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 153,column 5,is_stmt
        MOV #175, T0 ; |153| 
        MOV *SP(#0), T1 ; |153| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$78, DW_AT_TI_call
        CALL #_cmdWrite ; |153| 
                                        ; call occurs [#_cmdWrite] ; |153| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 154,column 5,is_stmt
        MOV *SP(#0), T0 ; |154| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_DisplayOn")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #_DisplayOn ; |154| 
                                        ; call occurs [#_DisplayOn] ; |154| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 155,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$75, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x9b)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text"
	.global	_SetPowerMode

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("SetPowerMode")
	.dwattr $C$DW$81, DW_AT_low_pc(_SetPowerMode)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_SetPowerMode")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0xa4)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 167,column 1,is_stmt,address _SetPowerMode

	.dwfde $C$DW$CIE, _SetPowerMode
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("powerMode")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_powerMode")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg12]
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SetPowerMode                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetPowerMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("powerMode")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_powerMode")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |167| 
        MOV T0, *SP(#0) ; |167| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 168,column 2,is_stmt
        MOV #176, T0 ; |168| 
        MOV *SP(#1), T1 ; |168| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_cmdWrite ; |168| 
                                        ; call occurs [#_cmdWrite] ; |168| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 169,column 2,is_stmt
        MOV *SP(#0), T0 ; |169| 
        MOV *SP(#1), T1 ; |169| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_dataWrite")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_dataWrite ; |169| 
                                        ; call occurs [#_dataWrite] ; |169| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 170,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$81, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0xaa)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.global	_SetVerticalScrollControl

$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("SetVerticalScrollControl")
	.dwattr $C$DW$89, DW_AT_low_pc(_SetVerticalScrollControl)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_SetVerticalScrollControl")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0xb3)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 182,column 1,is_stmt,address _SetVerticalScrollControl

	.dwfde $C$DW$CIE, _SetVerticalScrollControl
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("VL")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_VL")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SetVerticalScrollControl                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetVerticalScrollControl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("VL")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_VL")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |182| 
        MOV T0, *SP(#0) ; |182| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 183,column 5,is_stmt
        MOV #162, T0 ; |183| 
        MOV *SP(#1), T1 ; |183| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_cmdWrite ; |183| 
                                        ; call occurs [#_cmdWrite] ; |183| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 184,column 2,is_stmt
        MOV *SP(#0), T0 ; |184| 
        MOV *SP(#1), T1 ; |184| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_dataWrite")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_dataWrite ; |184| 
                                        ; call occurs [#_dataWrite] ; |184| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 185,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$89, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xb9)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.global	_SetHorizontalRAMAddress

$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("SetHorizontalRAMAddress")
	.dwattr $C$DW$97, DW_AT_low_pc(_SetHorizontalRAMAddress)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_SetHorizontalRAMAddress")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$97, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 199,column 1,is_stmt,address _SetHorizontalRAMAddress

	.dwfde $C$DW$CIE, _SetHorizontalRAMAddress
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("HStart")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_HStart")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg12]
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("HEnd")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_HEnd")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg13]
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: SetHorizontalRAMAddress                                      *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetHorizontalRAMAddress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("HStart")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_HStart")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("HEnd")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_HEnd")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AR0, *SP(#2) ; |199| 
        MOV T1, *SP(#1) ; |199| 
        MOV T0, *SP(#0) ; |199| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 200,column 5,is_stmt
        MOV #117, T0 ; |200| 
        MOV *SP(#2), T1 ; |200| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$104, DW_AT_TI_call
        CALL #_cmdWrite ; |200| 
                                        ; call occurs [#_cmdWrite] ; |200| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 201,column 2,is_stmt
        MOV *SP(#0), T0 ; |201| 
        MOV *SP(#2), T1 ; |201| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_dataWrite")
	.dwattr $C$DW$105, DW_AT_TI_call
        CALL #_dataWrite ; |201| 
                                        ; call occurs [#_dataWrite] ; |201| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 202,column 2,is_stmt
        MOV *SP(#1), T0 ; |202| 
        MOV *SP(#2), T1 ; |202| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_dataWrite")
	.dwattr $C$DW$106, DW_AT_TI_call
        CALL #_dataWrite ; |202| 
                                        ; call occurs [#_dataWrite] ; |202| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 203,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$97, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text"
	.global	_SetVerticalRAMAddress

$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("SetVerticalRAMAddress")
	.dwattr $C$DW$108, DW_AT_low_pc(_SetVerticalRAMAddress)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_SetVerticalRAMAddress")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0xd5)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 217,column 1,is_stmt,address _SetVerticalRAMAddress

	.dwfde $C$DW$CIE, _SetVerticalRAMAddress
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("VStart")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_VStart")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg12]
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("VEnd")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_VEnd")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg13]
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: SetVerticalRAMAddress                                        *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetVerticalRAMAddress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("VStart")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_VStart")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("VEnd")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_VEnd")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AR0, *SP(#2) ; |217| 
        MOV T1, *SP(#1) ; |217| 
        MOV T0, *SP(#0) ; |217| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 218,column 5,is_stmt
        MOV #21, T0 ; |218| 
        MOV *SP(#2), T1 ; |218| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_cmdWrite ; |218| 
                                        ; call occurs [#_cmdWrite] ; |218| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 219,column 2,is_stmt
        MOV *SP(#0), T0 ; |219| 
        MOV *SP(#2), T1 ; |219| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_dataWrite")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #_dataWrite ; |219| 
                                        ; call occurs [#_dataWrite] ; |219| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 220,column 2,is_stmt
        MOV *SP(#1), T0 ; |220| 
        MOV *SP(#2), T1 ; |220| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_dataWrite")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #_dataWrite ; |220| 
                                        ; call occurs [#_dataWrite] ; |220| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 221,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$108, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.global	_SetRAMAddress

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("SetRAMAddress")
	.dwattr $C$DW$119, DW_AT_low_pc(_SetRAMAddress)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_SetRAMAddress")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./telecom/lcdc_panel.c",line 239,column 1,is_stmt,address _SetRAMAddress

	.dwfde $C$DW$CIE, _SetRAMAddress
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("columnStart")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_columnStart")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("columnEnd")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_columnEnd")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg13]
$C$DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg16]
$C$DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg18]
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: SetRAMAddress                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SetRAMAddress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("columnStart")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_columnStart")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("columnEnd")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_columnEnd")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AR2, *SP(#4) ; |239| 
        MOV AR1, *SP(#3) ; |239| 
        MOV AR0, *SP(#2) ; |239| 
        MOV T1, *SP(#1) ; |239| 
        MOV T0, *SP(#0) ; |239| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 240,column 6,is_stmt
        MOV #21, T0 ; |240| 
        MOV *SP(#4), T1 ; |240| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$130, DW_AT_TI_call
        CALL #_cmdWrite ; |240| 
                                        ; call occurs [#_cmdWrite] ; |240| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 241,column 6,is_stmt
        MOV *SP(#0), T0 ; |241| 
        MOV *SP(#4), T1 ; |241| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_dataWrite")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_dataWrite ; |241| 
                                        ; call occurs [#_dataWrite] ; |241| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 242,column 6,is_stmt
        MOV *SP(#1), T0 ; |242| 
        MOV *SP(#4), T1 ; |242| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_dataWrite")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #_dataWrite ; |242| 
                                        ; call occurs [#_dataWrite] ; |242| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 243,column 3,is_stmt
        MOV #117, T0 ; |243| 
        MOV *SP(#4), T1 ; |243| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_cmdWrite ; |243| 
                                        ; call occurs [#_cmdWrite] ; |243| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 244,column 6,is_stmt
        MOV *SP(#2), T0 ; |244| 
        MOV *SP(#4), T1 ; |244| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_dataWrite")
	.dwattr $C$DW$134, DW_AT_TI_call
        CALL #_dataWrite ; |244| 
                                        ; call occurs [#_dataWrite] ; |244| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 245,column 6,is_stmt
        MOV *SP(#3), T0 ; |245| 
        MOV *SP(#4), T1 ; |245| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_dataWrite")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_dataWrite ; |245| 
                                        ; call occurs [#_dataWrite] ; |245| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 246,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$119, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.global	_cmdWrite

$C$DW$137	.dwtag  DW_TAG_subprogram, DW_AT_name("cmdWrite")
	.dwattr $C$DW$137, DW_AT_low_pc(_cmdWrite)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_cmdWrite")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 258,column 1,is_stmt,address _cmdWrite

	.dwfde $C$DW$CIE, _cmdWrite
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg12]
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: cmdWrite                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_cmdWrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |258| 
        MOV T0, *SP(#0) ; |258| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 259,column 5,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0
        MOV uns(*SP(#0)), AC0 ; |259| 
        MOV *SP(#1), T0 ; |259| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_CSL_lcdcLiddWriteCsAddr")
	.dwattr $C$DW$142, DW_AT_TI_call
        CALL #_CSL_lcdcLiddWriteCsAddr ; |259| 
                                        ; call occurs [#_CSL_lcdcLiddWriteCsAddr] ; |259| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 260,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$137, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x104)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.global	_dataWrite

$C$DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("dataWrite")
	.dwattr $C$DW$144, DW_AT_low_pc(_dataWrite)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_dataWrite")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 280,column 1,is_stmt,address _dataWrite

	.dwfde $C$DW$CIE, _dataWrite
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: dataWrite                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_dataWrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |280| 
        MOV T0, *SP(#0) ; |280| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 281,column 5,is_stmt
        MOV *SP(#1), AR1 ; |281| 
        BCC $C$L14,AR1 != #0 ; |281| 
                                        ; branchcc occurs ; |281| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 282,column 3,is_stmt
        MOV T0, AR1
        MOV AR1, *port(#11800) ; |282| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 283,column 2,is_stmt
        B $C$L15  ; |283| 
                                        ; branch occurs ; |283| 
$C$L14:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 285,column 3,is_stmt
        MOV T0, AR1
        MOV AR1, *port(#11812) ; |285| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 287,column 1,is_stmt
$C$L15:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$144, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text"
	.global	_WriteCmd

$C$DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteCmd")
	.dwattr $C$DW$150, DW_AT_low_pc(_WriteCmd)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_WriteCmd")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 301,column 1,is_stmt,address _WriteCmd

	.dwfde $C$DW$CIE, _WriteCmd
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg12]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg13]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: WriteCmd                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_WriteCmd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AR0, *SP(#2) ; |301| 
        MOV T1, *SP(#1) ; |301| 
        MOV T0, *SP(#0) ; |301| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 302,column 5,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0
        MOV uns(*SP(#0)), AC0 ; |302| 
        MOV *SP(#2), T0 ; |302| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_CSL_lcdcLiddWriteCsAddr")
	.dwattr $C$DW$157, DW_AT_TI_call
        CALL #_CSL_lcdcLiddWriteCsAddr ; |302| 
                                        ; call occurs [#_CSL_lcdcLiddWriteCsAddr] ; |302| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 303,column 5,is_stmt
        MOV *SP(#1), T1 ; |303| 
        MOV *SP(#2), T0 ; |303| 
        MOV dbl(*(#_hLcdc)), XAR0
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_CSL_lcdcLiddWriteCsData")
	.dwattr $C$DW$158, DW_AT_TI_call
        CALL #_CSL_lcdcLiddWriteCsData ; |303| 
                                        ; call occurs [#_CSL_lcdcLiddWriteCsData] ; |303| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 304,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$150, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x130)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"
	.global	_WriteData

$C$DW$160	.dwtag  DW_TAG_subprogram, DW_AT_name("WriteData")
	.dwattr $C$DW$160, DW_AT_low_pc(_WriteData)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_WriteData")
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$160, DW_AT_TI_begin_line(0x13a)
	.dwattr $C$DW$160, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./telecom/lcdc_panel.c",line 318,column 1,is_stmt,address _WriteData

	.dwfde $C$DW$CIE, _WriteData
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("uByte")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_uByte")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg12]
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lByte")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_lByte")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg13]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: WriteData                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_WriteData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("uByte")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_uByte")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("lByte")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_lByte")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("DATA16")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_DATA16")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV AR0, *SP(#2) ; |318| 
        MOV T1, *SP(#1) ; |318| 
        MOV T0, *SP(#0) ; |318| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 320,column 9,is_stmt

        MOV *SP(#1), AC0 ; |320| 
||      MOV T0, AC1

        OR AC1 << #8, AC0 ; |320| 
        MOV AC0, *SP(#3) ; |320| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 321,column 9,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0

        MOV *SP(#2), T0 ; |321| 
||      MOV AC0, T1

$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_CSL_lcdcLiddWriteCsData")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #_CSL_lcdcLiddWriteCsData ; |321| 
                                        ; call occurs [#_CSL_lcdcLiddWriteCsData] ; |321| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 322,column 2,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$160, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x02)
	.dwendentry
	.dwendtag $C$DW$160

	.sect	".text"
	.global	_ReadData

$C$DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("ReadData")
	.dwattr $C$DW$170, DW_AT_low_pc(_ReadData)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_ReadData")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x14b)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 334,column 1,is_stmt,address _ReadData

	.dwfde $C$DW$CIE, _ReadData
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg17]
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: ReadData                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ReadData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |334| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 335,column 5,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0
        MOV *SP(#2), T0 ; |335| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_CSL_lcdcGetLiddCsData")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #_CSL_lcdcGetLiddCsData ; |335| 
                                        ; call occurs [#_CSL_lcdcGetLiddCsData] ; |335| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3 ; |335| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 336,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$170, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x150)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.global	_CreateChessPattern

$C$DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("CreateChessPattern")
	.dwattr $C$DW$177, DW_AT_low_pc(_CreateChessPattern)
	.dwattr $C$DW$177, DW_AT_high_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_CreateChessPattern")
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$177, DW_AT_TI_begin_line(0x15c)
	.dwattr $C$DW$177, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$177, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./telecom/lcdc_panel.c",line 353,column 1,is_stmt,address _CreateChessPattern

	.dwfde $C$DW$CIE, _CreateChessPattern
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pBuf")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg17]
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Width")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_Width")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg12]
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Height")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_Height")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg13]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg18]
;*******************************************************************************
;* FUNCTION NAME: CreateChessPattern                                           *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_CreateChessPattern:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("pBuf")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_pBuf")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("Width")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_Width")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("Height")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_Height")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("bufPattern")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_bufPattern")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV AR1, *SP(#4) ; |353| 
        MOV T1, *SP(#3) ; |353| 
        MOV T0, *SP(#2) ; |353| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 358,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "./telecom/lcdc_panel.c",line 359,column 6,is_stmt
        MOV #0, *SP(#8) ; |359| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 359,column 13,is_stmt
        MOV *SP(#4), AR1 ; |359| 
        MOV *SP(#8), AR2 ; |359| 
        SUB #31, AR1, AR1 ; |359| 
        CMPU AR2 >= AR1, TC1 ; |359| 
        BCC $C$L21,TC1 ; |359| 
                                        ; branchcc occurs ; |359| 
$C$L16:    
$C$DW$L$_CreateChessPattern$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 361,column 10,is_stmt
        MOV #0, *SP(#9) ; |361| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 361,column 17,is_stmt
        MOV #16, AR2 ; |361| 
        MOV *SP(#9), AR1 ; |361| 
        CMPU AR1 >= AR2, TC1 ; |361| 
        BCC $C$L18,TC1 ; |361| 
                                        ; branchcc occurs ; |361| 
$C$DW$L$_CreateChessPattern$2$E:
$C$L17:    
$C$DW$L$_CreateChessPattern$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 363,column 5,is_stmt
        MOV *SP(#8), T0 ; |363| 
        ADD #1, T0, AR1 ; |363| 
        MOV AR1, *SP(#8) ; |363| 
        MOV dbl(*SP(#6)), XAR3
        MOV #255, *AR3(T0) ; |363| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 361,column 26,is_stmt
        ADD #1, *SP(#9) ; |361| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 361,column 17,is_stmt
        MOV *SP(#9), AR1 ; |361| 
        CMPU AR1 < AR2, TC1 ; |361| 
        BCC $C$L17,TC1 ; |361| 
                                        ; branchcc occurs ; |361| 
$C$DW$L$_CreateChessPattern$3$E:
$C$L18:    
$C$DW$L$_CreateChessPattern$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 365,column 7,is_stmt
        MOV #0, *SP(#9) ; |365| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 365,column 14,is_stmt
        MOV *SP(#9), AR1 ; |365| 
        CMPU AR1 >= AR2, TC1 ; |365| 
        BCC $C$L20,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$DW$L$_CreateChessPattern$4$E:
$C$L19:    
$C$DW$L$_CreateChessPattern$5$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 367,column 5,is_stmt
        MOV *SP(#8), T0 ; |367| 
        ADD #1, T0, AR1 ; |367| 
        MOV AR1, *SP(#8) ; |367| 
        MOV dbl(*SP(#6)), XAR3
        MOV #224, *AR3(T0) ; |367| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 365,column 23,is_stmt
        ADD #1, *SP(#9) ; |365| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 365,column 14,is_stmt
        MOV *SP(#9), AR1 ; |365| 
        CMPU AR1 < AR2, TC1 ; |365| 
        BCC $C$L19,TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
$C$DW$L$_CreateChessPattern$5$E:
$C$L20:    
$C$DW$L$_CreateChessPattern$6$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 359,column 13,is_stmt
        MOV *SP(#4), AR1 ; |359| 
        MOV *SP(#8), AR2 ; |359| 
        SUB #31, AR1, AR1 ; |359| 
        CMPU AR2 < AR1, TC1 ; |359| 
        BCC $C$L16,TC1 ; |359| 
                                        ; branchcc occurs ; |359| 
$C$DW$L$_CreateChessPattern$6$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 370,column 1,is_stmt
$C$L21:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$190	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$190, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L16:1:1726009971")
	.dwattr $C$DW$190, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$190, DW_AT_TI_begin_line(0x167)
	.dwattr $C$DW$190, DW_AT_TI_end_line(0x171)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_CreateChessPattern$2$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_CreateChessPattern$2$E)
$C$DW$192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$192, DW_AT_low_pc($C$DW$L$_CreateChessPattern$4$B)
	.dwattr $C$DW$192, DW_AT_high_pc($C$DW$L$_CreateChessPattern$4$E)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_CreateChessPattern$6$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_CreateChessPattern$6$E)

$C$DW$194	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$194, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L17:2:1726009971")
	.dwattr $C$DW$194, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x169)
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x16c)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_CreateChessPattern$3$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_CreateChessPattern$3$E)
	.dwendtag $C$DW$194


$C$DW$196	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$196, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L19:2:1726009971")
	.dwattr $C$DW$196, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x170)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_CreateChessPattern$5$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_CreateChessPattern$5$E)
	.dwendtag $C$DW$196

	.dwendtag $C$DW$190

	.dwattr $C$DW$177, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$177, DW_AT_TI_end_line(0x172)
	.dwattr $C$DW$177, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$177

	.sect	".text"
	.global	_delay

$C$DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("delay")
	.dwattr $C$DW$198, DW_AT_low_pc(_delay)
	.dwattr $C$DW$198, DW_AT_high_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$198, DW_AT_external
	.dwattr $C$DW$198, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x17a)
	.dwattr $C$DW$198, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$198, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/lcdc_panel.c",line 380,column 1,is_stmt,address _delay

	.dwfde $C$DW$CIE, _delay
$C$DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("msCount")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_msCount")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: delay                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,CARRY,TC1,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_delay:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("msCount")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_msCount")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#0) ; |380| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 384,column 9,is_stmt
        MOV #0, AC0 ; |384| 
        MOV AC0, dbl(*SP(#4)) ; |384| 
        NOP
        NOP
        NOP
	.dwpsn	file "./telecom/lcdc_panel.c",line 384,column 16,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |384| 
        MOV uns(*SP(#0)), AC0 ; |384| 
        CMPU AC1 >= AC0, TC1 ; |384| 
        BCC $C$L25,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L22:    
$C$DW$L$_delay$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 386,column 13,is_stmt
        MOV #0, AC0 ; |386| 
        MOV AC0, dbl(*SP(#2)) ; |386| 
        NOP
        NOP
        NOP
	.dwpsn	file "./telecom/lcdc_panel.c",line 386,column 20,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |386| 
        MOV #2048, AC0 ; |386| 
        CMPU AC1 >= AC0, TC1 ; |386| 
        BCC $C$L24,TC1 ; |386| 
                                        ; branchcc occurs ; |386| 
$C$DW$L$_delay$2$E:
$C$L23:    
$C$DW$L$_delay$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 386,column 30,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |386| 
        ADD #1, AC0 ; |386| 
        MOV AC0, dbl(*SP(#2)) ; |386| 
        NOP
        NOP
	.dwpsn	file "./telecom/lcdc_panel.c",line 386,column 20,is_stmt
        MOV #2048, AC0 ; |386| 
        MOV dbl(*SP(#2)), AC1 ; |386| 
        CMPU AC1 < AC0, TC1 ; |386| 
        BCC $C$L23,TC1 ; |386| 
                                        ; branchcc occurs ; |386| 
$C$DW$L$_delay$3$E:
$C$L24:    
$C$DW$L$_delay$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 384,column 29,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |384| 
        ADD #1, AC0 ; |384| 
        MOV AC0, dbl(*SP(#4)) ; |384| 
        NOP
        NOP
        NOP
	.dwpsn	file "./telecom/lcdc_panel.c",line 384,column 16,is_stmt
        MOV dbl(*SP(#4)), AC1 ; |384| 
        MOV uns(*SP(#0)), AC0 ; |384| 
        CMPU AC1 < AC0, TC1 ; |384| 
        BCC $C$L22,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$DW$L$_delay$4$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 388,column 1,is_stmt
$C$L25:    
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$204	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$204, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L22:1:1726009971")
	.dwattr $C$DW$204, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x180)
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x183)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_delay$2$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_delay$2$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_delay$4$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_delay$4$E)

$C$DW$207	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$207, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L23:2:1726009971")
	.dwattr $C$DW$207, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x182)
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x182)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_delay$3$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_delay$3$E)
	.dwendtag $C$DW$207

	.dwendtag $C$DW$204

	.dwattr $C$DW$198, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x184)
	.dwattr $C$DW$198, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$198

	.sect	".text"
	.global	_lcdDivFun

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdDivFun")
	.dwattr $C$DW$209, DW_AT_low_pc(_lcdDivFun)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_lcdDivFun")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 400,column 1,is_stmt,address _lcdDivFun

	.dwfde $C$DW$CIE, _lcdDivFun
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Dividend")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_Dividend")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg12]
$C$DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Divisor")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_Divisor")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdDivFun                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdDivFun:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("Dividend")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_Dividend")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("Divisor")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_Divisor")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("Quoitient")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_Quoitient")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T1, *SP(#1) ; |400| 
        MOV T0, *SP(#0) ; |400| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 403,column 5,is_stmt
        MOV #0, *SP(#2) ; |403| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 405,column 12,is_stmt
        MOV *SP(#1), AR1 ; |405| 
        MOV *SP(#0), AR2 ; |405| 
        CMPU AR2 < AR1, TC1 ; |405| 
        BCC $C$L27,TC1 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$L26:    
$C$DW$L$_lcdDivFun$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 407,column 9,is_stmt
        ADD #1, *SP(#2) ; |407| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 408,column 9,is_stmt
        MOV *SP(#0), AC0 ; |408| 
        SUB uns(*SP(#1)), AC0, AC0 ; |408| 
        MOV AC0, *SP(#0) ; |408| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 405,column 12,is_stmt

        MOV *SP(#1), AR1 ; |405| 
||      MOV AC0, AR2 ; |405| 

        CMPU AR2 >= AR1, TC1 ; |405| 
        BCC $C$L26,TC1 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$DW$L$_lcdDivFun$2$E:
$C$L27:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 410,column 5,is_stmt
        MOV *SP(#2), T0 ; |410| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 411,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$216	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$216, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L26:1:1726009971")
	.dwattr $C$DW$216, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$216, DW_AT_TI_begin_line(0x195)
	.dwattr $C$DW$216, DW_AT_TI_end_line(0x199)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_lcdDivFun$2$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_lcdDivFun$2$E)
	.dwendtag $C$DW$216

	.dwattr $C$DW$209, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.global	_lcdModuloDivFun

$C$DW$218	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdModuloDivFun")
	.dwattr $C$DW$218, DW_AT_low_pc(_lcdModuloDivFun)
	.dwattr $C$DW$218, DW_AT_high_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_lcdModuloDivFun")
	.dwattr $C$DW$218, DW_AT_external
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x1a6)
	.dwattr $C$DW$218, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$218, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 425,column 1,is_stmt,address _lcdModuloDivFun

	.dwfde $C$DW$CIE, _lcdModuloDivFun
$C$DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Dividend")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_Dividend")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg12]
$C$DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Divisor")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_Divisor")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdModuloDivFun                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdModuloDivFun:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("Dividend")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_Dividend")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("Divisor")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_Divisor")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |425| 
        MOV T0, *SP(#0) ; |425| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 426,column 12,is_stmt

        MOV *SP(#1), AR1 ; |426| 
||      MOV T0, AR2 ; |426| 

        CMPU AR2 < AR1, TC1 ; |426| 
        BCC $C$L29,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
$C$L28:    
$C$DW$L$_lcdModuloDivFun$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 428,column 8,is_stmt
        MOV AR2, AC0
        SUB uns(*SP(#1)), AC0, AC0 ; |428| 
        MOV AC0, *SP(#0) ; |428| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 426,column 12,is_stmt

        MOV AC0, AR2 ; |426| 
||      MOV *SP(#1), AR1 ; |426| 

        CMPU AR2 >= AR1, TC1 ; |426| 
        BCC $C$L28,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
$C$DW$L$_lcdModuloDivFun$2$E:
$C$L29:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 430,column 5,is_stmt
        MOV AR2, T0
	.dwpsn	file "./telecom/lcdc_panel.c",line 431,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$224	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$224, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L28:1:1726009971")
	.dwattr $C$DW$224, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x1aa)
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x1ad)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_lcdModuloDivFun$2$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_lcdModuloDivFun$2$E)
	.dwendtag $C$DW$224

	.dwattr $C$DW$218, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x1af)
	.dwattr $C$DW$218, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$218

	.sect	".text"
	.global	_panelSetup

$C$DW$226	.dwtag  DW_TAG_subprogram, DW_AT_name("panelSetup")
	.dwattr $C$DW$226, DW_AT_low_pc(_panelSetup)
	.dwattr $C$DW$226, DW_AT_high_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_panelSetup")
	.dwattr $C$DW$226, DW_AT_external
	.dwattr $C$DW$226, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0x1b8)
	.dwattr $C$DW$226, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$226, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./telecom/lcdc_panel.c",line 442,column 1,is_stmt,address _panelSetup

	.dwfde $C$DW$CIE, _panelSetup
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: panelSetup                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,T1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_panelSetup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |442| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 495,column 2,is_stmt
        MOV #174, T0 ; |495| 
        MOV *SP(#0), T1 ; |495| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #_cmdWrite ; |495| 
                                        ; call occurs [#_cmdWrite] ; |495| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 497,column 3,is_stmt
        MOV #253, T0 ; |497| 
        MOV *SP(#0), T1 ; |497| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #_cmdWrite ; |497| 
                                        ; call occurs [#_cmdWrite] ; |497| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 498,column 3,is_stmt
        MOV #18, T0 ; |498| 
        MOV *SP(#0), T1 ; |498| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_dataWrite")
	.dwattr $C$DW$231, DW_AT_TI_call
        CALL #_dataWrite ; |498| 
                                        ; call occurs [#_dataWrite] ; |498| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 499,column 3,is_stmt
        MOV #253, T0 ; |499| 
        MOV *SP(#0), T1 ; |499| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$232, DW_AT_TI_call
        CALL #_cmdWrite ; |499| 
                                        ; call occurs [#_cmdWrite] ; |499| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 500,column 3,is_stmt
        MOV #177, T0 ; |500| 
        MOV *SP(#0), T1 ; |500| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_dataWrite")
	.dwattr $C$DW$233, DW_AT_TI_call
        CALL #_dataWrite ; |500| 
                                        ; call occurs [#_dataWrite] ; |500| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 501,column 3,is_stmt
        MOV #174, T0 ; |501| 
        MOV *SP(#0), T1 ; |501| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #_cmdWrite ; |501| 
                                        ; call occurs [#_cmdWrite] ; |501| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 502,column 3,is_stmt
        MOV #179, T0 ; |502| 
        MOV *SP(#0), T1 ; |502| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #_cmdWrite ; |502| 
                                        ; call occurs [#_cmdWrite] ; |502| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 503,column 3,is_stmt
        MOV #241, T0 ; |503| 
        MOV *SP(#0), T1 ; |503| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_dataWrite")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #_dataWrite ; |503| 
                                        ; call occurs [#_dataWrite] ; |503| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 504,column 3,is_stmt
        MOV #202, T0 ; |504| 
        MOV *SP(#0), T1 ; |504| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #_cmdWrite ; |504| 
                                        ; call occurs [#_cmdWrite] ; |504| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 505,column 3,is_stmt
        MOV #127, T0 ; |505| 
        MOV *SP(#0), T1 ; |505| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_dataWrite")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #_dataWrite ; |505| 
                                        ; call occurs [#_dataWrite] ; |505| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 506,column 3,is_stmt
        MOV #162, T0 ; |506| 
        MOV *SP(#0), T1 ; |506| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #_cmdWrite ; |506| 
                                        ; call occurs [#_cmdWrite] ; |506| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 507,column 3,is_stmt
        MOV *SP(#0), T1 ; |507| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_dataWrite")
	.dwattr $C$DW$240, DW_AT_TI_call

        CALL #_dataWrite ; |507| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |507| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 508,column 3,is_stmt
        MOV #161, T0 ; |508| 
        MOV *SP(#0), T1 ; |508| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #_cmdWrite ; |508| 
                                        ; call occurs [#_cmdWrite] ; |508| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 509,column 3,is_stmt
        MOV *SP(#0), T1 ; |509| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_dataWrite")
	.dwattr $C$DW$242, DW_AT_TI_call

        CALL #_dataWrite ; |509| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |509| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 510,column 3,is_stmt
        MOV #160, T0 ; |510| 
        MOV *SP(#0), T1 ; |510| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$243, DW_AT_TI_call
        CALL #_cmdWrite ; |510| 
                                        ; call occurs [#_cmdWrite] ; |510| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 511,column 3,is_stmt
        MOV #113, T0 ; |511| 
        MOV *SP(#0), T1 ; |511| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_dataWrite")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #_dataWrite ; |511| 
                                        ; call occurs [#_dataWrite] ; |511| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 512,column 3,is_stmt
        MOV #181, T0 ; |512| 
        MOV *SP(#0), T1 ; |512| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #_cmdWrite ; |512| 
                                        ; call occurs [#_cmdWrite] ; |512| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 513,column 3,is_stmt
        MOV *SP(#0), T1 ; |513| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_dataWrite")
	.dwattr $C$DW$246, DW_AT_TI_call

        CALL #_dataWrite ; |513| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |513| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 514,column 3,is_stmt
        MOV #171, T0 ; |514| 
        MOV *SP(#0), T1 ; |514| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$247, DW_AT_TI_call
        CALL #_cmdWrite ; |514| 
                                        ; call occurs [#_cmdWrite] ; |514| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 515,column 3,is_stmt
        MOV *SP(#0), T1 ; |515| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_dataWrite")
	.dwattr $C$DW$248, DW_AT_TI_call

        CALL #_dataWrite ; |515| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |515| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 516,column 3,is_stmt
        MOV #180, T0 ; |516| 
        MOV *SP(#0), T1 ; |516| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$249, DW_AT_TI_call
        CALL #_cmdWrite ; |516| 
                                        ; call occurs [#_cmdWrite] ; |516| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 517,column 3,is_stmt
        MOV #160, T0 ; |517| 
        MOV *SP(#0), T1 ; |517| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_dataWrite")
	.dwattr $C$DW$250, DW_AT_TI_call
        CALL #_dataWrite ; |517| 
                                        ; call occurs [#_dataWrite] ; |517| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 518,column 3,is_stmt
        MOV *SP(#0), T1 ; |518| 
        MOV #181, T0 ; |518| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_dataWrite")
	.dwattr $C$DW$251, DW_AT_TI_call
        CALL #_dataWrite ; |518| 
                                        ; call occurs [#_dataWrite] ; |518| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 519,column 3,is_stmt
        MOV #85, T0 ; |519| 
        MOV *SP(#0), T1 ; |519| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_dataWrite")
	.dwattr $C$DW$252, DW_AT_TI_call
        CALL #_dataWrite ; |519| 
                                        ; call occurs [#_dataWrite] ; |519| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 520,column 3,is_stmt
        MOV #193, T0 ; |520| 
        MOV *SP(#0), T1 ; |520| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$253, DW_AT_TI_call
        CALL #_cmdWrite ; |520| 
                                        ; call occurs [#_cmdWrite] ; |520| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 521,column 3,is_stmt
        MOV #200, T0 ; |521| 
        MOV *SP(#0), T1 ; |521| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_dataWrite")
	.dwattr $C$DW$254, DW_AT_TI_call
        CALL #_dataWrite ; |521| 
                                        ; call occurs [#_dataWrite] ; |521| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 522,column 3,is_stmt
        MOV #128, T0 ; |522| 
        MOV *SP(#0), T1 ; |522| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_dataWrite")
	.dwattr $C$DW$255, DW_AT_TI_call
        CALL #_dataWrite ; |522| 
                                        ; call occurs [#_dataWrite] ; |522| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 523,column 3,is_stmt
        MOV #200, T0 ; |523| 
        MOV *SP(#0), T1 ; |523| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_dataWrite")
	.dwattr $C$DW$256, DW_AT_TI_call
        CALL #_dataWrite ; |523| 
                                        ; call occurs [#_dataWrite] ; |523| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 524,column 3,is_stmt
        MOV #199, T0 ; |524| 
        MOV *SP(#0), T1 ; |524| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #_cmdWrite ; |524| 
                                        ; call occurs [#_cmdWrite] ; |524| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 525,column 3,is_stmt
        MOV *SP(#0), T1 ; |525| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_dataWrite")
	.dwattr $C$DW$258, DW_AT_TI_call

        CALL #_dataWrite ; |525| 
||      MOV #15, T0

                                        ; call occurs [#_dataWrite] ; |525| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 526,column 3,is_stmt
        MOV #184, T0 ; |526| 
        MOV *SP(#0), T1 ; |526| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #_cmdWrite ; |526| 
                                        ; call occurs [#_cmdWrite] ; |526| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 527,column 7,is_stmt
        MOV *SP(#0), T1 ; |527| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_dataWrite")
	.dwattr $C$DW$260, DW_AT_TI_call

        CALL #_dataWrite ; |527| 
||      MOV #2, T0

                                        ; call occurs [#_dataWrite] ; |527| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 528,column 7,is_stmt
        MOV *SP(#0), T1 ; |528| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_dataWrite")
	.dwattr $C$DW$261, DW_AT_TI_call

        CALL #_dataWrite ; |528| 
||      MOV #3, T0

                                        ; call occurs [#_dataWrite] ; |528| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 529,column 7,is_stmt
        MOV *SP(#0), T1 ; |529| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_dataWrite")
	.dwattr $C$DW$262, DW_AT_TI_call

        CALL #_dataWrite ; |529| 
||      MOV #4, T0

                                        ; call occurs [#_dataWrite] ; |529| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 530,column 7,is_stmt
        MOV *SP(#0), T1 ; |530| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_dataWrite")
	.dwattr $C$DW$263, DW_AT_TI_call

        CALL #_dataWrite ; |530| 
||      MOV #5, T0

                                        ; call occurs [#_dataWrite] ; |530| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 531,column 7,is_stmt
        MOV *SP(#0), T1 ; |531| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_dataWrite")
	.dwattr $C$DW$264, DW_AT_TI_call

        CALL #_dataWrite ; |531| 
||      MOV #6, T0

                                        ; call occurs [#_dataWrite] ; |531| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 532,column 7,is_stmt
        MOV *SP(#0), T1 ; |532| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_dataWrite")
	.dwattr $C$DW$265, DW_AT_TI_call

        CALL #_dataWrite ; |532| 
||      MOV #7, T0

                                        ; call occurs [#_dataWrite] ; |532| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 533,column 7,is_stmt
        MOV *SP(#0), T1 ; |533| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_dataWrite")
	.dwattr $C$DW$266, DW_AT_TI_call

        CALL #_dataWrite ; |533| 
||      MOV #8, T0

                                        ; call occurs [#_dataWrite] ; |533| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 534,column 7,is_stmt
        MOV *SP(#0), T1 ; |534| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_dataWrite")
	.dwattr $C$DW$267, DW_AT_TI_call

        CALL #_dataWrite ; |534| 
||      MOV #9, T0

                                        ; call occurs [#_dataWrite] ; |534| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 535,column 7,is_stmt
        MOV *SP(#0), T1 ; |535| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_dataWrite")
	.dwattr $C$DW$268, DW_AT_TI_call

        CALL #_dataWrite ; |535| 
||      MOV #10, T0

                                        ; call occurs [#_dataWrite] ; |535| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 536,column 7,is_stmt
        MOV *SP(#0), T1 ; |536| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_dataWrite")
	.dwattr $C$DW$269, DW_AT_TI_call

        CALL #_dataWrite ; |536| 
||      MOV #11, T0

                                        ; call occurs [#_dataWrite] ; |536| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 537,column 7,is_stmt
        MOV *SP(#0), T1 ; |537| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_dataWrite")
	.dwattr $C$DW$270, DW_AT_TI_call

        CALL #_dataWrite ; |537| 
||      MOV #12, T0

                                        ; call occurs [#_dataWrite] ; |537| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 538,column 7,is_stmt
        MOV *SP(#0), T1 ; |538| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_dataWrite")
	.dwattr $C$DW$271, DW_AT_TI_call

        CALL #_dataWrite ; |538| 
||      MOV #13, T0

                                        ; call occurs [#_dataWrite] ; |538| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 539,column 7,is_stmt
        MOV *SP(#0), T1 ; |539| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_dataWrite")
	.dwattr $C$DW$272, DW_AT_TI_call

        CALL #_dataWrite ; |539| 
||      MOV #14, T0

                                        ; call occurs [#_dataWrite] ; |539| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 540,column 7,is_stmt
        MOV *SP(#0), T1 ; |540| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_dataWrite")
	.dwattr $C$DW$273, DW_AT_TI_call

        CALL #_dataWrite ; |540| 
||      MOV #15, T0

                                        ; call occurs [#_dataWrite] ; |540| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 541,column 7,is_stmt
        MOV #16, T0 ; |541| 
        MOV *SP(#0), T1 ; |541| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_dataWrite")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #_dataWrite ; |541| 
                                        ; call occurs [#_dataWrite] ; |541| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 542,column 7,is_stmt
        MOV #17, T0 ; |542| 
        MOV *SP(#0), T1 ; |542| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_dataWrite")
	.dwattr $C$DW$275, DW_AT_TI_call
        CALL #_dataWrite ; |542| 
                                        ; call occurs [#_dataWrite] ; |542| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 543,column 7,is_stmt
        MOV #18, T0 ; |543| 
        MOV *SP(#0), T1 ; |543| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_dataWrite")
	.dwattr $C$DW$276, DW_AT_TI_call
        CALL #_dataWrite ; |543| 
                                        ; call occurs [#_dataWrite] ; |543| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 544,column 7,is_stmt
        MOV #19, T0 ; |544| 
        MOV *SP(#0), T1 ; |544| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_dataWrite")
	.dwattr $C$DW$277, DW_AT_TI_call
        CALL #_dataWrite ; |544| 
                                        ; call occurs [#_dataWrite] ; |544| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 545,column 7,is_stmt
        MOV #21, T0 ; |545| 
        MOV *SP(#0), T1 ; |545| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("_dataWrite")
	.dwattr $C$DW$278, DW_AT_TI_call
        CALL #_dataWrite ; |545| 
                                        ; call occurs [#_dataWrite] ; |545| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 546,column 7,is_stmt
        MOV #23, T0 ; |546| 
        MOV *SP(#0), T1 ; |546| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("_dataWrite")
	.dwattr $C$DW$279, DW_AT_TI_call
        CALL #_dataWrite ; |546| 
                                        ; call occurs [#_dataWrite] ; |546| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 547,column 7,is_stmt
        MOV #25, T0 ; |547| 
        MOV *SP(#0), T1 ; |547| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_dataWrite")
	.dwattr $C$DW$280, DW_AT_TI_call
        CALL #_dataWrite ; |547| 
                                        ; call occurs [#_dataWrite] ; |547| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 548,column 7,is_stmt
        MOV #27, T0 ; |548| 
        MOV *SP(#0), T1 ; |548| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_dataWrite")
	.dwattr $C$DW$281, DW_AT_TI_call
        CALL #_dataWrite ; |548| 
                                        ; call occurs [#_dataWrite] ; |548| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 549,column 7,is_stmt
        MOV #29, T0 ; |549| 
        MOV *SP(#0), T1 ; |549| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("_dataWrite")
	.dwattr $C$DW$282, DW_AT_TI_call
        CALL #_dataWrite ; |549| 
                                        ; call occurs [#_dataWrite] ; |549| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 550,column 7,is_stmt
        MOV #31, T0 ; |550| 
        MOV *SP(#0), T1 ; |550| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_dataWrite")
	.dwattr $C$DW$283, DW_AT_TI_call
        CALL #_dataWrite ; |550| 
                                        ; call occurs [#_dataWrite] ; |550| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 551,column 7,is_stmt
        MOV *SP(#0), T1 ; |551| 
        MOV #33, T0 ; |551| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("_dataWrite")
	.dwattr $C$DW$284, DW_AT_TI_call
        CALL #_dataWrite ; |551| 
                                        ; call occurs [#_dataWrite] ; |551| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 552,column 7,is_stmt
        MOV #35, T0 ; |552| 
        MOV *SP(#0), T1 ; |552| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("_dataWrite")
	.dwattr $C$DW$285, DW_AT_TI_call
        CALL #_dataWrite ; |552| 
                                        ; call occurs [#_dataWrite] ; |552| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 553,column 7,is_stmt
        MOV #37, T0 ; |553| 
        MOV *SP(#0), T1 ; |553| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("_dataWrite")
	.dwattr $C$DW$286, DW_AT_TI_call
        CALL #_dataWrite ; |553| 
                                        ; call occurs [#_dataWrite] ; |553| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 554,column 7,is_stmt
        MOV #39, T0 ; |554| 
        MOV *SP(#0), T1 ; |554| 
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("_dataWrite")
	.dwattr $C$DW$287, DW_AT_TI_call
        CALL #_dataWrite ; |554| 
                                        ; call occurs [#_dataWrite] ; |554| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 555,column 7,is_stmt
        MOV #42, T0 ; |555| 
        MOV *SP(#0), T1 ; |555| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("_dataWrite")
	.dwattr $C$DW$288, DW_AT_TI_call
        CALL #_dataWrite ; |555| 
                                        ; call occurs [#_dataWrite] ; |555| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 556,column 7,is_stmt
        MOV #45, T0 ; |556| 
        MOV *SP(#0), T1 ; |556| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("_dataWrite")
	.dwattr $C$DW$289, DW_AT_TI_call
        CALL #_dataWrite ; |556| 
                                        ; call occurs [#_dataWrite] ; |556| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 557,column 7,is_stmt
        MOV #48, T0 ; |557| 
        MOV *SP(#0), T1 ; |557| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("_dataWrite")
	.dwattr $C$DW$290, DW_AT_TI_call
        CALL #_dataWrite ; |557| 
                                        ; call occurs [#_dataWrite] ; |557| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 558,column 7,is_stmt
        MOV #51, T0 ; |558| 
        MOV *SP(#0), T1 ; |558| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("_dataWrite")
	.dwattr $C$DW$291, DW_AT_TI_call
        CALL #_dataWrite ; |558| 
                                        ; call occurs [#_dataWrite] ; |558| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 559,column 7,is_stmt
        MOV #54, T0 ; |559| 
        MOV *SP(#0), T1 ; |559| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("_dataWrite")
	.dwattr $C$DW$292, DW_AT_TI_call
        CALL #_dataWrite ; |559| 
                                        ; call occurs [#_dataWrite] ; |559| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 560,column 7,is_stmt
        MOV #57, T0 ; |560| 
        MOV *SP(#0), T1 ; |560| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("_dataWrite")
	.dwattr $C$DW$293, DW_AT_TI_call
        CALL #_dataWrite ; |560| 
                                        ; call occurs [#_dataWrite] ; |560| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 561,column 7,is_stmt
        MOV #60, T0 ; |561| 
        MOV *SP(#0), T1 ; |561| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("_dataWrite")
	.dwattr $C$DW$294, DW_AT_TI_call
        CALL #_dataWrite ; |561| 
                                        ; call occurs [#_dataWrite] ; |561| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 562,column 7,is_stmt
        MOV *SP(#0), T1 ; |562| 
        MOV #63, T0 ; |562| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("_dataWrite")
	.dwattr $C$DW$295, DW_AT_TI_call
        CALL #_dataWrite ; |562| 
                                        ; call occurs [#_dataWrite] ; |562| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 563,column 7,is_stmt
        MOV #66, T0 ; |563| 
        MOV *SP(#0), T1 ; |563| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("_dataWrite")
	.dwattr $C$DW$296, DW_AT_TI_call
        CALL #_dataWrite ; |563| 
                                        ; call occurs [#_dataWrite] ; |563| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 564,column 7,is_stmt
        MOV #69, T0 ; |564| 
        MOV *SP(#0), T1 ; |564| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("_dataWrite")
	.dwattr $C$DW$297, DW_AT_TI_call
        CALL #_dataWrite ; |564| 
                                        ; call occurs [#_dataWrite] ; |564| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 565,column 7,is_stmt
        MOV #72, T0 ; |565| 
        MOV *SP(#0), T1 ; |565| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_dataWrite")
	.dwattr $C$DW$298, DW_AT_TI_call
        CALL #_dataWrite ; |565| 
                                        ; call occurs [#_dataWrite] ; |565| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 566,column 7,is_stmt
        MOV #76, T0 ; |566| 
        MOV *SP(#0), T1 ; |566| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_dataWrite")
	.dwattr $C$DW$299, DW_AT_TI_call
        CALL #_dataWrite ; |566| 
                                        ; call occurs [#_dataWrite] ; |566| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 567,column 7,is_stmt
        MOV #80, T0 ; |567| 
        MOV *SP(#0), T1 ; |567| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_dataWrite")
	.dwattr $C$DW$300, DW_AT_TI_call
        CALL #_dataWrite ; |567| 
                                        ; call occurs [#_dataWrite] ; |567| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 568,column 7,is_stmt
        MOV #84, T0 ; |568| 
        MOV *SP(#0), T1 ; |568| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_dataWrite")
	.dwattr $C$DW$301, DW_AT_TI_call
        CALL #_dataWrite ; |568| 
                                        ; call occurs [#_dataWrite] ; |568| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 569,column 7,is_stmt
        MOV #88, T0 ; |569| 
        MOV *SP(#0), T1 ; |569| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_dataWrite")
	.dwattr $C$DW$302, DW_AT_TI_call
        CALL #_dataWrite ; |569| 
                                        ; call occurs [#_dataWrite] ; |569| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 570,column 7,is_stmt
        MOV #92, T0 ; |570| 
        MOV *SP(#0), T1 ; |570| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("_dataWrite")
	.dwattr $C$DW$303, DW_AT_TI_call
        CALL #_dataWrite ; |570| 
                                        ; call occurs [#_dataWrite] ; |570| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 571,column 7,is_stmt
        MOV #96, T0 ; |571| 
        MOV *SP(#0), T1 ; |571| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("_dataWrite")
	.dwattr $C$DW$304, DW_AT_TI_call
        CALL #_dataWrite ; |571| 
                                        ; call occurs [#_dataWrite] ; |571| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 572,column 7,is_stmt
        MOV #100, T0 ; |572| 
        MOV *SP(#0), T1 ; |572| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("_dataWrite")
	.dwattr $C$DW$305, DW_AT_TI_call
        CALL #_dataWrite ; |572| 
                                        ; call occurs [#_dataWrite] ; |572| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 573,column 7,is_stmt
        MOV *SP(#0), T1 ; |573| 
        MOV #104, T0 ; |573| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("_dataWrite")
	.dwattr $C$DW$306, DW_AT_TI_call
        CALL #_dataWrite ; |573| 
                                        ; call occurs [#_dataWrite] ; |573| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 574,column 7,is_stmt
        MOV #108, T0 ; |574| 
        MOV *SP(#0), T1 ; |574| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("_dataWrite")
	.dwattr $C$DW$307, DW_AT_TI_call
        CALL #_dataWrite ; |574| 
                                        ; call occurs [#_dataWrite] ; |574| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 575,column 7,is_stmt
        MOV #112, T0 ; |575| 
        MOV *SP(#0), T1 ; |575| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("_dataWrite")
	.dwattr $C$DW$308, DW_AT_TI_call
        CALL #_dataWrite ; |575| 
                                        ; call occurs [#_dataWrite] ; |575| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 576,column 7,is_stmt
        MOV #116, T0 ; |576| 
        MOV *SP(#0), T1 ; |576| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("_dataWrite")
	.dwattr $C$DW$309, DW_AT_TI_call
        CALL #_dataWrite ; |576| 
                                        ; call occurs [#_dataWrite] ; |576| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 577,column 7,is_stmt
        MOV #120, T0 ; |577| 
        MOV *SP(#0), T1 ; |577| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_dataWrite")
	.dwattr $C$DW$310, DW_AT_TI_call
        CALL #_dataWrite ; |577| 
                                        ; call occurs [#_dataWrite] ; |577| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 578,column 7,is_stmt
        MOV #125, T0 ; |578| 
        MOV *SP(#0), T1 ; |578| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_dataWrite")
	.dwattr $C$DW$311, DW_AT_TI_call
        CALL #_dataWrite ; |578| 
                                        ; call occurs [#_dataWrite] ; |578| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 579,column 7,is_stmt
        MOV #130, T0 ; |579| 
        MOV *SP(#0), T1 ; |579| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_dataWrite")
	.dwattr $C$DW$312, DW_AT_TI_call
        CALL #_dataWrite ; |579| 
                                        ; call occurs [#_dataWrite] ; |579| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 580,column 7,is_stmt
        MOV #135, T0 ; |580| 
        MOV *SP(#0), T1 ; |580| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_dataWrite")
	.dwattr $C$DW$313, DW_AT_TI_call
        CALL #_dataWrite ; |580| 
                                        ; call occurs [#_dataWrite] ; |580| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 581,column 7,is_stmt
        MOV #140, T0 ; |581| 
        MOV *SP(#0), T1 ; |581| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("_dataWrite")
	.dwattr $C$DW$314, DW_AT_TI_call
        CALL #_dataWrite ; |581| 
                                        ; call occurs [#_dataWrite] ; |581| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 582,column 7,is_stmt
        MOV #145, T0 ; |582| 
        MOV *SP(#0), T1 ; |582| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("_dataWrite")
	.dwattr $C$DW$315, DW_AT_TI_call
        CALL #_dataWrite ; |582| 
                                        ; call occurs [#_dataWrite] ; |582| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 583,column 7,is_stmt
        MOV #150, T0 ; |583| 
        MOV *SP(#0), T1 ; |583| 
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("_dataWrite")
	.dwattr $C$DW$316, DW_AT_TI_call
        CALL #_dataWrite ; |583| 
                                        ; call occurs [#_dataWrite] ; |583| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 584,column 7,is_stmt
        MOV *SP(#0), T1 ; |584| 
        MOV #155, T0 ; |584| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("_dataWrite")
	.dwattr $C$DW$317, DW_AT_TI_call
        CALL #_dataWrite ; |584| 
                                        ; call occurs [#_dataWrite] ; |584| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 585,column 7,is_stmt
        MOV #160, T0 ; |585| 
        MOV *SP(#0), T1 ; |585| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("_dataWrite")
	.dwattr $C$DW$318, DW_AT_TI_call
        CALL #_dataWrite ; |585| 
                                        ; call occurs [#_dataWrite] ; |585| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 586,column 7,is_stmt
        MOV #165, T0 ; |586| 
        MOV *SP(#0), T1 ; |586| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("_dataWrite")
	.dwattr $C$DW$319, DW_AT_TI_call
        CALL #_dataWrite ; |586| 
                                        ; call occurs [#_dataWrite] ; |586| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 587,column 7,is_stmt
        MOV #170, T0 ; |587| 
        MOV *SP(#0), T1 ; |587| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("_dataWrite")
	.dwattr $C$DW$320, DW_AT_TI_call
        CALL #_dataWrite ; |587| 
                                        ; call occurs [#_dataWrite] ; |587| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 588,column 7,is_stmt
        MOV #175, T0 ; |588| 
        MOV *SP(#0), T1 ; |588| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_dataWrite")
	.dwattr $C$DW$321, DW_AT_TI_call
        CALL #_dataWrite ; |588| 
                                        ; call occurs [#_dataWrite] ; |588| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 589,column 7,is_stmt
        MOV #180, T0 ; |589| 
        MOV *SP(#0), T1 ; |589| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_dataWrite")
	.dwattr $C$DW$322, DW_AT_TI_call
        CALL #_dataWrite ; |589| 
                                        ; call occurs [#_dataWrite] ; |589| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 592,column 3,is_stmt
        MOV #177, T0 ; |592| 
        MOV *SP(#0), T1 ; |592| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$323, DW_AT_TI_call
        CALL #_cmdWrite ; |592| 
                                        ; call occurs [#_cmdWrite] ; |592| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 593,column 3,is_stmt
        MOV #50, T0 ; |593| 
        MOV *SP(#0), T1 ; |593| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_dataWrite")
	.dwattr $C$DW$324, DW_AT_TI_call
        CALL #_dataWrite ; |593| 
                                        ; call occurs [#_dataWrite] ; |593| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 594,column 3,is_stmt
        MOV #178, T0 ; |594| 
        MOV *SP(#0), T1 ; |594| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$325, DW_AT_TI_call
        CALL #_cmdWrite ; |594| 
                                        ; call occurs [#_cmdWrite] ; |594| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 595,column 3,is_stmt
        MOV #164, T0 ; |595| 
        MOV *SP(#0), T1 ; |595| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("_dataWrite")
	.dwattr $C$DW$326, DW_AT_TI_call
        CALL #_dataWrite ; |595| 
                                        ; call occurs [#_dataWrite] ; |595| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 596,column 3,is_stmt
        MOV *SP(#0), T1 ; |596| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("_dataWrite")
	.dwattr $C$DW$327, DW_AT_TI_call

        CALL #_dataWrite ; |596| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |596| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 597,column 3,is_stmt
        MOV *SP(#0), T1 ; |597| 
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_dataWrite")
	.dwattr $C$DW$328, DW_AT_TI_call
        CALL #_dataWrite ; |597| 
                                        ; call occurs [#_dataWrite] ; |597| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 598,column 3,is_stmt
        MOV #187, T0 ; |598| 
        MOV *SP(#0), T1 ; |598| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$329, DW_AT_TI_call
        CALL #_cmdWrite ; |598| 
                                        ; call occurs [#_cmdWrite] ; |598| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 599,column 3,is_stmt
        MOV #23, T0 ; |599| 
        MOV *SP(#0), T1 ; |599| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("_dataWrite")
	.dwattr $C$DW$330, DW_AT_TI_call
        CALL #_dataWrite ; |599| 
                                        ; call occurs [#_dataWrite] ; |599| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 600,column 3,is_stmt
        MOV #182, T0 ; |600| 
        MOV *SP(#0), T1 ; |600| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$331, DW_AT_TI_call
        CALL #_cmdWrite ; |600| 
                                        ; call occurs [#_cmdWrite] ; |600| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 601,column 3,is_stmt
        MOV *SP(#0), T1 ; |601| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("_dataWrite")
	.dwattr $C$DW$332, DW_AT_TI_call

        CALL #_dataWrite ; |601| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |601| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 602,column 3,is_stmt
        MOV #190, T0 ; |602| 
        MOV *SP(#0), T1 ; |602| 
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$333, DW_AT_TI_call
        CALL #_cmdWrite ; |602| 
                                        ; call occurs [#_cmdWrite] ; |602| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 603,column 3,is_stmt
        MOV *SP(#0), T1 ; |603| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("_dataWrite")
	.dwattr $C$DW$334, DW_AT_TI_call

        CALL #_dataWrite ; |603| 
||      MOV #5, T0

                                        ; call occurs [#_dataWrite] ; |603| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 604,column 3,is_stmt
        MOV #166, T0 ; |604| 
        MOV *SP(#0), T1 ; |604| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$335, DW_AT_TI_call
        CALL #_cmdWrite ; |604| 
                                        ; call occurs [#_cmdWrite] ; |604| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 607,column 3,is_stmt
        MOV #175, T0 ; |607| 
        MOV *SP(#0), T1 ; |607| 
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$336, DW_AT_TI_call
        CALL #_cmdWrite ; |607| 
                                        ; call occurs [#_cmdWrite] ; |607| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 609,column 3,is_stmt
        MOV *SP(#0), T0 ; |609| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("_lcdClearPanel")
	.dwattr $C$DW$337, DW_AT_TI_call
        CALL #_lcdClearPanel ; |609| 
                                        ; call occurs [#_lcdClearPanel] ; |609| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 611,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$226, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$226, DW_AT_TI_end_line(0x263)
	.dwattr $C$DW$226, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$226

	.sect	".text"
	.global	_lcdPanelBlank

$C$DW$339	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdPanelBlank")
	.dwattr $C$DW$339, DW_AT_low_pc(_lcdPanelBlank)
	.dwattr $C$DW$339, DW_AT_high_pc(0x00)
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_lcdPanelBlank")
	.dwattr $C$DW$339, DW_AT_external
	.dwattr $C$DW$339, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$339, DW_AT_TI_begin_line(0x26d)
	.dwattr $C$DW$339, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$339, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 624,column 1,is_stmt,address _lcdPanelBlank

	.dwfde $C$DW$CIE, _lcdPanelBlank
$C$DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg12]
$C$DW$341	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdPanelBlank                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,AR4,SP,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdPanelBlank:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$342	.dwtag  DW_TAG_variable, DW_AT_name("color")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$343	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |624| 
        MOV T0, *SP(#0) ; |624| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 625,column 2,is_stmt
        MOV #131, AR1 ; |625| 

        MOV #131, AR0 ; |625| 
||      MOV #0, AR2

        MOV *SP(#0), AR3 ; |625| 
||      MOV #0, T0

        MOV *SP(#1), AR4 ; |625| 
||      MOV #0, T1

$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("_drawRectangle")
	.dwattr $C$DW$344, DW_AT_TI_call
        CALL #_drawRectangle ; |625| 
                                        ; call occurs [#_drawRectangle] ; |625| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 626,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$339, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$339, DW_AT_TI_end_line(0x272)
	.dwattr $C$DW$339, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$339

	.sect	".text"
	.global	_lcdClearPanel

$C$DW$346	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdClearPanel")
	.dwattr $C$DW$346, DW_AT_low_pc(_lcdClearPanel)
	.dwattr $C$DW$346, DW_AT_high_pc(0x00)
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_lcdClearPanel")
	.dwattr $C$DW$346, DW_AT_external
	.dwattr $C$DW$346, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$346, DW_AT_TI_begin_line(0x27a)
	.dwattr $C$DW$346, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$346, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 635,column 1,is_stmt,address _lcdClearPanel

	.dwfde $C$DW$CIE, _lcdClearPanel
$C$DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: lcdClearPanel                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdClearPanel:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$349	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$350	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#0) ; |635| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 647,column 5,is_stmt
        MOV #21, T0 ; |647| 
        MOV *SP(#0), T1 ; |647| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$351, DW_AT_TI_call
        CALL #_cmdWrite ; |647| 
                                        ; call occurs [#_cmdWrite] ; |647| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 648,column 5,is_stmt
        MOV *SP(#0), T1 ; |648| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("_dataWrite")
	.dwattr $C$DW$352, DW_AT_TI_call

        CALL #_dataWrite ; |648| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |648| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 649,column 5,is_stmt
        MOV #127, T0 ; |649| 
        MOV *SP(#0), T1 ; |649| 
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("_dataWrite")
	.dwattr $C$DW$353, DW_AT_TI_call
        CALL #_dataWrite ; |649| 
                                        ; call occurs [#_dataWrite] ; |649| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 650,column 2,is_stmt
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("_wait")
	.dwattr $C$DW$354, DW_AT_TI_call

        CALL #_wait ; |650| 
||      MOV #10, AC0 ; |650| 

                                        ; call occurs [#_wait] ; |650| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 652,column 5,is_stmt
        MOV #117, T0 ; |652| 
        MOV *SP(#0), T1 ; |652| 
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$355, DW_AT_TI_call
        CALL #_cmdWrite ; |652| 
                                        ; call occurs [#_cmdWrite] ; |652| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 653,column 2,is_stmt
        MOV *SP(#0), T1 ; |653| 
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("_dataWrite")
	.dwattr $C$DW$356, DW_AT_TI_call

        CALL #_dataWrite ; |653| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |653| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 654,column 5,is_stmt
        MOV #127, T0 ; |654| 
        MOV *SP(#0), T1 ; |654| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("_dataWrite")
	.dwattr $C$DW$357, DW_AT_TI_call
        CALL #_dataWrite ; |654| 
                                        ; call occurs [#_dataWrite] ; |654| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 655,column 5,is_stmt
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_wait")
	.dwattr $C$DW$358, DW_AT_TI_call

        CALL #_wait ; |655| 
||      MOV #10, AC0 ; |655| 

                                        ; call occurs [#_wait] ; |655| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 657,column 5,is_stmt
        MOV #92, T0 ; |657| 
        MOV *SP(#0), T1 ; |657| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$359, DW_AT_TI_call
        CALL #_cmdWrite ; |657| 
                                        ; call occurs [#_cmdWrite] ; |657| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 658,column 7,is_stmt
        MOV #0, *SP(#1) ; |658| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 658,column 11,is_stmt
        MOV #128, AR2 ; |658| 
        MOV *SP(#1), AR1 ; |658| 
        CMP AR1 >= AR2, TC1 ; |658| 
        BCC $C$L33,TC1 ; |658| 
                                        ; branchcc occurs ; |658| 
$C$L30:    
$C$DW$L$_lcdClearPanel$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 660,column 8,is_stmt
        MOV #0, *SP(#2) ; |660| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 660,column 12,is_stmt
        MOV *SP(#2), AR1 ; |660| 
        CMP AR1 >= AR2, TC1 ; |660| 
        BCC $C$L32,TC1 ; |660| 
                                        ; branchcc occurs ; |660| 
$C$DW$L$_lcdClearPanel$2$E:
$C$L31:    
$C$DW$L$_lcdClearPanel$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 662,column 5,is_stmt
        MOV *SP(#0), T1 ; |662| 
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("_dataWrite")
	.dwattr $C$DW$360, DW_AT_TI_call

        CALL #_dataWrite ; |662| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |662| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 663,column 5,is_stmt
        MOV *SP(#0), T1 ; |663| 
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("_dataWrite")
	.dwattr $C$DW$361, DW_AT_TI_call
        CALL #_dataWrite ; |663| 
                                        ; call occurs [#_dataWrite] ; |663| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 664,column 5,is_stmt
        MOV *SP(#0), T1 ; |664| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("_dataWrite")
	.dwattr $C$DW$362, DW_AT_TI_call
        CALL #_dataWrite ; |664| 
                                        ; call occurs [#_dataWrite] ; |664| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 660,column 18,is_stmt
        ADD #1, *SP(#2) ; |660| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 660,column 12,is_stmt
        MOV *SP(#2), AR1 ; |660| 
        CMP AR1 < AR2, TC1 ; |660| 
        BCC $C$L31,TC1 ; |660| 
                                        ; branchcc occurs ; |660| 
$C$DW$L$_lcdClearPanel$3$E:
$C$L32:    
$C$DW$L$_lcdClearPanel$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 658,column 17,is_stmt
        ADD #1, *SP(#1) ; |658| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 658,column 11,is_stmt
        MOV *SP(#1), AR1 ; |658| 
        CMP AR1 < AR2, TC1 ; |658| 
        BCC $C$L30,TC1 ; |658| 
                                        ; branchcc occurs ; |658| 
$C$DW$L$_lcdClearPanel$4$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 668,column 1,is_stmt
$C$L33:    
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$364	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$364, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L30:1:1726009971")
	.dwattr $C$DW$364, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$364, DW_AT_TI_begin_line(0x292)
	.dwattr $C$DW$364, DW_AT_TI_end_line(0x29a)
$C$DW$365	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$365, DW_AT_low_pc($C$DW$L$_lcdClearPanel$2$B)
	.dwattr $C$DW$365, DW_AT_high_pc($C$DW$L$_lcdClearPanel$2$E)
$C$DW$366	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$366, DW_AT_low_pc($C$DW$L$_lcdClearPanel$4$B)
	.dwattr $C$DW$366, DW_AT_high_pc($C$DW$L$_lcdClearPanel$4$E)

$C$DW$367	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$367, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L31:2:1726009971")
	.dwattr $C$DW$367, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$367, DW_AT_TI_begin_line(0x294)
	.dwattr $C$DW$367, DW_AT_TI_end_line(0x299)
$C$DW$368	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$368, DW_AT_low_pc($C$DW$L$_lcdClearPanel$3$B)
	.dwattr $C$DW$368, DW_AT_high_pc($C$DW$L$_lcdClearPanel$3$E)
	.dwendtag $C$DW$367

	.dwendtag $C$DW$364

	.dwattr $C$DW$346, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$346, DW_AT_TI_end_line(0x29c)
	.dwattr $C$DW$346, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$346

	.sect	".text"
	.global	_drawLine

$C$DW$369	.dwtag  DW_TAG_subprogram, DW_AT_name("drawLine")
	.dwattr $C$DW$369, DW_AT_low_pc(_drawLine)
	.dwattr $C$DW$369, DW_AT_high_pc(0x00)
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_drawLine")
	.dwattr $C$DW$369, DW_AT_external
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$369, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$369, DW_AT_TI_begin_line(0x2aa)
	.dwattr $C$DW$369, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$369, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/lcdc_panel.c",line 689,column 1,is_stmt,address _drawLine

	.dwfde $C$DW$CIE, _drawLine
$C$DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg12]
$C$DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_reg13]
$C$DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colEnd")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_reg16]
$C$DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg18]
$C$DW$374	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg20]
$C$DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg22]
;*******************************************************************************
;* FUNCTION NAME: drawLine                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_drawLine:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$376	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$377	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$378	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$379	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$380	.dwtag  DW_TAG_variable, DW_AT_name("color")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$381	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$382	.dwtag  DW_TAG_variable, DW_AT_name("tempLSB")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_tempLSB")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$383	.dwtag  DW_TAG_variable, DW_AT_name("tempMSB")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_tempMSB")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV AR3, *SP(#5) ; |689| 
        MOV AR2, *SP(#4) ; |689| 
        MOV AR1, *SP(#3) ; |689| 
        MOV AR0, *SP(#2) ; |689| 
        MOV T1, *SP(#1) ; |689| 
        MOV T0, *SP(#0) ; |689| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 693,column 5,is_stmt

        MOV T0, AR1 ; |693| 
||      MOV #131, AR2 ; |693| 

        CMPU AR1 <= AR2, TC1 ; |693| 
        BCC $C$L34,TC1 ; |693| 
                                        ; branchcc occurs ; |693| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 694,column 9,is_stmt
        MOV #-1, T0
        B $C$L40  ; |694| 
                                        ; branch occurs ; |694| 
$C$L34:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 695,column 5,is_stmt
        MOV *SP(#1), AR1 ; |695| 
        CMPU AR1 <= AR2, TC1 ; |695| 
        BCC $C$L35,TC1 ; |695| 
                                        ; branchcc occurs ; |695| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 696,column 9,is_stmt
        MOV #-1, T0
        B $C$L40  ; |696| 
                                        ; branch occurs ; |696| 
$C$L35:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 697,column 5,is_stmt
        MOV *SP(#2), AR1 ; |697| 
        CMPU AR1 <= AR2, TC1 ; |697| 
        BCC $C$L36,TC1 ; |697| 
                                        ; branchcc occurs ; |697| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 698,column 9,is_stmt
        MOV #-1, T0
        B $C$L40  ; |698| 
                                        ; branch occurs ; |698| 
$C$L36:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 699,column 5,is_stmt
        MOV *SP(#3), AR1 ; |699| 
        CMPU AR1 <= AR2, TC1 ; |699| 
        BCC $C$L37,TC1 ; |699| 
                                        ; branchcc occurs ; |699| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 700,column 9,is_stmt
        MOV #-1, T0
        B $C$L40  ; |700| 
                                        ; branch occurs ; |700| 
$C$L37:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 701,column 5,is_stmt

        MOV *SP(#2), AR2 ; |701| 
||      MOV T0, AR1

        CMPU AR2 < AR1, TC1 ; |701| 
        BCC $C$L38,TC1 ; |701| 
                                        ; branchcc occurs ; |701| 
        MOV *SP(#1), AR1 ; |701| 
        MOV *SP(#3), AR2 ; |701| 
        CMPU AR2 >= AR1, TC1 ; |701| 
        BCC $C$L39,TC1 ; |701| 
                                        ; branchcc occurs ; |701| 
$C$L38:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 702,column 9,is_stmt
        MOV #-1, T0
        B $C$L40  ; |702| 
                                        ; branch occurs ; |702| 
$C$L39:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 704,column 5,is_stmt
        MOV *SP(#5), T1 ; |704| 
        MOV #131, T0 ; |704| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$384, DW_AT_TI_call
        CALL #_cmdWrite ; |704| 
                                        ; call occurs [#_cmdWrite] ; |704| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 705,column 5,is_stmt
        MOV *SP(#0), T0 ; |705| 
        MOV *SP(#5), T1 ; |705| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("_dataWrite")
	.dwattr $C$DW$385, DW_AT_TI_call
        CALL #_dataWrite ; |705| 
                                        ; call occurs [#_dataWrite] ; |705| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 706,column 2,is_stmt
        MOV *SP(#1), T0 ; |706| 
        MOV *SP(#5), T1 ; |706| 
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("_dataWrite")
	.dwattr $C$DW$386, DW_AT_TI_call
        CALL #_dataWrite ; |706| 
                                        ; call occurs [#_dataWrite] ; |706| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 707,column 2,is_stmt
        MOV *SP(#2), T0 ; |707| 
        MOV *SP(#5), T1 ; |707| 
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_name("_dataWrite")
	.dwattr $C$DW$387, DW_AT_TI_call
        CALL #_dataWrite ; |707| 
                                        ; call occurs [#_dataWrite] ; |707| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 708,column 2,is_stmt
        MOV *SP(#3), T0 ; |708| 
        MOV *SP(#5), T1 ; |708| 
$C$DW$388	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$388, DW_AT_low_pc(0x00)
	.dwattr $C$DW$388, DW_AT_name("_dataWrite")
	.dwattr $C$DW$388, DW_AT_TI_call
        CALL #_dataWrite ; |708| 
                                        ; call occurs [#_dataWrite] ; |708| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 710,column 5,is_stmt
        MOV *SP(#4), AR1 ; |710| 
        MOV AR1, *SP(#6) ; |710| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 711,column 2,is_stmt
        MOV uns(high_byte(*SP(#4))), AR1 ; |711| 
        MOV AR1, *SP(#7) ; |711| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 712,column 2,is_stmt
        MOV *SP(#6), T0 ; |712| 
        MOV *SP(#5), T1 ; |712| 
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_name("_dataWrite")
	.dwattr $C$DW$389, DW_AT_TI_call
        CALL #_dataWrite ; |712| 
                                        ; call occurs [#_dataWrite] ; |712| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 713,column 5,is_stmt
        MOV *SP(#7), T0 ; |713| 
        MOV *SP(#5), T1 ; |713| 
$C$DW$390	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$390, DW_AT_low_pc(0x00)
	.dwattr $C$DW$390, DW_AT_name("_dataWrite")
	.dwattr $C$DW$390, DW_AT_TI_call
        CALL #_dataWrite ; |713| 
                                        ; call occurs [#_dataWrite] ; |713| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 715,column 2,is_stmt
        MOV #0, T0
$C$L40:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 716,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$369, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$369, DW_AT_TI_end_line(0x2cc)
	.dwattr $C$DW$369, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$369

	.sect	".text"
	.global	_drawRectangle

$C$DW$392	.dwtag  DW_TAG_subprogram, DW_AT_name("drawRectangle")
	.dwattr $C$DW$392, DW_AT_low_pc(_drawRectangle)
	.dwattr $C$DW$392, DW_AT_high_pc(0x00)
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_drawRectangle")
	.dwattr $C$DW$392, DW_AT_external
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$392, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$392, DW_AT_TI_begin_line(0x2da)
	.dwattr $C$DW$392, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$392, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/lcdc_panel.c",line 738,column 1,is_stmt,address _drawRectangle

	.dwfde $C$DW$CIE, _drawRectangle
$C$DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg12]
$C$DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg13]
$C$DW$395	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colEnd")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg16]
$C$DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg18]
$C$DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outColor")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_outColor")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg20]
$C$DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fillColor")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_fillColor")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg22]
$C$DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg24]
;*******************************************************************************
;* FUNCTION NAME: drawRectangle                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,AR4,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_drawRectangle:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$400	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$401	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$402	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$403	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$404	.dwtag  DW_TAG_variable, DW_AT_name("outColor")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_outColor")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$405	.dwtag  DW_TAG_variable, DW_AT_name("fillColor")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_fillColor")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$406	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$407	.dwtag  DW_TAG_variable, DW_AT_name("tempLSB")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_tempLSB")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$408	.dwtag  DW_TAG_variable, DW_AT_name("tempMSB")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_tempMSB")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AR4, *SP(#6) ; |738| 
        MOV AR3, *SP(#5) ; |738| 
        MOV AR2, *SP(#4) ; |738| 
        MOV AR1, *SP(#3) ; |738| 
        MOV AR0, *SP(#2) ; |738| 
        MOV T1, *SP(#1) ; |738| 
        MOV T0, *SP(#0) ; |738| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 742,column 5,is_stmt

        MOV T0, AR1 ; |742| 
||      MOV #131, AR2 ; |742| 

        CMPU AR1 <= AR2, TC1 ; |742| 
        BCC $C$L41,TC1 ; |742| 
                                        ; branchcc occurs ; |742| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 743,column 9,is_stmt
        MOV #-1, T0
        B $C$L47  ; |743| 
                                        ; branch occurs ; |743| 
$C$L41:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 744,column 5,is_stmt
        MOV *SP(#1), AR1 ; |744| 
        CMPU AR1 <= AR2, TC1 ; |744| 
        BCC $C$L42,TC1 ; |744| 
                                        ; branchcc occurs ; |744| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 745,column 9,is_stmt
        MOV #-1, T0
        B $C$L47  ; |745| 
                                        ; branch occurs ; |745| 
$C$L42:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 746,column 5,is_stmt
        MOV *SP(#2), AR1 ; |746| 
        CMPU AR1 <= AR2, TC1 ; |746| 
        BCC $C$L43,TC1 ; |746| 
                                        ; branchcc occurs ; |746| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 747,column 9,is_stmt
        MOV #-1, T0
        B $C$L47  ; |747| 
                                        ; branch occurs ; |747| 
$C$L43:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 748,column 5,is_stmt
        MOV *SP(#3), AR1 ; |748| 
        CMPU AR1 <= AR2, TC1 ; |748| 
        BCC $C$L44,TC1 ; |748| 
                                        ; branchcc occurs ; |748| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 749,column 9,is_stmt
        MOV #-1, T0
        B $C$L47  ; |749| 
                                        ; branch occurs ; |749| 
$C$L44:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 750,column 5,is_stmt

        MOV *SP(#2), AR2 ; |750| 
||      MOV T0, AR1

        CMPU AR2 < AR1, TC1 ; |750| 
        BCC $C$L45,TC1 ; |750| 
                                        ; branchcc occurs ; |750| 
        MOV *SP(#1), AR1 ; |750| 
        MOV *SP(#3), AR2 ; |750| 
        CMPU AR2 >= AR1, TC1 ; |750| 
        BCC $C$L46,TC1 ; |750| 
                                        ; branchcc occurs ; |750| 
$C$L45:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 751,column 9,is_stmt
        MOV #-1, T0
        B $C$L47  ; |751| 
                                        ; branch occurs ; |751| 
$C$L46:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 754,column 6,is_stmt
        MOV *SP(#6), T1 ; |754| 
        MOV #146, T0 ; |754| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$409, DW_AT_TI_call
        CALL #_cmdWrite ; |754| 
                                        ; call occurs [#_cmdWrite] ; |754| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 755,column 6,is_stmt
        MOV *SP(#6), T1 ; |755| 
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("_dataWrite")
	.dwattr $C$DW$410, DW_AT_TI_call

        CALL #_dataWrite ; |755| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |755| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 757,column 6,is_stmt
        MOV #132, T0 ; |757| 
        MOV *SP(#6), T1 ; |757| 
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$411, DW_AT_TI_call
        CALL #_cmdWrite ; |757| 
                                        ; call occurs [#_cmdWrite] ; |757| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 758,column 6,is_stmt
        MOV *SP(#0), T0 ; |758| 
        MOV *SP(#6), T1 ; |758| 
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("_dataWrite")
	.dwattr $C$DW$412, DW_AT_TI_call
        CALL #_dataWrite ; |758| 
                                        ; call occurs [#_dataWrite] ; |758| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 759,column 6,is_stmt
        MOV *SP(#1), T0 ; |759| 
        MOV *SP(#6), T1 ; |759| 
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("_dataWrite")
	.dwattr $C$DW$413, DW_AT_TI_call
        CALL #_dataWrite ; |759| 
                                        ; call occurs [#_dataWrite] ; |759| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 760,column 6,is_stmt
        MOV *SP(#2), T0 ; |760| 
        MOV *SP(#6), T1 ; |760| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("_dataWrite")
	.dwattr $C$DW$414, DW_AT_TI_call
        CALL #_dataWrite ; |760| 
                                        ; call occurs [#_dataWrite] ; |760| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 761,column 6,is_stmt
        MOV *SP(#3), T0 ; |761| 
        MOV *SP(#6), T1 ; |761| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("_dataWrite")
	.dwattr $C$DW$415, DW_AT_TI_call
        CALL #_dataWrite ; |761| 
                                        ; call occurs [#_dataWrite] ; |761| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 763,column 6,is_stmt
        MOV *SP(#4), AR1 ; |763| 
        MOV AR1, *SP(#7) ; |763| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 764,column 3,is_stmt
        MOV uns(high_byte(*SP(#4))), AR1 ; |764| 
        MOV AR1, *SP(#8) ; |764| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 765,column 3,is_stmt
        MOV *SP(#7), T0 ; |765| 
        MOV *SP(#6), T1 ; |765| 
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("_dataWrite")
	.dwattr $C$DW$416, DW_AT_TI_call
        CALL #_dataWrite ; |765| 
                                        ; call occurs [#_dataWrite] ; |765| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 766,column 6,is_stmt
        MOV *SP(#8), T0 ; |766| 
        MOV *SP(#6), T1 ; |766| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("_dataWrite")
	.dwattr $C$DW$417, DW_AT_TI_call
        CALL #_dataWrite ; |766| 
                                        ; call occurs [#_dataWrite] ; |766| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 767,column 3,is_stmt
        MOV *SP(#5), AR1 ; |767| 
        MOV AR1, *SP(#7) ; |767| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 768,column 3,is_stmt
        MOV uns(high_byte(*SP(#5))), AR1 ; |768| 
        MOV AR1, *SP(#8) ; |768| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 769,column 3,is_stmt
        MOV *SP(#7), T0 ; |769| 
        MOV *SP(#6), T1 ; |769| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("_dataWrite")
	.dwattr $C$DW$418, DW_AT_TI_call
        CALL #_dataWrite ; |769| 
                                        ; call occurs [#_dataWrite] ; |769| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 770,column 6,is_stmt
        MOV *SP(#8), T0 ; |770| 
        MOV *SP(#6), T1 ; |770| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("_dataWrite")
	.dwattr $C$DW$419, DW_AT_TI_call
        CALL #_dataWrite ; |770| 
                                        ; call occurs [#_dataWrite] ; |770| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 772,column 3,is_stmt
        MOV #0, T0
$C$L47:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 773,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$392, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$392, DW_AT_TI_end_line(0x305)
	.dwattr $C$DW$392, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$392

	.sect	".text"
	.global	_drawCircle

$C$DW$421	.dwtag  DW_TAG_subprogram, DW_AT_name("drawCircle")
	.dwattr $C$DW$421, DW_AT_low_pc(_drawCircle)
	.dwattr $C$DW$421, DW_AT_high_pc(0x00)
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_drawCircle")
	.dwattr $C$DW$421, DW_AT_external
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$421, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$421, DW_AT_TI_begin_line(0x312)
	.dwattr $C$DW$421, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$421, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/lcdc_panel.c",line 793,column 1,is_stmt,address _drawCircle

	.dwfde $C$DW$CIE, _drawCircle
$C$DW$422	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colCenter")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_colCenter")
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_location[DW_OP_reg12]
$C$DW$423	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowCenter")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_rowCenter")
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_location[DW_OP_reg13]
$C$DW$424	.dwtag  DW_TAG_formal_parameter, DW_AT_name("radius")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_radius")
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_location[DW_OP_reg16]
$C$DW$425	.dwtag  DW_TAG_formal_parameter, DW_AT_name("outColor")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_outColor")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg18]
$C$DW$426	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fillColor")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_fillColor")
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_location[DW_OP_reg20]
$C$DW$427	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_reg22]
;*******************************************************************************
;* FUNCTION NAME: drawCircle                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_drawCircle:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$428	.dwtag  DW_TAG_variable, DW_AT_name("colCenter")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_colCenter")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$429	.dwtag  DW_TAG_variable, DW_AT_name("rowCenter")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_rowCenter")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$430	.dwtag  DW_TAG_variable, DW_AT_name("radius")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_radius")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$431	.dwtag  DW_TAG_variable, DW_AT_name("outColor")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_outColor")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$432	.dwtag  DW_TAG_variable, DW_AT_name("fillColor")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_fillColor")
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$433	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$434	.dwtag  DW_TAG_variable, DW_AT_name("tempLSB")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_tempLSB")
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$434, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$435	.dwtag  DW_TAG_variable, DW_AT_name("tempMSB")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_tempMSB")
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$435, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV AR3, *SP(#5) ; |793| 
        MOV AR2, *SP(#4) ; |793| 
        MOV AR1, *SP(#3) ; |793| 
        MOV AR0, *SP(#2) ; |793| 
        MOV T1, *SP(#1) ; |793| 
        MOV T0, *SP(#0) ; |793| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 797,column 5,is_stmt

        MOV T0, AR1 ; |797| 
||      MOV #131, AR2 ; |797| 

        CMPU AR1 <= AR2, TC1 ; |797| 
        BCC $C$L48,TC1 ; |797| 
                                        ; branchcc occurs ; |797| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 798,column 9,is_stmt
        MOV #-1, T0
        B $C$L52  ; |798| 
                                        ; branch occurs ; |798| 
$C$L48:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 799,column 5,is_stmt
        MOV *SP(#1), AR1 ; |799| 
        CMPU AR1 <= AR2, TC1 ; |799| 
        BCC $C$L49,TC1 ; |799| 
                                        ; branchcc occurs ; |799| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 800,column 9,is_stmt
        MOV #-1, T0
        B $C$L52  ; |800| 
                                        ; branch occurs ; |800| 
$C$L49:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 801,column 5,is_stmt
        MOV *SP(#2), AR1 ; |801| 
        BCC $C$L50,AR1 == #0 ; |801| 
                                        ; branchcc occurs ; |801| 
        CMPU AR1 <= AR2, TC1 ; |801| 
        BCC $C$L51,TC1 ; |801| 
                                        ; branchcc occurs ; |801| 
$C$L50:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 802,column 9,is_stmt
        MOV #-1, T0
        B $C$L52  ; |802| 
                                        ; branch occurs ; |802| 
$C$L51:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 803,column 5,is_stmt
        MOV *SP(#5), T1 ; |803| 
        MOV #134, T0 ; |803| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$436, DW_AT_TI_call
        CALL #_cmdWrite ; |803| 
                                        ; call occurs [#_cmdWrite] ; |803| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 804,column 5,is_stmt
        MOV *SP(#0), T0 ; |804| 
        MOV *SP(#5), T1 ; |804| 
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("_dataWrite")
	.dwattr $C$DW$437, DW_AT_TI_call
        CALL #_dataWrite ; |804| 
                                        ; call occurs [#_dataWrite] ; |804| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 805,column 5,is_stmt
        MOV *SP(#1), T0 ; |805| 
        MOV *SP(#5), T1 ; |805| 
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_name("_dataWrite")
	.dwattr $C$DW$438, DW_AT_TI_call
        CALL #_dataWrite ; |805| 
                                        ; call occurs [#_dataWrite] ; |805| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 806,column 5,is_stmt
        MOV *SP(#2), T0 ; |806| 
        MOV *SP(#5), T1 ; |806| 
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_name("_dataWrite")
	.dwattr $C$DW$439, DW_AT_TI_call
        CALL #_dataWrite ; |806| 
                                        ; call occurs [#_dataWrite] ; |806| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 808,column 2,is_stmt
        MOV *SP(#3), AR1 ; |808| 
        MOV AR1, *SP(#6) ; |808| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 809,column 2,is_stmt
        MOV uns(high_byte(*SP(#3))), AR1 ; |809| 
        MOV AR1, *SP(#7) ; |809| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 810,column 2,is_stmt
        MOV *SP(#6), T0 ; |810| 
        MOV *SP(#5), T1 ; |810| 
$C$DW$440	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$440, DW_AT_low_pc(0x00)
	.dwattr $C$DW$440, DW_AT_name("_dataWrite")
	.dwattr $C$DW$440, DW_AT_TI_call
        CALL #_dataWrite ; |810| 
                                        ; call occurs [#_dataWrite] ; |810| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 811,column 2,is_stmt
        MOV *SP(#7), T0 ; |811| 
        MOV *SP(#5), T1 ; |811| 
$C$DW$441	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$441, DW_AT_low_pc(0x00)
	.dwattr $C$DW$441, DW_AT_name("_dataWrite")
	.dwattr $C$DW$441, DW_AT_TI_call
        CALL #_dataWrite ; |811| 
                                        ; call occurs [#_dataWrite] ; |811| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 812,column 2,is_stmt
        MOV *SP(#4), AR1 ; |812| 
        MOV AR1, *SP(#6) ; |812| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 813,column 2,is_stmt
        MOV uns(high_byte(*SP(#4))), AR1 ; |813| 
        MOV AR1, *SP(#7) ; |813| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 814,column 2,is_stmt
        MOV *SP(#6), T0 ; |814| 
        MOV *SP(#5), T1 ; |814| 
$C$DW$442	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$442, DW_AT_low_pc(0x00)
	.dwattr $C$DW$442, DW_AT_name("_dataWrite")
	.dwattr $C$DW$442, DW_AT_TI_call
        CALL #_dataWrite ; |814| 
                                        ; call occurs [#_dataWrite] ; |814| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 815,column 2,is_stmt
        MOV *SP(#7), T0 ; |815| 
        MOV *SP(#5), T1 ; |815| 
$C$DW$443	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$443, DW_AT_low_pc(0x00)
	.dwattr $C$DW$443, DW_AT_name("_dataWrite")
	.dwattr $C$DW$443, DW_AT_TI_call
        CALL #_dataWrite ; |815| 
                                        ; call occurs [#_dataWrite] ; |815| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 817,column 5,is_stmt
        MOV #146, T0 ; |817| 
        MOV *SP(#5), T1 ; |817| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$444, DW_AT_TI_call
        CALL #_cmdWrite ; |817| 
                                        ; call occurs [#_cmdWrite] ; |817| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 818,column 5,is_stmt
        MOV *SP(#5), T1 ; |818| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_name("_dataWrite")
	.dwattr $C$DW$445, DW_AT_TI_call

        CALL #_dataWrite ; |818| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |818| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 819,column 2,is_stmt
        MOV #0, T0
$C$L52:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 820,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$421, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$421, DW_AT_TI_end_line(0x334)
	.dwattr $C$DW$421, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$421

	.sect	".text"
	.global	_iconCopy

$C$DW$447	.dwtag  DW_TAG_subprogram, DW_AT_name("iconCopy")
	.dwattr $C$DW$447, DW_AT_low_pc(_iconCopy)
	.dwattr $C$DW$447, DW_AT_high_pc(0x00)
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_iconCopy")
	.dwattr $C$DW$447, DW_AT_external
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$447, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$447, DW_AT_TI_begin_line(0x342)
	.dwattr $C$DW$447, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$447, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/lcdc_panel.c",line 842,column 1,is_stmt,address _iconCopy

	.dwfde $C$DW$CIE, _iconCopy
$C$DW$448	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_reg12]
$C$DW$449	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg13]
$C$DW$450	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colEnd")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg16]
$C$DW$451	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg18]
$C$DW$452	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newColStart")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_newColStart")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_reg20]
$C$DW$453	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newRowStart")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_newRowStart")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg22]
$C$DW$454	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg24]
;*******************************************************************************
;* FUNCTION NAME: iconCopy                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,AR4,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_iconCopy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$455	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$457	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$458	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$459	.dwtag  DW_TAG_variable, DW_AT_name("newColStart")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_newColStart")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$460	.dwtag  DW_TAG_variable, DW_AT_name("newRowStart")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_newRowStart")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$461	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AR4, *SP(#6) ; |842| 
        MOV AR3, *SP(#5) ; |842| 
        MOV AR2, *SP(#4) ; |842| 
        MOV AR1, *SP(#3) ; |842| 
        MOV AR0, *SP(#2) ; |842| 
        MOV T1, *SP(#1) ; |842| 
        MOV T0, *SP(#0) ; |842| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 843,column 5,is_stmt

        MOV T0, AR1 ; |843| 
||      MOV #131, AR2 ; |843| 

        CMPU AR1 <= AR2, TC1 ; |843| 
        BCC $C$L53,TC1 ; |843| 
                                        ; branchcc occurs ; |843| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 844,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |844| 
                                        ; branch occurs ; |844| 
$C$L53:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 845,column 5,is_stmt
        MOV *SP(#1), AR1 ; |845| 
        CMPU AR1 <= AR2, TC1 ; |845| 
        BCC $C$L54,TC1 ; |845| 
                                        ; branchcc occurs ; |845| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 846,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |846| 
                                        ; branch occurs ; |846| 
$C$L54:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 847,column 5,is_stmt
        MOV *SP(#2), AR1 ; |847| 
        CMPU AR1 <= AR2, TC1 ; |847| 
        BCC $C$L55,TC1 ; |847| 
                                        ; branchcc occurs ; |847| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 848,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |848| 
                                        ; branch occurs ; |848| 
$C$L55:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 849,column 5,is_stmt
        MOV *SP(#3), AR1 ; |849| 
        CMPU AR1 <= AR2, TC1 ; |849| 
        BCC $C$L56,TC1 ; |849| 
                                        ; branchcc occurs ; |849| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 850,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |850| 
                                        ; branch occurs ; |850| 
$C$L56:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 851,column 5,is_stmt

        MOV *SP(#2), AR2 ; |851| 
||      MOV T0, AR1

        CMPU AR2 < AR1, TC1 ; |851| 
        BCC $C$L57,TC1 ; |851| 
                                        ; branchcc occurs ; |851| 
        MOV *SP(#1), AR1 ; |851| 
        MOV *SP(#3), AR2 ; |851| 
        CMPU AR2 >= AR1, TC1 ; |851| 
        BCC $C$L58,TC1 ; |851| 
                                        ; branchcc occurs ; |851| 
$C$L57:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 852,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |852| 
                                        ; branch occurs ; |852| 
$C$L58:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 853,column 5,is_stmt
        MOV #131, AR2 ; |853| 
        MOV *SP(#4), AR1 ; |853| 
        CMPU AR1 <= AR2, TC1 ; |853| 
        BCC $C$L59,TC1 ; |853| 
                                        ; branchcc occurs ; |853| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 854,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |854| 
                                        ; branch occurs ; |854| 
$C$L59:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 855,column 5,is_stmt
        MOV *SP(#5), AR1 ; |855| 
        CMPU AR1 <= AR2, TC1 ; |855| 
        BCC $C$L60,TC1 ; |855| 
                                        ; branchcc occurs ; |855| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 856,column 9,is_stmt
        MOV #-1, T0
        B $C$L61  ; |856| 
                                        ; branch occurs ; |856| 
$C$L60:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 858,column 5,is_stmt
        MOV *SP(#6), T1 ; |858| 
        MOV #138, T0 ; |858| 
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$462, DW_AT_TI_call
        CALL #_cmdWrite ; |858| 
                                        ; call occurs [#_cmdWrite] ; |858| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 859,column 5,is_stmt
        MOV *SP(#0), T0 ; |859| 
        MOV *SP(#6), T1 ; |859| 
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("_dataWrite")
	.dwattr $C$DW$463, DW_AT_TI_call
        CALL #_dataWrite ; |859| 
                                        ; call occurs [#_dataWrite] ; |859| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 860,column 2,is_stmt
        MOV *SP(#1), T0 ; |860| 
        MOV *SP(#6), T1 ; |860| 
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_name("_dataWrite")
	.dwattr $C$DW$464, DW_AT_TI_call
        CALL #_dataWrite ; |860| 
                                        ; call occurs [#_dataWrite] ; |860| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 861,column 2,is_stmt
        MOV *SP(#2), T0 ; |861| 
        MOV *SP(#6), T1 ; |861| 
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("_dataWrite")
	.dwattr $C$DW$465, DW_AT_TI_call
        CALL #_dataWrite ; |861| 
                                        ; call occurs [#_dataWrite] ; |861| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 862,column 2,is_stmt
        MOV *SP(#3), T0 ; |862| 
        MOV *SP(#6), T1 ; |862| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("_dataWrite")
	.dwattr $C$DW$466, DW_AT_TI_call
        CALL #_dataWrite ; |862| 
                                        ; call occurs [#_dataWrite] ; |862| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 863,column 5,is_stmt
        MOV *SP(#4), T0 ; |863| 
        MOV *SP(#6), T1 ; |863| 
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("_dataWrite")
	.dwattr $C$DW$467, DW_AT_TI_call
        CALL #_dataWrite ; |863| 
                                        ; call occurs [#_dataWrite] ; |863| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 864,column 5,is_stmt
        MOV *SP(#5), T0 ; |864| 
        MOV *SP(#6), T1 ; |864| 
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_name("_dataWrite")
	.dwattr $C$DW$468, DW_AT_TI_call
        CALL #_dataWrite ; |864| 
                                        ; call occurs [#_dataWrite] ; |864| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 866,column 5,is_stmt
        MOV #146, T0 ; |866| 
        MOV *SP(#6), T1 ; |866| 
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$469, DW_AT_TI_call
        CALL #_cmdWrite ; |866| 
                                        ; call occurs [#_cmdWrite] ; |866| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 867,column 5,is_stmt
        MOV *SP(#6), T1 ; |867| 
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("_dataWrite")
	.dwattr $C$DW$470, DW_AT_TI_call

        CALL #_dataWrite ; |867| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |867| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 868,column 2,is_stmt
        MOV #0, T0
$C$L61:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 869,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$447, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$447, DW_AT_TI_end_line(0x365)
	.dwattr $C$DW$447, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$447

	.sect	".text"
	.global	_iconMove

$C$DW$472	.dwtag  DW_TAG_subprogram, DW_AT_name("iconMove")
	.dwattr $C$DW$472, DW_AT_low_pc(_iconMove)
	.dwattr $C$DW$472, DW_AT_high_pc(0x00)
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_iconMove")
	.dwattr $C$DW$472, DW_AT_external
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$472, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$472, DW_AT_TI_begin_line(0x373)
	.dwattr $C$DW$472, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$472, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/lcdc_panel.c",line 891,column 1,is_stmt,address _iconMove

	.dwfde $C$DW$CIE, _iconMove
$C$DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg12]
$C$DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_reg13]
$C$DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colEnd")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_reg16]
$C$DW$476	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_location[DW_OP_reg18]
$C$DW$477	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newColStart")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_newColStart")
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_location[DW_OP_reg20]
$C$DW$478	.dwtag  DW_TAG_formal_parameter, DW_AT_name("newRowStart")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_newRowStart")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_reg22]
$C$DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_reg24]
;*******************************************************************************
;* FUNCTION NAME: iconMove                                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,AR3,AR4,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_iconMove:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$480	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$481	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$482	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$483	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$484	.dwtag  DW_TAG_variable, DW_AT_name("newColStart")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_newColStart")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$485	.dwtag  DW_TAG_variable, DW_AT_name("newRowStart")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_newRowStart")
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$486	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AR4, *SP(#6) ; |891| 
        MOV AR3, *SP(#5) ; |891| 
        MOV AR2, *SP(#4) ; |891| 
        MOV AR1, *SP(#3) ; |891| 
        MOV AR0, *SP(#2) ; |891| 
        MOV T1, *SP(#1) ; |891| 
        MOV T0, *SP(#0) ; |891| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 892,column 5,is_stmt

        MOV T0, AR1 ; |892| 
||      MOV #131, AR2 ; |892| 

        CMPU AR1 <= AR2, TC1 ; |892| 
        BCC $C$L62,TC1 ; |892| 
                                        ; branchcc occurs ; |892| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 893,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |893| 
                                        ; branch occurs ; |893| 
$C$L62:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 894,column 5,is_stmt
        MOV *SP(#1), AR1 ; |894| 
        CMPU AR1 <= AR2, TC1 ; |894| 
        BCC $C$L63,TC1 ; |894| 
                                        ; branchcc occurs ; |894| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 895,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |895| 
                                        ; branch occurs ; |895| 
$C$L63:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 896,column 5,is_stmt
        MOV *SP(#2), AR1 ; |896| 
        CMPU AR1 <= AR2, TC1 ; |896| 
        BCC $C$L64,TC1 ; |896| 
                                        ; branchcc occurs ; |896| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 897,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |897| 
                                        ; branch occurs ; |897| 
$C$L64:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 898,column 5,is_stmt
        MOV *SP(#3), AR1 ; |898| 
        CMPU AR1 <= AR2, TC1 ; |898| 
        BCC $C$L65,TC1 ; |898| 
                                        ; branchcc occurs ; |898| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 899,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |899| 
                                        ; branch occurs ; |899| 
$C$L65:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 900,column 5,is_stmt

        MOV *SP(#2), AR2 ; |900| 
||      MOV T0, AR1

        CMPU AR2 < AR1, TC1 ; |900| 
        BCC $C$L66,TC1 ; |900| 
                                        ; branchcc occurs ; |900| 
        MOV *SP(#1), AR1 ; |900| 
        MOV *SP(#3), AR2 ; |900| 
        CMPU AR2 >= AR1, TC1 ; |900| 
        BCC $C$L67,TC1 ; |900| 
                                        ; branchcc occurs ; |900| 
$C$L66:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 901,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |901| 
                                        ; branch occurs ; |901| 
$C$L67:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 902,column 5,is_stmt
        MOV #131, AR2 ; |902| 
        MOV *SP(#4), AR1 ; |902| 
        CMPU AR1 <= AR2, TC1 ; |902| 
        BCC $C$L68,TC1 ; |902| 
                                        ; branchcc occurs ; |902| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 903,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |903| 
                                        ; branch occurs ; |903| 
$C$L68:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 904,column 5,is_stmt
        MOV *SP(#5), AR1 ; |904| 
        CMPU AR1 <= AR2, TC1 ; |904| 
        BCC $C$L69,TC1 ; |904| 
                                        ; branchcc occurs ; |904| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 905,column 9,is_stmt
        MOV #-1, T0
        B $C$L70  ; |905| 
                                        ; branch occurs ; |905| 
$C$L69:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 907,column 5,is_stmt
        MOV *SP(#6), T1 ; |907| 
        MOV #138, T0 ; |907| 
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$487, DW_AT_TI_call
        CALL #_cmdWrite ; |907| 
                                        ; call occurs [#_cmdWrite] ; |907| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 908,column 5,is_stmt
        MOV *SP(#0), T0 ; |908| 
        MOV *SP(#6), T1 ; |908| 
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_name("_dataWrite")
	.dwattr $C$DW$488, DW_AT_TI_call
        CALL #_dataWrite ; |908| 
                                        ; call occurs [#_dataWrite] ; |908| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 909,column 2,is_stmt
        MOV *SP(#1), T0 ; |909| 
        MOV *SP(#6), T1 ; |909| 
$C$DW$489	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$489, DW_AT_low_pc(0x00)
	.dwattr $C$DW$489, DW_AT_name("_dataWrite")
	.dwattr $C$DW$489, DW_AT_TI_call
        CALL #_dataWrite ; |909| 
                                        ; call occurs [#_dataWrite] ; |909| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 910,column 2,is_stmt
        MOV *SP(#2), T0 ; |910| 
        MOV *SP(#6), T1 ; |910| 
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("_dataWrite")
	.dwattr $C$DW$490, DW_AT_TI_call
        CALL #_dataWrite ; |910| 
                                        ; call occurs [#_dataWrite] ; |910| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 911,column 2,is_stmt
        MOV *SP(#3), T0 ; |911| 
        MOV *SP(#6), T1 ; |911| 
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_name("_dataWrite")
	.dwattr $C$DW$491, DW_AT_TI_call
        CALL #_dataWrite ; |911| 
                                        ; call occurs [#_dataWrite] ; |911| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 912,column 5,is_stmt
        MOV *SP(#4), T0 ; |912| 
        MOV *SP(#6), T1 ; |912| 
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("_dataWrite")
	.dwattr $C$DW$492, DW_AT_TI_call
        CALL #_dataWrite ; |912| 
                                        ; call occurs [#_dataWrite] ; |912| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 913,column 5,is_stmt
        MOV *SP(#5), T0 ; |913| 
        MOV *SP(#6), T1 ; |913| 
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_name("_dataWrite")
	.dwattr $C$DW$493, DW_AT_TI_call
        CALL #_dataWrite ; |913| 
                                        ; call occurs [#_dataWrite] ; |913| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 915,column 5,is_stmt
        MOV #146, T0 ; |915| 
        MOV *SP(#6), T1 ; |915| 
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$494, DW_AT_TI_call
        CALL #_cmdWrite ; |915| 
                                        ; call occurs [#_cmdWrite] ; |915| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 916,column 5,is_stmt
        MOV *SP(#6), T1 ; |916| 
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_name("_dataWrite")
	.dwattr $C$DW$495, DW_AT_TI_call

        CALL #_dataWrite ; |916| 
||      MOV #1, T0

                                        ; call occurs [#_dataWrite] ; |916| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 917,column 5,is_stmt
        MOV #100, T0 ; |917| 
$C$DW$496	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$496, DW_AT_low_pc(0x00)
	.dwattr $C$DW$496, DW_AT_name("_delay")
	.dwattr $C$DW$496, DW_AT_TI_call
        CALL #_delay ; |917| 
                                        ; call occurs [#_delay] ; |917| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 918,column 5,is_stmt
        MOV #142, T0 ; |918| 
        MOV *SP(#6), T1 ; |918| 
$C$DW$497	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$497, DW_AT_low_pc(0x00)
	.dwattr $C$DW$497, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$497, DW_AT_TI_call
        CALL #_cmdWrite ; |918| 
                                        ; call occurs [#_cmdWrite] ; |918| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 919,column 5,is_stmt
        MOV *SP(#0), T0 ; |919| 
        MOV *SP(#6), T1 ; |919| 
$C$DW$498	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$498, DW_AT_low_pc(0x00)
	.dwattr $C$DW$498, DW_AT_name("_dataWrite")
	.dwattr $C$DW$498, DW_AT_TI_call
        CALL #_dataWrite ; |919| 
                                        ; call occurs [#_dataWrite] ; |919| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 920,column 2,is_stmt
        MOV *SP(#1), T0 ; |920| 
        MOV *SP(#6), T1 ; |920| 
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_name("_dataWrite")
	.dwattr $C$DW$499, DW_AT_TI_call
        CALL #_dataWrite ; |920| 
                                        ; call occurs [#_dataWrite] ; |920| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 921,column 2,is_stmt
        MOV *SP(#2), T0 ; |921| 
        MOV *SP(#6), T1 ; |921| 
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_name("_dataWrite")
	.dwattr $C$DW$500, DW_AT_TI_call
        CALL #_dataWrite ; |921| 
                                        ; call occurs [#_dataWrite] ; |921| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 922,column 2,is_stmt
        MOV *SP(#3), T0 ; |922| 
        MOV *SP(#6), T1 ; |922| 
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_name("_dataWrite")
	.dwattr $C$DW$501, DW_AT_TI_call
        CALL #_dataWrite ; |922| 
                                        ; call occurs [#_dataWrite] ; |922| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 924,column 2,is_stmt
        MOV #0, T0
$C$L70:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 925,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$502	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$502, DW_AT_low_pc(0x00)
	.dwattr $C$DW$502, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$472, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$472, DW_AT_TI_end_line(0x39d)
	.dwattr $C$DW$472, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$472

	.sect	".text"
	.global	_lcdTextPrint

$C$DW$503	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdTextPrint")
	.dwattr $C$DW$503, DW_AT_low_pc(_lcdTextPrint)
	.dwattr $C$DW$503, DW_AT_high_pc(0x00)
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_lcdTextPrint")
	.dwattr $C$DW$503, DW_AT_external
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$503, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$503, DW_AT_TI_begin_line(0x3ab)
	.dwattr $C$DW$503, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$503, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./telecom/lcdc_panel.c",line 943,column 1,is_stmt,address _lcdTextPrint

	.dwfde $C$DW$CIE, _lcdTextPrint
$C$DW$504	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pucPrintBuf")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_pucPrintBuf")
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$504, DW_AT_location[DW_OP_reg17]
$C$DW$505	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ucLineNum")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_location[DW_OP_reg12]
$C$DW$506	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdTextPrint                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdTextPrint:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$507	.dwtag  DW_TAG_variable, DW_AT_name("pucPrintBuf")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_pucPrintBuf")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$508	.dwtag  DW_TAG_variable, DW_AT_name("ucLineNum")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$509	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$510	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$511	.dwtag  DW_TAG_variable, DW_AT_name("colNo")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_colNo")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$512	.dwtag  DW_TAG_variable, DW_AT_name("charCount")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_charCount")
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$513	.dwtag  DW_TAG_variable, DW_AT_name("ucTempBuf")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_ucTempBuf")
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$514	.dwtag  DW_TAG_variable, DW_AT_name("pixalCount")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_pixalCount")
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$515	.dwtag  DW_TAG_variable, DW_AT_name("ucTempPixInfo")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_ucTempPixInfo")
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$516	.dwtag  DW_TAG_variable, DW_AT_name("fontBitMapCount")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_fontBitMapCount")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$517	.dwtag  DW_TAG_variable, DW_AT_name("fontCharValue")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_fontCharValue")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T1, *SP(#3) ; |943| 
        MOV T0, *SP(#2) ; |943| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 953,column 5,is_stmt
        MOV #0, *SP(#5) ; |953| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 954,column 2,is_stmt
        MOV #0, *SP(#6) ; |954| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 955,column 2,is_stmt
        MOV #0, *SP(#7) ; |955| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 956,column 2,is_stmt
        MOV #0, *SP(#9) ; |956| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 960,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |960| 
        BCC $C$L71,AR1 == #0 ; |960| 
                                        ; branchcc occurs ; |960| 

        MOV *SP(#2), AR1 ; |960| 
||      MOV #8, AR2

        CMPU AR1 < AR2, TC1 ; |960| 
        BCC $C$L72,TC1 ; |960| 
                                        ; branchcc occurs ; |960| 
$C$L71:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 961,column 3,is_stmt
        MOV #-1, T0
        B $C$L88  ; |961| 
                                        ; branch occurs ; |961| 
$C$L72:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 964,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_name("_strlen")
	.dwattr $C$DW$518, DW_AT_TI_call
        CALL #_strlen ; |964| 
                                        ; call occurs [#_strlen] ; |964| 
        MOV T0, *SP(#4) ; |964| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 965,column 2,is_stmt

        MOV T0, AR1 ; |965| 
||      MOV #64, AR2 ; |965| 

        CMPU AR1 <= AR2, TC1 ; |965| 
        BCC $C$L73,TC1 ; |965| 
                                        ; branchcc occurs ; |965| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 967,column 3,is_stmt
        MOV #-1, T0
        B $C$L88  ; |967| 
                                        ; branch occurs ; |967| 
$C$L73:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 969,column 2,is_stmt
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_name("_lcdDivFun")
	.dwattr $C$DW$519, DW_AT_TI_call

        CALL #_lcdDivFun ; |969| 
||      MOV #8, T1

                                        ; call occurs [#_lcdDivFun] ; |969| 
        MOV T0, *SP(#4) ; |969| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 970,column 2,is_stmt
        MOV *SP(#2), AR1 ; |970| 
        ADD *SP(#4), AR1, AR1 ; |970| 
        MOV AR1, *SP(#4) ; |970| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 971,column 2,is_stmt
        MOV #8, AR2
        CMPU AR1 <= AR2, TC1 ; |971| 
        BCC $C$L74,TC1 ; |971| 
                                        ; branchcc occurs ; |971| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 973,column 3,is_stmt
        MOV #-1, T0
        B $C$L88  ; |973| 
                                        ; branch occurs ; |973| 
$C$L74:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 976,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |976| 
        MOV AR1, *SP(#7) ; |976| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 977,column 11,is_stmt
        BCC $C$L87,AR1 == #0 ; |977| 
                                        ; branchcc occurs ; |977| 
$C$L75:    
$C$DW$L$_lcdTextPrint$9$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 979,column 5,is_stmt
        CMP *SP(#5) == #8, TC1 ; |979| 
        BCC $C$L76,!TC1 ; |979| 
                                        ; branchcc occurs ; |979| 
$C$DW$L$_lcdTextPrint$9$E:
$C$DW$L$_lcdTextPrint$10$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 981,column 9,is_stmt
        MOV #0, *SP(#5) ; |981| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 982,column 6,is_stmt
        ADD #1, *SP(#2) ; |982| 
$C$DW$L$_lcdTextPrint$10$E:
$C$L76:    
$C$DW$L$_lcdTextPrint$11$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 985,column 3,is_stmt
        MOV *SP(#3), T1 ; |985| 
        MOV #21, T0 ; |985| 
$C$DW$520	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$520, DW_AT_low_pc(0x00)
	.dwattr $C$DW$520, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$520, DW_AT_TI_call
        CALL #_cmdWrite ; |985| 
                                        ; call occurs [#_cmdWrite] ; |985| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 986,column 3,is_stmt
        MOV *SP(#5), AC0 ; |986| 

        SFTL AC0, #4, AC0 ; |986| 
||      MOV *SP(#3), T1 ; |986| 

        ADD #2, AC0, T0 ; |986| 
$C$DW$521	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$521, DW_AT_low_pc(0x00)
	.dwattr $C$DW$521, DW_AT_name("_dataWrite")
	.dwattr $C$DW$521, DW_AT_TI_call
        CALL #_dataWrite ; |986| 
                                        ; call occurs [#_dataWrite] ; |986| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 987,column 3,is_stmt
        MOV *SP(#5), AC0 ; |987| 

        SFTL AC0, #4, AC0 ; |987| 
||      MOV *SP(#3), T1 ; |987| 

        ADD #17, AC0, T0 ; |987| 
$C$DW$522	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$522, DW_AT_low_pc(0x00)
	.dwattr $C$DW$522, DW_AT_name("_dataWrite")
	.dwattr $C$DW$522, DW_AT_TI_call
        CALL #_dataWrite ; |987| 
                                        ; call occurs [#_dataWrite] ; |987| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 988,column 3,is_stmt
        MOV #100, AC0 ; |988| 
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_name("_wait")
	.dwattr $C$DW$523, DW_AT_TI_call
        CALL #_wait ; |988| 
                                        ; call occurs [#_wait] ; |988| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 990,column 3,is_stmt
        MOV #117, T0 ; |990| 
        MOV *SP(#3), T1 ; |990| 
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$524, DW_AT_TI_call
        CALL #_cmdWrite ; |990| 
                                        ; call occurs [#_cmdWrite] ; |990| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 991,column 3,is_stmt
        MOV *SP(#2), AC0 ; |991| 

        SFTL AC0, #4, AC0 ; |991| 
||      MOV *SP(#3), T1 ; |991| 

        ADD #2, AC0, T0 ; |991| 
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("_dataWrite")
	.dwattr $C$DW$525, DW_AT_TI_call
        CALL #_dataWrite ; |991| 
                                        ; call occurs [#_dataWrite] ; |991| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 992,column 3,is_stmt
        MOV #127, T0 ; |992| 
        MOV *SP(#3), T1 ; |992| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_name("_dataWrite")
	.dwattr $C$DW$526, DW_AT_TI_call
        CALL #_dataWrite ; |992| 
                                        ; call occurs [#_dataWrite] ; |992| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 993,column 3,is_stmt
        MOV #100, AC0 ; |993| 
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_name("_wait")
	.dwattr $C$DW$527, DW_AT_TI_call
        CALL #_wait ; |993| 
                                        ; call occurs [#_wait] ; |993| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 995,column 3,is_stmt
        MOV #92, T0 ; |995| 
        MOV *SP(#3), T1 ; |995| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$528, DW_AT_TI_call
        CALL #_cmdWrite ; |995| 
                                        ; call occurs [#_cmdWrite] ; |995| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 996,column 3,is_stmt
        MOV #100, AC0 ; |996| 
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("_wait")
	.dwattr $C$DW$529, DW_AT_TI_call
        CALL #_wait ; |996| 
                                        ; call occurs [#_wait] ; |996| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 998,column 3,is_stmt
        MOV *SP(#6), T0 ; |998| 
        ADD #1, T0, AR1 ; |998| 
        MOV AR1, *SP(#6) ; |998| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |998| 
        MOV AR1, *SP(#7) ; |998| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 999,column 3,is_stmt
        MOV AR1, AC0
        SFTL AC0, #4, AC0 ; |999| 
        MOV AC0, *SP(#11) ; |999| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1001,column 9,is_stmt
        MOV #0, *SP(#10) ; |1001| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1001,column 30,is_stmt
        MOV #16, AR2 ; |1001| 
        MOV *SP(#10), AR1 ; |1001| 
        CMPU AR1 >= AR2, TC1 ; |1001| 
        BCC $C$L86,TC1 ; |1001| 
                                        ; branchcc occurs ; |1001| 
$C$DW$L$_lcdTextPrint$11$E:
$C$L77:    
$C$DW$L$_lcdTextPrint$12$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1003,column 4,is_stmt
        ADD *SP(#11), AR1, T0 ; |1003| 
        AMOV #_lcdFontTable, XAR3 ; |1003| 
        MOV *AR3(T0), AR1 ; |1003| 
        MOV AR1, *SP(#9) ; |1003| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1004,column 9,is_stmt
        MOV #0, *SP(#8) ; |1004| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1004,column 25,is_stmt

        MOV *SP(#8), AR1 ; |1004| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1004| 
        BCC $C$L79,TC1 ; |1004| 
                                        ; branchcc occurs ; |1004| 
$C$DW$L$_lcdTextPrint$12$E:
$C$L78:    
$C$DW$L$_lcdTextPrint$13$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1006,column 8,is_stmt
        MOV *SP(#8), T0 ; |1006| 
        AMOV #_LCD_TempBuf, XAR3 ; |1006| 
        MOV #0, *AR3(T0) ; |1006| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1004,column 41,is_stmt
        ADD #1, *SP(#8) ; |1004| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1004,column 25,is_stmt
        MOV *SP(#8), AR1 ; |1004| 
        CMPU AR1 < AR2, TC1 ; |1004| 
        BCC $C$L78,TC1 ; |1004| 
                                        ; branchcc occurs ; |1004| 
$C$DW$L$_lcdTextPrint$13$E:
$C$L79:    
$C$DW$L$_lcdTextPrint$14$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1008,column 13,is_stmt
        MOV *SP(#9), AR1 ; |1008| 
        BCC $C$L81,AR1 == #0 ; |1008| 
                                        ; branchcc occurs ; |1008| 
$C$DW$L$_lcdTextPrint$14$E:
$C$L80:    
$C$DW$L$_lcdTextPrint$15$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1010,column 7,is_stmt
        MOV #2, T1
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("_lcdModuloDivFun")
	.dwattr $C$DW$530, DW_AT_TI_call

        CALL #_lcdModuloDivFun ; |1010| 
||      MOV AR1, T0

                                        ; call occurs [#_lcdModuloDivFun] ; |1010| 

        MOV *SP(#8), AR2 ; |1010| 
||      MOV T0, AR1 ; |1010| 

        SUB #1, AR2, T0 ; |1010| 
        AMOV #_LCD_TempBuf, XAR3 ; |1010| 
        MOV T0, *SP(#8) ; |1010| 
        MOV AR1, *AR3(T0) ; |1010| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1011,column 16,is_stmt
        MOV *SP(#9), T0 ; |1011| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_name("_lcdDivFun")
	.dwattr $C$DW$531, DW_AT_TI_call
        CALL #_lcdDivFun ; |1011| 
                                        ; call occurs [#_lcdDivFun] ; |1011| 
        MOV T0, *SP(#9) ; |1011| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1012,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |1012| 
                                        ; branchcc occurs ; |1012| 
$C$DW$L$_lcdTextPrint$15$E:
$C$L81:    
$C$DW$L$_lcdTextPrint$16$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1013,column 9,is_stmt
        MOV #0, *SP(#8) ; |1013| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1013,column 25,is_stmt

        MOV *SP(#8), AR1 ; |1013| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1013| 
        BCC $C$L85,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
$C$DW$L$_lcdTextPrint$16$E:
$C$L82:    
$C$DW$L$_lcdTextPrint$17$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1016,column 8,is_stmt
        MOV *SP(#8), T0 ; |1016| 
        AMOV #_LCD_TempBuf, XAR3 ; |1016| 
        MOV *AR3(T0), AR1 ; |1016| 
        BCC $C$L83,AR1 != #0 ; |1016| 
                                        ; branchcc occurs ; |1016| 
$C$DW$L$_lcdTextPrint$17$E:
$C$DW$L$_lcdTextPrint$18$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1021,column 6,is_stmt
        MOV *SP(#3), T1 ; |1021| 
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("_dataWrite")
	.dwattr $C$DW$532, DW_AT_TI_call

        CALL #_dataWrite ; |1021| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1021| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1024,column 5,is_stmt
        B $C$L84  ; |1024| 
                                        ; branch occurs ; |1024| 
$C$DW$L$_lcdTextPrint$18$E:
$C$L83:    
$C$DW$L$_lcdTextPrint$19$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1030,column 6,is_stmt
        MOV *SP(#3), T1 ; |1030| 
        MOV #255, T0 ; |1030| 
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("_dataWrite")
	.dwattr $C$DW$533, DW_AT_TI_call
        CALL #_dataWrite ; |1030| 
                                        ; call occurs [#_dataWrite] ; |1030| 
$C$DW$L$_lcdTextPrint$19$E:
$C$L84:    
$C$DW$L$_lcdTextPrint$20$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1013,column 54,is_stmt
        ADD #1, *SP(#8) ; |1013| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1013,column 25,is_stmt
        MOV *SP(#8), AR1 ; |1013| 
        CMPU AR1 < AR2, TC1 ; |1013| 
        BCC $C$L82,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
$C$DW$L$_lcdTextPrint$20$E:
$C$L85:    
$C$DW$L$_lcdTextPrint$21$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1001,column 66,is_stmt
        ADD #1, *SP(#10) ; |1001| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1001,column 30,is_stmt
        MOV #16, AR2 ; |1001| 
        MOV *SP(#10), AR1 ; |1001| 
        CMPU AR1 < AR2, TC1 ; |1001| 
        BCC $C$L77,TC1 ; |1001| 
                                        ; branchcc occurs ; |1001| 
$C$DW$L$_lcdTextPrint$21$E:
$C$L86:    
$C$DW$L$_lcdTextPrint$22$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1035,column 3,is_stmt
        ADD #1, *SP(#5) ; |1035| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 977,column 11,is_stmt
        MOV *SP(#7), AR1 ; |977| 
        BCC $C$L75,AR1 != #0 ; |977| 
                                        ; branchcc occurs ; |977| 
$C$DW$L$_lcdTextPrint$22$E:
$C$L87:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1037,column 2,is_stmt
        MOV #0, T0
$C$L88:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1038,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$535	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$535, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L75:1:1726009971")
	.dwattr $C$DW$535, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$535, DW_AT_TI_begin_line(0x3d1)
	.dwattr $C$DW$535, DW_AT_TI_end_line(0x40c)
$C$DW$536	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$536, DW_AT_low_pc($C$DW$L$_lcdTextPrint$9$B)
	.dwattr $C$DW$536, DW_AT_high_pc($C$DW$L$_lcdTextPrint$9$E)
$C$DW$537	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$537, DW_AT_low_pc($C$DW$L$_lcdTextPrint$10$B)
	.dwattr $C$DW$537, DW_AT_high_pc($C$DW$L$_lcdTextPrint$10$E)
$C$DW$538	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$538, DW_AT_low_pc($C$DW$L$_lcdTextPrint$11$B)
	.dwattr $C$DW$538, DW_AT_high_pc($C$DW$L$_lcdTextPrint$11$E)
$C$DW$539	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$539, DW_AT_low_pc($C$DW$L$_lcdTextPrint$22$B)
	.dwattr $C$DW$539, DW_AT_high_pc($C$DW$L$_lcdTextPrint$22$E)

$C$DW$540	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$540, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L77:2:1726009971")
	.dwattr $C$DW$540, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$540, DW_AT_TI_begin_line(0x3e9)
	.dwattr $C$DW$540, DW_AT_TI_end_line(0x40a)
$C$DW$541	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$541, DW_AT_low_pc($C$DW$L$_lcdTextPrint$12$B)
	.dwattr $C$DW$541, DW_AT_high_pc($C$DW$L$_lcdTextPrint$12$E)
$C$DW$542	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$542, DW_AT_low_pc($C$DW$L$_lcdTextPrint$14$B)
	.dwattr $C$DW$542, DW_AT_high_pc($C$DW$L$_lcdTextPrint$14$E)
$C$DW$543	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$543, DW_AT_low_pc($C$DW$L$_lcdTextPrint$16$B)
	.dwattr $C$DW$543, DW_AT_high_pc($C$DW$L$_lcdTextPrint$16$E)
$C$DW$544	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$544, DW_AT_low_pc($C$DW$L$_lcdTextPrint$21$B)
	.dwattr $C$DW$544, DW_AT_high_pc($C$DW$L$_lcdTextPrint$21$E)

$C$DW$545	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$545, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L78:3:1726009971")
	.dwattr $C$DW$545, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$545, DW_AT_TI_begin_line(0x3ec)
	.dwattr $C$DW$545, DW_AT_TI_end_line(0x3ef)
$C$DW$546	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$546, DW_AT_low_pc($C$DW$L$_lcdTextPrint$13$B)
	.dwattr $C$DW$546, DW_AT_high_pc($C$DW$L$_lcdTextPrint$13$E)
	.dwendtag $C$DW$545


$C$DW$547	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$547, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L80:3:1726009971")
	.dwattr $C$DW$547, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$547, DW_AT_TI_begin_line(0x3f0)
	.dwattr $C$DW$547, DW_AT_TI_end_line(0x3f4)
$C$DW$548	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$548, DW_AT_low_pc($C$DW$L$_lcdTextPrint$15$B)
	.dwattr $C$DW$548, DW_AT_high_pc($C$DW$L$_lcdTextPrint$15$E)
	.dwendtag $C$DW$547


$C$DW$549	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$549, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L82:3:1726009971")
	.dwattr $C$DW$549, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$549, DW_AT_TI_begin_line(0x3f5)
	.dwattr $C$DW$549, DW_AT_TI_end_line(0x409)
$C$DW$550	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$550, DW_AT_low_pc($C$DW$L$_lcdTextPrint$17$B)
	.dwattr $C$DW$550, DW_AT_high_pc($C$DW$L$_lcdTextPrint$17$E)
$C$DW$551	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$551, DW_AT_low_pc($C$DW$L$_lcdTextPrint$18$B)
	.dwattr $C$DW$551, DW_AT_high_pc($C$DW$L$_lcdTextPrint$18$E)
$C$DW$552	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$552, DW_AT_low_pc($C$DW$L$_lcdTextPrint$19$B)
	.dwattr $C$DW$552, DW_AT_high_pc($C$DW$L$_lcdTextPrint$19$E)
$C$DW$553	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$553, DW_AT_low_pc($C$DW$L$_lcdTextPrint$20$B)
	.dwattr $C$DW$553, DW_AT_high_pc($C$DW$L$_lcdTextPrint$20$E)
	.dwendtag $C$DW$549

	.dwendtag $C$DW$540

	.dwendtag $C$DW$535

	.dwattr $C$DW$503, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$503, DW_AT_TI_end_line(0x40e)
	.dwattr $C$DW$503, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$503

	.sect	".text"
	.global	_lcdTextPrintDMA

$C$DW$554	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdTextPrintDMA")
	.dwattr $C$DW$554, DW_AT_low_pc(_lcdTextPrintDMA)
	.dwattr $C$DW$554, DW_AT_high_pc(0x00)
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_lcdTextPrintDMA")
	.dwattr $C$DW$554, DW_AT_external
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$554, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$554, DW_AT_TI_begin_line(0x41c)
	.dwattr $C$DW$554, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$554, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1056,column 1,is_stmt,address _lcdTextPrintDMA

	.dwfde $C$DW$CIE, _lcdTextPrintDMA
$C$DW$555	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pucPrintBuf")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_pucPrintBuf")
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$555, DW_AT_location[DW_OP_reg17]
$C$DW$556	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ucLineNum")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_location[DW_OP_reg12]
$C$DW$557	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdTextPrintDMA                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,AR4,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdTextPrintDMA:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$558	.dwtag  DW_TAG_variable, DW_AT_name("pucPrintBuf")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_pucPrintBuf")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$559	.dwtag  DW_TAG_variable, DW_AT_name("ucLineNum")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$560	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$561	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_len")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$562	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$563	.dwtag  DW_TAG_variable, DW_AT_name("bufIndex")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_bufIndex")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$564	.dwtag  DW_TAG_variable, DW_AT_name("tempVar")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_tempVar")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$565	.dwtag  DW_TAG_variable, DW_AT_name("pixalCount")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_pixalCount")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$566	.dwtag  DW_TAG_variable, DW_AT_name("charCount")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_charCount")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$567	.dwtag  DW_TAG_variable, DW_AT_name("ucTempBuf")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_ucTempBuf")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$568	.dwtag  DW_TAG_variable, DW_AT_name("ucTempPixInfo")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_ucTempPixInfo")
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$569	.dwtag  DW_TAG_variable, DW_AT_name("fontCharValue")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_fontCharValue")
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$570	.dwtag  DW_TAG_variable, DW_AT_name("fontBitMapCount")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_fontBitMapCount")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$571	.dwtag  DW_TAG_variable, DW_AT_name("maxLineDisplay")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_maxLineDisplay")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$572	.dwtag  DW_TAG_variable, DW_AT_name("charPerLine")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_charPerLine")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$573	.dwtag  DW_TAG_variable, DW_AT_name("dispStat")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_dispStat")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV T1, *SP(#3) ; |1056| 
        MOV T0, *SP(#2) ; |1056| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 1071,column 2,is_stmt
        MOV #16, *SP(#14) ; |1071| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1072,column 2,is_stmt
        MOV #8, *SP(#15) ; |1072| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1075,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |1075| 
        BCC $C$L89,AR1 == #0 ; |1075| 
                                        ; branchcc occurs ; |1075| 

        MOV *SP(#2), AR1 ; |1075| 
||      MOV #8, AR2

        CMPU AR1 < AR2, TC1 ; |1075| 
        BCC $C$L90,TC1 ; |1075| 
                                        ; branchcc occurs ; |1075| 
$C$L89:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1076,column 3,is_stmt
        MOV #-1, T0
        B $C$L110 ; |1076| 
                                        ; branch occurs ; |1076| 
$C$L90:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1079,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$574	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$574, DW_AT_low_pc(0x00)
	.dwattr $C$DW$574, DW_AT_name("_strlen")
	.dwattr $C$DW$574, DW_AT_TI_call
        CALL #_strlen ; |1079| 
                                        ; call occurs [#_strlen] ; |1079| 
        MOV T0, *SP(#4) ; |1079| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1080,column 2,is_stmt
        MOV *SP(#14), AC0 ; |1080| 

        SFTL AC0, #3, AC0 ; |1080| 
||      MOV T0, AR2 ; |1080| 

        MOV AC0, AR1 ; |1080| 
        CMPU AR2 <= AR1, TC1 ; |1080| 
        BCC $C$L91,TC1 ; |1080| 
                                        ; branchcc occurs ; |1080| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1082,column 3,is_stmt
        MOV #-1, T0
        B $C$L110 ; |1082| 
                                        ; branch occurs ; |1082| 
$C$L91:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1084,column 2,is_stmt
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_name("_lcdDivFun")
	.dwattr $C$DW$575, DW_AT_TI_call

        CALL #_lcdDivFun ; |1084| 
||      MOV #8, T1

                                        ; call occurs [#_lcdDivFun] ; |1084| 
        MOV T0, *SP(#4) ; |1084| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1085,column 2,is_stmt
        MOV *SP(#2), AR1 ; |1085| 
        ADD *SP(#4), AR1, AR1 ; |1085| 
        MOV AR1, *SP(#4) ; |1085| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1086,column 2,is_stmt
        MOV *SP(#4), AR2 ; |1086| 
        MOV *SP(#14), AR1 ; |1086| 
        CMPU AR2 <= AR1, TC1 ; |1086| 
        BCC $C$L92,TC1 ; |1086| 
                                        ; branchcc occurs ; |1086| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1088,column 3,is_stmt
        MOV #-1, T0
        B $C$L110 ; |1088| 
                                        ; branch occurs ; |1088| 
$C$L92:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1091,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$576	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$576, DW_AT_low_pc(0x00)
	.dwattr $C$DW$576, DW_AT_name("_strlen")
	.dwattr $C$DW$576, DW_AT_TI_call
        CALL #_strlen ; |1091| 
                                        ; call occurs [#_strlen] ; |1091| 
        MOV T0, *SP(#4) ; |1091| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1092,column 10,is_stmt
        MOV #0, *SP(#9) ; |1092| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1092,column 25,is_stmt
        MOV *SP(#4), AR1 ; |1092| 
        MOV *SP(#9), AR2 ; |1092| 
        CMPU AR2 >= AR1, TC1 ; |1092| 
        BCC $C$L109,TC1 ; |1092| 
                                        ; branchcc occurs ; |1092| 
$C$L93:    
$C$DW$L$_lcdTextPrintDMA$9$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1094,column 9,is_stmt
        MOV #0, *SP(#13) ; |1094| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1094,column 30,is_stmt
        MOV #16, AR2 ; |1094| 
        MOV *SP(#13), AR1 ; |1094| 
        CMPU AR1 >= AR2, TC1 ; |1094| 
        BCC $C$L108,TC1 ; |1094| 
                                        ; branchcc occurs ; |1094| 
$C$DW$L$_lcdTextPrintDMA$9$E:
$C$L94:    
$C$DW$L$_lcdTextPrintDMA$10$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1096,column 13,is_stmt
        MOV #0, *SP(#6) ; |1096| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1097,column 4,is_stmt
        MOV *SP(#4), AC0 ; |1097| 
        SUB uns(*SP(#9)), AC0, AC0 ; |1097| 

        MOV AC0, AR1 ; |1097| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1097| 
        BCC $C$L95,TC1 ; |1097| 
                                        ; branchcc occurs ; |1097| 
$C$DW$L$_lcdTextPrintDMA$10$E:
$C$DW$L$_lcdTextPrintDMA$11$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1099,column 17,is_stmt
        MOV *SP(#4), AC0 ; |1099| 
        SUB uns(*SP(#9)), AC0, AC0 ; |1099| 
        MOV AC0, *SP(#15) ; |1099| 
$C$DW$L$_lcdTextPrintDMA$11$E:
$C$L95:    
$C$DW$L$_lcdTextPrintDMA$12$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1101,column 18,is_stmt
        MOV #0, *SP(#7) ; |1101| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1101,column 31,is_stmt
        MOV *SP(#15), AR1 ; |1101| 
        MOV *SP(#7), AR2 ; |1101| 
        CMPU AR2 >= AR1, TC1 ; |1101| 
        BCC $C$L105,TC1 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_lcdTextPrintDMA$12$E:
$C$L96:    
$C$DW$L$_lcdTextPrintDMA$13$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1103,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV AR2, AR1
        ADD *SP(#9), AR1, T0 ; |1103| 
        MOV *AR3(T0), AR1 ; |1103| 
        MOV AR1, *SP(#10) ; |1103| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1104,column 17,is_stmt
        MOV AR1, AC0
        SFTL AC0, #4, AC0 ; |1104| 
        MOV AC0, *SP(#12) ; |1104| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1105,column 17,is_stmt
        MOV *SP(#13), AR1 ; |1105| 
        ADD *SP(#12), AR1, T0 ; |1105| 
        AMOV #_lcdFontTable, XAR3 ; |1105| 
        MOV *AR3(T0), AR1 ; |1105| 
        MOV AR1, *SP(#11) ; |1105| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1106,column 10,is_stmt
        MOV #0, *SP(#8) ; |1106| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1106,column 26,is_stmt

        MOV *SP(#8), AR1 ; |1106| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1106| 
        BCC $C$L98,TC1 ; |1106| 
                                        ; branchcc occurs ; |1106| 
$C$DW$L$_lcdTextPrintDMA$13$E:
$C$L97:    
$C$DW$L$_lcdTextPrintDMA$14$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1108,column 9,is_stmt
        MOV *SP(#8), T0 ; |1108| 
        AMOV #_LCD_TempBuf, XAR3 ; |1108| 
        MOV #0, *AR3(T0) ; |1108| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1106,column 42,is_stmt
        ADD #1, *SP(#8) ; |1106| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1106,column 26,is_stmt
        MOV *SP(#8), AR1 ; |1106| 
        CMPU AR1 < AR2, TC1 ; |1106| 
        BCC $C$L97,TC1 ; |1106| 
                                        ; branchcc occurs ; |1106| 
$C$DW$L$_lcdTextPrintDMA$14$E:
$C$L98:    
$C$DW$L$_lcdTextPrintDMA$15$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1110,column 14,is_stmt
        MOV *SP(#11), AR1 ; |1110| 
        BCC $C$L100,AR1 == #0 ; |1110| 
                                        ; branchcc occurs ; |1110| 
$C$DW$L$_lcdTextPrintDMA$15$E:
$C$L99:    
$C$DW$L$_lcdTextPrintDMA$16$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1112,column 8,is_stmt
        MOV #2, T1
$C$DW$577	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$577, DW_AT_low_pc(0x00)
	.dwattr $C$DW$577, DW_AT_name("_lcdModuloDivFun")
	.dwattr $C$DW$577, DW_AT_TI_call

        CALL #_lcdModuloDivFun ; |1112| 
||      MOV AR1, T0

                                        ; call occurs [#_lcdModuloDivFun] ; |1112| 

        MOV *SP(#8), AR2 ; |1112| 
||      MOV T0, AR1 ; |1112| 

        SUB #1, AR2, T0 ; |1112| 
        AMOV #_LCD_TempBuf, XAR3 ; |1112| 
        MOV T0, *SP(#8) ; |1112| 
        MOV AR1, *AR3(T0) ; |1112| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1113,column 17,is_stmt
        MOV *SP(#11), T0 ; |1113| 
$C$DW$578	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$578, DW_AT_low_pc(0x00)
	.dwattr $C$DW$578, DW_AT_name("_lcdDivFun")
	.dwattr $C$DW$578, DW_AT_TI_call
        CALL #_lcdDivFun ; |1113| 
                                        ; call occurs [#_lcdDivFun] ; |1113| 
        MOV T0, *SP(#11) ; |1113| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1114,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L99,AR1 != #0 ; |1114| 
                                        ; branchcc occurs ; |1114| 
$C$DW$L$_lcdTextPrintDMA$16$E:
$C$L100:    
$C$DW$L$_lcdTextPrintDMA$17$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1115,column 10,is_stmt
        MOV #0, *SP(#8) ; |1115| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1115,column 26,is_stmt

        MOV *SP(#8), AR1 ; |1115| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1115| 
        BCC $C$L104,TC1 ; |1115| 
                                        ; branchcc occurs ; |1115| 
$C$DW$L$_lcdTextPrintDMA$17$E:
$C$L101:    
$C$DW$L$_lcdTextPrintDMA$18$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1117,column 9,is_stmt
        MOV *SP(#8), T0 ; |1117| 
        AMOV #_LCD_TempBuf, XAR3 ; |1117| 
        MOV *AR3(T0), AR1 ; |1117| 
        BCC $C$L102,AR1 != #0 ; |1117| 
                                        ; branchcc occurs ; |1117| 
$C$DW$L$_lcdTextPrintDMA$18$E:
$C$DW$L$_lcdTextPrintDMA$19$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1119,column 10,is_stmt
        MOV *SP(#6), T0 ; |1119| 
        AMOV #_LCD_TextFrameBuf, XAR3 ; |1119| 
        MOV #0, *AR3(T0) ; |1119| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1120,column 6,is_stmt
        B $C$L103 ; |1120| 
                                        ; branch occurs ; |1120| 
$C$DW$L$_lcdTextPrintDMA$19$E:
$C$L102:    
$C$DW$L$_lcdTextPrintDMA$20$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1123,column 10,is_stmt
        MOV *SP(#6), T0 ; |1123| 
        AMOV #_LCD_TextFrameBuf, XAR3 ; |1123| 
        MOV #255, *AR3(T0) ; |1123| 
$C$DW$L$_lcdTextPrintDMA$20$E:
$C$L103:    
$C$DW$L$_lcdTextPrintDMA$21$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1125,column 6,is_stmt
        ADD #1, *SP(#6) ; |1125| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1115,column 55,is_stmt
        ADD #1, *SP(#8) ; |1115| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1115,column 26,is_stmt
        MOV *SP(#8), AR1 ; |1115| 
        CMPU AR1 < AR2, TC1 ; |1115| 
        BCC $C$L101,TC1 ; |1115| 
                                        ; branchcc occurs ; |1115| 
$C$DW$L$_lcdTextPrintDMA$21$E:
$C$L104:    
$C$DW$L$_lcdTextPrintDMA$22$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1101,column 54,is_stmt
        ADD #1, *SP(#7) ; |1101| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1101,column 31,is_stmt
        MOV *SP(#15), AR1 ; |1101| 
        MOV *SP(#7), AR2 ; |1101| 
        CMPU AR2 < AR1, TC1 ; |1101| 
        BCC $C$L96,TC1 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_lcdTextPrintDMA$22$E:
$C$L105:    
$C$DW$L$_lcdTextPrintDMA$23$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1128,column 13,is_stmt
        MOV #64, AR2 ; |1128| 
        MOV *SP(#9), AR1 ; |1128| 
        CMPU AR1 >= AR2, TC1 ; |1128| 
        BCC $C$L106,TC1 ; |1128| 
                                        ; branchcc occurs ; |1128| 
$C$DW$L$_lcdTextPrintDMA$23$E:
$C$DW$L$_lcdTextPrintDMA$24$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1130,column 17,is_stmt
        MOV *SP(#2), AC0 ; |1130| 
        SFTL AC0, #4, AC0 ; |1130| 
        ADD *SP(#13), AC0, AR1 ; |1130| 
        MOV AR1, *SP(#5) ; |1130| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1131,column 17,is_stmt
        AMOV #_LCD_TextFrameBuf, XAR0 ; |1131| 

        MOV *SP(#3), AR4 ; |1131| 
||      MOV #1, T1

        MOV AR1, T0 ; |1131| 
||      MOV *SP(#6), AR3 ; |1131| 

$C$DW$579	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$579, DW_AT_low_pc(0x00)
	.dwattr $C$DW$579, DW_AT_name("_foregroundDisplay")
	.dwattr $C$DW$579, DW_AT_TI_call

        CALL #_foregroundDisplay ; |1131| 
||      MOV #1, AR1

                                        ; call occurs [#_foregroundDisplay] ; |1131| 
        MOV T0, *SP(#16) ; |1131| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1132,column 17,is_stmt
        MOV T0, AR1
        BCC $C$L107,AR1 == #0 ; |1132| 
                                        ; branchcc occurs ; |1132| 
$C$DW$L$_lcdTextPrintDMA$24$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1134,column 21,is_stmt
        B $C$L110 ; |1134| 
                                        ; branch occurs ; |1134| 
$C$L106:    
$C$DW$L$_lcdTextPrintDMA$27$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1139,column 8,is_stmt
        MOV *SP(#2), T0 ; |1139| 
$C$DW$580	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$580, DW_AT_low_pc(0x00)
	.dwattr $C$DW$580, DW_AT_name("_lcdModuloDivFun")
	.dwattr $C$DW$580, DW_AT_TI_call

        CALL #_lcdModuloDivFun ; |1139| 
||      MOV #8, T1

                                        ; call occurs [#_lcdModuloDivFun] ; |1139| 
        MOV T0, *SP(#2) ; |1139| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1140,column 17,is_stmt
        MOV T0, AC0
        SFTL AC0, #4, AC0 ; |1140| 
        ADD *SP(#13), AC0, AR1 ; |1140| 
        MOV AR1, *SP(#5) ; |1140| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1141,column 17,is_stmt
        AMOV #_LCD_TextFrameBuf, XAR0 ; |1141| 
        MOV #64, AR2 ; |1141| 
        MOV #67, T1 ; |1141| 
        MOV *SP(#6), AR3 ; |1141| 

        MOV *SP(#3), AR4 ; |1141| 
||      MOV AR1, T0 ; |1141| 

$C$DW$581	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$581, DW_AT_low_pc(0x00)
	.dwattr $C$DW$581, DW_AT_name("_foregroundDisplay")
	.dwattr $C$DW$581, DW_AT_TI_call

        CALL #_foregroundDisplay ; |1141| 
||      MOV #1, AR1

                                        ; call occurs [#_foregroundDisplay] ; |1141| 
        MOV T0, *SP(#16) ; |1141| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1142,column 17,is_stmt
        MOV T0, AR1
        BCC $C$L110,AR1 != #0 ; |1142| 
                                        ; branchcc occurs ; |1142| 
$C$DW$L$_lcdTextPrintDMA$27$E:
$C$DW$L$_lcdTextPrintDMA$28$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1144,column 21,is_stmt
$C$DW$L$_lcdTextPrintDMA$28$E:
$C$L107:    
$C$DW$L$_lcdTextPrintDMA$29$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1094,column 65,is_stmt
        ADD #1, *SP(#13) ; |1094| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1094,column 30,is_stmt
        MOV #16, AR2 ; |1094| 
        MOV *SP(#13), AR1 ; |1094| 
        CMPU AR1 < AR2, TC1 ; |1094| 
        BCC $C$L94,TC1 ; |1094| 
                                        ; branchcc occurs ; |1094| 
$C$DW$L$_lcdTextPrintDMA$29$E:
$C$L108:    
$C$DW$L$_lcdTextPrintDMA$30$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1148,column 9,is_stmt
        ADD #1, *SP(#2) ; |1148| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1092,column 42,is_stmt
        ADD #8, *SP(#9) ; |1092| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1092,column 25,is_stmt
        MOV *SP(#4), AR1 ; |1092| 
        MOV *SP(#9), AR2 ; |1092| 
        CMPU AR2 < AR1, TC1 ; |1092| 
        BCC $C$L93,TC1 ; |1092| 
                                        ; branchcc occurs ; |1092| 
$C$DW$L$_lcdTextPrintDMA$30$E:
$C$L109:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1150,column 2,is_stmt
        MOV *SP(#16), T0 ; |1150| 
$C$L110:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1151,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$582	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$582, DW_AT_low_pc(0x00)
	.dwattr $C$DW$582, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$583	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$583, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L93:1:1726009971")
	.dwattr $C$DW$583, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$583, DW_AT_TI_begin_line(0x444)
	.dwattr $C$DW$583, DW_AT_TI_end_line(0x47d)
$C$DW$584	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$584, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$9$B)
	.dwattr $C$DW$584, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$9$E)
$C$DW$585	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$585, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$30$B)
	.dwattr $C$DW$585, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$30$E)

$C$DW$586	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$586, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L94:2:1726009971")
	.dwattr $C$DW$586, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$586, DW_AT_TI_begin_line(0x446)
	.dwattr $C$DW$586, DW_AT_TI_end_line(0x47b)
$C$DW$587	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$587, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$10$B)
	.dwattr $C$DW$587, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$10$E)
$C$DW$588	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$588, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$27$B)
	.dwattr $C$DW$588, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$27$E)
$C$DW$589	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$589, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$11$B)
	.dwattr $C$DW$589, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$11$E)
$C$DW$590	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$590, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$12$B)
	.dwattr $C$DW$590, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$12$E)
$C$DW$591	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$591, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$23$B)
	.dwattr $C$DW$591, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$23$E)
$C$DW$592	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$592, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$24$B)
	.dwattr $C$DW$592, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$24$E)
$C$DW$593	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$593, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$28$B)
	.dwattr $C$DW$593, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$28$E)
$C$DW$594	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$594, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$29$B)
	.dwattr $C$DW$594, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$29$E)

$C$DW$595	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$595, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L96:3:1726009971")
	.dwattr $C$DW$595, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$595, DW_AT_TI_begin_line(0x44d)
	.dwattr $C$DW$595, DW_AT_TI_end_line(0x467)
$C$DW$596	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$596, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$13$B)
	.dwattr $C$DW$596, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$13$E)
$C$DW$597	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$597, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$15$B)
	.dwattr $C$DW$597, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$15$E)
$C$DW$598	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$598, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$17$B)
	.dwattr $C$DW$598, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$17$E)
$C$DW$599	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$599, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$22$B)
	.dwattr $C$DW$599, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$22$E)

$C$DW$600	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$600, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L97:4:1726009971")
	.dwattr $C$DW$600, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$600, DW_AT_TI_begin_line(0x452)
	.dwattr $C$DW$600, DW_AT_TI_end_line(0x455)
$C$DW$601	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$601, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$14$B)
	.dwattr $C$DW$601, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$14$E)
	.dwendtag $C$DW$600


$C$DW$602	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$602, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L99:4:1726009971")
	.dwattr $C$DW$602, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$602, DW_AT_TI_begin_line(0x456)
	.dwattr $C$DW$602, DW_AT_TI_end_line(0x45a)
$C$DW$603	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$603, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$16$B)
	.dwattr $C$DW$603, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$16$E)
	.dwendtag $C$DW$602


$C$DW$604	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$604, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L101:4:1726009971")
	.dwattr $C$DW$604, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$604, DW_AT_TI_begin_line(0x45b)
	.dwattr $C$DW$604, DW_AT_TI_end_line(0x466)
$C$DW$605	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$605, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$18$B)
	.dwattr $C$DW$605, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$18$E)
$C$DW$606	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$606, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$19$B)
	.dwattr $C$DW$606, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$19$E)
$C$DW$607	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$607, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$20$B)
	.dwattr $C$DW$607, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$20$E)
$C$DW$608	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$608, DW_AT_low_pc($C$DW$L$_lcdTextPrintDMA$21$B)
	.dwattr $C$DW$608, DW_AT_high_pc($C$DW$L$_lcdTextPrintDMA$21$E)
	.dwendtag $C$DW$604

	.dwendtag $C$DW$595

	.dwendtag $C$DW$586

	.dwendtag $C$DW$583

	.dwattr $C$DW$554, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$554, DW_AT_TI_end_line(0x47f)
	.dwattr $C$DW$554, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$554

	.sect	".text"
	.global	_lcdClearLine

$C$DW$609	.dwtag  DW_TAG_subprogram, DW_AT_name("lcdClearLine")
	.dwattr $C$DW$609, DW_AT_low_pc(_lcdClearLine)
	.dwattr $C$DW$609, DW_AT_high_pc(0x00)
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_lcdClearLine")
	.dwattr $C$DW$609, DW_AT_external
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$609, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$609, DW_AT_TI_begin_line(0x488)
	.dwattr $C$DW$609, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$609, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1163,column 1,is_stmt,address _lcdClearLine

	.dwfde $C$DW$CIE, _lcdClearLine
$C$DW$610	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ucLineNum")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_location[DW_OP_reg12]
$C$DW$611	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: lcdClearLine                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,AR1,AR2,AR3,AR4,SP,CARRY,TC1,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcdClearLine:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$612	.dwtag  DW_TAG_variable, DW_AT_name("ucLineNum")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_ucLineNum")
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$613	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$614	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$615	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$616	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$617	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T1, *SP(#1) ; |1163| 
        MOV T0, *SP(#0) ; |1163| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1169,column 5,is_stmt

        MOV T0, AR1
||      MOV #8, AR2

        CMPU AR1 < AR2, TC1 ; |1169| 
        BCC $C$L111,TC1 ; |1169| 
                                        ; branchcc occurs ; |1169| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1171,column 3,is_stmt
        MOV #-1, T0
        B $C$L112 ; |1171| 
                                        ; branch occurs ; |1171| 
$C$L111:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1174,column 2,is_stmt
        MOV #0, *SP(#2) ; |1174| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1175,column 2,is_stmt
        MOV *SP(#0), AC0 ; |1175| 
        SFTL AC0, #4, AC0 ; |1175| 
        MOV AC0, *SP(#3) ; |1175| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1176,column 2,is_stmt
        MOV #131, *SP(#4) ; |1176| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1177,column 2,is_stmt
        MOV *SP(#0), AC0 ; |1177| 
        SFTL AC0, #4, AC0 ; |1177| 
        ADD #16, AC0, AR1 ; |1177| 
        MOV AR1, *SP(#5) ; |1177| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1178,column 5,is_stmt
        MOV *SP(#2), T0 ; |1178| 
        MOV *SP(#3), T1 ; |1178| 
        MOV *SP(#4), AR0 ; |1178| 

        MOV *SP(#1), AR4 ; |1178| 
||      MOV #0, AR2

$C$DW$618	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$618, DW_AT_low_pc(0x00)
	.dwattr $C$DW$618, DW_AT_name("_drawRectangle")
	.dwattr $C$DW$618, DW_AT_TI_call

        CALL #_drawRectangle ; |1178| 
||      MOV #0, AR3

                                        ; call occurs [#_drawRectangle] ; |1178| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1180,column 2,is_stmt
        MOV #0, T0
$C$L112:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1181,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$619	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$619, DW_AT_low_pc(0x00)
	.dwattr $C$DW$619, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$609, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$609, DW_AT_TI_end_line(0x49d)
	.dwattr $C$DW$609, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$609

	.sect	".text"
	.global	_foregroundDisplay

$C$DW$620	.dwtag  DW_TAG_subprogram, DW_AT_name("foregroundDisplay")
	.dwattr $C$DW$620, DW_AT_low_pc(_foregroundDisplay)
	.dwattr $C$DW$620, DW_AT_high_pc(0x00)
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_foregroundDisplay")
	.dwattr $C$DW$620, DW_AT_external
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$620, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$620, DW_AT_TI_begin_line(0x4ad)
	.dwattr $C$DW$620, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$620, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1205,column 1,is_stmt,address _foregroundDisplay

	.dwfde $C$DW$CIE, _foregroundDisplay
$C$DW$621	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Buf")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_Buf")
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg17]
$C$DW$622	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_location[DW_OP_reg12]
$C$DW$623	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_location[DW_OP_reg13]
$C$DW$624	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg18]
$C$DW$625	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg20]
$C$DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg22]
$C$DW$627	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg24]
;*******************************************************************************
;* FUNCTION NAME: foregroundDisplay                                            *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,AR3,AR4,SP,CARRY,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_foregroundDisplay:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$628	.dwtag  DW_TAG_variable, DW_AT_name("Buf")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_Buf")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$629	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$630	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$631	.dwtag  DW_TAG_variable, DW_AT_name("width")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$632	.dwtag  DW_TAG_variable, DW_AT_name("height")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$633	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$634	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$635	.dwtag  DW_TAG_variable, DW_AT_name("stat")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_stat")
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$635, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AR4, *SP(#7) ; |1205| 
        MOV AR3, *SP(#6) ; |1205| 
        MOV AR2, *SP(#5) ; |1205| 
        MOV AR1, *SP(#4) ; |1205| 
        MOV T1, *SP(#3) ; |1205| 
        MOV T0, *SP(#2) ; |1205| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 1208,column 2,is_stmt
        MOV *SP(#4), AR1 ; |1208| 
        MOV *SP(#2), T0 ; |1208| 
        MOV *SP(#3), T1 ; |1208| 
        MOV *SP(#7), AR2 ; |1208| 
        ADD *SP(#2), AR1, AR0 ; |1208| 
        MOV *SP(#5), AR1 ; |1208| 
        ADD *SP(#3), AR1, AR1 ; |1208| 
$C$DW$636	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$636, DW_AT_low_pc(0x00)
	.dwattr $C$DW$636, DW_AT_name("_windowSetup")
	.dwattr $C$DW$636, DW_AT_TI_call
        CALL #_windowSetup ; |1208| 
                                        ; call occurs [#_windowSetup] ; |1208| 
        MOV T0, *SP(#8) ; |1208| 
        BCC $C$L113,T0 != #0 ; |1208| 
                                        ; branchcc occurs ; |1208| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1210,column 3,is_stmt
	.dwpsn	file "./telecom/lcdc_panel.c",line 1213,column 2,is_stmt
        MOV *SP(#7), T1 ; |1213| 
        MOV #92, T0 ; |1213| 
$C$DW$637	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$637, DW_AT_low_pc(0x00)
	.dwattr $C$DW$637, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$637, DW_AT_TI_call
        CALL #_cmdWrite ; |1213| 
                                        ; call occurs [#_cmdWrite] ; |1213| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1215,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#6), T0 ; |1215| 
$C$DW$638	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$638, DW_AT_low_pc(0x00)
	.dwattr $C$DW$638, DW_AT_name("_bufferDisplay")
	.dwattr $C$DW$638, DW_AT_TI_call
        CALL #_bufferDisplay ; |1215| 
                                        ; call occurs [#_bufferDisplay] ; |1215| 
        MOV T0, *SP(#8) ; |1215| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1216,column 2,is_stmt
$C$L113:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1217,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$639	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$639, DW_AT_low_pc(0x00)
	.dwattr $C$DW$639, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$620, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$620, DW_AT_TI_end_line(0x4c1)
	.dwattr $C$DW$620, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$620

	.sect	".text"
	.global	_bufferDisplay

$C$DW$640	.dwtag  DW_TAG_subprogram, DW_AT_name("bufferDisplay")
	.dwattr $C$DW$640, DW_AT_low_pc(_bufferDisplay)
	.dwattr $C$DW$640, DW_AT_high_pc(0x00)
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_bufferDisplay")
	.dwattr $C$DW$640, DW_AT_external
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$640, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$640, DW_AT_TI_begin_line(0x4ce)
	.dwattr $C$DW$640, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$640, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1233,column 1,is_stmt,address _bufferDisplay

	.dwfde $C$DW$CIE, _bufferDisplay
$C$DW$641	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Buf")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_Buf")
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg17]
$C$DW$642	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: bufferDisplay                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_bufferDisplay:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$643	.dwtag  DW_TAG_variable, DW_AT_name("Buf")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_Buf")
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$643, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$644	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$645	.dwtag  DW_TAG_variable, DW_AT_name("configDma")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_configDma")
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$645, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |1233| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./telecom/lcdc_panel.c",line 1236,column 5,is_stmt
        MOV #0, *(#_done_flag) ; |1236| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1237,column 5,is_stmt
        MOV #0, *(#_cnt_lcd) ; |1237| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1239,column 5,is_stmt
        MOV #17161, AR2 ; |1239| 
        MOV *SP(#2), AR1 ; |1239| 
        CMPU AR1 <= AR2, TC1 ; |1239| 
        BCC $C$L114,TC1 ; |1239| 
                                        ; branchcc occurs ; |1239| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1241,column 9,is_stmt
        MOV #-1, T0
        B $C$L115 ; |1241| 
                                        ; branch occurs ; |1241| 
$C$L114:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1244,column 2,is_stmt
        MOV #0, *SP(#4) ; |1244| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1245,column 2,is_stmt
        MOV #0, *SP(#5) ; |1245| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1246,column 2,is_stmt
        MOV #0, *SP(#6) ; |1246| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1247,column 2,is_stmt
        MOV #0, *SP(#7) ; |1247| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1248,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        MOV AC0, dbl(*SP(#8)) ; |1248| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1249,column 2,is_stmt
        MOV *SP(#2), AC1 ; |1249| 
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        ADD AC0, AC1 ; |1249| 
        MOV AC1, dbl(*SP(#10)) ; |1249| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1250,column 2,is_stmt
        MOV #0, AC0 ; |1250| 
        MOV AC0, dbl(*SP(#12)) ; |1250| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1251,column 2,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |1251| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1252,column 2,is_stmt
        AMAR *SP(#4), XAR1
        MOV dbl(*(#_hLcdc)), XAR0
$C$DW$646	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$646, DW_AT_low_pc(0x00)
	.dwattr $C$DW$646, DW_AT_name("_LCD_configDMA")
	.dwattr $C$DW$646, DW_AT_TI_call
        CALL #_LCD_configDMA ; |1252| 
                                        ; call occurs [#_LCD_configDMA] ; |1252| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1253,column 5,is_stmt
        MOV dbl(*(#_hLcdc)), XAR0
$C$DW$647	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$647, DW_AT_low_pc(0x00)
	.dwattr $C$DW$647, DW_AT_name("_CSL_lcdcEnableLiddDMA")
	.dwattr $C$DW$647, DW_AT_TI_call
        CALL #_CSL_lcdcEnableLiddDMA ; |1253| 
                                        ; call occurs [#_CSL_lcdcEnableLiddDMA] ; |1253| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1268,column 2,is_stmt
$C$DW$648	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$648, DW_AT_low_pc(0x00)
	.dwattr $C$DW$648, DW_AT_name("_lcd_DMAWait")
	.dwattr $C$DW$648, DW_AT_TI_call
        CALL #_lcd_DMAWait ; |1268| 
                                        ; call occurs [#_lcd_DMAWait] ; |1268| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1270,column 2,is_stmt
        MOV #0, T0
$C$L115:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1271,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$649	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$649, DW_AT_low_pc(0x00)
	.dwattr $C$DW$649, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$640, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$640, DW_AT_TI_end_line(0x4f7)
	.dwattr $C$DW$640, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$640

	.sect	".text:retain"
	.global	_lcd_isr

$C$DW$650	.dwtag  DW_TAG_subprogram, DW_AT_name("lcd_isr")
	.dwattr $C$DW$650, DW_AT_low_pc(_lcd_isr)
	.dwattr $C$DW$650, DW_AT_high_pc(0x00)
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_lcd_isr")
	.dwattr $C$DW$650, DW_AT_external
	.dwattr $C$DW$650, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$650, DW_AT_TI_begin_line(0x4ff)
	.dwattr $C$DW$650, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$650, DW_AT_TI_interrupt
	.dwattr $C$DW$650, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1280,column 1,is_stmt,address _lcd_isr

	.dwfde $C$DW$CIE, _lcd_isr
;*******************************************************************************
;* INTERRUPT NAME: lcd_isr                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR1,AR2,SP,ST1,ST2,ST3,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Save On Entry Regs : AC0,AC0,AR1,AR2                                      *
;*******************************************************************************
_lcd_isr:
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 91, -3
        AND #0xf91f, mmap(ST1_55)
        OR #0x4100, mmap(ST1_55)
        AND #0xfa00, mmap(ST2_55)
        OR #0x8000, mmap(ST2_55)
        PSH mmap(ST3_55)
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 42, -4
        PSH dbl(AC0)
	.dwcfi	cfa_offset, 5
	.dwcfi	save_reg_to_mem, 0, -5
	.dwcfi	cfa_offset, 6
	.dwcfi	save_reg_to_mem, 1, -6
        PSH mmap(AC0G)
	.dwcfi	cfa_offset, 7
	.dwcfi	save_reg_to_mem, 2, -7
        PSHBOTH XAR1
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 18, -8
        PSHBOTH XAR2
	.dwcfi	cfa_offset, 9
	.dwcfi	save_reg_to_mem, 20, -9
	.dwcfi	cfa_offset, 8
	.dwpsn	file "./telecom/lcdc_panel.c",line 1281,column 5,is_stmt
        ADD #1, *(#_cnt_lcd) ; |1281| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1283,column 5,is_stmt
        MOV *port(#11784), AR1 ; |1283| 
        AND #0x0200, AR1, AC0 ; |1283| 

        BFXTR #0xfe00, AC0, AR1 ; |1283| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |1283| 
        BCC $C$L116,TC1 ; |1283| 
                                        ; branchcc occurs ; |1283| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1285,column 3,is_stmt
        MOV *port(#11784), AR1 ; |1285| 
        BCLR @#9, AR1 ; |1285| 
        BSET @#9, AR1 ; |1285| 
        MOV AR1, *port(#11784) ; |1285| 
$C$L116:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1288,column 5,is_stmt
        MOV *port(#11784), AR1 ; |1288| 
        AND #0x0100, AR1, AC0 ; |1288| 
        BFXTR #0xff00, AC0, AR1 ; |1288| 
        CMPU AR1 != AR2, TC1 ; |1288| 
        BCC $C$L117,TC1 ; |1288| 
                                        ; branchcc occurs ; |1288| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1290,column 3,is_stmt
        MOV *port(#11784), AR1 ; |1290| 
        BCLR @#8, AR1 ; |1290| 
        BSET @#8, AR1 ; |1290| 
        MOV AR1, *port(#11784) ; |1290| 
$C$L117:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1293,column 5,is_stmt
        MOV *port(#11784), AR1 ; |1293| 
        AND #0x0001, AR1, AR1 ; |1293| 
        CMPU AR1 != AR2, TC1 ; |1293| 
        BCC $C$L118,TC1 ; |1293| 
                                        ; branchcc occurs ; |1293| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1295,column 9,is_stmt
        MOV *port(#11784), AR1 ; |1295| 
        BCLR @#0, AR1 ; |1295| 
        BSET @#0, AR1 ; |1295| 
        MOV AR1, *port(#11784) ; |1295| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1296,column 3,is_stmt
        MOV #1, *(#_done_flag) ; |1296| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1298,column 1,is_stmt
$C$L118:    
	.dwcfi	cfa_offset, 9
        POPBOTH XAR2
	.dwcfi	restore_reg, 20
	.dwcfi	cfa_offset, 8
        POPBOTH XAR1
	.dwcfi	restore_reg, 18
	.dwcfi	cfa_offset, 7
        POP mmap(AC0G)
	.dwcfi	restore_reg, 2
	.dwcfi	cfa_offset, 6
	.dwcfi	restore_reg, 1
	.dwcfi	cfa_offset, 5
        POP dbl(AC0)
	.dwcfi	restore_reg, 0
	.dwcfi	cfa_offset, 4
        POP mmap(ST3_55)
	.dwcfi	restore_reg, 43
	.dwcfi	cfa_offset, 3
$C$DW$651	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$651, DW_AT_low_pc(0x00)
	.dwattr $C$DW$651, DW_AT_TI_return
        RETI
                                        ; return occurs
	.dwattr $C$DW$650, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$650, DW_AT_TI_end_line(0x512)
	.dwattr $C$DW$650, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$650

	.sect	".text"
	.global	_lcd_DMAWait

$C$DW$652	.dwtag  DW_TAG_subprogram, DW_AT_name("lcd_DMAWait")
	.dwattr $C$DW$652, DW_AT_low_pc(_lcd_DMAWait)
	.dwattr $C$DW$652, DW_AT_high_pc(0x00)
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_lcd_DMAWait")
	.dwattr $C$DW$652, DW_AT_external
	.dwattr $C$DW$652, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$652, DW_AT_TI_begin_line(0x51a)
	.dwattr $C$DW$652, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$652, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1307,column 1,is_stmt,address _lcd_DMAWait

	.dwfde $C$DW$CIE, _lcd_DMAWait
;*******************************************************************************
;* FUNCTION NAME: lcd_DMAWait                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_lcd_DMAWait:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "./telecom/lcdc_panel.c",line 1309,column 8,is_stmt
        MOV *port(#11784), AR1 ; |1309| 
        BCC $C$L120,AR1 != #0 ; |1309| 
                                        ; branchcc occurs ; |1309| 
$C$L119:    
$C$DW$L$_lcd_DMAWait$2$B:
        MOV *port(#11784), AR1 ; |1309| 
        BCC $C$L119,AR1 == #0 ; |1309| 
                                        ; branchcc occurs ; |1309| 
$C$DW$L$_lcd_DMAWait$2$E:
$C$L120:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1314,column 2,is_stmt
        MOV #1, AR2
        AND #0xfeff, *port(#11788) ; |1314| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1319,column 5,is_stmt
$C$L121:    
$C$DW$L$_lcd_DMAWait$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1319,column 11,is_stmt
        MOV *port(#11784), AR1 ; |1319| 
        AND #0x0100, AR1, AC0 ; |1319| 
        BFXTR #0xff00, AC0, AR1 ; |1319| 
        CMPU AR1 != AR2, TC1 ; |1319| 
        BCC $C$L121,TC1 ; |1319| 
                                        ; branchcc occurs ; |1319| 
$C$DW$L$_lcd_DMAWait$4$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1324,column 2,is_stmt
        MOV *port(#11784), AR1 ; |1324| 
        BCLR @#8, AR1 ; |1324| 
        BSET @#8, AR1 ; |1324| 
        MOV AR1, *port(#11784) ; |1324| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1327,column 5,is_stmt
        MOV *port(#11840), AR1 ; |1327| 
        AND #0x0001, AR1, AR1 ; |1327| 
        CMPU AR1 != AR2, TC1 ; |1327| 
        BCC $C$L123,TC1 ; |1327| 
                                        ; branchcc occurs ; |1327| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1329,column 9,is_stmt
$C$L122:    
$C$DW$L$_lcd_DMAWait$7$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1329,column 15,is_stmt
        MOV *port(#11784), AR1 ; |1329| 
        AND #0x0200, AR1, AC0 ; |1329| 
        BFXTR #0xfe00, AC0, AR1 ; |1329| 
        CMPU AR1 != AR2, TC1 ; |1329| 
        BCC $C$L122,TC1 ; |1329| 
                                        ; branchcc occurs ; |1329| 
$C$DW$L$_lcd_DMAWait$7$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1333,column 9,is_stmt
        MOV *port(#11784), AR1 ; |1333| 
        BCLR @#9, AR1 ; |1333| 
        BSET @#9, AR1 ; |1333| 
        MOV AR1, *port(#11784) ; |1333| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1335,column 1,is_stmt
$C$L123:    
$C$DW$653	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$653, DW_AT_low_pc(0x00)
	.dwattr $C$DW$653, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$654	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$654, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L122:1:1726009971")
	.dwattr $C$DW$654, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$654, DW_AT_TI_begin_line(0x531)
	.dwattr $C$DW$654, DW_AT_TI_end_line(0x534)
$C$DW$655	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$655, DW_AT_low_pc($C$DW$L$_lcd_DMAWait$7$B)
	.dwattr $C$DW$655, DW_AT_high_pc($C$DW$L$_lcd_DMAWait$7$E)
	.dwendtag $C$DW$654


$C$DW$656	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$656, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L121:1:1726009971")
	.dwattr $C$DW$656, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$656, DW_AT_TI_begin_line(0x527)
	.dwattr $C$DW$656, DW_AT_TI_end_line(0x52a)
$C$DW$657	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$657, DW_AT_low_pc($C$DW$L$_lcd_DMAWait$4$B)
	.dwattr $C$DW$657, DW_AT_high_pc($C$DW$L$_lcd_DMAWait$4$E)
	.dwendtag $C$DW$656


$C$DW$658	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$658, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L119:1:1726009971")
	.dwattr $C$DW$658, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$658, DW_AT_TI_begin_line(0x51d)
	.dwattr $C$DW$658, DW_AT_TI_end_line(0x520)
$C$DW$659	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$659, DW_AT_low_pc($C$DW$L$_lcd_DMAWait$2$B)
	.dwattr $C$DW$659, DW_AT_high_pc($C$DW$L$_lcd_DMAWait$2$E)
	.dwendtag $C$DW$658

	.dwattr $C$DW$652, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$652, DW_AT_TI_end_line(0x537)
	.dwattr $C$DW$652, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$652

	.sect	".text"
	.global	_windowSetup

$C$DW$660	.dwtag  DW_TAG_subprogram, DW_AT_name("windowSetup")
	.dwattr $C$DW$660, DW_AT_low_pc(_windowSetup)
	.dwattr $C$DW$660, DW_AT_high_pc(0x00)
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_windowSetup")
	.dwattr $C$DW$660, DW_AT_external
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$660, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$660, DW_AT_TI_begin_line(0x546)
	.dwattr $C$DW$660, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$660, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1356,column 1,is_stmt,address _windowSetup

	.dwfde $C$DW$CIE, _windowSetup
$C$DW$661	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowStart")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_location[DW_OP_reg12]
$C$DW$662	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colStart")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_location[DW_OP_reg13]
$C$DW$663	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rowEnd")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_location[DW_OP_reg16]
$C$DW$664	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colEnd")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg18]
$C$DW$665	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: windowSetup                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_windowSetup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$666	.dwtag  DW_TAG_variable, DW_AT_name("rowStart")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_rowStart")
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$667	.dwtag  DW_TAG_variable, DW_AT_name("colStart")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_colStart")
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$668	.dwtag  DW_TAG_variable, DW_AT_name("rowEnd")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_rowEnd")
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$669	.dwtag  DW_TAG_variable, DW_AT_name("colEnd")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_colEnd")
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$670	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AR2, *SP(#4) ; |1356| 
        MOV AR1, *SP(#3) ; |1356| 
        MOV AR0, *SP(#2) ; |1356| 
        MOV T1, *SP(#1) ; |1356| 
        MOV T0, *SP(#0) ; |1356| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1357,column 5,is_stmt

        MOV T0, AR1 ; |1357| 
||      MOV #131, AR2 ; |1357| 

        CMPU AR1 <= AR2, TC1 ; |1357| 
        BCC $C$L124,TC1 ; |1357| 
                                        ; branchcc occurs ; |1357| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1358,column 9,is_stmt
        MOV #-1, T0
        B $C$L130 ; |1358| 
                                        ; branch occurs ; |1358| 
$C$L124:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1359,column 5,is_stmt
        MOV *SP(#1), AR1 ; |1359| 
        CMPU AR1 <= AR2, TC1 ; |1359| 
        BCC $C$L125,TC1 ; |1359| 
                                        ; branchcc occurs ; |1359| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1360,column 9,is_stmt
        MOV #-1, T0
        B $C$L130 ; |1360| 
                                        ; branch occurs ; |1360| 
$C$L125:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1361,column 5,is_stmt
        MOV *SP(#2), AR1 ; |1361| 
        CMPU AR1 <= AR2, TC1 ; |1361| 
        BCC $C$L126,TC1 ; |1361| 
                                        ; branchcc occurs ; |1361| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1362,column 9,is_stmt
        MOV #-1, T0
        B $C$L130 ; |1362| 
                                        ; branch occurs ; |1362| 
$C$L126:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1363,column 5,is_stmt
        MOV *SP(#3), AR1 ; |1363| 
        CMPU AR1 <= AR2, TC1 ; |1363| 
        BCC $C$L127,TC1 ; |1363| 
                                        ; branchcc occurs ; |1363| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1364,column 9,is_stmt
        MOV #-1, T0
        B $C$L130 ; |1364| 
                                        ; branch occurs ; |1364| 
$C$L127:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1365,column 5,is_stmt

        MOV *SP(#2), AR2 ; |1365| 
||      MOV T0, AR1

        CMPU AR2 <= AR1, TC1 ; |1365| 
        BCC $C$L128,TC1 ; |1365| 
                                        ; branchcc occurs ; |1365| 
        MOV *SP(#1), AR1 ; |1365| 
        MOV *SP(#3), AR2 ; |1365| 
        CMPU AR2 > AR1, TC1 ; |1365| 
        BCC $C$L129,TC1 ; |1365| 
                                        ; branchcc occurs ; |1365| 
$C$L128:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1366,column 9,is_stmt
        MOV #-1, T0
        B $C$L130 ; |1366| 
                                        ; branch occurs ; |1366| 
$C$L129:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1368,column 5,is_stmt
        MOV *SP(#4), T0 ; |1368| 
$C$DW$671	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$671, DW_AT_low_pc(0x00)
	.dwattr $C$DW$671, DW_AT_name("_DisplayOn")
	.dwattr $C$DW$671, DW_AT_TI_call
        CALL #_DisplayOn ; |1368| 
                                        ; call occurs [#_DisplayOn] ; |1368| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1381,column 2,is_stmt
        MOV *SP(#4), T1 ; |1381| 
$C$DW$672	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$672, DW_AT_low_pc(0x00)
	.dwattr $C$DW$672, DW_AT_name("_DisplayColorMode")
	.dwattr $C$DW$672, DW_AT_TI_call

        CALL #_DisplayColorMode ; |1381| 
||      MOV #0, T0

                                        ; call occurs [#_DisplayColorMode] ; |1381| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1386,column 5,is_stmt
        MOV *SP(#1), T0 ; |1386| 
        MOV *SP(#3), T1 ; |1386| 
        MOV *SP(#4), AR0 ; |1386| 
$C$DW$673	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$673, DW_AT_low_pc(0x00)
	.dwattr $C$DW$673, DW_AT_name("_SetVerticalRAMAddress")
	.dwattr $C$DW$673, DW_AT_TI_call
        CALL #_SetVerticalRAMAddress ; |1386| 
                                        ; call occurs [#_SetVerticalRAMAddress] ; |1386| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1393,column 5,is_stmt
        MOV *SP(#0), T0 ; |1393| 
        MOV *SP(#2), T1 ; |1393| 
        MOV *SP(#4), AR0 ; |1393| 
$C$DW$674	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$674, DW_AT_low_pc(0x00)
	.dwattr $C$DW$674, DW_AT_name("_SetHorizontalRAMAddress")
	.dwattr $C$DW$674, DW_AT_TI_call
        CALL #_SetHorizontalRAMAddress ; |1393| 
                                        ; call occurs [#_SetHorizontalRAMAddress] ; |1393| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1399,column 5,is_stmt
        MOV #0, T0
$C$L130:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1400,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$675	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$675, DW_AT_low_pc(0x00)
	.dwattr $C$DW$675, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$660, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$660, DW_AT_TI_end_line(0x578)
	.dwattr $C$DW$660, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$660

	.sect	".text"
	.global	_draw_262K_colorbar

$C$DW$676	.dwtag  DW_TAG_subprogram, DW_AT_name("draw_262K_colorbar")
	.dwattr $C$DW$676, DW_AT_low_pc(_draw_262K_colorbar)
	.dwattr $C$DW$676, DW_AT_high_pc(0x00)
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_draw_262K_colorbar")
	.dwattr $C$DW$676, DW_AT_external
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$676, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$676, DW_AT_TI_begin_line(0x580)
	.dwattr $C$DW$676, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$676, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1409,column 1,is_stmt,address _draw_262K_colorbar

	.dwfde $C$DW$CIE, _draw_262K_colorbar
$C$DW$677	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: draw_262K_colorbar                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_draw_262K_colorbar:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$678	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$679	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$680	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#0) ; |1409| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1415,column 5,is_stmt
        MOV #21, T0 ; |1415| 
        MOV *SP(#0), T1 ; |1415| 
$C$DW$681	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$681, DW_AT_low_pc(0x00)
	.dwattr $C$DW$681, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$681, DW_AT_TI_call
        CALL #_cmdWrite ; |1415| 
                                        ; call occurs [#_cmdWrite] ; |1415| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1416,column 5,is_stmt
        MOV *SP(#0), T1 ; |1416| 
$C$DW$682	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$682, DW_AT_low_pc(0x00)
	.dwattr $C$DW$682, DW_AT_name("_dataWrite")
	.dwattr $C$DW$682, DW_AT_TI_call

        CALL #_dataWrite ; |1416| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1416| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1417,column 5,is_stmt
        MOV *SP(#0), T1 ; |1417| 
$C$DW$683	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$683, DW_AT_low_pc(0x00)
	.dwattr $C$DW$683, DW_AT_name("_dataWrite")
	.dwattr $C$DW$683, DW_AT_TI_call

        CALL #_dataWrite ; |1417| 
||      MOV #15, T0

                                        ; call occurs [#_dataWrite] ; |1417| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1418,column 2,is_stmt
$C$DW$684	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$684, DW_AT_low_pc(0x00)
	.dwattr $C$DW$684, DW_AT_name("_wait")
	.dwattr $C$DW$684, DW_AT_TI_call

        CALL #_wait ; |1418| 
||      MOV #10, AC0 ; |1418| 

                                        ; call occurs [#_wait] ; |1418| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1419,column 5,is_stmt
        MOV #117, T0 ; |1419| 
        MOV *SP(#0), T1 ; |1419| 
$C$DW$685	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$685, DW_AT_low_pc(0x00)
	.dwattr $C$DW$685, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$685, DW_AT_TI_call
        CALL #_cmdWrite ; |1419| 
                                        ; call occurs [#_cmdWrite] ; |1419| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1420,column 2,is_stmt
        MOV *SP(#0), T1 ; |1420| 
$C$DW$686	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$686, DW_AT_low_pc(0x00)
	.dwattr $C$DW$686, DW_AT_name("_dataWrite")
	.dwattr $C$DW$686, DW_AT_TI_call

        CALL #_dataWrite ; |1420| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1420| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1421,column 5,is_stmt
        MOV #127, T0 ; |1421| 
        MOV *SP(#0), T1 ; |1421| 
$C$DW$687	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$687, DW_AT_low_pc(0x00)
	.dwattr $C$DW$687, DW_AT_name("_dataWrite")
	.dwattr $C$DW$687, DW_AT_TI_call
        CALL #_dataWrite ; |1421| 
                                        ; call occurs [#_dataWrite] ; |1421| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1422,column 2,is_stmt
$C$DW$688	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$688, DW_AT_low_pc(0x00)
	.dwattr $C$DW$688, DW_AT_name("_wait")
	.dwattr $C$DW$688, DW_AT_TI_call

        CALL #_wait ; |1422| 
||      MOV #10, AC0 ; |1422| 

                                        ; call occurs [#_wait] ; |1422| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1423,column 5,is_stmt
        MOV #92, T0 ; |1423| 
        MOV *SP(#0), T1 ; |1423| 
$C$DW$689	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$689, DW_AT_low_pc(0x00)
	.dwattr $C$DW$689, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$689, DW_AT_TI_call
        CALL #_cmdWrite ; |1423| 
                                        ; call occurs [#_cmdWrite] ; |1423| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1425,column 6,is_stmt
        MOV #0, *SP(#1) ; |1425| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1425,column 10,is_stmt
        MOV #32, AR2 ; |1425| 
        MOV *SP(#1), AR1 ; |1425| 
        CMPU AR1 >= AR2, TC1 ; |1425| 
        BCC $C$L134,TC1 ; |1425| 
                                        ; branchcc occurs ; |1425| 
$C$L131:    
$C$DW$L$_draw_262K_colorbar$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1427,column 7,is_stmt
        MOV #0, *SP(#2) ; |1427| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1427,column 11,is_stmt
        MOV #128, AR2 ; |1427| 
        MOV *SP(#2), AR1 ; |1427| 
        CMPU AR1 >= AR2, TC1 ; |1427| 
        BCC $C$L133,TC1 ; |1427| 
                                        ; branchcc occurs ; |1427| 
$C$DW$L$_draw_262K_colorbar$2$E:
$C$L132:    
$C$DW$L$_draw_262K_colorbar$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1429,column 4,is_stmt
        MOV *SP(#0), T1 ; |1429| 
$C$DW$690	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$690, DW_AT_low_pc(0x00)
	.dwattr $C$DW$690, DW_AT_name("_dataWrite")
	.dwattr $C$DW$690, DW_AT_TI_call

        CALL #_dataWrite ; |1429| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1429| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1430,column 4,is_stmt
        MOV *SP(#0), T1 ; |1430| 
$C$DW$691	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$691, DW_AT_low_pc(0x00)
	.dwattr $C$DW$691, DW_AT_name("_dataWrite")
	.dwattr $C$DW$691, DW_AT_TI_call
        CALL #_dataWrite ; |1430| 
                                        ; call occurs [#_dataWrite] ; |1430| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1431,column 4,is_stmt
        MOV *SP(#0), T1 ; |1431| 
$C$DW$692	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$692, DW_AT_low_pc(0x00)
	.dwattr $C$DW$692, DW_AT_name("_dataWrite")
	.dwattr $C$DW$692, DW_AT_TI_call
        CALL #_dataWrite ; |1431| 
                                        ; call occurs [#_dataWrite] ; |1431| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1427,column 17,is_stmt
        ADD #1, *SP(#2) ; |1427| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1427,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1427| 
        CMPU AR1 < AR2, TC1 ; |1427| 
        BCC $C$L132,TC1 ; |1427| 
                                        ; branchcc occurs ; |1427| 
$C$DW$L$_draw_262K_colorbar$3$E:
$C$L133:    
$C$DW$L$_draw_262K_colorbar$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1425,column 15,is_stmt
        ADD #1, *SP(#1) ; |1425| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1425,column 10,is_stmt
        MOV #32, AR2 ; |1425| 
        MOV *SP(#1), AR1 ; |1425| 
        CMPU AR1 < AR2, TC1 ; |1425| 
        BCC $C$L131,TC1 ; |1425| 
                                        ; branchcc occurs ; |1425| 
$C$DW$L$_draw_262K_colorbar$4$E:
$C$L134:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1436,column 5,is_stmt
        MOV *SP(#0), T1 ; |1436| 
        MOV #21, T0 ; |1436| 
$C$DW$693	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$693, DW_AT_low_pc(0x00)
	.dwattr $C$DW$693, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$693, DW_AT_TI_call
        CALL #_cmdWrite ; |1436| 
                                        ; call occurs [#_cmdWrite] ; |1436| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1437,column 5,is_stmt
        MOV #16, T0 ; |1437| 
        MOV *SP(#0), T1 ; |1437| 
$C$DW$694	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$694, DW_AT_low_pc(0x00)
	.dwattr $C$DW$694, DW_AT_name("_dataWrite")
	.dwattr $C$DW$694, DW_AT_TI_call
        CALL #_dataWrite ; |1437| 
                                        ; call occurs [#_dataWrite] ; |1437| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1438,column 5,is_stmt
        MOV #31, T0 ; |1438| 
        MOV *SP(#0), T1 ; |1438| 
$C$DW$695	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$695, DW_AT_low_pc(0x00)
	.dwattr $C$DW$695, DW_AT_name("_dataWrite")
	.dwattr $C$DW$695, DW_AT_TI_call
        CALL #_dataWrite ; |1438| 
                                        ; call occurs [#_dataWrite] ; |1438| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1439,column 2,is_stmt
$C$DW$696	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$696, DW_AT_low_pc(0x00)
	.dwattr $C$DW$696, DW_AT_name("_wait")
	.dwattr $C$DW$696, DW_AT_TI_call

        CALL #_wait ; |1439| 
||      MOV #10, AC0 ; |1439| 

                                        ; call occurs [#_wait] ; |1439| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1440,column 5,is_stmt
        MOV #117, T0 ; |1440| 
        MOV *SP(#0), T1 ; |1440| 
$C$DW$697	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$697, DW_AT_low_pc(0x00)
	.dwattr $C$DW$697, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$697, DW_AT_TI_call
        CALL #_cmdWrite ; |1440| 
                                        ; call occurs [#_cmdWrite] ; |1440| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1441,column 2,is_stmt
        MOV *SP(#0), T1 ; |1441| 
$C$DW$698	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$698, DW_AT_low_pc(0x00)
	.dwattr $C$DW$698, DW_AT_name("_dataWrite")
	.dwattr $C$DW$698, DW_AT_TI_call

        CALL #_dataWrite ; |1441| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1441| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1442,column 5,is_stmt
        MOV #127, T0 ; |1442| 
        MOV *SP(#0), T1 ; |1442| 
$C$DW$699	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$699, DW_AT_low_pc(0x00)
	.dwattr $C$DW$699, DW_AT_name("_dataWrite")
	.dwattr $C$DW$699, DW_AT_TI_call
        CALL #_dataWrite ; |1442| 
                                        ; call occurs [#_dataWrite] ; |1442| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1443,column 2,is_stmt
$C$DW$700	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$700, DW_AT_low_pc(0x00)
	.dwattr $C$DW$700, DW_AT_name("_wait")
	.dwattr $C$DW$700, DW_AT_TI_call

        CALL #_wait ; |1443| 
||      MOV #10, AC0 ; |1443| 

                                        ; call occurs [#_wait] ; |1443| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1444,column 5,is_stmt
        MOV #92, T0 ; |1444| 
        MOV *SP(#0), T1 ; |1444| 
$C$DW$701	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$701, DW_AT_low_pc(0x00)
	.dwattr $C$DW$701, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$701, DW_AT_TI_call
        CALL #_cmdWrite ; |1444| 
                                        ; call occurs [#_cmdWrite] ; |1444| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1446,column 6,is_stmt
        MOV #0, *SP(#1) ; |1446| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1446,column 10,is_stmt
        MOV #32, AR2 ; |1446| 
        MOV *SP(#1), AR1 ; |1446| 
        CMPU AR1 >= AR2, TC1 ; |1446| 
        BCC $C$L138,TC1 ; |1446| 
                                        ; branchcc occurs ; |1446| 
$C$L135:    
$C$DW$L$_draw_262K_colorbar$6$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1448,column 7,is_stmt
        MOV #0, *SP(#2) ; |1448| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1448,column 11,is_stmt
        MOV #128, AR2 ; |1448| 
        MOV *SP(#2), AR1 ; |1448| 
        CMPU AR1 >= AR2, TC1 ; |1448| 
        BCC $C$L137,TC1 ; |1448| 
                                        ; branchcc occurs ; |1448| 
$C$DW$L$_draw_262K_colorbar$6$E:
$C$L136:    
$C$DW$L$_draw_262K_colorbar$7$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1450,column 4,is_stmt
        MOV *SP(#0), T1 ; |1450| 
$C$DW$702	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$702, DW_AT_low_pc(0x00)
	.dwattr $C$DW$702, DW_AT_name("_dataWrite")
	.dwattr $C$DW$702, DW_AT_TI_call

        CALL #_dataWrite ; |1450| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1450| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1451,column 4,is_stmt
        MOV *SP(#0), T1 ; |1451| 
$C$DW$703	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$703, DW_AT_low_pc(0x00)
	.dwattr $C$DW$703, DW_AT_name("_dataWrite")
	.dwattr $C$DW$703, DW_AT_TI_call
        CALL #_dataWrite ; |1451| 
                                        ; call occurs [#_dataWrite] ; |1451| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1452,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1452| 
        MOV *SP(#0), T1 ; |1452| 
        BFXTR #0xfffe, AC0, T0 ; |1452| 
$C$DW$704	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$704, DW_AT_low_pc(0x00)
	.dwattr $C$DW$704, DW_AT_name("_dataWrite")
	.dwattr $C$DW$704, DW_AT_TI_call
        CALL #_dataWrite ; |1452| 
                                        ; call occurs [#_dataWrite] ; |1452| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1448,column 17,is_stmt
        ADD #1, *SP(#2) ; |1448| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1448,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1448| 
        CMPU AR1 < AR2, TC1 ; |1448| 
        BCC $C$L136,TC1 ; |1448| 
                                        ; branchcc occurs ; |1448| 
$C$DW$L$_draw_262K_colorbar$7$E:
$C$L137:    
$C$DW$L$_draw_262K_colorbar$8$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1446,column 15,is_stmt
        ADD #1, *SP(#1) ; |1446| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1446,column 10,is_stmt
        MOV #32, AR2 ; |1446| 
        MOV *SP(#1), AR1 ; |1446| 
        CMPU AR1 < AR2, TC1 ; |1446| 
        BCC $C$L135,TC1 ; |1446| 
                                        ; branchcc occurs ; |1446| 
$C$DW$L$_draw_262K_colorbar$8$E:
$C$L138:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1457,column 5,is_stmt
        MOV *SP(#0), T1 ; |1457| 
        MOV #21, T0 ; |1457| 
$C$DW$705	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$705, DW_AT_low_pc(0x00)
	.dwattr $C$DW$705, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$705, DW_AT_TI_call
        CALL #_cmdWrite ; |1457| 
                                        ; call occurs [#_cmdWrite] ; |1457| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1458,column 5,is_stmt
        MOV #32, T0 ; |1458| 
        MOV *SP(#0), T1 ; |1458| 
$C$DW$706	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$706, DW_AT_low_pc(0x00)
	.dwattr $C$DW$706, DW_AT_name("_dataWrite")
	.dwattr $C$DW$706, DW_AT_TI_call
        CALL #_dataWrite ; |1458| 
                                        ; call occurs [#_dataWrite] ; |1458| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1459,column 5,is_stmt
        MOV #47, T0 ; |1459| 
        MOV *SP(#0), T1 ; |1459| 
$C$DW$707	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$707, DW_AT_low_pc(0x00)
	.dwattr $C$DW$707, DW_AT_name("_dataWrite")
	.dwattr $C$DW$707, DW_AT_TI_call
        CALL #_dataWrite ; |1459| 
                                        ; call occurs [#_dataWrite] ; |1459| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1460,column 2,is_stmt
$C$DW$708	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$708, DW_AT_low_pc(0x00)
	.dwattr $C$DW$708, DW_AT_name("_wait")
	.dwattr $C$DW$708, DW_AT_TI_call

        CALL #_wait ; |1460| 
||      MOV #10, AC0 ; |1460| 

                                        ; call occurs [#_wait] ; |1460| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1461,column 5,is_stmt
        MOV #117, T0 ; |1461| 
        MOV *SP(#0), T1 ; |1461| 
$C$DW$709	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$709, DW_AT_low_pc(0x00)
	.dwattr $C$DW$709, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$709, DW_AT_TI_call
        CALL #_cmdWrite ; |1461| 
                                        ; call occurs [#_cmdWrite] ; |1461| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1462,column 2,is_stmt
        MOV *SP(#0), T1 ; |1462| 
$C$DW$710	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$710, DW_AT_low_pc(0x00)
	.dwattr $C$DW$710, DW_AT_name("_dataWrite")
	.dwattr $C$DW$710, DW_AT_TI_call

        CALL #_dataWrite ; |1462| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1462| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1463,column 5,is_stmt
        MOV #127, T0 ; |1463| 
        MOV *SP(#0), T1 ; |1463| 
$C$DW$711	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$711, DW_AT_low_pc(0x00)
	.dwattr $C$DW$711, DW_AT_name("_dataWrite")
	.dwattr $C$DW$711, DW_AT_TI_call
        CALL #_dataWrite ; |1463| 
                                        ; call occurs [#_dataWrite] ; |1463| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1464,column 2,is_stmt
$C$DW$712	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$712, DW_AT_low_pc(0x00)
	.dwattr $C$DW$712, DW_AT_name("_wait")
	.dwattr $C$DW$712, DW_AT_TI_call

        CALL #_wait ; |1464| 
||      MOV #10, AC0 ; |1464| 

                                        ; call occurs [#_wait] ; |1464| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1465,column 5,is_stmt
        MOV #92, T0 ; |1465| 
        MOV *SP(#0), T1 ; |1465| 
$C$DW$713	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$713, DW_AT_low_pc(0x00)
	.dwattr $C$DW$713, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$713, DW_AT_TI_call
        CALL #_cmdWrite ; |1465| 
                                        ; call occurs [#_cmdWrite] ; |1465| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1467,column 6,is_stmt
        MOV #0, *SP(#1) ; |1467| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1467,column 10,is_stmt
        MOV #32, AR2 ; |1467| 
        MOV *SP(#1), AR1 ; |1467| 
        CMPU AR1 >= AR2, TC1 ; |1467| 
        BCC $C$L142,TC1 ; |1467| 
                                        ; branchcc occurs ; |1467| 
$C$L139:    
$C$DW$L$_draw_262K_colorbar$10$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1469,column 7,is_stmt
        MOV #0, *SP(#2) ; |1469| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1469,column 11,is_stmt
        MOV #128, AR2 ; |1469| 
        MOV *SP(#2), AR1 ; |1469| 
        CMPU AR1 >= AR2, TC1 ; |1469| 
        BCC $C$L141,TC1 ; |1469| 
                                        ; branchcc occurs ; |1469| 
$C$DW$L$_draw_262K_colorbar$10$E:
$C$L140:    
$C$DW$L$_draw_262K_colorbar$11$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1471,column 4,is_stmt

        MOV *SP(#0), T1 ; |1471| 
||      MOV AR1, AC0

        BFXTR #0xfffe, AC0, T0 ; |1471| 
$C$DW$714	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$714, DW_AT_low_pc(0x00)
	.dwattr $C$DW$714, DW_AT_name("_dataWrite")
	.dwattr $C$DW$714, DW_AT_TI_call
        CALL #_dataWrite ; |1471| 
                                        ; call occurs [#_dataWrite] ; |1471| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1472,column 4,is_stmt
        MOV *SP(#0), T1 ; |1472| 
$C$DW$715	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$715, DW_AT_low_pc(0x00)
	.dwattr $C$DW$715, DW_AT_name("_dataWrite")
	.dwattr $C$DW$715, DW_AT_TI_call

        CALL #_dataWrite ; |1472| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1472| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1473,column 4,is_stmt
        MOV *SP(#0), T1 ; |1473| 
$C$DW$716	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$716, DW_AT_low_pc(0x00)
	.dwattr $C$DW$716, DW_AT_name("_dataWrite")
	.dwattr $C$DW$716, DW_AT_TI_call
        CALL #_dataWrite ; |1473| 
                                        ; call occurs [#_dataWrite] ; |1473| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1469,column 17,is_stmt
        ADD #1, *SP(#2) ; |1469| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1469,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1469| 
        CMPU AR1 < AR2, TC1 ; |1469| 
        BCC $C$L140,TC1 ; |1469| 
                                        ; branchcc occurs ; |1469| 
$C$DW$L$_draw_262K_colorbar$11$E:
$C$L141:    
$C$DW$L$_draw_262K_colorbar$12$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1467,column 15,is_stmt
        ADD #1, *SP(#1) ; |1467| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1467,column 10,is_stmt
        MOV #32, AR2 ; |1467| 
        MOV *SP(#1), AR1 ; |1467| 
        CMPU AR1 < AR2, TC1 ; |1467| 
        BCC $C$L139,TC1 ; |1467| 
                                        ; branchcc occurs ; |1467| 
$C$DW$L$_draw_262K_colorbar$12$E:
$C$L142:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1478,column 5,is_stmt
        MOV *SP(#0), T1 ; |1478| 
        MOV #21, T0 ; |1478| 
$C$DW$717	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$717, DW_AT_low_pc(0x00)
	.dwattr $C$DW$717, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$717, DW_AT_TI_call
        CALL #_cmdWrite ; |1478| 
                                        ; call occurs [#_cmdWrite] ; |1478| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1479,column 5,is_stmt
        MOV #48, T0 ; |1479| 
        MOV *SP(#0), T1 ; |1479| 
$C$DW$718	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$718, DW_AT_low_pc(0x00)
	.dwattr $C$DW$718, DW_AT_name("_dataWrite")
	.dwattr $C$DW$718, DW_AT_TI_call
        CALL #_dataWrite ; |1479| 
                                        ; call occurs [#_dataWrite] ; |1479| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1480,column 5,is_stmt
        MOV #63, T0 ; |1480| 
        MOV *SP(#0), T1 ; |1480| 
$C$DW$719	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$719, DW_AT_low_pc(0x00)
	.dwattr $C$DW$719, DW_AT_name("_dataWrite")
	.dwattr $C$DW$719, DW_AT_TI_call
        CALL #_dataWrite ; |1480| 
                                        ; call occurs [#_dataWrite] ; |1480| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1481,column 2,is_stmt
$C$DW$720	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$720, DW_AT_low_pc(0x00)
	.dwattr $C$DW$720, DW_AT_name("_wait")
	.dwattr $C$DW$720, DW_AT_TI_call

        CALL #_wait ; |1481| 
||      MOV #10, AC0 ; |1481| 

                                        ; call occurs [#_wait] ; |1481| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1482,column 5,is_stmt
        MOV #117, T0 ; |1482| 
        MOV *SP(#0), T1 ; |1482| 
$C$DW$721	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$721, DW_AT_low_pc(0x00)
	.dwattr $C$DW$721, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$721, DW_AT_TI_call
        CALL #_cmdWrite ; |1482| 
                                        ; call occurs [#_cmdWrite] ; |1482| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1483,column 2,is_stmt
        MOV *SP(#0), T1 ; |1483| 
$C$DW$722	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$722, DW_AT_low_pc(0x00)
	.dwattr $C$DW$722, DW_AT_name("_dataWrite")
	.dwattr $C$DW$722, DW_AT_TI_call

        CALL #_dataWrite ; |1483| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1483| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1484,column 5,is_stmt
        MOV #127, T0 ; |1484| 
        MOV *SP(#0), T1 ; |1484| 
$C$DW$723	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$723, DW_AT_low_pc(0x00)
	.dwattr $C$DW$723, DW_AT_name("_dataWrite")
	.dwattr $C$DW$723, DW_AT_TI_call
        CALL #_dataWrite ; |1484| 
                                        ; call occurs [#_dataWrite] ; |1484| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1485,column 2,is_stmt
$C$DW$724	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$724, DW_AT_low_pc(0x00)
	.dwattr $C$DW$724, DW_AT_name("_wait")
	.dwattr $C$DW$724, DW_AT_TI_call

        CALL #_wait ; |1485| 
||      MOV #10, AC0 ; |1485| 

                                        ; call occurs [#_wait] ; |1485| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1486,column 5,is_stmt
        MOV #92, T0 ; |1486| 
        MOV *SP(#0), T1 ; |1486| 
$C$DW$725	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$725, DW_AT_low_pc(0x00)
	.dwattr $C$DW$725, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$725, DW_AT_TI_call
        CALL #_cmdWrite ; |1486| 
                                        ; call occurs [#_cmdWrite] ; |1486| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1488,column 6,is_stmt
        MOV #0, *SP(#1) ; |1488| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1488,column 10,is_stmt
        MOV #32, AR2 ; |1488| 
        MOV *SP(#1), AR1 ; |1488| 
        CMPU AR1 >= AR2, TC1 ; |1488| 
        BCC $C$L146,TC1 ; |1488| 
                                        ; branchcc occurs ; |1488| 
$C$L143:    
$C$DW$L$_draw_262K_colorbar$14$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1490,column 7,is_stmt
        MOV #0, *SP(#2) ; |1490| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1490,column 11,is_stmt
        MOV #128, AR2 ; |1490| 
        MOV *SP(#2), AR1 ; |1490| 
        CMPU AR1 >= AR2, TC1 ; |1490| 
        BCC $C$L145,TC1 ; |1490| 
                                        ; branchcc occurs ; |1490| 
$C$DW$L$_draw_262K_colorbar$14$E:
$C$L144:    
$C$DW$L$_draw_262K_colorbar$15$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1492,column 4,is_stmt

        MOV *SP(#0), T1 ; |1492| 
||      MOV AR1, AC0

        BFXTR #0xfffe, AC0, T0 ; |1492| 
$C$DW$726	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$726, DW_AT_low_pc(0x00)
	.dwattr $C$DW$726, DW_AT_name("_dataWrite")
	.dwattr $C$DW$726, DW_AT_TI_call
        CALL #_dataWrite ; |1492| 
                                        ; call occurs [#_dataWrite] ; |1492| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1493,column 4,is_stmt
        MOV *SP(#0), T1 ; |1493| 
$C$DW$727	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$727, DW_AT_low_pc(0x00)
	.dwattr $C$DW$727, DW_AT_name("_dataWrite")
	.dwattr $C$DW$727, DW_AT_TI_call

        CALL #_dataWrite ; |1493| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1493| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1494,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1494| 
        MOV *SP(#0), T1 ; |1494| 
        BFXTR #0xfffe, AC0, T0 ; |1494| 
$C$DW$728	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$728, DW_AT_low_pc(0x00)
	.dwattr $C$DW$728, DW_AT_name("_dataWrite")
	.dwattr $C$DW$728, DW_AT_TI_call
        CALL #_dataWrite ; |1494| 
                                        ; call occurs [#_dataWrite] ; |1494| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1490,column 17,is_stmt
        ADD #1, *SP(#2) ; |1490| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1490,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1490| 
        CMPU AR1 < AR2, TC1 ; |1490| 
        BCC $C$L144,TC1 ; |1490| 
                                        ; branchcc occurs ; |1490| 
$C$DW$L$_draw_262K_colorbar$15$E:
$C$L145:    
$C$DW$L$_draw_262K_colorbar$16$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1488,column 15,is_stmt
        ADD #1, *SP(#1) ; |1488| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1488,column 10,is_stmt
        MOV #32, AR2 ; |1488| 
        MOV *SP(#1), AR1 ; |1488| 
        CMPU AR1 < AR2, TC1 ; |1488| 
        BCC $C$L143,TC1 ; |1488| 
                                        ; branchcc occurs ; |1488| 
$C$DW$L$_draw_262K_colorbar$16$E:
$C$L146:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1499,column 5,is_stmt
        MOV *SP(#0), T1 ; |1499| 
        MOV #21, T0 ; |1499| 
$C$DW$729	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$729, DW_AT_low_pc(0x00)
	.dwattr $C$DW$729, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$729, DW_AT_TI_call
        CALL #_cmdWrite ; |1499| 
                                        ; call occurs [#_cmdWrite] ; |1499| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1500,column 5,is_stmt
        MOV #64, T0 ; |1500| 
        MOV *SP(#0), T1 ; |1500| 
$C$DW$730	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$730, DW_AT_low_pc(0x00)
	.dwattr $C$DW$730, DW_AT_name("_dataWrite")
	.dwattr $C$DW$730, DW_AT_TI_call
        CALL #_dataWrite ; |1500| 
                                        ; call occurs [#_dataWrite] ; |1500| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1501,column 5,is_stmt
        MOV #79, T0 ; |1501| 
        MOV *SP(#0), T1 ; |1501| 
$C$DW$731	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$731, DW_AT_low_pc(0x00)
	.dwattr $C$DW$731, DW_AT_name("_dataWrite")
	.dwattr $C$DW$731, DW_AT_TI_call
        CALL #_dataWrite ; |1501| 
                                        ; call occurs [#_dataWrite] ; |1501| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1502,column 2,is_stmt
$C$DW$732	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$732, DW_AT_low_pc(0x00)
	.dwattr $C$DW$732, DW_AT_name("_wait")
	.dwattr $C$DW$732, DW_AT_TI_call

        CALL #_wait ; |1502| 
||      MOV #10, AC0 ; |1502| 

                                        ; call occurs [#_wait] ; |1502| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1503,column 5,is_stmt
        MOV #117, T0 ; |1503| 
        MOV *SP(#0), T1 ; |1503| 
$C$DW$733	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$733, DW_AT_low_pc(0x00)
	.dwattr $C$DW$733, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$733, DW_AT_TI_call
        CALL #_cmdWrite ; |1503| 
                                        ; call occurs [#_cmdWrite] ; |1503| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1504,column 2,is_stmt
        MOV *SP(#0), T1 ; |1504| 
$C$DW$734	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$734, DW_AT_low_pc(0x00)
	.dwattr $C$DW$734, DW_AT_name("_dataWrite")
	.dwattr $C$DW$734, DW_AT_TI_call

        CALL #_dataWrite ; |1504| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1504| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1505,column 5,is_stmt
        MOV #127, T0 ; |1505| 
        MOV *SP(#0), T1 ; |1505| 
$C$DW$735	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$735, DW_AT_low_pc(0x00)
	.dwattr $C$DW$735, DW_AT_name("_dataWrite")
	.dwattr $C$DW$735, DW_AT_TI_call
        CALL #_dataWrite ; |1505| 
                                        ; call occurs [#_dataWrite] ; |1505| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1506,column 2,is_stmt
$C$DW$736	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$736, DW_AT_low_pc(0x00)
	.dwattr $C$DW$736, DW_AT_name("_wait")
	.dwattr $C$DW$736, DW_AT_TI_call

        CALL #_wait ; |1506| 
||      MOV #10, AC0 ; |1506| 

                                        ; call occurs [#_wait] ; |1506| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1507,column 5,is_stmt
        MOV #92, T0 ; |1507| 
        MOV *SP(#0), T1 ; |1507| 
$C$DW$737	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$737, DW_AT_low_pc(0x00)
	.dwattr $C$DW$737, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$737, DW_AT_TI_call
        CALL #_cmdWrite ; |1507| 
                                        ; call occurs [#_cmdWrite] ; |1507| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1509,column 6,is_stmt
        MOV #0, *SP(#1) ; |1509| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1509,column 10,is_stmt
        MOV #32, AR2 ; |1509| 
        MOV *SP(#1), AR1 ; |1509| 
        CMPU AR1 >= AR2, TC1 ; |1509| 
        BCC $C$L150,TC1 ; |1509| 
                                        ; branchcc occurs ; |1509| 
$C$L147:    
$C$DW$L$_draw_262K_colorbar$18$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1511,column 7,is_stmt
        MOV #0, *SP(#2) ; |1511| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1511,column 11,is_stmt
        MOV #128, AR2 ; |1511| 
        MOV *SP(#2), AR1 ; |1511| 
        CMPU AR1 >= AR2, TC1 ; |1511| 
        BCC $C$L149,TC1 ; |1511| 
                                        ; branchcc occurs ; |1511| 
$C$DW$L$_draw_262K_colorbar$18$E:
$C$L148:    
$C$DW$L$_draw_262K_colorbar$19$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1513,column 4,is_stmt
        MOV *SP(#0), T1 ; |1513| 
$C$DW$738	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$738, DW_AT_low_pc(0x00)
	.dwattr $C$DW$738, DW_AT_name("_dataWrite")
	.dwattr $C$DW$738, DW_AT_TI_call

        CALL #_dataWrite ; |1513| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1513| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1514,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1514| 
        MOV *SP(#0), T1 ; |1514| 
        BFXTR #0xfffe, AC0, T0 ; |1514| 
$C$DW$739	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$739, DW_AT_low_pc(0x00)
	.dwattr $C$DW$739, DW_AT_name("_dataWrite")
	.dwattr $C$DW$739, DW_AT_TI_call
        CALL #_dataWrite ; |1514| 
                                        ; call occurs [#_dataWrite] ; |1514| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1515,column 4,is_stmt
        MOV *SP(#0), T1 ; |1515| 
$C$DW$740	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$740, DW_AT_low_pc(0x00)
	.dwattr $C$DW$740, DW_AT_name("_dataWrite")
	.dwattr $C$DW$740, DW_AT_TI_call

        CALL #_dataWrite ; |1515| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1515| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1511,column 17,is_stmt
        ADD #1, *SP(#2) ; |1511| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1511,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1511| 
        CMPU AR1 < AR2, TC1 ; |1511| 
        BCC $C$L148,TC1 ; |1511| 
                                        ; branchcc occurs ; |1511| 
$C$DW$L$_draw_262K_colorbar$19$E:
$C$L149:    
$C$DW$L$_draw_262K_colorbar$20$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1509,column 15,is_stmt
        ADD #1, *SP(#1) ; |1509| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1509,column 10,is_stmt
        MOV #32, AR2 ; |1509| 
        MOV *SP(#1), AR1 ; |1509| 
        CMPU AR1 < AR2, TC1 ; |1509| 
        BCC $C$L147,TC1 ; |1509| 
                                        ; branchcc occurs ; |1509| 
$C$DW$L$_draw_262K_colorbar$20$E:
$C$L150:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1520,column 5,is_stmt
        MOV *SP(#0), T1 ; |1520| 
        MOV #21, T0 ; |1520| 
$C$DW$741	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$741, DW_AT_low_pc(0x00)
	.dwattr $C$DW$741, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$741, DW_AT_TI_call
        CALL #_cmdWrite ; |1520| 
                                        ; call occurs [#_cmdWrite] ; |1520| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1521,column 5,is_stmt
        MOV #80, T0 ; |1521| 
        MOV *SP(#0), T1 ; |1521| 
$C$DW$742	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$742, DW_AT_low_pc(0x00)
	.dwattr $C$DW$742, DW_AT_name("_dataWrite")
	.dwattr $C$DW$742, DW_AT_TI_call
        CALL #_dataWrite ; |1521| 
                                        ; call occurs [#_dataWrite] ; |1521| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1522,column 5,is_stmt
        MOV #95, T0 ; |1522| 
        MOV *SP(#0), T1 ; |1522| 
$C$DW$743	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$743, DW_AT_low_pc(0x00)
	.dwattr $C$DW$743, DW_AT_name("_dataWrite")
	.dwattr $C$DW$743, DW_AT_TI_call
        CALL #_dataWrite ; |1522| 
                                        ; call occurs [#_dataWrite] ; |1522| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1523,column 2,is_stmt
$C$DW$744	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$744, DW_AT_low_pc(0x00)
	.dwattr $C$DW$744, DW_AT_name("_wait")
	.dwattr $C$DW$744, DW_AT_TI_call

        CALL #_wait ; |1523| 
||      MOV #10, AC0 ; |1523| 

                                        ; call occurs [#_wait] ; |1523| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1524,column 5,is_stmt
        MOV #117, T0 ; |1524| 
        MOV *SP(#0), T1 ; |1524| 
$C$DW$745	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$745, DW_AT_low_pc(0x00)
	.dwattr $C$DW$745, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$745, DW_AT_TI_call
        CALL #_cmdWrite ; |1524| 
                                        ; call occurs [#_cmdWrite] ; |1524| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1525,column 2,is_stmt
        MOV *SP(#0), T1 ; |1525| 
$C$DW$746	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$746, DW_AT_low_pc(0x00)
	.dwattr $C$DW$746, DW_AT_name("_dataWrite")
	.dwattr $C$DW$746, DW_AT_TI_call

        CALL #_dataWrite ; |1525| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1525| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1526,column 5,is_stmt
        MOV #127, T0 ; |1526| 
        MOV *SP(#0), T1 ; |1526| 
$C$DW$747	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$747, DW_AT_low_pc(0x00)
	.dwattr $C$DW$747, DW_AT_name("_dataWrite")
	.dwattr $C$DW$747, DW_AT_TI_call
        CALL #_dataWrite ; |1526| 
                                        ; call occurs [#_dataWrite] ; |1526| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1527,column 2,is_stmt
$C$DW$748	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$748, DW_AT_low_pc(0x00)
	.dwattr $C$DW$748, DW_AT_name("_wait")
	.dwattr $C$DW$748, DW_AT_TI_call

        CALL #_wait ; |1527| 
||      MOV #10, AC0 ; |1527| 

                                        ; call occurs [#_wait] ; |1527| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1528,column 5,is_stmt
        MOV #92, T0 ; |1528| 
        MOV *SP(#0), T1 ; |1528| 
$C$DW$749	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$749, DW_AT_low_pc(0x00)
	.dwattr $C$DW$749, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$749, DW_AT_TI_call
        CALL #_cmdWrite ; |1528| 
                                        ; call occurs [#_cmdWrite] ; |1528| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1530,column 6,is_stmt
        MOV #0, *SP(#1) ; |1530| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1530,column 10,is_stmt
        MOV #32, AR2 ; |1530| 
        MOV *SP(#1), AR1 ; |1530| 
        CMPU AR1 >= AR2, TC1 ; |1530| 
        BCC $C$L154,TC1 ; |1530| 
                                        ; branchcc occurs ; |1530| 
$C$L151:    
$C$DW$L$_draw_262K_colorbar$22$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1532,column 7,is_stmt
        MOV #0, *SP(#2) ; |1532| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1532,column 11,is_stmt
        MOV #128, AR2 ; |1532| 
        MOV *SP(#2), AR1 ; |1532| 
        CMPU AR1 >= AR2, TC1 ; |1532| 
        BCC $C$L153,TC1 ; |1532| 
                                        ; branchcc occurs ; |1532| 
$C$DW$L$_draw_262K_colorbar$22$E:
$C$L152:    
$C$DW$L$_draw_262K_colorbar$23$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1534,column 4,is_stmt
        MOV *SP(#0), T1 ; |1534| 
$C$DW$750	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$750, DW_AT_low_pc(0x00)
	.dwattr $C$DW$750, DW_AT_name("_dataWrite")
	.dwattr $C$DW$750, DW_AT_TI_call

        CALL #_dataWrite ; |1534| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1534| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1535,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1535| 
        MOV *SP(#0), T1 ; |1535| 
        BFXTR #0xfffe, AC0, T0 ; |1535| 
$C$DW$751	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$751, DW_AT_low_pc(0x00)
	.dwattr $C$DW$751, DW_AT_name("_dataWrite")
	.dwattr $C$DW$751, DW_AT_TI_call
        CALL #_dataWrite ; |1535| 
                                        ; call occurs [#_dataWrite] ; |1535| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1536,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1536| 
        MOV *SP(#0), T1 ; |1536| 
        BFXTR #0xfffe, AC0, T0 ; |1536| 
$C$DW$752	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$752, DW_AT_low_pc(0x00)
	.dwattr $C$DW$752, DW_AT_name("_dataWrite")
	.dwattr $C$DW$752, DW_AT_TI_call
        CALL #_dataWrite ; |1536| 
                                        ; call occurs [#_dataWrite] ; |1536| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1532,column 17,is_stmt
        ADD #1, *SP(#2) ; |1532| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1532,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1532| 
        CMPU AR1 < AR2, TC1 ; |1532| 
        BCC $C$L152,TC1 ; |1532| 
                                        ; branchcc occurs ; |1532| 
$C$DW$L$_draw_262K_colorbar$23$E:
$C$L153:    
$C$DW$L$_draw_262K_colorbar$24$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1530,column 15,is_stmt
        ADD #1, *SP(#1) ; |1530| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1530,column 10,is_stmt
        MOV #32, AR2 ; |1530| 
        MOV *SP(#1), AR1 ; |1530| 
        CMPU AR1 < AR2, TC1 ; |1530| 
        BCC $C$L151,TC1 ; |1530| 
                                        ; branchcc occurs ; |1530| 
$C$DW$L$_draw_262K_colorbar$24$E:
$C$L154:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1541,column 5,is_stmt
        MOV *SP(#0), T1 ; |1541| 
        MOV #21, T0 ; |1541| 
$C$DW$753	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$753, DW_AT_low_pc(0x00)
	.dwattr $C$DW$753, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$753, DW_AT_TI_call
        CALL #_cmdWrite ; |1541| 
                                        ; call occurs [#_cmdWrite] ; |1541| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1542,column 5,is_stmt
        MOV #96, T0 ; |1542| 
        MOV *SP(#0), T1 ; |1542| 
$C$DW$754	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$754, DW_AT_low_pc(0x00)
	.dwattr $C$DW$754, DW_AT_name("_dataWrite")
	.dwattr $C$DW$754, DW_AT_TI_call
        CALL #_dataWrite ; |1542| 
                                        ; call occurs [#_dataWrite] ; |1542| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1543,column 5,is_stmt
        MOV #111, T0 ; |1543| 
        MOV *SP(#0), T1 ; |1543| 
$C$DW$755	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$755, DW_AT_low_pc(0x00)
	.dwattr $C$DW$755, DW_AT_name("_dataWrite")
	.dwattr $C$DW$755, DW_AT_TI_call
        CALL #_dataWrite ; |1543| 
                                        ; call occurs [#_dataWrite] ; |1543| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1544,column 2,is_stmt
$C$DW$756	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$756, DW_AT_low_pc(0x00)
	.dwattr $C$DW$756, DW_AT_name("_wait")
	.dwattr $C$DW$756, DW_AT_TI_call

        CALL #_wait ; |1544| 
||      MOV #10, AC0 ; |1544| 

                                        ; call occurs [#_wait] ; |1544| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1545,column 5,is_stmt
        MOV #117, T0 ; |1545| 
        MOV *SP(#0), T1 ; |1545| 
$C$DW$757	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$757, DW_AT_low_pc(0x00)
	.dwattr $C$DW$757, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$757, DW_AT_TI_call
        CALL #_cmdWrite ; |1545| 
                                        ; call occurs [#_cmdWrite] ; |1545| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1546,column 2,is_stmt
        MOV *SP(#0), T1 ; |1546| 
$C$DW$758	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$758, DW_AT_low_pc(0x00)
	.dwattr $C$DW$758, DW_AT_name("_dataWrite")
	.dwattr $C$DW$758, DW_AT_TI_call

        CALL #_dataWrite ; |1546| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1546| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1547,column 5,is_stmt
        MOV #127, T0 ; |1547| 
        MOV *SP(#0), T1 ; |1547| 
$C$DW$759	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$759, DW_AT_low_pc(0x00)
	.dwattr $C$DW$759, DW_AT_name("_dataWrite")
	.dwattr $C$DW$759, DW_AT_TI_call
        CALL #_dataWrite ; |1547| 
                                        ; call occurs [#_dataWrite] ; |1547| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1548,column 2,is_stmt
$C$DW$760	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$760, DW_AT_low_pc(0x00)
	.dwattr $C$DW$760, DW_AT_name("_wait")
	.dwattr $C$DW$760, DW_AT_TI_call

        CALL #_wait ; |1548| 
||      MOV #10, AC0 ; |1548| 

                                        ; call occurs [#_wait] ; |1548| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1549,column 5,is_stmt
        MOV #92, T0 ; |1549| 
        MOV *SP(#0), T1 ; |1549| 
$C$DW$761	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$761, DW_AT_low_pc(0x00)
	.dwattr $C$DW$761, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$761, DW_AT_TI_call
        CALL #_cmdWrite ; |1549| 
                                        ; call occurs [#_cmdWrite] ; |1549| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1551,column 6,is_stmt
        MOV #0, *SP(#1) ; |1551| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1551,column 10,is_stmt
        MOV #32, AR2 ; |1551| 
        MOV *SP(#1), AR1 ; |1551| 
        CMPU AR1 >= AR2, TC1 ; |1551| 
        BCC $C$L158,TC1 ; |1551| 
                                        ; branchcc occurs ; |1551| 
$C$L155:    
$C$DW$L$_draw_262K_colorbar$26$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1553,column 7,is_stmt
        MOV #0, *SP(#2) ; |1553| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1553,column 11,is_stmt
        MOV #128, AR2 ; |1553| 
        MOV *SP(#2), AR1 ; |1553| 
        CMPU AR1 >= AR2, TC1 ; |1553| 
        BCC $C$L157,TC1 ; |1553| 
                                        ; branchcc occurs ; |1553| 
$C$DW$L$_draw_262K_colorbar$26$E:
$C$L156:    
$C$DW$L$_draw_262K_colorbar$27$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1555,column 4,is_stmt

        MOV *SP(#0), T1 ; |1555| 
||      MOV AR1, AC0

        BFXTR #0xfffe, AC0, T0 ; |1555| 
$C$DW$762	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$762, DW_AT_low_pc(0x00)
	.dwattr $C$DW$762, DW_AT_name("_dataWrite")
	.dwattr $C$DW$762, DW_AT_TI_call
        CALL #_dataWrite ; |1555| 
                                        ; call occurs [#_dataWrite] ; |1555| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1556,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1556| 
        MOV *SP(#0), T1 ; |1556| 
        BFXTR #0xfffe, AC0, T0 ; |1556| 
$C$DW$763	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$763, DW_AT_low_pc(0x00)
	.dwattr $C$DW$763, DW_AT_name("_dataWrite")
	.dwattr $C$DW$763, DW_AT_TI_call
        CALL #_dataWrite ; |1556| 
                                        ; call occurs [#_dataWrite] ; |1556| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1557,column 4,is_stmt
        MOV *SP(#0), T1 ; |1557| 
$C$DW$764	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$764, DW_AT_low_pc(0x00)
	.dwattr $C$DW$764, DW_AT_name("_dataWrite")
	.dwattr $C$DW$764, DW_AT_TI_call

        CALL #_dataWrite ; |1557| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1557| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1553,column 17,is_stmt
        ADD #1, *SP(#2) ; |1553| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1553,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1553| 
        CMPU AR1 < AR2, TC1 ; |1553| 
        BCC $C$L156,TC1 ; |1553| 
                                        ; branchcc occurs ; |1553| 
$C$DW$L$_draw_262K_colorbar$27$E:
$C$L157:    
$C$DW$L$_draw_262K_colorbar$28$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1551,column 15,is_stmt
        ADD #1, *SP(#1) ; |1551| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1551,column 10,is_stmt
        MOV #32, AR2 ; |1551| 
        MOV *SP(#1), AR1 ; |1551| 
        CMPU AR1 < AR2, TC1 ; |1551| 
        BCC $C$L155,TC1 ; |1551| 
                                        ; branchcc occurs ; |1551| 
$C$DW$L$_draw_262K_colorbar$28$E:
$C$L158:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1562,column 5,is_stmt
        MOV *SP(#0), T1 ; |1562| 
        MOV #21, T0 ; |1562| 
$C$DW$765	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$765, DW_AT_low_pc(0x00)
	.dwattr $C$DW$765, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$765, DW_AT_TI_call
        CALL #_cmdWrite ; |1562| 
                                        ; call occurs [#_cmdWrite] ; |1562| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1563,column 5,is_stmt
        MOV #112, T0 ; |1563| 
        MOV *SP(#0), T1 ; |1563| 
$C$DW$766	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$766, DW_AT_low_pc(0x00)
	.dwattr $C$DW$766, DW_AT_name("_dataWrite")
	.dwattr $C$DW$766, DW_AT_TI_call
        CALL #_dataWrite ; |1563| 
                                        ; call occurs [#_dataWrite] ; |1563| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1564,column 5,is_stmt
        MOV #127, T0 ; |1564| 
        MOV *SP(#0), T1 ; |1564| 
$C$DW$767	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$767, DW_AT_low_pc(0x00)
	.dwattr $C$DW$767, DW_AT_name("_dataWrite")
	.dwattr $C$DW$767, DW_AT_TI_call
        CALL #_dataWrite ; |1564| 
                                        ; call occurs [#_dataWrite] ; |1564| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1565,column 2,is_stmt
$C$DW$768	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$768, DW_AT_low_pc(0x00)
	.dwattr $C$DW$768, DW_AT_name("_wait")
	.dwattr $C$DW$768, DW_AT_TI_call

        CALL #_wait ; |1565| 
||      MOV #10, AC0 ; |1565| 

                                        ; call occurs [#_wait] ; |1565| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1566,column 5,is_stmt
        MOV #117, T0 ; |1566| 
        MOV *SP(#0), T1 ; |1566| 
$C$DW$769	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$769, DW_AT_low_pc(0x00)
	.dwattr $C$DW$769, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$769, DW_AT_TI_call
        CALL #_cmdWrite ; |1566| 
                                        ; call occurs [#_cmdWrite] ; |1566| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1567,column 2,is_stmt
        MOV *SP(#0), T1 ; |1567| 
$C$DW$770	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$770, DW_AT_low_pc(0x00)
	.dwattr $C$DW$770, DW_AT_name("_dataWrite")
	.dwattr $C$DW$770, DW_AT_TI_call

        CALL #_dataWrite ; |1567| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1567| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1568,column 5,is_stmt
        MOV #127, T0 ; |1568| 
        MOV *SP(#0), T1 ; |1568| 
$C$DW$771	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$771, DW_AT_low_pc(0x00)
	.dwattr $C$DW$771, DW_AT_name("_dataWrite")
	.dwattr $C$DW$771, DW_AT_TI_call
        CALL #_dataWrite ; |1568| 
                                        ; call occurs [#_dataWrite] ; |1568| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1569,column 2,is_stmt
$C$DW$772	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$772, DW_AT_low_pc(0x00)
	.dwattr $C$DW$772, DW_AT_name("_wait")
	.dwattr $C$DW$772, DW_AT_TI_call

        CALL #_wait ; |1569| 
||      MOV #10, AC0 ; |1569| 

                                        ; call occurs [#_wait] ; |1569| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1570,column 5,is_stmt
        MOV #92, T0 ; |1570| 
        MOV *SP(#0), T1 ; |1570| 
$C$DW$773	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$773, DW_AT_low_pc(0x00)
	.dwattr $C$DW$773, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$773, DW_AT_TI_call
        CALL #_cmdWrite ; |1570| 
                                        ; call occurs [#_cmdWrite] ; |1570| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1572,column 6,is_stmt
        MOV #0, *SP(#1) ; |1572| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1572,column 10,is_stmt
        MOV #32, AR2 ; |1572| 
        MOV *SP(#1), AR1 ; |1572| 
        CMPU AR1 >= AR2, TC1 ; |1572| 
        BCC $C$L162,TC1 ; |1572| 
                                        ; branchcc occurs ; |1572| 
$C$L159:    
$C$DW$L$_draw_262K_colorbar$30$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1574,column 7,is_stmt
        MOV #0, *SP(#2) ; |1574| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1574,column 11,is_stmt
        MOV #128, AR2 ; |1574| 
        MOV *SP(#2), AR1 ; |1574| 
        CMPU AR1 >= AR2, TC1 ; |1574| 
        BCC $C$L161,TC1 ; |1574| 
                                        ; branchcc occurs ; |1574| 
$C$DW$L$_draw_262K_colorbar$30$E:
$C$L160:    
$C$DW$L$_draw_262K_colorbar$31$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1576,column 4,is_stmt

        MOV *SP(#0), T1 ; |1576| 
||      MOV AR1, AC0

        BFXTR #0xfffe, AC0, T0 ; |1576| 
$C$DW$774	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$774, DW_AT_low_pc(0x00)
	.dwattr $C$DW$774, DW_AT_name("_dataWrite")
	.dwattr $C$DW$774, DW_AT_TI_call
        CALL #_dataWrite ; |1576| 
                                        ; call occurs [#_dataWrite] ; |1576| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1577,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1577| 
        MOV *SP(#0), T1 ; |1577| 
        BFXTR #0xfffe, AC0, T0 ; |1577| 
$C$DW$775	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$775, DW_AT_low_pc(0x00)
	.dwattr $C$DW$775, DW_AT_name("_dataWrite")
	.dwattr $C$DW$775, DW_AT_TI_call
        CALL #_dataWrite ; |1577| 
                                        ; call occurs [#_dataWrite] ; |1577| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1578,column 4,is_stmt
        MOV *SP(#2), AC0 ; |1578| 
        MOV *SP(#0), T1 ; |1578| 
        BFXTR #0xfffe, AC0, T0 ; |1578| 
$C$DW$776	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$776, DW_AT_low_pc(0x00)
	.dwattr $C$DW$776, DW_AT_name("_dataWrite")
	.dwattr $C$DW$776, DW_AT_TI_call
        CALL #_dataWrite ; |1578| 
                                        ; call occurs [#_dataWrite] ; |1578| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1574,column 17,is_stmt
        ADD #1, *SP(#2) ; |1574| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1574,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1574| 
        CMPU AR1 < AR2, TC1 ; |1574| 
        BCC $C$L160,TC1 ; |1574| 
                                        ; branchcc occurs ; |1574| 
$C$DW$L$_draw_262K_colorbar$31$E:
$C$L161:    
$C$DW$L$_draw_262K_colorbar$32$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1572,column 15,is_stmt
        ADD #1, *SP(#1) ; |1572| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1572,column 10,is_stmt
        MOV #32, AR2 ; |1572| 
        MOV *SP(#1), AR1 ; |1572| 
        CMPU AR1 < AR2, TC1 ; |1572| 
        BCC $C$L159,TC1 ; |1572| 
                                        ; branchcc occurs ; |1572| 
$C$DW$L$_draw_262K_colorbar$32$E:
$C$L162:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1581,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "./telecom/lcdc_panel.c",line 1582,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$777	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$777, DW_AT_low_pc(0x00)
	.dwattr $C$DW$777, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$778	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$778, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L159:1:1726009971")
	.dwattr $C$DW$778, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$778, DW_AT_TI_begin_line(0x624)
	.dwattr $C$DW$778, DW_AT_TI_end_line(0x62c)
$C$DW$779	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$779, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$30$B)
	.dwattr $C$DW$779, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$30$E)
$C$DW$780	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$780, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$32$B)
	.dwattr $C$DW$780, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$32$E)

$C$DW$781	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$781, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L160:2:1726009971")
	.dwattr $C$DW$781, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$781, DW_AT_TI_begin_line(0x626)
	.dwattr $C$DW$781, DW_AT_TI_end_line(0x62b)
$C$DW$782	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$782, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$31$B)
	.dwattr $C$DW$782, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$31$E)
	.dwendtag $C$DW$781

	.dwendtag $C$DW$778


$C$DW$783	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$783, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L155:1:1726009971")
	.dwattr $C$DW$783, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$783, DW_AT_TI_begin_line(0x60f)
	.dwattr $C$DW$783, DW_AT_TI_end_line(0x617)
$C$DW$784	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$784, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$26$B)
	.dwattr $C$DW$784, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$26$E)
$C$DW$785	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$785, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$28$B)
	.dwattr $C$DW$785, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$28$E)

$C$DW$786	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$786, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L156:2:1726009971")
	.dwattr $C$DW$786, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$786, DW_AT_TI_begin_line(0x611)
	.dwattr $C$DW$786, DW_AT_TI_end_line(0x616)
$C$DW$787	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$787, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$27$B)
	.dwattr $C$DW$787, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$27$E)
	.dwendtag $C$DW$786

	.dwendtag $C$DW$783


$C$DW$788	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$788, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L151:1:1726009971")
	.dwattr $C$DW$788, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$788, DW_AT_TI_begin_line(0x5fa)
	.dwattr $C$DW$788, DW_AT_TI_end_line(0x602)
$C$DW$789	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$789, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$22$B)
	.dwattr $C$DW$789, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$22$E)
$C$DW$790	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$790, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$24$B)
	.dwattr $C$DW$790, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$24$E)

$C$DW$791	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$791, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L152:2:1726009971")
	.dwattr $C$DW$791, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$791, DW_AT_TI_begin_line(0x5fc)
	.dwattr $C$DW$791, DW_AT_TI_end_line(0x601)
$C$DW$792	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$792, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$23$B)
	.dwattr $C$DW$792, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$23$E)
	.dwendtag $C$DW$791

	.dwendtag $C$DW$788


$C$DW$793	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$793, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L147:1:1726009971")
	.dwattr $C$DW$793, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$793, DW_AT_TI_begin_line(0x5e5)
	.dwattr $C$DW$793, DW_AT_TI_end_line(0x5ed)
$C$DW$794	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$794, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$18$B)
	.dwattr $C$DW$794, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$18$E)
$C$DW$795	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$795, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$20$B)
	.dwattr $C$DW$795, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$20$E)

$C$DW$796	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$796, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L148:2:1726009971")
	.dwattr $C$DW$796, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$796, DW_AT_TI_begin_line(0x5e7)
	.dwattr $C$DW$796, DW_AT_TI_end_line(0x5ec)
$C$DW$797	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$797, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$19$B)
	.dwattr $C$DW$797, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$19$E)
	.dwendtag $C$DW$796

	.dwendtag $C$DW$793


$C$DW$798	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$798, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L143:1:1726009971")
	.dwattr $C$DW$798, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$798, DW_AT_TI_begin_line(0x5d0)
	.dwattr $C$DW$798, DW_AT_TI_end_line(0x5d8)
$C$DW$799	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$799, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$14$B)
	.dwattr $C$DW$799, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$14$E)
$C$DW$800	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$800, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$16$B)
	.dwattr $C$DW$800, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$16$E)

$C$DW$801	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$801, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L144:2:1726009971")
	.dwattr $C$DW$801, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$801, DW_AT_TI_begin_line(0x5d2)
	.dwattr $C$DW$801, DW_AT_TI_end_line(0x5d7)
$C$DW$802	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$802, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$15$B)
	.dwattr $C$DW$802, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$15$E)
	.dwendtag $C$DW$801

	.dwendtag $C$DW$798


$C$DW$803	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$803, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L139:1:1726009971")
	.dwattr $C$DW$803, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$803, DW_AT_TI_begin_line(0x5bb)
	.dwattr $C$DW$803, DW_AT_TI_end_line(0x5c3)
$C$DW$804	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$804, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$10$B)
	.dwattr $C$DW$804, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$10$E)
$C$DW$805	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$805, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$12$B)
	.dwattr $C$DW$805, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$12$E)

$C$DW$806	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$806, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L140:2:1726009971")
	.dwattr $C$DW$806, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$806, DW_AT_TI_begin_line(0x5bd)
	.dwattr $C$DW$806, DW_AT_TI_end_line(0x5c2)
$C$DW$807	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$807, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$11$B)
	.dwattr $C$DW$807, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$11$E)
	.dwendtag $C$DW$806

	.dwendtag $C$DW$803


$C$DW$808	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$808, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L135:1:1726009971")
	.dwattr $C$DW$808, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$808, DW_AT_TI_begin_line(0x5a6)
	.dwattr $C$DW$808, DW_AT_TI_end_line(0x5ae)
$C$DW$809	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$809, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$6$B)
	.dwattr $C$DW$809, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$6$E)
$C$DW$810	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$810, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$8$B)
	.dwattr $C$DW$810, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$8$E)

$C$DW$811	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$811, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L136:2:1726009971")
	.dwattr $C$DW$811, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$811, DW_AT_TI_begin_line(0x5a8)
	.dwattr $C$DW$811, DW_AT_TI_end_line(0x5ad)
$C$DW$812	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$812, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$7$B)
	.dwattr $C$DW$812, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$7$E)
	.dwendtag $C$DW$811

	.dwendtag $C$DW$808


$C$DW$813	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$813, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L131:1:1726009971")
	.dwattr $C$DW$813, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$813, DW_AT_TI_begin_line(0x591)
	.dwattr $C$DW$813, DW_AT_TI_end_line(0x599)
$C$DW$814	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$814, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$2$B)
	.dwattr $C$DW$814, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$2$E)
$C$DW$815	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$815, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$4$B)
	.dwattr $C$DW$815, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$4$E)

$C$DW$816	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$816, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L132:2:1726009971")
	.dwattr $C$DW$816, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$816, DW_AT_TI_begin_line(0x593)
	.dwattr $C$DW$816, DW_AT_TI_end_line(0x598)
$C$DW$817	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$817, DW_AT_low_pc($C$DW$L$_draw_262K_colorbar$3$B)
	.dwattr $C$DW$817, DW_AT_high_pc($C$DW$L$_draw_262K_colorbar$3$E)
	.dwendtag $C$DW$816

	.dwendtag $C$DW$813

	.dwattr $C$DW$676, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$676, DW_AT_TI_end_line(0x62e)
	.dwattr $C$DW$676, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$676

	.sect	".text"
	.global	_draw_65K_colorbar

$C$DW$818	.dwtag  DW_TAG_subprogram, DW_AT_name("draw_65K_colorbar")
	.dwattr $C$DW$818, DW_AT_low_pc(_draw_65K_colorbar)
	.dwattr $C$DW$818, DW_AT_high_pc(0x00)
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_draw_65K_colorbar")
	.dwattr $C$DW$818, DW_AT_external
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$818, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$818, DW_AT_TI_begin_line(0x636)
	.dwattr $C$DW$818, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$818, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1591,column 1,is_stmt,address _draw_65K_colorbar

	.dwfde $C$DW$CIE, _draw_65K_colorbar
$C$DW$819	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: draw_65K_colorbar                                            *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_draw_65K_colorbar:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$820	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$821	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$822	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#0) ; |1591| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1597,column 5,is_stmt
        MOV #21, T0 ; |1597| 
        MOV *SP(#0), T1 ; |1597| 
$C$DW$823	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$823, DW_AT_low_pc(0x00)
	.dwattr $C$DW$823, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$823, DW_AT_TI_call
        CALL #_cmdWrite ; |1597| 
                                        ; call occurs [#_cmdWrite] ; |1597| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1598,column 5,is_stmt
        MOV *SP(#0), T1 ; |1598| 
$C$DW$824	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$824, DW_AT_low_pc(0x00)
	.dwattr $C$DW$824, DW_AT_name("_dataWrite")
	.dwattr $C$DW$824, DW_AT_TI_call

        CALL #_dataWrite ; |1598| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1598| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1599,column 5,is_stmt
        MOV *SP(#0), T1 ; |1599| 
$C$DW$825	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$825, DW_AT_low_pc(0x00)
	.dwattr $C$DW$825, DW_AT_name("_dataWrite")
	.dwattr $C$DW$825, DW_AT_TI_call

        CALL #_dataWrite ; |1599| 
||      MOV #15, T0

                                        ; call occurs [#_dataWrite] ; |1599| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1601,column 5,is_stmt
        MOV #117, T0 ; |1601| 
        MOV *SP(#0), T1 ; |1601| 
$C$DW$826	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$826, DW_AT_low_pc(0x00)
	.dwattr $C$DW$826, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$826, DW_AT_TI_call
        CALL #_cmdWrite ; |1601| 
                                        ; call occurs [#_cmdWrite] ; |1601| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1602,column 2,is_stmt
        MOV *SP(#0), T1 ; |1602| 
$C$DW$827	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$827, DW_AT_low_pc(0x00)
	.dwattr $C$DW$827, DW_AT_name("_dataWrite")
	.dwattr $C$DW$827, DW_AT_TI_call

        CALL #_dataWrite ; |1602| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1602| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1603,column 5,is_stmt
        MOV #127, T0 ; |1603| 
        MOV *SP(#0), T1 ; |1603| 
$C$DW$828	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$828, DW_AT_low_pc(0x00)
	.dwattr $C$DW$828, DW_AT_name("_dataWrite")
	.dwattr $C$DW$828, DW_AT_TI_call
        CALL #_dataWrite ; |1603| 
                                        ; call occurs [#_dataWrite] ; |1603| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1605,column 5,is_stmt
        MOV #92, T0 ; |1605| 
        MOV *SP(#0), T1 ; |1605| 
$C$DW$829	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$829, DW_AT_low_pc(0x00)
	.dwattr $C$DW$829, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$829, DW_AT_TI_call
        CALL #_cmdWrite ; |1605| 
                                        ; call occurs [#_cmdWrite] ; |1605| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1607,column 6,is_stmt
        MOV #0, *SP(#1) ; |1607| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1607,column 10,is_stmt
        MOV #32, AR2 ; |1607| 
        MOV *SP(#1), AR1 ; |1607| 
        CMPU AR1 >= AR2, TC1 ; |1607| 
        BCC $C$L166,TC1 ; |1607| 
                                        ; branchcc occurs ; |1607| 
$C$L163:    
$C$DW$L$_draw_65K_colorbar$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1609,column 7,is_stmt
        MOV #0, *SP(#2) ; |1609| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1609,column 11,is_stmt
        MOV #128, AR2 ; |1609| 
        MOV *SP(#2), AR1 ; |1609| 
        CMPU AR1 >= AR2, TC1 ; |1609| 
        BCC $C$L165,TC1 ; |1609| 
                                        ; branchcc occurs ; |1609| 
$C$DW$L$_draw_65K_colorbar$2$E:
$C$L164:    
$C$DW$L$_draw_65K_colorbar$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1611,column 4,is_stmt
        MOV *SP(#0), T1 ; |1611| 
        MOV #255, T0 ; |1611| 
$C$DW$830	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$830, DW_AT_low_pc(0x00)
	.dwattr $C$DW$830, DW_AT_name("_dataWrite")
	.dwattr $C$DW$830, DW_AT_TI_call
        CALL #_dataWrite ; |1611| 
                                        ; call occurs [#_dataWrite] ; |1611| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1612,column 4,is_stmt
        MOV *SP(#0), T1 ; |1612| 
$C$DW$831	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$831, DW_AT_low_pc(0x00)
	.dwattr $C$DW$831, DW_AT_name("_dataWrite")
	.dwattr $C$DW$831, DW_AT_TI_call
        CALL #_dataWrite ; |1612| 
                                        ; call occurs [#_dataWrite] ; |1612| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1609,column 17,is_stmt
        ADD #1, *SP(#2) ; |1609| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1609,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1609| 
        CMPU AR1 < AR2, TC1 ; |1609| 
        BCC $C$L164,TC1 ; |1609| 
                                        ; branchcc occurs ; |1609| 
$C$DW$L$_draw_65K_colorbar$3$E:
$C$L165:    
$C$DW$L$_draw_65K_colorbar$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1607,column 15,is_stmt
        ADD #1, *SP(#1) ; |1607| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1607,column 10,is_stmt
        MOV #32, AR2 ; |1607| 
        MOV *SP(#1), AR1 ; |1607| 
        CMPU AR1 < AR2, TC1 ; |1607| 
        BCC $C$L163,TC1 ; |1607| 
                                        ; branchcc occurs ; |1607| 
$C$DW$L$_draw_65K_colorbar$4$E:
$C$L166:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1616,column 5,is_stmt
        MOV *SP(#0), T1 ; |1616| 
        MOV #21, T0 ; |1616| 
$C$DW$832	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$832, DW_AT_low_pc(0x00)
	.dwattr $C$DW$832, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$832, DW_AT_TI_call
        CALL #_cmdWrite ; |1616| 
                                        ; call occurs [#_cmdWrite] ; |1616| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1617,column 5,is_stmt
        MOV #16, T0 ; |1617| 
        MOV *SP(#0), T1 ; |1617| 
$C$DW$833	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$833, DW_AT_low_pc(0x00)
	.dwattr $C$DW$833, DW_AT_name("_dataWrite")
	.dwattr $C$DW$833, DW_AT_TI_call
        CALL #_dataWrite ; |1617| 
                                        ; call occurs [#_dataWrite] ; |1617| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1618,column 5,is_stmt
        MOV #31, T0 ; |1618| 
        MOV *SP(#0), T1 ; |1618| 
$C$DW$834	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$834, DW_AT_low_pc(0x00)
	.dwattr $C$DW$834, DW_AT_name("_dataWrite")
	.dwattr $C$DW$834, DW_AT_TI_call
        CALL #_dataWrite ; |1618| 
                                        ; call occurs [#_dataWrite] ; |1618| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1620,column 5,is_stmt
        MOV #117, T0 ; |1620| 
        MOV *SP(#0), T1 ; |1620| 
$C$DW$835	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$835, DW_AT_low_pc(0x00)
	.dwattr $C$DW$835, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$835, DW_AT_TI_call
        CALL #_cmdWrite ; |1620| 
                                        ; call occurs [#_cmdWrite] ; |1620| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1621,column 2,is_stmt
        MOV *SP(#0), T1 ; |1621| 
$C$DW$836	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$836, DW_AT_low_pc(0x00)
	.dwattr $C$DW$836, DW_AT_name("_dataWrite")
	.dwattr $C$DW$836, DW_AT_TI_call

        CALL #_dataWrite ; |1621| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1621| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1622,column 5,is_stmt
        MOV #127, T0 ; |1622| 
        MOV *SP(#0), T1 ; |1622| 
$C$DW$837	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$837, DW_AT_low_pc(0x00)
	.dwattr $C$DW$837, DW_AT_name("_dataWrite")
	.dwattr $C$DW$837, DW_AT_TI_call
        CALL #_dataWrite ; |1622| 
                                        ; call occurs [#_dataWrite] ; |1622| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1624,column 5,is_stmt
        MOV #92, T0 ; |1624| 
        MOV *SP(#0), T1 ; |1624| 
$C$DW$838	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$838, DW_AT_low_pc(0x00)
	.dwattr $C$DW$838, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$838, DW_AT_TI_call
        CALL #_cmdWrite ; |1624| 
                                        ; call occurs [#_cmdWrite] ; |1624| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1626,column 6,is_stmt
        MOV #0, *SP(#1) ; |1626| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1626,column 10,is_stmt
        MOV #32, AR2 ; |1626| 
        MOV *SP(#1), AR1 ; |1626| 
        CMPU AR1 >= AR2, TC1 ; |1626| 
        BCC $C$L170,TC1 ; |1626| 
                                        ; branchcc occurs ; |1626| 
$C$L167:    
$C$DW$L$_draw_65K_colorbar$6$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1628,column 7,is_stmt
        MOV #0, *SP(#2) ; |1628| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1628,column 11,is_stmt
        MOV #128, AR2 ; |1628| 
        MOV *SP(#2), AR1 ; |1628| 
        CMPU AR1 >= AR2, TC1 ; |1628| 
        BCC $C$L169,TC1 ; |1628| 
                                        ; branchcc occurs ; |1628| 
$C$DW$L$_draw_65K_colorbar$6$E:
$C$L168:    
$C$DW$L$_draw_65K_colorbar$7$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1630,column 4,is_stmt
        MOV *SP(#0), T1 ; |1630| 
$C$DW$839	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$839, DW_AT_low_pc(0x00)
	.dwattr $C$DW$839, DW_AT_name("_dataWrite")
	.dwattr $C$DW$839, DW_AT_TI_call

        CALL #_dataWrite ; |1630| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1630| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1631,column 4,is_stmt
        MOV #31, T0 ; |1631| 
        MOV *SP(#0), T1 ; |1631| 
$C$DW$840	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$840, DW_AT_low_pc(0x00)
	.dwattr $C$DW$840, DW_AT_name("_dataWrite")
	.dwattr $C$DW$840, DW_AT_TI_call
        CALL #_dataWrite ; |1631| 
                                        ; call occurs [#_dataWrite] ; |1631| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1628,column 17,is_stmt
        ADD #1, *SP(#2) ; |1628| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1628,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1628| 
        CMPU AR1 < AR2, TC1 ; |1628| 
        BCC $C$L168,TC1 ; |1628| 
                                        ; branchcc occurs ; |1628| 
$C$DW$L$_draw_65K_colorbar$7$E:
$C$L169:    
$C$DW$L$_draw_65K_colorbar$8$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1626,column 15,is_stmt
        ADD #1, *SP(#1) ; |1626| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1626,column 10,is_stmt
        MOV #32, AR2 ; |1626| 
        MOV *SP(#1), AR1 ; |1626| 
        CMPU AR1 < AR2, TC1 ; |1626| 
        BCC $C$L167,TC1 ; |1626| 
                                        ; branchcc occurs ; |1626| 
$C$DW$L$_draw_65K_colorbar$8$E:
$C$L170:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1636,column 5,is_stmt
        MOV *SP(#0), T1 ; |1636| 
        MOV #21, T0 ; |1636| 
$C$DW$841	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$841, DW_AT_low_pc(0x00)
	.dwattr $C$DW$841, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$841, DW_AT_TI_call
        CALL #_cmdWrite ; |1636| 
                                        ; call occurs [#_cmdWrite] ; |1636| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1637,column 5,is_stmt
        MOV #32, T0 ; |1637| 
        MOV *SP(#0), T1 ; |1637| 
$C$DW$842	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$842, DW_AT_low_pc(0x00)
	.dwattr $C$DW$842, DW_AT_name("_dataWrite")
	.dwattr $C$DW$842, DW_AT_TI_call
        CALL #_dataWrite ; |1637| 
                                        ; call occurs [#_dataWrite] ; |1637| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1638,column 5,is_stmt
        MOV #47, T0 ; |1638| 
        MOV *SP(#0), T1 ; |1638| 
$C$DW$843	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$843, DW_AT_low_pc(0x00)
	.dwattr $C$DW$843, DW_AT_name("_dataWrite")
	.dwattr $C$DW$843, DW_AT_TI_call
        CALL #_dataWrite ; |1638| 
                                        ; call occurs [#_dataWrite] ; |1638| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1640,column 5,is_stmt
        MOV #117, T0 ; |1640| 
        MOV *SP(#0), T1 ; |1640| 
$C$DW$844	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$844, DW_AT_low_pc(0x00)
	.dwattr $C$DW$844, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$844, DW_AT_TI_call
        CALL #_cmdWrite ; |1640| 
                                        ; call occurs [#_cmdWrite] ; |1640| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1641,column 2,is_stmt
        MOV *SP(#0), T1 ; |1641| 
$C$DW$845	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$845, DW_AT_low_pc(0x00)
	.dwattr $C$DW$845, DW_AT_name("_dataWrite")
	.dwattr $C$DW$845, DW_AT_TI_call

        CALL #_dataWrite ; |1641| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1641| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1642,column 5,is_stmt
        MOV #127, T0 ; |1642| 
        MOV *SP(#0), T1 ; |1642| 
$C$DW$846	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$846, DW_AT_low_pc(0x00)
	.dwattr $C$DW$846, DW_AT_name("_dataWrite")
	.dwattr $C$DW$846, DW_AT_TI_call
        CALL #_dataWrite ; |1642| 
                                        ; call occurs [#_dataWrite] ; |1642| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1644,column 5,is_stmt
        MOV #92, T0 ; |1644| 
        MOV *SP(#0), T1 ; |1644| 
$C$DW$847	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$847, DW_AT_low_pc(0x00)
	.dwattr $C$DW$847, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$847, DW_AT_TI_call
        CALL #_cmdWrite ; |1644| 
                                        ; call occurs [#_cmdWrite] ; |1644| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1646,column 6,is_stmt
        MOV #0, *SP(#1) ; |1646| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1646,column 10,is_stmt
        MOV #32, AR2 ; |1646| 
        MOV *SP(#1), AR1 ; |1646| 
        CMPU AR1 >= AR2, TC1 ; |1646| 
        BCC $C$L174,TC1 ; |1646| 
                                        ; branchcc occurs ; |1646| 
$C$L171:    
$C$DW$L$_draw_65K_colorbar$10$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1648,column 7,is_stmt
        MOV #0, *SP(#2) ; |1648| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1648,column 11,is_stmt
        MOV #128, AR2 ; |1648| 
        MOV *SP(#2), AR1 ; |1648| 
        CMPU AR1 >= AR2, TC1 ; |1648| 
        BCC $C$L173,TC1 ; |1648| 
                                        ; branchcc occurs ; |1648| 
$C$DW$L$_draw_65K_colorbar$10$E:
$C$L172:    
$C$DW$L$_draw_65K_colorbar$11$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1650,column 4,is_stmt
        MOV *SP(#0), T1 ; |1650| 
        MOV #248, T0 ; |1650| 
$C$DW$848	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$848, DW_AT_low_pc(0x00)
	.dwattr $C$DW$848, DW_AT_name("_dataWrite")
	.dwattr $C$DW$848, DW_AT_TI_call
        CALL #_dataWrite ; |1650| 
                                        ; call occurs [#_dataWrite] ; |1650| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1651,column 4,is_stmt
        MOV *SP(#0), T1 ; |1651| 
$C$DW$849	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$849, DW_AT_low_pc(0x00)
	.dwattr $C$DW$849, DW_AT_name("_dataWrite")
	.dwattr $C$DW$849, DW_AT_TI_call

        CALL #_dataWrite ; |1651| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1651| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1648,column 17,is_stmt
        ADD #1, *SP(#2) ; |1648| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1648,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1648| 
        CMPU AR1 < AR2, TC1 ; |1648| 
        BCC $C$L172,TC1 ; |1648| 
                                        ; branchcc occurs ; |1648| 
$C$DW$L$_draw_65K_colorbar$11$E:
$C$L173:    
$C$DW$L$_draw_65K_colorbar$12$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1646,column 15,is_stmt
        ADD #1, *SP(#1) ; |1646| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1646,column 10,is_stmt
        MOV #32, AR2 ; |1646| 
        MOV *SP(#1), AR1 ; |1646| 
        CMPU AR1 < AR2, TC1 ; |1646| 
        BCC $C$L171,TC1 ; |1646| 
                                        ; branchcc occurs ; |1646| 
$C$DW$L$_draw_65K_colorbar$12$E:
$C$L174:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1656,column 5,is_stmt
        MOV *SP(#0), T1 ; |1656| 
        MOV #21, T0 ; |1656| 
$C$DW$850	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$850, DW_AT_low_pc(0x00)
	.dwattr $C$DW$850, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$850, DW_AT_TI_call
        CALL #_cmdWrite ; |1656| 
                                        ; call occurs [#_cmdWrite] ; |1656| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1657,column 5,is_stmt
        MOV #48, T0 ; |1657| 
        MOV *SP(#0), T1 ; |1657| 
$C$DW$851	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$851, DW_AT_low_pc(0x00)
	.dwattr $C$DW$851, DW_AT_name("_dataWrite")
	.dwattr $C$DW$851, DW_AT_TI_call
        CALL #_dataWrite ; |1657| 
                                        ; call occurs [#_dataWrite] ; |1657| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1658,column 5,is_stmt
        MOV #63, T0 ; |1658| 
        MOV *SP(#0), T1 ; |1658| 
$C$DW$852	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$852, DW_AT_low_pc(0x00)
	.dwattr $C$DW$852, DW_AT_name("_dataWrite")
	.dwattr $C$DW$852, DW_AT_TI_call
        CALL #_dataWrite ; |1658| 
                                        ; call occurs [#_dataWrite] ; |1658| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1660,column 5,is_stmt
        MOV #117, T0 ; |1660| 
        MOV *SP(#0), T1 ; |1660| 
$C$DW$853	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$853, DW_AT_low_pc(0x00)
	.dwattr $C$DW$853, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$853, DW_AT_TI_call
        CALL #_cmdWrite ; |1660| 
                                        ; call occurs [#_cmdWrite] ; |1660| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1661,column 2,is_stmt
        MOV *SP(#0), T1 ; |1661| 
$C$DW$854	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$854, DW_AT_low_pc(0x00)
	.dwattr $C$DW$854, DW_AT_name("_dataWrite")
	.dwattr $C$DW$854, DW_AT_TI_call

        CALL #_dataWrite ; |1661| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1661| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1662,column 5,is_stmt
        MOV #127, T0 ; |1662| 
        MOV *SP(#0), T1 ; |1662| 
$C$DW$855	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$855, DW_AT_low_pc(0x00)
	.dwattr $C$DW$855, DW_AT_name("_dataWrite")
	.dwattr $C$DW$855, DW_AT_TI_call
        CALL #_dataWrite ; |1662| 
                                        ; call occurs [#_dataWrite] ; |1662| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1664,column 5,is_stmt
        MOV #92, T0 ; |1664| 
        MOV *SP(#0), T1 ; |1664| 
$C$DW$856	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$856, DW_AT_low_pc(0x00)
	.dwattr $C$DW$856, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$856, DW_AT_TI_call
        CALL #_cmdWrite ; |1664| 
                                        ; call occurs [#_cmdWrite] ; |1664| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1666,column 6,is_stmt
        MOV #0, *SP(#1) ; |1666| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1666,column 10,is_stmt
        MOV #32, AR2 ; |1666| 
        MOV *SP(#1), AR1 ; |1666| 
        CMPU AR1 >= AR2, TC1 ; |1666| 
        BCC $C$L178,TC1 ; |1666| 
                                        ; branchcc occurs ; |1666| 
$C$L175:    
$C$DW$L$_draw_65K_colorbar$14$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1668,column 7,is_stmt
        MOV #0, *SP(#2) ; |1668| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1668,column 11,is_stmt
        MOV #128, AR2 ; |1668| 
        MOV *SP(#2), AR1 ; |1668| 
        CMPU AR1 >= AR2, TC1 ; |1668| 
        BCC $C$L177,TC1 ; |1668| 
                                        ; branchcc occurs ; |1668| 
$C$DW$L$_draw_65K_colorbar$14$E:
$C$L176:    
$C$DW$L$_draw_65K_colorbar$15$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1670,column 4,is_stmt
        MOV *SP(#0), T1 ; |1670| 
$C$DW$857	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$857, DW_AT_low_pc(0x00)
	.dwattr $C$DW$857, DW_AT_name("_dataWrite")
	.dwattr $C$DW$857, DW_AT_TI_call

        CALL #_dataWrite ; |1670| 
||      MOV #7, T0

                                        ; call occurs [#_dataWrite] ; |1670| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1671,column 4,is_stmt
        MOV #224, T0 ; |1671| 
        MOV *SP(#0), T1 ; |1671| 
$C$DW$858	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$858, DW_AT_low_pc(0x00)
	.dwattr $C$DW$858, DW_AT_name("_dataWrite")
	.dwattr $C$DW$858, DW_AT_TI_call
        CALL #_dataWrite ; |1671| 
                                        ; call occurs [#_dataWrite] ; |1671| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1668,column 17,is_stmt
        ADD #1, *SP(#2) ; |1668| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1668,column 11,is_stmt
        MOV *SP(#2), AR1 ; |1668| 
        CMPU AR1 < AR2, TC1 ; |1668| 
        BCC $C$L176,TC1 ; |1668| 
                                        ; branchcc occurs ; |1668| 
$C$DW$L$_draw_65K_colorbar$15$E:
$C$L177:    
$C$DW$L$_draw_65K_colorbar$16$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1666,column 15,is_stmt
        ADD #1, *SP(#1) ; |1666| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1666,column 10,is_stmt
        MOV #32, AR2 ; |1666| 
        MOV *SP(#1), AR1 ; |1666| 
        CMPU AR1 < AR2, TC1 ; |1666| 
        BCC $C$L175,TC1 ; |1666| 
                                        ; branchcc occurs ; |1666| 
$C$DW$L$_draw_65K_colorbar$16$E:
$C$L178:    
	.dwpsn	file "./telecom/lcdc_panel.c",line 1675,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "./telecom/lcdc_panel.c",line 1676,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$859	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$859, DW_AT_low_pc(0x00)
	.dwattr $C$DW$859, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$860	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$860, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L175:1:1726009971")
	.dwattr $C$DW$860, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$860, DW_AT_TI_begin_line(0x682)
	.dwattr $C$DW$860, DW_AT_TI_end_line(0x689)
$C$DW$861	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$861, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$14$B)
	.dwattr $C$DW$861, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$14$E)
$C$DW$862	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$862, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$16$B)
	.dwattr $C$DW$862, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$16$E)

$C$DW$863	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$863, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L176:2:1726009971")
	.dwattr $C$DW$863, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$863, DW_AT_TI_begin_line(0x684)
	.dwattr $C$DW$863, DW_AT_TI_end_line(0x688)
$C$DW$864	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$864, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$15$B)
	.dwattr $C$DW$864, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$15$E)
	.dwendtag $C$DW$863

	.dwendtag $C$DW$860


$C$DW$865	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$865, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L171:1:1726009971")
	.dwattr $C$DW$865, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$865, DW_AT_TI_begin_line(0x66e)
	.dwattr $C$DW$865, DW_AT_TI_end_line(0x675)
$C$DW$866	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$866, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$10$B)
	.dwattr $C$DW$866, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$10$E)
$C$DW$867	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$867, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$12$B)
	.dwattr $C$DW$867, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$12$E)

$C$DW$868	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$868, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L172:2:1726009971")
	.dwattr $C$DW$868, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$868, DW_AT_TI_begin_line(0x670)
	.dwattr $C$DW$868, DW_AT_TI_end_line(0x674)
$C$DW$869	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$869, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$11$B)
	.dwattr $C$DW$869, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$11$E)
	.dwendtag $C$DW$868

	.dwendtag $C$DW$865


$C$DW$870	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$870, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L167:1:1726009971")
	.dwattr $C$DW$870, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$870, DW_AT_TI_begin_line(0x65a)
	.dwattr $C$DW$870, DW_AT_TI_end_line(0x661)
$C$DW$871	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$871, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$6$B)
	.dwattr $C$DW$871, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$6$E)
$C$DW$872	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$872, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$8$B)
	.dwattr $C$DW$872, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$8$E)

$C$DW$873	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$873, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L168:2:1726009971")
	.dwattr $C$DW$873, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$873, DW_AT_TI_begin_line(0x65c)
	.dwattr $C$DW$873, DW_AT_TI_end_line(0x660)
$C$DW$874	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$874, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$7$B)
	.dwattr $C$DW$874, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$7$E)
	.dwendtag $C$DW$873

	.dwendtag $C$DW$870


$C$DW$875	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$875, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L163:1:1726009971")
	.dwattr $C$DW$875, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$875, DW_AT_TI_begin_line(0x647)
	.dwattr $C$DW$875, DW_AT_TI_end_line(0x64e)
$C$DW$876	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$876, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$2$B)
	.dwattr $C$DW$876, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$2$E)
$C$DW$877	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$877, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$4$B)
	.dwattr $C$DW$877, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$4$E)

$C$DW$878	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$878, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L164:2:1726009971")
	.dwattr $C$DW$878, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$878, DW_AT_TI_begin_line(0x649)
	.dwattr $C$DW$878, DW_AT_TI_end_line(0x64d)
$C$DW$879	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$879, DW_AT_low_pc($C$DW$L$_draw_65K_colorbar$3$B)
	.dwattr $C$DW$879, DW_AT_high_pc($C$DW$L$_draw_65K_colorbar$3$E)
	.dwendtag $C$DW$878

	.dwendtag $C$DW$875

	.dwattr $C$DW$818, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$818, DW_AT_TI_end_line(0x68c)
	.dwattr $C$DW$818, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$818

	.sect	".text"
	.global	_draw_string

$C$DW$880	.dwtag  DW_TAG_subprogram, DW_AT_name("draw_string")
	.dwattr $C$DW$880, DW_AT_low_pc(_draw_string)
	.dwattr $C$DW$880, DW_AT_high_pc(0x00)
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_draw_string")
	.dwattr $C$DW$880, DW_AT_external
	.dwattr $C$DW$880, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$880, DW_AT_TI_begin_line(0x69b)
	.dwattr $C$DW$880, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$880, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1692,column 1,is_stmt,address _draw_string

	.dwfde $C$DW$CIE, _draw_string
$C$DW$881	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startc")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_startc")
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_location[DW_OP_reg12]
$C$DW$882	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startl")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_startl")
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_location[DW_OP_reg13]
$C$DW$883	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pData")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_pData")
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$883, DW_AT_location[DW_OP_reg17]
$C$DW$884	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Color")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_Color")
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$884, DW_AT_location[DW_OP_reg0]
$C$DW$885	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_location[DW_OP_reg18]
;*******************************************************************************
;* FUNCTION NAME: draw_string                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_draw_string:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$886	.dwtag  DW_TAG_variable, DW_AT_name("startc")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_startc")
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$886, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$887	.dwtag  DW_TAG_variable, DW_AT_name("startl")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_startl")
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$887, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$888	.dwtag  DW_TAG_variable, DW_AT_name("pData")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_pData")
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$888, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$889	.dwtag  DW_TAG_variable, DW_AT_name("Color")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_Color")
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$889, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$890	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$890, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$891	.dwtag  DW_TAG_variable, DW_AT_name("font")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_font")
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$891, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$892	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$892, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AR1, *SP(#6) ; |1692| 
        MOV AC0, dbl(*SP(#4)) ; |1692| 
        MOV XAR0, dbl(*SP(#2))
        MOV T1, *SP(#1) ; |1692| 
        MOV T0, *SP(#0) ; |1692| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1693,column 18,is_stmt
        MOV #0, *SP(#8) ; |1693| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1696,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$893	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$893, DW_AT_low_pc(0x00)
	.dwattr $C$DW$893, DW_AT_name("_strlen")
	.dwattr $C$DW$893, DW_AT_TI_call
        CALL #_strlen ; |1696| 
                                        ; call occurs [#_strlen] ; |1696| 
        MOV T0, *SP(#8) ; |1696| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1697,column 5,is_stmt

        MOV T0, AR1 ; |1697| 
||      MOV #16, AR2 ; |1697| 

        CMPU AR1 <= AR2, TC1 ; |1697| 
        BCC $C$L180,!TC1 ; |1697| 
                                        ; branchcc occurs ; |1697| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1698,column 9,is_stmt
	.dwpsn	file "./telecom/lcdc_panel.c",line 1700,column 2,is_stmt
        MOV #0, *SP(#8) ; |1700| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1701,column 11,is_stmt
$C$L179:    
$C$DW$L$_draw_string$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1703,column 9,is_stmt
        MOV *SP(#8), T0 ; |1703| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |1703| 
        MOV AR1, *SP(#7) ; |1703| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1704,column 9,is_stmt
        BCC $C$L180,AR1 == #0 ; |1704| 
                                        ; branchcc occurs ; |1704| 
$C$DW$L$_draw_string$3$E:
$C$DW$L$_draw_string$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1706,column 13,is_stmt
        MOV *SP(#8), AC0 ; |1706| 

        MOV *SP(#1), T1 ; |1706| 
||      MOV AR1, AR0 ; |1706| 

        SFTL AC0, #3, AC0 ; |1706| 
||      MOV *SP(#6), AR1 ; |1706| 

        ADD *SP(#0), AC0, T0 ; |1706| 
        MOV dbl(*SP(#4)), AC0 ; |1706| 
$C$DW$894	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$894, DW_AT_low_pc(0x00)
	.dwattr $C$DW$894, DW_AT_name("_draw_font")
	.dwattr $C$DW$894, DW_AT_TI_call
        CALL #_draw_font ; |1706| 
                                        ; call occurs [#_draw_font] ; |1706| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1707,column 13,is_stmt
        ADD #1, *SP(#8) ; |1707| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1708,column 9,is_stmt
        B $C$L179 ; |1708| 
                                        ; branch occurs ; |1708| 
$C$DW$L$_draw_string$4$E:
$C$L180:    
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$895	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$895, DW_AT_low_pc(0x00)
	.dwattr $C$DW$895, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$896	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$896, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L179:1:1726009971")
	.dwattr $C$DW$896, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$896, DW_AT_TI_begin_line(0x6a5)
	.dwattr $C$DW$896, DW_AT_TI_end_line(0x6b1)
$C$DW$897	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$897, DW_AT_low_pc($C$DW$L$_draw_string$3$B)
	.dwattr $C$DW$897, DW_AT_high_pc($C$DW$L$_draw_string$3$E)
$C$DW$898	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$898, DW_AT_low_pc($C$DW$L$_draw_string$4$B)
	.dwattr $C$DW$898, DW_AT_high_pc($C$DW$L$_draw_string$4$E)
	.dwendtag $C$DW$896

	.dwattr $C$DW$880, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$880, DW_AT_TI_end_line(0x6b2)
	.dwattr $C$DW$880, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$880

	.sect	".text"
	.global	_draw_font

$C$DW$899	.dwtag  DW_TAG_subprogram, DW_AT_name("draw_font")
	.dwattr $C$DW$899, DW_AT_low_pc(_draw_font)
	.dwattr $C$DW$899, DW_AT_high_pc(0x00)
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_draw_font")
	.dwattr $C$DW$899, DW_AT_external
	.dwattr $C$DW$899, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$899, DW_AT_TI_begin_line(0x6be)
	.dwattr $C$DW$899, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$899, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./telecom/lcdc_panel.c",line 1727,column 1,is_stmt,address _draw_font

	.dwfde $C$DW$CIE, _draw_font
$C$DW$900	.dwtag  DW_TAG_formal_parameter, DW_AT_name("col_address")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_col_address")
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$900, DW_AT_location[DW_OP_reg12]
$C$DW$901	.dwtag  DW_TAG_formal_parameter, DW_AT_name("low_address")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_low_address")
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$901, DW_AT_location[DW_OP_reg13]
$C$DW$902	.dwtag  DW_TAG_formal_parameter, DW_AT_name("font")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_font")
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$902, DW_AT_location[DW_OP_reg16]
$C$DW$903	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$903, DW_AT_location[DW_OP_reg0]
$C$DW$904	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cs_flag")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$904, DW_AT_location[DW_OP_reg18]
;*******************************************************************************
;* FUNCTION NAME: draw_font                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,AR1,AR2,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (21 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_draw_font:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$905	.dwtag  DW_TAG_variable, DW_AT_name("col_address")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_col_address")
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$905, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$906	.dwtag  DW_TAG_variable, DW_AT_name("low_address")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_low_address")
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$906, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$907	.dwtag  DW_TAG_variable, DW_AT_name("font")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_font")
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$907, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$908	.dwtag  DW_TAG_variable, DW_AT_name("color")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_color")
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$908, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$909	.dwtag  DW_TAG_variable, DW_AT_name("cs_flag")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_cs_flag")
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$909, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$910	.dwtag  DW_TAG_variable, DW_AT_name("pFontTable")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_pFontTable")
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$910, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$911	.dwtag  DW_TAG_variable, DW_AT_name("pFont")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_pFont")
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$911, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$912	.dwtag  DW_TAG_variable, DW_AT_name("Data")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_Data")
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$912, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$913	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$913, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$914	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$914, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$915	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$915, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$916	.dwtag  DW_TAG_variable, DW_AT_name("Red")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_Red")
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$916, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$917	.dwtag  DW_TAG_variable, DW_AT_name("Green")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_Green")
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$917, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$918	.dwtag  DW_TAG_variable, DW_AT_name("Blue")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_Blue")
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$918, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$919	.dwtag  DW_TAG_variable, DW_AT_name("color16M")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_color16M")
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$919, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$920	.dwtag  DW_TAG_variable, DW_AT_name("color16L")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_color16L")
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$920, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV AR1, *SP(#6) ; |1727| 
        MOV AC0, dbl(*SP(#4)) ; |1727| 
        MOV AR0, *SP(#2) ; |1727| 
        MOV T1, *SP(#1) ; |1727| 
        MOV T0, *SP(#0) ; |1727| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1733,column 5,is_stmt
        AMOV #_lcdFontTable, XAR3 ; |1733| 
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "./telecom/lcdc_panel.c",line 1734,column 5,is_stmt
        MOV *SP(#2), AC0 ; |1734| 
        SFTL AC0, #4, AC0 ; |1734| 
        MOV AC0, AR1 ; |1734| 

        MOV XAR3, dbl(*SP(#10))
||      AADD AR1, AR3 ; |1734| 

	.dwpsn	file "./telecom/lcdc_panel.c",line 1736,column 5,is_stmt
        AMOV #4128768, XAR3 ; |1736| 
        MOV dbl(*SP(#4)), AC1 ; |1736| 
        MOV XAR3, AC0
        AND AC1, AC0 ; |1736| 
        SFTL AC0, #-17, AC0 ; |1736| 
        MOV AC0, *SP(#18) ; |1736| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1737,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1737| 
        AND #0x3f00, AC0, AC0 ; |1737| 
        SFTL AC0, #-8, AC0 ; |1737| 
        MOV AC0, *SP(#17) ; |1737| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1738,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1738| 
        AND #0x003f, AC0, AC0 ; |1738| 
        MOV AC0, *SP(#16) ; |1738| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1739,column 5,is_stmt
        MOV *SP(#18), AC0 ; |1739| 
        MOV *SP(#17), AC1 ; |1739| 

        SFTL AC0, #3, AC0 ; |1739| 
||      BFXTR #0xfff8, AC1, AR1 ; |1739| 

        ADD AC0, AR1 ; |1739| 
        MOV AR1, *SP(#19) ; |1739| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1740,column 2,is_stmt
        MOV *SP(#16), AR1 ; |1740| 
        MOV *SP(#17), AC0 ; |1740| 

        SFTL AC0, #5, AC0 ; |1740| 
||      SFTL AR1, #-1 ; |1740| 

        ADD AC0, AR1 ; |1740| 
        MOV AR1, *SP(#20) ; |1740| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1742,column 5,is_stmt
        MOV #21, T0 ; |1742| 
        MOV *SP(#6), T1 ; |1742| 
$C$DW$921	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$921, DW_AT_low_pc(0x00)
	.dwattr $C$DW$921, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$921, DW_AT_TI_call
        CALL #_cmdWrite ; |1742| 
                                        ; call occurs [#_cmdWrite] ; |1742| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1743,column 2,is_stmt
        MOV *SP(#0), T0 ; |1743| 
        MOV *SP(#6), T1 ; |1743| 
$C$DW$922	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$922, DW_AT_low_pc(0x00)
	.dwattr $C$DW$922, DW_AT_name("_dataWrite")
	.dwattr $C$DW$922, DW_AT_TI_call
        CALL #_dataWrite ; |1743| 
                                        ; call occurs [#_dataWrite] ; |1743| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1744,column 2,is_stmt
        MOV *SP(#0), AR1 ; |1744| 
        MOV *SP(#6), T1 ; |1744| 
        ADD #7, AR1, T0 ; |1744| 
$C$DW$923	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$923, DW_AT_low_pc(0x00)
	.dwattr $C$DW$923, DW_AT_name("_dataWrite")
	.dwattr $C$DW$923, DW_AT_TI_call
        CALL #_dataWrite ; |1744| 
                                        ; call occurs [#_dataWrite] ; |1744| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1745,column 2,is_stmt
$C$DW$924	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$924, DW_AT_low_pc(0x00)
	.dwattr $C$DW$924, DW_AT_name("_wait")
	.dwattr $C$DW$924, DW_AT_TI_call

        CALL #_wait ; |1745| 
||      MOV #10, AC0 ; |1745| 

                                        ; call occurs [#_wait] ; |1745| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1747,column 2,is_stmt
        MOV #117, T0 ; |1747| 
        MOV *SP(#6), T1 ; |1747| 
$C$DW$925	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$925, DW_AT_low_pc(0x00)
	.dwattr $C$DW$925, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$925, DW_AT_TI_call
        CALL #_cmdWrite ; |1747| 
                                        ; call occurs [#_cmdWrite] ; |1747| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1748,column 2,is_stmt
        MOV *SP(#1), T0 ; |1748| 
        MOV *SP(#6), T1 ; |1748| 
$C$DW$926	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$926, DW_AT_low_pc(0x00)
	.dwattr $C$DW$926, DW_AT_name("_dataWrite")
	.dwattr $C$DW$926, DW_AT_TI_call
        CALL #_dataWrite ; |1748| 
                                        ; call occurs [#_dataWrite] ; |1748| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1749,column 2,is_stmt
        MOV *SP(#6), T1 ; |1749| 
        MOV *SP(#1), AR1 ; |1749| 
        ADD #15, AR1, T0 ; |1749| 
$C$DW$927	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$927, DW_AT_low_pc(0x00)
	.dwattr $C$DW$927, DW_AT_name("_dataWrite")
	.dwattr $C$DW$927, DW_AT_TI_call
        CALL #_dataWrite ; |1749| 
                                        ; call occurs [#_dataWrite] ; |1749| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1750,column 2,is_stmt
$C$DW$928	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$928, DW_AT_low_pc(0x00)
	.dwattr $C$DW$928, DW_AT_name("_wait")
	.dwattr $C$DW$928, DW_AT_TI_call

        CALL #_wait ; |1750| 
||      MOV #10, AC0 ; |1750| 

                                        ; call occurs [#_wait] ; |1750| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1752,column 2,is_stmt
        MOV #92, T0 ; |1752| 
        MOV *SP(#6), T1 ; |1752| 
$C$DW$929	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$929, DW_AT_low_pc(0x00)
	.dwattr $C$DW$929, DW_AT_name("_cmdWrite")
	.dwattr $C$DW$929, DW_AT_TI_call
        CALL #_cmdWrite ; |1752| 
                                        ; call occurs [#_cmdWrite] ; |1752| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1755,column 9,is_stmt
        MOV #0, *SP(#13) ; |1755| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1755,column 14,is_stmt
        MOV #16, AR2 ; |1755| 
        MOV *SP(#13), AR1 ; |1755| 
        CMPU AR1 >= AR2, TC1 ; |1755| 
        BCC $C$L186,TC1 ; |1755| 
                                        ; branchcc occurs ; |1755| 
$C$L181:    
$C$DW$L$_draw_font$2$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1757,column 9,is_stmt
        MOV *SP(#13), T0 ; |1757| 
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3(T0), AR1 ; |1757| 
        MOV AR1, *SP(#12) ; |1757| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1758,column 13,is_stmt
        MOV #0, *SP(#14) ; |1758| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1758,column 18,is_stmt

        MOV *SP(#14), AR1 ; |1758| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1758| 
        BCC $C$L185,TC1 ; |1758| 
                                        ; branchcc occurs ; |1758| 
$C$DW$L$_draw_font$2$E:
$C$L182:    
$C$DW$L$_draw_font$3$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1760,column 13,is_stmt

        MOV #128, AC0 ; |1760| 
||      NEG AR1, T1 ; |1760| 

        SFTS AC0, T1, AC0 ; |1760| 
        AND *SP(#12), AC0, AC0 ; |1760| 
        MOV AC0, *SP(#15) ; |1760| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1761,column 13,is_stmt
        MOV AC0, AR1
        BCC $C$L183,AR1 != #0 ; |1761| 
                                        ; branchcc occurs ; |1761| 
$C$DW$L$_draw_font$3$E:
$C$DW$L$_draw_font$4$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1763,column 17,is_stmt
        MOV *SP(#6), T1 ; |1763| 
$C$DW$930	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$930, DW_AT_low_pc(0x00)
	.dwattr $C$DW$930, DW_AT_name("_dataWrite")
	.dwattr $C$DW$930, DW_AT_TI_call

        CALL #_dataWrite ; |1763| 
||      MOV #0, T0

                                        ; call occurs [#_dataWrite] ; |1763| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1764,column 17,is_stmt
        MOV *SP(#6), T1 ; |1764| 
$C$DW$931	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$931, DW_AT_low_pc(0x00)
	.dwattr $C$DW$931, DW_AT_name("_dataWrite")
	.dwattr $C$DW$931, DW_AT_TI_call
        CALL #_dataWrite ; |1764| 
                                        ; call occurs [#_dataWrite] ; |1764| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1766,column 13,is_stmt
        B $C$L184 ; |1766| 
                                        ; branch occurs ; |1766| 
$C$DW$L$_draw_font$4$E:
$C$L183:    
$C$DW$L$_draw_font$5$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1769,column 17,is_stmt
        MOV *SP(#19), T0 ; |1769| 
        MOV *SP(#6), T1 ; |1769| 
$C$DW$932	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$932, DW_AT_low_pc(0x00)
	.dwattr $C$DW$932, DW_AT_name("_dataWrite")
	.dwattr $C$DW$932, DW_AT_TI_call
        CALL #_dataWrite ; |1769| 
                                        ; call occurs [#_dataWrite] ; |1769| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1770,column 17,is_stmt
        MOV *SP(#20), T0 ; |1770| 
        MOV *SP(#6), T1 ; |1770| 
$C$DW$933	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$933, DW_AT_low_pc(0x00)
	.dwattr $C$DW$933, DW_AT_name("_dataWrite")
	.dwattr $C$DW$933, DW_AT_TI_call
        CALL #_dataWrite ; |1770| 
                                        ; call occurs [#_dataWrite] ; |1770| 
$C$DW$L$_draw_font$5$E:
$C$L184:    
$C$DW$L$_draw_font$6$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1758,column 23,is_stmt
        ADD #1, *SP(#14) ; |1758| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1758,column 18,is_stmt
        MOV *SP(#14), AR1 ; |1758| 
        CMPU AR1 < AR2, TC1 ; |1758| 
        BCC $C$L182,TC1 ; |1758| 
                                        ; branchcc occurs ; |1758| 
$C$DW$L$_draw_font$6$E:
$C$L185:    
$C$DW$L$_draw_font$7$B:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1755,column 34,is_stmt
        ADD #1, *SP(#13) ; |1755| 
	.dwpsn	file "./telecom/lcdc_panel.c",line 1755,column 14,is_stmt
        MOV #16, AR2 ; |1755| 
        MOV *SP(#13), AR1 ; |1755| 
        CMPU AR1 < AR2, TC1 ; |1755| 
        BCC $C$L181,TC1 ; |1755| 
                                        ; branchcc occurs ; |1755| 
$C$DW$L$_draw_font$7$E:
	.dwpsn	file "./telecom/lcdc_panel.c",line 1774,column 1,is_stmt
$C$L186:    
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$934	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$934, DW_AT_low_pc(0x00)
	.dwattr $C$DW$934, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$935	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$935, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L181:1:1726009971")
	.dwattr $C$DW$935, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$935, DW_AT_TI_begin_line(0x6db)
	.dwattr $C$DW$935, DW_AT_TI_end_line(0x6ed)
$C$DW$936	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$936, DW_AT_low_pc($C$DW$L$_draw_font$2$B)
	.dwattr $C$DW$936, DW_AT_high_pc($C$DW$L$_draw_font$2$E)
$C$DW$937	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$937, DW_AT_low_pc($C$DW$L$_draw_font$7$B)
	.dwattr $C$DW$937, DW_AT_high_pc($C$DW$L$_draw_font$7$E)

$C$DW$938	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$938, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/lcdc_panel.asm:$C$L182:2:1726009971")
	.dwattr $C$DW$938, DW_AT_TI_begin_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$938, DW_AT_TI_begin_line(0x6de)
	.dwattr $C$DW$938, DW_AT_TI_end_line(0x6ec)
$C$DW$939	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$939, DW_AT_low_pc($C$DW$L$_draw_font$3$B)
	.dwattr $C$DW$939, DW_AT_high_pc($C$DW$L$_draw_font$3$E)
$C$DW$940	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$940, DW_AT_low_pc($C$DW$L$_draw_font$4$B)
	.dwattr $C$DW$940, DW_AT_high_pc($C$DW$L$_draw_font$4$E)
$C$DW$941	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$941, DW_AT_low_pc($C$DW$L$_draw_font$5$B)
	.dwattr $C$DW$941, DW_AT_high_pc($C$DW$L$_draw_font$5$E)
$C$DW$942	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$942, DW_AT_low_pc($C$DW$L$_draw_font$6$B)
	.dwattr $C$DW$942, DW_AT_high_pc($C$DW$L$_draw_font$6$E)
	.dwendtag $C$DW$938

	.dwendtag $C$DW$935

	.dwattr $C$DW$899, DW_AT_TI_end_file("./telecom/lcdc_panel.c")
	.dwattr $C$DW$899, DW_AT_TI_end_line(0x6ee)
	.dwattr $C$DW$899, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$899

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strlen
	.global	_LCD_configDMA
	.global	_hLcdc

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$943	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST1"), DW_AT_const_value(0x00)
$C$DW$944	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST2"), DW_AT_const_value(0x01)
$C$DW$945	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST4"), DW_AT_const_value(0x02)
$C$DW$946	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST8"), DW_AT_const_value(0x03)
$C$DW$947	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST16"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcDmaBurst")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$948	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_EOFINT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$949	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_EOFINT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcEofIntCtl")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$950	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_ENDIANESS_LITTLE"), DW_AT_const_value(0x00)
$C$DW$951	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_ENDIANESS_BIG"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcEndianess")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$952	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_FBMODE_SINGLE"), DW_AT_const_value(0x00)
$C$DW$953	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_FBMODE_DOUBLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcFrameMode")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$954	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS0"), DW_AT_const_value(0x00)
$C$DW$955	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS1"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$42

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcChipSelect")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$956	.dwtag  DW_TAG_enumerator, DW_AT_name("COLOURS_256"), DW_AT_const_value(0x00)
$C$DW$957	.dwtag  DW_TAG_enumerator, DW_AT_name("COLOURS_65K"), DW_AT_const_value(0x01)
$C$DW$958	.dwtag  DW_TAG_enumerator, DW_AT_name("COLOURS_262K_1ST"), DW_AT_const_value(0x02)
$C$DW$959	.dwtag  DW_TAG_enumerator, DW_AT_name("COLOURS_262K_2ND"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("eColourMode")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$960	.dwtag  DW_TAG_enumerator, DW_AT_name("I_VSL_NP"), DW_AT_const_value(0x00)
$C$DW$961	.dwtag  DW_TAG_enumerator, DW_AT_name("I_VSL_PS"), DW_AT_const_value(0x12)
$C$DW$962	.dwtag  DW_TAG_enumerator, DW_AT_name("E_VSL_NP"), DW_AT_const_value(0x05)
$C$DW$963	.dwtag  DW_TAG_enumerator, DW_AT_name("E_VSL_PS"), DW_AT_const_value(0x15)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("ePowerSaveMode")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x52)
$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$964, DW_AT_name("LCDREVMIN")
	.dwattr $C$DW$964, DW_AT_TI_symbol_name("_LCDREVMIN")
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$965, DW_AT_name("LCDREVMAJ")
	.dwattr $C$DW$965, DW_AT_TI_symbol_name("_LCDREVMAJ")
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$966, DW_AT_name("RSVD0")
	.dwattr $C$DW$966, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$967, DW_AT_name("LCDCR")
	.dwattr $C$DW$967, DW_AT_TI_symbol_name("_LCDCR")
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$968, DW_AT_name("RSVD1")
	.dwattr $C$DW$968, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$969, DW_AT_name("LCDSR")
	.dwattr $C$DW$969, DW_AT_TI_symbol_name("_LCDSR")
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$970, DW_AT_name("RSVD2")
	.dwattr $C$DW$970, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$971, DW_AT_name("LCDLIDDCR")
	.dwattr $C$DW$971, DW_AT_TI_symbol_name("_LCDLIDDCR")
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$972, DW_AT_name("RSVD3")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$973, DW_AT_name("LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$973, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$974, DW_AT_name("LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$974, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$975, DW_AT_name("RSVD4")
	.dwattr $C$DW$975, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$976, DW_AT_name("LCDLIDDCS0ADDR")
	.dwattr $C$DW$976, DW_AT_TI_symbol_name("_LCDLIDDCS0ADDR")
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$977, DW_AT_name("RSVD5")
	.dwattr $C$DW$977, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$978, DW_AT_name("LCDLIDDCS0DATA")
	.dwattr $C$DW$978, DW_AT_TI_symbol_name("_LCDLIDDCS0DATA")
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$979, DW_AT_name("RSVD6")
	.dwattr $C$DW$979, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$980, DW_AT_name("LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$980, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$981, DW_AT_name("LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$981, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$982, DW_AT_name("RSVD7")
	.dwattr $C$DW$982, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$983, DW_AT_name("LCDLIDDCS1ADDR")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("_LCDLIDDCS1ADDR")
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$984, DW_AT_name("RSVD8")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$985, DW_AT_name("LCDLIDDCS1DATA")
	.dwattr $C$DW$985, DW_AT_TI_symbol_name("_LCDLIDDCS1DATA")
	.dwattr $C$DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$986, DW_AT_name("RSVD9")
	.dwattr $C$DW$986, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$987, DW_AT_name("LCDDMACR")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("_LCDDMACR")
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$988, DW_AT_name("RSVD10")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$989, DW_AT_name("LCDDMAFB0BAR0")
	.dwattr $C$DW$989, DW_AT_TI_symbol_name("_LCDDMAFB0BAR0")
	.dwattr $C$DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$990, DW_AT_name("LCDDMAFB0BAR1")
	.dwattr $C$DW$990, DW_AT_TI_symbol_name("_LCDDMAFB0BAR1")
	.dwattr $C$DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$991, DW_AT_name("RSVD11")
	.dwattr $C$DW$991, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$992, DW_AT_name("LCDDMAFB0CAR0")
	.dwattr $C$DW$992, DW_AT_TI_symbol_name("_LCDDMAFB0CAR0")
	.dwattr $C$DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$993, DW_AT_name("LCDDMAFB0CAR1")
	.dwattr $C$DW$993, DW_AT_TI_symbol_name("_LCDDMAFB0CAR1")
	.dwattr $C$DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$994, DW_AT_name("RSVD12")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$995, DW_AT_name("LCDDMAFB1BAR0")
	.dwattr $C$DW$995, DW_AT_TI_symbol_name("_LCDDMAFB1BAR0")
	.dwattr $C$DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$996, DW_AT_name("LCDDMAFB1BAR1")
	.dwattr $C$DW$996, DW_AT_TI_symbol_name("_LCDDMAFB1BAR1")
	.dwattr $C$DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x4d]
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$997, DW_AT_name("RSVD13")
	.dwattr $C$DW$997, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$998, DW_AT_name("LCDDMAFB1CAR0")
	.dwattr $C$DW$998, DW_AT_TI_symbol_name("_LCDDMAFB1CAR0")
	.dwattr $C$DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$999, DW_AT_name("LCDDMAFB1CAR1")
	.dwattr $C$DW$999, DW_AT_TI_symbol_name("_LCDDMAFB1CAR1")
	.dwattr $C$DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegs")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$1000	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$35)
$C$DW$1001	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$1000)
$C$DW$T$36	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$1001)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x10)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegsOvly")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x0c)
$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1002, DW_AT_name("burstSize")
	.dwattr $C$DW$1002, DW_AT_TI_symbol_name("_burstSize")
	.dwattr $C$DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1003, DW_AT_name("eofIntEn")
	.dwattr $C$DW$1003, DW_AT_TI_symbol_name("_eofIntEn")
	.dwattr $C$DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$1004, DW_AT_name("bigEndian")
	.dwattr $C$DW$1004, DW_AT_TI_symbol_name("_bigEndian")
	.dwattr $C$DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1005, DW_AT_name("frameMode")
	.dwattr $C$DW$1005, DW_AT_TI_symbol_name("_frameMode")
	.dwattr $C$DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1006, DW_AT_name("fb0Base")
	.dwattr $C$DW$1006, DW_AT_TI_symbol_name("_fb0Base")
	.dwattr $C$DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1007, DW_AT_name("fb0Ceil")
	.dwattr $C$DW$1007, DW_AT_TI_symbol_name("_fb0Ceil")
	.dwattr $C$DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1008, DW_AT_name("fb1Base")
	.dwattr $C$DW$1008, DW_AT_TI_symbol_name("_fb1Base")
	.dwattr $C$DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1009, DW_AT_name("fb1Ceil")
	.dwattr $C$DW$1009, DW_AT_TI_symbol_name("_fb1Ceil")
	.dwattr $C$DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcConfigDma")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$1010, DW_AT_name("regs")
	.dwattr $C$DW$1010, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$1011, DW_AT_name("perNum")
	.dwattr $C$DW$1011, DW_AT_TI_symbol_name("_perNum")
	.dwattr $C$DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcHandle")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
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
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x1000)
$C$DW$1012	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1012, DW_AT_upper_bound(0xfff)
	.dwendtag $C$DW$T$83

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_InstNum")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$1013	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$1013)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$1014	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1014, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x03)
$C$DW$1015	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1015, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1b)
$C$DW$1016	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1016, DW_AT_upper_bound(0x1a)
	.dwendtag $C$DW$T$23

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)

$C$DW$T$105	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x08)
$C$DW$1017	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1017, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$105


$C$DW$T$106	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x40)
$C$DW$1018	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1018, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$106

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$1019	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$33)
$C$DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$1019)
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
$C$DW$T$76	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$76, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$76, DW_AT_name("signed char")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)
$C$DW$1020	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$76)
$C$DW$T$108	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$1020)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x17)
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

$C$DW$1021	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1021, DW_AT_location[DW_OP_reg0]
$C$DW$1022	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1022, DW_AT_location[DW_OP_reg1]
$C$DW$1023	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$1023, DW_AT_location[DW_OP_reg2]
$C$DW$1024	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1024, DW_AT_location[DW_OP_reg3]
$C$DW$1025	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1025, DW_AT_location[DW_OP_reg4]
$C$DW$1026	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$1026, DW_AT_location[DW_OP_reg5]
$C$DW$1027	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1027, DW_AT_location[DW_OP_reg6]
$C$DW$1028	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1028, DW_AT_location[DW_OP_reg7]
$C$DW$1029	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$1029, DW_AT_location[DW_OP_reg8]
$C$DW$1030	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1030, DW_AT_location[DW_OP_reg9]
$C$DW$1031	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1031, DW_AT_location[DW_OP_reg10]
$C$DW$1032	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$1032, DW_AT_location[DW_OP_reg11]
$C$DW$1033	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$1033, DW_AT_location[DW_OP_reg12]
$C$DW$1034	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$1034, DW_AT_location[DW_OP_reg13]
$C$DW$1035	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$1035, DW_AT_location[DW_OP_reg14]
$C$DW$1036	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$1036, DW_AT_location[DW_OP_reg15]
$C$DW$1037	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$1037, DW_AT_location[DW_OP_reg16]
$C$DW$1038	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$1038, DW_AT_location[DW_OP_reg17]
$C$DW$1039	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$1039, DW_AT_location[DW_OP_reg18]
$C$DW$1040	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$1040, DW_AT_location[DW_OP_reg19]
$C$DW$1041	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$1041, DW_AT_location[DW_OP_reg20]
$C$DW$1042	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$1042, DW_AT_location[DW_OP_reg21]
$C$DW$1043	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$1043, DW_AT_location[DW_OP_reg22]
$C$DW$1044	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$1044, DW_AT_location[DW_OP_reg23]
$C$DW$1045	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$1045, DW_AT_location[DW_OP_reg24]
$C$DW$1046	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$1046, DW_AT_location[DW_OP_reg25]
$C$DW$1047	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$1047, DW_AT_location[DW_OP_reg26]
$C$DW$1048	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$1048, DW_AT_location[DW_OP_reg27]
$C$DW$1049	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$1049, DW_AT_location[DW_OP_reg28]
$C$DW$1050	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$1050, DW_AT_location[DW_OP_reg29]
$C$DW$1051	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$1051, DW_AT_location[DW_OP_reg30]
$C$DW$1052	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$1052, DW_AT_location[DW_OP_reg31]
$C$DW$1053	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$1053, DW_AT_location[DW_OP_regx 0x20]
$C$DW$1054	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$1054, DW_AT_location[DW_OP_regx 0x21]
$C$DW$1055	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$1055, DW_AT_location[DW_OP_regx 0x22]
$C$DW$1056	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$1056, DW_AT_location[DW_OP_regx 0x23]
$C$DW$1057	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$1057, DW_AT_location[DW_OP_regx 0x24]
$C$DW$1058	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$1058, DW_AT_location[DW_OP_regx 0x25]
$C$DW$1059	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$1059, DW_AT_location[DW_OP_regx 0x26]
$C$DW$1060	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$1060, DW_AT_location[DW_OP_regx 0x27]
$C$DW$1061	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$1061, DW_AT_location[DW_OP_regx 0x28]
$C$DW$1062	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$1062, DW_AT_location[DW_OP_regx 0x29]
$C$DW$1063	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$1063, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$1064	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$1064, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$1065	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$1065, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$1066	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$1066, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$1067	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$1067, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$1068	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$1068, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$1069	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$1069, DW_AT_location[DW_OP_regx 0x30]
$C$DW$1070	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$1070, DW_AT_location[DW_OP_regx 0x31]
$C$DW$1071	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$1071, DW_AT_location[DW_OP_regx 0x32]
$C$DW$1072	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$1072, DW_AT_location[DW_OP_regx 0x33]
$C$DW$1073	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$1073, DW_AT_location[DW_OP_regx 0x34]
$C$DW$1074	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$1074, DW_AT_location[DW_OP_regx 0x35]
$C$DW$1075	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$1075, DW_AT_location[DW_OP_regx 0x36]
$C$DW$1076	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$1076, DW_AT_location[DW_OP_regx 0x37]
$C$DW$1077	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$1077, DW_AT_location[DW_OP_regx 0x38]
$C$DW$1078	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$1078, DW_AT_location[DW_OP_regx 0x39]
$C$DW$1079	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$1079, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$1080	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$1080, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$1081	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$1081, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$1082	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$1082, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$1083	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$1083, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$1084	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$1084, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$1085	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$1085, DW_AT_location[DW_OP_regx 0x40]
$C$DW$1086	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$1086, DW_AT_location[DW_OP_regx 0x41]
$C$DW$1087	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$1087, DW_AT_location[DW_OP_regx 0x42]
$C$DW$1088	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$1088, DW_AT_location[DW_OP_regx 0x43]
$C$DW$1089	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$1089, DW_AT_location[DW_OP_regx 0x44]
$C$DW$1090	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$1090, DW_AT_location[DW_OP_regx 0x45]
$C$DW$1091	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$1091, DW_AT_location[DW_OP_regx 0x46]
$C$DW$1092	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$1092, DW_AT_location[DW_OP_regx 0x47]
$C$DW$1093	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$1093, DW_AT_location[DW_OP_regx 0x48]
$C$DW$1094	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$1094, DW_AT_location[DW_OP_regx 0x49]
$C$DW$1095	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$1095, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$1096	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$1096, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$1097	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$1097, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$1098	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$1098, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$1099	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$1099, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$1100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$1100, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$1101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$1101, DW_AT_location[DW_OP_regx 0x50]
$C$DW$1102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$1102, DW_AT_location[DW_OP_regx 0x51]
$C$DW$1103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$1103, DW_AT_location[DW_OP_regx 0x52]
$C$DW$1104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$1104, DW_AT_location[DW_OP_regx 0x53]
$C$DW$1105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$1105, DW_AT_location[DW_OP_regx 0x54]
$C$DW$1106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$1106, DW_AT_location[DW_OP_regx 0x55]
$C$DW$1107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$1107, DW_AT_location[DW_OP_regx 0x56]
$C$DW$1108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$1108, DW_AT_location[DW_OP_regx 0x57]
$C$DW$1109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$1109, DW_AT_location[DW_OP_regx 0x58]
$C$DW$1110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$1110, DW_AT_location[DW_OP_regx 0x59]
$C$DW$1111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$1111, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$1112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$1112, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

