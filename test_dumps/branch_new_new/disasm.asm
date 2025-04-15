
Disassembly of ./on_board/DSPFuzz.out:

DATA section .cinit, 0x62 words load/run at 0x9392
009392:               ___cinit__:
009392:               cinit:
009392:               .cinit:
009392: 0001             .word 0x0001
009393: 0133             .word 0x0133
009394: 8800             .word 0x8800
009395: 0000             .word 0x0000
009396: 0001             .word 0x0001
009397: 0133             .word 0x0133
009398: 8900             .word 0x8900
009399: 0000             .word 0x0000
00939a: 0002             .word 0x0002
00939b: 0133             .word 0x0133
00939c: 8c00             .word 0x8c00
00939d: 0000             .word 0x0000
00939e: 0000             .word 0x0000
00939f: 0001             .word 0x0001
0093a0: 0135             .word 0x0135
0093a1: 1e00             .word 0x1e00
0093a2: 0000             .word 0x0000
0093a3: 0002             .word 0x0002
0093a4: 0135             .word 0x0135
0093a5: 2000             .word 0x2000
0093a6: 0000             .word 0x0000
0093a7: 0000             .word 0x0000
0093a8: 0001             .word 0x0001
0093a9: 0135             .word 0x0135
0093aa: 1f00             .word 0x1f00
0093ab: 0000             .word 0x0000
0093ac: 0001             .word 0x0001
0093ad: 0135             .word 0x0135
0093ae: 2200             .word 0x2200
0093af: 0009             .word 0x0009
0093b0: 0001             .word 0x0001
0093b1: 0135             .word 0x0135
0093b2: 2300             .word 0x2300
0093b3: 0000             .word 0x0000
0093b4: 0001             .word 0x0001
0093b5: 0135             .word 0x0135
0093b6: 3400             .word 0x3400
0093b7: 0000             .word 0x0000
0093b8: 0001             .word 0x0001
0093b9: 0135             .word 0x0135
0093ba: 3500             .word 0x3500
0093bb: 0000             .word 0x0000
0093bc: 0001             .word 0x0001
0093bd: 0135             .word 0x0135
0093be: 3600             .word 0x3600
0093bf: 0000             .word 0x0000
0093c0: 0001             .word 0x0001
0093c1: 0135             .word 0x0135
0093c2: 3700             .word 0x3700
0093c3: 0000             .word 0x0000
0093c4: 0001             .word 0x0001
0093c5: 0135             .word 0x0135
0093c6: 3800             .word 0x3800
0093c7: 0001             .word 0x0001
0093c8: 0001             .word 0x0001
0093c9: 0135             .word 0x0135
0093ca: 3900             .word 0x3900
0093cb: 0023             .word 0x0023
0093cc: 0002             .word 0x0002
0093cd: 0135             .word 0x0135
0093ce: 3a00             .word 0x3a00
0093cf: 0000             .word 0x0000
0093d0: 0000             .word 0x0000
0093d1: 0002             .word 0x0002
0093d2: 0135             .word 0x0135
0093d3: 3e00             .word 0x3e00
0093d4: 0000             .word 0x0000
0093d5: 0000             .word 0x0000
0093d6:               .cinit:
0093d6: 0002             .word 0x0002
0093d7: 0136             .word 0x0136
0093d8: 9a00             .word 0x9a00
0093d9: 0001             .word 0x0001
0093da: 2707             .word 0x2707
0093db: 0002             .word 0x0002
0093dc: 0136             .word 0x0136
0093dd: 9c00             .word 0x9c00
0093de: 0001             .word 0x0001
0093df: 2707             .word 0x2707
0093e0:               .cinit:
0093e0: 0002             .word 0x0002
0093e1: 0136             .word 0x0136
0093e2: 9e00             .word 0x9e00
0093e3: 0000             .word 0x0000
0093e4: 0000             .word 0x0000
0093e5: 0002             .word 0x0002
0093e6: 0136             .word 0x0136
0093e7: a000             .word 0xa000
0093e8: 0000             .word 0x0000
0093e9: 0000             .word 0x0000
0093ea:               .cinit:
0093ea: 0002             .word 0x0002
0093eb: 0136             .word 0x0136
0093ec: a200             .word 0xa200
0093ed: 0000             .word 0x0000
0093ee: 0001             .word 0x0001
0093ef:               .cinit:
0093ef: 0001             .word 0x0001
0093f0: 0136             .word 0x0136
0093f1: 9900             .word 0x9900
0093f2: 0001             .word 0x0001
0093f3: 0000             .word 0x0000

TEXT section .text, 0x2724 bytes load/run at 0x10000
010000:               _crash_void:
010000:               $C$L2:
010000:               $C$DW$L$_crash_void$2$B:
010000: 4a7e             B _crash_void
010002:               _start_timer:
010002:               $C$DW$L$_crash_void$2$E:
010002: 4ef5             AADD #-11,SP
010004: eb0085           MOV XAR0,dbl(@#00h)
010007: ec049e           AMAR @#02h,XAR1
01000a: ec108e           AMAR @#08h,XAR0
01000d: 6c011cdc_3d04    CALL _GPT_open || MOV #0,T0
010013: ed00bf           MOV dbl(@#00h),XAR3
010016: eb6185           MOV XAR0,dbl(*AR3)
010019: ed00bf           MOV dbl(@#00h),XAR3
01001c: ed618f           MOV dbl(*AR3),XAR0
01001f: 6c011d9f         CALL _GPT_reset
010023: c404             MOV T0,@#02h
010025: 6c01108b         CALL _IRQ_clearAll
010029: 6c011226         CALL _IRQ_disableAll
01002d: 7a00000a         MOV #0 << #16,AC0
010031: 7e070000         OR #1792,AC0,AC0
010035: 6c0113cf         CALL _IRQ_setVecs
010039: 76001848         MOV #24,T0
01003d: 7a00010a         MOV #1 << #16,AC0
010041: 7e1ab600         OR #6838,AC0,AC0
010045: 6c0122a1         CALL _IRQ_plug
010049: 7a00010a         MOV #1 << #16,AC0
01004d: 7e196d00         OR #6509,AC0,AC0
010051: 6c0122a1_3d44    CALL _IRQ_plug || MOV #4,T0
010057: 76001848         MOV #24,T0
01005b: 6c011234         CALL _IRQ_enable
01005f: 6c011234_3d44    CALL _IRQ_enable || MOV #4,T0
010065: e60601           MOV #1,@#03h
010068: e60a01           MOV #1,@#05h
01006b: e60800           MOV #0,@#04h
01006e: ed310801353c     MOV dbl(*(#01353ch)),AC0
010074: 10073e           SFTL AC0,#-2,AC0
010077: c00c             MOV AC0,@#06h
010079: e60e00           MOV #0,@#07h
01007c: ed00bf           MOV dbl(@#00h),XAR3
01007f: ec069e           AMAR @#03h,XAR1
010082: ed618f           MOV dbl(*AR3),XAR0
010085: 6c011f20         CALL _GPT_config
010089: c404             MOV T0,@#02h
01008b: 6c01148b         CALL _IRQ_globalEnable
01008f: ed00bf           MOV dbl(@#00h),XAR3
010092: ed618f           MOV dbl(*AR3),XAR0
010095: 6c011e8e         CALL _GPT_start
010099: 4e0b             AADD #11,SP
01009b: 4804             RET
01009d:               _stop_timer:
01009d: 4efd             AADD #-3,SP
01009f: eb0085           MOV XAR0,dbl(@#00h)
0100a2: 6c011472         CALL _IRQ_globalDisable
0100a6: 6c01108b         CALL _IRQ_clearAll
0100aa: 6c011226         CALL _IRQ_disableAll
0100ae: ed00bf           MOV dbl(@#00h),XAR3
0100b1: ed618f           MOV dbl(*AR3),XAR0
0100b4: 6c011ebb         CALL _GPT_stop
0100b8: c404             MOV T0,@#02h
0100ba: ed00bf           MOV dbl(@#00h),XAR3
0100bd: ed618f           MOV dbl(*AR3),XAR0
0100c0: 6c011d9f         CALL _GPT_reset
0100c4: c404             MOV T0,@#02h
0100c6: 4e03             AADD #3,SP
0100c8: 4804             RET
0100ca:               _setup:
0100ca: 4efd             AADD #-3,SP
0100cc: eb0085           MOV XAR0,dbl(@#00h)
0100cf: ec318e000000     AMAR *(#00000h),XAR0
0100d5: 6c0126cd         CALL _time
0100d9: c004             MOV AC0,@#02h
0100db: 6c012479_2304    CALL _srand || MOV AC0,T0
0100e1: 7601f448         MOV #500,T0
0100e5: 6c011947_3d15    CALL _calloc || MOV #1,T1
0100eb: eb318501338a     MOV XAR0,dbl(*(#01338ah))
0100f1: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0100f7: 90b0             MOV XAR3,AC0
0100f9: 6310             BCC $C$L3,AC0 != #0
0100fb: 6c0125f5_3f14    CALL _exit || MOV #-1,T0
010101:               $C$L3:
010101: ec318e01338c     AMAR *(#01338ch),XAR0
010107: 76019058         MOV #400,T1
01010b: 6c012709_3d04    CALL _memset || MOV #0,T0
010111: 76138858         MOV #5000,T1
010115: ec318e012000     AMAR *(#012000h),XAR0
01011b: 6c012709_3d04    CALL _memset || MOV #0,T0
010121: ec31be01338c     AMAR *(#01338ch),XAR3
010127: eb31b501351c     MOV XAR3,dbl(*(#01351ch))
01012d: ed00bf           MOV dbl(@#00h),XAR3
010130: eb31b5013520     MOV XAR3,dbl(*(#013520h))
010136: 7a00010a         MOV #1 << #16,AC0
01013a: 7e338c00         OR #13196,AC0,AC0
01013e: 6210             BCC $C$L4,AC0 != #0
010140: 3e14             MOV #-1,T0
010142: 4a02             B $C$L5
010144:               $C$L4:
010144: 3c04             MOV #0,T0
010146:               $C$L5:
010146: 4e03             AADD #3,SP
010148: 4804             RET
01014a:               _mutator:
01014a: 4ef7             AADD #-9,SP
01014c: a931013539       MOV *(#013539h),AR1
010151: 6319             BCC $C$L6,AR1 != #0
010153: 6c0125f5_3f34    CALL _exit || MOV #-3,T0
010159:               $C$L6:
010159: 7600c0a8         MOV #192,AR2
01015d: a931013534       MOV *(#013534h),AR1
010162: 1298a4           CMPU AR1 >= AR2, TC1
010165: 6664             BCC $C$L7,TC1
010167: 3c1a             MOV #1,AR2
010169: a931013538       MOV *(#013538h),AR1
01016e: 12a894           CMPU AR2 >= AR1, TC1
010171: 64e4             BCC $C$L8,TC1
010173:               $C$L7:
010173: e63108013537     MOV #8,*(#013537h)
010179: 060082           B $C$L16
01017c:               $C$L8:
01017c: 3c2a             MOV #2,AR2
01017e: a931013534       MOV *(#013534h),AR1
010183: 1298a4           CMPU AR1 >= AR2, TC1
010186: 64e4             BCC $C$L9,TC1
010188: e63100013537     MOV #0,*(#013537h)
01018e: 06006d           B $C$L16
010191:               $C$L9:
010191: 3c4a             MOV #4,AR2
010193: 1298a4           CMPU AR1 >= AR2, TC1
010196: 64e4             BCC $C$L10,TC1
010198: e63101013537     MOV #1,*(#013537h)
01019e: 06005d           B $C$L16
0101a1:               $C$L10:
0101a1: 3c6a             MOV #6,AR2
0101a3: 1298a4           CMPU AR1 >= AR2, TC1
0101a6: 64e4             BCC $C$L11,TC1
0101a8: e63102013537     MOV #2,*(#013537h)
0101ae: 06004d           B $C$L16
0101b1:               $C$L11:
0101b1: 3c8a             MOV #8,AR2
0101b3: 1298a4           CMPU AR1 >= AR2, TC1
0101b6: 6464             BCC $C$L12,TC1
0101b8: e63103013537     MOV #3,*(#013537h)
0101be: 4a3e             B $C$L16
0101c0:               $C$L12:
0101c0: 3caa             MOV #10,AR2
0101c2: 1298a4           CMPU AR1 >= AR2, TC1
0101c5: 6464             BCC $C$L13,TC1
0101c7: e63104013537     MOV #4,*(#013537h)
0101cd: 4a2f             B $C$L16
0101cf:               $C$L13:
0101cf: 3cca             MOV #12,AR2
0101d1: 1298a4           CMPU AR1 >= AR2, TC1
0101d4: 6464             BCC $C$L14,TC1
0101d6: e63105013537     MOV #5,*(#013537h)
0101dc: 4a20             B $C$L16
0101de:               $C$L14:
0101de: 760052a8         MOV #82,AR2
0101e2: 1298a4           CMPU AR1 >= AR2, TC1
0101e5: 6464             BCC $C$L15,TC1
0101e7: e63106013537     MOV #6,*(#013537h)
0101ed: 4a0f             B $C$L16
0101ef:               $C$L15:
0101ef: 760098a8         MOV #152,AR2
0101f3: 1298a4           CMPU AR1 >= AR2, TC1
0101f6: 6364             BCC $C$L16,TC1
0101f8: e63107013537     MOV #7,*(#013537h)
0101fe:               $C$L16:
0101fe: 3c2a             MOV #2,AR2
010200: a931013538       MOV *(#013538h),AR1
010205: 12a894           CMPU AR2 >= AR1, TC1
010208: 046424           BCC $C$L17,TC1
01020b: a431013539       MOV *(#013539h),T0
010210: a531013538       MOV *(#013538h),T1
010215: 6c0126a3         CALL I$$UDIV
010219: 2245             MOV T0,T1
01021b: a431013539       MOV *(#013539h),T0
010220: 6c0126a3         CALL I$$UDIV
010224: c40c             MOV T0,@#06h
010226: 2249             MOV T0,AR1
010228: 6419             BCC $C$L18,AR1 != #0
01022a: e60c01           MOV #1,@#06h
01022d: 4a03             B $C$L18
01022f:               $C$L17:
01022f: e60c01           MOV #1,@#06h
010232:               $C$L18:
010232: a931013534       MOV *(#013534h),AR1
010237: 180109           AND #1,AR1,AC0
01023a: c00a             MOV AC0,@#05h
01023c: a931013537       MOV *(#013537h),AR1
010241: 041969           BCC $C$L22,AR1 != #0
010244: e60000           MOV #0,@#00h
010247: a931013539       MOV *(#013539h),AR1
01024c: aa00             MOV @#00h,AR2
01024e: 12a894           CMPU AR2 >= AR1, TC1
010251: 6d6406a4         BCC $C$DW$L$_mutator$85$E,TC1
010255:               $C$L19:
010255:               $C$DW$L$_mutator$28$B:
010255: a90a             MOV @#05h,AR1
010257: c902             MOV AR1,@#01h
010259: 76001008         MOV #16,AC0
01025d: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
010262: 2209             MOV AC0,AR1
010264: 12a894           CMPU AR2 >= AR1, TC1
010267: 04642c           BCC $C$DW$L$_mutator$29$E,TC1
01026a:               $C$DW$L$_mutator$28$E:
01026a:               $C$L20:
01026a:               $C$DW$L$_mutator$29$B:
01026a: a400             MOV @#00h,T0
01026c: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010272: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
010276: 5c05             SFTS AC0,T1,AC0
010278: db6b90           XOR *AR3(AR0),AC0,AR1
01027b: c96b             MOV AR1,*AR3(AR0)
01027d: f7020001         ADD #1,@#01h
010281: f7020001         ADD #1,@#01h
010285: 76001008         MOV #16,AC0
010289: df0a0f           SUB uns(@#05h),AC0,AC0
01028c: aa02_2309        MOV @#01h,AR2 || MOV AC0,AR1
010290: 12a494           CMPU AR2 < AR1, TC1
010293: 0464d4           BCC $C$DW$L$_mutator$28$E,TC1
010296:               $C$DW$L$_mutator$29$E:
010296:               $C$L21:
010296:               $C$DW$L$_mutator$30$B:
010296: a90c             MOV @#06h,AR1
010298: d60099           ADD @#00h,AR1,AR1
01029b: c900             MOV AR1,@#00h
01029d: aa00             MOV @#00h,AR2
01029f: a931013539       MOV *(#013539h),AR1
0102a4: 12a494           CMPU AR2 < AR1, TC1
0102a7: 0464ab           BCC $C$L19,TC1
0102aa:               $C$DW$L$_mutator$30$E:
0102aa: 06064c           B $C$DW$L$_mutator$85$E
0102ad:               $C$L22:
0102ad: f0310001013537   CMP *(#013537h) == #1, TC1
0102b4: 04747e           BCC $C$L26,!TC1
0102b7: e60000           MOV #0,@#00h
0102ba: a931013539       MOV *(#013539h),AR1
0102bf: aa00             MOV @#00h,AR2
0102c1: 12a894           CMPU AR2 >= AR1, TC1
0102c4: 6d640631         BCC $C$DW$L$_mutator$85$E,TC1
0102c8:               $C$L23:
0102c8:               $C$DW$L$_mutator$34$B:
0102c8: a90a             MOV @#05h,AR1
0102ca: c902             MOV AR1,@#01h
0102cc: 76001008         MOV #16,AC0
0102d0: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
0102d5: 2209             MOV AC0,AR1
0102d7: 12a894           CMPU AR2 >= AR1, TC1
0102da: 046441           BCC $C$DW$L$_mutator$35$E,TC1
0102dd:               $C$DW$L$_mutator$34$E:
0102dd:               $C$L24:
0102dd:               $C$DW$L$_mutator$35$B:
0102dd: a400             MOV @#00h,T0
0102df: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0102e5: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
0102e9: 5c05             SFTS AC0,T1,AC0
0102eb: db6b90           XOR *AR3(AR0),AC0,AR1
0102ee: c96b             MOV AR1,*AR3(AR0)
0102f0: a400             MOV @#00h,T0
0102f2: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0102f8: a502             MOV @#01h,T1
0102fa: 4015_3d10        ADD #1,T1 || MOV #1,AC0
0102fe: 5c05             SFTS AC0,T1,AC0
010300: db6b90           XOR *AR3(AR0),AC0,AR1
010303: c96b             MOV AR1,*AR3(AR0)
010305: f7020002         ADD #2,@#01h
010309: f7020001         ADD #1,@#01h
01030d: 76001008         MOV #16,AC0
010311: df0a0f           SUB uns(@#05h),AC0,AC0
010314: aa02_2309        MOV @#01h,AR2 || MOV AC0,AR1
010318: 12a494           CMPU AR2 < AR1, TC1
01031b: 0464bf           BCC $C$DW$L$_mutator$34$E,TC1
01031e:               $C$DW$L$_mutator$35$E:
01031e:               $C$L25:
01031e:               $C$DW$L$_mutator$36$B:
01031e: a90c             MOV @#06h,AR1
010320: d60099           ADD @#00h,AR1,AR1
010323: c900             MOV AR1,@#00h
010325: aa00             MOV @#00h,AR2
010327: a931013539       MOV *(#013539h),AR1
01032c: 12a494           CMPU AR2 < AR1, TC1
01032f: 046496           BCC $C$L23,TC1
010332:               $C$DW$L$_mutator$36$E:
010332: 0605c4           B $C$DW$L$_mutator$85$E
010335:               $C$L26:
010335: f0310002013537   CMP *(#013537h) == #2, TC1
01033c: 6d7400aa         BCC $C$L30,!TC1
010340: 2209             MOV AC0,AR1
010342: c900             MOV AR1,@#00h
010344: 220a             MOV AC0,AR2
010346: a931013539       MOV *(#013539h),AR1
01034b: 12a894           CMPU AR2 >= AR1, TC1
01034e: 6d6405a7         BCC $C$DW$L$_mutator$85$E,TC1
010352:               $C$L27:
010352:               $C$DW$L$_mutator$40$B:
010352: a90a             MOV @#05h,AR1
010354: c902             MOV AR1,@#01h
010356: 76001008         MOV #16,AC0
01035a: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
01035f: 2209             MOV AC0,AR1
010361: 12a894           CMPU AR2 >= AR1, TC1
010364: 04646b           BCC $C$DW$L$_mutator$41$E,TC1
010367:               $C$DW$L$_mutator$40$E:
010367:               $C$L28:
010367:               $C$DW$L$_mutator$41$B:
010367: a400             MOV @#00h,T0
010369: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
01036f: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
010373: 5c05             SFTS AC0,T1,AC0
010375: db6b90           XOR *AR3(AR0),AC0,AR1
010378: c96b             MOV AR1,*AR3(AR0)
01037a: a400             MOV @#00h,T0
01037c: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010382: a502             MOV @#01h,T1
010384: 4015_3d10        ADD #1,T1 || MOV #1,AC0
010388: 5c05             SFTS AC0,T1,AC0
01038a: db6b90           XOR *AR3(AR0),AC0,AR1
01038d: c96b             MOV AR1,*AR3(AR0)
01038f: a400             MOV @#00h,T0
010391: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010397: a502             MOV @#01h,T1
010399: 4025_3d10        ADD #2,T1 || MOV #1,AC0
01039d: 5c05             SFTS AC0,T1,AC0
01039f: db6b90           XOR *AR3(AR0),AC0,AR1
0103a2: c96b             MOV AR1,*AR3(AR0)
0103a4: a400             MOV @#00h,T0
0103a6: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0103ac: a502             MOV @#01h,T1
0103ae: 4035_3d10        ADD #3,T1 || MOV #1,AC0
0103b2: 5c05             SFTS AC0,T1,AC0
0103b4: db6b90           XOR *AR3(AR0),AC0,AR1
0103b7: c96b             MOV AR1,*AR3(AR0)
0103b9: f7020004         ADD #4,@#01h
0103bd: f7020001         ADD #1,@#01h
0103c1: 76001008         MOV #16,AC0
0103c5: df0a0f           SUB uns(@#05h),AC0,AC0
0103c8: aa02_2309        MOV @#01h,AR2 || MOV AC0,AR1
0103cc: 12a494           CMPU AR2 < AR1, TC1
0103cf: 046495           BCC $C$DW$L$_mutator$40$E,TC1
0103d2:               $C$DW$L$_mutator$41$E:
0103d2:               $C$L29:
0103d2:               $C$DW$L$_mutator$42$B:
0103d2: a90c             MOV @#06h,AR1
0103d4: d60099           ADD @#00h,AR1,AR1
0103d7: c900             MOV AR1,@#00h
0103d9: aa00             MOV @#00h,AR2
0103db: a931013539       MOV *(#013539h),AR1
0103e0: 12a494           CMPU AR2 < AR1, TC1
0103e3: 6d64ff6b         BCC $C$L27,TC1
0103e7:               $C$DW$L$_mutator$42$E:
0103e7: 06050f           B $C$DW$L$_mutator$85$E
0103ea:               $C$L30:
0103ea: f0310003013537   CMP *(#013537h) == #3, TC1
0103f1: 047448           BCC $C$L32,!TC1
0103f4: e60000           MOV #0,@#00h
0103f7: a931013539       MOV *(#013539h),AR1
0103fc: aa00             MOV @#00h,AR2
0103fe: 12a894           CMPU AR2 >= AR1, TC1
010401: 6d6404f4         BCC $C$DW$L$_mutator$85$E,TC1
010405:               $C$L31:
010405:               $C$DW$L$_mutator$46$B:
010405: a931013534       MOV *(#013534h),AR1
01040a: a400             MOV @#00h,T0
01040c: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010412: 180109           AND #1,AR1,AC0
010415: 100703           SFTL AC0,#3,AC0
010418: 7600ff18_2305    MOV #255,AC1 || MOV AC0,T1
01041e: 5c15             SFTS AC1,T1,AC0
010420: db6b90           XOR *AR3(AR0),AC0,AR1
010423: c96b             MOV AR1,*AR3(AR0)
010425: a90c             MOV @#06h,AR1
010427: d60099           ADD @#00h,AR1,AR1
01042a: c900             MOV AR1,@#00h
01042c: aa00             MOV @#00h,AR2
01042e: a931013539       MOV *(#013539h),AR1
010433: 12a494           CMPU AR2 < AR1, TC1
010436: 0464cc           BCC $C$L31,TC1
010439:               $C$DW$L$_mutator$46$E:
010439: 0604bd           B $C$DW$L$_mutator$85$E
01043c:               $C$L32:
01043c: f0310004013537   CMP *(#013537h) == #4, TC1
010443: 047447           BCC $C$L34,!TC1
010446: e60000           MOV #0,@#00h
010449: a931013539       MOV *(#013539h),AR1
01044e: aa00             MOV @#00h,AR2
010450: 12a894           CMPU AR2 >= AR1, TC1
010453: 6d6404a2         BCC $C$DW$L$_mutator$85$E,TC1
010457:               $C$L33:
010457:               $C$DW$L$_mutator$50$B:
010457: a400             MOV @#00h,T0
010459: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
01045f: a96b             MOV *AR3(AR0),AR1
010461: 1cff99           XOR #255,AR1,AR1
010464: c96b             MOV AR1,*AR3(AR0)
010466: a400             MOV @#00h,T0
010468: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
01046e: a96b             MOV *AR3(AR0),AR1
010470: 7fff0099         XOR #65280,AR1,AR1
010474: c96b             MOV AR1,*AR3(AR0)
010476: a90c             MOV @#06h,AR1
010478: d60099           ADD @#00h,AR1,AR1
01047b: c900             MOV AR1,@#00h
01047d: aa00             MOV @#00h,AR2
01047f: a931013539       MOV *(#013539h),AR1
010484: 12a494           CMPU AR2 < AR1, TC1
010487: 0464cd           BCC $C$L33,TC1
01048a:               $C$DW$L$_mutator$50$E:
01048a: 06046c           B $C$DW$L$_mutator$85$E
01048d:               $C$L34:
01048d: f0310005013537   CMP *(#013537h) == #5, TC1
010494: 6d740084         BCC $C$L36,!TC1
010498: e60000           MOV #0,@#00h
01049b: a931013539       MOV *(#013539h),AR1
0104a0: aa00             MOV @#00h,AR2
0104a2: 12a894           CMPU AR2 >= AR1, TC1
0104a5: 6d640450         BCC $C$DW$L$_mutator$85$E,TC1
0104a9:               $C$L35:
0104a9:               $C$DW$L$_mutator$54$B:
0104a9: a90c             MOV @#06h,AR1
0104ab: d60aa9           ADD @#05h,AR1,AR2
0104ae: a900             MOV @#00h,AR1
0104b0: 4019             ADD #1,AR1
0104b2: 1294a4           CMPU AR1 < AR2, TC1
0104b5: 6d740440         BCC $C$DW$L$_mutator$85$E,!TC1
0104b9:               $C$DW$L$_mutator$54$E:
0104b9:               $C$DW$L$_mutator$55$B:
0104b9: a400             MOV @#00h,T0
0104bb: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0104c1: a96b             MOV *AR3(AR0),AR1
0104c3: 1cff99           XOR #255,AR1,AR1
0104c6: c96b             MOV AR1,*AR3(AR0)
0104c8: a400             MOV @#00h,T0
0104ca: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0104d0: a96b             MOV *AR3(AR0),AR1
0104d2: 7fff0099         XOR #65280,AR1,AR1
0104d6: c96b             MOV AR1,*AR3(AR0)
0104d8: a400             MOV @#00h,T0
0104da: 4014             ADD #1,T0
0104dc: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0104e2: a96b             MOV *AR3(AR0),AR1
0104e4: a400             MOV @#00h,T0
0104e6: 4014             ADD #1,T0
0104e8: 1cff99           XOR #255,AR1,AR1
0104eb: c96b             MOV AR1,*AR3(AR0)
0104ed: a400             MOV @#00h,T0
0104ef: 4014             ADD #1,T0
0104f1: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0104f7: a96b             MOV *AR3(AR0),AR1
0104f9: a400             MOV @#00h,T0
0104fb: 4014             ADD #1,T0
0104fd: 7fff0099         XOR #65280,AR1,AR1
010501: c96b             MOV AR1,*AR3(AR0)
010503: a90c             MOV @#06h,AR1
010505: d60099           ADD @#00h,AR1,AR1
010508: 4029             ADD #2,AR1
01050a: c900             MOV AR1,@#00h
01050c: aa00             MOV @#00h,AR2
01050e: a931013539       MOV *(#013539h),AR1
010513: 12a494           CMPU AR2 < AR1, TC1
010516: 046490           BCC $C$L35,TC1
010519:               $C$DW$L$_mutator$55$E:
010519: 0603dd           B $C$DW$L$_mutator$85$E
01051c:               $C$L36:
01051c: f0310006013537   CMP *(#013537h) == #6, TC1
010523: 047453           BCC $C$L38,!TC1
010526: 2209             MOV AC0,AR1
010528: c900             MOV AR1,@#00h
01052a: a031013539       MOV *(#013539h),AC0
01052f: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
010534: 2209             MOV AC0,AR1
010536: 12a894           CMPU AR2 >= AR1, TC1
010539: 6d6403bc         BCC $C$DW$L$_mutator$85$E,TC1
01053d:               $C$L37:
01053d:               $C$DW$L$_mutator$59$B:
01053d: a431013534       MOV *(#013534h),T0
010542: 76002358         MOV #35,T1
010546: 6c0126b8         CALL I$$UMOD
01054a: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010550: a400_2349        MOV @#00h,T0 || MOV T0,AR1
010554: d66b99           ADD *AR3(AR0),AR1,AR1
010557: c96b             MOV AR1,*AR3(AR0)
010559: f7000001         ADD #1,@#00h
01055d: a90c             MOV @#06h,AR1
01055f: d60099           ADD @#00h,AR1,AR1
010562: c900             MOV AR1,@#00h
010564: a031013539       MOV *(#013539h),AC0
010569: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
01056e: 2209             MOV AC0,AR1
010570: 12a494           CMPU AR2 < AR1, TC1
010573: 0464c7           BCC $C$L37,TC1
010576:               $C$DW$L$_mutator$59$E:
010576: 060380           B $C$DW$L$_mutator$85$E
010579:               $C$L38:
010579: f0310007013537   CMP *(#013537h) == #7, TC1
010580: 047453           BCC $C$L40,!TC1
010583: 2209             MOV AC0,AR1
010585: c900             MOV AR1,@#00h
010587: a031013539       MOV *(#013539h),AC0
01058c: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
010591: 2209             MOV AC0,AR1
010593: 12a894           CMPU AR2 >= AR1, TC1
010596: 6d64035f         BCC $C$DW$L$_mutator$85$E,TC1
01059a:               $C$L39:
01059a:               $C$DW$L$_mutator$63$B:
01059a: a431013534       MOV *(#013534h),T0
01059f: 76002358         MOV #35,T1
0105a3: 6c0126b8         CALL I$$UMOD
0105a7: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0105ad: a400_2349        MOV @#00h,T0 || MOV T0,AR1
0105b1: d86b99           SUB AR1,*AR3(AR0),AR1
0105b4: c96b             MOV AR1,*AR3(AR0)
0105b6: f7000001         ADD #1,@#00h
0105ba: a90c             MOV @#06h,AR1
0105bc: d60099           ADD @#00h,AR1,AR1
0105bf: c900             MOV AR1,@#00h
0105c1: a031013539       MOV *(#013539h),AC0
0105c6: df0a0f_239a      SUB uns(@#05h),AC0,AC0 || MOV AR1,AR2
0105cb: 2209             MOV AC0,AR1
0105cd: 12a494           CMPU AR2 < AR1, TC1
0105d0: 0464c7           BCC $C$L39,TC1
0105d3:               $C$DW$L$_mutator$63$E:
0105d3: 060323           B $C$DW$L$_mutator$85$E
0105d6:               $C$L40:
0105d6: f0310008013537   CMP *(#013537h) == #8, TC1
0105dd: 6d740318         BCC $C$DW$L$_mutator$85$E,!TC1
0105e1: 6c01249b         CALL _rand
0105e5: 6c012652_3dc5    CALL I$$MOD || MOV #12,T1
0105eb: c40e             MOV T0,@#07h
0105ed: a931013538       MOV *(#013538h),AR1
0105f2: 6319             BCC $C$L41,AR1 != #0
0105f4: e63101013538     MOV #1,*(#013538h)
0105fa:               $C$L41:
0105fa: 6c01249b         CALL _rand
0105fe: a531013538       MOV *(#013538h),T1
010603: 6c0126b8         CALL I$$UMOD
010607: c408             MOV T0,@#04h
010609: e60000           MOV #0,@#00h
01060c: a908             MOV @#04h,AR1
01060e: aa00             MOV @#00h,AR2
010610: 12a894           CMPU AR2 >= AR1, TC1
010613: 6d6402e2         BCC $C$DW$L$_mutator$85$E,TC1
010617:               $C$L42:
010617:               $C$DW$L$_mutator$69$B:
010617: 6c01249b         CALL _rand
01061b: a531013539       MOV *(#013539h),T1
010620: 6c0126b8         CALL I$$UMOD
010624: c404             MOV T0,@#02h
010626: 060293           B $C$DW$L$_mutator$82$E
010629:               $C$DW$L$_mutator$69$E:
010629:               $C$L43:
010629:               $C$DW$L$_mutator$71$B:
010629: 6c01249b         CALL _rand
01062d: 7600ffa8_2340    MOV #255,AR2 || MOV T0,AC0
010633: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010639: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
01063e: 76ff0090         BFXTR #65280,AC0,AR1
010642: 2449             ADD T0,AR1
010644: 289a             AND AR1,AR2
010646: a404_2349        MOV @#02h,T0 || MOV T0,AR1
01064a: 26a9             SUB AR2,AR1
01064c: c96b             MOV AR1,*AR3(AR0)
01064e: 06028d           B $C$DW$L$_mutator$84$E
010651:               $C$DW$L$_mutator$71$E:
010651:               $C$L44:
010651:               $C$DW$L$_mutator$72$B:
010651: a431013534       MOV *(#013534h),T0
010656: 76002258         MOV #34,T1
01065a: 6c0126b8         CALL I$$UMOD
01065e: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010664: a404_2349        MOV @#02h,T0 || MOV T0,AR1
010668: d66b99           ADD *AR3(AR0),AR1,AR1
01066b: c96b             MOV AR1,*AR3(AR0)
01066d: 06026e           B $C$DW$L$_mutator$84$E
010670:               $C$DW$L$_mutator$72$E:
010670:               $C$L45:
010670:               $C$DW$L$_mutator$73$B:
010670: a404             MOV @#02h,T0
010672: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010678: df3193013534     MOV uns(low_byte(*(#013534h))),AR1
01067e: d66b99           ADD *AR3(AR0),AR1,AR1
010681: c96b             MOV AR1,*AR3(AR0)
010683: 060258           B $C$DW$L$_mutator$84$E
010686:               $C$DW$L$_mutator$73$E:
010686:               $C$L46:
010686:               $C$DW$L$_mutator$74$B:
010686: a404             MOV @#02h,T0
010688: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
01068e: df3193013534     MOV uns(low_byte(*(#013534h))),AR1
010694: d86b99           SUB AR1,*AR3(AR0),AR1
010697: c96b             MOV AR1,*AR3(AR0)
010699: 060242           B $C$DW$L$_mutator$84$E
01069c:               $C$DW$L$_mutator$74$E:
01069c:               $C$L47:
01069c:               $C$DW$L$_mutator$75$B:
01069c: a431013534       MOV *(#013534h),T0
0106a1: 76002258         MOV #34,T1
0106a5: 6c0126b8         CALL I$$UMOD
0106a9: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0106af: a404_2349        MOV @#02h,T0 || MOV T0,AR1
0106b3: d86b99           SUB AR1,*AR3(AR0),AR1
0106b6: c96b             MOV AR1,*AR3(AR0)
0106b8: 060223           B $C$DW$L$_mutator$84$E
0106bb:               $C$DW$L$_mutator$75$E:
0106bb:               $C$L48:
0106bb:               $C$DW$L$_mutator$76$B:
0106bb: 6c01249b         CALL _rand
0106bf: a531013539       MOV *(#013539h),T1
0106c4: 6c0126b8         CALL I$$UMOD
0106c8: 7c000194         SUB #1,T0,AR1
0106cc: c904             MOV AR1,@#02h
0106ce: 6c01249b         CALL _rand
0106d2: 2240_3dfa        MOV T0,AC0 || MOV #15,AR2
0106d6: 10053d_37aa      SFTS AC0,#-3,AC0 || NOT AR2,AR2
0106db: 76f00090         BFXTR #61440,AC0,AR1
0106df: 2449             ADD T0,AR1
0106e1: 289a             AND AR1,AR2
0106e3: 26a4             SUB AR2,T0
0106e5: c406             MOV T0,@#03h
0106e7: a404             MOV @#02h,T0
0106e9: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0106ef: a506_3d10        MOV @#03h,T1 || MOV #1,AC0
0106f3: 5c05             SFTS AC0,T1,AC0
0106f5: db6b90           XOR *AR3(AR0),AC0,AR1
0106f8: c96b             MOV AR1,*AR3(AR0)
0106fa: 0601e1           B $C$DW$L$_mutator$84$E
0106fd:               $C$DW$L$_mutator$76$E:
0106fd:               $C$L49:
0106fd:               $C$DW$L$_mutator$77$B:
0106fd: 6c01249b         CALL _rand
010701: a531013539       MOV *(#013539h),T1
010706: 6c0126b8         CALL I$$UMOD
01070a: 7c000194         SUB #1,T0,AR1
01070e: c904             MOV AR1,@#02h
010710: 6c01249b         CALL _rand
010714: 2240_3dfa        MOV T0,AC0 || MOV #15,AR2
010718: 10053d_37aa      SFTS AC0,#-3,AC0 || NOT AR2,AR2
01071d: 76f00090         BFXTR #61440,AC0,AR1
010721: 2449             ADD T0,AR1
010723: 289a             AND AR1,AR2
010725: 26a4             SUB AR2,T0
010727: c406             MOV T0,@#03h
010729: a404             MOV @#02h,T0
01072b: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010731: a506_3d10        MOV @#03h,T1 || MOV #1,AC0
010735: 5c05             SFTS AC0,T1,AC0
010737: db6b90           XOR *AR3(AR0),AC0,AR1
01073a: c96b             MOV AR1,*AR3(AR0)
01073c: a404             MOV @#02h,T0
01073e: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010744: a506             MOV @#03h,T1
010746: 4015_3d10        ADD #1,T1 || MOV #1,AC0
01074a: 5c05             SFTS AC0,T1,AC0
01074c: db6b90           XOR *AR3(AR0),AC0,AR1
01074f: c96b             MOV AR1,*AR3(AR0)
010751: 06018a           B $C$DW$L$_mutator$84$E
010754:               $C$DW$L$_mutator$77$E:
010754:               $C$L50:
010754:               $C$DW$L$_mutator$78$B:
010754: 6c01249b         CALL _rand
010758: a531013539       MOV *(#013539h),T1
01075d: 6c0126b8         CALL I$$UMOD
010761: 7c000194         SUB #1,T0,AR1
010765: c904             MOV AR1,@#02h
010767: 6c01249b         CALL _rand
01076b: 2240_3dfa        MOV T0,AC0 || MOV #15,AR2
01076f: 10053d_37aa      SFTS AC0,#-3,AC0 || NOT AR2,AR2
010774: 76f00090         BFXTR #61440,AC0,AR1
010778: 2449             ADD T0,AR1
01077a: 289a             AND AR1,AR2
01077c: 26a4             SUB AR2,T0
01077e: c406             MOV T0,@#03h
010780: a404             MOV @#02h,T0
010782: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010788: a506_3d10        MOV @#03h,T1 || MOV #1,AC0
01078c: 5c05             SFTS AC0,T1,AC0
01078e: db6b90           XOR *AR3(AR0),AC0,AR1
010791: c96b             MOV AR1,*AR3(AR0)
010793: a404             MOV @#02h,T0
010795: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
01079b: a506             MOV @#03h,T1
01079d: 4015_3d10        ADD #1,T1 || MOV #1,AC0
0107a1: 5c05             SFTS AC0,T1,AC0
0107a3: db6b90           XOR *AR3(AR0),AC0,AR1
0107a6: c96b             MOV AR1,*AR3(AR0)
0107a8: a404             MOV @#02h,T0
0107aa: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0107b0: a506             MOV @#03h,T1
0107b2: 4025_3d10        ADD #2,T1 || MOV #1,AC0
0107b6: 5c05             SFTS AC0,T1,AC0
0107b8: db6b90           XOR *AR3(AR0),AC0,AR1
0107bb: c96b             MOV AR1,*AR3(AR0)
0107bd: a404             MOV @#02h,T0
0107bf: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0107c5: a506             MOV @#03h,T1
0107c7: 4035_3d10        ADD #3,T1 || MOV #1,AC0
0107cb: 5c05             SFTS AC0,T1,AC0
0107cd: db6b90           XOR *AR3(AR0),AC0,AR1
0107d0: c96b             MOV AR1,*AR3(AR0)
0107d2: 060109           B $C$DW$L$_mutator$84$E
0107d5:               $C$DW$L$_mutator$78$E:
0107d5:               $C$L51:
0107d5:               $C$DW$L$_mutator$79$B:
0107d5: 6c01249b         CALL _rand
0107d9: a531013539       MOV *(#013539h),T1
0107de: 6c0126b8         CALL I$$UMOD
0107e2: 7c000194         SUB #1,T0,AR1
0107e6: c904             MOV AR1,@#02h
0107e8: a931013534       MOV *(#013534h),AR1
0107ed: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0107f3: a404             MOV @#02h,T0
0107f5: 180109           AND #1,AR1,AC0
0107f8: 100703           SFTL AC0,#3,AC0
0107fb: 7600ff18_2305    MOV #255,AC1 || MOV AC0,T1
010801: 5c15             SFTS AC1,T1,AC0
010803: db6b90           XOR *AR3(AR0),AC0,AR1
010806: c96b             MOV AR1,*AR3(AR0)
010808: 0600d3           B $C$DW$L$_mutator$84$E
01080b:               $C$DW$L$_mutator$79$E:
01080b:               $C$L52:
01080b:               $C$DW$L$_mutator$80$B:
01080b: 6c01249b         CALL _rand
01080f: a531013539       MOV *(#013539h),T1
010814: 6c0126b8         CALL I$$UMOD
010818: c404             MOV T0,@#02h
01081a: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010820: a404             MOV @#02h,T0
010822: a96b             MOV *AR3(AR0),AR1
010824: 1cff99           XOR #255,AR1,AR1
010827: c96b             MOV AR1,*AR3(AR0)
010829: a404             MOV @#02h,T0
01082b: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010831: a96b             MOV *AR3(AR0),AR1
010833: 7fff0099         XOR #65280,AR1,AR1
010837: c96b             MOV AR1,*AR3(AR0)
010839: 0600a2           B $C$DW$L$_mutator$84$E
01083c:               $C$DW$L$_mutator$80$E:
01083c:               $C$L53:
01083c:               $C$DW$L$_mutator$81$B:
01083c: 6c01249b         CALL _rand
010840: a531013539       MOV *(#013539h),T1
010845: 6c0126b8         CALL I$$UMOD
010849: 7c000194         SUB #1,T0,AR1
01084d: c904             MOV AR1,@#02h
01084f: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010855: a404             MOV @#02h,T0
010857: a96b             MOV *AR3(AR0),AR1
010859: 1cff99           XOR #255,AR1,AR1
01085c: c96b             MOV AR1,*AR3(AR0)
01085e: a404             MOV @#02h,T0
010860: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010866: a96b             MOV *AR3(AR0),AR1
010868: 7fff0099         XOR #65280,AR1,AR1
01086c: c96b             MOV AR1,*AR3(AR0)
01086e: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010874: a404             MOV @#02h,T0
010876: 4014             ADD #1,T0
010878: a96b             MOV *AR3(AR0),AR1
01087a: a404             MOV @#02h,T0
01087c: 4014             ADD #1,T0
01087e: 1cff99           XOR #255,AR1,AR1
010881: c96b             MOV AR1,*AR3(AR0)
010883: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
010889: a404             MOV @#02h,T0
01088b: 4014             ADD #1,T0
01088d: a96b             MOV *AR3(AR0),AR1
01088f: a404             MOV @#02h,T0
010891: 4014             ADD #1,T0
010893: 7fff0099         XOR #65280,AR1,AR1
010897: c96b             MOV AR1,*AR3(AR0)
010899: 060042           B $C$DW$L$_mutator$84$E
01089c:               $C$DW$L$_mutator$81$E:
01089c:               $C$L54:
01089c:               $C$DW$L$_mutator$82$B:
01089c: 6c01249b         CALL _rand
0108a0: a531013539       MOV *(#013539h),T1
0108a5: 6c0126b8         CALL I$$UMOD
0108a9: 7c000194         SUB #1,T0,AR1
0108ad: c904             MOV AR1,@#02h
0108af: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0108b5: a404             MOV @#02h,T0
0108b7: e66b00           MOV #0,*AR3(AR0)
0108ba: 4a22             B $C$DW$L$_mutator$84$E
0108bc:               $C$DW$L$_mutator$82$E:
0108bc:               $C$L55:
0108bc:               $C$DW$L$_mutator$83$B:
0108bc: a00e             MOV @#07h,AC0
0108be: 2209_3dba        MOV AC0,AR1 || MOV #11,AR2
0108c2: 12a894           CMPU AR2 >= AR1, TC1
0108c5: 047416           BCC $C$DW$L$_mutator$84$E,!TC1
0108c8:               $C$DW$L$_mutator$83$E:
0108c8:               $C$DW$L$_mutator$84$B:
0108c8: 4450             SFTS AC0,#1
0108ca: a110_98          MOV mmap(@AC0L),AC1
0108cd: 7a00010a         MOV #1 << #16,AC0
0108d1: 7e36a400         OR #13988,AC0,AC0
0108d5: 2410             ADD AC1,AC0
0108d7: 900b             MOV AC0,XAR3
0108d9: ed6108           MOV dbl(*AR3),AC0
0108dc: 9100             B AC0
0108de:               $C$DW$L$_mutator$84$E:
0108de:               $C$L56:
0108de:               $C$DW$L$_mutator$85$B:
0108de: 6c01249b         CALL _rand
0108e2: 6c012652_3dc5    CALL I$$MOD || MOV #12,T1
0108e8: c40e             MOV T0,@#07h
0108ea: f7000001         ADD #1,@#00h
0108ee: a908             MOV @#04h,AR1
0108f0: aa00             MOV @#00h,AR2
0108f2: 12a494           CMPU AR2 < AR1, TC1
0108f5: 6d64fd1e         BCC $C$L42,TC1
0108f9:               $C$DW$L$_mutator$85$E:
0108f9:               $C$L57:
0108f9:               $C$L58:
0108f9: f7310001013534   ADD #1,*(#013534h)
010900: 4e09             AADD #9,SP
010902: 4804             RET
010904:               _dequeue_seed:
010904: 4efd             AADD #-3,SP
010906: a931013522       MOV *(#013522h),AR1
01090b: aa3101351f       MOV *(#01351fh),AR2
010910: 12ac94           CMPU AR2 != AR1, TC1
010913: 6364             BCC $C$L59,TC1
010915: e6310001351f     MOV #0,*(#01351fh)
01091b:               $C$L59:
01091b: f03100fa013534   CMP *(#013534h) == #250, TC1
010922: 66f4             BCC $C$L60,!TC1
010924: e63100013534     MOV #0,*(#013534h)
01092a: f731000101351f   ADD #1,*(#01351fh)
010931:               $C$L60:
010931: a931013388       MOV *(#013388h),AR1
010936: aa3101351f       MOV *(#01351fh),AR2
01093b: 12a494           CMPU AR2 < AR1, TC1
01093e: 66e4             BCC $C$L61,TC1
010940: e6310001351f     MOV #0,*(#01351fh)
010946: f7310001013535   ADD #1,*(#013535h)
01094d:               $C$L61:
01094d: 3c5a             MOV #5,AR2
01094f: a931013535       MOV *(#013535h),AR1
010954: 12a894           CMPU AR2 >= AR1, TC1
010957: 046422           BCC $C$L63,TC1
01095a: 3caa             MOV #10,AR2
01095c: a931013538       MOV *(#013538h),AR1
010961: 1298a4           CMPU AR1 >= AR2, TC1
010964: 63e4             BCC $C$L62,TC1
010966: f7310001013538   ADD #1,*(#013538h)
01096d:               $C$L62:
01096d: f031000a013538   CMP *(#013538h) == #10, TC1
010974: 6374             BCC $C$L63,!TC1
010976: e63101013538     MOV #1,*(#013538h)
01097c:               $C$L63:
01097c: b03101351f       MOV *(#01351fh) << #16,AC0
010981: 7901f400         MPYK #500,AC0,AC0
010985: 2209             MOV AC0,AR1
010987: ed31af01338a     MOV dbl(*(#01338ah)),XAR2
01098d: ec31be012000     AMAR *(#012000h),XAR3
010993: 1490b0           AADD AR1,AR3
010996: ec419e_0d01f3    AMAR *AR2,XAR1 || RPT #499
01099c:               $C$L64:
01099c:               $C$DW$L$_dequeue_seed$13$B:
01099c: 806514           MOV *AR3+,*AR2+
01099f:               $C$DW$L$_dequeue_seed$13$E:
01099f:               $C$L65:
01099f: eb0095           MOV XAR1,dbl(@#00h)
0109a2: ed00bf           MOV dbl(@#00h),XAR3
0109a5: 90b0             MOV XAR3,AC0
0109a7: 6310             BCC $C$L66,AC0 != #0
0109a9: 3e14             MOV #-1,T0
0109ab: 6c0125f5         CALL _exit
0109af:               $C$L66:
0109af: 4e03             AADD #3,SP
0109b1: 4804             RET
0109b3:               _bubble_coverage:
0109b3: 4eff             AADD #-1,SP
0109b5: e60000           MOV #0,@#00h
0109b8: 4e01             AADD #1,SP
0109ba: 4804             RET
0109bc:               _main_harness_loop:
0109bc: 4efd             AADD #-3,SP
0109be: 7a00010a         MOV #1 << #16,AC0
0109c2: 7e1fc700         OR #8135,AC0,AC0
0109c6: 9008             MOV AC0,XAR0
0109c8: 08f6ff           CALL _setup
0109cb: e63100013389     MOV #0,*(#013389h)
0109d1: e63100013536     MOV #0,*(#013536h)
0109d7: ec318e013524     AMAR *(#013524h),XAR0
0109dd: 6c012571         CALL __setjmp
0109e1:               $C$L67:
0109e1:               $C$DW$L$_main_harness_loop$3$B:
0109e1: f7310001013536   ADD #1,*(#013536h)
0109e8: 08ff19           CALL _dequeue_seed
0109eb: 08f75c           CALL _mutator
0109ee: ec008e           AMAR @#00h,XAR0
0109f1: 08f60e           CALL _start_timer
0109f4: 76002348         MOV #35,T0
0109f8: ed318f01338a     MOV dbl(*(#01338ah)),XAR0
0109fe: 6c011fc7         CALL _test
010a02: ec008e           AMAR @#00h,XAR0
010a05: 08f695           CALL _stop_timer
010a08: 3c00             MOV #0,AC0
010a0a: eb310801353e     MOV AC0,dbl(*(#01353eh))
010a10: a931013523       MOV *(#013523h),AR1
010a15: 040958           BCC $C$DW$L$_main_harness_loop$7$E,AR1 == #0
010a18:               $C$DW$L$_main_harness_loop$3$E:
010a18:               $C$DW$L$_main_harness_loop$4$B:
010a18: ed310801338c     MOV dbl(*(#01338ch)),AC0
010a1e: 04004f           BCC $C$DW$L$_main_harness_loop$7$E,AC0 == #0
010a21:               $C$DW$L$_main_harness_loop$4$E:
010a21:               $C$DW$L$_main_harness_loop$5$B:
010a21: f7310001013389   ADD #1,*(#013389h)
010a28: 08ff88           CALL _bubble_coverage
010a2b: e60400           MOV #0,@#02h
010a2e: 7600c8a8         MOV #200,AR2
010a32: a904             MOV @#02h,AR1
010a34: 1298a4           CMPU AR1 >= AR2, TC1
010a37: 04641b           BCC $C$DW$L$_main_harness_loop$6$E,TC1
010a3a:               $C$DW$L$_main_harness_loop$5$E:
010a3a:               $C$L68:
010a3a:               $C$DW$L$_main_harness_loop$6$B:
010a3a: a404             MOV @#02h,T0
010a3c: 5040             SFTL T0,#1
010a3e: 3c00             MOV #0,AC0
010a40: ec31be01338c     AMAR *(#01338ch),XAR3
010a46: eb6b08           MOV AC0,dbl(*AR3(AR0))
010a49: f7040001         ADD #1,@#02h
010a4d: a904             MOV @#02h,AR1
010a4f: 1294a4           CMPU AR1 < AR2, TC1
010a52: 0464e5           BCC $C$DW$L$_main_harness_loop$5$E,TC1
010a55:               $C$DW$L$_main_harness_loop$6$E:
010a55:               $C$L69:
010a55:               $C$DW$L$_main_harness_loop$7$B:
010a55: ec31be01338c     AMAR *(#01338ch),XAR3
010a5b: eb31b501351c     MOV XAR3,dbl(*(#01351ch))
010a61: e63100013523     MOV #0,*(#013523h)
010a67: e63101013538     MOV #1,*(#013538h)
010a6d: 06ff71           B $C$L67
010a70:               $C$DW$L$_main_harness_loop$7$E:
010a70:               $C$L70:
010a70:               $C$DW$L$_main_harness_loop$8$B:
010a70: 6d09ff6d         BCC $C$L67,AR1 == #0
010a74:               $C$DW$L$_main_harness_loop$8$E:
010a74:               $C$DW$L$_main_harness_loop$9$B:
010a74: e63100013523     MOV #0,*(#013523h)
010a7a: 06ff64           B $C$L67
010a7d:               _main:
010a7d:               $C$DW$L$_main_harness_loop$9$E:
010a7d: 4eff             AADD #-1,SP
010a7f: 08ff3a           CALL _main_harness_loop
010a82: 3c04             MOV #0,T0
010a84: 4e01             AADD #1,SP
010a86: 4804             RET
010a88:               _getenv:
010a88: 50d5             PSHBOTH XAR5
010a8a: 20               NOP
010a8b: 20               NOP
010a8c: 50f5             PSHBOTH XAR7
010a8e: ec01de           AMAR *AR0,XAR5
010a91: 4eff             AADD #-1,SP
010a93: ed310801369a     MOV dbl(*(#01369ah)),AC0
010a99: 9200             CALL AC0
010a9b: 76ffffa8         MOV #-1,AR2
010a9f: eca1be           AMAR *AR5,XAR3
010aa2: b465             AMAR *AR3-
010aa4: a96f0001         MOV *+AR3(#0001h),AR1
010aa8: 401a             ADD #1,AR2
010aaa: 0419f7           BCC #0x010aa4,AR1 != #0
010aad: ec31fe013540     AMAR *(#013540h),XAR7
010ab3: eca19e           AMAR *AR5,XAR1
010ab6: 7b00015a         ADD #1,AR2,T1
010aba: 7600f648         MOV #246,T0
010abe: ece18e           AMAR *AR7,XAR0
010ac1: 6c01214c         CALL _writemsg
010ac5: ec31de013548     AMAR *(#013548h),XAR5
010acb: eca19e           AMAR *AR5,XAR1
010ace: ece18e           AMAR *AR7,XAR0
010ad1: 6c01240c         CALL _readmsg
010ad5: ed310801369c     MOV dbl(*(#01369ch)),AC0
010adb: 9200             CALL AC0
010add: 76ffff98         MOV #-1,AR1
010ae1: eca18e           AMAR *AR5,XAR0
010ae4: ec01be           AMAR *AR0,XAR3
010ae7: b465             AMAR *AR3-
010ae9: aa6f0001         MOV *+AR3(#0001h),AR2
010aed: 4019             ADD #1,AR1
010aef: 041af7           BCC #0x010ae9,AR2 != #0
010af2: 4e01             AADD #1,SP
010af4: 20               NOP
010af5: 50f4             POPBOTH XAR7
010af7: 50d4             POPBOTH XAR5
010af9: 9609             XCC AR1 == #0
010afb: ec318e000000     AMAR *(#00000h),XAR0
010b01: 4804             RET
010b03:               _HOSTwrite:
010b03: 3876             PSH T3,T2
010b05: 50d5             PSHBOTH XAR5
010b07: 20               NOP
010b08: 2247             MOV T0,T3
010b0a: 50f5             PSHBOTH XAR7
010b0c: ec01de_2356      AMAR *AR0,XAR5 || MOV T1,T2
010b11: 4eff             AADD #-1,SP
010b13: ed310801369a     MOV dbl(*(#01369ah)),AC0
010b19: 9200             CALL AC0
010b1b: ec31fe013540     AMAR *(#013540h),XAR7
010b21: 76010098         MOV #256,AR1
010b25: 129864_21        CMPU AR1 >= T2, TC1 || NOP
010b29: 18ff07           AND #255,T3,AC0
010b2c: 76010068_9ef4    XCCPART !TC1 || MOV #256,T2
010b32: c0e1_2370        MOV AC0,*AR7 || MOV T3,AC0
010b36: 100538           SFTS AC0,#-8,AC0
010b39: 18ff00           AND #255,AC0,AC0
010b3c: c0f3_19ff06      MOV AC0,*(AR7+T1) || AND #255,T2,AC0
010b41: c0f5_2360        MOV AC0,*(AR7-T1) || MOV T2,AC0
010b45: 76ff0090         BFXTR #65280,AC0,AR1
010b49: c9f7             MOV AR1,*AR7(T1)
010b4b: 7600f348         MOV #243,T0
010b4f: ece18e           AMAR *AR7,XAR0
010b52: eca19e_2365      AMAR *AR5,XAR1 || MOV T2,T1
010b57: 6c01214c         CALL _writemsg
010b5b: ec319e000000     AMAR *(#00000h),XAR1
010b61: ece18e           AMAR *AR7,XAR0
010b64: 6c01240c         CALL _readmsg
010b68: df3105013540     MOV uns(*(#013540h)),AC0
010b6e: df3115013541     MOV uns(*(#013541h)),AC1
010b74: 101308           ADD AC1 << #8,AC0
010b77: 100510           SFTS AC0,#16,AC0
010b7a: 4406             MOV HI(AC0),T2
010b7c: ed310801369c     MOV dbl(*(#01369ch)),AC0
010b82: 9200             CALL AC0
010b84: 4e01             AADD #1,SP
010b86: 50f4             POPBOTH XAR7
010b88: 2264             MOV T2,T0
010b8a: 50d4             POPBOTH XAR5
010b8c: 3a76             POP T3,T2
010b8e: 4804             RET
010b90:               _HOSTunlink:
010b90: 5066             PSH T2
010b92: 50d5             PSHBOTH XAR5
010b94: 50f5             PSHBOTH XAR7
010b96: 20               NOP
010b97: 20               NOP
010b98: ed310801369a     MOV dbl(*(#01369ah)),AC0
010b9e: ec01fe           AMAR *AR0,XAR7
010ba1: 9200             CALL AC0
010ba3: 76ffffa8         MOV #-1,AR2
010ba7: ece1be           AMAR *AR7,XAR3
010baa: b465             AMAR *AR3-
010bac: a96f0001         MOV *+AR3(#0001h),AR1
010bb0: 401a             ADD #1,AR2
010bb2: 0419f7           BCC #0x010bac,AR1 != #0
010bb5: ec31de013540     AMAR *(#013540h),XAR5
010bbb: ece19e           AMAR *AR7,XAR1
010bbe: 7b00015a         ADD #1,AR2,T1
010bc2: 7600f548         MOV #245,T0
010bc6: eca18e           AMAR *AR5,XAR0
010bc9: 6c01214c         CALL _writemsg
010bcd: ec319e000000     AMAR *(#00000h),XAR1
010bd3: eca18e           AMAR *AR5,XAR0
010bd6: 6c01240c         CALL _readmsg
010bda: dfb315           MOV uns(*(AR5+T1)),AC1
010bdd: dfa105           MOV uns(*AR5),AC0
010be0: 101308           ADD AC1 << #8,AC0
010be3: 100510           SFTS AC0,#16,AC0
010be6: 4406             MOV HI(AC0),T2
010be8: ed310801369c     MOV dbl(*(#01369ch)),AC0
010bee: 9200             CALL AC0
010bf0: 50f4             POPBOTH XAR7
010bf2: 2264             MOV T2,T0
010bf4: 50d4             POPBOTH XAR5
010bf6: 5062             POP T2
010bf8: 4804             RET
010bfa:               _HOSTtime:
010bfa: 50d5             PSHBOTH XAR5
010bfc: ed310801369a     MOV dbl(*(#01369ah)),AC0
010c02: 4efe             AADD #-2,SP
010c04: 9200             CALL AC0
010c06: ec31de013540     AMAR *(#013540h),XAR5
010c0c: 7600f848         MOV #248,T0
010c10: ec319e000000     AMAR *(#00000h),XAR1
010c16: eca18e_3d05      AMAR *AR5,XAR0 || MOV #0,T1
010c1b: 6c01214c         CALL _writemsg
010c1f: ec319e000000     AMAR *(#00000h),XAR1
010c25: eca18e           AMAR *AR5,XAR0
010c28: 6c01240c         CALL _readmsg
010c2c: df3105013540     MOV uns(*(#013540h)),AC0
010c32: dfb715           MOV uns(*AR5(T1)),AC1
010c35: dfb515_111318    MOV uns(*(AR5-T1)),AC1 || ADD AC1 << #24,AC0
010c3b: dfb315_111310    MOV uns(*(AR5+T1)),AC1 || ADD AC1 << #16,AC0
010c41: 101308           ADD AC1 << #8,AC0
010c44: eb0008           MOV AC0,dbl(@#00h)
010c47: ed310801369c     MOV dbl(*(#01369ch)),AC0
010c4d: 9200             CALL AC0
010c4f: ed0008           MOV dbl(@#00h),AC0
010c52: 4e02             AADD #2,SP
010c54: 50d4             POPBOTH XAR5
010c56: 4804             RET
010c58:               _HOSTrename:
010c58: 5066             PSH T2
010c5a: 50d5             PSHBOTH XAR5
010c5c: 20               NOP
010c5d: 20               NOP
010c5e: 50f5             PSHBOTH XAR7
010c60: ec01de           AMAR *AR0,XAR5
010c63: 4e9c             AADD #-100,SP
010c65: ed310801369a     MOV dbl(*(#01369ah)),AC0
010c6b: ec21fe           AMAR *AR1,XAR7
010c6e: 9200             CALL AC0
010c70: 904a             MOV XSP,XAR2
010c72: eca1be           AMAR *AR5,XAR3
010c75: a961             MOV *AR3,AR1
010c77: 806104           MOV *AR3,*AR2
010c7a: 6589             BCC #0x010c87,AR1 == #0
010c7c: a96f0001         MOV *+AR3(#0001h),AR1
010c80: c94f0001         MOV AR1,*+AR2(#0001h)
010c84: 0419f5           BCC #0x010c7c,AR1 != #0
010c87: 76ffffa8         MOV #-1,AR2
010c8b: b4a5             AMAR *AR5-
010c8d: a9af0001         MOV *+AR5(#0001h),AR1
010c91: 401a             ADD #1,AR2
010c93: 0419f7           BCC #0x010c8d,AR1 != #0
010c96: 7b00015a         ADD #1,AR2,T1
010c9a: 904b             MOV XSP,XAR3
010c9c: ece1ae           AMAR *AR7,XAR2
010c9f: 8a41b91850       MOV *AR2,AR1 || AADD T1,AR3
010ca4: c963             MOV AR1,*AR3+
010ca6: 6489             BCC #0x010cb1,AR1 == #0
010ca8: a94f0001         MOV *+AR2(#0001h),AR1
010cac: c963             MOV AR1,*AR3+
010cae: 0419f7           BCC #0x010ca8,AR1 != #0
010cb1: 76ffffa8         MOV #-1,AR2
010cb5: b4e5             AMAR *AR7-
010cb7: a9ef0001         MOV *+AR7(#0001h),AR1
010cbb: 401a             ADD #1,AR2
010cbd: 0419f7           BCC #0x010cb7,AR1 != #0
010cc0: 9049             MOV XSP,XAR1
010cc2: ec31de013540     AMAR *(#013540h),XAR5
010cc8: 7600f748_25a5    MOV #247,T0 || ADD AR2,T1
010cce: eca18e_4115      AMAR *AR5,XAR0 || ADD #1,T1
010cd3: 6c01214c         CALL _writemsg
010cd7: ec319e000000     AMAR *(#00000h),XAR1
010cdd: eca18e           AMAR *AR5,XAR0
010ce0: 6c01240c         CALL _readmsg
010ce4: dfb315           MOV uns(*(AR5+T1)),AC1
010ce7: dfa105           MOV uns(*AR5),AC0
010cea: 101308           ADD AC1 << #8,AC0
010ced: 100510           SFTS AC0,#16,AC0
010cf0: 4406             MOV HI(AC0),T2
010cf2: ed310801369c     MOV dbl(*(#01369ch)),AC0
010cf8: 9200             CALL AC0
010cfa: 4e64             AADD #100,SP
010cfc: 50f4             POPBOTH XAR7
010cfe: 2264             MOV T2,T0
010d00: 50d4             POPBOTH XAR5
010d02: 5062             POP T2
010d04: 4804             RET
010d06:               _HOSTread:
010d06: 3876             PSH T3,T2
010d08: 50d5             PSHBOTH XAR5
010d0a: 20               NOP
010d0b: 2247             MOV T0,T3
010d0d: 50f5             PSHBOTH XAR7
010d0f: ec01de_2356      AMAR *AR0,XAR5 || MOV T1,T2
010d14: 4eff             AADD #-1,SP
010d16: ed310801369a     MOV dbl(*(#01369ah)),AC0
010d1c: 9200             CALL AC0
010d1e: ec31fe013540     AMAR *(#013540h),XAR7
010d24: 76010098         MOV #256,AR1
010d28: 129864_21        CMPU AR1 >= T2, TC1 || NOP
010d2c: 18ff07           AND #255,T3,AC0
010d2f: 76010068_9ef4    XCCPART !TC1 || MOV #256,T2
010d35: c0e1_2370        MOV AC0,*AR7 || MOV T3,AC0
010d39: 100538           SFTS AC0,#-8,AC0
010d3c: 18ff00           AND #255,AC0,AC0
010d3f: c0f3_19ff06      MOV AC0,*(AR7+T1) || AND #255,T2,AC0
010d44: c0f5_2360        MOV AC0,*(AR7-T1) || MOV T2,AC0
010d48: 76ff0090         BFXTR #65280,AC0,AR1
010d4c: c9f7             MOV AR1,*AR7(T1)
010d4e: 7600f248         MOV #242,T0
010d52: ece18e_3d05      AMAR *AR7,XAR0 || MOV #0,T1
010d57: ec319e000000     AMAR *(#00000h),XAR1
010d5d: 6c01214c         CALL _writemsg
010d61: eca19e           AMAR *AR5,XAR1
010d64: ece18e           AMAR *AR7,XAR0
010d67: 6c01240c         CALL _readmsg
010d6b: df3105013540     MOV uns(*(#013540h)),AC0
010d71: df3115013541     MOV uns(*(#013541h)),AC1
010d77: 101308           ADD AC1 << #8,AC0
010d7a: 100510           SFTS AC0,#16,AC0
010d7d: 4406             MOV HI(AC0),T2
010d7f: ed310801369c     MOV dbl(*(#01369ch)),AC0
010d85: 9200             CALL AC0
010d87: 4e01             AADD #1,SP
010d89: 50f4             POPBOTH XAR7
010d8b: 2264             MOV T2,T0
010d8d: 50d4             POPBOTH XAR5
010d8f: 3a76             POP T3,T2
010d91: 4804             RET
010d93:               _HOSTopen:
010d93: 3876             PSH T3,T2
010d95: 50d5             PSHBOTH XAR5
010d97: 50e5             PSHBOTH XAR6
010d99: 20               NOP
010d9a: 20               NOP
010d9b: 2246             MOV T0,T2
010d9d: ec01ee_2357      AMAR *AR0,XAR6 || MOV T1,T3
010da2: 50f5             PSHBOTH XAR7
010da4: ed310801369a     MOV dbl(*(#01369ah)),AC0
010daa: 9200             CALL AC0
010dac: ec31be013540     AMAR *(#013540h),XAR3
010db2: 18ff07           AND #255,T3,AC0
010db5: 76ffffa8         MOV #-1,AR2
010db9: c061_2370        MOV AC0,*AR3 || MOV T3,AC0
010dbd: ec61de_110538    AMAR *AR3,XAR5 || SFTS AC0,#-8,AC0
010dc3: b4a3_19ff00      AMAR *AR5+ || AND #255,AC0,AC0
010dc8: c0a1_19ff06      MOV AC0,*AR5 || AND #255,T2,AC0
010dcd: c075_2360        MOV AC0,*(AR3-T1) || MOV T2,AC0
010dd1: 76ff0090         BFXTR #65280,AC0,AR1
010dd5: ecc1be           AMAR *AR6,XAR3
010dd8: b465             AMAR *AR3-
010dda: c9b5             MOV AR1,*(AR5-T1)
010ddc: a96f0001         MOV *+AR3(#0001h),AR1
010de0: 401a             ADD #1,AR2
010de2: 0419f7           BCC #0x010ddc,AR1 != #0
010de5: ec31fe013540     AMAR *(#013540h),XAR7
010deb: ecc19e           AMAR *AR6,XAR1
010dee: 7b00015a         ADD #1,AR2,T1
010df2: 7600f048         MOV #240,T0
010df6: ece18e           AMAR *AR7,XAR0
010df9: 6c01214c         CALL _writemsg
010dfd: ec319e000000     AMAR *(#00000h),XAR1
010e03: ece18e           AMAR *AR7,XAR0
010e06: 6c01240c         CALL _readmsg
010e0a: dfa115           MOV uns(*AR5),AC1
010e0d: dfad05ffff       MOV uns(*AR5(#-0001h)),AC0
010e12: 101308           ADD AC1 << #8,AC0
010e15: 100510           SFTS AC0,#16,AC0
010e18: 4406             MOV HI(AC0),T2
010e1a: ed310801369c     MOV dbl(*(#01369ch)),AC0
010e20: 9200             CALL AC0
010e22: 2267_9ea6        XCCPART T2 < #0 || MOV T2,T3
010e26: 50f4             POPBOTH XAR7
010e28: 2274             MOV T3,T0
010e2a: 50e4             POPBOTH XAR6
010e2c: 50d4             POPBOTH XAR5
010e2e: 3a76             POP T3,T2
010e30: 4804             RET
010e32:               _HOSTlseek:
010e32: 3876             PSH T3,T2
010e34: 50d5             PSHBOTH XAR5
010e36: 2247             MOV T0,T3
010e38: 4efe             AADD #-2,SP
010e3a: eb0008_2356      MOV AC0,dbl(@#00h) || MOV T1,T2
010e3f: ed310801369a     MOV dbl(*(#01369ah)),AC0
010e45: 9200             CALL AC0
010e47: ec31de013540     AMAR *(#013540h),XAR5
010e4d: 18ff07           AND #255,T3,AC0
010e50: c0a1_2370        MOV AC0,*AR5 || MOV T3,AC0
010e54: 100538           SFTS AC0,#-8,AC0
010e57: 18ff00           AND #255,AC0,AC0
010e5a: c0b3             MOV AC0,*(AR5+T1)
010e5c: ed0008           MOV dbl(@#00h),AC0
010e5f: 18ff00           AND #255,AC0,AC0
010e62: c0b5             MOV AC0,*(AR5-T1)
010e64: ed0008           MOV dbl(@#00h),AC0
010e67: a900_110538      MOV @#00h,AR1 || SFTS AC0,#-8,AC0
010e6c: 18ff00           AND #255,AC0,AC0
010e6f: c0b7_19ff09      MOV AC0,*AR5(T1) || AND #255,AR1,AC0
010e74: 7600f448         MOV #244,T0
010e78: c0b9             MOV AC0,*+AR5
010e7a: ec319e000000     AMAR *(#00000h),XAR1
010e80: ed0008           MOV dbl(@#00h),AC0
010e83: 100528           SFTS AC0,#-24,AC0
010e86: 18ff00           AND #255,AC0,AC0
010e89: c0bb_19ff06      MOV AC0,*-AR5 || AND #255,T2,AC0
010e8e: c0bd_2360        MOV AC0,*(AR5+AR0B) || MOV T2,AC0
010e92: 100538           SFTS AC0,#-8,AC0
010e95: eca18e_19ff00    AMAR *AR5,XAR0 || AND #255,AC0,AC0
010e9b: c0bf_3d05        MOV AC0,*(AR5-AR0B) || MOV #0,T1
010e9f: 6c01214c         CALL _writemsg
010ea3: ec319e000000     AMAR *(#00000h),XAR1
010ea9: eca18e           AMAR *AR5,XAR0
010eac: 6c01240c         CALL _readmsg
010eb0: df3105013540     MOV uns(*(#013540h)),AC0
010eb6: df3115013543     MOV uns(*(#013543h)),AC1
010ebc: 101318           ADD AC1 << #24,AC0
010ebf: df3115013542     MOV uns(*(#013542h)),AC1
010ec5: 101310           ADD AC1 << #16,AC0
010ec8: df3115013541     MOV uns(*(#013541h)),AC1
010ece: 101308           ADD AC1 << #8,AC0
010ed1: eb0008           MOV AC0,dbl(@#00h)
010ed4: ed310801369c     MOV dbl(*(#01369ch)),AC0
010eda: 9200             CALL AC0
010edc: ed0008           MOV dbl(@#00h),AC0
010edf: 4e02             AADD #2,SP
010ee1: 50d4             POPBOTH XAR5
010ee3: 3a76             POP T3,T2
010ee5: 4804             RET
010ee7:               _HOSTclose:
010ee7: 2246_5166        MOV T0,T2 || PSH T2
010eeb: 50d5             PSHBOTH XAR5
010eed: 4eff             AADD #-1,SP
010eef: ed310801369a     MOV dbl(*(#01369ah)),AC0
010ef5: 9200             CALL AC0
010ef7: ec31de013540     AMAR *(#013540h),XAR5
010efd: 7600f148         MOV #241,T0
010f01: 18ff06           AND #255,T2,AC0
010f04: ec319e000000     AMAR *(#00000h),XAR1
010f0a: c0a1_2360        MOV AC0,*AR5 || MOV T2,AC0
010f0e: 100538           SFTS AC0,#-8,AC0
010f11: eca18e_19ff00    AMAR *AR5,XAR0 || AND #255,AC0,AC0
010f17: c0b3_3d05        MOV AC0,*(AR5+T1) || MOV #0,T1
010f1b: 6c01214c         CALL _writemsg
010f1f: ec319e000000     AMAR *(#00000h),XAR1
010f25: eca18e           AMAR *AR5,XAR0
010f28: 6c01240c         CALL _readmsg
010f2c: df3105013540     MOV uns(*(#013540h)),AC0
010f32: df3115013541     MOV uns(*(#013541h)),AC1
010f38: 101308           ADD AC1 << #8,AC0
010f3b: 100510           SFTS AC0,#16,AC0
010f3e: 4406             MOV HI(AC0),T2
010f40: ed310801369c     MOV dbl(*(#01369ch)),AC0
010f46: 9200             CALL AC0
010f48: 4e01             AADD #1,SP
010f4a: 50d4             POPBOTH XAR5
010f4c: 2264             MOV T2,T0
010f4e: 5062             POP T2
010f50: 4804             RET
010f52:               _HOSTclock:
010f52: 50d5             PSHBOTH XAR5
010f54: ed310801369a     MOV dbl(*(#01369ah)),AC0
010f5a: 4efe             AADD #-2,SP
010f5c: 9200             CALL AC0
010f5e: ec31de013540     AMAR *(#013540h),XAR5
010f64: 7600f948         MOV #249,T0
010f68: ec319e000000     AMAR *(#00000h),XAR1
010f6e: eca18e_3d05      AMAR *AR5,XAR0 || MOV #0,T1
010f73: 6c01214c         CALL _writemsg
010f77: ec319e000000     AMAR *(#00000h),XAR1
010f7d: eca18e           AMAR *AR5,XAR0
010f80: 6c01240c         CALL _readmsg
010f84: df3105013540     MOV uns(*(#013540h)),AC0
010f8a: dfb715           MOV uns(*AR5(T1)),AC1
010f8d: dfb515_111318    MOV uns(*(AR5-T1)),AC1 || ADD AC1 << #24,AC0
010f93: dfb315_111310    MOV uns(*(AR5+T1)),AC1 || ADD AC1 << #16,AC0
010f99: 101308           ADD AC1 << #8,AC0
010f9c: eb0008           MOV AC0,dbl(@#00h)
010f9f: ed310801369c     MOV dbl(*(#01369ch)),AC0
010fa5: 9200             CALL AC0
010fa7: ed0008           MOV dbl(@#00h),AC0
010faa: 4e02             AADD #2,SP
010fac: 50d4             POPBOTH XAR5
010fae: 4804             RET
010fb0:               _IRQ_init:
010fb0: 4efb             AADD #-5,SP
010fb2: c404             MOV T0,@#02h
010fb4: eb0085           MOV XAR0,dbl(@#00h)
010fb7: ed00bf           MOV dbl(@#00h),XAR3
010fba: 90b0             MOV XAR3,AC0
010fbc: ec31be7fffff     AMAR *(#07fffffh),XAR3
010fc2: 90b1             MOV XAR3,AC1
010fc4: 121c04           CMPU AC1 != AC0, TC1
010fc7: 62e4             BCC $C$L1,TC1
010fc9: 3e64             MOV #-6,T0
010fcb: 060066           B $C$L6
010fce:               $C$L1:
010fce: ed00bf           MOV dbl(@#00h),XAR3
010fd1: eb31b5013610     MOV XAR3,dbl(*(#013610h))
010fd7: e60600           MOV #0,@#03h
010fda: 76001fa8         MOV #31,AR2
010fde: a906             MOV @#03h,AR1
010fe0: 12a494           CMPU AR2 < AR1, TC1
010fe3: 04641b           BCC $C$DW$L$_IRQ_init$4$E,TC1
010fe6:               $C$L2:
010fe6:               $C$DW$L$_IRQ_init$4$B:
010fe6: a406             MOV @#03h,T0
010fe8: 5040             SFTL T0,#1
010fea: a006             MOV @#03h,AC0
010fec: ec31be013612     AMAR *(#013612h),XAR3
010ff2: eb6b08           MOV AC0,dbl(*AR3(AR0))
010ff5: f7060001         ADD #1,@#03h
010ff9: a906             MOV @#03h,AR1
010ffb: 12a894           CMPU AR2 >= AR1, TC1
010ffe: 0464e5           BCC $C$L2,TC1
011001:               $C$DW$L$_IRQ_init$4$E:
011001:               $C$L3:
011001: e60600           MOV #0,@#03h
011004: a906             MOV @#03h,AR1
011006: 12a494           CMPU AR2 < AR1, TC1
011009: 04641f           BCC $C$DW$L$_IRQ_init$6$E,TC1
01100c:               $C$L4:
01100c:               $C$DW$L$_IRQ_init$6$B:
01100c: a506             MOV @#03h,T1
01100e: 2254             MOV T1,T0
011010: 5040             SFTL T0,#1
011012: 3c10             MOV #1,AC0
011014: ec31be013652     AMAR *(#013652h),XAR3
01101a: 5c05             SFTS AC0,T1,AC0
01101c: eb6b08           MOV AC0,dbl(*AR3(AR0))
01101f: f7060001         ADD #1,@#03h
011023: a906             MOV @#03h,AR1
011025: 12a894           CMPU AR2 >= AR1, TC1
011028: 0464e1           BCC $C$L4,TC1
01102b:               $C$DW$L$_IRQ_init$6$E:
01102b:               $C$L5:
01102b: a904             MOV @#02h,AR1
01102d: c931013692       MOV AR1,*(#013692h)
011032: 3c04             MOV #0,T0
011034:               $C$L6:
011034: 4e05             AADD #5,SP
011036: 4804             RET
011038:               _IRQ_clear:
011038: 4efd             AADD #-3,SP
01103a: c400             MOV T0,@#00h
01103c: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
011042: 12a894           CMPU AR2 >= AR1, TC1
011045: 6264             BCC $C$L7,TC1
011047: 3e64             MOV #-6,T0
011049: 4a3c             B $C$L10
01104b:               $C$L7:
01104b: 080424           CALL _IRQ_globalDisable
01104e: c404             MOV T0,@#02h
011050: a900             MOV @#00h,AR1
011052: c902             MOV AR1,@#01h
011054: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
011058: 12a894           CMPU AR2 >= AR1, TC1
01105b: 046413           BCC $C$L8,TC1
01105e: 7c001059_3d10    SUB #16,AR1,T1 || MOV #1,AC0
011064: 5c05             SFTS AC0,T1,AC0
011066: c002             MOV AC0,@#01h
011068: 2209             MOV AC0,AR1
01106a: c931000046       MOV AR1,*(#00046h)
01106f: 4a0f             B $C$L9
011071:               $C$L8:
011071: a500_3d10        MOV @#00h,T1 || MOV #1,AC0
011075: 5c05             SFTS AC0,T1,AC0
011077: c002             MOV AC0,@#01h
011079: 2209             MOV AC0,AR1
01107b: c931000001       MOV AR1,*(#00001h)
011080:               $C$L9:
011080: a404             MOV @#02h,T0
011082: 08041f           CALL _IRQ_globalRestore
011085: 3c04             MOV #0,T0
011087:               $C$L10:
011087: 4e03             AADD #3,SP
011089: 4804             RET
01108b:               _IRQ_clearAll:
01108b: fb31ffff000001   MOV #-1,*(#00001h)
011092: fb31ffff000046   MOV #-1,*(#00046h)
011099: 4804             RET
01109b:               _IRQ_config:
01109b: 4efb             AADD #-5,SP
01109d: eb0485           MOV XAR0,dbl(@#02h)
0110a0: c400             MOV T0,@#00h
0110a2: ed04bf           MOV dbl(@#02h),XAR3
0110a5: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0110a9: 121c04           CMPU AC1 != AC0, TC1
0110ac: 62e4             BCC $C$L11,TC1
0110ae: 3e64             MOV #-6,T0
0110b0: 060069           B $C$L13
0110b3:               $C$L11:
0110b3: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0110b9: 12a894           CMPU AR2 >= AR1, TC1
0110bc: 62e4             BCC $C$L12,TC1
0110be: 3e64             MOV #-6,T0
0110c0: 060059           B $C$L13
0110c3:               $C$L12:
0110c3: ed31af013610     MOV dbl(*(#013610h)),XAR2
0110c9: f9000308         MOV @#00h << #3,AC0
0110cd: 2204             MOV AC0,T0
0110cf: 806170           MOV dbl(*AR3),dbl(*AR2(AR0))
0110d2: ed31bf013610     MOV dbl(*(#013610h)),XAR3
0110d8: ed04af           MOV dbl(@#02h),XAR2
0110db: f9000308         MOV @#00h << #3,AC0
0110df: 2209             MOV AC0,AR1
0110e1: 8e55bd180890     MOV dbl(*(AR2-T1)),AC0 || AADD AR1,AR3
0110e7: eb7508           MOV AC0,dbl(*(AR3-T1))
0110ea: ed31bf013610     MOV dbl(*(#013610h)),XAR3
0110f0: ed04af           MOV dbl(@#02h),XAR2
0110f3: f9000308         MOV @#00h << #3,AC0
0110f7: 2209             MOV AC0,AR1
0110f9: 8e59bd180890     MOV dbl(*+AR2),AC0 || AADD AR1,AR3
0110ff: eb7908           MOV AC0,dbl(*+AR3)
011102: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011108: ed04af           MOV dbl(@#02h),XAR2
01110b: f9000308         MOV @#00h << #3,AC0
01110f: 2209             MOV AC0,AR1
011111: 8e5dbd180890     MOV dbl(*(AR2+AR0B)),AC0 || AADD AR1,AR3
011117: eb7d08           MOV AC0,dbl(*(AR3+AR0B))
01111a: 3c04             MOV #0,T0
01111c:               $C$L13:
01111c: 4e05             AADD #5,SP
01111e: 4804             RET
011120:               _IRQ_getConfig:
011120: 4efb             AADD #-5,SP
011122: eb0485           MOV XAR0,dbl(@#02h)
011125: c400             MOV T0,@#00h
011127: ed04bf           MOV dbl(@#02h),XAR3
01112a: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01112e: 121c04           CMPU AC1 != AC0, TC1
011131: 62e4             BCC $C$L14,TC1
011133: 3e64             MOV #-6,T0
011135: 06006c           B $C$L16
011138:               $C$L14:
011138: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01113e: 12a894           CMPU AR2 >= AR1, TC1
011141: 62e4             BCC $C$L15,TC1
011143: 3e64             MOV #-6,T0
011145: 06005c           B $C$L16
011148:               $C$L15:
011148: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01114e: ed04af           MOV dbl(@#02h),XAR2
011151: f9000308         MOV @#00h << #3,AC0
011155: 2204             MOV AC0,T0
011157: 807d00           MOV dbl(*AR3(AR0)),dbl(*AR2)
01115a: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011160: f9000308         MOV @#00h << #3,AC0
011164: 2209             MOV AC0,AR1
011166: 1490b0           AADD AR1,AR3
011169: ed7508           MOV dbl(*(AR3-T1)),AC0
01116c: ed04bf           MOV dbl(@#02h),XAR3
01116f: eb7508           MOV AC0,dbl(*(AR3-T1))
011172: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011178: f9000308         MOV @#00h << #3,AC0
01117c: 2209             MOV AC0,AR1
01117e: 1490b0           AADD AR1,AR3
011181: ed7908           MOV dbl(*+AR3),AC0
011184: ed04bf           MOV dbl(@#02h),XAR3
011187: eb7908           MOV AC0,dbl(*+AR3)
01118a: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011190: f9000308         MOV @#00h << #3,AC0
011194: 2209             MOV AC0,AR1
011196: 1490b0           AADD AR1,AR3
011199: ed7d08           MOV dbl(*(AR3+AR0B)),AC0
01119c: ed04bf           MOV dbl(@#02h),XAR3
01119f: eb7d08           MOV AC0,dbl(*(AR3+AR0B))
0111a2: 3c04             MOV #0,T0
0111a4:               $C$L16:
0111a4: 4e05             AADD #5,SP
0111a6: 4804             RET
0111a8:               _IRQ_disable:
0111a8: 4efb             AADD #-5,SP
0111aa: c400             MOV T0,@#00h
0111ac: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0111b2: 12a894           CMPU AR2 >= AR1, TC1
0111b5: 62e4             BCC $C$L17,TC1
0111b7: 3e64             MOV #-6,T0
0111b9: 060066           B $C$L20
0111bc:               $C$L17:
0111bc: c902             MOV AR1,@#01h
0111be: 0802b1           CALL _IRQ_globalDisable
0111c1: c406             MOV T0,@#03h
0111c3: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
0111c7: 12a894           CMPU AR2 >= AR1, TC1
0111ca: 04642a           BCC $C$L18,TC1
0111cd: f702fff0         ADD #-16,@#01h
0111d1: df3105000045     MOV uns(*(#00045h)),AC0
0111d7: a902             MOV @#01h,AR1
0111d9: 3495             NEG AR1,T1
0111db: 5c05             SFTS AC0,T1,AC0
0111dd: 180100           AND #1,AC0,AC0
0111e0: c004             MOV AC0,@#02h
0111e2: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
0111e6: 5c05             SFTS AC0,T1,AC0
0111e8: 3609             NOT AC0,AR1
0111ea: d93109000045     AND *(#00045h),AR1,AC0
0111f0: c031000045       MOV AC0,*(#00045h)
0111f5: 4a24             B $C$L19
0111f7:               $C$L18:
0111f7: a902             MOV @#01h,AR1
0111f9: df3105000000     MOV uns(*(#00000h)),AC0
0111ff: 3495             NEG AR1,T1
011201: 5c05             SFTS AC0,T1,AC0
011203: 180100           AND #1,AC0,AC0
011206: c004             MOV AC0,@#02h
011208: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
01120c: 5c05             SFTS AC0,T1,AC0
01120e: 3609             NOT AC0,AR1
011210: d93109000000     AND *(#00000h),AR1,AC0
011216: c031000000       MOV AC0,*(#00000h)
01121b:               $C$L19:
01121b: a406             MOV @#03h,T0
01121d: 080284           CALL _IRQ_globalRestore
011220: a404             MOV @#02h,T0
011222:               $C$L20:
011222: 4e05             AADD #5,SP
011224: 4804             RET
011226:               _IRQ_disableAll:
011226: e63100000000     MOV #0,*(#00000h)
01122c: e63100000045     MOV #0,*(#00045h)
011232: 4804             RET
011234:               _IRQ_enable:
011234: 4efb             AADD #-5,SP
011236: c400             MOV T0,@#00h
011238: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01123e: 12a894           CMPU AR2 >= AR1, TC1
011241: 62e4             BCC $C$L21,TC1
011243: 3e64             MOV #-6,T0
011245: 060072           B $C$L24
011248:               $C$L21:
011248: c902             MOV AR1,@#01h
01124a: 080225           CALL _IRQ_globalDisable
01124d: c406             MOV T0,@#03h
01124f: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
011253: 12a894           CMPU AR2 >= AR1, TC1
011256: 046430           BCC $C$L22,TC1
011259: f702fff0         ADD #-16,@#01h
01125d: df3105000045     MOV uns(*(#00045h)),AC0
011263: a902             MOV @#01h,AR1
011265: 3495             NEG AR1,T1
011267: 5c05             SFTS AC0,T1,AC0
011269: 180100           AND #1,AC0,AC0
01126c: c004             MOV AC0,@#02h
01126e: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
011272: 5c05             SFTS AC0,T1,AC0
011274: 3609             NOT AC0,AR1
011276: d93199000045     AND *(#00045h),AR1,AR1
01127c: 3c10             MOV #1,AC0
01127e: 5c05             SFTS AC0,T1,AC0
011280: 2a90             OR AR1,AC0
011282: c031000045       MOV AC0,*(#00045h)
011287: 4a2a             B $C$L23
011289:               $C$L22:
011289: a902             MOV @#01h,AR1
01128b: df3105000000     MOV uns(*(#00000h)),AC0
011291: 3495             NEG AR1,T1
011293: 5c05             SFTS AC0,T1,AC0
011295: 180100           AND #1,AC0,AC0
011298: c004             MOV AC0,@#02h
01129a: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
01129e: 5c05             SFTS AC0,T1,AC0
0112a0: 3609             NOT AC0,AR1
0112a2: d93199000000     AND *(#00000h),AR1,AR1
0112a8: 3c10             MOV #1,AC0
0112aa: 5c05             SFTS AC0,T1,AC0
0112ac: 2a90             OR AR1,AC0
0112ae: c031000000       MOV AC0,*(#00000h)
0112b3:               $C$L23:
0112b3: a406             MOV @#03h,T0
0112b5: 0801ec           CALL _IRQ_globalRestore
0112b8: a404             MOV @#02h,T0
0112ba:               $C$L24:
0112ba: 4e05             AADD #5,SP
0112bc: 4804             RET
0112be:               _IRQ_restore:
0112be: 4efb             AADD #-5,SP
0112c0: c502             MOV T1,@#01h
0112c2: c400             MOV T0,@#00h
0112c4: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0112ca: 12a894           CMPU AR2 >= AR1, TC1
0112cd: 62e4             BCC $C$L25,TC1
0112cf: 3e64             MOV #-6,T0
0112d1: 060056           B $C$L28
0112d4:               $C$L25:
0112d4: c904             MOV AR1,@#02h
0112d6: 080199           CALL _IRQ_globalDisable
0112d9: c406             MOV T0,@#03h
0112db: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
0112df: 12a894           CMPU AR2 >= AR1, TC1
0112e2: 046422           BCC $C$L26,TC1
0112e5: f704fff0         ADD #-16,@#02h
0112e9: a504_3d10        MOV @#02h,T1 || MOV #1,AC0
0112ed: 5c05             SFTS AC0,T1,AC0
0112ef: aa02_3709        MOV @#01h,AR2 || NOT AC0,AR1
0112f3: d93199000045     AND *(#00045h),AR1,AR1
0112f9: 18010a           AND #1,AR2,AC0
0112fc: 5c05             SFTS AC0,T1,AC0
0112fe: 2a90             OR AR1,AC0
011300: c031000045       MOV AC0,*(#00045h)
011305: 4a1c             B $C$L27
011307:               $C$L26:
011307: a504_3d10        MOV @#02h,T1 || MOV #1,AC0
01130b: 5c05             SFTS AC0,T1,AC0
01130d: aa02_3709        MOV @#01h,AR2 || NOT AC0,AR1
011311: d93199000000     AND *(#00000h),AR1,AR1
011317: 18010a           AND #1,AR2,AC0
01131a: 5c05             SFTS AC0,T1,AC0
01131c: 2a90             OR AR1,AC0
01131e: c031000000       MOV AC0,*(#00000h)
011323:               $C$L27:
011323: a406             MOV @#03h,T0
011325: 08017c           CALL _IRQ_globalRestore
011328: 3c04             MOV #0,T0
01132a:               $C$L28:
01132a: 4e05             AADD #5,SP
01132c: 4804             RET
01132e:               _IRQ_getArg:
01132e: 4efb             AADD #-5,SP
011330: eb0485           MOV XAR0,dbl(@#02h)
011333: c400             MOV T0,@#00h
011335: ed04bf           MOV dbl(@#02h),XAR3
011338: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01133c: 121c04           CMPU AC1 != AC0, TC1
01133f: 6264             BCC $C$L29,TC1
011341: 3e64             MOV #-6,T0
011343: 4a29             B $C$L31
011345:               $C$L29:
011345: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01134b: 12a894           CMPU AR2 >= AR1, TC1
01134e: 6264             BCC $C$L30,TC1
011350: 3e64             MOV #-6,T0
011352: 4a1a             B $C$L31
011354:               $C$L30:
011354: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01135a: f9000308         MOV @#00h << #3,AC0
01135e: 2209             MOV AC0,AR1
011360: ed04af           MOV dbl(@#02h),XAR2
011363: 1490b0           AADD AR1,AR3
011366: 1402b4           AADD #2,AR3
011369: 806100           MOV dbl(*AR3),dbl(*AR2)
01136c: 3c04             MOV #0,T0
01136e:               $C$L31:
01136e: 4e05             AADD #5,SP
011370: 4804             RET
011372:               _IRQ_setArg:
011372: 4efb             AADD #-5,SP
011374: eb0408           MOV AC0,dbl(@#02h)
011377: c400             MOV T0,@#00h
011379: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01137f: 12a894           CMPU AR2 >= AR1, TC1
011382: 6264             BCC $C$L32,TC1
011384: 3e64             MOV #-6,T0
011386: 4a17             B $C$L33
011388:               $C$L32:
011388: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01138e: f9000308         MOV @#00h << #3,AC0
011392: 2209             MOV AC0,AR1
011394: 8e04bd180890     MOV dbl(@#02h),AC0 || AADD AR1,AR3
01139a: eb7508           MOV AC0,dbl(*(AR3-T1))
01139d: 3c04             MOV #0,T0
01139f:               $C$L33:
01139f: 4e05             AADD #5,SP
0113a1: 4804             RET
0113a3:               _IRQ_map:
0113a3: 4eff             AADD #-1,SP
0113a5: c400             MOV T0,@#00h
0113a7: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0113ad: 12a894           CMPU AR2 >= AR1, TC1
0113b0: 6264             BCC $C$L34,TC1
0113b2: 3e64             MOV #-6,T0
0113b4: 4a15             B $C$L35
0113b6:               $C$L34:
0113b6: a500             MOV @#00h,T1
0113b8: 2254             MOV T1,T0
0113ba: 5040             SFTL T0,#1
0113bc: 3c10             MOV #1,AC0
0113be: ec31be013612     AMAR *(#013612h),XAR3
0113c4: 5c05             SFTS AC0,T1,AC0
0113c6: eb6b08           MOV AC0,dbl(*AR3(AR0))
0113c9: 3c04             MOV #0,T0
0113cb:               $C$L35:
0113cb: 4e01             AADD #1,SP
0113cd: 4804             RET
0113cf:               _IRQ_setVecs:
0113cf: 4efb             AADD #-5,SP
0113d1: eb0008           MOV AC0,dbl(@#00h)
0113d4: 7affff0a         MOV #-1 << #16,AC0
0113d8: ed0018           MOV dbl(@#00h),AC1
0113db: 7eff0000         OR #65280,AC0,AC0
0113df: 2810             AND AC1,AC0
0113e1: 100738           SFTL AC0,#-8,AC0
0113e4: c006             MOV AC0,@#03h
0113e6: 080089           CALL _IRQ_globalDisable
0113e9: c404             MOV T0,@#02h
0113eb: a906             MOV @#03h,AR1
0113ed: c931000049       MOV AR1,*(#00049h)
0113f2: c93100004a       MOV AR1,*(#0004ah)
0113f7: 0800aa           CALL _IRQ_globalRestore
0113fa: 3c04             MOV #0,T0
0113fc: 4e05             AADD #5,SP
0113fe: 4804             RET
011400:               _IRQ_test:
011400: 4ef9             AADD #-7,SP
011402: eb0485           MOV XAR0,dbl(@#02h)
011405: c400             MOV T0,@#00h
011407: ed04bf           MOV dbl(@#02h),XAR3
01140a: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01140e: 121c04           CMPU AC1 != AC0, TC1
011411: 62e4             BCC $C$L36,TC1
011413: 3e64             MOV #-6,T0
011415: 060056           B $C$L40
011418:               $C$L36:
011418: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01141e: 12a894           CMPU AR2 >= AR1, TC1
011421: 62e4             BCC $C$L37,TC1
011423: 3e64             MOV #-6,T0
011425: 060046           B $C$L40
011428:               $C$L37:
011428: c908             MOV AR1,@#04h
01142a: 080045           CALL _IRQ_globalDisable
01142d: c40a             MOV T0,@#05h
01142f: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
011433: 12a894           CMPU AR2 >= AR1, TC1
011436: 04641a           BCC $C$L38,TC1
011439: f708fff0         ADD #-16,@#04h
01143d: a908             MOV @#04h,AR1
01143f: ed04bf           MOV dbl(@#02h),XAR3
011442: df3105000046     MOV uns(*(#00046h)),AC0
011448: 3495             NEG AR1,T1
01144a: 5c05             SFTS AC0,T1,AC0
01144c: 180100           AND #1,AC0,AC0
01144f: c061             MOV AC0,*AR3
011451: 4a14             B $C$L39
011453:               $C$L38:
011453: a908             MOV @#04h,AR1
011455: ed04bf           MOV dbl(@#02h),XAR3
011458: df3105000001     MOV uns(*(#00001h)),AC0
01145e: 3495             NEG AR1,T1
011460: 5c05             SFTS AC0,T1,AC0
011462: 180100           AND #1,AC0,AC0
011465: c061             MOV AC0,*AR3
011467:               $C$L39:
011467: a40a             MOV @#05h,T0
011469: 080038           CALL _IRQ_globalRestore
01146c: 3c04             MOV #0,T0
01146e:               $C$L40:
01146e: 4e07             AADD #7,SP
011470: 4804             RET
011472:               _IRQ_globalDisable:
011472: 4eff             AADD #-1,SP
011474: a931000003       MOV *(#00003h),AR1
011479: 7d080009         AND #2048,AR1,AC0
01147d: 100535           SFTS AC0,#-11,AC0
011480: c000             MOV AC0,@#00h
011482: 20               NOP
011483: 46b3             BSET ST1_INTM
011485: 2204             MOV AC0,T0
011487: 4e01             AADD #1,SP
011489: 4804             RET
01148b:               _IRQ_globalEnable:
01148b: 4eff             AADD #-1,SP
01148d: a931000003       MOV *(#00003h),AR1
011492: 7d080009         AND #2048,AR1,AC0
011496: 100535           SFTS AC0,#-11,AC0
011499: c000             MOV AC0,@#00h
01149b: 20               NOP
01149c: 46b2             BCLR ST1_INTM
01149e: 2204             MOV AC0,T0
0114a0: 4e01             AADD #1,SP
0114a2: 4804             RET
0114a4:               _IRQ_globalRestore:
0114a4: 4eff             AADD #-1,SP
0114a6: c400             MOV T0,@#00h
0114a8: 2249             MOV T0,AR1
0114aa: 6289             BCC $C$L41,AR1 == #0
0114ac: 20               NOP
0114ad: 46b3             BSET ST1_INTM
0114af: 4a03             B $C$L42
0114b1:               $C$L41:
0114b1: 20               NOP
0114b2: 46b2             BCLR ST1_INTM
0114b4:               $C$L42:
0114b4: 4e01             AADD #1,SP
0114b6: 4804             RET
0114b8:               _free:
0114b8: 50d5             PSHBOTH XAR5
0114ba: 20               NOP
0114bb: 20               NOP
0114bc: 20               NOP
0114bd: ec01de           AMAR *AR0,XAR5
0114c0: 90d0             MOV XAR5,AC0
0114c2: 6d0000ba         BCC #0x011580,AC0 == #0
0114c6: ed310801369a     MOV dbl(*(#01369ah)),AC0
0114cc: 9200             CALL AC0
0114ce: 1402d6           ASUB #2,AR5
0114d1: 90d3             MOV XAR5,AC3
0114d3: ed31bf013694     MOV dbl(*(#013694h)),XAR3
0114d9: 1a0013           OR #0,AC3,AC1
0114dc: 90b0             MOV XAR3,AC0
0114de: 1a0020           OR #0,AC0,AC2
0114e1: 122814           CMPU AC2 >= AC1, TC1
0114e4: 046412           BCC #0x0114f9,TC1
0114e7: 900b             MOV AC0,XAR3
0114e9: ed75af           MOV dbl(*(AR3-T1)),XAR2
0114ec: 90a0             MOV XAR2,AC0
0114ee: 1a0020           OR #0,AC0,AC2
0114f1: 122414           CMPU AC2 < AC1, TC1
0114f4: 0464f0           BCC #0x0114e7,TC1
0114f7: 4a06             B #0x0114ff
0114f9: ec31be000000     AMAR *(#00000h),XAR3
0114ff: 903a             MOV AC3,XAR2
011501: a941             MOV *AR2,AR1
011503: 7dfffec9         AND #65534,AR1,AR4
011507: 7dffff2c         AND #65535,AR4,AC2
01150b: 2412             ADD AC1,AC2
01150d: 1a0010           OR #0,AC0,AC1
011510: 122014           CMPU AC2 == AC1, TC1
011513: eb5508_9e74      XCC !TC1 || MOV AC0,dbl(*(AR2-T1))
011518: 04741d           BCC #0x011538,!TC1
01151b: 900a             MOV AC0,XAR2
01151d: a941             MOV *AR2,AR1
01151f: ec0092           BCLR @#00h,AR1
011522: 24c9             ADD AR4,AR1
011524: ed55cf           MOV dbl(*(AR2-T1)),XAR4
011527: 903a             MOV AC3,XAR2
011529: 7dfffe09         AND #65534,AR1,AC0
01152d: c041             MOV AC0,*AR2
01152f: eb55c5           MOV XAR4,dbl(*(AR2-T1))
011532: a941             MOV *AR2,AR1
011534: 7dfffec9         AND #65534,AR1,AR4
011538: 90b0             MOV XAR3,AC0
01153a: 04002f           BCC #0x01156c,AC0 == #0
01153d: a961             MOV *AR3,AR1
01153f: 7dfffe99         AND #65534,AR1,AR1
011543: 7dffff19         AND #65535,AR1,AC1
011547: 2401             ADD AC0,AC1
011549: 1a0003           OR #0,AC3,AC0
01154c: 121004           CMPU AC1 == AC0, TC1
01154f: 9039_9ef4        XCCPART !TC1 || MOV AC3,XAR1
011553: eb7595_9e74      XCC !TC1 || MOV XAR1,dbl(*(AR3-T1))
011558: 047419           BCC #0x011574,!TC1
01155b: 903a             MOV AC3,XAR2
01155d: 24c9             ADD AR4,AR1
01155f: ec0092           BCLR @#00h,AR1
011562: c961             MOV AR1,*AR3
011564: ed55af           MOV dbl(*(AR2-T1)),XAR2
011567: eb75a5           MOV XAR2,dbl(*(AR3-T1))
01156a: 4a0c             B #0x011578
01156c: 9039             MOV AC3,XAR1
01156e: eb3195013694     MOV XAR1,dbl(*(#013694h))
011574: 903b             MOV AC3,XAR3
011576: cc61             MOV AR4,*AR3
011578: ed310801369c     MOV dbl(*(#01369ch)),AC0
01157e: 9200             CALL AC0
011580: 50d4             POPBOTH XAR5
011582: 4804             RET
011584:               _minit:
011584: ed310801369a     MOV dbl(*(#01369ah)),AC0
01158a: 4eff             AADD #-1,SP
01158c: 9200             CALL AC0
01158e: ec31be004000     AMAR *(#04000h),XAR3
011594: 18019b           AND #1,AR3,AR1
011597: 7a00000a         MOV #0 << #16,AC0
01159b: 90b1             MOV XAR3,AC1
01159d: 7e600000         OR #24576,AC0,AC0
0115a1: 5001             SFTL AC0,#-1
0115a3: 2690             SUB AR1,AC0
0115a5: 7dffff09_230a    AND #65535,AR1,AC0 || MOV AC0,AR2
0115ab: ca31013698       MOV AR2,*(#013698h)
0115b0: 2410             ADD AC1,AC0
0115b2: 900c             MOV AC0,XAR4
0115b4: 7dffff09         AND #65535,AR1,AC0
0115b8: 2410             ADD AC1,AC0
0115ba: 900b             MOV AC0,XAR3
0115bc: e63100013699     MOV #0,*(#013699h)
0115c2: eb31c5013694     MOV XAR4,dbl(*(#013694h))
0115c8: 7dfffe0a         AND #65534,AR2,AC0
0115cc: eb31c5013696     MOV XAR4,dbl(*(#013696h))
0115d2: c061             MOV AC0,*AR3
0115d4: ec31ae7fffff     AMAR *(#07fffffh),XAR2
0115da: ed310801369c     MOV dbl(*(#01369ch)),AC0
0115e0: eb75a5           MOV XAR2,dbl(*(AR3-T1))
0115e3: 9200             CALL AC0
0115e5: 4e01             AADD #1,SP
0115e7: 4804             RET
0115e9:               _malloc:
0115e9: 5066             PSH T2
0115eb: 4efe             AADD #-2,SP
0115ed: 04045e           BCC #0x01164e,T0 == #0
0115f0: 3c49             MOV #4,AR1
0115f2: 7b000264         ADD #2,T0,T2
0115f6: ed310801369a     MOV dbl(*(#01369ah)),AC0
0115fc: 129464_21        CMPU AR1 < T2, TC1 || NOP
011600: 3c46_9ef4        XCCPART !TC1 || MOV #4,T2
011604: 180196           AND #1,T2,AR1
011607: 2496             ADD AR1,T2
011609: 9200             CALL AC0
01160b: a931013699       MOV *(#013699h),AR1
011610: 6189             BCC #0x011615,AR1 == #0
011612: 08ff6f           CALL _minit
011615: ed31bf013694     MOV dbl(*(#013694h)),XAR3
01161b: eb00b5           MOV XAR3,dbl(@#00h)
01161e: 20               NOP
01161f: 20               NOP
011620: 20               NOP
011621: ec31be000000     AMAR *(#00000h),XAR3
011627: 4a0c             B #0x011635
011629: ed00bf           MOV dbl(@#00h),XAR3
01162c: ed75af           MOV dbl(*(AR3-T1)),XAR2
01162f: eb00a5           MOV XAR2,dbl(@#00h)
011632: 20               NOP
011633: 20               NOP
011634: 20               NOP
011635: ec31ae7fffff     AMAR *(#07fffffh),XAR2
01163b: ed0008           MOV dbl(@#00h),AC0
01163e: 90a1             MOV XAR2,AC1
011640: 120c14           CMPU AC0 != AC1, TC1
011643: 046411           BCC #0x011657,TC1
011646: ed310801369c     MOV dbl(*(#01369ch)),AC0
01164c: 9200             CALL AC0
01164e: ec318e000000     AMAR *(#00000h),XAR0
011654: 060081           B #0x0116d8
011657: ed00af           MOV dbl(@#00h),XAR2
01165a: a941             MOV *AR2,AR1
01165c: 7dfffe99         AND #65534,AR1,AR1
011660: 129464_21        CMPU AR1 < T2, TC1 || NOP
011664: 0464c2           BCC #0x011629,TC1
011667: 7b0004a6         ADD #4,T2,AR2
01166b: 12a494_21        CMPU AR2 < AR1, TC1 || NOP
01166f: 046424           BCC #0x011696,TC1
011672: 90b0             MOV XAR3,AC0
011674: 6710             BCC #0x011684,AC0 != #0
011676: ed00bf           MOV dbl(@#00h),XAR3
011679: ed75bf           MOV dbl(*(AR3-T1)),XAR3
01167c: eb31b5013694     MOV XAR3,dbl(*(#013694h))
011682: 4a09             B #0x01168d
011684: ed00af           MOV dbl(@#00h),XAR2
011687: ed55af           MOV dbl(*(AR2-T1)),XAR2
01168a: eb75a5           MOV XAR2,dbl(*(AR3-T1))
01168d: ed00bf           MOV dbl(@#00h),XAR3
011690: f5610001         OR #1,*AR3
011694: 4a34             B #0x0116ca
011696: ed00af           MOV dbl(@#00h),XAR2
011699: ed00cf           MOV dbl(@#00h),XAR4
01169c: 7dffff06         AND #65535,T2,AC0
0116a0: 90a1             MOV XAR2,AC1
0116a2: 2410             ADD AC1,AC0
0116a4: 900a             MOV AC0,XAR2
0116a6: ed95cf           MOV dbl(*(AR4-T1)),XAR4
0116a9: 90b0             MOV XAR3,AC0
0116ab: eb55c5           MOV XAR4,dbl(*(AR2-T1))
0116ae: eb75a5_9e10      XCC AC0 != #0 || MOV XAR2,dbl(*(AR3-T1))
0116b3: ed00bf           MOV dbl(@#00h),XAR3
0116b6: 2669             SUB T2,AR1
0116b8: ec0092           BCLR @#00h,AR1
0116bb: c941_1b0196      MOV AR1,*AR2 || OR #1,T2,AR1
0116c0: 9600             XCC AC0 == #0
0116c2: eb31a5013694     MOV XAR2,dbl(*(#013694h))
0116c8: c961             MOV AR1,*AR3
0116ca: ed310801369c     MOV dbl(*(#01369ch)),AC0
0116d0: 9200             CALL AC0
0116d2: ed008f           MOV dbl(@#00h),XAR0
0116d5: 140284           AADD #2,AR0
0116d8: 4e02             AADD #2,SP
0116da: 5062             POP T2
0116dc: 4804             RET
0116de:               _realloc:
0116de: 5066             PSH T2
0116e0: 50d5             PSHBOTH XAR5
0116e2: 20               NOP
0116e3: 20               NOP
0116e4: 50f5             PSHBOTH XAR7
0116e6: ec01de_2346      AMAR *AR0,XAR5 || MOV T0,T2
0116eb: 4efc             AADD #-4,SP
0116ed: 6616             BCC #0x0116fb,T2 != #0
0116ef: 08fdc6           CALL _free
0116f2: ec318e000000     AMAR *(#00000h),XAR0
0116f8: 06018a           B #0x011885
0116fb: 90d0             MOV XAR5,AC0
0116fd: 6310             BCC #0x011705,AC0 != #0
0116ff: 08fee7           CALL _malloc
011702: 060180           B #0x011885
011705: 4026             ADD #2,T2
011707: 3c49             MOV #4,AR1
011709: eca1be_139464    AMAR *AR5,XAR3 || CMPU AR1 < T2, TC1
01170f: 3c46_9ef4        XCCPART !TC1 || MOV #4,T2
011713: 1402b6_190196    ASUB #2,AR3 || AND #1,T2,AR1
011719: a961_2596        MOV *AR3,AR1 || ADD AR1,T2
01171d: 90b1             MOV XAR3,AC1
01171f: 7dfffe09         AND #65534,AR1,AC0
011723: eb04b5_2510      MOV XAR3,dbl(@#02h) || ADD AC1,AC0
011728: eb0008           MOV AC0,dbl(@#00h)
01172b: ed310801369a     MOV dbl(*(#01369ah)),AC0
011731: 9200             CALL AC0
011733: ed04bf           MOV dbl(@#02h),XAR3
011736: a961             MOV *AR3,AR1
011738: 7dfffe99         AND #65534,AR1,AR1
01173c: 129864_21        CMPU AR1 >= T2, TC1 || NOP
011740: 046434           BCC #0x011777,TC1
011743: ed31bf013696     MOV dbl(*(#013696h)),XAR3
011749: df3115013698     MOV uns(*(#013698h)),AC1
01174f: 90b0             MOV XAR3,AC0
011751: ed0008_2501      MOV dbl(@#00h),AC0 || ADD AC0,AC1
011756: 120814           CMPU AC0 >= AC1, TC1
011759: 6d6400f7         BCC #0x011854,TC1
01175d: ed00bf           MOV dbl(@#00h),XAR3
011760: aa61             MOV *AR3,AR2
011762: ec00a8           BTST @#00h,AR2,TC1
011765: 6d6400eb         BCC #0x011854,TC1
011769: 7dfffeaa         AND #65534,AR2,AR2
01176d: 249a             ADD AR1,AR2
01176f: 12a464_21        CMPU AR2 < T2, TC1 || NOP
011773: 6d6400dd         BCC #0x011854,TC1
011777: ed31bf013694     MOV dbl(*(#013694h)),XAR3
01177d: 90b0             MOV XAR3,AC0
01177f: ed0418_1b0020    MOV dbl(@#02h),AC1 || OR #0,AC0,AC2
011785: 122814           CMPU AC2 >= AC1, TC1
011788: 046415           BCC #0x0117a0,TC1
01178b: 900b             MOV AC0,XAR3
01178d: ed75af           MOV dbl(*(AR3-T1)),XAR2
011790: 90a0             MOV XAR2,AC0
011792: ed0418_1b0020    MOV dbl(@#02h),AC1 || OR #0,AC0,AC2
011798: 122414           CMPU AC2 < AC1, TC1
01179b: 0464ed           BCC #0x01178b,TC1
01179e: 4a06             B #0x0117a6
0117a0: ec31be000000     AMAR *(#00000h),XAR3
0117a6: ed04af           MOV dbl(@#02h),XAR2
0117a9: a941             MOV *AR2,AR1
0117ab: 7dfffe99         AND #65534,AR1,AR1
0117af: 7dffff29         AND #65535,AR1,AC2
0117b3: 2412             ADD AC1,AC2
0117b5: 1a0010           OR #0,AC0,AC1
0117b8: 121024           CMPU AC1 == AC2, TC1
0117bb: 046423           BCC #0x0117e1,TC1
0117be: 2669_3d4a        SUB T2,AR1 || MOV #4,AR2
0117c2: 1294a4_21        CMPU AR1 < AR2, TC1 || NOP
0117c6: 04647e           BCC #0x011847,TC1
0117c9: ed04af           MOV dbl(@#02h),XAR2
0117cc: 7dffff16         AND #65535,T2,AC1
0117d0: 90a2             MOV XAR2,AC2
0117d2: 2421             ADD AC2,AC1
0117d4: 901a             MOV AC1,XAR2
0117d6: 7dfffe19         AND #65534,AR1,AC1
0117da: eb5508           MOV AC0,dbl(*(AR2-T1))
0117dd: c141             MOV AC1,*AR2
0117df: 4a32             B #0x011813
0117e1: 900a             MOV AC0,XAR2
0117e3: aa41             MOV *AR2,AR2
0117e5: ec00a2           BCLR @#00h,AR2
0117e8: 249a             ADD AR1,AR2
0117ea: 22a9             MOV AR2,AR1
0117ec: 7b0004a6         ADD #4,T2,AR2
0117f0: 12a894_21        CMPU AR2 >= AR1, TC1 || NOP
0117f4: 04642f           BCC #0x011826,TC1
0117f7: 900a             MOV AC0,XAR2
0117f9: ed55cf           MOV dbl(*(AR2-T1)),XAR4
0117fc: ed04af           MOV dbl(@#02h),XAR2
0117ff: 7dffff06         AND #65535,T2,AC0
011803: 90a1             MOV XAR2,AC1
011805: 2410             ADD AC1,AC0
011807: 900a             MOV AC0,XAR2
011809: 2669             SUB T2,AR1
01180b: ec0092           BCLR @#00h,AR1
01180e: c941             MOV AR1,*AR2
011810: eb55c5           MOV XAR4,dbl(*(AR2-T1))
011813: 90b0             MOV XAR3,AC0
011815: 9600             XCC AC0 == #0
011817: eb31a5013694     MOV XAR2,dbl(*(#013694h))
01181d: eb75a5_9e10      XCC AC0 != #0 || MOV XAR2,dbl(*(AR3-T1))
011822: 4a19_2369        B #0x01183f || MOV T2,AR1
011826: 90b1             MOV XAR3,AC1
011828: 6691             BCC #0x011837,AC1 != #0
01182a: 900b             MOV AC0,XAR3
01182c: ed75bf           MOV dbl(*(AR3-T1)),XAR3
01182f: eb31b5013694     MOV XAR3,dbl(*(#013694h))
011835: 4a08             B #0x01183f
011837: 900a             MOV AC0,XAR2
011839: ed55af           MOV dbl(*(AR2-T1)),XAR2
01183c: eb75a5           MOV XAR2,dbl(*(AR3-T1))
01183f: ed04bf           MOV dbl(@#02h),XAR3
011842: 1a0199           OR #1,AR1,AR1
011845: c961             MOV AR1,*AR3
011847: ed310801369c     MOV dbl(*(#01369ch)),AC0
01184d: 9200             CALL AC0
01184f: eca18e           AMAR *AR5,XAR0
011852: 4a31             B #0x011885
011854: ed310801369c     MOV dbl(*(#01369ch)),AC0
01185a: 9200             CALL AC0
01185c: 2264             MOV T2,T0
01185e: 08fd88           CALL _malloc
011861: ec01fe           AMAR *AR0,XAR7
011864: 90f0             MOV XAR7,AC0
011866: 040019           BCC #0x011882,AC0 == #0
011869: ed04bf           MOV dbl(@#02h),XAR3
01186c: a961             MOV *AR3,AR1
01186e: ec0092           BCLR @#00h,AR1
011871: 7c000249         SUB #2,AR1,T0
011875: eca19e           AMAR *AR5,XAR1
011878: 6c0125b6         CALL _memcpy
01187c: eca18e           AMAR *AR5,XAR0
01187f: 08fc36           CALL _free
011882: ece18e           AMAR *AR7,XAR0
011885: 4e04             AADD #4,SP
011887: 50f4             POPBOTH XAR7
011889: 50d4             POPBOTH XAR5
01188b: 5062             POP T2
01188d: 4804             RET
01188f:               _max_free:
01188f: 5066             PSH T2
011891: ed310801369a     MOV dbl(*(#01369ah)),AC0
011897: 9200             CALL AC0
011899: a931013699       MOV *(#013699h),AR1
01189e: ed31bf013694     MOV dbl(*(#013694h)),XAR3
0118a4: 3c06             MOV #0,T2
0118a6: 90b0             MOV XAR3,AC0
0118a8: 041930           BCC #0x0118db,AR1 != #0
0118ab: ec31be7fffff     AMAR *(#07fffffh),XAR3
0118b1: 1a0020           OR #0,AC0,AC2
0118b4: 90b1             MOV XAR3,AC1
0118b6: 122014           CMPU AC2 == AC1, TC1
0118b9: 04641f           BCC #0x0118db,TC1
0118bc: 900b             MOV AC0,XAR3
0118be: a961             MOV *AR3,AR1
0118c0: ec0092           BCLR @#00h,AR1
0118c3: 4229             SUB #2,AR1
0118c5: 126894_21        CMPU T2 >= AR1, TC1 || NOP
0118c9: ed75bf           MOV dbl(*(AR3-T1)),XAR3
0118cc: 2296_9ef4        XCCPART !TC1 || MOV AR1,T2
0118d0: 90b0             MOV XAR3,AC0
0118d2: 1a0020           OR #0,AC0,AC2
0118d5: 122c14           CMPU AC2 != AC1, TC1
0118d8: 0464e1           BCC #0x0118bc,TC1
0118db: ed310801369c     MOV dbl(*(#01369ch)),AC0
0118e1: 9200             CALL AC0
0118e3: 2264             MOV T2,T0
0118e5: 5062             POP T2
0118e7: 4804             RET
0118e9:               _free_memory:
0118e9: 5066             PSH T2
0118eb: ed310801369a     MOV dbl(*(#01369ah)),AC0
0118f1: 9200             CALL AC0
0118f3: a931013699       MOV *(#013699h),AR1
0118f8: ed31bf013694     MOV dbl(*(#013694h)),XAR3
0118fe: 3c06             MOV #0,T2
011900: 90b0             MOV XAR3,AC0
011902: 04192c           BCC #0x011931,AR1 != #0
011905: ec31be7fffff     AMAR *(#07fffffh),XAR3
01190b: 1a0020           OR #0,AC0,AC2
01190e: 90b1             MOV XAR3,AC1
011910: 122014           CMPU AC2 == AC1, TC1
011913: 04641b           BCC #0x011931,TC1
011916: 900b             MOV AC0,XAR3
011918: a961             MOV *AR3,AR1
01191a: ed75bf           MOV dbl(*(AR3-T1)),XAR3
01191d: 90b0             MOV XAR3,AC0
01191f: ec0092_1b0020    BCLR @#00h,AR1 || OR #0,AC0,AC2
011925: 122c14_2569      CMPU AC2 != AC1, TC1 || ADD T2,AR1
01192a: 7c000269         SUB #2,AR1,T2
01192e: 0464e5           BCC #0x011916,TC1
011931: ed310801369c     MOV dbl(*(#01369ch)),AC0
011937: 9200             CALL AC0
011939: 2264             MOV T2,T0
01193b: 5062             POP T2
01193d: 4804             RET
01193f:               _chkheap:
01193f: ec318e000000     AMAR *(#00000h),XAR0
011945: 4804             RET
011947:               _calloc:
011947: 5250             MOV T1,HI(AC0)
011949: 5800             MPY T0,AC0,AC0
01194b: 2206_5166        MOV AC0,T2 || PSH T2
01194f: 2264             MOV T2,T0
011951: 08fc95           CALL _malloc
011954: 9080             MOV XAR0,AC0
011956: 040010           BCC #0x011969,AC0 == #0
011959: ec01be           AMAR *AR0,XAR3
01195c: 6586             BCC #0x011969,T2 == #0
01195e: 7c000196         SUB #1,T2,AR1
011962: 529c             MOV AR1,CSR
011964: 4800             RPT CSR
011966: e66300              MOV #0,*AR3+
011969: 5062             POP T2
01196b: 4804             RET
01196d:               _fuzzer_isr:
01196d:               .text:retain:
01196d: f406f91f_98      AND #63775,mmap(@ST1_55)
011972: f5064100_98      OR #16640,mmap(@ST1_55)
011977: f496fa00_98      AND #64000,mmap(@ST2_55)
01197c: f5968000_98      OR #32768,mmap(@ST2_55)
011981: b508_98          PSH mmap(@ST3_55)
011984: 5007             PSH dbl(AC0)
011986: b514_98          PSH mmap(@AC0G)
011989: 5017             PSH dbl(AC1)
01198b: b51a_98          PSH mmap(@AC1G)
01198e: 5027             PSH dbl(AC2)
011990: b54c_98          PSH mmap(@AC2G)
011993: 5037             PSH dbl(AC3)
011995: b554_98          PSH mmap(@AC3G)
011998: 5046             PSH T0
01199a: 5056             PSH T1
01199c: 5085             PSHBOTH XAR0
01199e: 5095             PSHBOTH XAR1
0119a0: 50a5             PSHBOTH XAR2
0119a2: 50b5             PSHBOTH XAR3
0119a4: 50c5             PSHBOTH XAR4
0119a6: b562_98          PSH mmap(@BKC)
0119a9: b532_98          PSH mmap(@BK03)
0119ac: b560_98          PSH mmap(@BK47)
0119af: b534_98          PSH mmap(@BRC0)
0119b2: b57a_98          PSH mmap(@RSA0L)
0119b5: b578_98          PSH mmap(@RSA0H)
0119b8: b57e_98          PSH mmap(@REA0L)
0119bb: b57c_98          PSH mmap(@REA0H)
0119be: b574_98          PSH mmap(@BRS1)
0119c1: b572_98          PSH mmap(@BRC1)
0119c4: b582_98          PSH mmap(@RSA1L)
0119c7: b580_98          PSH mmap(@RSA1H)
0119ca: b586_98          PSH mmap(@REA1L)
0119cd: b584_98          PSH mmap(@REA1H)
0119d0: b576_98          PSH mmap(@CSR)
0119d3: b588_98          PSH mmap(@RPTC)
0119d6: 5075             PSHBOTH XCDP
0119d8: b51e_98          PSH mmap(@TRN0)
0119db: b570_98          PSH mmap(@TRN1)
0119de: b564_98          PSH mmap(@BSA01)
0119e1: b566_98          PSH mmap(@BSA23)
0119e4: b568_98          PSH mmap(@BSA45)
0119e7: b56a_98          PSH mmap(@BSA67)
0119ea: b56c_98          PSH mmap(@BSAC)
0119ed: ec009e           AMAR @#00h,XAR1
0119f0: f49afffe_98      AND #65534,mmap(@SP)
0119f5: 5096             PSH AR1
0119f7: 4eff             AADD #-1,SP
0119f9: 4656             BCLR ST3_SATA
0119fb: 4617             BSET ST3_SMUL
0119fd: 6c011038_3d44    CALL _IRQ_clear || MOV #4,T0
011a03: e651011c14       MOV #1,port(#01c14h)
011a08: ed310801353e     MOV dbl(*(#01353eh)),AC0
011a0e: 4010             ADD #1,AC0
011a10: eb310801353e     MOV AC0,dbl(*(#01353eh))
011a16: ec31be0186a0     AMAR *(#0186a0h),XAR3
011a1c: ed310801353e     MOV dbl(*(#01353eh)),AC0
011a22: 90b1             MOV XAR3,AC1
011a24: 6c01232d         CALL __remul
011a28: 041018           BCC $C$L1,AC0 != #0
011a2b: 3c00             MOV #0,AC0
011a2d: eb310801353e     MOV AC0,dbl(*(#01353eh))
011a33: 6c011472         CALL _IRQ_globalDisable
011a37: 6c01108b         CALL _IRQ_clearAll
011a3b: 6c011226         CALL _IRQ_disableAll
011a3f: 6c010000         CALL _crash_void
011a43:               $C$L1:
011a43: 4e01             AADD #1,SP
011a45: bb9a_98          POP mmap(@SP)
011a48: bb6c_98          POP mmap(@BSAC)
011a4b: bb6a_98          POP mmap(@BSA67)
011a4e: bb68_98          POP mmap(@BSA45)
011a51: bb66_98          POP mmap(@BSA23)
011a54: bb64_98          POP mmap(@BSA01)
011a57: bb70_98          POP mmap(@TRN1)
011a5a: bb1e_98          POP mmap(@TRN0)
011a5d: 5074             POPBOTH XCDP
011a5f: bb88_98          POP mmap(@RPTC)
011a62: bb76_98          POP mmap(@CSR)
011a65: bb84_98          POP mmap(@REA1H)
011a68: bb86_98          POP mmap(@REA1L)
011a6b: bb80_98          POP mmap(@RSA1H)
011a6e: bb82_98          POP mmap(@RSA1L)
011a71: bb72_98          POP mmap(@BRC1)
011a74: bb74_98          POP mmap(@BRS1)
011a77: bb7c_98          POP mmap(@REA0H)
011a7a: bb7e_98          POP mmap(@REA0L)
011a7d: bb78_98          POP mmap(@RSA0H)
011a80: bb7a_98          POP mmap(@RSA0L)
011a83: bb34_98          POP mmap(@BRC0)
011a86: bb60_98          POP mmap(@BK47)
011a89: bb32_98          POP mmap(@BK03)
011a8c: bb62_98          POP mmap(@BKC)
011a8f: 50c4             POPBOTH XAR4
011a91: 50b4             POPBOTH XAR3
011a93: 50a4             POPBOTH XAR2
011a95: 5094             POPBOTH XAR1
011a97: 5084             POPBOTH XAR0
011a99: 5052             POP T1
011a9b: 5042             POP T0
011a9d: bb54_98          POP mmap(@AC3G)
011aa0: 5033             POP dbl(AC3)
011aa2: bb4c_98          POP mmap(@AC2G)
011aa5: 5023             POP dbl(AC2)
011aa7: bb1a_98          POP mmap(@AC1G)
011aaa: 5013             POP dbl(AC1)
011aac: bb14_98          POP mmap(@AC0G)
011aaf: 5003             POP dbl(AC0)
011ab1: bb08_98          POP mmap(@ST3_55)
011ab4: 4805             RETI
011ab6:               _bus_error_isr:
011ab6: f406f91f_98      AND #63775,mmap(@ST1_55)
011abb: f5064100_98      OR #16640,mmap(@ST1_55)
011ac0: f496fa00_98      AND #64000,mmap(@ST2_55)
011ac5: f5968000_98      OR #32768,mmap(@ST2_55)
011aca: b508_98          PSH mmap(@ST3_55)
011acd: 5007             PSH dbl(AC0)
011acf: b514_98          PSH mmap(@AC0G)
011ad2: 5017             PSH dbl(AC1)
011ad4: b51a_98          PSH mmap(@AC1G)
011ad7: 5027             PSH dbl(AC2)
011ad9: b54c_98          PSH mmap(@AC2G)
011adc: 5037             PSH dbl(AC3)
011ade: b554_98          PSH mmap(@AC3G)
011ae1: 5046             PSH T0
011ae3: 5056             PSH T1
011ae5: 5085             PSHBOTH XAR0
011ae7: 5095             PSHBOTH XAR1
011ae9: 50a5             PSHBOTH XAR2
011aeb: 50b5             PSHBOTH XAR3
011aed: 50c5             PSHBOTH XAR4
011aef: b562_98          PSH mmap(@BKC)
011af2: b532_98          PSH mmap(@BK03)
011af5: b560_98          PSH mmap(@BK47)
011af8: b534_98          PSH mmap(@BRC0)
011afb: b57a_98          PSH mmap(@RSA0L)
011afe: b578_98          PSH mmap(@RSA0H)
011b01: b57e_98          PSH mmap(@REA0L)
011b04: b57c_98          PSH mmap(@REA0H)
011b07: b574_98          PSH mmap(@BRS1)
011b0a: b572_98          PSH mmap(@BRC1)
011b0d: b582_98          PSH mmap(@RSA1L)
011b10: b580_98          PSH mmap(@RSA1H)
011b13: b586_98          PSH mmap(@REA1L)
011b16: b584_98          PSH mmap(@REA1H)
011b19: b576_98          PSH mmap(@CSR)
011b1c: b588_98          PSH mmap(@RPTC)
011b1f: 5075             PSHBOTH XCDP
011b21: b51e_98          PSH mmap(@TRN0)
011b24: b570_98          PSH mmap(@TRN1)
011b27: b564_98          PSH mmap(@BSA01)
011b2a: b566_98          PSH mmap(@BSA23)
011b2d: b568_98          PSH mmap(@BSA45)
011b30: b56a_98          PSH mmap(@BSA67)
011b33: b56c_98          PSH mmap(@BSAC)
011b36: ec009e           AMAR @#00h,XAR1
011b39: f49afffe_98      AND #65534,mmap(@SP)
011b3e: 5096             PSH AR1
011b40: 4eff             AADD #-1,SP
011b42: 4656             BCLR ST3_SATA
011b44: 76001848_4717    MOV #24,T0 || BSET ST3_SMUL
011b4a: 6c011038         CALL _IRQ_clear
011b4e: 6c01108b         CALL _IRQ_clearAll
011b52: 6c010000         CALL _crash_void
011b56: 4e01             AADD #1,SP
011b58: bb9a_98          POP mmap(@SP)
011b5b: bb6c_98          POP mmap(@BSAC)
011b5e: bb6a_98          POP mmap(@BSA67)
011b61: bb68_98          POP mmap(@BSA45)
011b64: bb66_98          POP mmap(@BSA23)
011b67: bb64_98          POP mmap(@BSA01)
011b6a: bb70_98          POP mmap(@TRN1)
011b6d: bb1e_98          POP mmap(@TRN0)
011b70: 5074             POPBOTH XCDP
011b72: bb88_98          POP mmap(@RPTC)
011b75: bb76_98          POP mmap(@CSR)
011b78: bb84_98          POP mmap(@REA1H)
011b7b: bb86_98          POP mmap(@REA1L)
011b7e: bb80_98          POP mmap(@RSA1H)
011b81: bb82_98          POP mmap(@RSA1L)
011b84: bb72_98          POP mmap(@BRC1)
011b87: bb74_98          POP mmap(@BRS1)
011b8a: bb7c_98          POP mmap(@REA0H)
011b8d: bb7e_98          POP mmap(@REA0L)
011b90: bb78_98          POP mmap(@RSA0H)
011b93: bb7a_98          POP mmap(@RSA0L)
011b96: bb34_98          POP mmap(@BRC0)
011b99: bb60_98          POP mmap(@BK47)
011b9c: bb32_98          POP mmap(@BK03)
011b9f: bb62_98          POP mmap(@BKC)
011ba2: 50c4             POPBOTH XAR4
011ba4: 50b4             POPBOTH XAR3
011ba6: 50a4             POPBOTH XAR2
011ba8: 5094             POPBOTH XAR1
011baa: 5084             POPBOTH XAR0
011bac: 5052             POP T1
011bae: 5042             POP T0
011bb0: bb54_98          POP mmap(@AC3G)
011bb3: 5033             POP dbl(AC3)
011bb5: bb4c_98          POP mmap(@AC2G)
011bb8: 5023             POP dbl(AC2)
011bba: bb1a_98          POP mmap(@AC1G)
011bbd: 5013             POP dbl(AC1)
011bbf: bb14_98          POP mmap(@AC0G)
011bc2: 5003             POP dbl(AC0)
011bc4: bb08_98          POP mmap(@ST3_55)
011bc7: 4805             RETI
011bc9:               _data_log_isr:
011bc9: f406f91f_98      AND #63775,mmap(@ST1_55)
011bce: f5064100_98      OR #16640,mmap(@ST1_55)
011bd3: f496fa00_98      AND #64000,mmap(@ST2_55)
011bd8: f5968000_98      OR #32768,mmap(@ST2_55)
011bdd: b508_98          PSH mmap(@ST3_55)
011be0: 5007             PSH dbl(AC0)
011be2: b514_98          PSH mmap(@AC0G)
011be5: 5017             PSH dbl(AC1)
011be7: b51a_98          PSH mmap(@AC1G)
011bea: 5027             PSH dbl(AC2)
011bec: b54c_98          PSH mmap(@AC2G)
011bef: 5037             PSH dbl(AC3)
011bf1: b554_98          PSH mmap(@AC3G)
011bf4: 5046             PSH T0
011bf6: 5056             PSH T1
011bf8: 5085             PSHBOTH XAR0
011bfa: 5095             PSHBOTH XAR1
011bfc: 50a5             PSHBOTH XAR2
011bfe: 50b5             PSHBOTH XAR3
011c00: 50c5             PSHBOTH XAR4
011c02: b562_98          PSH mmap(@BKC)
011c05: b532_98          PSH mmap(@BK03)
011c08: b560_98          PSH mmap(@BK47)
011c0b: b534_98          PSH mmap(@BRC0)
011c0e: b57a_98          PSH mmap(@RSA0L)
011c11: b578_98          PSH mmap(@RSA0H)
011c14: b57e_98          PSH mmap(@REA0L)
011c17: b57c_98          PSH mmap(@REA0H)
011c1a: b574_98          PSH mmap(@BRS1)
011c1d: b572_98          PSH mmap(@BRC1)
011c20: b582_98          PSH mmap(@RSA1L)
011c23: b580_98          PSH mmap(@RSA1H)
011c26: b586_98          PSH mmap(@REA1L)
011c29: b584_98          PSH mmap(@REA1H)
011c2c: b576_98          PSH mmap(@CSR)
011c2f: b588_98          PSH mmap(@RPTC)
011c32: 5075             PSHBOTH XCDP
011c34: b51e_98          PSH mmap(@TRN0)
011c37: b570_98          PSH mmap(@TRN1)
011c3a: b564_98          PSH mmap(@BSA01)
011c3d: b566_98          PSH mmap(@BSA23)
011c40: b568_98          PSH mmap(@BSA45)
011c43: b56a_98          PSH mmap(@BSA67)
011c46: b56c_98          PSH mmap(@BSAC)
011c49: ec009e           AMAR @#00h,XAR1
011c4c: f49afffe_98      AND #65534,mmap(@SP)
011c51: 5096             PSH AR1
011c53: 4eff             AADD #-1,SP
011c55: 4656             BCLR ST3_SATA
011c57: 76001948_4717    MOV #25,T0 || BSET ST3_SMUL
011c5d: 6c011038         CALL _IRQ_clear
011c61: 6c01108b         CALL _IRQ_clearAll
011c65: 6c010000         CALL _crash_void
011c69: 4e01             AADD #1,SP
011c6b: bb9a_98          POP mmap(@SP)
011c6e: bb6c_98          POP mmap(@BSAC)
011c71: bb6a_98          POP mmap(@BSA67)
011c74: bb68_98          POP mmap(@BSA45)
011c77: bb66_98          POP mmap(@BSA23)
011c7a: bb64_98          POP mmap(@BSA01)
011c7d: bb70_98          POP mmap(@TRN1)
011c80: bb1e_98          POP mmap(@TRN0)
011c83: 5074             POPBOTH XCDP
011c85: bb88_98          POP mmap(@RPTC)
011c88: bb76_98          POP mmap(@CSR)
011c8b: bb84_98          POP mmap(@REA1H)
011c8e: bb86_98          POP mmap(@REA1L)
011c91: bb80_98          POP mmap(@RSA1H)
011c94: bb82_98          POP mmap(@RSA1L)
011c97: bb72_98          POP mmap(@BRC1)
011c9a: bb74_98          POP mmap(@BRS1)
011c9d: bb7c_98          POP mmap(@REA0H)
011ca0: bb7e_98          POP mmap(@REA0L)
011ca3: bb78_98          POP mmap(@RSA0H)
011ca6: bb7a_98          POP mmap(@RSA0L)
011ca9: bb34_98          POP mmap(@BRC0)
011cac: bb60_98          POP mmap(@BK47)
011caf: bb32_98          POP mmap(@BK03)
011cb2: bb62_98          POP mmap(@BKC)
011cb5: 50c4             POPBOTH XAR4
011cb7: 50b4             POPBOTH XAR3
011cb9: 50a4             POPBOTH XAR2
011cbb: 5094             POPBOTH XAR1
011cbd: 5084             POPBOTH XAR0
011cbf: 5052             POP T1
011cc1: 5042             POP T0
011cc3: bb54_98          POP mmap(@AC3G)
011cc6: 5033             POP dbl(AC3)
011cc8: bb4c_98          POP mmap(@AC2G)
011ccb: 5023             POP dbl(AC2)
011ccd: bb1a_98          POP mmap(@AC1G)
011cd0: 5013             POP dbl(AC1)
011cd2: bb14_98          POP mmap(@AC0G)
011cd5: 5003             POP dbl(AC0)
011cd7: bb08_98          POP mmap(@ST3_55)
011cda: 4805             RETI
011cdc:               _GPT_open:
011cdc: 4ef7             AADD #-9,SP
011cde: eb0895           MOV XAR1,dbl(@#04h)
011ce1: eb0485           MOV XAR0,dbl(@#02h)
011ce4: c400             MOV T0,@#00h
011ce6: ed08bf           MOV dbl(@#04h),XAR3
011ce9: e66100           MOV #0,*AR3
011cec: 3c00             MOV #0,AC0
011cee: eb0c08           MOV AC0,dbl(@#06h)
011cf1: ed04bf           MOV dbl(@#02h),XAR3
011cf4: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011cf8: 121c04           CMPU AC1 != AC0, TC1
011cfb: 6664             BCC $C$L1,TC1
011cfd: ed08bf           MOV dbl(@#04h),XAR3
011d00: e661fb           MOV #-5,*AR3
011d03: ed0c8f           MOV dbl(@#06h),XAR0
011d06: 060092           B $C$L10
011d09:               $C$L1:
011d09: a900             MOV @#00h,AR1
011d0b: 63a9             BCC $C$L2,AR1 < #0
011d0d: 3c3a             MOV #3,AR2
011d0f: 1294a0           CMP AR1 < AR2, TC1
011d12: 6664             BCC $C$L3,TC1
011d14:               $C$L2:
011d14: ed08bf           MOV dbl(@#04h),XAR3
011d17: e661fa           MOV #-6,*AR3
011d1a: ed0c8f           MOV dbl(@#06h),XAR0
011d1d: 06007b           B $C$L10
011d20:               $C$L3:
011d20: eb0cb5           MOV XAR3,dbl(@#06h)
011d23: fb101c00         MOV #7168,@#08h
011d27: 060057           B $C$L8
011d2a:               $C$L4:
011d2a: ed0cbf           MOV dbl(@#06h),XAR3
011d2d: e66100           MOV #0,*AR3
011d30: ed0cbf           MOV dbl(@#06h),XAR3
011d33: fb751810         MOV #6160,*(AR3-T1)
011d37: ab10             MOV @#08h,AR3
011d39: a975_99          MOV port(*(AR3-T1)),AR1
011d3c: ec1492           BCLR @#0ah,AR1
011d3f: c975_9a          MOV AR1,port(*(AR3-T1))
011d42: 060053           B $C$L9
011d45:               $C$L5:
011d45: ed0cbf           MOV dbl(@#06h),XAR3
011d48: e66101           MOV #1,*AR3
011d4b: ed0cbf           MOV dbl(@#06h),XAR3
011d4e: fb751850         MOV #6224,*(AR3-T1)
011d52: ab10             MOV @#08h,AR3
011d54: a975_99          MOV port(*(AR3-T1)),AR1
011d57: ec1892           BCLR @#0ch,AR1
011d5a: c975_9a          MOV AR1,port(*(AR3-T1))
011d5d: 4a39             B $C$L9
011d5f:               $C$L6:
011d5f: ed0cbf           MOV dbl(@#06h),XAR3
011d62: e66102           MOV #2,*AR3
011d65: ed0cbf           MOV dbl(@#06h),XAR3
011d68: fb751890         MOV #6288,*(AR3-T1)
011d6c: ab10             MOV @#08h,AR3
011d6e: a975_99          MOV port(*(AR3-T1)),AR1
011d71: ec1a92           BCLR @#0dh,AR1
011d74: c975_9a          MOV AR1,port(*(AR3-T1))
011d77: 4a1f             B $C$L9
011d79:               $C$L7:
011d79: ed08bf           MOV dbl(@#04h),XAR3
011d7c: e661fa           MOV #-6,*AR3
011d7f: 4a17             B $C$L9
011d81:               $C$L8:
011d81: a900             MOV @#00h,AR1
011d83: 0409a4           BCC $C$L4,AR1 == #0
011d86: 3c1a             MOV #1,AR2
011d88: 1290a0           CMP AR1 == AR2, TC1
011d8b: 0464b7           BCC $C$L5,TC1
011d8e: 3c2a             MOV #2,AR2
011d90: 1290a0           CMP AR1 == AR2, TC1
011d93: 0464c9           BCC $C$L6,TC1
011d96: 4a61             B $C$L7
011d98:               $C$L9:
011d98: ed0c8f           MOV dbl(@#06h),XAR0
011d9b:               $C$L10:
011d9b: 4e09             AADD #9,SP
011d9d: 4804             RET
011d9f:               _GPT_reset:
011d9f: 4efb             AADD #-5,SP
011da1: eb0085           MOV XAR0,dbl(@#00h)
011da4: ed00bf           MOV dbl(@#00h),XAR3
011da7: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011dab: 121c04           CMPU AC1 != AC0, TC1
011dae: 62e4             BCC $C$L11,TC1
011db0: 3e54             MOV #-5,T0
011db2: 060060           B $C$L18
011db5:               $C$L11:
011db5: a975             MOV *(AR3-T1),AR1
011db7: c904             MOV AR1,@#02h
011db9: 229b             MOV AR1,AR3
011dbb: e66100_9a        MOV #0,port(*AR3)
011dbf: ab04             MOV @#02h,AR3
011dc1: e67900_9a        MOV #0,port(*+AR3)
011dc5: ab04             MOV @#02h,AR3
011dc7: e67b00_9a        MOV #0,port(*-AR3)
011dcb: ab04             MOV @#02h,AR3
011dcd: e67500_9a        MOV #0,port(*(AR3-T1))
011dd1: ab04             MOV @#02h,AR3
011dd3: e67700_9a        MOV #0,port(*AR3(T1))
011dd7: fb061c14         MOV #7188,@#03h
011ddb: 4a1c             B $C$L16
011ddd:               $C$L12:
011ddd: ab06             MOV @#03h,AR3
011ddf: e66101_9a        MOV #1,port(*AR3)
011de3: 4a2e             B $C$L17
011de5:               $C$L13:
011de5: ab06             MOV @#03h,AR3
011de7: e66102_9a        MOV #2,port(*AR3)
011deb: 4a26             B $C$L17
011ded:               $C$L14:
011ded: ab06             MOV @#03h,AR3
011def: e66104_9a        MOV #4,port(*AR3)
011df3: 4a1e             B $C$L17
011df5:               $C$L15:
011df5: 3e64             MOV #-6,T0
011df7: 4a1c             B $C$L18
011df9:               $C$L16:
011df9: ed00bf           MOV dbl(@#00h),XAR3
011dfc: a961             MOV *AR3,AR1
011dfe: 0409dc           BCC $C$L12,AR1 == #0
011e01: 3c1a             MOV #1,AR2
011e03: 1290a0           CMP AR1 == AR2, TC1
011e06: 0464dc           BCC $C$L13,TC1
011e09: 3c2a             MOV #2,AR2
011e0b: 1290a0           CMP AR1 == AR2, TC1
011e0e: 0464dc           BCC $C$L14,TC1
011e11: 4a62             B $C$L15
011e13:               $C$L17:
011e13: 3c04             MOV #0,T0
011e15:               $C$L18:
011e15: 4e05             AADD #5,SP
011e17: 4804             RET
011e19:               _GPT_close:
011e19: 4efd             AADD #-3,SP
011e1b: eb0085           MOV XAR0,dbl(@#00h)
011e1e: ed00bf           MOV dbl(@#00h),XAR3
011e21: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011e25: 121c04           CMPU AC1 != AC0, TC1
011e28: 62e4             BCC $C$L19,TC1
011e2a: 3e54             MOV #-5,T0
011e2c: 06005b           B $C$L25
011e2f:               $C$L19:
011e2f: fb041c00         MOV #7168,@#02h
011e33: 4a30             B $C$L23
011e35:               $C$L20:
011e35: ab04             MOV @#02h,AR3
011e37: a975_99          MOV port(*(AR3-T1)),AR1
011e3a: ec1492           BCLR @#0ah,AR1
011e3d: ec1490           BSET @#0ah,AR1
011e40: c975_9a          MOV AR1,port(*(AR3-T1))
011e43: 4a38             B $C$L24
011e45:               $C$L21:
011e45: ab04             MOV @#02h,AR3
011e47: a975_99          MOV port(*(AR3-T1)),AR1
011e4a: ec1892           BCLR @#0ch,AR1
011e4d: ec1890           BSET @#0ch,AR1
011e50: c975_9a          MOV AR1,port(*(AR3-T1))
011e53: 4a28             B $C$L24
011e55:               $C$L22:
011e55: ab04             MOV @#02h,AR3
011e57: a975_99          MOV port(*(AR3-T1)),AR1
011e5a: ec1a92           BCLR @#0dh,AR1
011e5d: ec1a90           BSET @#0dh,AR1
011e60: c975_9a          MOV AR1,port(*(AR3-T1))
011e63: 4a18             B $C$L24
011e65:               $C$L23:
011e65: ed00bf           MOV dbl(@#00h),XAR3
011e68: a961             MOV *AR3,AR1
011e6a: 0409c8           BCC $C$L20,AR1 == #0
011e6d: 3c1a             MOV #1,AR2
011e6f: 1290a0           CMP AR1 == AR2, TC1
011e72: 0464d0           BCC $C$L21,TC1
011e75: 3c2a             MOV #2,AR2
011e77: 1290a0           CMP AR1 == AR2, TC1
011e7a: 0464d8           BCC $C$L22,TC1
011e7d:               $C$L24:
011e7d: ed00bf           MOV dbl(@#00h),XAR3
011e80: e67500           MOV #0,*(AR3-T1)
011e83: 3c00             MOV #0,AC0
011e85: eb0008           MOV AC0,dbl(@#00h)
011e88: 3c04             MOV #0,T0
011e8a:               $C$L25:
011e8a: 4e03             AADD #3,SP
011e8c: 4804             RET
011e8e:               _GPT_start:
011e8e: 4efd             AADD #-3,SP
011e90: eb0085           MOV XAR0,dbl(@#00h)
011e93: ed00bf           MOV dbl(@#00h),XAR3
011e96: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011e9a: 121c04           CMPU AC1 != AC0, TC1
011e9d: 6264             BCC $C$L26,TC1
011e9f: 3e54             MOV #-5,T0
011ea1: 4a14             B $C$L27
011ea3:               $C$L26:
011ea3: a975             MOV *(AR3-T1),AR1
011ea5: c904             MOV AR1,@#02h
011ea7: 229b             MOV AR1,AR3
011ea9: a961_99          MOV port(*AR3),AR1
011eac: ec0092           BCLR @#00h,AR1
011eaf: ec0090           BSET @#00h,AR1
011eb2: c961_9a          MOV AR1,port(*AR3)
011eb5: 3c04             MOV #0,T0
011eb7:               $C$L27:
011eb7: 4e03             AADD #3,SP
011eb9: 4804             RET
011ebb:               _GPT_stop:
011ebb: 4efd             AADD #-3,SP
011ebd: eb0085           MOV XAR0,dbl(@#00h)
011ec0: ed00bf           MOV dbl(@#00h),XAR3
011ec3: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011ec7: 121c04           CMPU AC1 != AC0, TC1
011eca: 6264             BCC $C$L28,TC1
011ecc: 3e54             MOV #-5,T0
011ece: 4a11             B $C$L29
011ed0:               $C$L28:
011ed0: a975             MOV *(AR3-T1),AR1
011ed2: c904             MOV AR1,@#02h
011ed4: 229b             MOV AR1,AR3
011ed6: a961_99          MOV port(*AR3),AR1
011ed9: ec0092           BCLR @#00h,AR1
011edc: c961_9a          MOV AR1,port(*AR3)
011edf: 3c04             MOV #0,T0
011ee1:               $C$L29:
011ee1: 4e03             AADD #3,SP
011ee3: 4804             RET
011ee5:               _GPT_getCnt:
011ee5: 4ef9             AADD #-7,SP
011ee7: eb0495           MOV XAR1,dbl(@#02h)
011eea: eb0085           MOV XAR0,dbl(@#00h)
011eed: ed00bf           MOV dbl(@#00h),XAR3
011ef0: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011ef4: 121c04           CMPU AC1 != AC0, TC1
011ef7: 6264             BCC $C$L30,TC1
011ef9: 3e54             MOV #-5,T0
011efb: 4a1f             B $C$L31
011efd:               $C$L30:
011efd: a975             MOV *(AR3-T1),AR1
011eff: c90c             MOV AR1,@#06h
011f01: 229b             MOV AR1,AR3
011f03: a979_99          MOV port(*+AR3),AR1
011f06: c908             MOV AR1,@#04h
011f08: ab0c             MOV @#06h,AR3
011f0a: a97b_99          MOV port(*-AR3),AR1
011f0d: c90a             MOV AR1,@#05h
011f0f: ed04bf           MOV dbl(@#02h),XAR3
011f12: 5290             MOV AR1,HI(AC0)
011f14: da0800           OR @#04h,AC0,AC0
011f17: eb6108           MOV AC0,dbl(*AR3)
011f1a: 3c04             MOV #0,T0
011f1c:               $C$L31:
011f1c: 4e07             AADD #7,SP
011f1e: 4804             RET
011f20:               _GPT_config:
011f20: 4efb             AADD #-5,SP
011f22: eb0495           MOV XAR1,dbl(@#02h)
011f25: eb0085           MOV XAR0,dbl(@#00h)
011f28: ed00bf           MOV dbl(@#00h),XAR3
011f2b: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011f2f: 121c04           CMPU AC1 != AC0, TC1
011f32: 62e4             BCC $C$L32,TC1
011f34: 3e54             MOV #-5,T0
011f36: 06008a           B $C$L34
011f39:               $C$L32:
011f39: ed04bf           MOV dbl(@#02h),XAR3
011f3c: 90b0             MOV XAR3,AC0
011f3e: 121c04           CMPU AC1 != AC0, TC1
011f41: 62e4             BCC $C$L33,TC1
011f43: 3e64             MOV #-6,T0
011f45: 06007b           B $C$L34
011f48:               $C$L33:
011f48: ed00bf           MOV dbl(@#00h),XAR3
011f4b: a975             MOV *(AR3-T1),AR1
011f4d: c908             MOV AR1,@#04h
011f4f: 229b             MOV AR1,AR3
011f51: a961_99          MOV port(*AR3),AR1
011f54: ec1e92           BCLR @#0fh,AR1
011f57: c961_9a          MOV AR1,port(*AR3)
011f5a: ed04bf           MOV dbl(@#02h),XAR3
011f5d: f9730208         MOV *(AR3+T1) << #2,AC0
011f61: ab08             MOV @#04h,AR3
011f63: 183c90           AND #60,AC0,AR1
011f66: aa61_99          MOV port(*AR3),AR2
011f69: 7dffc3aa         AND #65475,AR2,AR2
011f6d: 2aa9             OR AR2,AR1
011f6f: c961_9a          MOV AR1,port(*AR3)
011f72: ed04bf           MOV dbl(@#02h),XAR3
011f75: a961             MOV *AR3,AR1
011f77: ab08             MOV @#04h,AR3
011f79: 5090             SFTL AR1,#1
011f7b: 180299           AND #2,AR1,AR1
011f7e: aa61_99          MOV port(*AR3),AR2
011f81: ec02a2           BCLR @#01h,AR2
011f84: 2aa9             OR AR2,AR1
011f86: c961_9a          MOV AR1,port(*AR3)
011f89: ed04bf           MOV dbl(@#02h),XAR3
011f8c: f9750f08         MOV *(AR3-T1) << #15,AC0
011f90: ab08             MOV @#04h,AR3
011f92: 7d800090         AND #32768,AC0,AR1
011f96: aa61_99          MOV port(*AR3),AR2
011f99: ec1ea2           BCLR @#0fh,AR2
011f9c: 2aa9             OR AR2,AR1
011f9e: c961_9a          MOV AR1,port(*AR3)
011fa1: ab08             MOV @#04h,AR3
011fa3: e67900_9a        MOV #0,port(*+AR3)
011fa7: ab08             MOV @#04h,AR3
011fa9: e67b00_9a        MOV #0,port(*-AR3)
011fad: ed04bf           MOV dbl(@#02h),XAR3
011fb0: a977             MOV *AR3(T1),AR1
011fb2: ab08             MOV @#04h,AR3
011fb4: c975_9a          MOV AR1,port(*(AR3-T1))
011fb7: ed04bf           MOV dbl(@#02h),XAR3
011fba: a979             MOV *+AR3,AR1
011fbc: ab08             MOV @#04h,AR3
011fbe: c977_9a          MOV AR1,port(*AR3(T1))
011fc1: 3c04             MOV #0,T0
011fc3:               $C$L34:
011fc3: 4e05             AADD #5,SP
011fc5: 4804             RET
011fc7:               _test:
011fc7: 6c012206         CALL _coverage_log
011fcb: 4efb             AADD #-5,SP
011fcd: eb0485           MOV XAR0,dbl(@#02h)
011fd0: c400             MOV T0,@#00h
011fd2: ed04bf           MOV dbl(@#02h),XAR3
011fd5: a961             MOV *AR3,AR1
011fd7: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
011fdd: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
011fe2: 76ff00b0         BFXTR #65280,AC0,AR3
011fe6: 249b             ADD AR1,AR3
011fe8: 28ba             AND AR3,AR2
011fea: 760044a8_27a9    MOV #68,AR2 || SUB AR2,AR1
011ff0: 129ca0           CMP AR1 != AR2, TC1
011ff3: 6d64014b         BCC $C$DW$L$_test$11$E,TC1
011ff7: 6c012206         CALL _coverage_log
011ffb: ed04bf           MOV dbl(@#02h),XAR3
011ffe: a973             MOV *(AR3+T1),AR1
012000: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
012006: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
01200b: 76ff00b0         BFXTR #65280,AC0,AR3
01200f: 249b             ADD AR1,AR3
012011: 28ba             AND AR3,AR2
012013: 760045a8_27a9    MOV #69,AR2 || SUB AR2,AR1
012019: 129ca0           CMP AR1 != AR2, TC1
01201c: 6d640122         BCC $C$DW$L$_test$11$E,TC1
012020: 6c012206         CALL _coverage_log
012024: ed04bf           MOV dbl(@#02h),XAR3
012027: a975             MOV *(AR3-T1),AR1
012029: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
01202f: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
012034: 76ff00b0         BFXTR #65280,AC0,AR3
012038: 249b             ADD AR1,AR3
01203a: 28ba             AND AR3,AR2
01203c: 760041a8_27a9    MOV #65,AR2 || SUB AR2,AR1
012042: 129ca0           CMP AR1 != AR2, TC1
012045: 6d6400f9         BCC $C$DW$L$_test$11$E,TC1
012049: 6c012206         CALL _coverage_log
01204d: ed04bf           MOV dbl(@#02h),XAR3
012050: a977             MOV *AR3(T1),AR1
012052: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
012058: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
01205d: 76ff00b0         BFXTR #65280,AC0,AR3
012061: 249b             ADD AR1,AR3
012063: 28ba             AND AR3,AR2
012065: 760044a8_27a9    MOV #68,AR2 || SUB AR2,AR1
01206b: 129ca0           CMP AR1 != AR2, TC1
01206e: 6d6400d0         BCC $C$DW$L$_test$11$E,TC1
012072: 6c012206         CALL _coverage_log
012076: ed04bf           MOV dbl(@#02h),XAR3
012079: a979             MOV *+AR3,AR1
01207b: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
012081: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
012086: 76ff00b0         BFXTR #65280,AC0,AR3
01208a: 249b             ADD AR1,AR3
01208c: 28ba             AND AR3,AR2
01208e: 760042a8_27a9    MOV #66,AR2 || SUB AR2,AR1
012094: 129ca0           CMP AR1 != AR2, TC1
012097: 6d6400a7         BCC $C$DW$L$_test$11$E,TC1
01209b: 6c012206         CALL _coverage_log
01209f: ed04bf           MOV dbl(@#02h),XAR3
0120a2: a97b             MOV *-AR3,AR1
0120a4: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
0120aa: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
0120af: 76ff00b0         BFXTR #65280,AC0,AR3
0120b3: 249b             ADD AR1,AR3
0120b5: 28ba             AND AR3,AR2
0120b7: 760045a8_27a9    MOV #69,AR2 || SUB AR2,AR1
0120bd: 129ca0           CMP AR1 != AR2, TC1
0120c0: 04647f           BCC $C$DW$L$_test$11$E,TC1
0120c3: 6c012206         CALL _coverage_log
0120c7: ed04bf           MOV dbl(@#02h),XAR3
0120ca: a97d             MOV *(AR3+AR0B),AR1
0120cc: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
0120d2: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
0120d7: 76ff00b0         BFXTR #65280,AC0,AR3
0120db: 249b             ADD AR1,AR3
0120dd: 28ba             AND AR3,AR2
0120df: 760045a8_27a9    MOV #69,AR2 || SUB AR2,AR1
0120e5: 129ca0           CMP AR1 != AR2, TC1
0120e8: 046457           BCC $C$DW$L$_test$11$E,TC1
0120eb: 6c012206         CALL _coverage_log
0120ef: ed04bf           MOV dbl(@#02h),XAR3
0120f2: a97f             MOV *(AR3-AR0B),AR1
0120f4: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
0120fa: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
0120ff: 76ff00b0         BFXTR #65280,AC0,AR3
012103: 249b             ADD AR1,AR3
012105: 28ba             AND AR3,AR2
012107: 760046a8_27a9    MOV #70,AR2 || SUB AR2,AR1
01210d: 129ca0           CMP AR1 != AR2, TC1
012110: 04642f           BCC $C$DW$L$_test$11$E,TC1
012113: 6c012206         CALL _coverage_log
012117: ed04bf           MOV dbl(@#02h),XAR3
01211a: a96d0008         MOV *AR3(#0008h),AR1
01211e: 7600ffa8_2390    MOV #255,AR2 || MOV AR1,AC0
012124: 100539_37aa      SFTS AC0,#-7,AC0 || NOT AR2,AR2
012129: 76ff00b0         BFXTR #65280,AC0,AR3
01212d: 249b             ADD AR1,AR3
01212f: 28ba             AND AR3,AR2
012131: 760021a8_27a9    MOV #33,AR2 || SUB AR2,AR1
012137: 129ca0           CMP AR1 != AR2, TC1
01213a: 6364             BCC $C$DW$L$_test$11$E,TC1
01213c: 6c012206         CALL _coverage_log
012140:               $C$L1:
012140:               $C$DW$L$_test$11$B:
012140: 4a7e             B $C$L1
012142:               $C$DW$L$_test$11$E:
012142:               $C$L2:
012142: 6c012206         CALL _coverage_log
012146: 3c04             MOV #0,T0
012148: 4e05             AADD #5,SP
01214a: 4804             RET
01214c:               _writemsg:
01214c:               .text:CIO_breakpoint:
01214c: 7600f9a8_5166    MOV #249,AR2 || PSH T2
012152: ec31be007000     AMAR *(#07000h),XAR3
012158: c561_1340a4      MOV T1,*AR3 || CMPU T0 == AR2, TC1
01215d: c473             MOV T0,*(AR3+T1)
01215f: 6d64009a         BCC #0x0121fd,TC1
012163: 160079           MOV #7,BRC0
012166: 0e003e_3d02      RPTB #0x0121a9 || MOV #0,AC2
01216b: ec0028              BTST @#00h,AC2,TC1
01216e: 04641f              BCC #0x012190,TC1
012171: 76fffea2            BFXTR #65534,AC2,AR2
012175: 90b0                MOV XAR3,AC0
012177: 7dffff1a            AND #65535,AR2,AC1
01217b: 2410                ADD AC1,AC0
01217d: 106703              SFTL AC2,#3,AC1
012180: 361a                NOT AC1,AR2
012182: 18086a              AND #8,AR2,T2
012185: 900a                MOV AC0,XAR2
012187: df0333              MOV uns(low_byte(*AR0+)),AC3
01218a: 5c78                SFTL AC3,T2,AC1
01218c: c155                MOV AC1,*(AR2-T1)
01218e: 4a19                B #0x0121a9
012190: 76fffea2            BFXTR #65534,AC2,AR2
012194: 90b0                MOV XAR3,AC0
012196: 7dffff1a            AND #65535,AR2,AC1
01219a: 2410                ADD AC1,AC0
01219c: 900a                MOV AC0,XAR2
01219e: 8d03af1cc302        MOV uns(low_byte(*AR0+)),AR4 || AADD #2,AR2
0121a4: da41cc              OR *AR2,AR4,AR4
0121a7: cc41                MOV AR4,*AR2
0121a9: 4012                ADD #1,AC2
0121ab: 04054f           BCC #0x0121fd,T1 == #0
0121ae: 7c0001a5         SUB #1,T1,AR2
0121b2: 52ae             MOV AR2,BRC0
0121b4: 0e0042_3d02      RPTB #0x0121fb || MOV #0,AC2
0121b9: ec0028              BTST @#00h,AC2,TC1
0121bc: 046421              BCC #0x0121e0,TC1
0121bf: 7b0008a2            ADD #8,AC2,AR2
0121c3: 50a1                SFTL AR2,#-1
0121c5: 90b0                MOV XAR3,AC0
0121c7: 7dffff1a            AND #65535,AR2,AC1
0121cb: 2410                ADD AC1,AC0
0121cd: 106703              SFTL AC2,#3,AC1
0121d0: 361a                NOT AC1,AR2
0121d2: 18085a              AND #8,AR2,T1
0121d5: 900a                MOV AC0,XAR2
0121d7: df2333              MOV uns(low_byte(*AR1+)),AC3
0121da: 5c74                SFTL AC3,T1,AC1
0121dc: c155                MOV AC1,*(AR2-T1)
0121de: 4a1b                B #0x0121fb
0121e0: 7b0008a2            ADD #8,AC2,AR2
0121e4: 50a1                SFTL AR2,#-1
0121e6: 90b0                MOV XAR3,AC0
0121e8: 7dffff1a            AND #65535,AR2,AC1
0121ec: 2410                ADD AC1,AC0
0121ee: 900a                MOV AC0,XAR2
0121f0: 8d23af1cc302        MOV uns(low_byte(*AR1+)),AR4 || AADD #2,AR2
0121f6: da41cc              OR *AR2,AR4,AR4
0121f9: cc41                MOV AR4,*AR2
0121fb: 4012                ADD #1,AC2
0121fd: 20               NOP
0121fe: 20               NOP
0121ff: 20               NOP
012200: 20               NOP
012201:               C$$IO$$:
012201: 20               NOP
012202: 5062             POP T2
012204: 4804             RET
012206:               _coverage_log:
012206: 5046             PSH T0
012208: 5056             PSH T1
01220a: 5066             PSH T2
01220c: 5076             PSH T3
01220e: 5085             PSHBOTH XAR0
012210: 5095             PSHBOTH XAR1
012212: 50a5             PSHBOTH XAR2
012214: 50b5             PSHBOTH XAR3
012216: 50c5             PSHBOTH XAR4
012218: 50d5             PSHBOTH XAR5
01221a: 50e5             PSHBOTH XAR6
01221c: 50f5             PSHBOTH XAR7
01221e: 5005             PSHBOTH AC0
012220: 5015             PSHBOTH AC1
012222: 5025             PSHBOTH AC2
012224: 5035             PSHBOTH AC3
012226: 4efd             AADD #-3,SP
012228: eb0004           MOV RETA,dbl(@#00h)
01222b: ed0008           MOV dbl(@#00h),AC0
01222e: 4240             SUB #4,AC0
012230: 180140           AND #1,AC0,T0
012233: 5001             SFTL AC0,#-1
012235: 9008             MOV AC0,XAR0
012237: 76002098         MOV #32,AR1
01223b: 040412           BCC even,T0 == #0
01223e:               odd:
01223e: e50195           MOV AR1,low_byte(*AR0)
012241: 4018             ADD #1,AR0
012243: e50194           MOV AR1,high_byte(*AR0)
012246: e50195           MOV AR1,low_byte(*AR0)
012249: 4018             ADD #1,AR0
01224b: e50194           MOV AR1,high_byte(*AR0)
01224e: 4a10             B map_store
012250:               even:
012250: e50195           MOV AR1,low_byte(*AR0)
012253: e50194           MOV AR1,high_byte(*AR0)
012256: 4018             ADD #1,AR0
012258: e50195           MOV AR1,low_byte(*AR0)
01225b: e50194           MOV AR1,high_byte(*AR0)
01225e: 4018             ADD #1,AR0
012260:               map_store:
012260: ed0008           MOV dbl(@#00h),AC0
012263: 4240             SUB #4,AC0
012265:               finish:
012265: ed31af01351c     MOV dbl(*(#01351ch)),XAR2
01226b: eb4108           MOV AC0,dbl(*AR2)
01226e: 1402a4           AADD #2,AR2
012271: eb31a501351c     MOV XAR2,dbl(*(#01351ch))
012277: e63101013523     MOV #1,*(#013523h)
01227d: 4e03             AADD #3,SP
01227f: 5034             POPBOTH AC3
012281: 5024             POPBOTH AC2
012283: 5014             POPBOTH AC1
012285: 5004             POPBOTH AC0
012287: 50f4             POPBOTH XAR7
012289: 50e4             POPBOTH XAR6
01228b: 50d4             POPBOTH XAR5
01228d: 50c4             POPBOTH XAR4
01228f: 50b4             POPBOTH XAR3
012291: 50a4             POPBOTH XAR2
012293: 5094             POPBOTH XAR1
012295: 5084             POPBOTH XAR0
012297: 5072             POP T3
012299: 5062             POP T2
01229b: 5052             POP T1
01229d: 5042             POP T0
01229f: 4804             RET
0122a1:               _IRQ_plug:
0122a1: 50b5             PSHBOTH XAR3
0122a3: 50a5             PSHBOTH XAR2
0122a5: 4ef7             AADD #-9,SP
0122a7: eb0408           MOV AC0,dbl(@#02h)
0122aa: c40e             MOV T0,@#07h
0122ac: 3c00             MOV #0,AC0
0122ae: 900a             MOV AC0,XAR2
0122b0: 900b             MOV AC0,XAR3
0122b2: 6c011472         CALL _IRQ_globalDisable
0122b6: c410             MOV T0,@#08h
0122b8: 20               NOP
0122b9: 20               NOP
0122ba: 20               NOP
0122bb: 20               NOP
0122bc: 20               NOP
0122bd: ec31ae000049     AMAR *(#00049h),XAR2
0122c3: 20               NOP
0122c4: 20               NOP
0122c5: 20               NOP
0122c6: 20               NOP
0122c7: 20               NOP
0122c8: a10e             MOV @#07h,AC1
0122ca: 181831           AND #24,AC1,AC3
0122cd: 7c001033         SUB #16,AC3,AC3
0122d1: 9603             XCC AC3 == #0
0122d3: ec31ae00004a     AMAR *(#0004ah),XAR2
0122d9: 105503           SFTS AC1,#3,AC1
0122dc: a041             MOV *AR2,AC0
0122de: 100504           SFTS AC0,#4,AC0
0122e1: 100504           SFTS AC0,#4,AC0
0122e4: 2a10             OR AC1,AC0
0122e6: 10053f           SFTS AC0,#-1,AC0
0122e9: eb0008           MOV AC0,dbl(@#00h)
0122ec: ed0408           MOV dbl(@#02h),AC0
0122ef: ed00bf           MOV dbl(@#00h),XAR3
0122f2: a90e             MOV @#07h,AR1
0122f4: 180fa9           AND #15,AR1,AR2
0122f7: eb6108           MOV AC0,dbl(*AR3)
0122fa: 765e8038         MOV #24192,AC3
0122fe: 402b             ADD #2,AR3
012300: c361             MOV AC3,*AR3
012302: 401b             ADD #1,AR3
012304: c361             MOV AC3,*AR3
012306: 22a4             MOV AR2,T0
012308: 181099           AND #16,AR1,AR1
01230b: 3c10             MOV #1,AC0
01230d: 5c00             SFTL AC0,T0,AC0
01230f: 2203             MOV AC0,AC3
012311: 6319             BCC LIFR1,AR1 != #0
012313: 3c1a             MOV #1,AR2
012315: c341             MOV AC3,*AR2
012317: 4a06             B RESTORE_INTM
012319:               LIFR1:
012319: 760046a8         MOV #70,AR2
01231d: c341             MOV AC3,*AR2
01231f:               RESTORE_INTM:
01231f: a410             MOV @#08h,T0
012321: 6c0114a4         CALL _IRQ_globalRestore
012325:               EPILOGUE:
012325: 4e09             AADD #9,SP
012327: 50a4             POPBOTH XAR2
012329: 50b4             POPBOTH XAR3
01232b: 4804             RET
01232d:               __remul:
01232d: 108700           SFTL AC0,#0,AC2
012330: 120814           CMPU AC0 >= AC1, TC1
012333: 102820_5166      EXP AC2,T2 || PSH T2
012338: 109700           SFTL AC1,#0,AC2
01233b: 102810_21        EXP AC2,T1 || NOP
01233f: 2665             SUB T2,T1
012341: 047457           BCC #0x01239b,!TC1
012344: 6290             BCC #0x01234b,AC0 != #0
012346: 3c00             MOV #0,AC0
012348: 060050           B #0x01239b
01234b: 3c00_9e81        XCCPART AC1 == #0 || MOV #0,AC0
01234f: 040149           BCC #0x01239b,AC1 == #0
012352: 3e19             MOV #-1,AR1
012354: 126c90_21        CMP T2 != AR1, TC1 || NOP
012358: 5c54             SFTL AC1,T1,AC1
01235a: 046415           BCC #0x012372,TC1
01235d: 120414           CMPU AC0 < AC1, TC1
012360: 2610_9ef4        XCCPART !TC1 || SUB AC1,AC0
012364: 5011_9ef4        XCCPART !TC1 || SFTL AC1,#-1
012368: 5011_9ee4        XCCPART TC1 || SFTL AC1,#-1
01236c: 2610_9ee4        XCCPART TC1 || SUB AC1,AC0
012370: 4a02             B #0x012374
012372: 4015             ADD #1,T1
012374: 043520           BCC #0x012397,T1 <= #0
012377: 7c000195         SUB #1,T1,AR1
01237b: 529e             MOV AR1,BRC0
01237d: 4a95             RPTBLOCAL reset_isr-11
01237f: 120414_3d09         CMPU AC0 < AC1, TC1 || MOV #0,AR1
012384: 3c19_9ef4           XCCPART !TC1 || MOV #1,AR1
012388: 120414              CMPU AC0 < AC1, TC1
01238b: 2292                MOV AR1,AC2
01238d: 2610_9ef4           XCCPART !TC1 || SUB AC1,AC0
012391: 108101              OR AC0 << #1, AC2
012394: 1a0002              OR #0,AC2,AC0
012397: 3455             NEG T1,T1
012399: 5c04             SFTL AC0,T1,AC0
01239b: 5062             POP T2
01239d: 4804             RET
01239f:               reset_isr:
01239f: 46b3             BSET ST1_INTM
0123a1: fb920007_98      MOV #7,mmap(@IVPD)
0123a6: fb940007_98      MOV #7,mmap(@IVPH)
0123ab: 4676             BCLR ST3_CBERR
0123ad: fb02ffff_98      MOV #-1,mmap(@IFR0)
0123b2: fb8cffff_98      MOV #-1,mmap(@IFR1)
0123b7: e651201c04       MOV #32,port(#01c04h)
0123bc: 5e80             NOP_16
0123be: fb5100ff1c05     MOV #255,port(#01c05h)
0123c4: 5e80             NOP_16
0123c6: 6a01266f         B _c_int00
0123ca:               nmi_isr:
0123ca: 4a7e             B nmi_isr
0123cc:               int0_isr:
0123cc: 4a7e             B int0_isr
0123ce:               int1_isr:
0123ce: 4a7e             B int1_isr
0123d0:               tim_isr:
0123d0: 4a7e             B tim_isr
0123d2:               i2s0_mmc0_tx_isr:
0123d2: 4a7e             B i2s0_mmc0_tx_isr
0123d4:               uart_isr:
0123d4: 4a7e             B uart_isr
0123d6:               i2s0_mmc0_rx_isr:
0123d6: 4a7e             B i2s0_mmc0_rx_isr
0123d8:               dma_isr:
0123d8: 4a7e             B dma_isr
0123da:               i2s1_mmc1_tx_isr:
0123da: 4a7e             B i2s1_mmc1_tx_isr
0123dc:               coprocfft_isr:
0123dc: 4a7e             B coprocfft_isr
0123de:               i2s1_mmc1_rx_isr:
0123de: 4a7e             B i2s1_mmc1_rx_isr
0123e0:               lcd_isr:
0123e0: 4a7e             B lcd_isr
0123e2:               saradc_isr:
0123e2: 4a7e             B saradc_isr
0123e4:               i2s2_tx_isr:
0123e4: 4a7e             B i2s2_tx_isr
0123e6:               i2s2_rx_isr:
0123e6: 4a7e             B i2s2_rx_isr
0123e8:               i2s3_tx_isr:
0123e8: 4a7e             B i2s3_tx_isr
0123ea:               i2s3_rx_isr:
0123ea: 4a7e             B i2s3_rx_isr
0123ec:               rtc_isr:
0123ec: 4a7e             B rtc_isr
0123ee:               spi_isr:
0123ee: 4a7e             B spi_isr
0123f0:               usb_isr:
0123f0: 4a7e             B usb_isr
0123f2:               gpio_isr:
0123f2: 4a7e             B gpio_isr
0123f4:               emif_error_isr:
0123f4: 4a7e             B emif_error_isr
0123f6:               i2c_isr:
0123f6: 4a7e             B i2c_isr
0123f8:               berr_isr:
0123f8: 4676             BCLR ST3_CBERR
0123fa: 4a7c             B berr_isr
0123fc:               dlog_isr:
0123fc: 4a7e             B dlog_isr
0123fe:               rtos_isr:
0123fe: 4a7e             B rtos_isr
012400:               rtdxrcv_isr:
012400: 4a7e             B rtdxrcv_isr
012402:               rtdxxmt_isr:
012402: 4a7e             B rtdxxmt_isr
012404:               emuint_isr:
012404: 4a7e             B emuint_isr
012406:               sint30_isr:
012406: 4a7e             B sint30_isr
012408:               sint31_isr:
012408: 4a7e             B sint31_isr
01240a:               no_isr:
01240a: 4a7e             B no_isr
01240c:               _readmsg:
01240c: ec31be007000     AMAR *(#07000h),XAR3
012412: 3c02_170079      MOV #0,AC2 || MOV #7,BRC0
012417: ac61_4ba0        MOV *AR3,AR4 || RPTBLOCAL #0x01243b
01241b: 76fffea2            BFXTR #65534,AC2,AR2
01241f: 90b0                MOV XAR3,AC0
012421: 7dffff1a            AND #65535,AR2,AC1
012425: 2410                ADD AC1,AC0
012427: 900a                MOV AC0,XAR2
012429: 106703              SFTL AC2,#3,AC1
01242c: df5305_371a         MOV uns(*(AR2+T1)),AC0 || NOT AC1,AR2
012431: 1808aa              AND #8,AR2,AR2
012434: 34a5                NEG AR2,T1
012436: 5c05                SFTS AC0,T1,AC0
012438: 18ff00              AND #255,AC0,AC0
01243b: c003_4112           MOV AC0,*AR0+ || ADD #1,AC2
01243f: 9090             MOV XAR1,AC0
012441: 040033           BCC #0x012477,AC0 == #0
012444: 040c30           BCC #0x012477,AR4 == #0
012447: 7c0001ac         SUB #1,AR4,AR2
01244b: 52ae             MOV AR2,BRC0
01244d: 4aa2_3d02        RPTBLOCAL #0x012473 || MOV #0,AC2
012451: 7b0008a2            ADD #8,AC2,AR2
012455: 50a1                SFTL AR2,#-1
012457: 90b0                MOV XAR3,AC0
012459: 7dffff1a            AND #65535,AR2,AC1
01245d: 2410                ADD AC1,AC0
01245f: 900a                MOV AC0,XAR2
012461: 106703              SFTL AC2,#3,AC1
012464: df5305_371a         MOV uns(*(AR2+T1)),AC0 || NOT AC1,AR2
012469: 1808aa              AND #8,AR2,AR2
01246c: 34a5                NEG AR2,T1
01246e: 5c05                SFTS AC0,T1,AC0
012470: 18ff00              AND #255,AC0,AC0
012473: c023_4112           MOV AC0,*AR1+ || ADD #1,AC2
012477: 4804             RET
012479:               _srand:
012479: 5066             PSH T2
01247b: ed310801369a     MOV dbl(*(#01369ah)),AC0
012481: 2246             MOV T0,T2
012483: 9200             CALL AC0
012485: 7dffff06         AND #65535,T2,AC0
012489: eb31080136a2     MOV AC0,dbl(*(#0136a2h))
01248f: ed310801369c     MOV dbl(*(#01369ch)),AC0
012495: 9200             CALL AC0
012497: 5062             POP T2
012499: 4804             RET
01249b:               _rand:
01249b: ed310801369a     MOV dbl(*(#01369ah)),AC0
0124a1: 4efd             AADD #-3,SP
0124a3: 9200             CALL AC0
0124a5: 7a41c61a         MOV #16838 << #16,AC1
0124a9: ed31080136a2     MOV dbl(*(#0136a2h)),AC0
0124af: 7e4e6d11         OR #20077,AC1,AC1
0124b3: 6c0126e4         CALL I$$LMPY
0124b7: 7b303900         ADD #12345,AC0,AC0
0124bb: eb0008           MOV AC0,dbl(@#00h)
0124be: ed0008           MOV dbl(@#00h),AC0
0124c1: eb31080136a2     MOV AC0,dbl(*(#0136a2h))
0124c7: ed310801369c     MOV dbl(*(#01369ch)),AC0
0124cd: 9200             CALL AC0
0124cf: a900             MOV @#00h,AR1
0124d1: 7d7fff49         AND #32767,AR1,T0
0124d5: 4e03             AADD #3,SP
0124d7: 4804             RET
0124d9:               _auto_init:
0124d9: 4eff             AADD #-1,SP
0124db: ec318e009392     AMAR *(#09392h),XAR0
0124e1: 368f             NOT AR0,AR7
0124e3: 040f29           BCC #0x01250f,AR7 == #0
0124e6: aa03             MOV *AR0+,AR2
0124e8: 040a24           BCC #0x01250f,AR2 == #0
0124eb: f9038808_431a    MOV uns(*AR0+) << #8,AC0 || SUB #1,AR2
0124f1: df0315_53ac      MOV uns(*AR0+),AC1 || MOV AR2,CSR
0124f6: 101138           OR AC1 << #-8, AC0
0124f9: 18ff11           AND #255,AC1,AC1
0124fc: 900e             MOV AC0,XAR6
0124fe: 6391             BCC #0x012507,AC1 != #0
012500: 4800             RPT CSR
012502: 800714              MOV *AR0+,*AR6+
012505: 4a5f             B #0x0124e6
012507: 4800             RPT CSR
012509: 800714_9a           MOV *AR0+,port(*AR6+)
01250d: 4a57             B #0x0124e6
01250f: ec31ee7fffff     AMAR *(#07fffffh),XAR6
012515: 36ef             NOT AR6,AR7
012517: 648f             BCC #0x012522,AR7 == #0
012519: edc308           MOV dbl(*AR6+),AC0
01251c: 6200             BCC #0x012522,AC0 == #0
01251e: 9200             CALL AC0
012520: 4a77             B #0x012519
012522: 4e01             AADD #1,SP
012524: 4804             RET
012526:               __args_main:
012526: 7affff0a         MOV #-1 << #16,AC0
01252a: 7affff1a         MOV #-1 << #16,AC1
01252e: 7effff00         OR #65535,AC0,AC0
012532: 7effff11         OR #65535,AC1,AC1
012536: 121c04           CMPU AC1 != AC0, TC1
012539: 4eff             AADD #-1,SP
01253b: 20               NOP
01253c: 20               NOP
01253d: 3c04_9ef4        XCCPART !TC1 || MOV #0,T0
012541: 9674             XCC !TC1
012543: ec318e000000     AMAR *(#00000h),XAR0
012549: 04741d           BCC #0x012569,!TC1
01254c: 7affff0a         MOV #-1 << #16,AC0
012550: 7effff00         OR #65535,AC0,AC0
012554: 900b             MOV AC0,XAR3
012556: 7affff0a         MOV #-1 << #16,AC0
01255a: a461             MOV *AR3,T0
01255c: 7effff00         OR #65535,AC0,AC0
012560: 900b             MOV AC0,XAR3
012562: 1402b4           AADD #2,AR3
012565: 90b0             MOV XAR3,AC0
012567: 9008             MOV AC0,XAR0
012569: 6c010a7d         CALL _main
01256d: 4e01             AADD #1,SP
01256f: 4804             RET
012571:               __setjmp:
012571:               _setjmp:
012571: eb0304           MOV RETA,dbl(*AR0+)
012574: eb03d5           MOV XAR5,dbl(*AR0+)
012577: eb03e5           MOV XAR6,dbl(*AR0+)
01257a: eb03f5           MOV XAR7,dbl(*AR0+)
01257d: eb0345           MOV XSP,dbl(*AR0+)
012580: eb0355           MOV XSSP,dbl(*AR0+)
012583: 5014             POPBOTH AC1
012585: 5015             PSHBOTH AC1
012587: eb0318           MOV AC1,dbl(*AR0+)
01258a: c603             MOV T2,*AR0+
01258c: c703             MOV T3,*AR0+
01258e: 3c04             MOV #0,T0
012590: 4804             RET
012592:               _longjmp:
012592: ed0306           MOV dbl(*AR0+),RETA
012595: ed03df           MOV dbl(*AR0+),XAR5
012598: ed03ef           MOV dbl(*AR0+),XAR6
01259b: ed03ff           MOV dbl(*AR0+),XAR7
01259e: ed034f           MOV dbl(*AR0+),XSP
0125a1: ed035f           MOV dbl(*AR0+),XSSP
0125a4: ed0318           MOV dbl(*AR0+),AC1
0125a7: 20               NOP
0125a8: 5024             POPBOTH AC2
0125aa: 5015             PSHBOTH AC1
0125ac: a603             MOV *AR0+,T2
0125ae: a703             MOV *AR0+,T3
0125b0: 3c14_9e84        XCCPART T0 == #0 || MOV #1,T0
0125b4: 4804             RET
0125b6:               _memcpy:
0125b6: df4005_98        MOV uns(mmap(@T0)),AC0
0125ba: ec01ae           AMAR *AR0,XAR2
0125bd: 6f051824         BCCU #0x0125e5,AC0 < #24
0125c1: 228b             MOV AR0,AR3
0125c3: 2a9b             OR AR1,AR3
0125c5: 1801bb           AND #1,AR3,AR3
0125c8: 041b1a           BCC #0x0125e5,AR3 != #0
0125cb: 5001_190150      SFTL AC0,#-1 || AND #1,AC0,T1
0125d0: 4210             SUB #1,AC0
0125d2: 64a0             BCC #0x0125dd,AC0 < #0
0125d4: dc1003_98        MOV mmap(@AC0L),CSR
0125d8: 4800             RPT CSR
0125da: 802510              MOV dbl(*AR1+),dbl(*AR2+)
0125dd: 020500           RETCC T1 == #0
0125e0: 802104           MOV *AR1,*AR2
0125e3: 4804             RET
0125e5: 020000_4310      RETCC AC0 == #0 || SUB #1,AC0
0125ea: dc1003_98        MOV mmap(@AC0L),CSR
0125ee: 4800             RPT CSR
0125f0: 802514              MOV *AR1+,*AR2+
0125f3: 4804             RET
0125f5:               _exit:
0125f5: 5066             PSH T2
0125f7: ed310801369a     MOV dbl(*(#01369ah)),AC0
0125fd: 2246             MOV T0,T2
0125ff: 9200             CALL AC0
012601: ed31080136a0     MOV dbl(*(#0136a0h)),AC0
012607: 6500             BCC #0x012613,AC0 == #0
012609: ed31080136a0     MOV dbl(*(#0136a0h)),AC0
01260f: 2264             MOV T2,T0
012611: 9200             CALL AC0
012613: ed310801369e     MOV dbl(*(#01369eh)),AC0
012619: 6400             BCC #0x012623,AC0 == #0
01261b: ed310801369e     MOV dbl(*(#01369eh)),AC0
012621: 9200             CALL AC0
012623: ed310801369c     MOV dbl(*(#01369ch)),AC0
012629: 9200             CALL AC0
01262b: 6c01271a         CALL _abort
01262f: 5062             POP T2
012631: 4804             RET
012633:               I$$DIV:
012633:               __divi:
012633: 4eff             AADD #-1,SP
012635: 225c_3351        MOV T1,AR4 || ABS T1,AC1
012639: c100_3340        MOV AC1,@#00h || ABS T0,AC0
01263d: 4682_4d0f        BCLR ST1_SXMD || RPT #15
012641: de0003              SUBC @#00h,AC0,AC0
012644: 4683             BSET ST1_SXMD
012646: 2c4c             XOR T0,AR4
012648: 2204             MOV AC0,T0
01264a: 3444_9eac        XCCPART AR4 < #0 || NEG T0,T0
01264e: 4e01             AADD #1,SP
012650: 4804             RET
012652:               I$$MOD:
012652:               __remi:
012652: 4eff_3351        AADD #-1,SP || ABS T1,AC1
012656: c100_3340        MOV AC1,@#00h || ABS T0,AC0
01265a: 4682_4d0f        BCLR ST1_SXMD || RPT #15
01265e: de0003              SUBC @#00h,AC0,AC0
012661: 4683             BSET ST1_SXMD
012663: 2245             MOV T0,T1
012665: 4404             MOV HI(AC0),T0
012667: 6155             BCC #0x01266b,T1 >= #0
012669: 3444             NEG T0,T0
01266b: 4e01             AADD #1,SP
01266d: 4804             RET
01266f:               _c_int00:
01266f: ec314e000380     AMAR *(#00380h),XSP
012675: ec315e000280     AMAR *(#00280h),XSSP
01267b: f406f91f_98      AND #63775,mmap(@ST1_55)
012680: f5064100_98      OR #16640,mmap(@ST1_55)
012685: f496fa00_98      AND #64000,mmap(@ST2_55)
01268a: f5968000_98      OR #32768,mmap(@ST2_55)
01268f: 4656             BCLR ST3_SATA
012691: 4617             BSET ST3_SMUL
012693: 4606             BCLR ST3_SST
012695: 6c0124d9         CALL _auto_init
012699: 6c012526         CALL __args_main
01269d: 3c19             MOV #1,AR1
01269f: 6c0125f5         CALL _exit
0126a3:               I$$UDIV:
0126a3:               __divu:
0126a3: 4eff             AADD #-1,SP
0126a5: 4682             BCLR ST1_SXMD
0126a7: c500_2340        MOV T1,@#00h || MOV T0,AC0
0126ab: 4c0f             RPT #15
0126ad: de0003              SUBC @#00h,AC0,AC0
0126b0: 4683             BSET ST1_SXMD
0126b2: 2204             MOV AC0,T0
0126b4: 4e01             AADD #1,SP
0126b6: 4804             RET
0126b8:               I$$UMOD:
0126b8:               __remu:
0126b8: 4eff             AADD #-1,SP
0126ba: 4682             BCLR ST1_SXMD
0126bc: c500_2340        MOV T1,@#00h || MOV T0,AC0
0126c0: 4c0f             RPT #15
0126c2: de0003              SUBC @#00h,AC0,AC0
0126c5: 4683             BSET ST1_SXMD
0126c7: 4404             MOV HI(AC0),T0
0126c9: 4e01             AADD #1,SP
0126cb: 4804             RET
0126cd:               _time:
0126cd: 50d5             PSHBOTH XAR5
0126cf: 20               NOP
0126d0: 20               NOP
0126d1: 20               NOP
0126d2: ec01de           AMAR *AR0,XAR5
0126d5: 6c010bfa         CALL _HOSTtime
0126d9: 90d1             MOV XAR5,AC1
0126db: eba108_9e11      XCC AC1 != #0 || MOV AC0,dbl(*AR5)
0126e0: 50d4             POPBOTH XAR5
0126e2: 4804             RET
0126e4:               I$$LMPY:
0126e4:               __mpyli:
0126e4: 5016_2304        PSH AC1 || MOV AC0,T0
0126e8: d30000           MPYM @#00h,AC0,AC0
0126eb: 5842             MAC AC1,T0,AC0,AC1
0126ed: d3000c           MPYMU @#00h,T0,AC0
0126f0: 101310_4f01      ADD AC1 << #16,AC0 || AADD #1,SP
0126f5: 4804             RET
0126f7:               __register_unlock:
0126f7: eb310801369c     MOV AC0,dbl(*(#01369ch))
0126fd: 4804             RET
0126ff:               __register_lock:
0126ff: eb310801369a     MOV AC0,dbl(*(#01369ah))
012705: 4804             RET
012707:               __nop:
012707: 4804             RET
012709:               _memset:
012709: ec01be           AMAR *AR0,XAR3
01270c: 6505             BCC #0x012718,T1 == #0
01270e: 7c000195         SUB #1,T1,AR1
012712: 529c             MOV AR1,CSR
012714: 4800             RPT CSR
012716: c463                MOV T0,*AR3+
012718: 4804             RET
01271a:               _abort:
01271a:               .text:CIO_breakpoint:
01271a: 20               NOP
01271b:               C$$EXIT:
01271b: 20               NOP
01271c: 16000c           SIM_TRIG
01271f: 4a7e             B #0x01271f
012721: 4a7e             B #0x012721
012723: 20               NOP

DATA section .switch, 0x18 words load/run at 0x136A4
0136a4:               .switch:_mutator:
0136a4:               $C$SW1:
0136a4:               .switch:
0136a4: 0001             .word 0x0001
0136a5: 0629             .word 0x0629
0136a6: 0001             .word 0x0001
0136a7: 0651             .word 0x0651
0136a8: 0001             .word 0x0001
0136a9: 0670             .word 0x0670
0136aa: 0001             .word 0x0001
0136ab: 0686             .word 0x0686
0136ac: 0001             .word 0x0001
0136ad: 069c             .word 0x069c
0136ae: 0001             .word 0x0001
0136af: 06bb             .word 0x06bb
0136b0: 0001             .word 0x0001
0136b1: 06fd             .word 0x06fd
0136b2: 0001             .word 0x0001
0136b3: 0754             .word 0x0754
0136b4: 0001             .word 0x0001
0136b5: 07d5             .word 0x07d5
0136b6: 0001             .word 0x0001
0136b7: 080b             .word 0x080b
0136b8: 0001             .word 0x0001
0136b9: 083c             .word 0x083c
0136ba: 0001             .word 0x0001
0136bb: 089c             .word 0x089c
