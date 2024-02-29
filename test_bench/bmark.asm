;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu Feb 29 16:27:39 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./bmark.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/test_bench")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_input_buf+0,24
	.field  	0,8
	.xlong	0xce0e2069		; _input_buf[0] @ 0
	.xlong	0x4eeecb34		; _input_buf[1] @ 32
	.xlong	0xce038303		; _input_buf[2] @ 64
	.xlong	0xceed7f29		; _input_buf[3] @ 96
	.xlong	0x4e1f84c2		; _input_buf[4] @ 128
	.xlong	0x4eacc6fb		; _input_buf[5] @ 160
	.xlong	0x4ea3360f		; _input_buf[6] @ 192
	.xlong	0xce7c5c9c		; _input_buf[7] @ 224
	.xlong	0xcec36161		; _input_buf[8] @ 256
	.xlong	0xce6c5113		; _input_buf[9] @ 288
	.xlong	0xce368840		; _input_buf[10] @ 320
	.xlong	0x4ef389aa		; _input_buf[11] @ 352
	.xlong	0x4e7fae83		; _input_buf[12] @ 384
	.xlong	0xcefb38dd		; _input_buf[13] @ 416
	.xlong	0x4dd561e2		; _input_buf[14] @ 448
	.xlong	0xce06eb1d		; _input_buf[15] @ 480
	.xlong	0x4dc20ba4		; _input_buf[16] @ 512
	.xlong	0xcdaf7d91		; _input_buf[17] @ 544
	.xlong	0x4c8e68a1		; _input_buf[18] @ 576
	.xlong	0xcbc5fb28		; _input_buf[19] @ 608
	.xlong	0x4d9783e1		; _input_buf[20] @ 640
	.xlong	0x4eb40f9f		; _input_buf[21] @ 672
	.xlong	0xcea8aaa9		; _input_buf[22] @ 704
	.xlong	0x4db94cd8		; _input_buf[23] @ 736
	.xlong	0xce2d3e9c		; _input_buf[24] @ 768
	.xlong	0xcdc340da		; _input_buf[25] @ 800
	.xlong	0x4e597f47		; _input_buf[26] @ 832
	.xlong	0x4e146f5c		; _input_buf[27] @ 864
	.xlong	0xce05d248		; _input_buf[28] @ 896
	.xlong	0x4e413e1c		; _input_buf[29] @ 928
	.xlong	0xcd9fb39f		; _input_buf[30] @ 960
	.xlong	0xcc1ef87a		; _input_buf[31] @ 992
	.xlong	0x4e3469c1		; _input_buf[32] @ 1024
	.xlong	0x4e5d9fb5		; _input_buf[33] @ 1056
	.xlong	0x4c4f6c7a		; _input_buf[34] @ 1088
	.xlong	0x4ea32f43		; _input_buf[35] @ 1120
	.xlong	0x4d768090		; _input_buf[36] @ 1152
	.xlong	0x4e92c6d0		; _input_buf[37] @ 1184
	.xlong	0x4cce0047		; _input_buf[38] @ 1216
	.xlong	0xcef2020b		; _input_buf[39] @ 1248
	.xlong	0x4eeaa4ae		; _input_buf[40] @ 1280
	.xlong	0xce785ac7		; _input_buf[41] @ 1312
	.xlong	0xcd9e77cf		; _input_buf[42] @ 1344
	.xlong	0xcefae29c		; _input_buf[43] @ 1376
	.xlong	0xce14668a		; _input_buf[44] @ 1408
	.xlong	0x4d2b44ea		; _input_buf[45] @ 1440
	.xlong	0xcdaaa882		; _input_buf[46] @ 1472
	.xlong	0x4cb9b439		; _input_buf[47] @ 1504
	.xlong	0x4e18632d		; _input_buf[48] @ 1536
	.xlong	0xcd923072		; _input_buf[49] @ 1568
	.xlong	0xce115480		; _input_buf[50] @ 1600
	.xlong	0xcc96a41c		; _input_buf[51] @ 1632
	.xlong	0x4ea8a9e1		; _input_buf[52] @ 1664
	.xlong	0x4ea5cc95		; _input_buf[53] @ 1696
	.xlong	0x4d3bc797		; _input_buf[54] @ 1728
	.xlong	0xce1bc6ac		; _input_buf[55] @ 1760
	.xlong	0xcef6e8fd		; _input_buf[56] @ 1792
	.xlong	0x4eb22f4f		; _input_buf[57] @ 1824
	.xlong	0xcd4a1b0a		; _input_buf[58] @ 1856
	.xlong	0xce62e26c		; _input_buf[59] @ 1888
	.xlong	0xcd53eefb		; _input_buf[60] @ 1920
	.xlong	0xce0f1e37		; _input_buf[61] @ 1952
	.xlong	0x4e25213c		; _input_buf[62] @ 1984
	.xlong	0x4dcdc374		; _input_buf[63] @ 2016
	.xlong	0xce2c572c		; _input_buf[64] @ 2048
	.xlong	0xcd7ee4ab		; _input_buf[65] @ 2080
	.xlong	0x4e70bf90		; _input_buf[66] @ 2112
	.xlong	0xce5b6833		; _input_buf[67] @ 2144
	.xlong	0x4e7489a4		; _input_buf[68] @ 2176
	.xlong	0x4efc978a		; _input_buf[69] @ 2208
	.xlong	0x4e2093ab		; _input_buf[70] @ 2240
	.xlong	0xcd208f83		; _input_buf[71] @ 2272
	.xlong	0xcecb1c13		; _input_buf[72] @ 2304
	.xlong	0xceeaba4f		; _input_buf[73] @ 2336
	.xlong	0xce9bee99		; _input_buf[74] @ 2368
	.xlong	0xcefa24a9		; _input_buf[75] @ 2400
	.xlong	0xceed7ee4		; _input_buf[76] @ 2432
	.xlong	0x4edebc9e		; _input_buf[77] @ 2464
	.xlong	0xce076a7c		; _input_buf[78] @ 2496
	.xlong	0xcedec5f0		; _input_buf[79] @ 2528
	.xlong	0x4e65bfbe		; _input_buf[80] @ 2560
	.xlong	0xce413742		; _input_buf[81] @ 2592
	.xlong	0x4ee3d81f		; _input_buf[82] @ 2624
	.xlong	0x4ef39410		; _input_buf[83] @ 2656
	.xlong	0x4e74c96e		; _input_buf[84] @ 2688
	.xlong	0xce96fc1f		; _input_buf[85] @ 2720
	.xlong	0xced67f3e		; _input_buf[86] @ 2752
	.xlong	0xcea74af5		; _input_buf[87] @ 2784
	.xlong	0xce6739fe		; _input_buf[88] @ 2816
	.xlong	0x4d59d9b2		; _input_buf[89] @ 2848
	.xlong	0xce22a310		; _input_buf[90] @ 2880
	.xlong	0xce5121f9		; _input_buf[91] @ 2912
	.xlong	0x4d8b0d36		; _input_buf[92] @ 2944
	.xlong	0x4cedc588		; _input_buf[93] @ 2976
	.xlong	0x4d80811a		; _input_buf[94] @ 3008
	.xlong	0xcd6f4655		; _input_buf[95] @ 3040
	.xlong	0xce42f190		; _input_buf[96] @ 3072
	.xlong	0x4ef22302		; _input_buf[97] @ 3104
	.xlong	0x4ea2c410		; _input_buf[98] @ 3136
	.xlong	0x4dc1fdf9		; _input_buf[99] @ 3168
	.xlong	0x4e0db00d		; _input_buf[100] @ 3200
	.xlong	0x4e69c2b0		; _input_buf[101] @ 3232
	.xlong	0xce9f5a3c		; _input_buf[102] @ 3264
	.xlong	0x4e97693c		; _input_buf[103] @ 3296
	.xlong	0x4e705a76		; _input_buf[104] @ 3328
	.xlong	0x4e605c7e		; _input_buf[105] @ 3360
	.xlong	0x4dbcdc89		; _input_buf[106] @ 3392
	.xlong	0xcecc3a25		; _input_buf[107] @ 3424
	.xlong	0x4ec0498e		; _input_buf[108] @ 3456
	.xlong	0xcea28ef9		; _input_buf[109] @ 3488
	.xlong	0xce8ca9a0		; _input_buf[110] @ 3520
	.xlong	0x4c73b849		; _input_buf[111] @ 3552
	.xlong	0xcc5c3028		; _input_buf[112] @ 3584
	.xlong	0xcec10394		; _input_buf[113] @ 3616
	.xlong	0x4e6f69c7		; _input_buf[114] @ 3648
	.xlong	0x4dcf2417		; _input_buf[115] @ 3680
	.xlong	0x4e24f6e0		; _input_buf[116] @ 3712
	.xlong	0x4dbe914f		; _input_buf[117] @ 3744
	.xlong	0xcd7550a1		; _input_buf[118] @ 3776
	.xlong	0xcd9f79bb		; _input_buf[119] @ 3808
	.xlong	0x4ef62b5c		; _input_buf[120] @ 3840
	.xlong	0xcdd5f4c4		; _input_buf[121] @ 3872
	.xlong	0x4e4b9429		; _input_buf[122] @ 3904
	.xlong	0x4cdf0763		; _input_buf[123] @ 3936
	.xlong	0x4ef9120c		; _input_buf[124] @ 3968
	.xlong	0xce232272		; _input_buf[125] @ 4000
	.xlong	0xcd5d87d6		; _input_buf[126] @ 4032
	.xlong	0x4e603fb3		; _input_buf[127] @ 4064
	.xlong	0x4e87b0a0		; _input_buf[128] @ 4096
	.xlong	0xce4b0acf		; _input_buf[129] @ 4128
	.xlong	0x4e3f0b7b		; _input_buf[130] @ 4160
	.xlong	0x4e9b525e		; _input_buf[131] @ 4192
	.xlong	0xcdc804e1		; _input_buf[132] @ 4224
	.xlong	0xcd17126e		; _input_buf[133] @ 4256
	.xlong	0xced61750		; _input_buf[134] @ 4288
	.xlong	0xce87b769		; _input_buf[135] @ 4320
	.xlong	0xce80e595		; _input_buf[136] @ 4352
	.xlong	0xceb3e175		; _input_buf[137] @ 4384
	.xlong	0x4d8e4a65		; _input_buf[138] @ 4416
	.xlong	0xceb771fc		; _input_buf[139] @ 4448
	.xlong	0xcef03069		; _input_buf[140] @ 4480
	.xlong	0x4dfefa9d		; _input_buf[141] @ 4512
	.xlong	0x4ee8c85e		; _input_buf[142] @ 4544
	.xlong	0xced9ff0b		; _input_buf[143] @ 4576
	.xlong	0x4e85f3cd		; _input_buf[144] @ 4608
	.xlong	0x4e8c4c70		; _input_buf[145] @ 4640
	.xlong	0xce3d03c7		; _input_buf[146] @ 4672
	.xlong	0x4e936991		; _input_buf[147] @ 4704
	.xlong	0x4e6137b6		; _input_buf[148] @ 4736
	.xlong	0x4eb1e75b		; _input_buf[149] @ 4768
	.xlong	0xce506bee		; _input_buf[150] @ 4800
	.xlong	0xce287fc1		; _input_buf[151] @ 4832
	.xlong	0x4eb843c9		; _input_buf[152] @ 4864
	.xlong	0x4ef60744		; _input_buf[153] @ 4896
	.xlong	0xce6ade28		; _input_buf[154] @ 4928
	.xlong	0xcd1eccda		; _input_buf[155] @ 4960
	.xlong	0xce161b44		; _input_buf[156] @ 4992
	.xlong	0xce8ec34b		; _input_buf[157] @ 5024
	.xlong	0xce7bf990		; _input_buf[158] @ 5056
	.xlong	0x4e47abda		; _input_buf[159] @ 5088
	.xlong	0x4ebab426		; _input_buf[160] @ 5120
	.xlong	0x4ebd1000		; _input_buf[161] @ 5152
	.xlong	0xcec06fd9		; _input_buf[162] @ 5184
	.xlong	0x4dc56ef1		; _input_buf[163] @ 5216
	.xlong	0xce94cded		; _input_buf[164] @ 5248
	.xlong	0x4db633a6		; _input_buf[165] @ 5280
	.xlong	0x4df586fe		; _input_buf[166] @ 5312
	.xlong	0x4d8b6989		; _input_buf[167] @ 5344
	.xlong	0x4e26a20e		; _input_buf[168] @ 5376
	.xlong	0x4e3bb465		; _input_buf[169] @ 5408
	.xlong	0x4eaa353e		; _input_buf[170] @ 5440
	.xlong	0xcd20877b		; _input_buf[171] @ 5472
	.xlong	0xce860f8a		; _input_buf[172] @ 5504
	.xlong	0x4e29f94b		; _input_buf[173] @ 5536
	.xlong	0xcecf5d1b		; _input_buf[174] @ 5568
	.xlong	0xcdc6313b		; _input_buf[175] @ 5600
	.xlong	0x4ebe35e0		; _input_buf[176] @ 5632
	.xlong	0x4d5fc6af		; _input_buf[177] @ 5664
	.xlong	0x4d91d6d4		; _input_buf[178] @ 5696
	.xlong	0x4d672fbf		; _input_buf[179] @ 5728
	.xlong	0x4e601f18		; _input_buf[180] @ 5760
	.xlong	0x4bf4e950		; _input_buf[181] @ 5792
	.xlong	0xcef4039b		; _input_buf[182] @ 5824
	.xlong	0x4dd4fa97		; _input_buf[183] @ 5856
	.xlong	0x4d921efc		; _input_buf[184] @ 5888
	.xlong	0xcce4a37c		; _input_buf[185] @ 5920
	.xlong	0xce0e8c44		; _input_buf[186] @ 5952
	.xlong	0x4e95fa0d		; _input_buf[187] @ 5984
	.xlong	0x4e947c98		; _input_buf[188] @ 6016
	.xlong	0x4e70370c		; _input_buf[189] @ 6048
	.xlong	0xcefd32eb		; _input_buf[190] @ 6080
	.xlong	0x4de4a63e		; _input_buf[191] @ 6112
	.xlong	0xce82b48a		; _input_buf[192] @ 6144
	.xlong	0x4dab731b		; _input_buf[193] @ 6176
	.xlong	0xcdd26c7b		; _input_buf[194] @ 6208
	.xlong	0xce57ed35		; _input_buf[195] @ 6240
	.xlong	0xce3db6c1		; _input_buf[196] @ 6272
	.xlong	0x4e60f0b0		; _input_buf[197] @ 6304
	.xlong	0x4e977832		; _input_buf[198] @ 6336
	.xlong	0x4b8e19a0		; _input_buf[199] @ 6368
	.xlong	0xcd5d7762		; _input_buf[200] @ 6400
	.xlong	0x4e92a23f		; _input_buf[201] @ 6432
	.xlong	0xced80660		; _input_buf[202] @ 6464
	.xlong	0x4d58a522		; _input_buf[203] @ 6496
	.xlong	0x4d24df25		; _input_buf[204] @ 6528
	.xlong	0x4e769059		; _input_buf[205] @ 6560
	.xlong	0xcd962251		; _input_buf[206] @ 6592
	.xlong	0xce039b49		; _input_buf[207] @ 6624
	.xlong	0xce3d73bd		; _input_buf[208] @ 6656
	.xlong	0x4d66d1a8		; _input_buf[209] @ 6688
	.xlong	0xcd50c21d		; _input_buf[210] @ 6720
	.xlong	0x4ec1c6fb		; _input_buf[211] @ 6752
	.xlong	0x4ef83696		; _input_buf[212] @ 6784
	.xlong	0xce39de94		; _input_buf[213] @ 6816
	.xlong	0xcea646de		; _input_buf[214] @ 6848
	.xlong	0xcea4eff4		; _input_buf[215] @ 6880
	.xlong	0x4eea2396		; _input_buf[216] @ 6912
	.xlong	0xcec72af2		; _input_buf[217] @ 6944
	.xlong	0x4e3b53b5		; _input_buf[218] @ 6976
	.xlong	0x4e328143		; _input_buf[219] @ 7008
	.xlong	0xce82d524		; _input_buf[220] @ 7040
	.xlong	0x4d90c4e5		; _input_buf[221] @ 7072
	.xlong	0xce02ace5		; _input_buf[222] @ 7104
	.xlong	0xcea98f5d		; _input_buf[223] @ 7136
	.xlong	0x4e37999f		; _input_buf[224] @ 7168
	.xlong	0xce652b1a		; _input_buf[225] @ 7200
	.xlong	0xce9b98b0		; _input_buf[226] @ 7232
	.xlong	0x4ecabcc6		; _input_buf[227] @ 7264
	.xlong	0xce01b523		; _input_buf[228] @ 7296
	.xlong	0x4ed0c7fc		; _input_buf[229] @ 7328
	.xlong	0xcd9e40cd		; _input_buf[230] @ 7360
	.xlong	0xcd8c8f94		; _input_buf[231] @ 7392
	.xlong	0x4e516037		; _input_buf[232] @ 7424
	.xlong	0x4e847c04		; _input_buf[233] @ 7456
	.xlong	0x4ec5393b		; _input_buf[234] @ 7488
	.xlong	0x4eef3976		; _input_buf[235] @ 7520
	.xlong	0x4e2cf0f6		; _input_buf[236] @ 7552
	.xlong	0xceb08ac0		; _input_buf[237] @ 7584
	.xlong	0xced0da00		; _input_buf[238] @ 7616
	.xlong	0xcd94bbb7		; _input_buf[239] @ 7648
	.xlong	0xceb75dd4		; _input_buf[240] @ 7680
	.xlong	0xce57802f		; _input_buf[241] @ 7712
	.xlong	0x4eb38c48		; _input_buf[242] @ 7744
	.xlong	0x4e730fc6		; _input_buf[243] @ 7776
	.xlong	0xce03429b		; _input_buf[244] @ 7808
	.xlong	0x4ebab37b		; _input_buf[245] @ 7840
	.xlong	0xce7d7978		; _input_buf[246] @ 7872
	.xlong	0x4e9f9ebc		; _input_buf[247] @ 7904
	.xlong	0xcea7cfd3		; _input_buf[248] @ 7936
	.xlong	0x4e08d459		; _input_buf[249] @ 7968
	.xlong	0x4e544025		; _input_buf[250] @ 8000
	.xlong	0x4ed0a7bf		; _input_buf[251] @ 8032
	.xlong	0x4d1456e8		; _input_buf[252] @ 8064
	.xlong	0x4eba095b		; _input_buf[253] @ 8096
	.xlong	0xcdf7e2e4		; _input_buf[254] @ 8128
	.xlong	0xce150766		; _input_buf[255] @ 8160
	.xlong	0xce700a3c		; _input_buf[256] @ 8192
	.xlong	0x4df326f3		; _input_buf[257] @ 8224
	.xlong	0x4e3ce6bd		; _input_buf[258] @ 8256
	.xlong	0x4e806506		; _input_buf[259] @ 8288
	.xlong	0xcdac8a2d		; _input_buf[260] @ 8320
	.xlong	0xcdc0a79a		; _input_buf[261] @ 8352
	.xlong	0x4e98905c		; _input_buf[262] @ 8384
	.xlong	0x4eb19362		; _input_buf[263] @ 8416
	.xlong	0xce058f9c		; _input_buf[264] @ 8448
	.xlong	0xcd610e66		; _input_buf[265] @ 8480
	.xlong	0xcedeeb9b		; _input_buf[266] @ 8512
	.xlong	0xce9547b4		; _input_buf[267] @ 8544
	.xlong	0x4d08de74		; _input_buf[268] @ 8576
	.xlong	0x4d7b4642		; _input_buf[269] @ 8608
	.xlong	0xcdd7b732		; _input_buf[270] @ 8640
	.xlong	0x4eae16fd		; _input_buf[271] @ 8672
	.xlong	0x4e39e85b		; _input_buf[272] @ 8704
	.xlong	0xccdb09ea		; _input_buf[273] @ 8736
	.xlong	0x4ec63468		; _input_buf[274] @ 8768
	.xlong	0x4dc7c8ad		; _input_buf[275] @ 8800
	.xlong	0xce4410da		; _input_buf[276] @ 8832
	.xlong	0x4ece7f9d		; _input_buf[277] @ 8864
	.xlong	0xcd95e812		; _input_buf[278] @ 8896
	.xlong	0x4efcd130		; _input_buf[279] @ 8928
	.xlong	0xcea23393		; _input_buf[280] @ 8960
	.xlong	0xcd60a589		; _input_buf[281] @ 8992
	.xlong	0x4edd19b0		; _input_buf[282] @ 9024
	.xlong	0x4e89beef		; _input_buf[283] @ 9056
	.xlong	0x4ec6e34d		; _input_buf[284] @ 9088
	.xlong	0x4ddc121c		; _input_buf[285] @ 9120
	.xlong	0xcef7ee81		; _input_buf[286] @ 9152
	.xlong	0x4d85d296		; _input_buf[287] @ 9184
	.xlong	0xcd0c69ce		; _input_buf[288] @ 9216
	.xlong	0x4ef5a717		; _input_buf[289] @ 9248
	.xlong	0xce267f5e		; _input_buf[290] @ 9280
	.xlong	0x4eb70669		; _input_buf[291] @ 9312
	.xlong	0xceb82ba7		; _input_buf[292] @ 9344
	.xlong	0xce226863		; _input_buf[293] @ 9376
	.xlong	0x4ebc7d6f		; _input_buf[294] @ 9408
	.xlong	0x4d58ce5c		; _input_buf[295] @ 9440
	.xlong	0xce8fa668		; _input_buf[296] @ 9472
	.xlong	0x4eda7d61		; _input_buf[297] @ 9504
	.xlong	0xce644baa		; _input_buf[298] @ 9536
	.xlong	0x4e143cfe		; _input_buf[299] @ 9568
	.xlong	0xce8b1cd7		; _input_buf[300] @ 9600
	.xlong	0x4d09c8b6		; _input_buf[301] @ 9632
	.xlong	0xce22a2d4		; _input_buf[302] @ 9664
	.xlong	0x4ecb1236		; _input_buf[303] @ 9696
	.xlong	0xce4e6189		; _input_buf[304] @ 9728
	.xlong	0x4e97eccf		; _input_buf[305] @ 9760
	.xlong	0x4cb27b1f		; _input_buf[306] @ 9792
	.xlong	0x4eba25bf		; _input_buf[307] @ 9824
	.xlong	0xce45f526		; _input_buf[308] @ 9856
	.xlong	0xcdaec888		; _input_buf[309] @ 9888
	.xlong	0x4e91886f		; _input_buf[310] @ 9920
	.xlong	0xce5a8af3		; _input_buf[311] @ 9952
	.xlong	0x4e2a672e		; _input_buf[312] @ 9984
	.xlong	0xce68f3eb		; _input_buf[313] @ 10016
	.xlong	0x4e8c7193		; _input_buf[314] @ 10048
	.xlong	0x4ee49a78		; _input_buf[315] @ 10080
	.xlong	0x4e8b6f8e		; _input_buf[316] @ 10112
	.xlong	0x4db14966		; _input_buf[317] @ 10144
	.xlong	0xce87fbd7		; _input_buf[318] @ 10176
	.xlong	0xce59b0f1		; _input_buf[319] @ 10208
	.xlong	0xcee31124		; _input_buf[320] @ 10240
	.xlong	0xcc8915a4		; _input_buf[321] @ 10272
	.xlong	0x4cc503ae		; _input_buf[322] @ 10304
	.xlong	0xcefbd3b8		; _input_buf[323] @ 10336
	.xlong	0x4e666bbf		; _input_buf[324] @ 10368
	.xlong	0x4ef090bb		; _input_buf[325] @ 10400
	.xlong	0xced780b1		; _input_buf[326] @ 10432
	.xlong	0x4e06ac78		; _input_buf[327] @ 10464
	.xlong	0xce229b4a		; _input_buf[328] @ 10496
	.xlong	0x4e738a30		; _input_buf[329] @ 10528
	.xlong	0x4d004329		; _input_buf[330] @ 10560
	.xlong	0xce8ba4bd		; _input_buf[331] @ 10592
	.xlong	0x4ee88285		; _input_buf[332] @ 10624
	.xlong	0xce72d34c		; _input_buf[333] @ 10656
	.xlong	0xce8941c5		; _input_buf[334] @ 10688
	.xlong	0xcea7fe3d		; _input_buf[335] @ 10720
	.xlong	0xcee2e3ca		; _input_buf[336] @ 10752
	.xlong	0xce8ece03		; _input_buf[337] @ 10784
	.xlong	0xcc8aace0		; _input_buf[338] @ 10816
	.xlong	0xcd9259f1		; _input_buf[339] @ 10848
	.xlong	0xcef11bcf		; _input_buf[340] @ 10880
	.xlong	0x4d6cef3c		; _input_buf[341] @ 10912
	.xlong	0x4e06acf3		; _input_buf[342] @ 10944
	.xlong	0xcef0162d		; _input_buf[343] @ 10976
	.xlong	0x4eaf5b37		; _input_buf[344] @ 11008
	.xlong	0xcea1dc67		; _input_buf[345] @ 11040
	.xlong	0x4e749f35		; _input_buf[346] @ 11072
	.xlong	0xceb8d9e0		; _input_buf[347] @ 11104
	.xlong	0xcea0199e		; _input_buf[348] @ 11136
	.xlong	0x4e3ff500		; _input_buf[349] @ 11168
	.xlong	0x4ea06d4d		; _input_buf[350] @ 11200
	.xlong	0x4eaf0a63		; _input_buf[351] @ 11232
	.xlong	0xce1217a0		; _input_buf[352] @ 11264
	.xlong	0x4ede84ed		; _input_buf[353] @ 11296
	.xlong	0x4dd85fcf		; _input_buf[354] @ 11328
	.xlong	0xcceed875		; _input_buf[355] @ 11360
	.xlong	0xcda8bd2d		; _input_buf[356] @ 11392
	.xlong	0x4e4e0105		; _input_buf[357] @ 11424
	.xlong	0x4d32a487		; _input_buf[358] @ 11456
	.xlong	0xcecfc304		; _input_buf[359] @ 11488
	.xlong	0xce9bfd35		; _input_buf[360] @ 11520
	.xlong	0xce2880e8		; _input_buf[361] @ 11552
	.xlong	0x4ecd1e14		; _input_buf[362] @ 11584
	.xlong	0x4ede744f		; _input_buf[363] @ 11616
	.xlong	0x4d5ad0b5		; _input_buf[364] @ 11648
	.xlong	0xce8ab27e		; _input_buf[365] @ 11680
	.xlong	0x4ee0f3ce		; _input_buf[366] @ 11712
	.xlong	0x4ed5cd5b		; _input_buf[367] @ 11744
	.xlong	0x4e9d64ad		; _input_buf[368] @ 11776
	.xlong	0x4e495f88		; _input_buf[369] @ 11808
	.xlong	0x4d9228ad		; _input_buf[370] @ 11840
	.xlong	0xcd42de1b		; _input_buf[371] @ 11872
	.xlong	0xceee110d		; _input_buf[372] @ 11904
	.xlong	0x4e52ce31		; _input_buf[373] @ 11936
	.xlong	0x4d4009cd		; _input_buf[374] @ 11968
	.xlong	0xce635e25		; _input_buf[375] @ 12000
	.xlong	0xceb1eaab		; _input_buf[376] @ 12032
	.xlong	0xce1368d7		; _input_buf[377] @ 12064
	.xlong	0x4ee4f9cb		; _input_buf[378] @ 12096
	.xlong	0x4ef8351f		; _input_buf[379] @ 12128
	.xlong	0x4e0a6b7e		; _input_buf[380] @ 12160
	.xlong	0xced6bb27		; _input_buf[381] @ 12192
	.xlong	0x4e12309c		; _input_buf[382] @ 12224
	.xlong	0x4d2065d3		; _input_buf[383] @ 12256
	.xlong	0x4e0740bd		; _input_buf[384] @ 12288
	.xlong	0xcee032f9		; _input_buf[385] @ 12320
	.xlong	0x4ca0dcec		; _input_buf[386] @ 12352
	.xlong	0x4e971621		; _input_buf[387] @ 12384
	.xlong	0x4d6dfaa5		; _input_buf[388] @ 12416
	.xlong	0xce878fba		; _input_buf[389] @ 12448
	.xlong	0x4ee26974		; _input_buf[390] @ 12480
	.xlong	0x4e15dcfa		; _input_buf[391] @ 12512
	.xlong	0x49717cd0		; _input_buf[392] @ 12544
	.xlong	0x4ddcdcec		; _input_buf[393] @ 12576
	.xlong	0xce672a59		; _input_buf[394] @ 12608
	.xlong	0x4ec9dbf9		; _input_buf[395] @ 12640
	.xlong	0xce815e5d		; _input_buf[396] @ 12672
	.xlong	0x4e969c7b		; _input_buf[397] @ 12704
	.xlong	0xcc702f8c		; _input_buf[398] @ 12736
	.xlong	0xcee8b557		; _input_buf[399] @ 12768
	.xlong	0x4e3be535		; _input_buf[400] @ 12800
	.xlong	0xce25baac		; _input_buf[401] @ 12832
	.xlong	0xcd87b64f		; _input_buf[402] @ 12864
	.xlong	0x4eb86c25		; _input_buf[403] @ 12896
	.xlong	0xcee8a7c3		; _input_buf[404] @ 12928
	.xlong	0x4e221945		; _input_buf[405] @ 12960
	.xlong	0x4e162524		; _input_buf[406] @ 12992
	.xlong	0x4cc2f487		; _input_buf[407] @ 13024
	.xlong	0xce423dea		; _input_buf[408] @ 13056
	.xlong	0x4ed174e7		; _input_buf[409] @ 13088
	.xlong	0x4e9b062a		; _input_buf[410] @ 13120
	.xlong	0x4e098db2		; _input_buf[411] @ 13152
	.xlong	0xceeff2b8		; _input_buf[412] @ 13184
	.xlong	0xcda38f31		; _input_buf[413] @ 13216
	.xlong	0x4eb56df1		; _input_buf[414] @ 13248
	.xlong	0x4ed9156e		; _input_buf[415] @ 13280
	.xlong	0x4ee211d2		; _input_buf[416] @ 13312
	.xlong	0x4e8abc8a		; _input_buf[417] @ 13344
	.xlong	0xceb76797		; _input_buf[418] @ 13376
	.xlong	0x4eee754e		; _input_buf[419] @ 13408
	.xlong	0xce42812d		; _input_buf[420] @ 13440
	.xlong	0xce346d74		; _input_buf[421] @ 13472
	.xlong	0x4ec75aaf		; _input_buf[422] @ 13504
	.xlong	0x4e8a2bc0		; _input_buf[423] @ 13536
	.xlong	0xceb970a5		; _input_buf[424] @ 13568
	.xlong	0xcdc7b9d1		; _input_buf[425] @ 13600
	.xlong	0xcedeb015		; _input_buf[426] @ 13632
	.xlong	0xcd8159ec		; _input_buf[427] @ 13664
	.xlong	0x4e07a469		; _input_buf[428] @ 13696
	.xlong	0x4ee5240a		; _input_buf[429] @ 13728
	.xlong	0xcdbb20cc		; _input_buf[430] @ 13760
	.xlong	0xceeebd81		; _input_buf[431] @ 13792
	.xlong	0x4e225200		; _input_buf[432] @ 13824
	.xlong	0x4e65920f		; _input_buf[433] @ 13856
	.xlong	0xccb55a19		; _input_buf[434] @ 13888
	.xlong	0xcbaa2fd3		; _input_buf[435] @ 13920
	.xlong	0x4e06a7c2		; _input_buf[436] @ 13952
	.xlong	0xcefb8116		; _input_buf[437] @ 13984
	.xlong	0xcecf6321		; _input_buf[438] @ 14016
	.xlong	0xceac28f7		; _input_buf[439] @ 14048
	.xlong	0x4ee8e429		; _input_buf[440] @ 14080
	.xlong	0xcd87297a		; _input_buf[441] @ 14112
	.xlong	0xce348c01		; _input_buf[442] @ 14144
	.xlong	0xcd9d8025		; _input_buf[443] @ 14176
	.xlong	0x4e83b847		; _input_buf[444] @ 14208
	.xlong	0x4cbaf4e5		; _input_buf[445] @ 14240
	.xlong	0x4eea0bf1		; _input_buf[446] @ 14272
	.xlong	0x4efd7c45		; _input_buf[447] @ 14304
	.xlong	0xce9f64ed		; _input_buf[448] @ 14336
	.xlong	0xce034ad5		; _input_buf[449] @ 14368
	.xlong	0xce52b8b6		; _input_buf[450] @ 14400
	.xlong	0xced5e2a5		; _input_buf[451] @ 14432
	.xlong	0x4d708ce8		; _input_buf[452] @ 14464
	.xlong	0xceeb58d0		; _input_buf[453] @ 14496
	.xlong	0xcefc9d64		; _input_buf[454] @ 14528
	.xlong	0xcd0c08f4		; _input_buf[455] @ 14560
	.xlong	0xcee5e448		; _input_buf[456] @ 14592
	.xlong	0xce4e64e4		; _input_buf[457] @ 14624
	.xlong	0x4ef2cf4a		; _input_buf[458] @ 14656
	.xlong	0xcecba9a3		; _input_buf[459] @ 14688
	.xlong	0xce82bb01		; _input_buf[460] @ 14720
	.xlong	0x4e69cfca		; _input_buf[461] @ 14752
	.xlong	0xce1cff00		; _input_buf[462] @ 14784
	.xlong	0x4e366780		; _input_buf[463] @ 14816
	.xlong	0x4e869036		; _input_buf[464] @ 14848
	.xlong	0x4de055a5		; _input_buf[465] @ 14880
	.xlong	0x4d7b2b35		; _input_buf[466] @ 14912
	.xlong	0xce9aa760		; _input_buf[467] @ 14944
	.xlong	0x4ea1da15		; _input_buf[468] @ 14976
	.xlong	0xced79bdc		; _input_buf[469] @ 15008
	.xlong	0x4bdfafb5		; _input_buf[470] @ 15040
	.xlong	0x4eb791ce		; _input_buf[471] @ 15072
	.xlong	0xcec5240f		; _input_buf[472] @ 15104
	.xlong	0x4ee04a09		; _input_buf[473] @ 15136
	.xlong	0xccdc4eb4		; _input_buf[474] @ 15168
	.xlong	0xceb1581d		; _input_buf[475] @ 15200
	.xlong	0xcd3fe0df		; _input_buf[476] @ 15232
	.xlong	0x4ed93e63		; _input_buf[477] @ 15264
	.xlong	0xced835a6		; _input_buf[478] @ 15296
	.xlong	0x4c35e9e9		; _input_buf[479] @ 15328
	.xlong	0xceb6ae4d		; _input_buf[480] @ 15360
	.xlong	0xcefde2af		; _input_buf[481] @ 15392
	.xlong	0x4e8abab7		; _input_buf[482] @ 15424
	.xlong	0xced29f5b		; _input_buf[483] @ 15456
	.xlong	0xce3fc751		; _input_buf[484] @ 15488
	.xlong	0x4e610c7c		; _input_buf[485] @ 15520
	.xlong	0xcedc324e		; _input_buf[486] @ 15552
	.xlong	0x4dfdc1f0		; _input_buf[487] @ 15584
	.xlong	0x4e468c1b		; _input_buf[488] @ 15616
	.xlong	0xce1af8ec		; _input_buf[489] @ 15648
	.xlong	0xcd1eb6d1		; _input_buf[490] @ 15680
	.xlong	0x4e875783		; _input_buf[491] @ 15712
	.xlong	0xcb3795b4		; _input_buf[492] @ 15744
	.xlong	0x4e6c140b		; _input_buf[493] @ 15776
	.xlong	0xce7d518d		; _input_buf[494] @ 15808
	.xlong	0x4ed62417		; _input_buf[495] @ 15840
	.xlong	0x4e1ffa7a		; _input_buf[496] @ 15872
	.xlong	0x4e926bd2		; _input_buf[497] @ 15904
	.xlong	0x4ea369b6		; _input_buf[498] @ 15936
	.xlong	0x4d5e974c		; _input_buf[499] @ 15968
	.xlong	0x4e36e083		; _input_buf[500] @ 16000
	.xlong	0x4ed1adc6		; _input_buf[501] @ 16032
	.xlong	0x4dc070cc		; _input_buf[502] @ 16064
	.xlong	0xcec1ee99		; _input_buf[503] @ 16096
	.xlong	0xceab9514		; _input_buf[504] @ 16128
	.xlong	0x4ebcafcf		; _input_buf[505] @ 16160
	.xlong	0x4eab7d4c		; _input_buf[506] @ 16192
	.xlong	0xcea5e1e2		; _input_buf[507] @ 16224
	.xlong	0x4b51507c		; _input_buf[508] @ 16256
	.xlong	0xcdbbd6e4		; _input_buf[509] @ 16288
	.xlong	0x4d36fa0b		; _input_buf[510] @ 16320
	.xlong	0x4b149c69		; _input_buf[511] @ 16352
	.xlong	0x4eff4be9		; _input_buf[512] @ 16384
	.xlong	0xce99d33b		; _input_buf[513] @ 16416
	.xlong	0x4d52fab5		; _input_buf[514] @ 16448
	.xlong	0x4e30995f		; _input_buf[515] @ 16480
	.xlong	0x4e74d8cf		; _input_buf[516] @ 16512
	.xlong	0xc98ee070		; _input_buf[517] @ 16544
	.xlong	0x4e14b9fa		; _input_buf[518] @ 16576
	.xlong	0x4e42a801		; _input_buf[519] @ 16608
	.xlong	0x4e97e1fa		; _input_buf[520] @ 16640
	.xlong	0xcede9b26		; _input_buf[521] @ 16672
	.xlong	0xcee7decf		; _input_buf[522] @ 16704
	.xlong	0xcee50c5d		; _input_buf[523] @ 16736
	.xlong	0xce2b32cb		; _input_buf[524] @ 16768
	.xlong	0xce9839d3		; _input_buf[525] @ 16800
	.xlong	0xce05543d		; _input_buf[526] @ 16832
	.xlong	0x4e16fb23		; _input_buf[527] @ 16864
	.xlong	0x4ef8096c		; _input_buf[528] @ 16896
	.xlong	0x4e6cb58c		; _input_buf[529] @ 16928
	.xlong	0x4e83d1d1		; _input_buf[530] @ 16960
	.xlong	0xcd0e7ce3		; _input_buf[531] @ 16992
	.xlong	0xcd8301f1		; _input_buf[532] @ 17024
	.xlong	0xcdd8b304		; _input_buf[533] @ 17056
	.xlong	0x4ec3bf8b		; _input_buf[534] @ 17088
	.xlong	0x4e952dd7		; _input_buf[535] @ 17120
	.xlong	0xceb88920		; _input_buf[536] @ 17152
	.xlong	0x4daea932		; _input_buf[537] @ 17184
	.xlong	0x4e6bec9e		; _input_buf[538] @ 17216
	.xlong	0xce08cde6		; _input_buf[539] @ 17248
	.xlong	0x4e9c9530		; _input_buf[540] @ 17280
	.xlong	0x4e6f0ef1		; _input_buf[541] @ 17312
	.xlong	0xce98039c		; _input_buf[542] @ 17344
	.xlong	0x4e9ad680		; _input_buf[543] @ 17376
	.xlong	0xce1efec9		; _input_buf[544] @ 17408
	.xlong	0x4d860d72		; _input_buf[545] @ 17440
	.xlong	0x4e899ae9		; _input_buf[546] @ 17472
	.xlong	0x4ef74623		; _input_buf[547] @ 17504
	.xlong	0xceb08629		; _input_buf[548] @ 17536
	.xlong	0x4ee022ca		; _input_buf[549] @ 17568
	.xlong	0xce593082		; _input_buf[550] @ 17600
	.xlong	0xce9dcfdf		; _input_buf[551] @ 17632
	.xlong	0x4e02b599		; _input_buf[552] @ 17664
	.xlong	0x4e41280c		; _input_buf[553] @ 17696
	.xlong	0xcec3f6d6		; _input_buf[554] @ 17728
	.xlong	0x4ee3e962		; _input_buf[555] @ 17760
	.xlong	0x4ebd2bd3		; _input_buf[556] @ 17792
	.xlong	0xcec31671		; _input_buf[557] @ 17824
	.xlong	0x4e1cde0c		; _input_buf[558] @ 17856
	.xlong	0xce2648c8		; _input_buf[559] @ 17888
	.xlong	0x4eb142cf		; _input_buf[560] @ 17920
	.xlong	0x4e907d01		; _input_buf[561] @ 17952
	.xlong	0xce0189bb		; _input_buf[562] @ 17984
	.xlong	0x4eca215e		; _input_buf[563] @ 18016
	.xlong	0xcef08ea1		; _input_buf[564] @ 18048
	.xlong	0xce3ebb7e		; _input_buf[565] @ 18080
	.xlong	0xce217025		; _input_buf[566] @ 18112
	.xlong	0x4e5e42fd		; _input_buf[567] @ 18144
	.xlong	0xcefb601b		; _input_buf[568] @ 18176
	.xlong	0xcd6a701f		; _input_buf[569] @ 18208
	.xlong	0xcee805d8		; _input_buf[570] @ 18240
	.xlong	0x4d99f605		; _input_buf[571] @ 18272
	.xlong	0x4e290f24		; _input_buf[572] @ 18304
	.xlong	0x4ec00bbc		; _input_buf[573] @ 18336
	.xlong	0xccdccefd		; _input_buf[574] @ 18368
	.xlong	0x4e5006e7		; _input_buf[575] @ 18400
	.xlong	0xcd1ce894		; _input_buf[576] @ 18432
	.xlong	0x4d60ef39		; _input_buf[577] @ 18464
	.xlong	0x4dac993e		; _input_buf[578] @ 18496
	.xlong	0xcddc614a		; _input_buf[579] @ 18528
	.xlong	0x4da7d061		; _input_buf[580] @ 18560
	.xlong	0x496f9520		; _input_buf[581] @ 18592
	.xlong	0xcdea486a		; _input_buf[582] @ 18624
	.xlong	0x4ebbc4b6		; _input_buf[583] @ 18656
	.xlong	0x4e716510		; _input_buf[584] @ 18688
	.xlong	0xcdf39f90		; _input_buf[585] @ 18720
	.xlong	0x4eaae454		; _input_buf[586] @ 18752
	.xlong	0xce4c036c		; _input_buf[587] @ 18784
	.xlong	0x4c75c0e8		; _input_buf[588] @ 18816
	.xlong	0xce77dcf4		; _input_buf[589] @ 18848
	.xlong	0x4e9c92a3		; _input_buf[590] @ 18880
	.xlong	0x4da065ee		; _input_buf[591] @ 18912
	.xlong	0xcd699852		; _input_buf[592] @ 18944
	.xlong	0x4ef4ed13		; _input_buf[593] @ 18976
	.xlong	0xced0c9e7		; _input_buf[594] @ 19008
	.xlong	0xcd332cc6		; _input_buf[595] @ 19040
	.xlong	0xcda78ae8		; _input_buf[596] @ 19072
	.xlong	0x4dde1135		; _input_buf[597] @ 19104
	.xlong	0x4ef8b81f		; _input_buf[598] @ 19136
	.xlong	0xcefbae6f		; _input_buf[599] @ 19168
	.xlong	0xce6e189c		; _input_buf[600] @ 19200
	.xlong	0xce93af85		; _input_buf[601] @ 19232
	.xlong	0x4ef2eade		; _input_buf[602] @ 19264
	.xlong	0x4e951efa		; _input_buf[603] @ 19296
	.xlong	0x4ef5e25b		; _input_buf[604] @ 19328
	.xlong	0x4ede0f7d		; _input_buf[605] @ 19360
	.xlong	0x4ec41f05		; _input_buf[606] @ 19392
	.xlong	0x4ea69fd3		; _input_buf[607] @ 19424
	.xlong	0xce0a35da		; _input_buf[608] @ 19456
	.xlong	0x4d17802a		; _input_buf[609] @ 19488
	.xlong	0xcecc47b5		; _input_buf[610] @ 19520
	.xlong	0x4eed1088		; _input_buf[611] @ 19552
	.xlong	0x4e659019		; _input_buf[612] @ 19584
	.xlong	0x4e6ef864		; _input_buf[613] @ 19616
	.xlong	0x4e8cc009		; _input_buf[614] @ 19648
	.xlong	0xcd826b18		; _input_buf[615] @ 19680
	.xlong	0xce708213		; _input_buf[616] @ 19712
	.xlong	0xcc69be5e		; _input_buf[617] @ 19744
	.xlong	0x4e63a35c		; _input_buf[618] @ 19776
	.xlong	0xce47af61		; _input_buf[619] @ 19808
	.xlong	0xce8de26b		; _input_buf[620] @ 19840
	.xlong	0x4e8725c5		; _input_buf[621] @ 19872
	.xlong	0x4e5ecd92		; _input_buf[622] @ 19904
	.xlong	0xce4473f9		; _input_buf[623] @ 19936
	.xlong	0xcd8a0ada		; _input_buf[624] @ 19968
	.xlong	0xce6d315c		; _input_buf[625] @ 20000
	.xlong	0xcb9649b7		; _input_buf[626] @ 20032
	.xlong	0xce8c69a4		; _input_buf[627] @ 20064
	.xlong	0xcd4fc262		; _input_buf[628] @ 20096
	.xlong	0x4df811b1		; _input_buf[629] @ 20128
	.xlong	0x4d14e11c		; _input_buf[630] @ 20160
	.xlong	0x4e8095d3		; _input_buf[631] @ 20192
	.xlong	0xce02ef54		; _input_buf[632] @ 20224
	.xlong	0xcda57e67		; _input_buf[633] @ 20256
	.xlong	0x4ebb74be		; _input_buf[634] @ 20288
	.xlong	0xce3a1f02		; _input_buf[635] @ 20320
	.xlong	0x4ed693ef		; _input_buf[636] @ 20352
	.xlong	0x4e009ff8		; _input_buf[637] @ 20384
	.xlong	0x4e0d0867		; _input_buf[638] @ 20416
	.xlong	0x4ed41fbb		; _input_buf[639] @ 20448
	.xlong	0xceb39d5e		; _input_buf[640] @ 20480
	.xlong	0xcedc140d		; _input_buf[641] @ 20512
	.xlong	0xce46716c		; _input_buf[642] @ 20544
	.xlong	0x4e4ee034		; _input_buf[643] @ 20576
	.xlong	0xce7343cb		; _input_buf[644] @ 20608
	.xlong	0xcd9141ca		; _input_buf[645] @ 20640
	.xlong	0xce046c97		; _input_buf[646] @ 20672
	.xlong	0x4e8e5855		; _input_buf[647] @ 20704
	.xlong	0x4df8b80d		; _input_buf[648] @ 20736
	.xlong	0xce6a5346		; _input_buf[649] @ 20768
	.xlong	0xcce4ad8d		; _input_buf[650] @ 20800
	.xlong	0x4ee9295d		; _input_buf[651] @ 20832
	.xlong	0x4ecb6715		; _input_buf[652] @ 20864
	.xlong	0xce09b5a2		; _input_buf[653] @ 20896
	.xlong	0xce2309e4		; _input_buf[654] @ 20928
	.xlong	0x4ead7e74		; _input_buf[655] @ 20960
	.xlong	0x4e4f61a3		; _input_buf[656] @ 20992
	.xlong	0xceeb7733		; _input_buf[657] @ 21024
	.xlong	0xccfa8960		; _input_buf[658] @ 21056
	.xlong	0x4eaf590b		; _input_buf[659] @ 21088
	.xlong	0x4d922508		; _input_buf[660] @ 21120
	.xlong	0x4e250b1c		; _input_buf[661] @ 21152
	.xlong	0x4ee19cc7		; _input_buf[662] @ 21184
	.xlong	0x4cd19ed5		; _input_buf[663] @ 21216
	.xlong	0xce73d039		; _input_buf[664] @ 21248
	.xlong	0x4eb9660a		; _input_buf[665] @ 21280
	.xlong	0x4e0cba8a		; _input_buf[666] @ 21312
	.xlong	0x4ec34276		; _input_buf[667] @ 21344
	.xlong	0x4da90078		; _input_buf[668] @ 21376
	.xlong	0x4ed7dc4b		; _input_buf[669] @ 21408
	.xlong	0x4dc74e43		; _input_buf[670] @ 21440
	.xlong	0xced1bcc2		; _input_buf[671] @ 21472
	.xlong	0x4ebe4525		; _input_buf[672] @ 21504
	.xlong	0xcedf4411		; _input_buf[673] @ 21536
	.xlong	0x4e9aa624		; _input_buf[674] @ 21568
	.xlong	0xcc9fb909		; _input_buf[675] @ 21600
	.xlong	0xceca2a1f		; _input_buf[676] @ 21632
	.xlong	0xce9af41c		; _input_buf[677] @ 21664
	.xlong	0x4e885ca7		; _input_buf[678] @ 21696
	.xlong	0x4e59d8d2		; _input_buf[679] @ 21728
	.xlong	0xcdf7fb0b		; _input_buf[680] @ 21760
	.xlong	0xce8ea4d9		; _input_buf[681] @ 21792
	.xlong	0xcefd641d		; _input_buf[682] @ 21824
	.xlong	0xcec7667c		; _input_buf[683] @ 21856
	.xlong	0x4e31b975		; _input_buf[684] @ 21888
	.xlong	0xce9f65cb		; _input_buf[685] @ 21920
	.xlong	0x4e910a5f		; _input_buf[686] @ 21952
	.xlong	0x4e8fc33a		; _input_buf[687] @ 21984
	.xlong	0x4e96a7fc		; _input_buf[688] @ 22016
	.xlong	0x4ee3f7c1		; _input_buf[689] @ 22048
	.xlong	0xcee39266		; _input_buf[690] @ 22080
	.xlong	0x4ecfa9a1		; _input_buf[691] @ 22112
	.xlong	0xcd828c1e		; _input_buf[692] @ 22144
	.xlong	0x4d4a902e		; _input_buf[693] @ 22176
	.xlong	0xce7d5a47		; _input_buf[694] @ 22208
	.xlong	0xce58ac18		; _input_buf[695] @ 22240
	.xlong	0x4ef75f00		; _input_buf[696] @ 22272
	.xlong	0x4e4353ee		; _input_buf[697] @ 22304
	.xlong	0x4ea41a55		; _input_buf[698] @ 22336
	.xlong	0x4d13b5b0		; _input_buf[699] @ 22368
	.xlong	0xce68e7d3		; _input_buf[700] @ 22400
	.xlong	0x4e3b386f		; _input_buf[701] @ 22432
	.xlong	0x4ca0436c		; _input_buf[702] @ 22464
	.xlong	0xcda263c9		; _input_buf[703] @ 22496
	.xlong	0x4de06b06		; _input_buf[704] @ 22528
	.xlong	0x4c7487e0		; _input_buf[705] @ 22560
	.xlong	0x4db68fe6		; _input_buf[706] @ 22592
	.xlong	0xcde4477e		; _input_buf[707] @ 22624
	.xlong	0x4ed78921		; _input_buf[708] @ 22656
	.xlong	0xce523aa9		; _input_buf[709] @ 22688
	.xlong	0xce189776		; _input_buf[710] @ 22720
	.xlong	0x4eb88401		; _input_buf[711] @ 22752
	.xlong	0xcd89e573		; _input_buf[712] @ 22784
	.xlong	0xcea8346b		; _input_buf[713] @ 22816
	.xlong	0xce03edfd		; _input_buf[714] @ 22848
	.xlong	0x4ee1c2ec		; _input_buf[715] @ 22880
	.xlong	0x4d7f2b93		; _input_buf[716] @ 22912
	.xlong	0x4cf77cb3		; _input_buf[717] @ 22944
	.xlong	0xce44fb47		; _input_buf[718] @ 22976
	.xlong	0x4eb207b3		; _input_buf[719] @ 23008
	.xlong	0x4d197aa7		; _input_buf[720] @ 23040
	.xlong	0xceca6a92		; _input_buf[721] @ 23072
	.xlong	0x4edd7612		; _input_buf[722] @ 23104
	.xlong	0xcd4032cc		; _input_buf[723] @ 23136
	.xlong	0xcee8be1a		; _input_buf[724] @ 23168
	.xlong	0xce9aead9		; _input_buf[725] @ 23200
	.xlong	0x4efb219d		; _input_buf[726] @ 23232
	.xlong	0x4e842fa1		; _input_buf[727] @ 23264
	.xlong	0x4edaac21		; _input_buf[728] @ 23296
	.xlong	0x4eafc136		; _input_buf[729] @ 23328
	.xlong	0x4e87a9ca		; _input_buf[730] @ 23360
	.xlong	0x4e95c782		; _input_buf[731] @ 23392
	.xlong	0x4d9cda7c		; _input_buf[732] @ 23424
	.xlong	0xce89f20a		; _input_buf[733] @ 23456
	.xlong	0x4edba7e8		; _input_buf[734] @ 23488
	.xlong	0x4ec0b7d8		; _input_buf[735] @ 23520
	.xlong	0xcef34c58		; _input_buf[736] @ 23552
	.xlong	0x4ec2a682		; _input_buf[737] @ 23584
	.xlong	0x4e917664		; _input_buf[738] @ 23616
	.xlong	0xce1aa9fa		; _input_buf[739] @ 23648
	.xlong	0xcc881948		; _input_buf[740] @ 23680
	.xlong	0x4eac503e		; _input_buf[741] @ 23712
	.xlong	0xce96021c		; _input_buf[742] @ 23744
	.xlong	0x4e6c89c5		; _input_buf[743] @ 23776
	.xlong	0xcdabcf50		; _input_buf[744] @ 23808
	.xlong	0x4e7d5cef		; _input_buf[745] @ 23840
	.xlong	0xce2a9a8e		; _input_buf[746] @ 23872
	.xlong	0x4e3658ac		; _input_buf[747] @ 23904
	.xlong	0xced9ca6f		; _input_buf[748] @ 23936
	.xlong	0x4ed4eb01		; _input_buf[749] @ 23968
	.xlong	0x4e8b13bd		; _input_buf[750] @ 24000
	.xlong	0xce0826a6		; _input_buf[751] @ 24032
	.xlong	0xcdf94395		; _input_buf[752] @ 24064
	.xlong	0xce4e1a21		; _input_buf[753] @ 24096
	.xlong	0xcde091d4		; _input_buf[754] @ 24128
	.xlong	0xcd7e4831		; _input_buf[755] @ 24160
	.xlong	0xcedb73c0		; _input_buf[756] @ 24192
	.xlong	0xcea3b85d		; _input_buf[757] @ 24224
	.xlong	0xcef143b7		; _input_buf[758] @ 24256
	.xlong	0x4e2bb80a		; _input_buf[759] @ 24288
	.xlong	0xcdf85265		; _input_buf[760] @ 24320
	.xlong	0xcca63b22		; _input_buf[761] @ 24352
	.xlong	0x4e775002		; _input_buf[762] @ 24384
	.xlong	0xce9a0605		; _input_buf[763] @ 24416
	.xlong	0xcc94207f		; _input_buf[764] @ 24448
	.xlong	0x4e851778		; _input_buf[765] @ 24480
	.xlong	0x4e1bd9ea		; _input_buf[766] @ 24512
	.xlong	0x4eaafa4d		; _input_buf[767] @ 24544
	.xlong	0xce8ff21d		; _input_buf[768] @ 24576
	.xlong	0x4ccdbca1		; _input_buf[769] @ 24608
	.xlong	0x4ddbc520		; _input_buf[770] @ 24640
	.xlong	0xceb8a78c		; _input_buf[771] @ 24672
	.xlong	0x4e42bd8f		; _input_buf[772] @ 24704
	.xlong	0x4e7d008e		; _input_buf[773] @ 24736
	.xlong	0xce994c6a		; _input_buf[774] @ 24768
	.xlong	0x4ebc17b4		; _input_buf[775] @ 24800
	.xlong	0x4edbfb33		; _input_buf[776] @ 24832
	.xlong	0xcd4626bd		; _input_buf[777] @ 24864
	.xlong	0x4e5d0d15		; _input_buf[778] @ 24896
	.xlong	0x4e808cb0		; _input_buf[779] @ 24928
	.xlong	0xce6853c0		; _input_buf[780] @ 24960
	.xlong	0x4e9dc249		; _input_buf[781] @ 24992
	.xlong	0xced98e9f		; _input_buf[782] @ 25024
	.xlong	0x4e769b5d		; _input_buf[783] @ 25056
	.xlong	0xcdfef401		; _input_buf[784] @ 25088
	.xlong	0xcd8d3070		; _input_buf[785] @ 25120
	.xlong	0xcee53efb		; _input_buf[786] @ 25152
	.xlong	0x4ef2b36f		; _input_buf[787] @ 25184
	.xlong	0xce233991		; _input_buf[788] @ 25216
	.xlong	0xcc32649a		; _input_buf[789] @ 25248
	.xlong	0x4d4639f4		; _input_buf[790] @ 25280
	.xlong	0xcec80f6d		; _input_buf[791] @ 25312
	.xlong	0x4eb84ba8		; _input_buf[792] @ 25344
	.xlong	0x4e58c788		; _input_buf[793] @ 25376
	.xlong	0x4ecd57ec		; _input_buf[794] @ 25408
	.xlong	0x4e9e7a8d		; _input_buf[795] @ 25440
	.xlong	0x4e0bf70e		; _input_buf[796] @ 25472
	.xlong	0x4eb96eb1		; _input_buf[797] @ 25504
	.xlong	0x4eee77d4		; _input_buf[798] @ 25536
	.xlong	0x4e8ee9bb		; _input_buf[799] @ 25568
	.xlong	0x4e1c55db		; _input_buf[800] @ 25600
	.xlong	0xcd7482e2		; _input_buf[801] @ 25632
	.xlong	0x4e474153		; _input_buf[802] @ 25664
	.xlong	0x4d12ea0f		; _input_buf[803] @ 25696
	.xlong	0x4d94c594		; _input_buf[804] @ 25728
	.xlong	0x4e98fcb7		; _input_buf[805] @ 25760
	.xlong	0x4d9b30de		; _input_buf[806] @ 25792
	.xlong	0x4e3e7d5b		; _input_buf[807] @ 25824
	.xlong	0xce93160d		; _input_buf[808] @ 25856
	.xlong	0xce967431		; _input_buf[809] @ 25888
	.xlong	0xce4ef6db		; _input_buf[810] @ 25920
	.xlong	0xce09e197		; _input_buf[811] @ 25952
	.xlong	0xcea93b82		; _input_buf[812] @ 25984
	.xlong	0x4dfdad01		; _input_buf[813] @ 26016
	.xlong	0x4e09e047		; _input_buf[814] @ 26048
	.xlong	0xcec7f302		; _input_buf[815] @ 26080
	.xlong	0xcefcb027		; _input_buf[816] @ 26112
	.xlong	0x4e6647eb		; _input_buf[817] @ 26144
	.xlong	0x4e1982d6		; _input_buf[818] @ 26176
	.xlong	0xcebf908f		; _input_buf[819] @ 26208
	.xlong	0x4eeac309		; _input_buf[820] @ 26240
	.xlong	0x4e2346ef		; _input_buf[821] @ 26272
	.xlong	0x4d6a83e7		; _input_buf[822] @ 26304
	.xlong	0xceceb330		; _input_buf[823] @ 26336
	.xlong	0x4e52f763		; _input_buf[824] @ 26368
	.xlong	0xcec5ca4d		; _input_buf[825] @ 26400
	.xlong	0xce2f5572		; _input_buf[826] @ 26432
	.xlong	0xcda507ea		; _input_buf[827] @ 26464
	.xlong	0xce25d8aa		; _input_buf[828] @ 26496
	.xlong	0x4e9ba2b7		; _input_buf[829] @ 26528
	.xlong	0xcdd0f4cd		; _input_buf[830] @ 26560
	.xlong	0x4e26775a		; _input_buf[831] @ 26592
	.xlong	0xcd9fed57		; _input_buf[832] @ 26624
	.xlong	0x4d91492c		; _input_buf[833] @ 26656
	.xlong	0x4e5b8132		; _input_buf[834] @ 26688
	.xlong	0xce986a6a		; _input_buf[835] @ 26720
	.xlong	0x4e31d9dc		; _input_buf[836] @ 26752
	.xlong	0xcea319f6		; _input_buf[837] @ 26784
	.xlong	0xce701ba4		; _input_buf[838] @ 26816
	.xlong	0xcec8228b		; _input_buf[839] @ 26848
	.xlong	0xce2586fb		; _input_buf[840] @ 26880
	.xlong	0x4ea052c7		; _input_buf[841] @ 26912
	.xlong	0x4e9efffe		; _input_buf[842] @ 26944
	.xlong	0x4da11a77		; _input_buf[843] @ 26976
	.xlong	0x4e5e3c5b		; _input_buf[844] @ 27008
	.xlong	0x4ea70471		; _input_buf[845] @ 27040
	.xlong	0xce1057e1		; _input_buf[846] @ 27072
	.xlong	0xce920533		; _input_buf[847] @ 27104
	.xlong	0x4ea7342a		; _input_buf[848] @ 27136
	.xlong	0xccb781e0		; _input_buf[849] @ 27168
	.xlong	0x4e188fce		; _input_buf[850] @ 27200
	.xlong	0xcd5e8e90		; _input_buf[851] @ 27232
	.xlong	0x4ecbefdb		; _input_buf[852] @ 27264
	.xlong	0x4e1a6aaf		; _input_buf[853] @ 27296
	.xlong	0x4cb8dd94		; _input_buf[854] @ 27328
	.xlong	0x4e12f91c		; _input_buf[855] @ 27360
	.xlong	0xcd18d148		; _input_buf[856] @ 27392
	.xlong	0xcece99c3		; _input_buf[857] @ 27424
	.xlong	0xceba7f0f		; _input_buf[858] @ 27456
	.xlong	0xce9b6c3b		; _input_buf[859] @ 27488
	.xlong	0xcc9ebe7a		; _input_buf[860] @ 27520
	.xlong	0xcebd8deb		; _input_buf[861] @ 27552
	.xlong	0xcd978403		; _input_buf[862] @ 27584
	.xlong	0xcefd5f08		; _input_buf[863] @ 27616
	.xlong	0x4e971782		; _input_buf[864] @ 27648
	.xlong	0xce7d6803		; _input_buf[865] @ 27680
	.xlong	0xced80f55		; _input_buf[866] @ 27712
	.xlong	0x4edf816b		; _input_buf[867] @ 27744
	.xlong	0x4eadaa94		; _input_buf[868] @ 27776
	.xlong	0x4d2f12d7		; _input_buf[869] @ 27808
	.xlong	0x4e94b5bf		; _input_buf[870] @ 27840
	.xlong	0xcebde796		; _input_buf[871] @ 27872
	.xlong	0xceb6abf2		; _input_buf[872] @ 27904
	.xlong	0x4ece18e5		; _input_buf[873] @ 27936
	.xlong	0x4c0d1435		; _input_buf[874] @ 27968
	.xlong	0x4d130147		; _input_buf[875] @ 28000
	.xlong	0xcebfa8f0		; _input_buf[876] @ 28032
	.xlong	0xceb05e4e		; _input_buf[877] @ 28064
	.xlong	0x4e15f5e3		; _input_buf[878] @ 28096
	.xlong	0x4e161c1d		; _input_buf[879] @ 28128
	.xlong	0x4eb4b87a		; _input_buf[880] @ 28160
	.xlong	0xceaf1343		; _input_buf[881] @ 28192
	.xlong	0xce0cb90a		; _input_buf[882] @ 28224
	.xlong	0xcef9c5e8		; _input_buf[883] @ 28256
	.xlong	0x4e5ff612		; _input_buf[884] @ 28288
	.xlong	0x4e19121d		; _input_buf[885] @ 28320
	.xlong	0xcefab029		; _input_buf[886] @ 28352
	.xlong	0x4eccad55		; _input_buf[887] @ 28384
	.xlong	0x4ea87ae8		; _input_buf[888] @ 28416
	.xlong	0x4e4987c1		; _input_buf[889] @ 28448
	.xlong	0x4ee9415c		; _input_buf[890] @ 28480
	.xlong	0x4d7dcd32		; _input_buf[891] @ 28512
	.xlong	0xceeaf4f8		; _input_buf[892] @ 28544
	.xlong	0x4d838239		; _input_buf[893] @ 28576
	.xlong	0x4dbdf318		; _input_buf[894] @ 28608
	.xlong	0xcea13361		; _input_buf[895] @ 28640
	.xlong	0x4dc3d5d0		; _input_buf[896] @ 28672
	.xlong	0xce1f4858		; _input_buf[897] @ 28704
	.xlong	0xcecedc39		; _input_buf[898] @ 28736
	.xlong	0xcef7ce91		; _input_buf[899] @ 28768
	.xlong	0x4ec64960		; _input_buf[900] @ 28800
	.xlong	0xce6edf5b		; _input_buf[901] @ 28832
	.xlong	0x4df3db88		; _input_buf[902] @ 28864
	.xlong	0x4dee2a27		; _input_buf[903] @ 28896
	.xlong	0x4e9e29fe		; _input_buf[904] @ 28928
	.xlong	0x4ebcc469		; _input_buf[905] @ 28960
	.xlong	0x4ed64859		; _input_buf[906] @ 28992
	.xlong	0x4ec899e8		; _input_buf[907] @ 29024
	.xlong	0x4ed67892		; _input_buf[908] @ 29056
	.xlong	0xce852000		; _input_buf[909] @ 29088
	.xlong	0x4ec66851		; _input_buf[910] @ 29120
	.xlong	0x4d893fd9		; _input_buf[911] @ 29152
	.xlong	0x4d1b1e7a		; _input_buf[912] @ 29184
	.xlong	0x4e3420c4		; _input_buf[913] @ 29216
	.xlong	0xce4ea62d		; _input_buf[914] @ 29248
	.xlong	0x4ce60578		; _input_buf[915] @ 29280
	.xlong	0x4df78a07		; _input_buf[916] @ 29312
	.xlong	0x4c7bcbd7		; _input_buf[917] @ 29344
	.xlong	0xcedf500f		; _input_buf[918] @ 29376
	.xlong	0x4e969371		; _input_buf[919] @ 29408
	.xlong	0xcc17d3d5		; _input_buf[920] @ 29440
	.xlong	0xced73fd1		; _input_buf[921] @ 29472
	.xlong	0xcdbd2a01		; _input_buf[922] @ 29504
	.xlong	0xce8d23bc		; _input_buf[923] @ 29536
	.xlong	0xcecca4e9		; _input_buf[924] @ 29568
	.xlong	0xced4f01c		; _input_buf[925] @ 29600
	.xlong	0x4eea2fc6		; _input_buf[926] @ 29632
	.xlong	0xcd8679d0		; _input_buf[927] @ 29664
	.xlong	0x4efc92e7		; _input_buf[928] @ 29696
	.xlong	0xcd2e6525		; _input_buf[929] @ 29728
	.xlong	0x4ef37129		; _input_buf[930] @ 29760
	.xlong	0xcda29ad0		; _input_buf[931] @ 29792
	.xlong	0xcec5c720		; _input_buf[932] @ 29824
	.xlong	0xceecc320		; _input_buf[933] @ 29856
	.xlong	0xcde70142		; _input_buf[934] @ 29888
	.xlong	0xce899134		; _input_buf[935] @ 29920
	.xlong	0x4d376533		; _input_buf[936] @ 29952
	.xlong	0x4e60cfd8		; _input_buf[937] @ 29984
	.xlong	0xce89e59c		; _input_buf[938] @ 30016
	.xlong	0xced00896		; _input_buf[939] @ 30048
	.xlong	0xce90d3af		; _input_buf[940] @ 30080
	.xlong	0xceda8dae		; _input_buf[941] @ 30112
	.xlong	0x4e1e3e25		; _input_buf[942] @ 30144
	.xlong	0xce801335		; _input_buf[943] @ 30176
	.xlong	0x4eaa10a5		; _input_buf[944] @ 30208
	.xlong	0x4ebfc7c1		; _input_buf[945] @ 30240
	.xlong	0xce678d88		; _input_buf[946] @ 30272
	.xlong	0xceb85238		; _input_buf[947] @ 30304
	.xlong	0x4eac6b9f		; _input_buf[948] @ 30336
	.xlong	0xcef9da8c		; _input_buf[949] @ 30368
	.xlong	0xce6db119		; _input_buf[950] @ 30400
	.xlong	0xcdef9001		; _input_buf[951] @ 30432
	.xlong	0xce9aaad0		; _input_buf[952] @ 30464
	.xlong	0xceb33d88		; _input_buf[953] @ 30496
	.xlong	0xceb08f6b		; _input_buf[954] @ 30528
	.xlong	0xccf76fc4		; _input_buf[955] @ 30560
	.xlong	0x4e854ad6		; _input_buf[956] @ 30592
	.xlong	0xcd7c21cc		; _input_buf[957] @ 30624
	.xlong	0x4e8cbde9		; _input_buf[958] @ 30656
	.xlong	0x4eb6cc3a		; _input_buf[959] @ 30688
	.xlong	0x4cf8cd3b		; _input_buf[960] @ 30720
	.xlong	0xce23606e		; _input_buf[961] @ 30752
	.xlong	0x4edf578e		; _input_buf[962] @ 30784
	.xlong	0x4e451860		; _input_buf[963] @ 30816
	.xlong	0xcecec10c		; _input_buf[964] @ 30848
	.xlong	0x4ed626da		; _input_buf[965] @ 30880
	.xlong	0x4e7cd7b2		; _input_buf[966] @ 30912
	.xlong	0xceea6f7f		; _input_buf[967] @ 30944
	.xlong	0x4e20b587		; _input_buf[968] @ 30976
	.xlong	0xcc3f30a7		; _input_buf[969] @ 31008
	.xlong	0x4dd6ae12		; _input_buf[970] @ 31040
	.xlong	0xcd93cd26		; _input_buf[971] @ 31072
	.xlong	0x4e3228db		; _input_buf[972] @ 31104
	.xlong	0xcc870f51		; _input_buf[973] @ 31136
	.xlong	0xced0c33f		; _input_buf[974] @ 31168
	.xlong	0xced7e9e0		; _input_buf[975] @ 31200
	.xlong	0xce2c1ede		; _input_buf[976] @ 31232
	.xlong	0x4e7c6ba4		; _input_buf[977] @ 31264
	.xlong	0x4e83c089		; _input_buf[978] @ 31296
	.xlong	0x4e60304c		; _input_buf[979] @ 31328
	.xlong	0xce957de3		; _input_buf[980] @ 31360
	.xlong	0x4ebb7db1		; _input_buf[981] @ 31392
	.xlong	0xcef229fb		; _input_buf[982] @ 31424
	.xlong	0xce0419c7		; _input_buf[983] @ 31456
	.xlong	0x4e27848e		; _input_buf[984] @ 31488
	.xlong	0xce41584d		; _input_buf[985] @ 31520
	.xlong	0x4ed55378		; _input_buf[986] @ 31552
	.xlong	0x4ed1833d		; _input_buf[987] @ 31584
	.xlong	0xcefb8d38		; _input_buf[988] @ 31616
	.xlong	0xce908fb9		; _input_buf[989] @ 31648
	.xlong	0xce231cbd		; _input_buf[990] @ 31680
	.xlong	0x4eda994b		; _input_buf[991] @ 31712
	.xlong	0x4da80e75		; _input_buf[992] @ 31744
	.xlong	0x4e7769b1		; _input_buf[993] @ 31776
	.xlong	0x4e481a44		; _input_buf[994] @ 31808
	.xlong	0xce5dc2ea		; _input_buf[995] @ 31840
	.xlong	0xce3545c4		; _input_buf[996] @ 31872
	.xlong	0x4e95041b		; _input_buf[997] @ 31904
	.xlong	0x4ed244b8		; _input_buf[998] @ 31936
	.xlong	0x4e38be03		; _input_buf[999] @ 31968
	.xlong	0x4d7bd0a4		; _input_buf[1000] @ 32000
	.xlong	0x4ee5bd20		; _input_buf[1001] @ 32032
	.xlong	0x4e017332		; _input_buf[1002] @ 32064
	.xlong	0xce5d5bf6		; _input_buf[1003] @ 32096
	.xlong	0x4ebfb374		; _input_buf[1004] @ 32128
	.xlong	0x4eeb8e46		; _input_buf[1005] @ 32160
	.xlong	0xce944818		; _input_buf[1006] @ 32192
	.xlong	0xce81c189		; _input_buf[1007] @ 32224
	.xlong	0xcef6348d		; _input_buf[1008] @ 32256
	.xlong	0x4edd79fd		; _input_buf[1009] @ 32288
	.xlong	0xcdc9ba60		; _input_buf[1010] @ 32320
	.xlong	0x4e67b0fb		; _input_buf[1011] @ 32352
	.xlong	0x4e8097ee		; _input_buf[1012] @ 32384
	.xlong	0x4ed318e2		; _input_buf[1013] @ 32416
	.xlong	0x4ea49254		; _input_buf[1014] @ 32448
	.xlong	0xcec21432		; _input_buf[1015] @ 32480
	.xlong	0xce93d306		; _input_buf[1016] @ 32512
	.xlong	0x4d3fa7fb		; _input_buf[1017] @ 32544
	.xlong	0xcce646a5		; _input_buf[1018] @ 32576
	.xlong	0xceb7513e		; _input_buf[1019] @ 32608
	.xlong	0x4e8a4d3d		; _input_buf[1020] @ 32640
	.xlong	0x4bcb9748		; _input_buf[1021] @ 32672
	.xlong	0xce307827		; _input_buf[1022] @ 32704
$C$IR_1:	.set	2046

	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_t_buf+0,24
	.field  	0,8
	.field	0,32			; _t_buf @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fxpAutoCorrelation")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fxpAutoCorrelation")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$35)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$35)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$8)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$8)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$8)
	.dwendtag $C$DW$1


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$26)
$C$DW$9	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$7


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("sprintf")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_sprintf")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$45)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$26)
$C$DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("clock")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_clock")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$17


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$19

	.bss	_start_time,2,0,2
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("start_time")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_start_time")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _start_time]
	.bss	_stop_time,2,0,2
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("stop_time")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_stop_time")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _stop_time]
	.bss	_input_buf,2046,0,2
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("input_buf")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_input_buf")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _input_buf]
	.bss	_t_buf,2,0,2
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("t_buf")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_t_buf")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _t_buf]
;	../../ti/55x_Tools/bin/acp55 -@/tmp/17478tmOKlW 
	.sect	".text"
	.global	_report_results

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("report_results")
	.dwattr $C$DW$25, DW_AT_low_pc(_report_results)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_report_results")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_TI_begin_file("./results.h")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "./results.h",line 29,column 1,is_stmt,address _report_results

	.dwfde $C$DW$CIE, _report_results
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("results")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_results")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg17]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Expected_CRC")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_Expected_CRC")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("prog_iterations")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_prog_iterations")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: report_results                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_report_results:
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #1, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("results")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_results")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("Expected_CRC")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_Expected_CRC")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("prog_iterations")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_prog_iterations")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("exit_code")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_exit_code")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T1, *SP(#7) ; |29| 
        MOV T0, *SP(#6) ; |29| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./results.h",line 30,column 9,is_stmt
        MOV #42, *SP(#8) ; |30| 
	.dwpsn	file "./results.h",line 41,column 5,is_stmt
        AMOV #$C$FSL1, XAR3 ; |41| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_printf")
	.dwattr $C$DW$33, DW_AT_TI_call
        CALL #_printf ; |41| 
                                        ; call occurs [#_printf] ; |41| 
	.dwpsn	file "./results.h",line 42,column 5,is_stmt
        AMOV #$C$FSL2, XAR3 ; |42| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_printf")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #_printf ; |42| 
                                        ; call occurs [#_printf] ; |42| 
	.dwpsn	file "./results.h",line 43,column 5,is_stmt
        AMOV #$C$FSL3, XAR3 ; |43| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_printf")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_printf ; |43| 
                                        ; call occurs [#_printf] ; |43| 
	.dwpsn	file "./results.h",line 44,column 5,is_stmt
        AMOV #$C$FSL4, XAR3 ; |44| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#7), AR1 ; |44| 
        MOV AR1, *SP(#2) ; |44| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_printf")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #_printf ; |44| 
                                        ; call occurs [#_printf] ; |44| 
	.dwpsn	file "./results.h",line 45,column 5,is_stmt
        AMOV #$C$FSL5, XAR3 ; |45| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, dbl(*SP(#2))
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_printf")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #_printf ; |45| 
                                        ; call occurs [#_printf] ; |45| 
	.dwpsn	file "./results.h",line 53,column 5,is_stmt
        AMOV #$C$FSL6, XAR3 ; |53| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_printf")
	.dwattr $C$DW$38, DW_AT_TI_call
        CALL #_printf ; |53| 
                                        ; call occurs [#_printf] ; |53| 
	.dwpsn	file "./results.h",line 55,column 5,is_stmt
        AMOV #$C$FSL7, XAR3 ; |55| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, AR1 ; |55| 
        MOV AR1, *SP(#2) ; |55| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_printf")
	.dwattr $C$DW$39, DW_AT_TI_call
        CALL #_printf ; |55| 
                                        ; call occurs [#_printf] ; |55| 
	.dwpsn	file "./results.h",line 56,column 5,is_stmt
        AMOV #$C$FSL8, XAR3 ; |56| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |56| 
        MOV AC0, dbl(*SP(#2)) ; |56| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_printf")
	.dwattr $C$DW$40, DW_AT_TI_call
        CALL #_printf ; |56| 
                                        ; call occurs [#_printf] ; |56| 
	.dwpsn	file "./results.h",line 73,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #2, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        MOV dbl(*AR3(short(#2))), AC0 ; |73| 
        BCC $C$L1,AC0 == #0 ; |73| 
                                        ; branchcc occurs ; |73| 

$C$DW$41	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("fduration")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_fduration")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("fiterations")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_fiterations")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("ticks_per_sec")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_ticks_per_sec")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("its_per_sec")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_its_per_sec")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 16]
	.dwpsn	file "./results.h",line 82,column 7,is_stmt
        MOV dbl(*AR3(short(#2))), AC0 ; |82| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("__fltuld")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #__fltuld ; |82| 
                                        ; call occurs [#__fltuld] ; |82| 
        MOV AC0, dbl(*SP(#10)) ; |82| 
	.dwpsn	file "./results.h",line 83,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, T0 ; |83| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("__fltid")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #__fltid ; |83| 
                                        ; call occurs [#__fltid] ; |83| 
        MOV AC0, dbl(*SP(#12)) ; |83| 
	.dwpsn	file "./results.h",line 84,column 7,is_stmt
        MOV dbl(*($C$FL1)), AC0 ; |84| 
        MOV AC0, dbl(*SP(#14)) ; |84| 
	.dwpsn	file "./results.h",line 86,column 7,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |86| 
        MOV dbl(*SP(#14)), AC1 ; |86| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("__divd")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #__divd ; |86| 
                                        ; call occurs [#__divd] ; |86| 

        MOV dbl(*SP(#12)), AC0 ; |86| 
||      OR #0, AC0, AC1

$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("__divd")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #__divd ; |86| 
                                        ; call occurs [#__divd] ; |86| 
        MOV AC0, dbl(*SP(#16)) ; |86| 
	.dwpsn	file "./results.h",line 88,column 7,is_stmt
        AMOV #$C$FSL9, XAR3 ; |88| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#16)), AC0 ; |88| 
        MOV AC0, dbl(*SP(#2)) ; |88| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_printf")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_printf ; |88| 
                                        ; call occurs [#_printf] ; |88| 
	.dwpsn	file "./results.h",line 89,column 7,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |89| 
        MOV dbl(*SP(#14)), AC1 ; |89| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("__divd")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #__divd ; |89| 
                                        ; call occurs [#__divd] ; |89| 
        AMOV #$C$FSL10, XAR3 ; |89| 
        MOV XAR3, dbl(*SP(#0))
        MOV AC0, dbl(*SP(#2)) ; |89| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_printf")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_printf ; |89| 
                                        ; call occurs [#_printf] ; |89| 
	.dwpsn	file "./results.h",line 90,column 7,is_stmt
        MOV dbl(*($C$FL2)), AC0 ; |90| 
        MOV dbl(*SP(#16)), AC1 ; |90| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("__divd")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #__divd ; |90| 
                                        ; call occurs [#__divd] ; |90| 
        AMOV #$C$FSL11, XAR3 ; |90| 
        MOV XAR3, dbl(*SP(#0))
        MOV AC0, dbl(*SP(#2)) ; |90| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_printf")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_printf ; |90| 
                                        ; call occurs [#_printf] ; |90| 
	.dwendtag $C$DW$41

$C$L1:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #3, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./results.h",line 102,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#7), AR2 ; |102| 
        MOV *AR3, AR1 ; |102| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #4, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 == AR1, TC1 ; |102| 
        BCC $C$L2,TC1 ; |102| 
                                        ; branchcc occurs ; |102| 
	.dwpsn	file "./results.h",line 103,column 9,is_stmt
        AMOV #$C$FSL12, XAR3 ; |103| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, AR1 ; |103| 
        MOV AR1, *SP(#2) ; |103| 
        MOV *SP(#7), AR1 ; |103| 
        MOV AR1, *SP(#3) ; |103| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_printf")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_printf ; |103| 
                                        ; call occurs [#_printf] ; |103| 
	.dwpsn	file "./results.h",line 104,column 9,is_stmt
        MOV #-1, *SP(#8) ; |104| 
$C$L2:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #5, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./results.h",line 107,column 5,is_stmt
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #6, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP *SP(#8) == #-1, TC1 ; |107| 
        BCC $C$L3,!TC1 ; |107| 
                                        ; branchcc occurs ; |107| 
	.dwpsn	file "./results.h",line 108,column 9,is_stmt
        AMOV #$C$FSL13, XAR3 ; |108| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_printf")
	.dwattr $C$DW$56, DW_AT_TI_call
        CALL #_printf ; |108| 
                                        ; call occurs [#_printf] ; |108| 
	.dwpsn	file "./results.h",line 109,column 5,is_stmt
        B $C$L4   ; |109| 
                                        ; branch occurs ; |109| 
$C$L3:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #7, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./results.h",line 111,column 9,is_stmt
        AMOV #$C$FSL14, XAR3 ; |111| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_printf")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_printf ; |111| 
                                        ; call occurs [#_printf] ; |111| 
$C$L4:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #8, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./results.h",line 114,column 5,is_stmt
        MOV *SP(#8), T0 ; |114| 
	.dwpsn	file "./results.h",line 115,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$25, DW_AT_TI_end_file("./results.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.global	___fuzz_log

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("__fuzz_log")
	.dwattr $C$DW$59, DW_AT_low_pc(___fuzz_log)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("___fuzz_log")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "./bmark.c",line 25,column 17,is_stmt,address ___fuzz_log

	.dwfde $C$DW$CIE, ___fuzz_log
;*******************************************************************************
;* FUNCTION NAME: __fuzz_log                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,SP,M40,SATA,SATD,RDM,FRCT,SMUL                    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
___fuzz_log:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "./bmark.c",line 26,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "./bmark.c",line 27,column 1,is_stmt
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$59, DW_AT_TI_end_file("./bmark.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x1b)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.global	_t_run_test

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("t_run_test")
	.dwattr $C$DW$61, DW_AT_low_pc(_t_run_test)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_t_run_test")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x2c)
	.dwpsn	file "./bmark.c",line 202,column 4,is_stmt,address _t_run_test

	.dwfde $C$DW$CIE, _t_run_test
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("iterations")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argc")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg13]
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argv")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: t_run_test                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 44 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (5 function parameters)                              *
;*                        (37 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_t_run_test:
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #9, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-43, SP
	.dwcfi	cfa_offset, 44
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("iterations")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("argc")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("argv")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("loop_cnt")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_loop_cnt")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("results")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_results")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("outFilename")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_outFilename")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("InputData")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_InputData")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("AutoCorrData")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_AutoCorrData")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("DataSize")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_DataSize")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("NumberOfLags")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_NumberOfLags")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 31]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("Scale")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_Scale")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("TempVal")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_TempVal")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 33]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("out_symbol_buffer")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_out_symbol_buffer")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("stringHeadPtr")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_stringHeadPtr")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("tmp_buf")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_tmp_buf")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 40]
        MOV XAR0, dbl(*SP(#8))
        MOV T1, *SP(#6) ; |202| 
        MOV T0, *SP(#5) ; |202| 
	.dwpsn	file "./bmark.c",line 205,column 2,is_stmt
        AMOV #$C$FSL15, XAR3 ; |205| 
        MOV XAR3, dbl(*SP(#22))
	.dwpsn	file "./bmark.c",line 227,column 2,is_stmt
        AMOV #$C$FSL16, XAR3 ; |227| 
        MOV XAR3, dbl(*SP(#24))
	.dwpsn	file "./bmark.c",line 228,column 2,is_stmt
        MOV #16, *SP(#31) ; |228| 
	.dwpsn	file "./bmark.c",line 230,column 4,is_stmt
        MOV #1024, T0 ; |230| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_malloc")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #_malloc ; |230| 
                                        ; call occurs [#_malloc] ; |230| 
        MOV XAR0, dbl(*(#_t_buf))
	.dwpsn	file "./bmark.c",line 231,column 4,is_stmt
        MOV dbl(*(#_t_buf)), XAR3
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #10, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        MOV XAR3, AC0
        BCC $C$L5,AC0 != #0 ; |231| 
                                        ; branchcc occurs ; |231| 
	.dwpsn	file "./bmark.c",line 232,column 8,is_stmt
        AMOV #$C$FSL18, XAR3 ; |232| 
        MOV XAR3, dbl(*SP(#0))
        AMOV #$C$FSL17, XAR3 ; |232| 
        MOV XAR3, dbl(*SP(#2))
        MOV #232, *SP(#4) ; |232| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_printf")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_printf ; |232| 
                                        ; call occurs [#_printf] ; |232| 
	.dwpsn	file "./bmark.c",line 233,column 8,is_stmt
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_exit")
	.dwattr $C$DW$83, DW_AT_TI_call

        CALL #_exit ; |233| 
||      MOV #-1, T0

                                        ; call occurs [#_exit] ; |233| 
$C$L5:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #11, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 244,column 5,is_stmt
        AMOV #_input_buf, XAR3 ; |244| 
        MOV XAR3, dbl(*SP(#26))
	.dwpsn	file "./bmark.c",line 245,column 5,is_stmt
        MOV dbl(*(#_t_buf)), XAR3
        MOV XAR3, dbl(*SP(#28))
	.dwpsn	file "./bmark.c",line 246,column 2,is_stmt
        MOV #1024, *SP(#30) ; |246| 
	.dwpsn	file "./bmark.c",line 247,column 2,is_stmt

        MOV *SP(#6), AR1 ; |247| 
||      MOV #3, AR2

	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #12, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR1 >= AR2, TC1 ; |247| 
        BCC $C$L6,TC1 ; |247| 
                                        ; branchcc occurs ; |247| 
	.dwpsn	file "./bmark.c",line 248,column 3,is_stmt
        AMOV #$C$FSL19, XAR3 ; |248| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_printf")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_printf ; |248| 
                                        ; call occurs [#_printf] ; |248| 
$C$L6:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #13, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 251,column 2,is_stmt
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #14, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        MOV *SP(#6), AR1 ; |251| 
        BCC $C$L7,AR1 >= #0 ; |251| 
                                        ; branchcc occurs ; |251| 
	.dwpsn	file "./bmark.c",line 253,column 3,is_stmt
        AMOV #$C$FSL20, XAR3 ; |253| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#24)), XAR3
        MOV XAR3, dbl(*SP(#2))
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_printf")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_printf ; |253| 
                                        ; call occurs [#_printf] ; |253| 
	.dwpsn	file "./bmark.c",line 254,column 3,is_stmt
        MOV #16, *SP(#31) ; |254| 
	.dwpsn	file "./bmark.c",line 255,column 9,is_stmt
        AMOV #$C$FSL21, XAR3 ; |255| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#31), AR1 ; |255| 
        MOV AR1, *SP(#2) ; |255| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_printf")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_printf ; |255| 
                                        ; call occurs [#_printf] ; |255| 
	.dwpsn	file "./bmark.c",line 256,column 2,is_stmt
$C$L7:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #15, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 270,column 6,is_stmt
        MOV #1, *SP(#33) ; |270| 
	.dwpsn	file "./bmark.c",line 271,column 6,is_stmt
        MOV #0, *SP(#32) ; |271| 
	.dwpsn	file "./bmark.c",line 272,column 12,is_stmt
        MOV *SP(#30), AR1 ; |272| 
        MOV *SP(#33), AR2 ; |272| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #16, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 >= AR1, TC1 ; |272| 
        BCC $C$L9,TC1 ; |272| 
                                        ; branchcc occurs ; |272| 
$C$L8:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #17, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
$C$DW$L$_t_run_test$8$B:
	.dwpsn	file "./bmark.c",line 274,column 3,is_stmt
        ADD #1, *SP(#32) ; |274| 
	.dwpsn	file "./bmark.c",line 275,column 3,is_stmt
        MOV *SP(#33), AR1 ; |275| 
        SFTL AR1, #1 ; |275| 
        MOV AR1, *SP(#33) ; |275| 
	.dwpsn	file "./bmark.c",line 272,column 12,is_stmt
        MOV *SP(#33), AR2 ; |272| 
        MOV *SP(#30), AR1 ; |272| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #18, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 < AR1, TC1 ; |272| 
        BCC $C$L8,TC1 ; |272| 
                                        ; branchcc occurs ; |272| 
$C$DW$L$_t_run_test$8$E:
$C$L9:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #19, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 281,column 4,is_stmt
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_clock")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_clock ; |281| 
                                        ; call occurs [#_clock] ; |281| 
        MOV AC0, dbl(*(#_start_time)) ; |281| 
	.dwpsn	file "./bmark.c",line 282,column 4,is_stmt
        AMOV #$C$FSL22, XAR3 ; |282| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_printf")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_printf ; |282| 
                                        ; call occurs [#_printf] ; |282| 
	.dwpsn	file "./bmark.c",line 284,column 10,is_stmt
        MOV #0, *SP(#10) ; |284| 
	.dwpsn	file "./bmark.c",line 284,column 24,is_stmt
        MOV *SP(#5), AR1 ; |284| 
        MOV *SP(#10), AR2 ; |284| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #20, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMPU AR2 >= AR1, TC1 ; |284| 
        BCC $C$L11,TC1 ; |284| 
                                        ; branchcc occurs ; |284| 
$C$L10:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #21, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
$C$DW$L$_t_run_test$10$B:
	.dwpsn	file "./bmark.c",line 286,column 5,is_stmt
        MOV dbl(*SP(#26)), XAR0
        MOV dbl(*SP(#28)), XAR1
        MOV *SP(#30), T0 ; |286| 
        MOV *SP(#31), T1 ; |286| 
        MOV *SP(#32), AR2 ; |286| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_fxpAutoCorrelation")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_fxpAutoCorrelation ; |286| 
                                        ; call occurs [#_fxpAutoCorrelation] ; |286| 
	.dwpsn	file "./bmark.c",line 284,column 47,is_stmt
        ADD #1, *SP(#10) ; |284| 
	.dwpsn	file "./bmark.c",line 284,column 24,is_stmt
        MOV *SP(#5), AR1 ; |284| 
        MOV *SP(#10), AR2 ; |284| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #22, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMPU AR2 < AR1, TC1 ; |284| 
        BCC $C$L10,TC1 ; |284| 
                                        ; branchcc occurs ; |284| 
$C$DW$L$_t_run_test$10$E:
$C$L11:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #23, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 295,column 4,is_stmt
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_clock")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #_clock ; |295| 
                                        ; call occurs [#_clock] ; |295| 
        MOV AC0, dbl(*(#_stop_time)) ; |295| 
	.dwpsn	file "./bmark.c",line 296,column 4,is_stmt
        MOV dbl(*(#_start_time)), AC0 ; |296| 
        SUB AC0, dbl(*(#_stop_time)), AC0 ; |296| 
        MOV AC0, dbl(*SP(#14)) ; |296| 
	.dwpsn	file "./bmark.c",line 298,column 4,is_stmt
        MOV *SP(#5), AR1 ; |298| 
        MOV AR1, *SP(#12) ; |298| 
	.dwpsn	file "./bmark.c",line 304,column 4,is_stmt
        MOV #0, *SP(#17) ; |304| 
	.dwpsn	file "./bmark.c",line 305,column 4,is_stmt
        MOV #0, *SP(#18) ; |305| 
	.dwpsn	file "./bmark.c",line 307,column 4,is_stmt
        MOV #0, *SP(#19) ; |307| 
	.dwpsn	file "./bmark.c",line 308,column 4,is_stmt
        MOV #0, *SP(#20) ; |308| 
	.dwpsn	file "./bmark.c",line 319,column 2,is_stmt
        MOV #0, *SP(#16) ; |319| 
	.dwpsn	file "./bmark.c",line 322,column 4,is_stmt
        MOV #0, *SP(#33) ; |322| 
	.dwpsn	file "./bmark.c",line 323,column 4,is_stmt
        MOV #16, T0 ; |323| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_malloc")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_malloc ; |323| 
                                        ; call occurs [#_malloc] ; |323| 
        MOV XAR0, dbl(*SP(#40))
	.dwpsn	file "./bmark.c",line 324,column 4,is_stmt
        MOV dbl(*SP(#40)), XAR3
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #24, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        MOV XAR3, AC0
        BCC $C$L12,AC0 != #0 ; |324| 
                                        ; branchcc occurs ; |324| 
	.dwpsn	file "./bmark.c",line 325,column 13,is_stmt
        AMOV #$C$FSL18, XAR3 ; |325| 
        MOV XAR3, dbl(*SP(#0))
        AMOV #$C$FSL17, XAR3 ; |325| 
        MOV XAR3, dbl(*SP(#2))
        MOV #325, *SP(#4) ; |325| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_printf")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #_printf ; |325| 
                                        ; call occurs [#_printf] ; |325| 
	.dwpsn	file "./bmark.c",line 326,column 13,is_stmt
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_exit")
	.dwattr $C$DW$93, DW_AT_TI_call

        CALL #_exit ; |326| 
||      MOV #-1, T0

                                        ; call occurs [#_exit] ; |326| 
$C$L12:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #25, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 329,column 9,is_stmt
        MOV #0, *SP(#34) ; |329| 
	.dwpsn	file "./bmark.c",line 329,column 14,is_stmt
        MOV *SP(#31), AR1 ; |329| 
        MOV *SP(#34), AR2 ; |329| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #26, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 >= AR1, TC1 ; |329| 
        BCC $C$L14,TC1 ; |329| 
                                        ; branchcc occurs ; |329| 
$C$L13:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #27, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
$C$DW$L$_t_run_test$14$B:
	.dwpsn	file "./bmark.c",line 330,column 8,is_stmt
        MOV AR2, T0
        AMOV #$C$FSL23, XAR3 ; |330| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#40)), XAR0
        MOV *AR3(T0), AR1 ; |330| 
        MOV AR1, *SP(#2) ; |330| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_sprintf")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_sprintf ; |330| 
                                        ; call occurs [#_sprintf] ; |330| 
        ADD *SP(#33), T0, AR1 ; |330| 
        MOV AR1, *SP(#33) ; |330| 
	.dwpsn	file "./bmark.c",line 329,column 30,is_stmt
        ADD #1, *SP(#34) ; |329| 
	.dwpsn	file "./bmark.c",line 329,column 14,is_stmt
        MOV *SP(#31), AR1 ; |329| 
        MOV *SP(#34), AR2 ; |329| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #28, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 < AR1, TC1 ; |329| 
        BCC $C$L13,TC1 ; |329| 
                                        ; branchcc occurs ; |329| 
$C$DW$L$_t_run_test$14$E:
$C$L14:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #29, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 332,column 4,is_stmt
        MOV dbl(*SP(#40)), XAR0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_free")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_free ; |332| 
                                        ; call occurs [#_free] ; |332| 
	.dwpsn	file "./bmark.c",line 338,column 5,is_stmt
        MOV *SP(#33), AR1 ; |338| 
        ADD #1, AR1, T0 ; |338| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_malloc")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_malloc ; |338| 
                                        ; call occurs [#_malloc] ; |338| 
        MOV XAR0, dbl(*SP(#36))
	.dwpsn	file "./bmark.c",line 339,column 2,is_stmt
        MOV dbl(*SP(#36)), XAR3
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #30, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        MOV XAR3, AC0
        BCC $C$L15,AC0 != #0 ; |339| 
                                        ; branchcc occurs ; |339| 
	.dwpsn	file "./bmark.c",line 340,column 6,is_stmt
        AMOV #$C$FSL18, XAR3 ; |340| 
        MOV XAR3, dbl(*SP(#0))
        AMOV #$C$FSL17, XAR3 ; |340| 
        MOV XAR3, dbl(*SP(#2))
        MOV #340, *SP(#4) ; |340| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_printf")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_printf ; |340| 
                                        ; call occurs [#_printf] ; |340| 
	.dwpsn	file "./bmark.c",line 341,column 6,is_stmt
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_exit")
	.dwattr $C$DW$98, DW_AT_TI_call

        CALL #_exit ; |341| 
||      MOV #-1, T0

                                        ; call occurs [#_exit] ; |341| 
$C$L15:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #31, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 344,column 5,is_stmt
        MOV dbl(*SP(#36)), XAR3
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./bmark.c",line 345,column 10,is_stmt
        MOV #0, *SP(#34) ; |345| 
	.dwpsn	file "./bmark.c",line 345,column 15,is_stmt
        MOV *SP(#31), AR1 ; |345| 
        MOV *SP(#34), AR2 ; |345| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #32, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 >= AR1, TC1 ; |345| 
        BCC $C$L17,TC1 ; |345| 
                                        ; branchcc occurs ; |345| 
$C$L16:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #33, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
$C$DW$L$_t_run_test$18$B:
	.dwpsn	file "./bmark.c",line 346,column 8,is_stmt
        MOV AR2, T0
        AMOV #$C$FSL23, XAR3 ; |346| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#38)), XAR0
        MOV *AR3(T0), AR1 ; |346| 
        MOV AR1, *SP(#2) ; |346| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_sprintf")
	.dwattr $C$DW$99, DW_AT_TI_call
        CALL #_sprintf ; |346| 
                                        ; call occurs [#_sprintf] ; |346| 
        MOV dbl(*SP(#38)), XAR3
        AMAR *(AR3+T0)
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./bmark.c",line 345,column 31,is_stmt
        ADD #1, *SP(#34) ; |345| 
	.dwpsn	file "./bmark.c",line 345,column 15,is_stmt
        MOV *SP(#31), AR1 ; |345| 
        MOV *SP(#34), AR2 ; |345| 
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #34, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
        CMP AR2 < AR1, TC1 ; |345| 
        BCC $C$L16,TC1 ; |345| 
                                        ; branchcc occurs ; |345| 
$C$DW$L$_t_run_test$18$E:
$C$L17:    
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #35, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwpsn	file "./bmark.c",line 352,column 4,is_stmt

        MOV #0, T0
||      AMAR *SP(#12), XAR0

$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_report_results")
	.dwattr $C$DW$100, DW_AT_TI_call

        CALL #_report_results ; |352| 
||      MOV #2, T1

                                        ; call occurs [#_report_results] ; |352| 
	.dwpsn	file "./bmark.c",line 353,column 4,is_stmt
        MOV #42, T0 ; |353| 
	.dwpsn	file "./bmark.c",line 354,column 2,is_stmt
        AADD #43, SP
	.dwcfi	cfa_offset, 1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$102	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$102, DW_AT_name("/home/santiago/dspfuzz/test_bench/bmark.asm:$C$L16:1:1709242059")
	.dwattr $C$DW$102, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x159)
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x15b)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_t_run_test$18$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_t_run_test$18$E)
	.dwendtag $C$DW$102


$C$DW$104	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$104, DW_AT_name("/home/santiago/dspfuzz/test_bench/bmark.asm:$C$L13:1:1709242059")
	.dwattr $C$DW$104, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x149)
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x14b)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_t_run_test$14$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_t_run_test$14$E)
	.dwendtag $C$DW$104


$C$DW$106	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$106, DW_AT_name("/home/santiago/dspfuzz/test_bench/bmark.asm:$C$L10:1:1709242059")
	.dwattr $C$DW$106, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x125)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_t_run_test$10$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_t_run_test$10$E)
	.dwendtag $C$DW$106


$C$DW$108	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$108, DW_AT_name("/home/santiago/dspfuzz/test_bench/bmark.asm:$C$L8:1:1709242059")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x114)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_t_run_test$8$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_t_run_test$8$E)
	.dwendtag $C$DW$108

	.dwattr $C$DW$61, DW_AT_TI_end_file("./bmark.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x162)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x02)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_main

$C$DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$110, DW_AT_low_pc(_main)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_TI_begin_file("./bmark.c")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x16c)
	.dwattr $C$DW$110, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./bmark.c",line 366,column 1,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tcdef")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_tcdef")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg17]
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argc")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]
$C$DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argv")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	PSH T0;
	PSH T1;
	PSH T2;
	PSH T3;
	MOV #36, T3;
	CALL #___fuzz_log;
	POP T3;
	POP T2;
	POP T1;
	POP T0;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("tcdef")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_tcdef")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("argc")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_argc")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("argv")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_argv")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |366| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./bmark.c",line 367,column 4,is_stmt
        MOV *SP(#2), AR1 ; |367| 
	.dwpsn	file "./bmark.c",line 368,column 4,is_stmt
	.dwpsn	file "./bmark.c",line 373,column 4,is_stmt
        MOV #2, T0
        MOV dbl(*SP(#4)), XAR0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_t_run_test")
	.dwattr $C$DW$117, DW_AT_TI_call

        CALL #_t_run_test ; |373| 
||      MOV AR1, T1

                                        ; call occurs [#_t_run_test] ; |373| 
	.dwpsn	file "./bmark.c",line 374,column 4,is_stmt
        MOV #0, T0
	.dwpsn	file "./bmark.c",line 375,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$110, DW_AT_TI_end_file("./bmark.c")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$110

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x49742400
	.align	2
$C$FL2:	.xlong	0x3f800000
;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	">>---------------------------------------------------------"
	.string	"---",10,0
	.align	2
$C$FSL2:	.string	">> Target Processor         : C5515",10,0
	.align	2
$C$FSL3:	.string	">> Target Platform          : TMS320",10,0
	.align	2
$C$FSL4:	.string	">> Programmed Iterations    : %d",10,0
	.align	2
$C$FSL5:	.string	">> Bench Mark               : %s",10,0
	.align	2
$C$FSL6:	.string	"--  No CRC check      = 0000",10,0
	.align	2
$C$FSL7:	.string	"--  Iterations        = %5u",10,0
	.align	2
$C$FSL8:	.string	"--  Target Duration   = %5u",10,0
	.align	2
$C$FSL9:	.string	"--  Iterations/Sec  = %12.3f",10,0
	.align	2
$C$FSL10:	.string	"--  Total Run Time  = %12.3fsec",10,0
	.align	2
$C$FSL11:	.string	"--  Time / Iter     = %18.9fsec",10,0
	.align	2
$C$FSL12:	.string	"--  Failure: Actual iterations %x, Expected iterations %x",10
	.string	0
	.align	2
$C$FSL13:	.string	"Failure: benchmark failed to complete. ",10,0
	.align	2
$C$FSL14:	.string	"Success: benchmark ran. ",10,0
	.align	2
$C$FSL15:	.string	"Autocorrelation Bench Mark V1.0E0 ",10,0
	.align	2
$C$FSL16:	.string	"xsineiOutput.dat",0
	.align	2
$C$FSL17:	.string	"./bmark.c",0
	.align	2
$C$FSL18:	.string	"Cannot Allocate Memory %s:%d",0
	.align	2
$C$FSL19:	.string	"This is a test to check for branch information. ",10,0
	.align	2
$C$FSL20:	.string	"WARNING: Missing output filename  Using: %s",10,0
	.align	2
$C$FSL21:	.string	"WARNING: Cannot determine lags  Using: %d",10,0
	.align	2
$C$FSL22:	.string	"Starting the benchmark!",10,0
	.align	2
$C$FSL23:	.string	" %d",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_fxpAutoCorrelation
	.global	_printf
	.global	_sprintf
	.global	_clock
	.global	_malloc
	.global	_free
	.global	_exit
	.global	__divd
	.global	__fltuld
	.global	__fltid

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("TCDef")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x88)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("eembc_bm_id")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_eembc_bm_id")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("member")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_member")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("processor")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_processor")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("platform")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_platform")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_name("desc")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_desc")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$124, DW_AT_name("revision")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_revision")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$125, DW_AT_name("next")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$126, DW_AT_name("th_vnum_required")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_th_vnum_required")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$127, DW_AT_name("target_vnum_required")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_target_vnum_required")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x85]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$128, DW_AT_name("bm_vnum")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_bm_vnum")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$129, DW_AT_name("rec_iterations")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_rec_iterations")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x87]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x17)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("THTestResults")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x0c)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$130, DW_AT_name("iterations")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$131, DW_AT_name("duration")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_duration")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$132, DW_AT_name("CRC")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_CRC")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$133, DW_AT_name("v1")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_v1")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$134, DW_AT_name("v2")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_v2")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$135, DW_AT_name("v3")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_v3")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$136, DW_AT_name("v4")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_v4")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$137, DW_AT_name("bench_mark")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_bench_mark")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("THTestResults")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$138	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$29)
$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$138)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x17)
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
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
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

$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x7fe)
$C$DW$139	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$139, DW_AT_upper_bound(0x3fe)
	.dwendtag $C$DW$T$60

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$19, DW_AT_name("signed char")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)

$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x10)
$C$DW$140	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$140, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x40)
$C$DW$141	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$141, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$21

$C$DW$142	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
$C$DW$T$25	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$142)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
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

$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg1]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg2]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg3]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg4]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg5]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg6]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg7]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg8]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg9]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg10]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg11]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg12]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg13]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg14]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg15]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg16]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg17]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg18]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg19]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg20]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg21]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg22]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg23]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg24]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg25]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg26]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg27]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg28]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg29]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg30]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg31]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x20]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x21]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x22]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x23]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x24]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x25]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x26]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x27]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x28]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x29]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x30]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x31]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x32]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x33]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x34]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x35]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x36]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x37]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x38]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x39]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x40]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x41]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x42]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x43]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x44]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x45]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x46]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x47]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x48]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x49]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x50]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x51]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x52]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x53]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x54]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x55]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x56]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x57]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x58]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x59]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

