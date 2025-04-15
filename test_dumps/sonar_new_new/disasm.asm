
Disassembly of ./on_board/DSPFuzz.out:

DATA section .cinit, 0x62 words load/run at 0x95B2
0095b2:               ___cinit__:
0095b2:               cinit:
0095b2:               .cinit:
0095b2: 0001             .word 0x0001
0095b3: 0133             .word 0x0133
0095b4: 8800             .word 0x8800
0095b5: 0000             .word 0x0000
0095b6: 0001             .word 0x0001
0095b7: 0133             .word 0x0133
0095b8: 8900             .word 0x8900
0095b9: 0000             .word 0x0000
0095ba: 0002             .word 0x0002
0095bb: 0133             .word 0x0133
0095bc: 8c00             .word 0x8c00
0095bd: 0000             .word 0x0000
0095be: 0000             .word 0x0000
0095bf: 0001             .word 0x0001
0095c0: 0135             .word 0x0135
0095c1: 1e00             .word 0x1e00
0095c2: 0000             .word 0x0000
0095c3: 0002             .word 0x0002
0095c4: 0135             .word 0x0135
0095c5: 2000             .word 0x2000
0095c6: 0000             .word 0x0000
0095c7: 0000             .word 0x0000
0095c8: 0001             .word 0x0001
0095c9: 0135             .word 0x0135
0095ca: 1f00             .word 0x1f00
0095cb: 0000             .word 0x0000
0095cc: 0001             .word 0x0001
0095cd: 0135             .word 0x0135
0095ce: 2200             .word 0x2200
0095cf: 0009             .word 0x0009
0095d0: 0001             .word 0x0001
0095d1: 0135             .word 0x0135
0095d2: 2300             .word 0x2300
0095d3: 0000             .word 0x0000
0095d4: 0001             .word 0x0001
0095d5: 0135             .word 0x0135
0095d6: 3400             .word 0x3400
0095d7: 0000             .word 0x0000
0095d8: 0001             .word 0x0001
0095d9: 0135             .word 0x0135
0095da: 3500             .word 0x3500
0095db: 0000             .word 0x0000
0095dc: 0001             .word 0x0001
0095dd: 0135             .word 0x0135
0095de: 3600             .word 0x3600
0095df: 0000             .word 0x0000
0095e0: 0001             .word 0x0001
0095e1: 0135             .word 0x0135
0095e2: 3700             .word 0x3700
0095e3: 0000             .word 0x0000
0095e4: 0001             .word 0x0001
0095e5: 0135             .word 0x0135
0095e6: 3800             .word 0x3800
0095e7: 0001             .word 0x0001
0095e8: 0001             .word 0x0001
0095e9: 0135             .word 0x0135
0095ea: 3900             .word 0x3900
0095eb: 01f4             .word 0x01f4
0095ec: 0002             .word 0x0002
0095ed: 0135             .word 0x0135
0095ee: 3a00             .word 0x3a00
0095ef: 0000             .word 0x0000
0095f0: 0000             .word 0x0000
0095f1: 0002             .word 0x0002
0095f2: 0135             .word 0x0135
0095f3: 3e00             .word 0x3e00
0095f4: 0000             .word 0x0000
0095f5: 0000             .word 0x0000
0095f6:               .cinit:
0095f6: 0002             .word 0x0002
0095f7: 0136             .word 0x0136
0095f8: 9a00             .word 0x9a00
0095f9: 0001             .word 0x0001
0095fa: 2b47             .word 0x2b47
0095fb: 0002             .word 0x0002
0095fc: 0136             .word 0x0136
0095fd: 9c00             .word 0x9c00
0095fe: 0001             .word 0x0001
0095ff: 2b47             .word 0x2b47
009600:               .cinit:
009600: 0002             .word 0x0002
009601: 0136             .word 0x0136
009602: 9e00             .word 0x9e00
009603: 0000             .word 0x0000
009604: 0000             .word 0x0000
009605: 0002             .word 0x0002
009606: 0136             .word 0x0136
009607: a000             .word 0xa000
009608: 0000             .word 0x0000
009609: 0000             .word 0x0000
00960a:               .cinit:
00960a: 0002             .word 0x0002
00960b: 0136             .word 0x0136
00960c: a200             .word 0xa200
00960d: 0000             .word 0x0000
00960e: 0001             .word 0x0001
00960f:               .cinit:
00960f: 0001             .word 0x0001
009610: 0136             .word 0x0136
009611: 9900             .word 0x9900
009612: 0001             .word 0x0001
009613: 0000             .word 0x0000

TEXT section .text, 0x2B64 bytes load/run at 0x10000
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
01000d: 6c012093_3d04    CALL _GPT_open || MOV #0,T0
010013: ed00bf           MOV dbl(@#00h),XAR3
010016: eb6185           MOV XAR0,dbl(*AR3)
010019: ed00bf           MOV dbl(@#00h),XAR3
01001c: ed618f           MOV dbl(*AR3),XAR0
01001f: 6c012156         CALL _GPT_reset
010023: c404             MOV T0,@#02h
010025: 6c011097         CALL _IRQ_clearAll
010029: 6c011232         CALL _IRQ_disableAll
01002d: 7a00000a         MOV #0 << #16,AC0
010031: 7e070000         OR #1792,AC0,AC0
010035: 6c0113db         CALL _IRQ_setVecs
010039: 76001848         MOV #24,T0
01003d: 7a00010a         MOV #1 << #16,AC0
010041: 7e1e6d00         OR #7789,AC0,AC0
010045: 6c012601         CALL _IRQ_plug
010049: 7a00010a         MOV #1 << #16,AC0
01004d: 7e1d2400         OR #7460,AC0,AC0
010051: 6c012601_3d44    CALL _IRQ_plug || MOV #4,T0
010057: 76001848         MOV #24,T0
01005b: 6c011240         CALL _IRQ_enable
01005f: 6c011240_3d44    CALL _IRQ_enable || MOV #4,T0
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
010085: 6c0122d7         CALL _GPT_config
010089: c404             MOV T0,@#02h
01008b: 6c011497         CALL _IRQ_globalEnable
01008f: ed00bf           MOV dbl(@#00h),XAR3
010092: ed618f           MOV dbl(*AR3),XAR0
010095: 6c012245         CALL _GPT_start
010099: 4e0b             AADD #11,SP
01009b: 4804             RET
01009d:               _stop_timer:
01009d: 4efd             AADD #-3,SP
01009f: eb0085           MOV XAR0,dbl(@#00h)
0100a2: 6c01147e         CALL _IRQ_globalDisable
0100a6: 6c011097         CALL _IRQ_clearAll
0100aa: 6c011232         CALL _IRQ_disableAll
0100ae: ed00bf           MOV dbl(@#00h),XAR3
0100b1: ed618f           MOV dbl(*AR3),XAR0
0100b4: 6c012272         CALL _GPT_stop
0100b8: c404             MOV T0,@#02h
0100ba: ed00bf           MOV dbl(@#00h),XAR3
0100bd: ed618f           MOV dbl(*AR3),XAR0
0100c0: 6c012156         CALL _GPT_reset
0100c4: c404             MOV T0,@#02h
0100c6: 4e03             AADD #3,SP
0100c8: 4804             RET
0100ca:               _setup:
0100ca: 4efd             AADD #-3,SP
0100cc: eb0085           MOV XAR0,dbl(@#00h)
0100cf: ec318e000000     AMAR *(#00000h),XAR0
0100d5: 6c012b0d         CALL _time
0100d9: c004             MOV AC0,@#02h
0100db: 6c0127d9_2304    CALL _srand || MOV AC0,T0
0100e1: 7601f448         MOV #500,T0
0100e5: 6c011953_3d15    CALL _calloc || MOV #1,T1
0100eb: eb318501338a     MOV XAR0,dbl(*(#01338ah))
0100f1: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0100f7: 90b0             MOV XAR3,AC0
0100f9: 6310             BCC $C$L3,AC0 != #0
0100fb: 6c012a35_3f14    CALL _exit || MOV #-1,T0
010101:               $C$L3:
010101: ec318e01338c     AMAR *(#01338ch),XAR0
010107: 76019058         MOV #400,T1
01010b: 6c012b49_3d04    CALL _memset || MOV #0,T0
010111: 76138858         MOV #5000,T1
010115: ec318e012000     AMAR *(#012000h),XAR0
01011b: 6c012b49_3d04    CALL _memset || MOV #0,T0
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
010153: 6c012a35_3f34    CALL _exit || MOV #-3,T0
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
010215: 6c012ae3         CALL I$$UDIV
010219: 2245             MOV T0,T1
01021b: a431013539       MOV *(#013539h),T0
010220: 6c012ae3         CALL I$$UDIV
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
010546: 6c012af8         CALL I$$UMOD
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
0105a3: 6c012af8         CALL I$$UMOD
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
0105e1: 6c0127fb         CALL _rand
0105e5: 6c012a92_3dc5    CALL I$$MOD || MOV #12,T1
0105eb: c40e             MOV T0,@#07h
0105ed: a931013538       MOV *(#013538h),AR1
0105f2: 6319             BCC $C$L41,AR1 != #0
0105f4: e63101013538     MOV #1,*(#013538h)
0105fa:               $C$L41:
0105fa: 6c0127fb         CALL _rand
0105fe: a531013538       MOV *(#013538h),T1
010603: 6c012af8         CALL I$$UMOD
010607: c408             MOV T0,@#04h
010609: e60000           MOV #0,@#00h
01060c: a908             MOV @#04h,AR1
01060e: aa00             MOV @#00h,AR2
010610: 12a894           CMPU AR2 >= AR1, TC1
010613: 6d6402e2         BCC $C$DW$L$_mutator$85$E,TC1
010617:               $C$L42:
010617:               $C$DW$L$_mutator$69$B:
010617: 6c0127fb         CALL _rand
01061b: a531013539       MOV *(#013539h),T1
010620: 6c012af8         CALL I$$UMOD
010624: c404             MOV T0,@#02h
010626: 060293           B $C$DW$L$_mutator$82$E
010629:               $C$DW$L$_mutator$69$E:
010629:               $C$L43:
010629:               $C$DW$L$_mutator$71$B:
010629: 6c0127fb         CALL _rand
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
01065a: 6c012af8         CALL I$$UMOD
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
0106a5: 6c012af8         CALL I$$UMOD
0106a9: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0106af: a404_2349        MOV @#02h,T0 || MOV T0,AR1
0106b3: d86b99           SUB AR1,*AR3(AR0),AR1
0106b6: c96b             MOV AR1,*AR3(AR0)
0106b8: 060223           B $C$DW$L$_mutator$84$E
0106bb:               $C$DW$L$_mutator$75$E:
0106bb:               $C$L48:
0106bb:               $C$DW$L$_mutator$76$B:
0106bb: 6c0127fb         CALL _rand
0106bf: a531013539       MOV *(#013539h),T1
0106c4: 6c012af8         CALL I$$UMOD
0106c8: 7c000194         SUB #1,T0,AR1
0106cc: c904             MOV AR1,@#02h
0106ce: 6c0127fb         CALL _rand
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
0106fd: 6c0127fb         CALL _rand
010701: a531013539       MOV *(#013539h),T1
010706: 6c012af8         CALL I$$UMOD
01070a: 7c000194         SUB #1,T0,AR1
01070e: c904             MOV AR1,@#02h
010710: 6c0127fb         CALL _rand
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
010754: 6c0127fb         CALL _rand
010758: a531013539       MOV *(#013539h),T1
01075d: 6c012af8         CALL I$$UMOD
010761: 7c000194         SUB #1,T0,AR1
010765: c904             MOV AR1,@#02h
010767: 6c0127fb         CALL _rand
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
0107d5: 6c0127fb         CALL _rand
0107d9: a531013539       MOV *(#013539h),T1
0107de: 6c012af8         CALL I$$UMOD
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
01080b: 6c0127fb         CALL _rand
01080f: a531013539       MOV *(#013539h),T1
010814: 6c012af8         CALL I$$UMOD
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
01083c: 6c0127fb         CALL _rand
010840: a531013539       MOV *(#013539h),T1
010845: 6c012af8         CALL I$$UMOD
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
01089c: 6c0127fb         CALL _rand
0108a0: a531013539       MOV *(#013539h),T1
0108a5: 6c012af8         CALL I$$UMOD
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
0108de: 6c0127fb         CALL _rand
0108e2: 6c012a92_3dc5    CALL I$$MOD || MOV #12,T1
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
0109ab: 6c012a35         CALL _exit
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
0109c2: 7e197900         OR #6521,AC0,AC0
0109c6: 9008             MOV AC0,XAR0
0109c8: 08f6ff           CALL _setup
0109cb: e63100013389     MOV #0,*(#013389h)
0109d1: e63100013536     MOV #0,*(#013536h)
0109d7: ec318e013524     AMAR *(#013524h),XAR0
0109dd: 6c01296f         CALL __setjmp
0109e1:               $C$L67:
0109e1:               $C$DW$L$_main_harness_loop$3$B:
0109e1: f7310001013536   ADD #1,*(#013536h)
0109e8: 08ff19           CALL _dequeue_seed
0109eb: 08f75c           CALL _mutator
0109ee: ec008e           AMAR @#00h,XAR0
0109f1: 08f60e           CALL _start_timer
0109f4: ed31bf01338a     MOV dbl(*(#01338ah)),XAR3
0109fa: 7601f458         MOV #500,T1
0109fe: a461             MOV *AR3,T0
010a00: 6c012a92         CALL I$$MOD
010a04: ed318f01338a     MOV dbl(*(#01338ah)),XAR0
010a0a: 6c011979         CALL _sonar_test
010a0e: ec008e           AMAR @#00h,XAR0
010a11: 08f689           CALL _stop_timer
010a14: 3c00             MOV #0,AC0
010a16: eb310801353e     MOV AC0,dbl(*(#01353eh))
010a1c: a931013523       MOV *(#013523h),AR1
010a21: 040958           BCC $C$DW$L$_main_harness_loop$7$E,AR1 == #0
010a24:               $C$DW$L$_main_harness_loop$3$E:
010a24:               $C$DW$L$_main_harness_loop$4$B:
010a24: ed310801338c     MOV dbl(*(#01338ch)),AC0
010a2a: 04004f           BCC $C$DW$L$_main_harness_loop$7$E,AC0 == #0
010a2d:               $C$DW$L$_main_harness_loop$4$E:
010a2d:               $C$DW$L$_main_harness_loop$5$B:
010a2d: f7310001013389   ADD #1,*(#013389h)
010a34: 08ff7c           CALL _bubble_coverage
010a37: e60400           MOV #0,@#02h
010a3a: 7600c8a8         MOV #200,AR2
010a3e: a904             MOV @#02h,AR1
010a40: 1298a4           CMPU AR1 >= AR2, TC1
010a43: 04641b           BCC $C$DW$L$_main_harness_loop$6$E,TC1
010a46:               $C$DW$L$_main_harness_loop$5$E:
010a46:               $C$L68:
010a46:               $C$DW$L$_main_harness_loop$6$B:
010a46: a404             MOV @#02h,T0
010a48: 5040             SFTL T0,#1
010a4a: 3c00             MOV #0,AC0
010a4c: ec31be01338c     AMAR *(#01338ch),XAR3
010a52: eb6b08           MOV AC0,dbl(*AR3(AR0))
010a55: f7040001         ADD #1,@#02h
010a59: a904             MOV @#02h,AR1
010a5b: 1294a4           CMPU AR1 < AR2, TC1
010a5e: 0464e5           BCC $C$DW$L$_main_harness_loop$5$E,TC1
010a61:               $C$DW$L$_main_harness_loop$6$E:
010a61:               $C$L69:
010a61:               $C$DW$L$_main_harness_loop$7$B:
010a61: ec31be01338c     AMAR *(#01338ch),XAR3
010a67: eb31b501351c     MOV XAR3,dbl(*(#01351ch))
010a6d: e63100013523     MOV #0,*(#013523h)
010a73: e63101013538     MOV #1,*(#013538h)
010a79: 06ff65           B $C$L67
010a7c:               $C$DW$L$_main_harness_loop$7$E:
010a7c:               $C$L70:
010a7c:               $C$DW$L$_main_harness_loop$8$B:
010a7c: 6d09ff61         BCC $C$L67,AR1 == #0
010a80:               $C$DW$L$_main_harness_loop$8$E:
010a80:               $C$DW$L$_main_harness_loop$9$B:
010a80: e63100013523     MOV #0,*(#013523h)
010a86: 06ff58           B $C$L67
010a89:               _main:
010a89:               $C$DW$L$_main_harness_loop$9$E:
010a89: 4eff             AADD #-1,SP
010a8b: 08ff2e           CALL _main_harness_loop
010a8e: 3c04             MOV #0,T0
010a90: 4e01             AADD #1,SP
010a92: 4804             RET
010a94:               _getenv:
010a94: 50d5             PSHBOTH XAR5
010a96: 20               NOP
010a97: 20               NOP
010a98: 50f5             PSHBOTH XAR7
010a9a: ec01de           AMAR *AR0,XAR5
010a9d: 4eff             AADD #-1,SP
010a9f: ed310801369a     MOV dbl(*(#01369ah)),AC0
010aa5: 9200             CALL AC0
010aa7: 76ffffa8         MOV #-1,AR2
010aab: eca1be           AMAR *AR5,XAR3
010aae: b465             AMAR *AR3-
010ab0: a96f0001         MOV *+AR3(#0001h),AR1
010ab4: 401a             ADD #1,AR2
010ab6: 0419f7           BCC #0x010ab0,AR1 != #0
010ab9: ec31fe013540     AMAR *(#013540h),XAR7
010abf: eca19e           AMAR *AR5,XAR1
010ac2: 7b00015a         ADD #1,AR2,T1
010ac6: 7600f648         MOV #246,T0
010aca: ece18e           AMAR *AR7,XAR0
010acd: 6c01237e         CALL _writemsg
010ad1: ec31de013548     AMAR *(#013548h),XAR5
010ad7: eca19e           AMAR *AR5,XAR1
010ada: ece18e           AMAR *AR7,XAR0
010add: 6c01276c         CALL _readmsg
010ae1: ed310801369c     MOV dbl(*(#01369ch)),AC0
010ae7: 9200             CALL AC0
010ae9: 76ffff98         MOV #-1,AR1
010aed: eca18e           AMAR *AR5,XAR0
010af0: ec01be           AMAR *AR0,XAR3
010af3: b465             AMAR *AR3-
010af5: aa6f0001         MOV *+AR3(#0001h),AR2
010af9: 4019             ADD #1,AR1
010afb: 041af7           BCC #0x010af5,AR2 != #0
010afe: 4e01             AADD #1,SP
010b00: 20               NOP
010b01: 50f4             POPBOTH XAR7
010b03: 50d4             POPBOTH XAR5
010b05: 9609             XCC AR1 == #0
010b07: ec318e000000     AMAR *(#00000h),XAR0
010b0d: 4804             RET
010b0f:               _HOSTwrite:
010b0f: 3876             PSH T3,T2
010b11: 50d5             PSHBOTH XAR5
010b13: 20               NOP
010b14: 2247             MOV T0,T3
010b16: 50f5             PSHBOTH XAR7
010b18: ec01de_2356      AMAR *AR0,XAR5 || MOV T1,T2
010b1d: 4eff             AADD #-1,SP
010b1f: ed310801369a     MOV dbl(*(#01369ah)),AC0
010b25: 9200             CALL AC0
010b27: ec31fe013540     AMAR *(#013540h),XAR7
010b2d: 76010098         MOV #256,AR1
010b31: 129864_21        CMPU AR1 >= T2, TC1 || NOP
010b35: 18ff07           AND #255,T3,AC0
010b38: 76010068_9ef4    XCCPART !TC1 || MOV #256,T2
010b3e: c0e1_2370        MOV AC0,*AR7 || MOV T3,AC0
010b42: 100538           SFTS AC0,#-8,AC0
010b45: 18ff00           AND #255,AC0,AC0
010b48: c0f3_19ff06      MOV AC0,*(AR7+T1) || AND #255,T2,AC0
010b4d: c0f5_2360        MOV AC0,*(AR7-T1) || MOV T2,AC0
010b51: 76ff0090         BFXTR #65280,AC0,AR1
010b55: c9f7             MOV AR1,*AR7(T1)
010b57: 7600f348         MOV #243,T0
010b5b: ece18e           AMAR *AR7,XAR0
010b5e: eca19e_2365      AMAR *AR5,XAR1 || MOV T2,T1
010b63: 6c01237e         CALL _writemsg
010b67: ec319e000000     AMAR *(#00000h),XAR1
010b6d: ece18e           AMAR *AR7,XAR0
010b70: 6c01276c         CALL _readmsg
010b74: df3105013540     MOV uns(*(#013540h)),AC0
010b7a: df3115013541     MOV uns(*(#013541h)),AC1
010b80: 101308           ADD AC1 << #8,AC0
010b83: 100510           SFTS AC0,#16,AC0
010b86: 4406             MOV HI(AC0),T2
010b88: ed310801369c     MOV dbl(*(#01369ch)),AC0
010b8e: 9200             CALL AC0
010b90: 4e01             AADD #1,SP
010b92: 50f4             POPBOTH XAR7
010b94: 2264             MOV T2,T0
010b96: 50d4             POPBOTH XAR5
010b98: 3a76             POP T3,T2
010b9a: 4804             RET
010b9c:               _HOSTunlink:
010b9c: 5066             PSH T2
010b9e: 50d5             PSHBOTH XAR5
010ba0: 50f5             PSHBOTH XAR7
010ba2: 20               NOP
010ba3: 20               NOP
010ba4: ed310801369a     MOV dbl(*(#01369ah)),AC0
010baa: ec01fe           AMAR *AR0,XAR7
010bad: 9200             CALL AC0
010baf: 76ffffa8         MOV #-1,AR2
010bb3: ece1be           AMAR *AR7,XAR3
010bb6: b465             AMAR *AR3-
010bb8: a96f0001         MOV *+AR3(#0001h),AR1
010bbc: 401a             ADD #1,AR2
010bbe: 0419f7           BCC #0x010bb8,AR1 != #0
010bc1: ec31de013540     AMAR *(#013540h),XAR5
010bc7: ece19e           AMAR *AR7,XAR1
010bca: 7b00015a         ADD #1,AR2,T1
010bce: 7600f548         MOV #245,T0
010bd2: eca18e           AMAR *AR5,XAR0
010bd5: 6c01237e         CALL _writemsg
010bd9: ec319e000000     AMAR *(#00000h),XAR1
010bdf: eca18e           AMAR *AR5,XAR0
010be2: 6c01276c         CALL _readmsg
010be6: dfb315           MOV uns(*(AR5+T1)),AC1
010be9: dfa105           MOV uns(*AR5),AC0
010bec: 101308           ADD AC1 << #8,AC0
010bef: 100510           SFTS AC0,#16,AC0
010bf2: 4406             MOV HI(AC0),T2
010bf4: ed310801369c     MOV dbl(*(#01369ch)),AC0
010bfa: 9200             CALL AC0
010bfc: 50f4             POPBOTH XAR7
010bfe: 2264             MOV T2,T0
010c00: 50d4             POPBOTH XAR5
010c02: 5062             POP T2
010c04: 4804             RET
010c06:               _HOSTtime:
010c06: 50d5             PSHBOTH XAR5
010c08: ed310801369a     MOV dbl(*(#01369ah)),AC0
010c0e: 4efe             AADD #-2,SP
010c10: 9200             CALL AC0
010c12: ec31de013540     AMAR *(#013540h),XAR5
010c18: 7600f848         MOV #248,T0
010c1c: ec319e000000     AMAR *(#00000h),XAR1
010c22: eca18e_3d05      AMAR *AR5,XAR0 || MOV #0,T1
010c27: 6c01237e         CALL _writemsg
010c2b: ec319e000000     AMAR *(#00000h),XAR1
010c31: eca18e           AMAR *AR5,XAR0
010c34: 6c01276c         CALL _readmsg
010c38: df3105013540     MOV uns(*(#013540h)),AC0
010c3e: dfb715           MOV uns(*AR5(T1)),AC1
010c41: dfb515_111318    MOV uns(*(AR5-T1)),AC1 || ADD AC1 << #24,AC0
010c47: dfb315_111310    MOV uns(*(AR5+T1)),AC1 || ADD AC1 << #16,AC0
010c4d: 101308           ADD AC1 << #8,AC0
010c50: eb0008           MOV AC0,dbl(@#00h)
010c53: ed310801369c     MOV dbl(*(#01369ch)),AC0
010c59: 9200             CALL AC0
010c5b: ed0008           MOV dbl(@#00h),AC0
010c5e: 4e02             AADD #2,SP
010c60: 50d4             POPBOTH XAR5
010c62: 4804             RET
010c64:               _HOSTrename:
010c64: 5066             PSH T2
010c66: 50d5             PSHBOTH XAR5
010c68: 20               NOP
010c69: 20               NOP
010c6a: 50f5             PSHBOTH XAR7
010c6c: ec01de           AMAR *AR0,XAR5
010c6f: 4e9c             AADD #-100,SP
010c71: ed310801369a     MOV dbl(*(#01369ah)),AC0
010c77: ec21fe           AMAR *AR1,XAR7
010c7a: 9200             CALL AC0
010c7c: 904a             MOV XSP,XAR2
010c7e: eca1be           AMAR *AR5,XAR3
010c81: a961             MOV *AR3,AR1
010c83: 806104           MOV *AR3,*AR2
010c86: 6589             BCC #0x010c93,AR1 == #0
010c88: a96f0001         MOV *+AR3(#0001h),AR1
010c8c: c94f0001         MOV AR1,*+AR2(#0001h)
010c90: 0419f5           BCC #0x010c88,AR1 != #0
010c93: 76ffffa8         MOV #-1,AR2
010c97: b4a5             AMAR *AR5-
010c99: a9af0001         MOV *+AR5(#0001h),AR1
010c9d: 401a             ADD #1,AR2
010c9f: 0419f7           BCC #0x010c99,AR1 != #0
010ca2: 7b00015a         ADD #1,AR2,T1
010ca6: 904b             MOV XSP,XAR3
010ca8: ece1ae           AMAR *AR7,XAR2
010cab: 8a41b91850       MOV *AR2,AR1 || AADD T1,AR3
010cb0: c963             MOV AR1,*AR3+
010cb2: 6489             BCC #0x010cbd,AR1 == #0
010cb4: a94f0001         MOV *+AR2(#0001h),AR1
010cb8: c963             MOV AR1,*AR3+
010cba: 0419f7           BCC #0x010cb4,AR1 != #0
010cbd: 76ffffa8         MOV #-1,AR2
010cc1: b4e5             AMAR *AR7-
010cc3: a9ef0001         MOV *+AR7(#0001h),AR1
010cc7: 401a             ADD #1,AR2
010cc9: 0419f7           BCC #0x010cc3,AR1 != #0
010ccc: 9049             MOV XSP,XAR1
010cce: ec31de013540     AMAR *(#013540h),XAR5
010cd4: 7600f748_25a5    MOV #247,T0 || ADD AR2,T1
010cda: eca18e_4115      AMAR *AR5,XAR0 || ADD #1,T1
010cdf: 6c01237e         CALL _writemsg
010ce3: ec319e000000     AMAR *(#00000h),XAR1
010ce9: eca18e           AMAR *AR5,XAR0
010cec: 6c01276c         CALL _readmsg
010cf0: dfb315           MOV uns(*(AR5+T1)),AC1
010cf3: dfa105           MOV uns(*AR5),AC0
010cf6: 101308           ADD AC1 << #8,AC0
010cf9: 100510           SFTS AC0,#16,AC0
010cfc: 4406             MOV HI(AC0),T2
010cfe: ed310801369c     MOV dbl(*(#01369ch)),AC0
010d04: 9200             CALL AC0
010d06: 4e64             AADD #100,SP
010d08: 50f4             POPBOTH XAR7
010d0a: 2264             MOV T2,T0
010d0c: 50d4             POPBOTH XAR5
010d0e: 5062             POP T2
010d10: 4804             RET
010d12:               _HOSTread:
010d12: 3876             PSH T3,T2
010d14: 50d5             PSHBOTH XAR5
010d16: 20               NOP
010d17: 2247             MOV T0,T3
010d19: 50f5             PSHBOTH XAR7
010d1b: ec01de_2356      AMAR *AR0,XAR5 || MOV T1,T2
010d20: 4eff             AADD #-1,SP
010d22: ed310801369a     MOV dbl(*(#01369ah)),AC0
010d28: 9200             CALL AC0
010d2a: ec31fe013540     AMAR *(#013540h),XAR7
010d30: 76010098         MOV #256,AR1
010d34: 129864_21        CMPU AR1 >= T2, TC1 || NOP
010d38: 18ff07           AND #255,T3,AC0
010d3b: 76010068_9ef4    XCCPART !TC1 || MOV #256,T2
010d41: c0e1_2370        MOV AC0,*AR7 || MOV T3,AC0
010d45: 100538           SFTS AC0,#-8,AC0
010d48: 18ff00           AND #255,AC0,AC0
010d4b: c0f3_19ff06      MOV AC0,*(AR7+T1) || AND #255,T2,AC0
010d50: c0f5_2360        MOV AC0,*(AR7-T1) || MOV T2,AC0
010d54: 76ff0090         BFXTR #65280,AC0,AR1
010d58: c9f7             MOV AR1,*AR7(T1)
010d5a: 7600f248         MOV #242,T0
010d5e: ece18e_3d05      AMAR *AR7,XAR0 || MOV #0,T1
010d63: ec319e000000     AMAR *(#00000h),XAR1
010d69: 6c01237e         CALL _writemsg
010d6d: eca19e           AMAR *AR5,XAR1
010d70: ece18e           AMAR *AR7,XAR0
010d73: 6c01276c         CALL _readmsg
010d77: df3105013540     MOV uns(*(#013540h)),AC0
010d7d: df3115013541     MOV uns(*(#013541h)),AC1
010d83: 101308           ADD AC1 << #8,AC0
010d86: 100510           SFTS AC0,#16,AC0
010d89: 4406             MOV HI(AC0),T2
010d8b: ed310801369c     MOV dbl(*(#01369ch)),AC0
010d91: 9200             CALL AC0
010d93: 4e01             AADD #1,SP
010d95: 50f4             POPBOTH XAR7
010d97: 2264             MOV T2,T0
010d99: 50d4             POPBOTH XAR5
010d9b: 3a76             POP T3,T2
010d9d: 4804             RET
010d9f:               _HOSTopen:
010d9f: 3876             PSH T3,T2
010da1: 50d5             PSHBOTH XAR5
010da3: 50e5             PSHBOTH XAR6
010da5: 20               NOP
010da6: 20               NOP
010da7: 2246             MOV T0,T2
010da9: ec01ee_2357      AMAR *AR0,XAR6 || MOV T1,T3
010dae: 50f5             PSHBOTH XAR7
010db0: ed310801369a     MOV dbl(*(#01369ah)),AC0
010db6: 9200             CALL AC0
010db8: ec31be013540     AMAR *(#013540h),XAR3
010dbe: 18ff07           AND #255,T3,AC0
010dc1: 76ffffa8         MOV #-1,AR2
010dc5: c061_2370        MOV AC0,*AR3 || MOV T3,AC0
010dc9: ec61de_110538    AMAR *AR3,XAR5 || SFTS AC0,#-8,AC0
010dcf: b4a3_19ff00      AMAR *AR5+ || AND #255,AC0,AC0
010dd4: c0a1_19ff06      MOV AC0,*AR5 || AND #255,T2,AC0
010dd9: c075_2360        MOV AC0,*(AR3-T1) || MOV T2,AC0
010ddd: 76ff0090         BFXTR #65280,AC0,AR1
010de1: ecc1be           AMAR *AR6,XAR3
010de4: b465             AMAR *AR3-
010de6: c9b5             MOV AR1,*(AR5-T1)
010de8: a96f0001         MOV *+AR3(#0001h),AR1
010dec: 401a             ADD #1,AR2
010dee: 0419f7           BCC #0x010de8,AR1 != #0
010df1: ec31fe013540     AMAR *(#013540h),XAR7
010df7: ecc19e           AMAR *AR6,XAR1
010dfa: 7b00015a         ADD #1,AR2,T1
010dfe: 7600f048         MOV #240,T0
010e02: ece18e           AMAR *AR7,XAR0
010e05: 6c01237e         CALL _writemsg
010e09: ec319e000000     AMAR *(#00000h),XAR1
010e0f: ece18e           AMAR *AR7,XAR0
010e12: 6c01276c         CALL _readmsg
010e16: dfa115           MOV uns(*AR5),AC1
010e19: dfad05ffff       MOV uns(*AR5(#-0001h)),AC0
010e1e: 101308           ADD AC1 << #8,AC0
010e21: 100510           SFTS AC0,#16,AC0
010e24: 4406             MOV HI(AC0),T2
010e26: ed310801369c     MOV dbl(*(#01369ch)),AC0
010e2c: 9200             CALL AC0
010e2e: 2267_9ea6        XCCPART T2 < #0 || MOV T2,T3
010e32: 50f4             POPBOTH XAR7
010e34: 2274             MOV T3,T0
010e36: 50e4             POPBOTH XAR6
010e38: 50d4             POPBOTH XAR5
010e3a: 3a76             POP T3,T2
010e3c: 4804             RET
010e3e:               _HOSTlseek:
010e3e: 3876             PSH T3,T2
010e40: 50d5             PSHBOTH XAR5
010e42: 2247             MOV T0,T3
010e44: 4efe             AADD #-2,SP
010e46: eb0008_2356      MOV AC0,dbl(@#00h) || MOV T1,T2
010e4b: ed310801369a     MOV dbl(*(#01369ah)),AC0
010e51: 9200             CALL AC0
010e53: ec31de013540     AMAR *(#013540h),XAR5
010e59: 18ff07           AND #255,T3,AC0
010e5c: c0a1_2370        MOV AC0,*AR5 || MOV T3,AC0
010e60: 100538           SFTS AC0,#-8,AC0
010e63: 18ff00           AND #255,AC0,AC0
010e66: c0b3             MOV AC0,*(AR5+T1)
010e68: ed0008           MOV dbl(@#00h),AC0
010e6b: 18ff00           AND #255,AC0,AC0
010e6e: c0b5             MOV AC0,*(AR5-T1)
010e70: ed0008           MOV dbl(@#00h),AC0
010e73: a900_110538      MOV @#00h,AR1 || SFTS AC0,#-8,AC0
010e78: 18ff00           AND #255,AC0,AC0
010e7b: c0b7_19ff09      MOV AC0,*AR5(T1) || AND #255,AR1,AC0
010e80: 7600f448         MOV #244,T0
010e84: c0b9             MOV AC0,*+AR5
010e86: ec319e000000     AMAR *(#00000h),XAR1
010e8c: ed0008           MOV dbl(@#00h),AC0
010e8f: 100528           SFTS AC0,#-24,AC0
010e92: 18ff00           AND #255,AC0,AC0
010e95: c0bb_19ff06      MOV AC0,*-AR5 || AND #255,T2,AC0
010e9a: c0bd_2360        MOV AC0,*(AR5+AR0B) || MOV T2,AC0
010e9e: 100538           SFTS AC0,#-8,AC0
010ea1: eca18e_19ff00    AMAR *AR5,XAR0 || AND #255,AC0,AC0
010ea7: c0bf_3d05        MOV AC0,*(AR5-AR0B) || MOV #0,T1
010eab: 6c01237e         CALL _writemsg
010eaf: ec319e000000     AMAR *(#00000h),XAR1
010eb5: eca18e           AMAR *AR5,XAR0
010eb8: 6c01276c         CALL _readmsg
010ebc: df3105013540     MOV uns(*(#013540h)),AC0
010ec2: df3115013543     MOV uns(*(#013543h)),AC1
010ec8: 101318           ADD AC1 << #24,AC0
010ecb: df3115013542     MOV uns(*(#013542h)),AC1
010ed1: 101310           ADD AC1 << #16,AC0
010ed4: df3115013541     MOV uns(*(#013541h)),AC1
010eda: 101308           ADD AC1 << #8,AC0
010edd: eb0008           MOV AC0,dbl(@#00h)
010ee0: ed310801369c     MOV dbl(*(#01369ch)),AC0
010ee6: 9200             CALL AC0
010ee8: ed0008           MOV dbl(@#00h),AC0
010eeb: 4e02             AADD #2,SP
010eed: 50d4             POPBOTH XAR5
010eef: 3a76             POP T3,T2
010ef1: 4804             RET
010ef3:               _HOSTclose:
010ef3: 2246_5166        MOV T0,T2 || PSH T2
010ef7: 50d5             PSHBOTH XAR5
010ef9: 4eff             AADD #-1,SP
010efb: ed310801369a     MOV dbl(*(#01369ah)),AC0
010f01: 9200             CALL AC0
010f03: ec31de013540     AMAR *(#013540h),XAR5
010f09: 7600f148         MOV #241,T0
010f0d: 18ff06           AND #255,T2,AC0
010f10: ec319e000000     AMAR *(#00000h),XAR1
010f16: c0a1_2360        MOV AC0,*AR5 || MOV T2,AC0
010f1a: 100538           SFTS AC0,#-8,AC0
010f1d: eca18e_19ff00    AMAR *AR5,XAR0 || AND #255,AC0,AC0
010f23: c0b3_3d05        MOV AC0,*(AR5+T1) || MOV #0,T1
010f27: 6c01237e         CALL _writemsg
010f2b: ec319e000000     AMAR *(#00000h),XAR1
010f31: eca18e           AMAR *AR5,XAR0
010f34: 6c01276c         CALL _readmsg
010f38: df3105013540     MOV uns(*(#013540h)),AC0
010f3e: df3115013541     MOV uns(*(#013541h)),AC1
010f44: 101308           ADD AC1 << #8,AC0
010f47: 100510           SFTS AC0,#16,AC0
010f4a: 4406             MOV HI(AC0),T2
010f4c: ed310801369c     MOV dbl(*(#01369ch)),AC0
010f52: 9200             CALL AC0
010f54: 4e01             AADD #1,SP
010f56: 50d4             POPBOTH XAR5
010f58: 2264             MOV T2,T0
010f5a: 5062             POP T2
010f5c: 4804             RET
010f5e:               _HOSTclock:
010f5e: 50d5             PSHBOTH XAR5
010f60: ed310801369a     MOV dbl(*(#01369ah)),AC0
010f66: 4efe             AADD #-2,SP
010f68: 9200             CALL AC0
010f6a: ec31de013540     AMAR *(#013540h),XAR5
010f70: 7600f948         MOV #249,T0
010f74: ec319e000000     AMAR *(#00000h),XAR1
010f7a: eca18e_3d05      AMAR *AR5,XAR0 || MOV #0,T1
010f7f: 6c01237e         CALL _writemsg
010f83: ec319e000000     AMAR *(#00000h),XAR1
010f89: eca18e           AMAR *AR5,XAR0
010f8c: 6c01276c         CALL _readmsg
010f90: df3105013540     MOV uns(*(#013540h)),AC0
010f96: dfb715           MOV uns(*AR5(T1)),AC1
010f99: dfb515_111318    MOV uns(*(AR5-T1)),AC1 || ADD AC1 << #24,AC0
010f9f: dfb315_111310    MOV uns(*(AR5+T1)),AC1 || ADD AC1 << #16,AC0
010fa5: 101308           ADD AC1 << #8,AC0
010fa8: eb0008           MOV AC0,dbl(@#00h)
010fab: ed310801369c     MOV dbl(*(#01369ch)),AC0
010fb1: 9200             CALL AC0
010fb3: ed0008           MOV dbl(@#00h),AC0
010fb6: 4e02             AADD #2,SP
010fb8: 50d4             POPBOTH XAR5
010fba: 4804             RET
010fbc:               _IRQ_init:
010fbc: 4efb             AADD #-5,SP
010fbe: c404             MOV T0,@#02h
010fc0: eb0085           MOV XAR0,dbl(@#00h)
010fc3: ed00bf           MOV dbl(@#00h),XAR3
010fc6: 90b0             MOV XAR3,AC0
010fc8: ec31be7fffff     AMAR *(#07fffffh),XAR3
010fce: 90b1             MOV XAR3,AC1
010fd0: 121c04           CMPU AC1 != AC0, TC1
010fd3: 62e4             BCC $C$L1,TC1
010fd5: 3e64             MOV #-6,T0
010fd7: 060066           B $C$L6
010fda:               $C$L1:
010fda: ed00bf           MOV dbl(@#00h),XAR3
010fdd: eb31b5013610     MOV XAR3,dbl(*(#013610h))
010fe3: e60600           MOV #0,@#03h
010fe6: 76001fa8         MOV #31,AR2
010fea: a906             MOV @#03h,AR1
010fec: 12a494           CMPU AR2 < AR1, TC1
010fef: 04641b           BCC $C$DW$L$_IRQ_init$4$E,TC1
010ff2:               $C$L2:
010ff2:               $C$DW$L$_IRQ_init$4$B:
010ff2: a406             MOV @#03h,T0
010ff4: 5040             SFTL T0,#1
010ff6: a006             MOV @#03h,AC0
010ff8: ec31be013612     AMAR *(#013612h),XAR3
010ffe: eb6b08           MOV AC0,dbl(*AR3(AR0))
011001: f7060001         ADD #1,@#03h
011005: a906             MOV @#03h,AR1
011007: 12a894           CMPU AR2 >= AR1, TC1
01100a: 0464e5           BCC $C$L2,TC1
01100d:               $C$DW$L$_IRQ_init$4$E:
01100d:               $C$L3:
01100d: e60600           MOV #0,@#03h
011010: a906             MOV @#03h,AR1
011012: 12a494           CMPU AR2 < AR1, TC1
011015: 04641f           BCC $C$DW$L$_IRQ_init$6$E,TC1
011018:               $C$L4:
011018:               $C$DW$L$_IRQ_init$6$B:
011018: a506             MOV @#03h,T1
01101a: 2254             MOV T1,T0
01101c: 5040             SFTL T0,#1
01101e: 3c10             MOV #1,AC0
011020: ec31be013652     AMAR *(#013652h),XAR3
011026: 5c05             SFTS AC0,T1,AC0
011028: eb6b08           MOV AC0,dbl(*AR3(AR0))
01102b: f7060001         ADD #1,@#03h
01102f: a906             MOV @#03h,AR1
011031: 12a894           CMPU AR2 >= AR1, TC1
011034: 0464e1           BCC $C$L4,TC1
011037:               $C$DW$L$_IRQ_init$6$E:
011037:               $C$L5:
011037: a904             MOV @#02h,AR1
011039: c931013692       MOV AR1,*(#013692h)
01103e: 3c04             MOV #0,T0
011040:               $C$L6:
011040: 4e05             AADD #5,SP
011042: 4804             RET
011044:               _IRQ_clear:
011044: 4efd             AADD #-3,SP
011046: c400             MOV T0,@#00h
011048: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01104e: 12a894           CMPU AR2 >= AR1, TC1
011051: 6264             BCC $C$L7,TC1
011053: 3e64             MOV #-6,T0
011055: 4a3c             B $C$L10
011057:               $C$L7:
011057: 080424           CALL _IRQ_globalDisable
01105a: c404             MOV T0,@#02h
01105c: a900             MOV @#00h,AR1
01105e: c902             MOV AR1,@#01h
011060: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
011064: 12a894           CMPU AR2 >= AR1, TC1
011067: 046413           BCC $C$L8,TC1
01106a: 7c001059_3d10    SUB #16,AR1,T1 || MOV #1,AC0
011070: 5c05             SFTS AC0,T1,AC0
011072: c002             MOV AC0,@#01h
011074: 2209             MOV AC0,AR1
011076: c931000046       MOV AR1,*(#00046h)
01107b: 4a0f             B $C$L9
01107d:               $C$L8:
01107d: a500_3d10        MOV @#00h,T1 || MOV #1,AC0
011081: 5c05             SFTS AC0,T1,AC0
011083: c002             MOV AC0,@#01h
011085: 2209             MOV AC0,AR1
011087: c931000001       MOV AR1,*(#00001h)
01108c:               $C$L9:
01108c: a404             MOV @#02h,T0
01108e: 08041f           CALL _IRQ_globalRestore
011091: 3c04             MOV #0,T0
011093:               $C$L10:
011093: 4e03             AADD #3,SP
011095: 4804             RET
011097:               _IRQ_clearAll:
011097: fb31ffff000001   MOV #-1,*(#00001h)
01109e: fb31ffff000046   MOV #-1,*(#00046h)
0110a5: 4804             RET
0110a7:               _IRQ_config:
0110a7: 4efb             AADD #-5,SP
0110a9: eb0485           MOV XAR0,dbl(@#02h)
0110ac: c400             MOV T0,@#00h
0110ae: ed04bf           MOV dbl(@#02h),XAR3
0110b1: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0110b5: 121c04           CMPU AC1 != AC0, TC1
0110b8: 62e4             BCC $C$L11,TC1
0110ba: 3e64             MOV #-6,T0
0110bc: 060069           B $C$L13
0110bf:               $C$L11:
0110bf: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0110c5: 12a894           CMPU AR2 >= AR1, TC1
0110c8: 62e4             BCC $C$L12,TC1
0110ca: 3e64             MOV #-6,T0
0110cc: 060059           B $C$L13
0110cf:               $C$L12:
0110cf: ed31af013610     MOV dbl(*(#013610h)),XAR2
0110d5: f9000308         MOV @#00h << #3,AC0
0110d9: 2204             MOV AC0,T0
0110db: 806170           MOV dbl(*AR3),dbl(*AR2(AR0))
0110de: ed31bf013610     MOV dbl(*(#013610h)),XAR3
0110e4: ed04af           MOV dbl(@#02h),XAR2
0110e7: f9000308         MOV @#00h << #3,AC0
0110eb: 2209             MOV AC0,AR1
0110ed: 8e55bd180890     MOV dbl(*(AR2-T1)),AC0 || AADD AR1,AR3
0110f3: eb7508           MOV AC0,dbl(*(AR3-T1))
0110f6: ed31bf013610     MOV dbl(*(#013610h)),XAR3
0110fc: ed04af           MOV dbl(@#02h),XAR2
0110ff: f9000308         MOV @#00h << #3,AC0
011103: 2209             MOV AC0,AR1
011105: 8e59bd180890     MOV dbl(*+AR2),AC0 || AADD AR1,AR3
01110b: eb7908           MOV AC0,dbl(*+AR3)
01110e: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011114: ed04af           MOV dbl(@#02h),XAR2
011117: f9000308         MOV @#00h << #3,AC0
01111b: 2209             MOV AC0,AR1
01111d: 8e5dbd180890     MOV dbl(*(AR2+AR0B)),AC0 || AADD AR1,AR3
011123: eb7d08           MOV AC0,dbl(*(AR3+AR0B))
011126: 3c04             MOV #0,T0
011128:               $C$L13:
011128: 4e05             AADD #5,SP
01112a: 4804             RET
01112c:               _IRQ_getConfig:
01112c: 4efb             AADD #-5,SP
01112e: eb0485           MOV XAR0,dbl(@#02h)
011131: c400             MOV T0,@#00h
011133: ed04bf           MOV dbl(@#02h),XAR3
011136: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01113a: 121c04           CMPU AC1 != AC0, TC1
01113d: 62e4             BCC $C$L14,TC1
01113f: 3e64             MOV #-6,T0
011141: 06006c           B $C$L16
011144:               $C$L14:
011144: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01114a: 12a894           CMPU AR2 >= AR1, TC1
01114d: 62e4             BCC $C$L15,TC1
01114f: 3e64             MOV #-6,T0
011151: 06005c           B $C$L16
011154:               $C$L15:
011154: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01115a: ed04af           MOV dbl(@#02h),XAR2
01115d: f9000308         MOV @#00h << #3,AC0
011161: 2204             MOV AC0,T0
011163: 807d00           MOV dbl(*AR3(AR0)),dbl(*AR2)
011166: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01116c: f9000308         MOV @#00h << #3,AC0
011170: 2209             MOV AC0,AR1
011172: 1490b0           AADD AR1,AR3
011175: ed7508           MOV dbl(*(AR3-T1)),AC0
011178: ed04bf           MOV dbl(@#02h),XAR3
01117b: eb7508           MOV AC0,dbl(*(AR3-T1))
01117e: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011184: f9000308         MOV @#00h << #3,AC0
011188: 2209             MOV AC0,AR1
01118a: 1490b0           AADD AR1,AR3
01118d: ed7908           MOV dbl(*+AR3),AC0
011190: ed04bf           MOV dbl(@#02h),XAR3
011193: eb7908           MOV AC0,dbl(*+AR3)
011196: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01119c: f9000308         MOV @#00h << #3,AC0
0111a0: 2209             MOV AC0,AR1
0111a2: 1490b0           AADD AR1,AR3
0111a5: ed7d08           MOV dbl(*(AR3+AR0B)),AC0
0111a8: ed04bf           MOV dbl(@#02h),XAR3
0111ab: eb7d08           MOV AC0,dbl(*(AR3+AR0B))
0111ae: 3c04             MOV #0,T0
0111b0:               $C$L16:
0111b0: 4e05             AADD #5,SP
0111b2: 4804             RET
0111b4:               _IRQ_disable:
0111b4: 4efb             AADD #-5,SP
0111b6: c400             MOV T0,@#00h
0111b8: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0111be: 12a894           CMPU AR2 >= AR1, TC1
0111c1: 62e4             BCC $C$L17,TC1
0111c3: 3e64             MOV #-6,T0
0111c5: 060066           B $C$L20
0111c8:               $C$L17:
0111c8: c902             MOV AR1,@#01h
0111ca: 0802b1           CALL _IRQ_globalDisable
0111cd: c406             MOV T0,@#03h
0111cf: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
0111d3: 12a894           CMPU AR2 >= AR1, TC1
0111d6: 04642a           BCC $C$L18,TC1
0111d9: f702fff0         ADD #-16,@#01h
0111dd: df3105000045     MOV uns(*(#00045h)),AC0
0111e3: a902             MOV @#01h,AR1
0111e5: 3495             NEG AR1,T1
0111e7: 5c05             SFTS AC0,T1,AC0
0111e9: 180100           AND #1,AC0,AC0
0111ec: c004             MOV AC0,@#02h
0111ee: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
0111f2: 5c05             SFTS AC0,T1,AC0
0111f4: 3609             NOT AC0,AR1
0111f6: d93109000045     AND *(#00045h),AR1,AC0
0111fc: c031000045       MOV AC0,*(#00045h)
011201: 4a24             B $C$L19
011203:               $C$L18:
011203: a902             MOV @#01h,AR1
011205: df3105000000     MOV uns(*(#00000h)),AC0
01120b: 3495             NEG AR1,T1
01120d: 5c05             SFTS AC0,T1,AC0
01120f: 180100           AND #1,AC0,AC0
011212: c004             MOV AC0,@#02h
011214: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
011218: 5c05             SFTS AC0,T1,AC0
01121a: 3609             NOT AC0,AR1
01121c: d93109000000     AND *(#00000h),AR1,AC0
011222: c031000000       MOV AC0,*(#00000h)
011227:               $C$L19:
011227: a406             MOV @#03h,T0
011229: 080284           CALL _IRQ_globalRestore
01122c: a404             MOV @#02h,T0
01122e:               $C$L20:
01122e: 4e05             AADD #5,SP
011230: 4804             RET
011232:               _IRQ_disableAll:
011232: e63100000000     MOV #0,*(#00000h)
011238: e63100000045     MOV #0,*(#00045h)
01123e: 4804             RET
011240:               _IRQ_enable:
011240: 4efb             AADD #-5,SP
011242: c400             MOV T0,@#00h
011244: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01124a: 12a894           CMPU AR2 >= AR1, TC1
01124d: 62e4             BCC $C$L21,TC1
01124f: 3e64             MOV #-6,T0
011251: 060072           B $C$L24
011254:               $C$L21:
011254: c902             MOV AR1,@#01h
011256: 080225           CALL _IRQ_globalDisable
011259: c406             MOV T0,@#03h
01125b: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
01125f: 12a894           CMPU AR2 >= AR1, TC1
011262: 046430           BCC $C$L22,TC1
011265: f702fff0         ADD #-16,@#01h
011269: df3105000045     MOV uns(*(#00045h)),AC0
01126f: a902             MOV @#01h,AR1
011271: 3495             NEG AR1,T1
011273: 5c05             SFTS AC0,T1,AC0
011275: 180100           AND #1,AC0,AC0
011278: c004             MOV AC0,@#02h
01127a: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
01127e: 5c05             SFTS AC0,T1,AC0
011280: 3609             NOT AC0,AR1
011282: d93199000045     AND *(#00045h),AR1,AR1
011288: 3c10             MOV #1,AC0
01128a: 5c05             SFTS AC0,T1,AC0
01128c: 2a90             OR AR1,AC0
01128e: c031000045       MOV AC0,*(#00045h)
011293: 4a2a             B $C$L23
011295:               $C$L22:
011295: a902             MOV @#01h,AR1
011297: df3105000000     MOV uns(*(#00000h)),AC0
01129d: 3495             NEG AR1,T1
01129f: 5c05             SFTS AC0,T1,AC0
0112a1: 180100           AND #1,AC0,AC0
0112a4: c004             MOV AC0,@#02h
0112a6: a502_3d10        MOV @#01h,T1 || MOV #1,AC0
0112aa: 5c05             SFTS AC0,T1,AC0
0112ac: 3609             NOT AC0,AR1
0112ae: d93199000000     AND *(#00000h),AR1,AR1
0112b4: 3c10             MOV #1,AC0
0112b6: 5c05             SFTS AC0,T1,AC0
0112b8: 2a90             OR AR1,AC0
0112ba: c031000000       MOV AC0,*(#00000h)
0112bf:               $C$L23:
0112bf: a406             MOV @#03h,T0
0112c1: 0801ec           CALL _IRQ_globalRestore
0112c4: a404             MOV @#02h,T0
0112c6:               $C$L24:
0112c6: 4e05             AADD #5,SP
0112c8: 4804             RET
0112ca:               _IRQ_restore:
0112ca: 4efb             AADD #-5,SP
0112cc: c502             MOV T1,@#01h
0112ce: c400             MOV T0,@#00h
0112d0: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0112d6: 12a894           CMPU AR2 >= AR1, TC1
0112d9: 62e4             BCC $C$L25,TC1
0112db: 3e64             MOV #-6,T0
0112dd: 060056           B $C$L28
0112e0:               $C$L25:
0112e0: c904             MOV AR1,@#02h
0112e2: 080199           CALL _IRQ_globalDisable
0112e5: c406             MOV T0,@#03h
0112e7: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
0112eb: 12a894           CMPU AR2 >= AR1, TC1
0112ee: 046422           BCC $C$L26,TC1
0112f1: f704fff0         ADD #-16,@#02h
0112f5: a504_3d10        MOV @#02h,T1 || MOV #1,AC0
0112f9: 5c05             SFTS AC0,T1,AC0
0112fb: aa02_3709        MOV @#01h,AR2 || NOT AC0,AR1
0112ff: d93199000045     AND *(#00045h),AR1,AR1
011305: 18010a           AND #1,AR2,AC0
011308: 5c05             SFTS AC0,T1,AC0
01130a: 2a90             OR AR1,AC0
01130c: c031000045       MOV AC0,*(#00045h)
011311: 4a1c             B $C$L27
011313:               $C$L26:
011313: a504_3d10        MOV @#02h,T1 || MOV #1,AC0
011317: 5c05             SFTS AC0,T1,AC0
011319: aa02_3709        MOV @#01h,AR2 || NOT AC0,AR1
01131d: d93199000000     AND *(#00000h),AR1,AR1
011323: 18010a           AND #1,AR2,AC0
011326: 5c05             SFTS AC0,T1,AC0
011328: 2a90             OR AR1,AC0
01132a: c031000000       MOV AC0,*(#00000h)
01132f:               $C$L27:
01132f: a406             MOV @#03h,T0
011331: 08017c           CALL _IRQ_globalRestore
011334: 3c04             MOV #0,T0
011336:               $C$L28:
011336: 4e05             AADD #5,SP
011338: 4804             RET
01133a:               _IRQ_getArg:
01133a: 4efb             AADD #-5,SP
01133c: eb0485           MOV XAR0,dbl(@#02h)
01133f: c400             MOV T0,@#00h
011341: ed04bf           MOV dbl(@#02h),XAR3
011344: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
011348: 121c04           CMPU AC1 != AC0, TC1
01134b: 6264             BCC $C$L29,TC1
01134d: 3e64             MOV #-6,T0
01134f: 4a29             B $C$L31
011351:               $C$L29:
011351: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
011357: 12a894           CMPU AR2 >= AR1, TC1
01135a: 6264             BCC $C$L30,TC1
01135c: 3e64             MOV #-6,T0
01135e: 4a1a             B $C$L31
011360:               $C$L30:
011360: ed31bf013610     MOV dbl(*(#013610h)),XAR3
011366: f9000308         MOV @#00h << #3,AC0
01136a: 2209             MOV AC0,AR1
01136c: ed04af           MOV dbl(@#02h),XAR2
01136f: 1490b0           AADD AR1,AR3
011372: 1402b4           AADD #2,AR3
011375: 806100           MOV dbl(*AR3),dbl(*AR2)
011378: 3c04             MOV #0,T0
01137a:               $C$L31:
01137a: 4e05             AADD #5,SP
01137c: 4804             RET
01137e:               _IRQ_setArg:
01137e: 4efb             AADD #-5,SP
011380: eb0408           MOV AC0,dbl(@#02h)
011383: c400             MOV T0,@#00h
011385: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01138b: 12a894           CMPU AR2 >= AR1, TC1
01138e: 6264             BCC $C$L32,TC1
011390: 3e64             MOV #-6,T0
011392: 4a17             B $C$L33
011394:               $C$L32:
011394: ed31bf013610     MOV dbl(*(#013610h)),XAR3
01139a: f9000308         MOV @#00h << #3,AC0
01139e: 2209             MOV AC0,AR1
0113a0: 8e04bd180890     MOV dbl(@#02h),AC0 || AADD AR1,AR3
0113a6: eb7508           MOV AC0,dbl(*(AR3-T1))
0113a9: 3c04             MOV #0,T0
0113ab:               $C$L33:
0113ab: 4e05             AADD #5,SP
0113ad: 4804             RET
0113af:               _IRQ_map:
0113af: 4eff             AADD #-1,SP
0113b1: c400             MOV T0,@#00h
0113b3: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
0113b9: 12a894           CMPU AR2 >= AR1, TC1
0113bc: 6264             BCC $C$L34,TC1
0113be: 3e64             MOV #-6,T0
0113c0: 4a15             B $C$L35
0113c2:               $C$L34:
0113c2: a500             MOV @#00h,T1
0113c4: 2254             MOV T1,T0
0113c6: 5040             SFTL T0,#1
0113c8: 3c10             MOV #1,AC0
0113ca: ec31be013612     AMAR *(#013612h),XAR3
0113d0: 5c05             SFTS AC0,T1,AC0
0113d2: eb6b08           MOV AC0,dbl(*AR3(AR0))
0113d5: 3c04             MOV #0,T0
0113d7:               $C$L35:
0113d7: 4e01             AADD #1,SP
0113d9: 4804             RET
0113db:               _IRQ_setVecs:
0113db: 4efb             AADD #-5,SP
0113dd: eb0008           MOV AC0,dbl(@#00h)
0113e0: 7affff0a         MOV #-1 << #16,AC0
0113e4: ed0018           MOV dbl(@#00h),AC1
0113e7: 7eff0000         OR #65280,AC0,AC0
0113eb: 2810             AND AC1,AC0
0113ed: 100738           SFTL AC0,#-8,AC0
0113f0: c006             MOV AC0,@#03h
0113f2: 080089           CALL _IRQ_globalDisable
0113f5: c404             MOV T0,@#02h
0113f7: a906             MOV @#03h,AR1
0113f9: c931000049       MOV AR1,*(#00049h)
0113fe: c93100004a       MOV AR1,*(#0004ah)
011403: 0800aa           CALL _IRQ_globalRestore
011406: 3c04             MOV #0,T0
011408: 4e05             AADD #5,SP
01140a: 4804             RET
01140c:               _IRQ_test:
01140c: 4ef9             AADD #-7,SP
01140e: eb0485           MOV XAR0,dbl(@#02h)
011411: c400             MOV T0,@#00h
011413: ed04bf           MOV dbl(@#02h),XAR3
011416: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01141a: 121c04           CMPU AC1 != AC0, TC1
01141d: 62e4             BCC $C$L36,TC1
01141f: 3e64             MOV #-6,T0
011421: 060056           B $C$L40
011424:               $C$L36:
011424: 76001fa8_2349    MOV #31,AR2 || MOV T0,AR1
01142a: 12a894           CMPU AR2 >= AR1, TC1
01142d: 62e4             BCC $C$L37,TC1
01142f: 3e64             MOV #-6,T0
011431: 060046           B $C$L40
011434:               $C$L37:
011434: c908             MOV AR1,@#04h
011436: 080045           CALL _IRQ_globalDisable
011439: c40a             MOV T0,@#05h
01143b: a900_3dfa        MOV @#00h,AR1 || MOV #15,AR2
01143f: 12a894           CMPU AR2 >= AR1, TC1
011442: 04641a           BCC $C$L38,TC1
011445: f708fff0         ADD #-16,@#04h
011449: a908             MOV @#04h,AR1
01144b: ed04bf           MOV dbl(@#02h),XAR3
01144e: df3105000046     MOV uns(*(#00046h)),AC0
011454: 3495             NEG AR1,T1
011456: 5c05             SFTS AC0,T1,AC0
011458: 180100           AND #1,AC0,AC0
01145b: c061             MOV AC0,*AR3
01145d: 4a14             B $C$L39
01145f:               $C$L38:
01145f: a908             MOV @#04h,AR1
011461: ed04bf           MOV dbl(@#02h),XAR3
011464: df3105000001     MOV uns(*(#00001h)),AC0
01146a: 3495             NEG AR1,T1
01146c: 5c05             SFTS AC0,T1,AC0
01146e: 180100           AND #1,AC0,AC0
011471: c061             MOV AC0,*AR3
011473:               $C$L39:
011473: a40a             MOV @#05h,T0
011475: 080038           CALL _IRQ_globalRestore
011478: 3c04             MOV #0,T0
01147a:               $C$L40:
01147a: 4e07             AADD #7,SP
01147c: 4804             RET
01147e:               _IRQ_globalDisable:
01147e: 4eff             AADD #-1,SP
011480: a931000003       MOV *(#00003h),AR1
011485: 7d080009         AND #2048,AR1,AC0
011489: 100535           SFTS AC0,#-11,AC0
01148c: c000             MOV AC0,@#00h
01148e: 20               NOP
01148f: 46b3             BSET ST1_INTM
011491: 2204             MOV AC0,T0
011493: 4e01             AADD #1,SP
011495: 4804             RET
011497:               _IRQ_globalEnable:
011497: 4eff             AADD #-1,SP
011499: a931000003       MOV *(#00003h),AR1
01149e: 7d080009         AND #2048,AR1,AC0
0114a2: 100535           SFTS AC0,#-11,AC0
0114a5: c000             MOV AC0,@#00h
0114a7: 20               NOP
0114a8: 46b2             BCLR ST1_INTM
0114aa: 2204             MOV AC0,T0
0114ac: 4e01             AADD #1,SP
0114ae: 4804             RET
0114b0:               _IRQ_globalRestore:
0114b0: 4eff             AADD #-1,SP
0114b2: c400             MOV T0,@#00h
0114b4: 2249             MOV T0,AR1
0114b6: 6289             BCC $C$L41,AR1 == #0
0114b8: 20               NOP
0114b9: 46b3             BSET ST1_INTM
0114bb: 4a03             B $C$L42
0114bd:               $C$L41:
0114bd: 20               NOP
0114be: 46b2             BCLR ST1_INTM
0114c0:               $C$L42:
0114c0: 4e01             AADD #1,SP
0114c2: 4804             RET
0114c4:               _free:
0114c4: 50d5             PSHBOTH XAR5
0114c6: 20               NOP
0114c7: 20               NOP
0114c8: 20               NOP
0114c9: ec01de           AMAR *AR0,XAR5
0114cc: 90d0             MOV XAR5,AC0
0114ce: 6d0000ba         BCC #0x01158c,AC0 == #0
0114d2: ed310801369a     MOV dbl(*(#01369ah)),AC0
0114d8: 9200             CALL AC0
0114da: 1402d6           ASUB #2,AR5
0114dd: 90d3             MOV XAR5,AC3
0114df: ed31bf013694     MOV dbl(*(#013694h)),XAR3
0114e5: 1a0013           OR #0,AC3,AC1
0114e8: 90b0             MOV XAR3,AC0
0114ea: 1a0020           OR #0,AC0,AC2
0114ed: 122814           CMPU AC2 >= AC1, TC1
0114f0: 046412           BCC #0x011505,TC1
0114f3: 900b             MOV AC0,XAR3
0114f5: ed75af           MOV dbl(*(AR3-T1)),XAR2
0114f8: 90a0             MOV XAR2,AC0
0114fa: 1a0020           OR #0,AC0,AC2
0114fd: 122414           CMPU AC2 < AC1, TC1
011500: 0464f0           BCC #0x0114f3,TC1
011503: 4a06             B #0x01150b
011505: ec31be000000     AMAR *(#00000h),XAR3
01150b: 903a             MOV AC3,XAR2
01150d: a941             MOV *AR2,AR1
01150f: 7dfffec9         AND #65534,AR1,AR4
011513: 7dffff2c         AND #65535,AR4,AC2
011517: 2412             ADD AC1,AC2
011519: 1a0010           OR #0,AC0,AC1
01151c: 122014           CMPU AC2 == AC1, TC1
01151f: eb5508_9e74      XCC !TC1 || MOV AC0,dbl(*(AR2-T1))
011524: 04741d           BCC #0x011544,!TC1
011527: 900a             MOV AC0,XAR2
011529: a941             MOV *AR2,AR1
01152b: ec0092           BCLR @#00h,AR1
01152e: 24c9             ADD AR4,AR1
011530: ed55cf           MOV dbl(*(AR2-T1)),XAR4
011533: 903a             MOV AC3,XAR2
011535: 7dfffe09         AND #65534,AR1,AC0
011539: c041             MOV AC0,*AR2
01153b: eb55c5           MOV XAR4,dbl(*(AR2-T1))
01153e: a941             MOV *AR2,AR1
011540: 7dfffec9         AND #65534,AR1,AR4
011544: 90b0             MOV XAR3,AC0
011546: 04002f           BCC #0x011578,AC0 == #0
011549: a961             MOV *AR3,AR1
01154b: 7dfffe99         AND #65534,AR1,AR1
01154f: 7dffff19         AND #65535,AR1,AC1
011553: 2401             ADD AC0,AC1
011555: 1a0003           OR #0,AC3,AC0
011558: 121004           CMPU AC1 == AC0, TC1
01155b: 9039_9ef4        XCCPART !TC1 || MOV AC3,XAR1
01155f: eb7595_9e74      XCC !TC1 || MOV XAR1,dbl(*(AR3-T1))
011564: 047419           BCC #0x011580,!TC1
011567: 903a             MOV AC3,XAR2
011569: 24c9             ADD AR4,AR1
01156b: ec0092           BCLR @#00h,AR1
01156e: c961             MOV AR1,*AR3
011570: ed55af           MOV dbl(*(AR2-T1)),XAR2
011573: eb75a5           MOV XAR2,dbl(*(AR3-T1))
011576: 4a0c             B #0x011584
011578: 9039             MOV AC3,XAR1
01157a: eb3195013694     MOV XAR1,dbl(*(#013694h))
011580: 903b             MOV AC3,XAR3
011582: cc61             MOV AR4,*AR3
011584: ed310801369c     MOV dbl(*(#01369ch)),AC0
01158a: 9200             CALL AC0
01158c: 50d4             POPBOTH XAR5
01158e: 4804             RET
011590:               _minit:
011590: ed310801369a     MOV dbl(*(#01369ah)),AC0
011596: 4eff             AADD #-1,SP
011598: 9200             CALL AC0
01159a: ec31be004000     AMAR *(#04000h),XAR3
0115a0: 18019b           AND #1,AR3,AR1
0115a3: 7a00000a         MOV #0 << #16,AC0
0115a7: 90b1             MOV XAR3,AC1
0115a9: 7e600000         OR #24576,AC0,AC0
0115ad: 5001             SFTL AC0,#-1
0115af: 2690             SUB AR1,AC0
0115b1: 7dffff09_230a    AND #65535,AR1,AC0 || MOV AC0,AR2
0115b7: ca31013698       MOV AR2,*(#013698h)
0115bc: 2410             ADD AC1,AC0
0115be: 900c             MOV AC0,XAR4
0115c0: 7dffff09         AND #65535,AR1,AC0
0115c4: 2410             ADD AC1,AC0
0115c6: 900b             MOV AC0,XAR3
0115c8: e63100013699     MOV #0,*(#013699h)
0115ce: eb31c5013694     MOV XAR4,dbl(*(#013694h))
0115d4: 7dfffe0a         AND #65534,AR2,AC0
0115d8: eb31c5013696     MOV XAR4,dbl(*(#013696h))
0115de: c061             MOV AC0,*AR3
0115e0: ec31ae7fffff     AMAR *(#07fffffh),XAR2
0115e6: ed310801369c     MOV dbl(*(#01369ch)),AC0
0115ec: eb75a5           MOV XAR2,dbl(*(AR3-T1))
0115ef: 9200             CALL AC0
0115f1: 4e01             AADD #1,SP
0115f3: 4804             RET
0115f5:               _malloc:
0115f5: 5066             PSH T2
0115f7: 4efe             AADD #-2,SP
0115f9: 04045e           BCC #0x01165a,T0 == #0
0115fc: 3c49             MOV #4,AR1
0115fe: 7b000264         ADD #2,T0,T2
011602: ed310801369a     MOV dbl(*(#01369ah)),AC0
011608: 129464_21        CMPU AR1 < T2, TC1 || NOP
01160c: 3c46_9ef4        XCCPART !TC1 || MOV #4,T2
011610: 180196           AND #1,T2,AR1
011613: 2496             ADD AR1,T2
011615: 9200             CALL AC0
011617: a931013699       MOV *(#013699h),AR1
01161c: 6189             BCC #0x011621,AR1 == #0
01161e: 08ff6f           CALL _minit
011621: ed31bf013694     MOV dbl(*(#013694h)),XAR3
011627: eb00b5           MOV XAR3,dbl(@#00h)
01162a: 20               NOP
01162b: 20               NOP
01162c: 20               NOP
01162d: ec31be000000     AMAR *(#00000h),XAR3
011633: 4a0c             B #0x011641
011635: ed00bf           MOV dbl(@#00h),XAR3
011638: ed75af           MOV dbl(*(AR3-T1)),XAR2
01163b: eb00a5           MOV XAR2,dbl(@#00h)
01163e: 20               NOP
01163f: 20               NOP
011640: 20               NOP
011641: ec31ae7fffff     AMAR *(#07fffffh),XAR2
011647: ed0008           MOV dbl(@#00h),AC0
01164a: 90a1             MOV XAR2,AC1
01164c: 120c14           CMPU AC0 != AC1, TC1
01164f: 046411           BCC #0x011663,TC1
011652: ed310801369c     MOV dbl(*(#01369ch)),AC0
011658: 9200             CALL AC0
01165a: ec318e000000     AMAR *(#00000h),XAR0
011660: 060081           B #0x0116e4
011663: ed00af           MOV dbl(@#00h),XAR2
011666: a941             MOV *AR2,AR1
011668: 7dfffe99         AND #65534,AR1,AR1
01166c: 129464_21        CMPU AR1 < T2, TC1 || NOP
011670: 0464c2           BCC #0x011635,TC1
011673: 7b0004a6         ADD #4,T2,AR2
011677: 12a494_21        CMPU AR2 < AR1, TC1 || NOP
01167b: 046424           BCC #0x0116a2,TC1
01167e: 90b0             MOV XAR3,AC0
011680: 6710             BCC #0x011690,AC0 != #0
011682: ed00bf           MOV dbl(@#00h),XAR3
011685: ed75bf           MOV dbl(*(AR3-T1)),XAR3
011688: eb31b5013694     MOV XAR3,dbl(*(#013694h))
01168e: 4a09             B #0x011699
011690: ed00af           MOV dbl(@#00h),XAR2
011693: ed55af           MOV dbl(*(AR2-T1)),XAR2
011696: eb75a5           MOV XAR2,dbl(*(AR3-T1))
011699: ed00bf           MOV dbl(@#00h),XAR3
01169c: f5610001         OR #1,*AR3
0116a0: 4a34             B #0x0116d6
0116a2: ed00af           MOV dbl(@#00h),XAR2
0116a5: ed00cf           MOV dbl(@#00h),XAR4
0116a8: 7dffff06         AND #65535,T2,AC0
0116ac: 90a1             MOV XAR2,AC1
0116ae: 2410             ADD AC1,AC0
0116b0: 900a             MOV AC0,XAR2
0116b2: ed95cf           MOV dbl(*(AR4-T1)),XAR4
0116b5: 90b0             MOV XAR3,AC0
0116b7: eb55c5           MOV XAR4,dbl(*(AR2-T1))
0116ba: eb75a5_9e10      XCC AC0 != #0 || MOV XAR2,dbl(*(AR3-T1))
0116bf: ed00bf           MOV dbl(@#00h),XAR3
0116c2: 2669             SUB T2,AR1
0116c4: ec0092           BCLR @#00h,AR1
0116c7: c941_1b0196      MOV AR1,*AR2 || OR #1,T2,AR1
0116cc: 9600             XCC AC0 == #0
0116ce: eb31a5013694     MOV XAR2,dbl(*(#013694h))
0116d4: c961             MOV AR1,*AR3
0116d6: ed310801369c     MOV dbl(*(#01369ch)),AC0
0116dc: 9200             CALL AC0
0116de: ed008f           MOV dbl(@#00h),XAR0
0116e1: 140284           AADD #2,AR0
0116e4: 4e02             AADD #2,SP
0116e6: 5062             POP T2
0116e8: 4804             RET
0116ea:               _realloc:
0116ea: 5066             PSH T2
0116ec: 50d5             PSHBOTH XAR5
0116ee: 20               NOP
0116ef: 20               NOP
0116f0: 50f5             PSHBOTH XAR7
0116f2: ec01de_2346      AMAR *AR0,XAR5 || MOV T0,T2
0116f7: 4efc             AADD #-4,SP
0116f9: 6616             BCC #0x011707,T2 != #0
0116fb: 08fdc6           CALL _free
0116fe: ec318e000000     AMAR *(#00000h),XAR0
011704: 06018a           B #0x011891
011707: 90d0             MOV XAR5,AC0
011709: 6310             BCC #0x011711,AC0 != #0
01170b: 08fee7           CALL _malloc
01170e: 060180           B #0x011891
011711: 4026             ADD #2,T2
011713: 3c49             MOV #4,AR1
011715: eca1be_139464    AMAR *AR5,XAR3 || CMPU AR1 < T2, TC1
01171b: 3c46_9ef4        XCCPART !TC1 || MOV #4,T2
01171f: 1402b6_190196    ASUB #2,AR3 || AND #1,T2,AR1
011725: a961_2596        MOV *AR3,AR1 || ADD AR1,T2
011729: 90b1             MOV XAR3,AC1
01172b: 7dfffe09         AND #65534,AR1,AC0
01172f: eb04b5_2510      MOV XAR3,dbl(@#02h) || ADD AC1,AC0
011734: eb0008           MOV AC0,dbl(@#00h)
011737: ed310801369a     MOV dbl(*(#01369ah)),AC0
01173d: 9200             CALL AC0
01173f: ed04bf           MOV dbl(@#02h),XAR3
011742: a961             MOV *AR3,AR1
011744: 7dfffe99         AND #65534,AR1,AR1
011748: 129864_21        CMPU AR1 >= T2, TC1 || NOP
01174c: 046434           BCC #0x011783,TC1
01174f: ed31bf013696     MOV dbl(*(#013696h)),XAR3
011755: df3115013698     MOV uns(*(#013698h)),AC1
01175b: 90b0             MOV XAR3,AC0
01175d: ed0008_2501      MOV dbl(@#00h),AC0 || ADD AC0,AC1
011762: 120814           CMPU AC0 >= AC1, TC1
011765: 6d6400f7         BCC #0x011860,TC1
011769: ed00bf           MOV dbl(@#00h),XAR3
01176c: aa61             MOV *AR3,AR2
01176e: ec00a8           BTST @#00h,AR2,TC1
011771: 6d6400eb         BCC #0x011860,TC1
011775: 7dfffeaa         AND #65534,AR2,AR2
011779: 249a             ADD AR1,AR2
01177b: 12a464_21        CMPU AR2 < T2, TC1 || NOP
01177f: 6d6400dd         BCC #0x011860,TC1
011783: ed31bf013694     MOV dbl(*(#013694h)),XAR3
011789: 90b0             MOV XAR3,AC0
01178b: ed0418_1b0020    MOV dbl(@#02h),AC1 || OR #0,AC0,AC2
011791: 122814           CMPU AC2 >= AC1, TC1
011794: 046415           BCC #0x0117ac,TC1
011797: 900b             MOV AC0,XAR3
011799: ed75af           MOV dbl(*(AR3-T1)),XAR2
01179c: 90a0             MOV XAR2,AC0
01179e: ed0418_1b0020    MOV dbl(@#02h),AC1 || OR #0,AC0,AC2
0117a4: 122414           CMPU AC2 < AC1, TC1
0117a7: 0464ed           BCC #0x011797,TC1
0117aa: 4a06             B #0x0117b2
0117ac: ec31be000000     AMAR *(#00000h),XAR3
0117b2: ed04af           MOV dbl(@#02h),XAR2
0117b5: a941             MOV *AR2,AR1
0117b7: 7dfffe99         AND #65534,AR1,AR1
0117bb: 7dffff29         AND #65535,AR1,AC2
0117bf: 2412             ADD AC1,AC2
0117c1: 1a0010           OR #0,AC0,AC1
0117c4: 121024           CMPU AC1 == AC2, TC1
0117c7: 046423           BCC #0x0117ed,TC1
0117ca: 2669_3d4a        SUB T2,AR1 || MOV #4,AR2
0117ce: 1294a4_21        CMPU AR1 < AR2, TC1 || NOP
0117d2: 04647e           BCC #0x011853,TC1
0117d5: ed04af           MOV dbl(@#02h),XAR2
0117d8: 7dffff16         AND #65535,T2,AC1
0117dc: 90a2             MOV XAR2,AC2
0117de: 2421             ADD AC2,AC1
0117e0: 901a             MOV AC1,XAR2
0117e2: 7dfffe19         AND #65534,AR1,AC1
0117e6: eb5508           MOV AC0,dbl(*(AR2-T1))
0117e9: c141             MOV AC1,*AR2
0117eb: 4a32             B #0x01181f
0117ed: 900a             MOV AC0,XAR2
0117ef: aa41             MOV *AR2,AR2
0117f1: ec00a2           BCLR @#00h,AR2
0117f4: 249a             ADD AR1,AR2
0117f6: 22a9             MOV AR2,AR1
0117f8: 7b0004a6         ADD #4,T2,AR2
0117fc: 12a894_21        CMPU AR2 >= AR1, TC1 || NOP
011800: 04642f           BCC #0x011832,TC1
011803: 900a             MOV AC0,XAR2
011805: ed55cf           MOV dbl(*(AR2-T1)),XAR4
011808: ed04af           MOV dbl(@#02h),XAR2
01180b: 7dffff06         AND #65535,T2,AC0
01180f: 90a1             MOV XAR2,AC1
011811: 2410             ADD AC1,AC0
011813: 900a             MOV AC0,XAR2
011815: 2669             SUB T2,AR1
011817: ec0092           BCLR @#00h,AR1
01181a: c941             MOV AR1,*AR2
01181c: eb55c5           MOV XAR4,dbl(*(AR2-T1))
01181f: 90b0             MOV XAR3,AC0
011821: 9600             XCC AC0 == #0
011823: eb31a5013694     MOV XAR2,dbl(*(#013694h))
011829: eb75a5_9e10      XCC AC0 != #0 || MOV XAR2,dbl(*(AR3-T1))
01182e: 4a19_2369        B #0x01184b || MOV T2,AR1
011832: 90b1             MOV XAR3,AC1
011834: 6691             BCC #0x011843,AC1 != #0
011836: 900b             MOV AC0,XAR3
011838: ed75bf           MOV dbl(*(AR3-T1)),XAR3
01183b: eb31b5013694     MOV XAR3,dbl(*(#013694h))
011841: 4a08             B #0x01184b
011843: 900a             MOV AC0,XAR2
011845: ed55af           MOV dbl(*(AR2-T1)),XAR2
011848: eb75a5           MOV XAR2,dbl(*(AR3-T1))
01184b: ed04bf           MOV dbl(@#02h),XAR3
01184e: 1a0199           OR #1,AR1,AR1
011851: c961             MOV AR1,*AR3
011853: ed310801369c     MOV dbl(*(#01369ch)),AC0
011859: 9200             CALL AC0
01185b: eca18e           AMAR *AR5,XAR0
01185e: 4a31             B #0x011891
011860: ed310801369c     MOV dbl(*(#01369ch)),AC0
011866: 9200             CALL AC0
011868: 2264             MOV T2,T0
01186a: 08fd88           CALL _malloc
01186d: ec01fe           AMAR *AR0,XAR7
011870: 90f0             MOV XAR7,AC0
011872: 040019           BCC #0x01188e,AC0 == #0
011875: ed04bf           MOV dbl(@#02h),XAR3
011878: a961             MOV *AR3,AR1
01187a: ec0092           BCLR @#00h,AR1
01187d: 7c000249         SUB #2,AR1,T0
011881: eca19e           AMAR *AR5,XAR1
011884: 6c0129f6         CALL _memcpy
011888: eca18e           AMAR *AR5,XAR0
01188b: 08fc36           CALL _free
01188e: ece18e           AMAR *AR7,XAR0
011891: 4e04             AADD #4,SP
011893: 50f4             POPBOTH XAR7
011895: 50d4             POPBOTH XAR5
011897: 5062             POP T2
011899: 4804             RET
01189b:               _max_free:
01189b: 5066             PSH T2
01189d: ed310801369a     MOV dbl(*(#01369ah)),AC0
0118a3: 9200             CALL AC0
0118a5: a931013699       MOV *(#013699h),AR1
0118aa: ed31bf013694     MOV dbl(*(#013694h)),XAR3
0118b0: 3c06             MOV #0,T2
0118b2: 90b0             MOV XAR3,AC0
0118b4: 041930           BCC #0x0118e7,AR1 != #0
0118b7: ec31be7fffff     AMAR *(#07fffffh),XAR3
0118bd: 1a0020           OR #0,AC0,AC2
0118c0: 90b1             MOV XAR3,AC1
0118c2: 122014           CMPU AC2 == AC1, TC1
0118c5: 04641f           BCC #0x0118e7,TC1
0118c8: 900b             MOV AC0,XAR3
0118ca: a961             MOV *AR3,AR1
0118cc: ec0092           BCLR @#00h,AR1
0118cf: 4229             SUB #2,AR1
0118d1: 126894_21        CMPU T2 >= AR1, TC1 || NOP
0118d5: ed75bf           MOV dbl(*(AR3-T1)),XAR3
0118d8: 2296_9ef4        XCCPART !TC1 || MOV AR1,T2
0118dc: 90b0             MOV XAR3,AC0
0118de: 1a0020           OR #0,AC0,AC2
0118e1: 122c14           CMPU AC2 != AC1, TC1
0118e4: 0464e1           BCC #0x0118c8,TC1
0118e7: ed310801369c     MOV dbl(*(#01369ch)),AC0
0118ed: 9200             CALL AC0
0118ef: 2264             MOV T2,T0
0118f1: 5062             POP T2
0118f3: 4804             RET
0118f5:               _free_memory:
0118f5: 5066             PSH T2
0118f7: ed310801369a     MOV dbl(*(#01369ah)),AC0
0118fd: 9200             CALL AC0
0118ff: a931013699       MOV *(#013699h),AR1
011904: ed31bf013694     MOV dbl(*(#013694h)),XAR3
01190a: 3c06             MOV #0,T2
01190c: 90b0             MOV XAR3,AC0
01190e: 04192c           BCC #0x01193d,AR1 != #0
011911: ec31be7fffff     AMAR *(#07fffffh),XAR3
011917: 1a0020           OR #0,AC0,AC2
01191a: 90b1             MOV XAR3,AC1
01191c: 122014           CMPU AC2 == AC1, TC1
01191f: 04641b           BCC #0x01193d,TC1
011922: 900b             MOV AC0,XAR3
011924: a961             MOV *AR3,AR1
011926: ed75bf           MOV dbl(*(AR3-T1)),XAR3
011929: 90b0             MOV XAR3,AC0
01192b: ec0092_1b0020    BCLR @#00h,AR1 || OR #0,AC0,AC2
011931: 122c14_2569      CMPU AC2 != AC1, TC1 || ADD T2,AR1
011936: 7c000269         SUB #2,AR1,T2
01193a: 0464e5           BCC #0x011922,TC1
01193d: ed310801369c     MOV dbl(*(#01369ch)),AC0
011943: 9200             CALL AC0
011945: 2264             MOV T2,T0
011947: 5062             POP T2
011949: 4804             RET
01194b:               _chkheap:
01194b: ec318e000000     AMAR *(#00000h),XAR0
011951: 4804             RET
011953:               _calloc:
011953: 5250             MOV T1,HI(AC0)
011955: 5800             MPY T0,AC0,AC0
011957: 2206_5166        MOV AC0,T2 || PSH T2
01195b: 2264             MOV T2,T0
01195d: 08fc95           CALL _malloc
011960: 9080             MOV XAR0,AC0
011962: 040010           BCC #0x011975,AC0 == #0
011965: ec01be           AMAR *AR0,XAR3
011968: 6586             BCC #0x011975,T2 == #0
01196a: 7c000196         SUB #1,T2,AR1
01196e: 529c             MOV AR1,CSR
011970: 4800             RPT CSR
011972: e66300              MOV #0,*AR3+
011975: 5062             POP T2
011977: 4804             RET
011979:               _sonar_test:
011979: 6c0124d9         CALL _coverage_log
01197d: 4edf             AADD #-33,SP
01197f: c404             MOV T0,@#02h
011981: eb0085           MOV XAR0,dbl(@#00h)
011984: 3c00             MOV #0,AC0
011986: eb0808           MOV AC0,dbl(@#04h)
011989: eb0c08           MOV AC0,dbl(@#06h)
01198c: e61200           MOV #0,@#09h
01198f: e61600           MOV #0,@#0bh
011992: e61800           MOV #0,@#0ch
011995: ec31be026d78     AMAR *(#026d78h),XAR3
01199b: ec1aae_4d05      AMAR @#0dh,XAR2 || RPT #5
0119a0:               $C$L1:
0119a0:               $C$DW$L$_sonar_test$2$B:
0119a0: 806514              MOV *AR3+,*AR2+
0119a3:               $C$DW$L$_sonar_test$2$E:
0119a3:               $C$L2:
0119a3: ec31be026d7c     AMAR *(#026d7ch),XAR3
0119a9: ec26ae_4d05      AMAR @#13h,XAR2 || RPT #5
0119ae:               $C$L3:
0119ae:               $C$DW$L$_sonar_test$4$B:
0119ae: 806514              MOV *AR3+,*AR2+
0119b1:               $C$DW$L$_sonar_test$4$E:
0119b1:               $C$L4:
0119b1: e61000           MOV #0,@#08h
0119b4: a904             MOV @#02h,AR1
0119b6: aa10             MOV @#08h,AR2
0119b8: 12a890           CMP AR2 >= AR1, TC1
0119bb: 046437           BCC $C$DW$L$_sonar_test$8$E,TC1
0119be: 6c0124d9         CALL _coverage_log
0119c2:               $C$L5:
0119c2: 6c0124d9         CALL _coverage_log
0119c6:               $C$DW$L$_sonar_test$6$B:
0119c6: 22a4             MOV AR2,T0
0119c8: ed00bf           MOV dbl(@#00h),XAR3
0119cb: 767fffa8         MOV #32767,AR2
0119cf: a96b             MOV *AR3(AR0),AR1
0119d1: 1294a0           CMP AR1 < AR2, TC1
0119d4: 64e4             BCC $C$L6,TC1
0119d6: 6c0124d9         CALL _coverage_log
0119da:               $C$DW$L$_sonar_test$6$E:
0119da: 3e14             MOV #-1,T0
0119dc: 0601d4           B $C$L23
0119df:               $C$L6:
0119df: 6c0124d9         CALL _coverage_log
0119e3:               $C$DW$L$_sonar_test$8$B:
0119e3: f7100001         ADD #1,@#08h
0119e7: a904             MOV @#02h,AR1
0119e9: aa10             MOV @#08h,AR2
0119eb: 12a490           CMP AR2 < AR1, TC1
0119ee: 0464d1           BCC $C$L5,TC1
0119f1: 6c0124d9         CALL _coverage_log
0119f5:               $C$DW$L$_sonar_test$8$E:
0119f5:               $C$L7:
0119f5: 6c0124d9         CALL _coverage_log
0119f9: 760046a8         MOV #70,AR2
0119fd: 1298a0           CMP AR1 >= AR2, TC1
011a00: 64e4             BCC $C$L8,TC1
011a02: 6c0124d9         CALL _coverage_log
011a06: 3e14             MOV #-1,T0
011a08: 0601a8           B $C$L23
011a0b:               $C$L8:
011a0b: 6c0124d9         CALL _coverage_log
011a0f: 76004448         MOV #68,T0
011a13: 6c011953_3d15    CALL _calloc || MOV #1,T1
011a19: eb3485           MOV XAR0,dbl(@#1ah)
011a1c: 76004048         MOV #64,T0
011a20: 6c011953_3d15    CALL _calloc || MOV #1,T1
011a26: eb3885           MOV XAR0,dbl(@#1ch)
011a29: 3c84             MOV #8,T0
011a2b: 6c011953_3d15    CALL _calloc || MOV #1,T1
011a31: eb3c85           MOV XAR0,dbl(@#1eh)
011a34: ed00bf           MOV dbl(@#00h),XAR3
011a37: ed34af           MOV dbl(@#1ah),XAR2
011a3a: 4c3f             RPT #63
011a3c:               $C$L9:
011a3c:               $C$DW$L$_sonar_test$12$B:
011a3c: 806514              MOV *AR3+,*AR2+
011a3f:               $C$DW$L$_sonar_test$12$E:
011a3f:               $C$L10:
011a3f: ed3c8f           MOV dbl(@#1eh),XAR0
011a42: 3c04             MOV #0,T0
011a44: 6c012b49_3d85    CALL _memset || MOV #8,T1
011a4a: ec1a9e           AMAR @#0dh,XAR1
011a4d: 76004048         MOV #64,T0
011a51: ed38af           MOV dbl(@#1ch),XAR2
011a54: ed3cbf           MOV dbl(@#1eh),XAR3
011a57: ed348f           MOV dbl(@#1ah),XAR0
011a5a: 6c012839_3d65    CALL _fir || MOV #6,T1
011a60: c418             MOV T0,@#0ch
011a62: 2249             MOV T0,AR1
011a64: 04091e           BCC $C$L11,AR1 == #0
011a67: 6c0124d9         CALL _coverage_log
011a6b: ed348f           MOV dbl(@#1ah),XAR0
011a6e: 6c0114c4         CALL _free
011a72: ed388f           MOV dbl(@#1ch),XAR0
011a75: 6c0114c4         CALL _free
011a79: ed3c8f           MOV dbl(@#1eh),XAR0
011a7c: 6c0114c4         CALL _free
011a80: 3c14             MOV #1,T0
011a82: 06012e           B $C$L23
011a85:               $C$L11:
011a85: 6c0124d9         CALL _coverage_log
011a89: ed38bf           MOV dbl(@#1ch),XAR3
011a8c: ed34af           MOV dbl(@#1ah),XAR2
011a8f: 4c3f             RPT #63
011a91:               $C$L12:
011a91:               $C$DW$L$_sonar_test$16$B:
011a91: 806514              MOV *AR3+,*AR2+
011a94:               $C$DW$L$_sonar_test$16$E:
011a94:               $C$L13:
011a94: ed348f           MOV dbl(@#1ah),XAR0
011a97: ec269e           AMAR @#13h,XAR1
011a9a: ed38af           MOV dbl(@#1ch),XAR2
011a9d: 76003a58         MOV #58,T1
011aa1: 6c0129b4_3d64    CALL _convol || MOV #6,T0
011aa7: c418             MOV T0,@#0ch
011aa9: e61000           MOV #0,@#08h
011aac: 76003aa8         MOV #58,AR2
011ab0: a910             MOV @#08h,AR1
011ab2: 1298a0           CMP AR1 >= AR2, TC1
011ab5: 046425           BCC $C$DW$L$_sonar_test$18$E,TC1
011ab8: 6c0124d9         CALL _coverage_log
011abc:               $C$L14:
011abc: 6c0124d9         CALL _coverage_log
011ac0:               $C$DW$L$_sonar_test$18$B:
011ac0: 2294             MOV AR1,T0
011ac2: ed38bf           MOV dbl(@#1ch),XAR3
011ac5: a06b             MOV *AR3(AR0),AC0
011ac7: ed0800           ADD dbl(@#04h),AC0,AC0
011aca: eb0808           MOV AC0,dbl(@#04h)
011acd: f7100001         ADD #1,@#08h
011ad1: a910             MOV @#08h,AR1
011ad3: 1294a0           CMP AR1 < AR2, TC1
011ad6: 0464e3           BCC $C$L14,TC1
011ad9: 6c0124d9         CALL _coverage_log
011add:               $C$DW$L$_sonar_test$18$E:
011add:               $C$L15:
011add: 6c0124d9         CALL _coverage_log
011ae1: a104             MOV @#02h,AC1
011ae3: ed0808           MOV dbl(@#04h),AC0
011ae6: 6c012927         CALL __divli
011aea: eb0c08           MOV AC0,dbl(@#06h)
011aed: 7601f408         MOV #500,AC0
011af1: ed0c18           MOV dbl(@#06h),AC1
011af4: 121800           CMP AC1 >= AC0, TC1
011af7: 04641e           BCC $C$L16,TC1
011afa: 6c0124d9         CALL _coverage_log
011afe: ed348f           MOV dbl(@#1ah),XAR0
011b01: 6c0114c4         CALL _free
011b05: ed388f           MOV dbl(@#1ch),XAR0
011b08: 6c0114c4         CALL _free
011b0c: ed3c8f           MOV dbl(@#1eh),XAR0
011b0f: 6c0114c4         CALL _free
011b13: 3c14             MOV #1,T0
011b15: 06009b           B $C$L23
011b18:               $C$L16:
011b18: 6c0124d9         CALL _coverage_log
011b1c: ed38bf           MOV dbl(@#1ch),XAR3
011b1f: ed34af           MOV dbl(@#1ah),XAR2
011b22: 4c3f             RPT #63
011b24:               $C$L17:
011b24:               $C$DW$L$_sonar_test$22$B:
011b24: 806514              MOV *AR3+,*AR2+
011b27:               $C$DW$L$_sonar_test$22$E:
011b27:               $C$L18:
011b27: ed348f           MOV dbl(@#1ah),XAR0
011b2a: 76001e58         MOV #30,T1
011b2e: 6c012574_3d24    CALL _maxidx || MOV #2,T0
011b34: c414             MOV T0,@#0ah
011b36: 2249             MOV T0,AR1
011b38: 04591e           BCC $C$L19,AR1 >= #0
011b3b: 6c0124d9         CALL _coverage_log
011b3f: ed348f           MOV dbl(@#1ah),XAR0
011b42: 6c0114c4         CALL _free
011b46: ed388f           MOV dbl(@#1ch),XAR0
011b49: 6c0114c4         CALL _free
011b4d: ed3c8f           MOV dbl(@#1eh),XAR0
011b50: 6c0114c4         CALL _free
011b54: 3c14             MOV #1,T0
011b56: 06005a           B $C$L23
011b59:               $C$L19:
011b59: 6c0124d9         CALL _coverage_log
011b5d: ed38bf           MOV dbl(@#1ch),XAR3
011b60: ed34af           MOV dbl(@#1ah),XAR2
011b63: 4c3f             RPT #63
011b65:               $C$L20:
011b65:               $C$DW$L$_sonar_test$26$B:
011b65: 806514              MOV *AR3+,*AR2+
011b68:               $C$DW$L$_sonar_test$26$E:
011b68:               $C$L21:
011b68: ed348f           MOV dbl(@#1ah),XAR0
011b6b: 76004048         MOV #64,T0
011b6f: 080045           CALL _calculate_velocity
011b72: c416             MOV T0,@#0bh
011b74: f016ffff         CMP @#0bh == #-1, TC1
011b78: 04741d           BCC $C$L22,!TC1
011b7b: 6c0124d9         CALL _coverage_log
011b7f: ed348f           MOV dbl(@#1ah),XAR0
011b82: 6c0114c4         CALL _free
011b86: ed388f           MOV dbl(@#1ch),XAR0
011b89: 6c0114c4         CALL _free
011b8d: ed3c8f           MOV dbl(@#1eh),XAR0
011b90: 6c0114c4         CALL _free
011b94: 3c14             MOV #1,T0
011b96: 4a1b             B $C$L23
011b98:               $C$L22:
011b98: 6c0124d9         CALL _coverage_log
011b9c: ed348f           MOV dbl(@#1ah),XAR0
011b9f: 6c0114c4         CALL _free
011ba3: ed388f           MOV dbl(@#1ch),XAR0
011ba6: 6c0114c4         CALL _free
011baa: ed3c8f           MOV dbl(@#1eh),XAR0
011bad: 6c0114c4         CALL _free
011bb1: 3c04             MOV #0,T0
011bb3:               $C$L23:
011bb3: 4e21             AADD #33,SP
011bb5: 4804             RET
011bb7:               _calculate_velocity:
011bb7: 6c0124d9         CALL _coverage_log
011bbb: 4ee9             AADD #-23,SP
011bbd: c404             MOV T0,@#02h
011bbf: eb0085           MOV XAR0,dbl(@#00h)
011bc2: 76004048         MOV #64,T0
011bc6: 6c011953_3d15    CALL _calloc || MOV #1,T1
011bcc: eb0885           MOV XAR0,dbl(@#04h)
011bcf: 76004048         MOV #64,T0
011bd3: 6c011953_3d15    CALL _calloc || MOV #1,T1
011bd9: eb0c85           MOV XAR0,dbl(@#06h)
011bdc: 6c0127fb         CALL _rand
011be0: 3c1a             MOV #1,AR2
011be2: 36aa_2340        NOT AR2,AR2 || MOV T0,AC0
011be6: 76800090         BFXTR #32768,AC0,AR1
011bea: 2409             ADD AC0,AR1
011bec: 289a             AND AR1,AR2
011bee: 26a0             SUB AR2,AC0
011bf0: c010             MOV AC0,@#08h
011bf2: e61200           MOV #0,@#09h
011bf5: e61400           MOV #0,@#0ah
011bf8: 3c00             MOV #0,AC0
011bfa: eb1808           MOV AC0,dbl(@#0ch)
011bfd: e61c00           MOV #0,@#0eh
011c00: e61e00           MOV #0,@#0fh
011c03: ec31be026d80     AMAR *(#026d80h),XAR3
011c09: ec20ae_4d05      AMAR @#10h,XAR2 || RPT #5
011c0e:               $C$L24:
011c0e:               $C$DW$L$_calculate_velocity$2$B:
011c0e: 806514              MOV *AR3+,*AR2+
011c11:               $C$DW$L$_calculate_velocity$2$E:
011c11:               $C$L25:
011c11: ed008f           MOV dbl(@#00h),XAR0
011c14: ec209e           AMAR @#10h,XAR1
011c17: ed08af           MOV dbl(@#04h),XAR2
011c1a: ed0cbf           MOV dbl(@#06h),XAR3
011c1d: 76004048         MOV #64,T0
011c21: 6c012839_3d65    CALL _fir || MOV #6,T1
011c27: c414             MOV T0,@#0ah
011c29: 2249             MOV T0,AR1
011c2b: 040917           BCC $C$L26,AR1 == #0
011c2e: 6c0124d9         CALL _coverage_log
011c32: ed088f           MOV dbl(@#04h),XAR0
011c35: 6c0114c4         CALL _free
011c39: ed0c8f           MOV dbl(@#06h),XAR0
011c3c: 6c0114c4         CALL _free
011c40: 3e14             MOV #-1,T0
011c42: 0600db           B $C$L33
011c45:               $C$L26:
011c45: 6c0124d9         CALL _coverage_log
011c49: ed08bf           MOV dbl(@#04h),XAR3
011c4c: ed00af           MOV dbl(@#00h),XAR2
011c4f: 4c3f             RPT #63
011c51:               $C$L27:
011c51:               $C$DW$L$_calculate_velocity$6$B:
011c51: 806514              MOV *AR3+,*AR2+
011c54:               $C$DW$L$_calculate_velocity$6$E:
011c54:               $C$L28:
011c54: e60600           MOV #0,@#03h
011c57: 760040a8         MOV #64,AR2
011c5b: a906             MOV @#03h,AR1
011c5d: 1298a0           CMP AR1 >= AR2, TC1
011c60: 046425           BCC $C$DW$L$_calculate_velocity$8$E,TC1
011c63: 6c0124d9         CALL _coverage_log
011c67:               $C$L29:
011c67: 6c0124d9         CALL _coverage_log
011c6b:               $C$DW$L$_calculate_velocity$8$B:
011c6b: 2294             MOV AR1,T0
011c6d: ed00bf           MOV dbl(@#00h),XAR3
011c70: a06b             MOV *AR3(AR0),AC0
011c72: ed1800           ADD dbl(@#0ch),AC0,AC0
011c75: eb1808           MOV AC0,dbl(@#0ch)
011c78: f7060001         ADD #1,@#03h
011c7c: a906             MOV @#03h,AR1
011c7e: 1294a0           CMP AR1 < AR2, TC1
011c81: 0464e3           BCC $C$L29,TC1
011c84: 6c0124d9         CALL _coverage_log
011c88:               $C$DW$L$_calculate_velocity$8$E:
011c88:               $C$L30:
011c88: 6c0124d9         CALL _coverage_log
011c8c: ed1808           MOV dbl(@#0ch),AC0
011c8f: 10453b           SFTS AC0,#-5,AC1
011c92: 105726           SFTL AC1,#-26,AC1
011c95: 2401             ADD AC0,AC1
011c97: 10153a           SFTS AC1,#-6,AC0
011c9a: 5000             SFTL AC0,#1
011c9c: c01c             MOV AC0,@#0eh
011c9e: a11c_3d00        MOV @#0eh,AC1 || MOV #0,AC0
011ca2: 7ec35000         OR #50000,AC0,AC0
011ca6: 120810           CMP AC0 >= AC1, TC1
011ca9: 046428           BCC $C$L31,TC1
011cac: 6c0124d9         CALL _coverage_log
011cb0: 3c00             MOV #0,AC0
011cb2: 7ec35000         OR #50000,AC0,AC0
011cb6: d61c00           ADD @#0eh,AC0,AC0
011cb9: c01e             MOV AC0,@#0fh
011cbb: ec31be0186a0     AMAR *(#0186a0h),XAR3
011cc1: b01e             MOV @#0fh << #16,AC0
011cc3: 79015700         MPYK #343,AC0,AC0
011cc7: 90b1             MOV XAR3,AC1
011cc9: a010_98          MOV mmap(@AC0L),AC0
011ccc: 6c012927         CALL __divli
011cd0: c012             MOV AC0,@#09h
011cd2: 4a38             B $C$L32
011cd4:               $C$L31:
011cd4: 6c0124d9         CALL _coverage_log
011cd8: a11c_3d00        MOV @#0eh,AC1 || MOV #0,AC0
011cdc: 7ec35000         OR #50000,AC0,AC0
011ce0: 120410           CMP AC0 < AC1, TC1
011ce3: 046426           BCC $C$L32,TC1
011ce6: 6c0124d9         CALL _coverage_log
011cea: 3c00             MOV #0,AC0
011cec: 7ec35000         OR #50000,AC0,AC0
011cf0: d81c00           SUB AC0,@#0eh,AC0
011cf3: c01e             MOV AC0,@#0fh
011cf5: ec31be0186a0     AMAR *(#0186a0h),XAR3
011cfb: b01e             MOV @#0fh << #16,AC0
011cfd: 79015700         MPYK #343,AC0,AC0
011d01: 90b1             MOV XAR3,AC1
011d03: a010_98          MOV mmap(@AC0L),AC0
011d06: 6c012927         CALL __divli
011d0a: c012             MOV AC0,@#09h
011d0c:               $C$L32:
011d0c: 6c0124d9         CALL _coverage_log
011d10: ed088f           MOV dbl(@#04h),XAR0
011d13: 6c0114c4         CALL _free
011d17: ed0c8f           MOV dbl(@#06h),XAR0
011d1a: 6c0114c4         CALL _free
011d1e: a412             MOV @#09h,T0
011d20:               $C$L33:
011d20: 4e17             AADD #23,SP
011d22: 4804             RET
011d24:               _fuzzer_isr:
011d24:               .text:retain:
011d24: f406f91f_98      AND #63775,mmap(@ST1_55)
011d29: f5064100_98      OR #16640,mmap(@ST1_55)
011d2e: f496fa00_98      AND #64000,mmap(@ST2_55)
011d33: f5968000_98      OR #32768,mmap(@ST2_55)
011d38: b508_98          PSH mmap(@ST3_55)
011d3b: 5007             PSH dbl(AC0)
011d3d: b514_98          PSH mmap(@AC0G)
011d40: 5017             PSH dbl(AC1)
011d42: b51a_98          PSH mmap(@AC1G)
011d45: 5027             PSH dbl(AC2)
011d47: b54c_98          PSH mmap(@AC2G)
011d4a: 5037             PSH dbl(AC3)
011d4c: b554_98          PSH mmap(@AC3G)
011d4f: 5046             PSH T0
011d51: 5056             PSH T1
011d53: 5085             PSHBOTH XAR0
011d55: 5095             PSHBOTH XAR1
011d57: 50a5             PSHBOTH XAR2
011d59: 50b5             PSHBOTH XAR3
011d5b: 50c5             PSHBOTH XAR4
011d5d: b562_98          PSH mmap(@BKC)
011d60: b532_98          PSH mmap(@BK03)
011d63: b560_98          PSH mmap(@BK47)
011d66: b534_98          PSH mmap(@BRC0)
011d69: b57a_98          PSH mmap(@RSA0L)
011d6c: b578_98          PSH mmap(@RSA0H)
011d6f: b57e_98          PSH mmap(@REA0L)
011d72: b57c_98          PSH mmap(@REA0H)
011d75: b574_98          PSH mmap(@BRS1)
011d78: b572_98          PSH mmap(@BRC1)
011d7b: b582_98          PSH mmap(@RSA1L)
011d7e: b580_98          PSH mmap(@RSA1H)
011d81: b586_98          PSH mmap(@REA1L)
011d84: b584_98          PSH mmap(@REA1H)
011d87: b576_98          PSH mmap(@CSR)
011d8a: b588_98          PSH mmap(@RPTC)
011d8d: 5075             PSHBOTH XCDP
011d8f: b51e_98          PSH mmap(@TRN0)
011d92: b570_98          PSH mmap(@TRN1)
011d95: b564_98          PSH mmap(@BSA01)
011d98: b566_98          PSH mmap(@BSA23)
011d9b: b568_98          PSH mmap(@BSA45)
011d9e: b56a_98          PSH mmap(@BSA67)
011da1: b56c_98          PSH mmap(@BSAC)
011da4: ec009e           AMAR @#00h,XAR1
011da7: f49afffe_98      AND #65534,mmap(@SP)
011dac: 5096             PSH AR1
011dae: 4eff             AADD #-1,SP
011db0: 4656             BCLR ST3_SATA
011db2: 4617             BSET ST3_SMUL
011db4: 6c011044_3d44    CALL _IRQ_clear || MOV #4,T0
011dba: e651011c14       MOV #1,port(#01c14h)
011dbf: ed310801353e     MOV dbl(*(#01353eh)),AC0
011dc5: 4010             ADD #1,AC0
011dc7: eb310801353e     MOV AC0,dbl(*(#01353eh))
011dcd: ec31be0186a0     AMAR *(#0186a0h),XAR3
011dd3: ed310801353e     MOV dbl(*(#01353eh)),AC0
011dd9: 90b1             MOV XAR3,AC1
011ddb: 6c01268d         CALL __remul
011ddf: 041018           BCC $C$L1,AC0 != #0
011de2: 3c00             MOV #0,AC0
011de4: eb310801353e     MOV AC0,dbl(*(#01353eh))
011dea: 6c01147e         CALL _IRQ_globalDisable
011dee: 6c011097         CALL _IRQ_clearAll
011df2: 6c011232         CALL _IRQ_disableAll
011df6: 6c010000         CALL _crash_void
011dfa:               $C$L1:
011dfa: 4e01             AADD #1,SP
011dfc: bb9a_98          POP mmap(@SP)
011dff: bb6c_98          POP mmap(@BSAC)
011e02: bb6a_98          POP mmap(@BSA67)
011e05: bb68_98          POP mmap(@BSA45)
011e08: bb66_98          POP mmap(@BSA23)
011e0b: bb64_98          POP mmap(@BSA01)
011e0e: bb70_98          POP mmap(@TRN1)
011e11: bb1e_98          POP mmap(@TRN0)
011e14: 5074             POPBOTH XCDP
011e16: bb88_98          POP mmap(@RPTC)
011e19: bb76_98          POP mmap(@CSR)
011e1c: bb84_98          POP mmap(@REA1H)
011e1f: bb86_98          POP mmap(@REA1L)
011e22: bb80_98          POP mmap(@RSA1H)
011e25: bb82_98          POP mmap(@RSA1L)
011e28: bb72_98          POP mmap(@BRC1)
011e2b: bb74_98          POP mmap(@BRS1)
011e2e: bb7c_98          POP mmap(@REA0H)
011e31: bb7e_98          POP mmap(@REA0L)
011e34: bb78_98          POP mmap(@RSA0H)
011e37: bb7a_98          POP mmap(@RSA0L)
011e3a: bb34_98          POP mmap(@BRC0)
011e3d: bb60_98          POP mmap(@BK47)
011e40: bb32_98          POP mmap(@BK03)
011e43: bb62_98          POP mmap(@BKC)
011e46: 50c4             POPBOTH XAR4
011e48: 50b4             POPBOTH XAR3
011e4a: 50a4             POPBOTH XAR2
011e4c: 5094             POPBOTH XAR1
011e4e: 5084             POPBOTH XAR0
011e50: 5052             POP T1
011e52: 5042             POP T0
011e54: bb54_98          POP mmap(@AC3G)
011e57: 5033             POP dbl(AC3)
011e59: bb4c_98          POP mmap(@AC2G)
011e5c: 5023             POP dbl(AC2)
011e5e: bb1a_98          POP mmap(@AC1G)
011e61: 5013             POP dbl(AC1)
011e63: bb14_98          POP mmap(@AC0G)
011e66: 5003             POP dbl(AC0)
011e68: bb08_98          POP mmap(@ST3_55)
011e6b: 4805             RETI
011e6d:               _bus_error_isr:
011e6d: f406f91f_98      AND #63775,mmap(@ST1_55)
011e72: f5064100_98      OR #16640,mmap(@ST1_55)
011e77: f496fa00_98      AND #64000,mmap(@ST2_55)
011e7c: f5968000_98      OR #32768,mmap(@ST2_55)
011e81: b508_98          PSH mmap(@ST3_55)
011e84: 5007             PSH dbl(AC0)
011e86: b514_98          PSH mmap(@AC0G)
011e89: 5017             PSH dbl(AC1)
011e8b: b51a_98          PSH mmap(@AC1G)
011e8e: 5027             PSH dbl(AC2)
011e90: b54c_98          PSH mmap(@AC2G)
011e93: 5037             PSH dbl(AC3)
011e95: b554_98          PSH mmap(@AC3G)
011e98: 5046             PSH T0
011e9a: 5056             PSH T1
011e9c: 5085             PSHBOTH XAR0
011e9e: 5095             PSHBOTH XAR1
011ea0: 50a5             PSHBOTH XAR2
011ea2: 50b5             PSHBOTH XAR3
011ea4: 50c5             PSHBOTH XAR4
011ea6: b562_98          PSH mmap(@BKC)
011ea9: b532_98          PSH mmap(@BK03)
011eac: b560_98          PSH mmap(@BK47)
011eaf: b534_98          PSH mmap(@BRC0)
011eb2: b57a_98          PSH mmap(@RSA0L)
011eb5: b578_98          PSH mmap(@RSA0H)
011eb8: b57e_98          PSH mmap(@REA0L)
011ebb: b57c_98          PSH mmap(@REA0H)
011ebe: b574_98          PSH mmap(@BRS1)
011ec1: b572_98          PSH mmap(@BRC1)
011ec4: b582_98          PSH mmap(@RSA1L)
011ec7: b580_98          PSH mmap(@RSA1H)
011eca: b586_98          PSH mmap(@REA1L)
011ecd: b584_98          PSH mmap(@REA1H)
011ed0: b576_98          PSH mmap(@CSR)
011ed3: b588_98          PSH mmap(@RPTC)
011ed6: 5075             PSHBOTH XCDP
011ed8: b51e_98          PSH mmap(@TRN0)
011edb: b570_98          PSH mmap(@TRN1)
011ede: b564_98          PSH mmap(@BSA01)
011ee1: b566_98          PSH mmap(@BSA23)
011ee4: b568_98          PSH mmap(@BSA45)
011ee7: b56a_98          PSH mmap(@BSA67)
011eea: b56c_98          PSH mmap(@BSAC)
011eed: ec009e           AMAR @#00h,XAR1
011ef0: f49afffe_98      AND #65534,mmap(@SP)
011ef5: 5096             PSH AR1
011ef7: 4eff             AADD #-1,SP
011ef9: 4656             BCLR ST3_SATA
011efb: 76001848_4717    MOV #24,T0 || BSET ST3_SMUL
011f01: 6c011044         CALL _IRQ_clear
011f05: 6c011097         CALL _IRQ_clearAll
011f09: 6c010000         CALL _crash_void
011f0d: 4e01             AADD #1,SP
011f0f: bb9a_98          POP mmap(@SP)
011f12: bb6c_98          POP mmap(@BSAC)
011f15: bb6a_98          POP mmap(@BSA67)
011f18: bb68_98          POP mmap(@BSA45)
011f1b: bb66_98          POP mmap(@BSA23)
011f1e: bb64_98          POP mmap(@BSA01)
011f21: bb70_98          POP mmap(@TRN1)
011f24: bb1e_98          POP mmap(@TRN0)
011f27: 5074             POPBOTH XCDP
011f29: bb88_98          POP mmap(@RPTC)
011f2c: bb76_98          POP mmap(@CSR)
011f2f: bb84_98          POP mmap(@REA1H)
011f32: bb86_98          POP mmap(@REA1L)
011f35: bb80_98          POP mmap(@RSA1H)
011f38: bb82_98          POP mmap(@RSA1L)
011f3b: bb72_98          POP mmap(@BRC1)
011f3e: bb74_98          POP mmap(@BRS1)
011f41: bb7c_98          POP mmap(@REA0H)
011f44: bb7e_98          POP mmap(@REA0L)
011f47: bb78_98          POP mmap(@RSA0H)
011f4a: bb7a_98          POP mmap(@RSA0L)
011f4d: bb34_98          POP mmap(@BRC0)
011f50: bb60_98          POP mmap(@BK47)
011f53: bb32_98          POP mmap(@BK03)
011f56: bb62_98          POP mmap(@BKC)
011f59: 50c4             POPBOTH XAR4
011f5b: 50b4             POPBOTH XAR3
011f5d: 50a4             POPBOTH XAR2
011f5f: 5094             POPBOTH XAR1
011f61: 5084             POPBOTH XAR0
011f63: 5052             POP T1
011f65: 5042             POP T0
011f67: bb54_98          POP mmap(@AC3G)
011f6a: 5033             POP dbl(AC3)
011f6c: bb4c_98          POP mmap(@AC2G)
011f6f: 5023             POP dbl(AC2)
011f71: bb1a_98          POP mmap(@AC1G)
011f74: 5013             POP dbl(AC1)
011f76: bb14_98          POP mmap(@AC0G)
011f79: 5003             POP dbl(AC0)
011f7b: bb08_98          POP mmap(@ST3_55)
011f7e: 4805             RETI
011f80:               _data_log_isr:
011f80: f406f91f_98      AND #63775,mmap(@ST1_55)
011f85: f5064100_98      OR #16640,mmap(@ST1_55)
011f8a: f496fa00_98      AND #64000,mmap(@ST2_55)
011f8f: f5968000_98      OR #32768,mmap(@ST2_55)
011f94: b508_98          PSH mmap(@ST3_55)
011f97: 5007             PSH dbl(AC0)
011f99: b514_98          PSH mmap(@AC0G)
011f9c: 5017             PSH dbl(AC1)
011f9e: b51a_98          PSH mmap(@AC1G)
011fa1: 5027             PSH dbl(AC2)
011fa3: b54c_98          PSH mmap(@AC2G)
011fa6: 5037             PSH dbl(AC3)
011fa8: b554_98          PSH mmap(@AC3G)
011fab: 5046             PSH T0
011fad: 5056             PSH T1
011faf: 5085             PSHBOTH XAR0
011fb1: 5095             PSHBOTH XAR1
011fb3: 50a5             PSHBOTH XAR2
011fb5: 50b5             PSHBOTH XAR3
011fb7: 50c5             PSHBOTH XAR4
011fb9: b562_98          PSH mmap(@BKC)
011fbc: b532_98          PSH mmap(@BK03)
011fbf: b560_98          PSH mmap(@BK47)
011fc2: b534_98          PSH mmap(@BRC0)
011fc5: b57a_98          PSH mmap(@RSA0L)
011fc8: b578_98          PSH mmap(@RSA0H)
011fcb: b57e_98          PSH mmap(@REA0L)
011fce: b57c_98          PSH mmap(@REA0H)
011fd1: b574_98          PSH mmap(@BRS1)
011fd4: b572_98          PSH mmap(@BRC1)
011fd7: b582_98          PSH mmap(@RSA1L)
011fda: b580_98          PSH mmap(@RSA1H)
011fdd: b586_98          PSH mmap(@REA1L)
011fe0: b584_98          PSH mmap(@REA1H)
011fe3: b576_98          PSH mmap(@CSR)
011fe6: b588_98          PSH mmap(@RPTC)
011fe9: 5075             PSHBOTH XCDP
011feb: b51e_98          PSH mmap(@TRN0)
011fee: b570_98          PSH mmap(@TRN1)
011ff1: b564_98          PSH mmap(@BSA01)
011ff4: b566_98          PSH mmap(@BSA23)
011ff7: b568_98          PSH mmap(@BSA45)
011ffa: b56a_98          PSH mmap(@BSA67)
011ffd: b56c_98          PSH mmap(@BSAC)
012000: ec009e           AMAR @#00h,XAR1
012003: f49afffe_98      AND #65534,mmap(@SP)
012008: 5096             PSH AR1
01200a: 4eff             AADD #-1,SP
01200c: 4656             BCLR ST3_SATA
01200e: 76001948_4717    MOV #25,T0 || BSET ST3_SMUL
012014: 6c011044         CALL _IRQ_clear
012018: 6c011097         CALL _IRQ_clearAll
01201c: 6c010000         CALL _crash_void
012020: 4e01             AADD #1,SP
012022: bb9a_98          POP mmap(@SP)
012025: bb6c_98          POP mmap(@BSAC)
012028: bb6a_98          POP mmap(@BSA67)
01202b: bb68_98          POP mmap(@BSA45)
01202e: bb66_98          POP mmap(@BSA23)
012031: bb64_98          POP mmap(@BSA01)
012034: bb70_98          POP mmap(@TRN1)
012037: bb1e_98          POP mmap(@TRN0)
01203a: 5074             POPBOTH XCDP
01203c: bb88_98          POP mmap(@RPTC)
01203f: bb76_98          POP mmap(@CSR)
012042: bb84_98          POP mmap(@REA1H)
012045: bb86_98          POP mmap(@REA1L)
012048: bb80_98          POP mmap(@RSA1H)
01204b: bb82_98          POP mmap(@RSA1L)
01204e: bb72_98          POP mmap(@BRC1)
012051: bb74_98          POP mmap(@BRS1)
012054: bb7c_98          POP mmap(@REA0H)
012057: bb7e_98          POP mmap(@REA0L)
01205a: bb78_98          POP mmap(@RSA0H)
01205d: bb7a_98          POP mmap(@RSA0L)
012060: bb34_98          POP mmap(@BRC0)
012063: bb60_98          POP mmap(@BK47)
012066: bb32_98          POP mmap(@BK03)
012069: bb62_98          POP mmap(@BKC)
01206c: 50c4             POPBOTH XAR4
01206e: 50b4             POPBOTH XAR3
012070: 50a4             POPBOTH XAR2
012072: 5094             POPBOTH XAR1
012074: 5084             POPBOTH XAR0
012076: 5052             POP T1
012078: 5042             POP T0
01207a: bb54_98          POP mmap(@AC3G)
01207d: 5033             POP dbl(AC3)
01207f: bb4c_98          POP mmap(@AC2G)
012082: 5023             POP dbl(AC2)
012084: bb1a_98          POP mmap(@AC1G)
012087: 5013             POP dbl(AC1)
012089: bb14_98          POP mmap(@AC0G)
01208c: 5003             POP dbl(AC0)
01208e: bb08_98          POP mmap(@ST3_55)
012091: 4805             RETI
012093:               _GPT_open:
012093: 4ef7             AADD #-9,SP
012095: eb0895           MOV XAR1,dbl(@#04h)
012098: eb0485           MOV XAR0,dbl(@#02h)
01209b: c400             MOV T0,@#00h
01209d: ed08bf           MOV dbl(@#04h),XAR3
0120a0: e66100           MOV #0,*AR3
0120a3: 3c00             MOV #0,AC0
0120a5: eb0c08           MOV AC0,dbl(@#06h)
0120a8: ed04bf           MOV dbl(@#02h),XAR3
0120ab: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0120af: 121c04           CMPU AC1 != AC0, TC1
0120b2: 6664             BCC $C$L1,TC1
0120b4: ed08bf           MOV dbl(@#04h),XAR3
0120b7: e661fb           MOV #-5,*AR3
0120ba: ed0c8f           MOV dbl(@#06h),XAR0
0120bd: 060092           B $C$L10
0120c0:               $C$L1:
0120c0: a900             MOV @#00h,AR1
0120c2: 63a9             BCC $C$L2,AR1 < #0
0120c4: 3c3a             MOV #3,AR2
0120c6: 1294a0           CMP AR1 < AR2, TC1
0120c9: 6664             BCC $C$L3,TC1
0120cb:               $C$L2:
0120cb: ed08bf           MOV dbl(@#04h),XAR3
0120ce: e661fa           MOV #-6,*AR3
0120d1: ed0c8f           MOV dbl(@#06h),XAR0
0120d4: 06007b           B $C$L10
0120d7:               $C$L3:
0120d7: eb0cb5           MOV XAR3,dbl(@#06h)
0120da: fb101c00         MOV #7168,@#08h
0120de: 060057           B $C$L8
0120e1:               $C$L4:
0120e1: ed0cbf           MOV dbl(@#06h),XAR3
0120e4: e66100           MOV #0,*AR3
0120e7: ed0cbf           MOV dbl(@#06h),XAR3
0120ea: fb751810         MOV #6160,*(AR3-T1)
0120ee: ab10             MOV @#08h,AR3
0120f0: a975_99          MOV port(*(AR3-T1)),AR1
0120f3: ec1492           BCLR @#0ah,AR1
0120f6: c975_9a          MOV AR1,port(*(AR3-T1))
0120f9: 060053           B $C$L9
0120fc:               $C$L5:
0120fc: ed0cbf           MOV dbl(@#06h),XAR3
0120ff: e66101           MOV #1,*AR3
012102: ed0cbf           MOV dbl(@#06h),XAR3
012105: fb751850         MOV #6224,*(AR3-T1)
012109: ab10             MOV @#08h,AR3
01210b: a975_99          MOV port(*(AR3-T1)),AR1
01210e: ec1892           BCLR @#0ch,AR1
012111: c975_9a          MOV AR1,port(*(AR3-T1))
012114: 4a39             B $C$L9
012116:               $C$L6:
012116: ed0cbf           MOV dbl(@#06h),XAR3
012119: e66102           MOV #2,*AR3
01211c: ed0cbf           MOV dbl(@#06h),XAR3
01211f: fb751890         MOV #6288,*(AR3-T1)
012123: ab10             MOV @#08h,AR3
012125: a975_99          MOV port(*(AR3-T1)),AR1
012128: ec1a92           BCLR @#0dh,AR1
01212b: c975_9a          MOV AR1,port(*(AR3-T1))
01212e: 4a1f             B $C$L9
012130:               $C$L7:
012130: ed08bf           MOV dbl(@#04h),XAR3
012133: e661fa           MOV #-6,*AR3
012136: 4a17             B $C$L9
012138:               $C$L8:
012138: a900             MOV @#00h,AR1
01213a: 0409a4           BCC $C$L4,AR1 == #0
01213d: 3c1a             MOV #1,AR2
01213f: 1290a0           CMP AR1 == AR2, TC1
012142: 0464b7           BCC $C$L5,TC1
012145: 3c2a             MOV #2,AR2
012147: 1290a0           CMP AR1 == AR2, TC1
01214a: 0464c9           BCC $C$L6,TC1
01214d: 4a61             B $C$L7
01214f:               $C$L9:
01214f: ed0c8f           MOV dbl(@#06h),XAR0
012152:               $C$L10:
012152: 4e09             AADD #9,SP
012154: 4804             RET
012156:               _GPT_reset:
012156: 4efb             AADD #-5,SP
012158: eb0085           MOV XAR0,dbl(@#00h)
01215b: ed00bf           MOV dbl(@#00h),XAR3
01215e: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
012162: 121c04           CMPU AC1 != AC0, TC1
012165: 62e4             BCC $C$L11,TC1
012167: 3e54             MOV #-5,T0
012169: 060060           B $C$L18
01216c:               $C$L11:
01216c: a975             MOV *(AR3-T1),AR1
01216e: c904             MOV AR1,@#02h
012170: 229b             MOV AR1,AR3
012172: e66100_9a        MOV #0,port(*AR3)
012176: ab04             MOV @#02h,AR3
012178: e67900_9a        MOV #0,port(*+AR3)
01217c: ab04             MOV @#02h,AR3
01217e: e67b00_9a        MOV #0,port(*-AR3)
012182: ab04             MOV @#02h,AR3
012184: e67500_9a        MOV #0,port(*(AR3-T1))
012188: ab04             MOV @#02h,AR3
01218a: e67700_9a        MOV #0,port(*AR3(T1))
01218e: fb061c14         MOV #7188,@#03h
012192: 4a1c             B $C$L16
012194:               $C$L12:
012194: ab06             MOV @#03h,AR3
012196: e66101_9a        MOV #1,port(*AR3)
01219a: 4a2e             B $C$L17
01219c:               $C$L13:
01219c: ab06             MOV @#03h,AR3
01219e: e66102_9a        MOV #2,port(*AR3)
0121a2: 4a26             B $C$L17
0121a4:               $C$L14:
0121a4: ab06             MOV @#03h,AR3
0121a6: e66104_9a        MOV #4,port(*AR3)
0121aa: 4a1e             B $C$L17
0121ac:               $C$L15:
0121ac: 3e64             MOV #-6,T0
0121ae: 4a1c             B $C$L18
0121b0:               $C$L16:
0121b0: ed00bf           MOV dbl(@#00h),XAR3
0121b3: a961             MOV *AR3,AR1
0121b5: 0409dc           BCC $C$L12,AR1 == #0
0121b8: 3c1a             MOV #1,AR2
0121ba: 1290a0           CMP AR1 == AR2, TC1
0121bd: 0464dc           BCC $C$L13,TC1
0121c0: 3c2a             MOV #2,AR2
0121c2: 1290a0           CMP AR1 == AR2, TC1
0121c5: 0464dc           BCC $C$L14,TC1
0121c8: 4a62             B $C$L15
0121ca:               $C$L17:
0121ca: 3c04             MOV #0,T0
0121cc:               $C$L18:
0121cc: 4e05             AADD #5,SP
0121ce: 4804             RET
0121d0:               _GPT_close:
0121d0: 4efd             AADD #-3,SP
0121d2: eb0085           MOV XAR0,dbl(@#00h)
0121d5: ed00bf           MOV dbl(@#00h),XAR3
0121d8: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0121dc: 121c04           CMPU AC1 != AC0, TC1
0121df: 62e4             BCC $C$L19,TC1
0121e1: 3e54             MOV #-5,T0
0121e3: 06005b           B $C$L25
0121e6:               $C$L19:
0121e6: fb041c00         MOV #7168,@#02h
0121ea: 4a30             B $C$L23
0121ec:               $C$L20:
0121ec: ab04             MOV @#02h,AR3
0121ee: a975_99          MOV port(*(AR3-T1)),AR1
0121f1: ec1492           BCLR @#0ah,AR1
0121f4: ec1490           BSET @#0ah,AR1
0121f7: c975_9a          MOV AR1,port(*(AR3-T1))
0121fa: 4a38             B $C$L24
0121fc:               $C$L21:
0121fc: ab04             MOV @#02h,AR3
0121fe: a975_99          MOV port(*(AR3-T1)),AR1
012201: ec1892           BCLR @#0ch,AR1
012204: ec1890           BSET @#0ch,AR1
012207: c975_9a          MOV AR1,port(*(AR3-T1))
01220a: 4a28             B $C$L24
01220c:               $C$L22:
01220c: ab04             MOV @#02h,AR3
01220e: a975_99          MOV port(*(AR3-T1)),AR1
012211: ec1a92           BCLR @#0dh,AR1
012214: ec1a90           BSET @#0dh,AR1
012217: c975_9a          MOV AR1,port(*(AR3-T1))
01221a: 4a18             B $C$L24
01221c:               $C$L23:
01221c: ed00bf           MOV dbl(@#00h),XAR3
01221f: a961             MOV *AR3,AR1
012221: 0409c8           BCC $C$L20,AR1 == #0
012224: 3c1a             MOV #1,AR2
012226: 1290a0           CMP AR1 == AR2, TC1
012229: 0464d0           BCC $C$L21,TC1
01222c: 3c2a             MOV #2,AR2
01222e: 1290a0           CMP AR1 == AR2, TC1
012231: 0464d8           BCC $C$L22,TC1
012234:               $C$L24:
012234: ed00bf           MOV dbl(@#00h),XAR3
012237: e67500           MOV #0,*(AR3-T1)
01223a: 3c00             MOV #0,AC0
01223c: eb0008           MOV AC0,dbl(@#00h)
01223f: 3c04             MOV #0,T0
012241:               $C$L25:
012241: 4e03             AADD #3,SP
012243: 4804             RET
012245:               _GPT_start:
012245: 4efd             AADD #-3,SP
012247: eb0085           MOV XAR0,dbl(@#00h)
01224a: ed00bf           MOV dbl(@#00h),XAR3
01224d: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
012251: 121c04           CMPU AC1 != AC0, TC1
012254: 6264             BCC $C$L26,TC1
012256: 3e54             MOV #-5,T0
012258: 4a14             B $C$L27
01225a:               $C$L26:
01225a: a975             MOV *(AR3-T1),AR1
01225c: c904             MOV AR1,@#02h
01225e: 229b             MOV AR1,AR3
012260: a961_99          MOV port(*AR3),AR1
012263: ec0092           BCLR @#00h,AR1
012266: ec0090           BSET @#00h,AR1
012269: c961_9a          MOV AR1,port(*AR3)
01226c: 3c04             MOV #0,T0
01226e:               $C$L27:
01226e: 4e03             AADD #3,SP
012270: 4804             RET
012272:               _GPT_stop:
012272: 4efd             AADD #-3,SP
012274: eb0085           MOV XAR0,dbl(@#00h)
012277: ed00bf           MOV dbl(@#00h),XAR3
01227a: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
01227e: 121c04           CMPU AC1 != AC0, TC1
012281: 6264             BCC $C$L28,TC1
012283: 3e54             MOV #-5,T0
012285: 4a11             B $C$L29
012287:               $C$L28:
012287: a975             MOV *(AR3-T1),AR1
012289: c904             MOV AR1,@#02h
01228b: 229b             MOV AR1,AR3
01228d: a961_99          MOV port(*AR3),AR1
012290: ec0092           BCLR @#00h,AR1
012293: c961_9a          MOV AR1,port(*AR3)
012296: 3c04             MOV #0,T0
012298:               $C$L29:
012298: 4e03             AADD #3,SP
01229a: 4804             RET
01229c:               _GPT_getCnt:
01229c: 4ef9             AADD #-7,SP
01229e: eb0495           MOV XAR1,dbl(@#02h)
0122a1: eb0085           MOV XAR0,dbl(@#00h)
0122a4: ed00bf           MOV dbl(@#00h),XAR3
0122a7: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0122ab: 121c04           CMPU AC1 != AC0, TC1
0122ae: 6264             BCC $C$L30,TC1
0122b0: 3e54             MOV #-5,T0
0122b2: 4a1f             B $C$L31
0122b4:               $C$L30:
0122b4: a975             MOV *(AR3-T1),AR1
0122b6: c90c             MOV AR1,@#06h
0122b8: 229b             MOV AR1,AR3
0122ba: a979_99          MOV port(*+AR3),AR1
0122bd: c908             MOV AR1,@#04h
0122bf: ab0c             MOV @#06h,AR3
0122c1: a97b_99          MOV port(*-AR3),AR1
0122c4: c90a             MOV AR1,@#05h
0122c6: ed04bf           MOV dbl(@#02h),XAR3
0122c9: 5290             MOV AR1,HI(AC0)
0122cb: da0800           OR @#04h,AC0,AC0
0122ce: eb6108           MOV AC0,dbl(*AR3)
0122d1: 3c04             MOV #0,T0
0122d3:               $C$L31:
0122d3: 4e07             AADD #7,SP
0122d5: 4804             RET
0122d7:               _GPT_config:
0122d7: 4efb             AADD #-5,SP
0122d9: eb0495           MOV XAR1,dbl(@#02h)
0122dc: eb0085           MOV XAR0,dbl(@#00h)
0122df: ed00bf           MOV dbl(@#00h),XAR3
0122e2: 90b0_3d01        MOV XAR3,AC0 || MOV #0,AC1
0122e6: 121c04           CMPU AC1 != AC0, TC1
0122e9: 62e4             BCC $C$L32,TC1
0122eb: 3e54             MOV #-5,T0
0122ed: 06008a           B $C$L34
0122f0:               $C$L32:
0122f0: ed04bf           MOV dbl(@#02h),XAR3
0122f3: 90b0             MOV XAR3,AC0
0122f5: 121c04           CMPU AC1 != AC0, TC1
0122f8: 62e4             BCC $C$L33,TC1
0122fa: 3e64             MOV #-6,T0
0122fc: 06007b           B $C$L34
0122ff:               $C$L33:
0122ff: ed00bf           MOV dbl(@#00h),XAR3
012302: a975             MOV *(AR3-T1),AR1
012304: c908             MOV AR1,@#04h
012306: 229b             MOV AR1,AR3
012308: a961_99          MOV port(*AR3),AR1
01230b: ec1e92           BCLR @#0fh,AR1
01230e: c961_9a          MOV AR1,port(*AR3)
012311: ed04bf           MOV dbl(@#02h),XAR3
012314: f9730208         MOV *(AR3+T1) << #2,AC0
012318: ab08             MOV @#04h,AR3
01231a: 183c90           AND #60,AC0,AR1
01231d: aa61_99          MOV port(*AR3),AR2
012320: 7dffc3aa         AND #65475,AR2,AR2
012324: 2aa9             OR AR2,AR1
012326: c961_9a          MOV AR1,port(*AR3)
012329: ed04bf           MOV dbl(@#02h),XAR3
01232c: a961             MOV *AR3,AR1
01232e: ab08             MOV @#04h,AR3
012330: 5090             SFTL AR1,#1
012332: 180299           AND #2,AR1,AR1
012335: aa61_99          MOV port(*AR3),AR2
012338: ec02a2           BCLR @#01h,AR2
01233b: 2aa9             OR AR2,AR1
01233d: c961_9a          MOV AR1,port(*AR3)
012340: ed04bf           MOV dbl(@#02h),XAR3
012343: f9750f08         MOV *(AR3-T1) << #15,AC0
012347: ab08             MOV @#04h,AR3
012349: 7d800090         AND #32768,AC0,AR1
01234d: aa61_99          MOV port(*AR3),AR2
012350: ec1ea2           BCLR @#0fh,AR2
012353: 2aa9             OR AR2,AR1
012355: c961_9a          MOV AR1,port(*AR3)
012358: ab08             MOV @#04h,AR3
01235a: e67900_9a        MOV #0,port(*+AR3)
01235e: ab08             MOV @#04h,AR3
012360: e67b00_9a        MOV #0,port(*-AR3)
012364: ed04bf           MOV dbl(@#02h),XAR3
012367: a977             MOV *AR3(T1),AR1
012369: ab08             MOV @#04h,AR3
01236b: c975_9a          MOV AR1,port(*(AR3-T1))
01236e: ed04bf           MOV dbl(@#02h),XAR3
012371: a979             MOV *+AR3,AR1
012373: ab08             MOV @#04h,AR3
012375: c977_9a          MOV AR1,port(*AR3(T1))
012378: 3c04             MOV #0,T0
01237a:               $C$L34:
01237a: 4e05             AADD #5,SP
01237c: 4804             RET
01237e:               _writemsg:
01237e:               .text:CIO_breakpoint:
01237e: 7600f9a8_5166    MOV #249,AR2 || PSH T2
012384: ec31be007000     AMAR *(#07000h),XAR3
01238a: c561_1340a4      MOV T1,*AR3 || CMPU T0 == AR2, TC1
01238f: c473             MOV T0,*(AR3+T1)
012391: 6d64009a         BCC #0x01242f,TC1
012395: 160079           MOV #7,BRC0
012398: 0e003e_3d02      RPTB #0x0123db || MOV #0,AC2
01239d: ec0028              BTST @#00h,AC2,TC1
0123a0: 04641f              BCC #0x0123c2,TC1
0123a3: 76fffea2            BFXTR #65534,AC2,AR2
0123a7: 90b0                MOV XAR3,AC0
0123a9: 7dffff1a            AND #65535,AR2,AC1
0123ad: 2410                ADD AC1,AC0
0123af: 106703              SFTL AC2,#3,AC1
0123b2: 361a                NOT AC1,AR2
0123b4: 18086a              AND #8,AR2,T2
0123b7: 900a                MOV AC0,XAR2
0123b9: df0333              MOV uns(low_byte(*AR0+)),AC3
0123bc: 5c78                SFTL AC3,T2,AC1
0123be: c155                MOV AC1,*(AR2-T1)
0123c0: 4a19                B #0x0123db
0123c2: 76fffea2            BFXTR #65534,AC2,AR2
0123c6: 90b0                MOV XAR3,AC0
0123c8: 7dffff1a            AND #65535,AR2,AC1
0123cc: 2410                ADD AC1,AC0
0123ce: 900a                MOV AC0,XAR2
0123d0: 8d03af1cc302        MOV uns(low_byte(*AR0+)),AR4 || AADD #2,AR2
0123d6: da41cc              OR *AR2,AR4,AR4
0123d9: cc41                MOV AR4,*AR2
0123db: 4012                ADD #1,AC2
0123dd: 04054f           BCC #0x01242f,T1 == #0
0123e0: 7c0001a5         SUB #1,T1,AR2
0123e4: 52ae             MOV AR2,BRC0
0123e6: 0e0042_3d02      RPTB #0x01242d || MOV #0,AC2
0123eb: ec0028              BTST @#00h,AC2,TC1
0123ee: 046421              BCC #0x012412,TC1
0123f1: 7b0008a2            ADD #8,AC2,AR2
0123f5: 50a1                SFTL AR2,#-1
0123f7: 90b0                MOV XAR3,AC0
0123f9: 7dffff1a            AND #65535,AR2,AC1
0123fd: 2410                ADD AC1,AC0
0123ff: 106703              SFTL AC2,#3,AC1
012402: 361a                NOT AC1,AR2
012404: 18085a              AND #8,AR2,T1
012407: 900a                MOV AC0,XAR2
012409: df2333              MOV uns(low_byte(*AR1+)),AC3
01240c: 5c74                SFTL AC3,T1,AC1
01240e: c155                MOV AC1,*(AR2-T1)
012410: 4a1b                B #0x01242d
012412: 7b0008a2            ADD #8,AC2,AR2
012416: 50a1                SFTL AR2,#-1
012418: 90b0                MOV XAR3,AC0
01241a: 7dffff1a            AND #65535,AR2,AC1
01241e: 2410                ADD AC1,AC0
012420: 900a                MOV AC0,XAR2
012422: 8d23af1cc302        MOV uns(low_byte(*AR1+)),AR4 || AADD #2,AR2
012428: da41cc              OR *AR2,AR4,AR4
01242b: cc41                MOV AR4,*AR2
01242d: 4012                ADD #1,AC2
01242f: 20               NOP
012430: 20               NOP
012431: 20               NOP
012432: 20               NOP
012433:               C$$IO$$:
012433: 20               NOP
012434: 5062             POP T2
012436: 4804             RET
012438:               __divul:
012438: 120814           CMPU AC0 >= AC1, TC1
01243b: 108700           SFTL AC0,#0,AC2
01243e: 3c03_9ef4        XCCPART !TC1 || MOV #0,AC3
012442: 102820_5166      EXP AC2,T2 || PSH T2
012447: 109700           SFTL AC1,#0,AC2
01244a: 102810_21        EXP AC2,T1 || NOP
01244e: 2665             SUB T2,T1
012450: 04747f           BCC #0x0124d2,!TC1
012453: 3c03_9e80        XCCPART AC0 == #0 || MOV #0,AC3
012457: 040078           BCC #0x0124d2,AC0 == #0
01245a: 7affff3a_9e81    XCCPART AC1 == #0 || MOV #-1 << #16,AC3
012460: 7effff33_9e81    XCCPART AC1 == #0 || OR #65535,AC3,AC3
012466: 040169           BCC #0x0124d2,AC1 == #0
012469: 3e19_5d94        MOV #-1,AR1 || SFTL AC1,T1,AC2
01246d: 126c90_3d01      CMP T2 != AR1, TC1 || MOV #0,AC1
012472: 3c11_9ef4        XCCPART !TC1 || MOV #1,AC1
012476: 120824           CMPU AC0 >= AC2, TC1
012479: 5cd4             SFTL AC1,T1,AC3
01247b: 5031_9ef4        XCCPART !TC1 || SFTL AC3,#-1
01247f: 040115           BCC #0x012497,AC1 == #0
012482: 120424           CMPU AC0 < AC2, TC1
012485: 2620_9ef4        XCCPART !TC1 || SUB AC2,AC0
012489: 5021_9ef4        XCCPART !TC1 || SFTL AC2,#-1
01248d: 5021_9ee4        XCCPART TC1 || SFTL AC2,#-1
012491: 2620_9ee4        XCCPART TC1 || SUB AC2,AC0
012495: 4a02             B #0x012499
012497: 4015             ADD #1,T1
012499: 043520           BCC #0x0124bc,T1 <= #0
01249c: 7c000195         SUB #1,T1,AR1
0124a0: 529e             MOV AR1,BRC0
0124a2: 4a95             RPTBLOCAL _coverage_log-32
0124a4: 120424_3d09         CMPU AC0 < AC2, TC1 || MOV #0,AR1
0124a9: 3c19_9ef4           XCCPART !TC1 || MOV #1,AR1
0124ad: 120424              CMPU AC0 < AC2, TC1
0124b0: 2291                MOV AR1,AC1
0124b2: 2620_9ef4           XCCPART !TC1 || SUB AC2,AC0
0124b6: 104101              OR AC0 << #1, AC1
0124b9: 1a0001              OR #0,AC1,AC0
0124bc: 040513           BCC #0x0124d2,T1 == #0
0124bf: 76002098         MOV #32,AR1
0124c3: 2659             SUB T1,AR1
0124c5: 2295             MOV AR1,T1
0124c7: 5c04             SFTL AC0,T1,AC0
0124c9: 3455             NEG T1,T1
0124cb: 5c04             SFTL AC0,T1,AC0
0124cd: 2a30             OR AC3,AC0
0124cf: 1a0030           OR #0,AC0,AC3
0124d2: 5062             POP T2
0124d4: 1a0003           OR #0,AC3,AC0
0124d7: 4804             RET
0124d9:               _coverage_log:
0124d9: 5046             PSH T0
0124db: 5056             PSH T1
0124dd: 5066             PSH T2
0124df: 5076             PSH T3
0124e1: 5085             PSHBOTH XAR0
0124e3: 5095             PSHBOTH XAR1
0124e5: 50a5             PSHBOTH XAR2
0124e7: 50b5             PSHBOTH XAR3
0124e9: 50c5             PSHBOTH XAR4
0124eb: 50d5             PSHBOTH XAR5
0124ed: 50e5             PSHBOTH XAR6
0124ef: 50f5             PSHBOTH XAR7
0124f1: 5005             PSHBOTH AC0
0124f3: 5015             PSHBOTH AC1
0124f5: 5025             PSHBOTH AC2
0124f7: 5035             PSHBOTH AC3
0124f9: 4efd             AADD #-3,SP
0124fb: eb0004           MOV RETA,dbl(@#00h)
0124fe: ed0008           MOV dbl(@#00h),AC0
012501: 4240             SUB #4,AC0
012503: 180140           AND #1,AC0,T0
012506: 5001             SFTL AC0,#-1
012508: 9008             MOV AC0,XAR0
01250a: 76002098         MOV #32,AR1
01250e: 040412           BCC even,T0 == #0
012511:               odd:
012511: e50195           MOV AR1,low_byte(*AR0)
012514: 4018             ADD #1,AR0
012516: e50194           MOV AR1,high_byte(*AR0)
012519: e50195           MOV AR1,low_byte(*AR0)
01251c: 4018             ADD #1,AR0
01251e: e50194           MOV AR1,high_byte(*AR0)
012521: 4a10             B map_store
012523:               even:
012523: e50195           MOV AR1,low_byte(*AR0)
012526: e50194           MOV AR1,high_byte(*AR0)
012529: 4018             ADD #1,AR0
01252b: e50195           MOV AR1,low_byte(*AR0)
01252e: e50194           MOV AR1,high_byte(*AR0)
012531: 4018             ADD #1,AR0
012533:               map_store:
012533: ed0008           MOV dbl(@#00h),AC0
012536: 4240             SUB #4,AC0
012538:               finish:
012538: ed31af01351c     MOV dbl(*(#01351ch)),XAR2
01253e: eb4108           MOV AC0,dbl(*AR2)
012541: 1402a4           AADD #2,AR2
012544: eb31a501351c     MOV XAR2,dbl(*(#01351ch))
01254a: e63101013523     MOV #1,*(#013523h)
012550: 4e03             AADD #3,SP
012552: 5034             POPBOTH AC3
012554: 5024             POPBOTH AC2
012556: 5014             POPBOTH AC1
012558: 5004             POPBOTH AC0
01255a: 50f4             POPBOTH XAR7
01255c: 50e4             POPBOTH XAR6
01255e: 50d4             POPBOTH XAR5
012560: 50c4             POPBOTH XAR4
012562: 50b4             POPBOTH XAR3
012564: 50a4             POPBOTH XAR2
012566: 5094             POPBOTH XAR1
012568: 5084             POPBOTH XAR0
01256a: 5072             POP T3
01256c: 5062             POP T2
01256e: 5052             POP T1
012570: 5042             POP T0
012572: 4804             RET
012574:               _maxidx:
012574: 3876_47f4        PSH T3,T2 || BCLR ST2_ARMS
012578: 50d5_47e2        PSHBOTH XAR5 || BCLR ST1_CPL
01257c: 50e5_4314        PSHBOTH XAR6 || SUB #1,T0
012580: 5065             PSHBOTH XDP
012582: ec316e000000     AMAR *(#00000h),XDP
012588: 524e_3d09        MOV T0,BRC0 || MOV #0,AR1
01258c: a301_2357        MOV *AR0,AC3 || MOV T1,T3
012590: 5051             SFTL T1,#-1
012592: ec31ee000038     AMAR *(#00038h),XAR6
012598: 4225             SUB #2,T1
01259a: 525c             MOV T1,CSR
01259c: ec31de00000f     AMAR *(#0000fh),XAR5
0125a2: 225b             MOV T1,AR3
0125a4: 7600ffa8_2d55    MOV #255,AR2 || XOR T1,T1
0125aa: c5a1_3d06        MOV T1,*AR5 || MOV #0,T2
0125ae: 225c_4bb4        MOV T1,AR4 || RPTBLOCAL #0x0125e6
0125b2: 8e070dc918          MOV dbl(*AR0+),AC1 || MOV AR1,*AR6
0125b7: ed0308_4900         MOV dbl(*AR0+),AC0 || RPT CSR
0125bc: ed0308_114c60          MOV dbl(*AR0+),AC0 || MAXDIFF AC0,AC1,AC1,AC2
0125c2: 2230_4328           MOV AC3,AC0 || SUB #2,AR0
0125c6: 2214_115530         MOV AC1,T0 || SFTS AC1,#-16,AC1
0125cb: 2e41                MAX T0,AC1
0125cd: 120410              CMP AC0 < AC1, TC1
0125d0: b0a1_2354           MOV *AR5 << #16,AC0 || MOV T1,T0
0125d4: 96f6                XCCPART !Carry
0125d6: b0c1_4114           MOV *AR6 << #16,AC0 || ADD #1,T0
0125da: c9a1_9fe4           MOV AR1,*AR5 || XCCPART TC1
0125de: ca14_234c           MOV AR2,@#0ah || MOV T0,AR4
0125e2: 2475_9f64           ADD T3,T1 || XCC TC1
0125e6: 100820_2313         EXP AC0,T2 || MOV AC1,AC3
0125eb:               outer_loop:
0125eb: 266b             SUB T2,AR3
0125ed: 50b0             SFTL AR3,#1
0125ef: 24cb             ADD AR4,AR3
0125f1: 22b4             MOV AR3,T0
0125f3: 5064             POPBOTH XDP
0125f5: 50e4_47f5        POPBOTH XAR6 || BSET ST2_ARMS
0125f9: 50d4_47e3        POPBOTH XAR5 || BSET ST1_CPL
0125fd: 3a76             POP T3,T2
0125ff: 4804             RET
012601:               _IRQ_plug:
012601: 50b5             PSHBOTH XAR3
012603: 50a5             PSHBOTH XAR2
012605: 4ef7             AADD #-9,SP
012607: eb0408           MOV AC0,dbl(@#02h)
01260a: c40e             MOV T0,@#07h
01260c: 3c00             MOV #0,AC0
01260e: 900a             MOV AC0,XAR2
012610: 900b             MOV AC0,XAR3
012612: 6c01147e         CALL _IRQ_globalDisable
012616: c410             MOV T0,@#08h
012618: 20               NOP
012619: 20               NOP
01261a: 20               NOP
01261b: 20               NOP
01261c: 20               NOP
01261d: ec31ae000049     AMAR *(#00049h),XAR2
012623: 20               NOP
012624: 20               NOP
012625: 20               NOP
012626: 20               NOP
012627: 20               NOP
012628: a10e             MOV @#07h,AC1
01262a: 181831           AND #24,AC1,AC3
01262d: 7c001033         SUB #16,AC3,AC3
012631: 9603             XCC AC3 == #0
012633: ec31ae00004a     AMAR *(#0004ah),XAR2
012639: 105503           SFTS AC1,#3,AC1
01263c: a041             MOV *AR2,AC0
01263e: 100504           SFTS AC0,#4,AC0
012641: 100504           SFTS AC0,#4,AC0
012644: 2a10             OR AC1,AC0
012646: 10053f           SFTS AC0,#-1,AC0
012649: eb0008           MOV AC0,dbl(@#00h)
01264c: ed0408           MOV dbl(@#02h),AC0
01264f: ed00bf           MOV dbl(@#00h),XAR3
012652: a90e             MOV @#07h,AR1
012654: 180fa9           AND #15,AR1,AR2
012657: eb6108           MOV AC0,dbl(*AR3)
01265a: 765e8038         MOV #24192,AC3
01265e: 402b             ADD #2,AR3
012660: c361             MOV AC3,*AR3
012662: 401b             ADD #1,AR3
012664: c361             MOV AC3,*AR3
012666: 22a4             MOV AR2,T0
012668: 181099           AND #16,AR1,AR1
01266b: 3c10             MOV #1,AC0
01266d: 5c00             SFTL AC0,T0,AC0
01266f: 2203             MOV AC0,AC3
012671: 6319             BCC LIFR1,AR1 != #0
012673: 3c1a             MOV #1,AR2
012675: c341             MOV AC3,*AR2
012677: 4a06             B RESTORE_INTM
012679:               LIFR1:
012679: 760046a8         MOV #70,AR2
01267d: c341             MOV AC3,*AR2
01267f:               RESTORE_INTM:
01267f: a410             MOV @#08h,T0
012681: 6c0114b0         CALL _IRQ_globalRestore
012685:               EPILOGUE:
012685: 4e09             AADD #9,SP
012687: 50a4             POPBOTH XAR2
012689: 50b4             POPBOTH XAR3
01268b: 4804             RET
01268d:               __remul:
01268d: 108700           SFTL AC0,#0,AC2
012690: 120814           CMPU AC0 >= AC1, TC1
012693: 102820_5166      EXP AC2,T2 || PSH T2
012698: 109700           SFTL AC1,#0,AC2
01269b: 102810_21        EXP AC2,T1 || NOP
01269f: 2665             SUB T2,T1
0126a1: 047457           BCC #0x0126fb,!TC1
0126a4: 6290             BCC #0x0126ab,AC0 != #0
0126a6: 3c00             MOV #0,AC0
0126a8: 060050           B #0x0126fb
0126ab: 3c00_9e81        XCCPART AC1 == #0 || MOV #0,AC0
0126af: 040149           BCC #0x0126fb,AC1 == #0
0126b2: 3e19             MOV #-1,AR1
0126b4: 126c90_21        CMP T2 != AR1, TC1 || NOP
0126b8: 5c54             SFTL AC1,T1,AC1
0126ba: 046415           BCC #0x0126d2,TC1
0126bd: 120414           CMPU AC0 < AC1, TC1
0126c0: 2610_9ef4        XCCPART !TC1 || SUB AC1,AC0
0126c4: 5011_9ef4        XCCPART !TC1 || SFTL AC1,#-1
0126c8: 5011_9ee4        XCCPART TC1 || SFTL AC1,#-1
0126cc: 2610_9ee4        XCCPART TC1 || SUB AC1,AC0
0126d0: 4a02             B #0x0126d4
0126d2: 4015             ADD #1,T1
0126d4: 043520           BCC #0x0126f7,T1 <= #0
0126d7: 7c000195         SUB #1,T1,AR1
0126db: 529e             MOV AR1,BRC0
0126dd: 4a95             RPTBLOCAL reset_isr-11
0126df: 120414_3d09         CMPU AC0 < AC1, TC1 || MOV #0,AR1
0126e4: 3c19_9ef4           XCCPART !TC1 || MOV #1,AR1
0126e8: 120414              CMPU AC0 < AC1, TC1
0126eb: 2292                MOV AR1,AC2
0126ed: 2610_9ef4           XCCPART !TC1 || SUB AC1,AC0
0126f1: 108101              OR AC0 << #1, AC2
0126f4: 1a0002              OR #0,AC2,AC0
0126f7: 3455             NEG T1,T1
0126f9: 5c04             SFTL AC0,T1,AC0
0126fb: 5062             POP T2
0126fd: 4804             RET
0126ff:               reset_isr:
0126ff: 46b3             BSET ST1_INTM
012701: fb920007_98      MOV #7,mmap(@IVPD)
012706: fb940007_98      MOV #7,mmap(@IVPH)
01270b: 4676             BCLR ST3_CBERR
01270d: fb02ffff_98      MOV #-1,mmap(@IFR0)
012712: fb8cffff_98      MOV #-1,mmap(@IFR1)
012717: e651201c04       MOV #32,port(#01c04h)
01271c: 5e80             NOP_16
01271e: fb5100ff1c05     MOV #255,port(#01c05h)
012724: 5e80             NOP_16
012726: 6a012aaf         B _c_int00
01272a:               nmi_isr:
01272a: 4a7e             B nmi_isr
01272c:               int0_isr:
01272c: 4a7e             B int0_isr
01272e:               int1_isr:
01272e: 4a7e             B int1_isr
012730:               tim_isr:
012730: 4a7e             B tim_isr
012732:               i2s0_mmc0_tx_isr:
012732: 4a7e             B i2s0_mmc0_tx_isr
012734:               uart_isr:
012734: 4a7e             B uart_isr
012736:               i2s0_mmc0_rx_isr:
012736: 4a7e             B i2s0_mmc0_rx_isr
012738:               dma_isr:
012738: 4a7e             B dma_isr
01273a:               i2s1_mmc1_tx_isr:
01273a: 4a7e             B i2s1_mmc1_tx_isr
01273c:               coprocfft_isr:
01273c: 4a7e             B coprocfft_isr
01273e:               i2s1_mmc1_rx_isr:
01273e: 4a7e             B i2s1_mmc1_rx_isr
012740:               lcd_isr:
012740: 4a7e             B lcd_isr
012742:               saradc_isr:
012742: 4a7e             B saradc_isr
012744:               i2s2_tx_isr:
012744: 4a7e             B i2s2_tx_isr
012746:               i2s2_rx_isr:
012746: 4a7e             B i2s2_rx_isr
012748:               i2s3_tx_isr:
012748: 4a7e             B i2s3_tx_isr
01274a:               i2s3_rx_isr:
01274a: 4a7e             B i2s3_rx_isr
01274c:               rtc_isr:
01274c: 4a7e             B rtc_isr
01274e:               spi_isr:
01274e: 4a7e             B spi_isr
012750:               usb_isr:
012750: 4a7e             B usb_isr
012752:               gpio_isr:
012752: 4a7e             B gpio_isr
012754:               emif_error_isr:
012754: 4a7e             B emif_error_isr
012756:               i2c_isr:
012756: 4a7e             B i2c_isr
012758:               berr_isr:
012758: 4676             BCLR ST3_CBERR
01275a: 4a7c             B berr_isr
01275c:               dlog_isr:
01275c: 4a7e             B dlog_isr
01275e:               rtos_isr:
01275e: 4a7e             B rtos_isr
012760:               rtdxrcv_isr:
012760: 4a7e             B rtdxrcv_isr
012762:               rtdxxmt_isr:
012762: 4a7e             B rtdxxmt_isr
012764:               emuint_isr:
012764: 4a7e             B emuint_isr
012766:               sint30_isr:
012766: 4a7e             B sint30_isr
012768:               sint31_isr:
012768: 4a7e             B sint31_isr
01276a:               no_isr:
01276a: 4a7e             B no_isr
01276c:               _readmsg:
01276c: ec31be007000     AMAR *(#07000h),XAR3
012772: 3c02_170079      MOV #0,AC2 || MOV #7,BRC0
012777: ac61_4ba0        MOV *AR3,AR4 || RPTBLOCAL #0x01279b
01277b: 76fffea2            BFXTR #65534,AC2,AR2
01277f: 90b0                MOV XAR3,AC0
012781: 7dffff1a            AND #65535,AR2,AC1
012785: 2410                ADD AC1,AC0
012787: 900a                MOV AC0,XAR2
012789: 106703              SFTL AC2,#3,AC1
01278c: df5305_371a         MOV uns(*(AR2+T1)),AC0 || NOT AC1,AR2
012791: 1808aa              AND #8,AR2,AR2
012794: 34a5                NEG AR2,T1
012796: 5c05                SFTS AC0,T1,AC0
012798: 18ff00              AND #255,AC0,AC0
01279b: c003_4112           MOV AC0,*AR0+ || ADD #1,AC2
01279f: 9090             MOV XAR1,AC0
0127a1: 040033           BCC #0x0127d7,AC0 == #0
0127a4: 040c30           BCC #0x0127d7,AR4 == #0
0127a7: 7c0001ac         SUB #1,AR4,AR2
0127ab: 52ae             MOV AR2,BRC0
0127ad: 4aa2_3d02        RPTBLOCAL #0x0127d3 || MOV #0,AC2
0127b1: 7b0008a2            ADD #8,AC2,AR2
0127b5: 50a1                SFTL AR2,#-1
0127b7: 90b0                MOV XAR3,AC0
0127b9: 7dffff1a            AND #65535,AR2,AC1
0127bd: 2410                ADD AC1,AC0
0127bf: 900a                MOV AC0,XAR2
0127c1: 106703              SFTL AC2,#3,AC1
0127c4: df5305_371a         MOV uns(*(AR2+T1)),AC0 || NOT AC1,AR2
0127c9: 1808aa              AND #8,AR2,AR2
0127cc: 34a5                NEG AR2,T1
0127ce: 5c05                SFTS AC0,T1,AC0
0127d0: 18ff00              AND #255,AC0,AC0
0127d3: c023_4112           MOV AC0,*AR1+ || ADD #1,AC2
0127d7: 4804             RET
0127d9:               _srand:
0127d9: 5066             PSH T2
0127db: ed310801369a     MOV dbl(*(#01369ah)),AC0
0127e1: 2246             MOV T0,T2
0127e3: 9200             CALL AC0
0127e5: 7dffff06         AND #65535,T2,AC0
0127e9: eb31080136a2     MOV AC0,dbl(*(#0136a2h))
0127ef: ed310801369c     MOV dbl(*(#01369ch)),AC0
0127f5: 9200             CALL AC0
0127f7: 5062             POP T2
0127f9: 4804             RET
0127fb:               _rand:
0127fb: ed310801369a     MOV dbl(*(#01369ah)),AC0
012801: 4efd             AADD #-3,SP
012803: 9200             CALL AC0
012805: 7a41c61a         MOV #16838 << #16,AC1
012809: ed31080136a2     MOV dbl(*(#0136a2h)),AC0
01280f: 7e4e6d11         OR #20077,AC1,AC1
012813: 6c012b24         CALL I$$LMPY
012817: 7b303900         ADD #12345,AC0,AC0
01281b: eb0008           MOV AC0,dbl(@#00h)
01281e: ed0008           MOV dbl(@#00h),AC0
012821: eb31080136a2     MOV AC0,dbl(*(#0136a2h))
012827: ed310801369c     MOV dbl(*(#01369ch)),AC0
01282d: 9200             CALL AC0
01282f: a900             MOV @#00h,AR1
012831: 7d7fff49         AND #32767,AR1,T0
012835: 4e03             AADD #3,SP
012837: 4804             RET
012839:               _fir:
012839: 5076_47a0        PSH T3 || BCLR ST0_ACOV0
01283d: 4663             BSET ST1_FRCT
01283f: 4616             BCLR ST3_SMUL
012841: c964_98          MOV AR1,mmap(@BSA01)
012844: c532_98          MOV T1,mmap(@BK03)
012847: 90bc_3d09        MOV XAR3,XAR4 || MOV #0,AR1
01284b: ac63             MOV *AR3+,AR4
01284d: 7b000175         ADD #1,T1,T3
012851: c760_98          MOV T3,mmap(@BK47)
012854: cb68_98          MOV AR3,mmap(@BSA45)
012857: 4615             BSET ST2_AR1LC
012859: 4645             BSET ST2_AR4LC
01285b: b465_4314        AMAR *AR3- || SUB #1,T0
01285f: 524e             MOV T0,BRC0
012861: 2254             MOV T1,T0
012863: 4235             SUB #3,T1
012865: 525c_4b90        MOV T1,CSR || RPTBLOCAL #0x012879
012869: 86049002            MPYM T3 = *AR0+,*AR1+,AC0
01286d: c783_4900           MOV T3,*AR4+ || RPT CSR
012871: 86261020               MACM *AR1+,*AR4+,AC0,AC0
012875: 86265021            MACMR *AR1+,*(AR4-AR0),AC0,AC0
012879: bc43                MOV HI(AC0),*AR2+
01287b:               loop1:
01287b: cc61_3d04        MOV AR4,*AR3 || MOV #0,T0
01287f: 3c14_9ee0        XCCPART overflow(AC0) || MOV #1,T0
012883: 4614             BCLR ST2_AR1LC
012885: 4644             BCLR ST2_AR4LC
012887: 5072_4762        POP T3 || BCLR ST1_FRCT
01288b: 4617_4904        BSET ST3_SMUL || RET
01288f:               _auto_init:
01288f: 4eff             AADD #-1,SP
012891: ec318e0095b2     AMAR *(#095b2h),XAR0
012897: 368f             NOT AR0,AR7
012899: 040f29           BCC #0x0128c5,AR7 == #0
01289c: aa03             MOV *AR0+,AR2
01289e: 040a24           BCC #0x0128c5,AR2 == #0
0128a1: f9038808_431a    MOV uns(*AR0+) << #8,AC0 || SUB #1,AR2
0128a7: df0315_53ac      MOV uns(*AR0+),AC1 || MOV AR2,CSR
0128ac: 101138           OR AC1 << #-8, AC0
0128af: 18ff11           AND #255,AC1,AC1
0128b2: 900e             MOV AC0,XAR6
0128b4: 6391             BCC #0x0128bd,AC1 != #0
0128b6: 4800             RPT CSR
0128b8: 800714              MOV *AR0+,*AR6+
0128bb: 4a5f             B #0x01289c
0128bd: 4800             RPT CSR
0128bf: 800714_9a           MOV *AR0+,port(*AR6+)
0128c3: 4a57             B #0x01289c
0128c5: ec31ee7fffff     AMAR *(#07fffffh),XAR6
0128cb: 36ef             NOT AR6,AR7
0128cd: 648f             BCC #0x0128d8,AR7 == #0
0128cf: edc308           MOV dbl(*AR6+),AC0
0128d2: 6200             BCC #0x0128d8,AC0 == #0
0128d4: 9200             CALL AC0
0128d6: 4a77             B #0x0128cf
0128d8: 4e01             AADD #1,SP
0128da: 4804             RET
0128dc:               __args_main:
0128dc: 7affff0a         MOV #-1 << #16,AC0
0128e0: 7affff1a         MOV #-1 << #16,AC1
0128e4: 7effff00         OR #65535,AC0,AC0
0128e8: 7effff11         OR #65535,AC1,AC1
0128ec: 121c04           CMPU AC1 != AC0, TC1
0128ef: 4eff             AADD #-1,SP
0128f1: 20               NOP
0128f2: 20               NOP
0128f3: 3c04_9ef4        XCCPART !TC1 || MOV #0,T0
0128f7: 9674             XCC !TC1
0128f9: ec318e000000     AMAR *(#00000h),XAR0
0128ff: 04741d           BCC #0x01291f,!TC1
012902: 7affff0a         MOV #-1 << #16,AC0
012906: 7effff00         OR #65535,AC0,AC0
01290a: 900b             MOV AC0,XAR3
01290c: 7affff0a         MOV #-1 << #16,AC0
012910: a461             MOV *AR3,T0
012912: 7effff00         OR #65535,AC0,AC0
012916: 900b             MOV AC0,XAR3
012918: 1402b4           AADD #2,AR3
01291b: 90b0             MOV XAR3,AC0
01291d: 9008             MOV AC0,XAR0
01291f: 6c010a89         CALL _main
012923: 4e01             AADD #1,SP
012925: 4804             RET
012927:               __divli:
012927: 1a0021_5166      OR #0,AC1,AC2 || PSH T2
01292c: 2c02_3d06        XOR AC0,AC2 || MOV #0,T2
012930: 7a7fff0a_9e81    XCCPART AC1 == #0 || MOV #32767 << #16,AC0
012936: 3c16_9ea2        XCCPART AC2 < #0 || MOV #1,T2
01293a: 7effff00_9e81    XCCPART AC1 == #0 || OR #65535,AC0,AC0
012940: 040128           BCC #0x01296b,AC1 == #0
012943: 7a80002a         MOV #-32768 << #16,AC2
012947: 120020           CMP AC0 == AC2, TC1
01294a: 3200             ABS AC0,AC0
01294c: 7a80000a_9ee4    XCCPART TC1 || MOV #-32768 << #16,AC0
012952: 121020           CMP AC1 == AC2, TC1
012955: 3211             ABS AC1,AC1
012957: 7a80001a_9ee4    XCCPART TC1 || MOV #-32768 << #16,AC1
01295d: 6c012438         CALL __divul
012961: 1a0010           OR #0,AC0,AC1
012964: 3400             NEG AC0,AC0
012966: 1a0001_9e86      XCCPART T2 == #0 || OR #0,AC1,AC0
01296b: 5062             POP T2
01296d: 4804             RET
01296f:               __setjmp:
01296f:               _setjmp:
01296f: eb0304           MOV RETA,dbl(*AR0+)
012972: eb03d5           MOV XAR5,dbl(*AR0+)
012975: eb03e5           MOV XAR6,dbl(*AR0+)
012978: eb03f5           MOV XAR7,dbl(*AR0+)
01297b: eb0345           MOV XSP,dbl(*AR0+)
01297e: eb0355           MOV XSSP,dbl(*AR0+)
012981: 5014             POPBOTH AC1
012983: 5015             PSHBOTH AC1
012985: eb0318           MOV AC1,dbl(*AR0+)
012988: c603             MOV T2,*AR0+
01298a: c703             MOV T3,*AR0+
01298c: 3c04             MOV #0,T0
01298e: 4804             RET
012990:               _longjmp:
012990: ed0306           MOV dbl(*AR0+),RETA
012993: ed03df           MOV dbl(*AR0+),XAR5
012996: ed03ef           MOV dbl(*AR0+),XAR6
012999: ed03ff           MOV dbl(*AR0+),XAR7
01299c: ed034f           MOV dbl(*AR0+),XSP
01299f: ed035f           MOV dbl(*AR0+),XSSP
0129a2: ed0318           MOV dbl(*AR0+),AC1
0129a5: 20               NOP
0129a6: 5024             POPBOTH AC2
0129a8: 5015             PSHBOTH AC1
0129aa: a603             MOV *AR0+,T2
0129ac: a703             MOV *AR0+,T3
0129ae: 3c14_9e84        XCCPART T0 == #0 || MOV #1,T0
0129b2: 4804             RET
0129b4:               _convol:
0129b4: 46f4             BCLR ST2_ARMS
0129b6: 4663             BSET ST1_FRCT
0129b8: 4616             BCLR ST3_SMUL
0129ba: 46a0             BCLR ST0_ACOV0
0129bc: c964_98          MOV AR1,mmap(@BSA01)
0129bf: 7c000195         SUB #1,T1,AR1
0129c3: c532_98          MOV T1,mmap(@BK03)
0129c6: 4615             BSET ST2_AR1LC
0129c8: 4214             SUB #1,T0
0129ca: 524e             MOV T0,BRC0
0129cc: 7c000345         SUB #3,T1,T0
0129d0: 524c             MOV T0,CSR
0129d2: 4225_4b8e        SUB #2,T1 || RPTBLOCAL #0x0129e4
0129d6: 8604a000_4900       MPYM *AR0+,*AR1-,AC0 || RPT CSR
0129dc: 8604a020               MACM *AR0+,*AR1-,AC0,AC0
0129e0: 8618a021            MACMR *(AR0-T1),*AR1-,AC0,AC0
0129e4: bc43                MOV HI(AC0),*AR2+
0129e6:               EndLoop:
0129e6: 3c04_4714        MOV #0,T0 || BCLR ST2_AR1LC
0129ea: 3c14_9ee0        XCCPART overflow(AC0) || MOV #1,T0
0129ee: 4662             BCLR ST1_FRCT
0129f0: 46f5             BSET ST2_ARMS
0129f2: 4617_4904        BSET ST3_SMUL || RET
0129f6:               _memcpy:
0129f6: df4005_98        MOV uns(mmap(@T0)),AC0
0129fa: ec01ae           AMAR *AR0,XAR2
0129fd: 6f051824         BCCU #0x012a25,AC0 < #24
012a01: 228b             MOV AR0,AR3
012a03: 2a9b             OR AR1,AR3
012a05: 1801bb           AND #1,AR3,AR3
012a08: 041b1a           BCC #0x012a25,AR3 != #0
012a0b: 5001_190150      SFTL AC0,#-1 || AND #1,AC0,T1
012a10: 4210             SUB #1,AC0
012a12: 64a0             BCC #0x012a1d,AC0 < #0
012a14: dc1003_98        MOV mmap(@AC0L),CSR
012a18: 4800             RPT CSR
012a1a: 802510              MOV dbl(*AR1+),dbl(*AR2+)
012a1d: 020500           RETCC T1 == #0
012a20: 802104           MOV *AR1,*AR2
012a23: 4804             RET
012a25: 020000_4310      RETCC AC0 == #0 || SUB #1,AC0
012a2a: dc1003_98        MOV mmap(@AC0L),CSR
012a2e: 4800             RPT CSR
012a30: 802514              MOV *AR1+,*AR2+
012a33: 4804             RET
012a35:               _exit:
012a35: 5066             PSH T2
012a37: ed310801369a     MOV dbl(*(#01369ah)),AC0
012a3d: 2246             MOV T0,T2
012a3f: 9200             CALL AC0
012a41: ed31080136a0     MOV dbl(*(#0136a0h)),AC0
012a47: 6500             BCC #0x012a53,AC0 == #0
012a49: ed31080136a0     MOV dbl(*(#0136a0h)),AC0
012a4f: 2264             MOV T2,T0
012a51: 9200             CALL AC0
012a53: ed310801369e     MOV dbl(*(#01369eh)),AC0
012a59: 6400             BCC #0x012a63,AC0 == #0
012a5b: ed310801369e     MOV dbl(*(#01369eh)),AC0
012a61: 9200             CALL AC0
012a63: ed310801369c     MOV dbl(*(#01369ch)),AC0
012a69: 9200             CALL AC0
012a6b: 6c012b5a         CALL _abort
012a6f: 5062             POP T2
012a71: 4804             RET
012a73:               I$$DIV:
012a73:               __divi:
012a73: 4eff             AADD #-1,SP
012a75: 225c_3351        MOV T1,AR4 || ABS T1,AC1
012a79: c100_3340        MOV AC1,@#00h || ABS T0,AC0
012a7d: 4682_4d0f        BCLR ST1_SXMD || RPT #15
012a81: de0003              SUBC @#00h,AC0,AC0
012a84: 4683             BSET ST1_SXMD
012a86: 2c4c             XOR T0,AR4
012a88: 2204             MOV AC0,T0
012a8a: 3444_9eac        XCCPART AR4 < #0 || NEG T0,T0
012a8e: 4e01             AADD #1,SP
012a90: 4804             RET
012a92:               I$$MOD:
012a92:               __remi:
012a92: 4eff_3351        AADD #-1,SP || ABS T1,AC1
012a96: c100_3340        MOV AC1,@#00h || ABS T0,AC0
012a9a: 4682_4d0f        BCLR ST1_SXMD || RPT #15
012a9e: de0003              SUBC @#00h,AC0,AC0
012aa1: 4683             BSET ST1_SXMD
012aa3: 2245             MOV T0,T1
012aa5: 4404             MOV HI(AC0),T0
012aa7: 6155             BCC #0x012aab,T1 >= #0
012aa9: 3444             NEG T0,T0
012aab: 4e01             AADD #1,SP
012aad: 4804             RET
012aaf:               _c_int00:
012aaf: ec314e000380     AMAR *(#00380h),XSP
012ab5: ec315e000280     AMAR *(#00280h),XSSP
012abb: f406f91f_98      AND #63775,mmap(@ST1_55)
012ac0: f5064100_98      OR #16640,mmap(@ST1_55)
012ac5: f496fa00_98      AND #64000,mmap(@ST2_55)
012aca: f5968000_98      OR #32768,mmap(@ST2_55)
012acf: 4656             BCLR ST3_SATA
012ad1: 4617             BSET ST3_SMUL
012ad3: 4606             BCLR ST3_SST
012ad5: 6c01288f         CALL _auto_init
012ad9: 6c0128dc         CALL __args_main
012add: 3c19             MOV #1,AR1
012adf: 6c012a35         CALL _exit
012ae3:               I$$UDIV:
012ae3:               __divu:
012ae3: 4eff             AADD #-1,SP
012ae5: 4682             BCLR ST1_SXMD
012ae7: c500_2340        MOV T1,@#00h || MOV T0,AC0
012aeb: 4c0f             RPT #15
012aed: de0003              SUBC @#00h,AC0,AC0
012af0: 4683             BSET ST1_SXMD
012af2: 2204             MOV AC0,T0
012af4: 4e01             AADD #1,SP
012af6: 4804             RET
012af8:               I$$UMOD:
012af8:               __remu:
012af8: 4eff             AADD #-1,SP
012afa: 4682             BCLR ST1_SXMD
012afc: c500_2340        MOV T1,@#00h || MOV T0,AC0
012b00: 4c0f             RPT #15
012b02: de0003              SUBC @#00h,AC0,AC0
012b05: 4683             BSET ST1_SXMD
012b07: 4404             MOV HI(AC0),T0
012b09: 4e01             AADD #1,SP
012b0b: 4804             RET
012b0d:               _time:
012b0d: 50d5             PSHBOTH XAR5
012b0f: 20               NOP
012b10: 20               NOP
012b11: 20               NOP
012b12: ec01de           AMAR *AR0,XAR5
012b15: 6c010c06         CALL _HOSTtime
012b19: 90d1             MOV XAR5,AC1
012b1b: eba108_9e11      XCC AC1 != #0 || MOV AC0,dbl(*AR5)
012b20: 50d4             POPBOTH XAR5
012b22: 4804             RET
012b24:               I$$LMPY:
012b24:               __mpyli:
012b24: 5016_2304        PSH AC1 || MOV AC0,T0
012b28: d30000           MPYM @#00h,AC0,AC0
012b2b: 5842             MAC AC1,T0,AC0,AC1
012b2d: d3000c           MPYMU @#00h,T0,AC0
012b30: 101310_4f01      ADD AC1 << #16,AC0 || AADD #1,SP
012b35: 4804             RET
012b37:               __register_unlock:
012b37: eb310801369c     MOV AC0,dbl(*(#01369ch))
012b3d: 4804             RET
012b3f:               __register_lock:
012b3f: eb310801369a     MOV AC0,dbl(*(#01369ah))
012b45: 4804             RET
012b47:               __nop:
012b47: 4804             RET
012b49:               _memset:
012b49: ec01be           AMAR *AR0,XAR3
012b4c: 6505             BCC #0x012b58,T1 == #0
012b4e: 7c000195         SUB #1,T1,AR1
012b52: 529c             MOV AR1,CSR
012b54: 4800             RPT CSR
012b56: c463                MOV T0,*AR3+
012b58: 4804             RET
012b5a:               _abort:
012b5a:               .text:CIO_breakpoint:
012b5a: 20               NOP
012b5b:               C$$EXIT:
012b5b: 20               NOP
012b5c: 16000c           SIM_TRIG
012b5f: 4a7e             B #0x012b5f
012b61: 4a7e             B #0x012b61
012b63: 20               NOP

DATA section .data, 0x12 words load/run at 0xE000
00e000:               .data:.const:_$P$T0$1:
00e000: ff7d             .word 0xff7d
00e001: feda             .word 0xfeda
00e002: 01eb             .word 0x01eb
00e003: 0560             .word 0x0560
00e004: 05df             .word 0x05df
00e005: 0000             .word 0x0000
00e006:               .data:.const:_$P$T1$2:
00e006: c000             .word 0xc000
00e007: c003             .word 0xc003
00e008: c00a             .word 0xc00a
00e009: c017             .word 0xc017
00e00a: c028             .word 0xc028
00e00b: c03f             .word 0xc03f
00e00c:               .data:.const:_$P$T2$3:
00e00c: ff7d             .word 0xff7d
00e00d: feda             .word 0xfeda
00e00e: 01eb             .word 0x01eb
00e00f: 0560             .word 0x0560
00e010: 05df             .word 0x05df
00e011: 0000             .word 0x0000

TEXT section .const, 0xD bytes load/run at 0x26D78
026d78:               .const:_$P$T0$1:
026d78:               _$P$T0$1:
026d78:               .const:
026d78: 6c0124d9         CALL _coverage_log
026d7c:               .const:_$P$T1$2:
026d7c:               _$P$T1$2:
026d7c: 6c0124d9         CALL _coverage_log
026d80:               .const:_$P$T2$3:
026d80:               _$P$T2$3:
026d80: 6c0124d9         CALL _coverage_log
026d84: 20               NOP

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
