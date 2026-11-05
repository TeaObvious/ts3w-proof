# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10987f90 (PackageTool_Merge)
Paired Ghidra pseudocode: 10987F90_PackageTool_Merge.c
Window: [0x10987f90, 0x10988e30) (3744 bytes; stop exclusive)
Next defined Ghidra entry: 0x10988e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10987f90: 81 ec 08 0f 00 00 8b 84 24 10 0f 00 00 53 55 56
10987fa0: 57 33 db 50 8d 4c 24 58 89 5c 24 58 89 5c 24 5c
10987fb0: 89 5c 24 60 c7 44 24 64 8c 6c b9 10 e8 5f 26 6e
10987fc0: ff 8b 8c 24 24 0f 00 00 51 8d 4c 24 78 89 5c 24
10987fd0: 78 89 5c 24 7c 89 9c 24 80 00 00 00 c7 84 24 84
10987fe0: 00 00 00 6c 6c b9 10 e8 34 26 6e ff 8b 94 24 28
10987ff0: 0f 00 00 52 8d 4c 24 68 89 5c 24 68 89 5c 24 6c
10988000: 89 5c 24 70 c7 44 24 74 50 6c b9 10 e8 0f 26 6e
10988010: ff 68 e7 00 00 00 68 d0 df aa 10 33 c0 53 89 44
10988020: 24 30 89 44 24 34 8d 44 24 30 53 8b c8 68 2c 6c
10988030: b9 10 6a 18 c7 44 24 44 2c 6c b9 10 89 44 24 3c
10988040: 89 4c 24 40 e8 67 0e f9 ff 8b f0 8d 4e 08 83 c4
10988050: 18 3b cb 74 0a 8d 54 24 54 52 e8 c1 22 6e ff 8d
10988060: 44 24 24 89 06 8b 4c 24 28 68 e7 00 00 00 89 4e
10988070: 04 8b 54 24 2c 68 d0 df aa 10 53 89 32 8b 44 24
10988080: 38 53 50 6a 18 89 74 24 40 e8 22 0e f9 ff 8b f0
10988090: 8d 4e 08 83 c4 18 3b cb 74 0a 8d 54 24 74 52 e8
109880a0: 7c 22 6e ff 8d 44 24 24 89 06 8b 4c 24 28 68 e7
109880b0: 00 00 00 89 4e 04 8b 54 24 2c 68 d0 df aa 10 53
109880c0: 89 32 8b 44 24 38 53 50 6a 18 89 74 24 40 e8 dd
109880d0: 0d f9 ff 8b f0 8d 4e 08 83 c4 18 3b cb 74 0a 8d
109880e0: 54 24 64 52 e8 37 22 6e ff 8d 44 24 24 89 06 8b
109880f0: 4c 24 28 89 4e 04 8b 54 24 28 89 32 33 c0 89 44
10988100: 24 38 89 44 24 3c 8d 44 24 38 8b c8 89 44 24 38
10988110: 8b 44 24 24 8d 54 24 24 3b c2 89 74 24 28 c7 44
10988120: 24 40 08 6c b9 10 89 4c 24 3c bd 44 82 ca 10 0f
10988130: 84 a6 04 00 00 8b 40 08 6a 05 53 50 8d 84 24 0c
10988140: 09 00 00 50 c7 44 24 60 ec 6b b9 10 89 6c 24 54
10988150: 89 6c 24 58 c7 44 24 5c 46 82 ca 10 e8 6f 97 f9
10988160: ff 83 c4 10 66 39 18 8b c8 74 0d eb 03 8d 49 00
10988170: 83 c1 02 66 39 19 75 f8 2b c8 d1 f9 8d 0c 48 51
10988180: 50 8d 4c 24 4c e8 36 77 69 ff 8b 4c 24 48 8b 7c
10988190: 24 44 8b d1 2b d7 d1 fa 74 17 3b f9 8b c7 74 11
109881a0: 66 83 38 2a 0f 84 57 01 00 00 83 c0 02 3b c1 75
109881b0: ef 89 9c 24 84 00 00 00 89 9c 24 88 00 00 00 89
109881c0: 9c 24 8c 00 00 00 89 9c 24 90 00 00 00 e8 ce 6a
109881d0: f8 ff 33 c9 89 8c 24 94 00 00 00 89 8c 24 98 00
109881e0: 00 00 89 84 24 9c 00 00 00 8d 84 24 94 00 00 00
109881f0: 8b c8 89 8c 24 98 00 00 00 57 8d 8c 24 f4 04 00
10988200: 00 89 9c 24 a4 00 00 00 c7 84 24 a8 00 00 00 cc
10988210: 6b b9 10 89 84 24 98 00 00 00 e8 71 a1 f9 ff 68
10988220: 04 01 00 00 8d 94 24 e4 00 00 00 52 8d 8c 24 f8
10988230: 04 00 00 e8 38 9f f9 ff 68 00 00 10 00 6a 02 8d
10988240: 8c 24 f8 04 00 00 e8 b5 9d f9 ff 50 8d 84 24 a0
10988250: 00 00 00 50 8d 8c 24 f0 00 00 00 51 8d 8c 24 98
10988260: 00 00 00 e8 18 70 f8 ff 8b ac 24 94 00 00 00 8d
10988270: 94 24 94 00 00 00 3b ea 89 6c 24 34 0f 84 dc 02
10988280: 00 00 eb 0c 8d a4 24 00 00 00 00 eb 03 8d 49 00
10988290: 66 83 bc 24 e0 00 00 00 00 8d 84 24 e0 00 00 00
109882a0: 74 09 83 c0 02 66 83 38 00 75 f7 8d 8c 24 e0 00
109882b0: 00 00 2b c1 d1 f8 8d 84 44 e0 00 00 00 8b d1 2b
109882c0: c2 8b d8 d1 fb 8d 43 01 83 f8 01 0f 86 b8 00 00
109882d0: 00 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d
109882e0: 34 00 68 a8 6b b9 10 56 e8 c3 0b f9 ff 8b f8 8d
109882f0: 04 37 83 c4 18 89 84 24 c0 00 00 00 e9 98 00 00
10988300: 00 3b c1 0f 84 a8 fe ff ff 2b c7 d1 f8 83 f8 ff
10988310: 0f 84 9b fe ff ff 8b c7 66 83 38 3f 74 0c 83 c0
10988320: 02 3b c1 75 f3 e9 87 fe ff ff 3b c1 0f 84 7f fe
10988330: ff ff 2b c7 d1 f8 83 f8 ff 0f 84 72 fe ff ff 8b
10988340: 44 24 40 68 e7 00 00 00 68 d0 df aa 10 53 53 50
10988350: 6a 18 e8 59 0b f9 ff 8b f0 8d 4e 08 83 c4 18 3b
10988360: cb 74 0a 8d 54 24 44 52 e8 b3 1f 6e ff 8d 44 24
10988370: 38 89 06 8b 4c 24 3c 89 4e 04 8b 54 24 3c 89 32
10988380: 89 74 24 3c e9 ec 01 00 00 bf 44 82 ca 10 c7 84
10988390: 24 c0 00 00 00 46 82 ca 10 8d 34 1b 56 8d 8c 24
109883a0: e4 00 00 00 51 57 ff 15 00 b6 aa 10 03 f7 66 c7
109883b0: 06 00 00 8b 55 10 2b 55 0c 8b c6 2b c7 d1 f8 d1
109883c0: fa 03 c2 83 c0 01 83 c4 0c 83 f8 01 c7 44 24 20
109883d0: a8 6b b9 10 76 28 68 e7 00 00 00 68 d0 df aa 10
109883e0: 6a 00 6a 00 8d 1c 00 68 a8 6b b9 10 53 e8 be 0a
109883f0: f9 ff 8d 0c 18 83 c4 18 89 4c 24 1c eb 0d b8 44
10988400: 82 ca 10 c7 44 24 1c 46 82 ca 10 56 57 8d 4c 24
10988410: 1c 89 44 24 20 89 44 24 1c 66 c7 00 00 00 e8 8d
10988420: 6f 69 ff 8b 55 10 8b 45 0c 52 50 8d 4c 24 1c e8
10988430: 7c 6f 69 ff 8b 4c 24 40 68 e7 00 00 00 68 d0 df
10988440: aa 10 6a 00 6a 00 51 6a 18 e8 62 0a f9 ff 8b d8
10988450: 8b 44 24 2c 8d 73 08 83 c4 18 85 f6 0f 84 96 00
10988460: 00 00 8b 6c 24 18 2b 6c 24 14 8b 54 24 20 33 c0
10988470: d1 fd 89 06 89 46 04 89 46 08 8d 45 01 83 f8 01
10988480: 89 56 0c 76 30 68 e7 00 00 00 68 d0 df aa 10 6a
10988490: 00 6a 00 8b ca 03 c0 51 50 89 44 24 28 e8 0e 0a
109884a0: f9 ff 8b 54 24 28 83 c4 18 89 06 89 46 04 03 c2
109884b0: 89 46 08 eb 14 c7 06 44 82 ca 10 c7 46 04 44 82
109884c0: ca 10 c7 46 08 46 82 ca 10 8b 4c 24 14 8b 06 03
109884d0: ed 55 51 50 89 44 24 1c ff 15 00 b6 aa 10 8b 54
109884e0: 24 1c 8d 04 2a 8b 6c 24 40 89 46 04 66 c7 00 00
109884f0: 00 8b 44 24 20 83 c4 0c 8d 4c 24 38 89 0b 8b 54
10988500: 24 3c 89 53 04 8b 54 24 1c 8b 4c 24 3c 2b d0 83
10988510: e2 fe 83 fa 02 89 19 89 5c 24 3c 7e 0d 85 c0 74
10988520: 09 50 e8 69 09 f9 ff 83 c4 04 8b 84 24 c0 00 00
10988530: 00 2b c7 83 e0 fe 83 f8 02 7e 0d 85 ff 74 09 57
10988540: e8 4b 09 f9 ff 83 c4 04 8b 6d 00 8d 84 24 94 00
10988550: 00 00 3b e8 89 6c 24 34 0f 85 32 fd ff ff 8d 8c
10988560: 24 94 00 00 00 e8 a6 9d 6e ff 8b 7c 24 44 bd 44
10988570: 82 ca 10 33 db 8b 74 24 24 8b 4e 04 8b 16 8d 46
10988580: 04 89 11 8b 0e 8b 10 89 51 04 8b 46 08 8b 4e 10
10988590: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50 e8
109885a0: ec 08 f9 ff 83 c4 04 56 e8 e3 08 f9 ff 8b 54 24
109885b0: 50 2b d7 83 e2 fe 83 c4 04 83 fa 02 7e 0d 3b fb
109885c0: 74 09 57 e8 c8 08 f9 ff 83 c4 04 8b 44 24 24 8d
109885d0: 4c 24 24 3b c1 0f 85 5a fb ff ff 6a 01 6a 05 8d
109885e0: 8c 24 d0 00 00 00 e8 b5 e6 f9 ff 68 98 03 00 00
109885f0: e8 eb 09 f9 ff 83 c4 04 3b c3 0f 84 b4 00 00 00
10988600: 53 53 8b c8 e8 c7 69 f5 ff 8b f8 3b fb 74 0a 8b
10988610: 57 04 8b 02 8d 4f 04 ff d0 6a 02 8b cf e8 9e 06
10988620: fc ff 8b 17 8b 42 04 8b cf ff d0 84 c0 0f 84 72
10988630: 07 00 00 8b 17 8b 84 24 1c 0f 00 00 8b 52 2c 50
10988640: 8b cf ff d2 84 c0 0f 84 59 07 00 00 8b 07 8b 50
10988650: 18 53 6a 02 6a 02 8b cf ff d2 84 c0 0f 84 43 07
10988660: 00 00 53 53 53 53 68 9c 6b b9 10 6a 48 e8 3e 08
10988670: f9 ff 83 c4 18 3b c3 74 42 8b c8 e8 90 9d b9 ff
10988680: 8b d8 85 db 74 08 8b 03 8b 10 8b cb ff d2 6a 00
10988690: 6a 00 6a 00 6a 00 68 8c 6b b9 10 6a 50 e8 0e 08
109886a0: f9 ff 83 c4 18 85 c0 74 16 8b c8 e8 80 bd 8b ff
109886b0: 8b e8 eb 0d 33 ff e9 5e ff ff ff 33 db eb cf 33
109886c0: ed 6a 00 6a 00 6a 00 6a 00 68 8c 6b b9 10 6a 50
109886d0: e8 db 07 f9 ff 83 c4 18 85 c0 74 0d 8b c8 e8 4d
109886e0: bd 8b ff 89 44 24 34 eb 08 c7 44 24 34 00 00 00
109886f0: 00 8b 44 24 34 33 f6 c7 45 48 3f 34 dc 02 c7 40
10988700: 48 f1 84 68 73 8b 44 24 38 8d 4c 24 38 3b c1 89
10988710: 74 24 44 89 74 24 48 89 74 24 4c c7 44 24 50 68
10988720: 6b b9 10 89 b4 24 84 00 00 00 89 b4 24 88 00 00
10988730: 00 89 44 24 10 0f 84 31 01 00 00 eb 03 8d 49 00
10988740: 8d 54 24 14 8b c2 68 98 03 00 00 c7 44 24 20 00
10988750: 00 00 00 89 54 24 1c 89 44 24 18 e8 80 08 f9 ff
10988760: 83 c4 04 85 c0 74 0f 6a 00 6a 00 8b c8 e8 5e 68
10988770: f5 ff 8b f0 eb 02 33 f6 8b 4c 24 1c 3b f1 74 3f
10988780: 8b 44 24 18 8d 54 24 14 3b c2 75 0e 85 c9 74 29
10988790: 8b 01 8b 10 6a 01 ff d2 eb 1f 8b 4c 24 14 89 41
109887a0: 04 8b 54 24 18 8b 44 24 14 89 02 8d 4c 24 14 8b
109887b0: d1 89 4c 24 18 89 54 24 14 8b ce 89 4c 24 1c 8b
109887c0: 01 8b 50 04 ff d2 84 c0 0f 84 12 02 00 00 8b 44
109887d0: 24 10 8b 40 08 8b 4c 24 1c 8b 11 50 8b 42 2c ff
109887e0: d0 84 c0 0f 84 f7 01 00 00 8b 4c 24 1c 8b 11 8b
109887f0: 42 18 6a 00 6a 06 6a 01 ff d0 84 c0 0f 84 de 01
10988800: 00 00 85 db 8d 8c 24 84 00 00 00 51 8d 54 24 48
10988810: 52 51 8b c4 89 18 74 08 8b 03 8b 10 8b cb ff d2
10988820: 8b 44 24 40 8b 4c 24 28 50 55 51 57 e8 0f f0 ff
10988830: ff 8b 4c 24 38 8b 11 8b f0 8b 42 08 83 c4 1c ff
10988840: d0 8d 4c 24 14 e8 56 e9 ff ff 85 f6 0f 8c f8 00
10988850: 00 00 8b 4c 24 10 8b 01 8d 54 24 38 3b c2 89 44
10988860: 24 10 0f 85 d8 fe ff ff 8b 74 24 44 c7 44 24 30
10988870: 00 00 00 00 8b 17 8b 42 28 8b cf ff d0 50 8d 8c
10988880: 24 0c 0b 00 00 e8 06 9b f9 ff 68 00 01 00 00 8d
10988890: 8c 24 ec 02 00 00 51 8d 8c 24 10 0b 00 00 e8 9d
109888a0: 97 f9 ff 8d 94 24 e8 02 00 00 52 e8 d0 b0 c3 ff
109888b0: 8b 4c 24 34 83 c4 04 85 c9 89 84 24 a8 00 00 00
109888c0: 89 94 24 ac 00 00 00 c7 84 24 b0 00 00 00 8c 03
109888d0: 66 01 c7 84 24 b4 00 00 00 00 00 00 00 74 0f c7
109888e0: 44 24 30 00 00 00 00 8b 01 8b 50 08 ff d2 8b 07
109888f0: 8b 40 34 6a 00 6a 01 6a 02 6a 03 8d 4c 24 40 51
10988900: 8d 94 24 bc 00 00 00 52 8b cf ff d0 84 c0 8b 4c
10988910: 24 30 0f 85 21 01 00 00 85 c9 74 07 8b 11 8b 42
10988920: 08 ff d0 85 f6 74 09 56 e8 63 05 f9 ff 83 c4 04
10988930: 85 db 74 09 8b 13 8b 42 04 8b cb ff d0 8b 57 04
10988940: 8b 42 04 8d 4f 04 ff d0 eb 29 8b 44 24 44 85 c0
10988950: 74 09 50 e8 38 05 f9 ff 83 c4 04 85 db 74 09 8b
10988960: 03 8b 50 04 8b cb ff d2 8b 47 04 8b 50 04 8d 4f
10988970: 04 ff d2 8d 4c 24 38 e8 44 92 e4 ff 8d 4c 24 24
10988980: e8 3b 92 e4 ff 8b 44 24 64 8b 4c 24 6c 2b c8 83
10988990: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ef 04 f9
109889a0: ff 83 c4 04 8b 44 24 74 8b 54 24 7c 2b d0 83 e2
109889b0: fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 d0 04 f9 ff
109889c0: 83 c4 04 8b 4c 24 5c 8b 44 24 54 2b c8 83 e1 fe
109889d0: 83 f9 02 0f 8e 46 04 00 00 85 c0 e9 34 04 00 00
109889e0: 8b 4c 24 1c 85 c9 0f 84 5e ff ff ff 8b 44 24 18
109889f0: 8d 54 24 14 3b c2 75 15 8b 01 8b 10 6a 01 ff d2
10988a00: c7 44 24 1c 00 00 00 00 e9 3d ff ff ff 8b 4c 24
10988a10: 14 89 41 04 8b 54 24 18 8b 44 24 14 89 02 8d 4c
10988a20: 24 14 8b d1 89 4c 24 18 89 54 24 14 c7 44 24 1c
10988a30: 00 00 00 00 e9 11 ff ff ff 8b 11 8b 42 18 ff d0
10988a40: 50 8b cb e8 38 90 b9 ff 8d 4c 24 44 51 8b 4c 24
10988a50: 34 8b 11 8b 42 18 ff d0 50 e8 22 ed ff ff 8b 4c
10988a60: 24 38 8b 11 8b 42 20 83 c4 08 ff d0 85 db 74 09
10988a70: 8b 13 8b 42 04 8b cb ff d0 83 7d 34 00 be 44 82
10988a80: ca 10 c7 44 24 20 e8 6a b9 10 89 74 24 14 89 74
10988a90: 24 18 c7 44 24 1c 46 82 ca 10 bb 4a d1 c5 94 0f
10988aa0: 86 25 01 00 00 8d 8c 24 e8 02 00 00 51 8d 54 24
10988ab0: 18 68 38 6b b9 10 52 c7 44 24 1c 00 00 00 00 e8
10988ac0: 2c 25 6e ff 8b 74 24 20 56 e8 b2 ae c3 ff 8b 4c
10988ad0: 24 20 83 c4 10 85 c9 89 84 24 84 00 00 00 89 94
10988ae0: 24 88 00 00 00 89 9c 24 8c 00 00 00 c7 84 24 90
10988af0: 00 00 00 01 00 00 00 74 0f c7 44 24 10 00 00 00
10988b00: 00 8b 01 8b 50 08 ff d2 8b 07 8b 40 34 6a 00 6a
10988b10: 01 6a 02 6a 03 8d 4c 24 20 51 8d 94 24 98 00 00
10988b20: 00 52 8b cf ff d0 84 c0 8b 4c 24 10 75 5a 85 c9
10988b30: 74 07 8b 11 8b 42 08 ff d0 8b 4c 24 1c 2b ce 83
10988b40: e1 fe 83 f9 02 7e 0d 85 f6 74 09 56 e8 3f 03 f9
10988b50: ff 83 c4 04 8b 4c 24 30 85 c9 74 07 8b 11 8b 42
10988b60: 08 ff d0 8b 44 24 44 85 c0 0f 84 ce fd ff ff 50
10988b70: e8 1b 03 f9 ff 8b 57 04 8b 42 04 8d 4f 04 83 c4
10988b80: 04 ff d0 e9 eb fd ff ff 8b 11 8b 42 18 ff d0 50
10988b90: 8b cd e8 89 49 da ff 8d 4c 24 44 51 8b 4c 24 14
10988ba0: 8b 11 8b 42 18 ff d0 50 e8 d3 eb ff ff 8b 4c 24
10988bb0: 18 8b 11 8b 42 20 83 c4 08 ff d0 8b 4c 24 10 85
10988bc0: c9 74 07 8b 11 8b 42 08 ff d0 8b 4c 24 34 83 79
10988bd0: 34 00 0f 86 e9 00 00 00 8d 94 24 e8 02 00 00 52
10988be0: 8d 44 24 18 68 04 6b b9 10 50 c7 44 24 1c 00 00
10988bf0: 00 00 e8 f9 23 6e ff 8b 74 24 20 56 e8 7f ad c3
10988c00: ff 8b 4c 24 20 83 c4 10 85 c9 89 84 24 84 00 00
10988c10: 00 89 94 24 88 00 00 00 89 9c 24 8c 00 00 00 c7
10988c20: 84 24 90 00 00 00 01 00 00 00 74 0f c7 44 24 10
10988c30: 00 00 00 00 8b 11 8b 42 08 ff d0 8b 17 8b 52 34
10988c40: 6a 00 6a 01 6a 02 6a 03 8d 44 24 20 50 8d 8c 24
10988c50: 98 00 00 00 51 8b cf ff d2 84 c0 8b 4c 24 10 75
10988c60: 1c 85 c9 74 07 8b 01 8b 50 08 ff d2 8b 44 24 1c
10988c70: 2b c6 83 e0 fe 83 f8 02 e9 c8 fe ff ff 8b 11 8b
10988c80: 42 18 ff d0 8b 4c 24 34 50 e8 92 48 da ff 8d 4c
10988c90: 24 44 51 8b 4c 24 14 8b 11 8b 42 18 ff d0 50 e8
10988ca0: dc ea ff ff 8b 4c 24 18 8b 11 8b 42 20 83 c4 08
10988cb0: ff d0 8b 4c 24 10 85 c9 74 07 8b 11 8b 42 08 ff
10988cc0: d0 8b 55 00 8b 42 08 8b 5c 24 1c 6a 01 8b cd ff
10988cd0: d0 8b 4c 24 34 8b 11 8b 42 08 6a 01 ff d0 8b 17
10988ce0: 8b 42 08 8b cf ff d0 2b de 83 e3 fe 83 fb 02 7e
10988cf0: 0d 85 f6 74 09 56 e8 95 01 f9 ff 83 c4 04 8b 4c
10988d00: 24 30 85 c9 74 07 8b 11 8b 42 08 ff d0 8b 44 24
10988d10: 44 85 c0 74 09 50 e8 75 01 f9 ff 83 c4 04 8b 57
10988d20: 04 8b 42 04 8d 4f 04 ff d0 8d 4c 24 38 e8 8e 8e
10988d30: e4 ff 8d 4c 24 24 e8 85 8e e4 ff 8b 4c 24 6c 8b
10988d40: 44 24 64 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74
10988d50: 09 50 e8 39 01 f9 ff 83 c4 04 8b 54 24 7c 8b 44
10988d60: 24 74 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09
10988d70: 50 e8 1a 01 f9 ff 83 c4 04 8b 4c 24 5c 8b 44 24
10988d80: 54 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
10988d90: e8 fb 00 f9 ff 83 c4 04 b0 01 5f 5e 5d 5b 81 c4
10988da0: 08 0f 00 00 c3 8b 57 04 8b 42 04 8d 4f 04 ff d0
10988db0: 8d 4c 24 38 e8 07 8e e4 ff 8d 4c 24 24 e8 fe 8d
10988dc0: e4 ff 8b 4c 24 6c 8b 44 24 64 2b c8 83 e1 fe 83
10988dd0: f9 02 7e 0d 3b c3 74 09 50 e8 b2 00 f9 ff 83 c4
10988de0: 04 8b 54 24 7c 8b 44 24 74 2b d0 83 e2 fe 83 fa
10988df0: 02 7e 0d 3b c3 74 09 50 e8 93 00 f9 ff 83 c4 04
10988e00: 8b 4c 24 5c 8b 44 24 54 2b c8 83 e1 fe 83 f9 02
10988e10: 7e 0d 3b c3 74 09 50 e8 74 00 f9 ff 83 c4 04 5f
10988e20: 5e 5d 32 c0 5b 81 c4 08 0f 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10987f90 <.text+0x986f90>:
10987f90:	81 ec 08 0f 00 00                               	sub    esp,0xf08
10987f96:	8b 84 24 10 0f 00 00                            	mov    eax,DWORD PTR [esp+0xf10]
10987f9d:	53                                              	push   ebx
10987f9e:	55                                              	push   ebp
10987f9f:	56                                              	push   esi
10987fa0:	57                                              	push   edi
10987fa1:	33 db                                           	xor    ebx,ebx
10987fa3:	50                                              	push   eax
10987fa4:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10987fa8:	89 5c 24 58                                     	mov    DWORD PTR [esp+0x58],ebx
10987fac:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
10987fb0:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
10987fb4:	c7 44 24 64 8c 6c b9 10                         	mov    DWORD PTR [esp+0x64],0x10b96c8c
10987fbc:	e8 5f 26 6e ff                                  	call   0x1006a620
10987fc1:	8b 8c 24 24 0f 00 00                            	mov    ecx,DWORD PTR [esp+0xf24]
10987fc8:	51                                              	push   ecx
10987fc9:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
10987fcd:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
10987fd1:	89 5c 24 7c                                     	mov    DWORD PTR [esp+0x7c],ebx
10987fd5:	89 9c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ebx
10987fdc:	c7 84 24 84 00 00 00 6c 6c b9 10                	mov    DWORD PTR [esp+0x84],0x10b96c6c
10987fe7:	e8 34 26 6e ff                                  	call   0x1006a620
10987fec:	8b 94 24 28 0f 00 00                            	mov    edx,DWORD PTR [esp+0xf28]
10987ff3:	52                                              	push   edx
10987ff4:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10987ff8:	89 5c 24 68                                     	mov    DWORD PTR [esp+0x68],ebx
10987ffc:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
10988000:	89 5c 24 70                                     	mov    DWORD PTR [esp+0x70],ebx
10988004:	c7 44 24 74 50 6c b9 10                         	mov    DWORD PTR [esp+0x74],0x10b96c50
1098800c:	e8 0f 26 6e ff                                  	call   0x1006a620
10988011:	68 e7 00 00 00                                  	push   0xe7
10988016:	68 d0 df aa 10                                  	push   0x10aadfd0
1098801b:	33 c0                                           	xor    eax,eax
1098801d:	53                                              	push   ebx
1098801e:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10988022:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
10988026:	8d 44 24 30                                     	lea    eax,[esp+0x30]
1098802a:	53                                              	push   ebx
1098802b:	8b c8                                           	mov    ecx,eax
1098802d:	68 2c 6c b9 10                                  	push   0x10b96c2c
10988032:	6a 18                                           	push   0x18
10988034:	c7 44 24 44 2c 6c b9 10                         	mov    DWORD PTR [esp+0x44],0x10b96c2c
1098803c:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10988040:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
10988044:	e8 67 0e f9 ff                                  	call   0x10918eb0
10988049:	8b f0                                           	mov    esi,eax
1098804b:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1098804e:	83 c4 18                                        	add    esp,0x18
10988051:	3b cb                                           	cmp    ecx,ebx
10988053:	74 0a                                           	je     0x1098805f
10988055:	8d 54 24 54                                     	lea    edx,[esp+0x54]
10988059:	52                                              	push   edx
1098805a:	e8 c1 22 6e ff                                  	call   0x1006a320
1098805f:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10988063:	89 06                                           	mov    DWORD PTR [esi],eax
10988065:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10988069:	68 e7 00 00 00                                  	push   0xe7
1098806e:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
10988071:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10988075:	68 d0 df aa 10                                  	push   0x10aadfd0
1098807a:	53                                              	push   ebx
1098807b:	89 32                                           	mov    DWORD PTR [edx],esi
1098807d:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10988081:	53                                              	push   ebx
10988082:	50                                              	push   eax
10988083:	6a 18                                           	push   0x18
10988085:	89 74 24 40                                     	mov    DWORD PTR [esp+0x40],esi
10988089:	e8 22 0e f9 ff                                  	call   0x10918eb0
1098808e:	8b f0                                           	mov    esi,eax
10988090:	8d 4e 08                                        	lea    ecx,[esi+0x8]
10988093:	83 c4 18                                        	add    esp,0x18
10988096:	3b cb                                           	cmp    ecx,ebx
10988098:	74 0a                                           	je     0x109880a4
1098809a:	8d 54 24 74                                     	lea    edx,[esp+0x74]
1098809e:	52                                              	push   edx
1098809f:	e8 7c 22 6e ff                                  	call   0x1006a320
109880a4:	8d 44 24 24                                     	lea    eax,[esp+0x24]
109880a8:	89 06                                           	mov    DWORD PTR [esi],eax
109880aa:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109880ae:	68 e7 00 00 00                                  	push   0xe7
109880b3:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
109880b6:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
109880ba:	68 d0 df aa 10                                  	push   0x10aadfd0
109880bf:	53                                              	push   ebx
109880c0:	89 32                                           	mov    DWORD PTR [edx],esi
109880c2:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
109880c6:	53                                              	push   ebx
109880c7:	50                                              	push   eax
109880c8:	6a 18                                           	push   0x18
109880ca:	89 74 24 40                                     	mov    DWORD PTR [esp+0x40],esi
109880ce:	e8 dd 0d f9 ff                                  	call   0x10918eb0
109880d3:	8b f0                                           	mov    esi,eax
109880d5:	8d 4e 08                                        	lea    ecx,[esi+0x8]
109880d8:	83 c4 18                                        	add    esp,0x18
109880db:	3b cb                                           	cmp    ecx,ebx
109880dd:	74 0a                                           	je     0x109880e9
109880df:	8d 54 24 64                                     	lea    edx,[esp+0x64]
109880e3:	52                                              	push   edx
109880e4:	e8 37 22 6e ff                                  	call   0x1006a320
109880e9:	8d 44 24 24                                     	lea    eax,[esp+0x24]
109880ed:	89 06                                           	mov    DWORD PTR [esi],eax
109880ef:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109880f3:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
109880f6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
109880fa:	89 32                                           	mov    DWORD PTR [edx],esi
109880fc:	33 c0                                           	xor    eax,eax
109880fe:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
10988102:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10988106:	8d 44 24 38                                     	lea    eax,[esp+0x38]
1098810a:	8b c8                                           	mov    ecx,eax
1098810c:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
10988110:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10988114:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10988118:	3b c2                                           	cmp    eax,edx
1098811a:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
1098811e:	c7 44 24 40 08 6c b9 10                         	mov    DWORD PTR [esp+0x40],0x10b96c08
10988126:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
1098812a:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
1098812f:	0f 84 a6 04 00 00                               	je     0x109885db
10988135:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10988138:	6a 05                                           	push   0x5
1098813a:	53                                              	push   ebx
1098813b:	50                                              	push   eax
1098813c:	8d 84 24 0c 09 00 00                            	lea    eax,[esp+0x90c]
10988143:	50                                              	push   eax
10988144:	c7 44 24 60 ec 6b b9 10                         	mov    DWORD PTR [esp+0x60],0x10b96bec
1098814c:	89 6c 24 54                                     	mov    DWORD PTR [esp+0x54],ebp
10988150:	89 6c 24 58                                     	mov    DWORD PTR [esp+0x58],ebp
10988154:	c7 44 24 5c 46 82 ca 10                         	mov    DWORD PTR [esp+0x5c],0x10ca8246
1098815c:	e8 6f 97 f9 ff                                  	call   0x109218d0
10988161:	83 c4 10                                        	add    esp,0x10
10988164:	66 39 18                                        	cmp    WORD PTR [eax],bx
10988167:	8b c8                                           	mov    ecx,eax
10988169:	74 0d                                           	je     0x10988178
1098816b:	eb 03                                           	jmp    0x10988170
1098816d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10988170:	83 c1 02                                        	add    ecx,0x2
10988173:	66 39 19                                        	cmp    WORD PTR [ecx],bx
10988176:	75 f8                                           	jne    0x10988170
10988178:	2b c8                                           	sub    ecx,eax
1098817a:	d1 f9                                           	sar    ecx,1
1098817c:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
1098817f:	51                                              	push   ecx
10988180:	50                                              	push   eax
10988181:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10988185:	e8 36 77 69 ff                                  	call   0x1001f8c0
1098818a:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1098818e:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
10988192:	8b d1                                           	mov    edx,ecx
10988194:	2b d7                                           	sub    edx,edi
10988196:	d1 fa                                           	sar    edx,1
10988198:	74 17                                           	je     0x109881b1
1098819a:	3b f9                                           	cmp    edi,ecx
1098819c:	8b c7                                           	mov    eax,edi
1098819e:	74 11                                           	je     0x109881b1
109881a0:	66 83 38 2a                                     	cmp    WORD PTR [eax],0x2a
109881a4:	0f 84 57 01 00 00                               	je     0x10988301
109881aa:	83 c0 02                                        	add    eax,0x2
109881ad:	3b c1                                           	cmp    eax,ecx
109881af:	75 ef                                           	jne    0x109881a0
109881b1:	89 9c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ebx
109881b8:	89 9c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ebx
109881bf:	89 9c 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],ebx
109881c6:	89 9c 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],ebx
109881cd:	e8 ce 6a f8 ff                                  	call   0x1090eca0
109881d2:	33 c9                                           	xor    ecx,ecx
109881d4:	89 8c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ecx
109881db:	89 8c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ecx
109881e2:	89 84 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],eax
109881e9:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
109881f0:	8b c8                                           	mov    ecx,eax
109881f2:	89 8c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ecx
109881f9:	57                                              	push   edi
109881fa:	8d 8c 24 f4 04 00 00                            	lea    ecx,[esp+0x4f4]
10988201:	89 9c 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],ebx
10988208:	c7 84 24 a8 00 00 00 cc 6b b9 10                	mov    DWORD PTR [esp+0xa8],0x10b96bcc
10988213:	89 84 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],eax
1098821a:	e8 71 a1 f9 ff                                  	call   0x10922390
1098821f:	68 04 01 00 00                                  	push   0x104
10988224:	8d 94 24 e4 00 00 00                            	lea    edx,[esp+0xe4]
1098822b:	52                                              	push   edx
1098822c:	8d 8c 24 f8 04 00 00                            	lea    ecx,[esp+0x4f8]
10988233:	e8 38 9f f9 ff                                  	call   0x10922170
10988238:	68 00 00 10 00                                  	push   0x100000
1098823d:	6a 02                                           	push   0x2
1098823f:	8d 8c 24 f8 04 00 00                            	lea    ecx,[esp+0x4f8]
10988246:	e8 b5 9d f9 ff                                  	call   0x10922000
1098824b:	50                                              	push   eax
1098824c:	8d 84 24 a0 00 00 00                            	lea    eax,[esp+0xa0]
10988253:	50                                              	push   eax
10988254:	8d 8c 24 f0 00 00 00                            	lea    ecx,[esp+0xf0]
1098825b:	51                                              	push   ecx
1098825c:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
10988263:	e8 18 70 f8 ff                                  	call   0x1090f280
10988268:	8b ac 24 94 00 00 00                            	mov    ebp,DWORD PTR [esp+0x94]
1098826f:	8d 94 24 94 00 00 00                            	lea    edx,[esp+0x94]
10988276:	3b ea                                           	cmp    ebp,edx
10988278:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
1098827c:	0f 84 dc 02 00 00                               	je     0x1098855e
10988282:	eb 0c                                           	jmp    0x10988290
10988284:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
1098828b:	eb 03                                           	jmp    0x10988290
1098828d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10988290:	66 83 bc 24 e0 00 00 00 00                      	cmp    WORD PTR [esp+0xe0],0x0
10988299:	8d 84 24 e0 00 00 00                            	lea    eax,[esp+0xe0]
109882a0:	74 09                                           	je     0x109882ab
109882a2:	83 c0 02                                        	add    eax,0x2
109882a5:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
109882a9:	75 f7                                           	jne    0x109882a2
109882ab:	8d 8c 24 e0 00 00 00                            	lea    ecx,[esp+0xe0]
109882b2:	2b c1                                           	sub    eax,ecx
109882b4:	d1 f8                                           	sar    eax,1
109882b6:	8d 84 44 e0 00 00 00                            	lea    eax,[esp+eax*2+0xe0]
109882bd:	8b d1                                           	mov    edx,ecx
109882bf:	2b c2                                           	sub    eax,edx
109882c1:	8b d8                                           	mov    ebx,eax
109882c3:	d1 fb                                           	sar    ebx,1
109882c5:	8d 43 01                                        	lea    eax,[ebx+0x1]
109882c8:	83 f8 01                                        	cmp    eax,0x1
109882cb:	0f 86 b8 00 00 00                               	jbe    0x10988389
109882d1:	68 e7 00 00 00                                  	push   0xe7
109882d6:	68 d0 df aa 10                                  	push   0x10aadfd0
109882db:	6a 00                                           	push   0x0
109882dd:	6a 00                                           	push   0x0
109882df:	8d 34 00                                        	lea    esi,[eax+eax*1]
109882e2:	68 a8 6b b9 10                                  	push   0x10b96ba8
109882e7:	56                                              	push   esi
109882e8:	e8 c3 0b f9 ff                                  	call   0x10918eb0
109882ed:	8b f8                                           	mov    edi,eax
109882ef:	8d 04 37                                        	lea    eax,[edi+esi*1]
109882f2:	83 c4 18                                        	add    esp,0x18
109882f5:	89 84 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],eax
109882fc:	e9 98 00 00 00                                  	jmp    0x10988399
10988301:	3b c1                                           	cmp    eax,ecx
10988303:	0f 84 a8 fe ff ff                               	je     0x109881b1
10988309:	2b c7                                           	sub    eax,edi
1098830b:	d1 f8                                           	sar    eax,1
1098830d:	83 f8 ff                                        	cmp    eax,0xffffffff
10988310:	0f 84 9b fe ff ff                               	je     0x109881b1
10988316:	8b c7                                           	mov    eax,edi
10988318:	66 83 38 3f                                     	cmp    WORD PTR [eax],0x3f
1098831c:	74 0c                                           	je     0x1098832a
1098831e:	83 c0 02                                        	add    eax,0x2
10988321:	3b c1                                           	cmp    eax,ecx
10988323:	75 f3                                           	jne    0x10988318
10988325:	e9 87 fe ff ff                                  	jmp    0x109881b1
1098832a:	3b c1                                           	cmp    eax,ecx
1098832c:	0f 84 7f fe ff ff                               	je     0x109881b1
10988332:	2b c7                                           	sub    eax,edi
10988334:	d1 f8                                           	sar    eax,1
10988336:	83 f8 ff                                        	cmp    eax,0xffffffff
10988339:	0f 84 72 fe ff ff                               	je     0x109881b1
1098833f:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10988343:	68 e7 00 00 00                                  	push   0xe7
10988348:	68 d0 df aa 10                                  	push   0x10aadfd0
1098834d:	53                                              	push   ebx
1098834e:	53                                              	push   ebx
1098834f:	50                                              	push   eax
10988350:	6a 18                                           	push   0x18
10988352:	e8 59 0b f9 ff                                  	call   0x10918eb0
10988357:	8b f0                                           	mov    esi,eax
10988359:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1098835c:	83 c4 18                                        	add    esp,0x18
1098835f:	3b cb                                           	cmp    ecx,ebx
10988361:	74 0a                                           	je     0x1098836d
10988363:	8d 54 24 44                                     	lea    edx,[esp+0x44]
10988367:	52                                              	push   edx
10988368:	e8 b3 1f 6e ff                                  	call   0x1006a320
1098836d:	8d 44 24 38                                     	lea    eax,[esp+0x38]
10988371:	89 06                                           	mov    DWORD PTR [esi],eax
10988373:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10988377:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
1098837a:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1098837e:	89 32                                           	mov    DWORD PTR [edx],esi
10988380:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
10988384:	e9 ec 01 00 00                                  	jmp    0x10988575
10988389:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
1098838e:	c7 84 24 c0 00 00 00 46 82 ca 10                	mov    DWORD PTR [esp+0xc0],0x10ca8246
10988399:	8d 34 1b                                        	lea    esi,[ebx+ebx*1]
1098839c:	56                                              	push   esi
1098839d:	8d 8c 24 e4 00 00 00                            	lea    ecx,[esp+0xe4]
109883a4:	51                                              	push   ecx
109883a5:	57                                              	push   edi
109883a6:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109883ac:	03 f7                                           	add    esi,edi
109883ae:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
109883b3:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
109883b6:	2b 55 0c                                        	sub    edx,DWORD PTR [ebp+0xc]
109883b9:	8b c6                                           	mov    eax,esi
109883bb:	2b c7                                           	sub    eax,edi
109883bd:	d1 f8                                           	sar    eax,1
109883bf:	d1 fa                                           	sar    edx,1
109883c1:	03 c2                                           	add    eax,edx
109883c3:	83 c0 01                                        	add    eax,0x1
109883c6:	83 c4 0c                                        	add    esp,0xc
109883c9:	83 f8 01                                        	cmp    eax,0x1
109883cc:	c7 44 24 20 a8 6b b9 10                         	mov    DWORD PTR [esp+0x20],0x10b96ba8
109883d4:	76 28                                           	jbe    0x109883fe
109883d6:	68 e7 00 00 00                                  	push   0xe7
109883db:	68 d0 df aa 10                                  	push   0x10aadfd0
109883e0:	6a 00                                           	push   0x0
109883e2:	6a 00                                           	push   0x0
109883e4:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
109883e7:	68 a8 6b b9 10                                  	push   0x10b96ba8
109883ec:	53                                              	push   ebx
109883ed:	e8 be 0a f9 ff                                  	call   0x10918eb0
109883f2:	8d 0c 18                                        	lea    ecx,[eax+ebx*1]
109883f5:	83 c4 18                                        	add    esp,0x18
109883f8:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
109883fc:	eb 0d                                           	jmp    0x1098840b
109883fe:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10988403:	c7 44 24 1c 46 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8246
1098840b:	56                                              	push   esi
1098840c:	57                                              	push   edi
1098840d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10988411:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
10988415:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10988419:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
1098841e:	e8 8d 6f 69 ff                                  	call   0x1001f3b0
10988423:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10988426:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10988429:	52                                              	push   edx
1098842a:	50                                              	push   eax
1098842b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098842f:	e8 7c 6f 69 ff                                  	call   0x1001f3b0
10988434:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10988438:	68 e7 00 00 00                                  	push   0xe7
1098843d:	68 d0 df aa 10                                  	push   0x10aadfd0
10988442:	6a 00                                           	push   0x0
10988444:	6a 00                                           	push   0x0
10988446:	51                                              	push   ecx
10988447:	6a 18                                           	push   0x18
10988449:	e8 62 0a f9 ff                                  	call   0x10918eb0
1098844e:	8b d8                                           	mov    ebx,eax
10988450:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10988454:	8d 73 08                                        	lea    esi,[ebx+0x8]
10988457:	83 c4 18                                        	add    esp,0x18
1098845a:	85 f6                                           	test   esi,esi
1098845c:	0f 84 96 00 00 00                               	je     0x109884f8
10988462:	8b 6c 24 18                                     	mov    ebp,DWORD PTR [esp+0x18]
10988466:	2b 6c 24 14                                     	sub    ebp,DWORD PTR [esp+0x14]
1098846a:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098846e:	33 c0                                           	xor    eax,eax
10988470:	d1 fd                                           	sar    ebp,1
10988472:	89 06                                           	mov    DWORD PTR [esi],eax
10988474:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10988477:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1098847a:	8d 45 01                                        	lea    eax,[ebp+0x1]
1098847d:	83 f8 01                                        	cmp    eax,0x1
10988480:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
10988483:	76 30                                           	jbe    0x109884b5
10988485:	68 e7 00 00 00                                  	push   0xe7
1098848a:	68 d0 df aa 10                                  	push   0x10aadfd0
1098848f:	6a 00                                           	push   0x0
10988491:	6a 00                                           	push   0x0
10988493:	8b ca                                           	mov    ecx,edx
10988495:	03 c0                                           	add    eax,eax
10988497:	51                                              	push   ecx
10988498:	50                                              	push   eax
10988499:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1098849d:	e8 0e 0a f9 ff                                  	call   0x10918eb0
109884a2:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
109884a6:	83 c4 18                                        	add    esp,0x18
109884a9:	89 06                                           	mov    DWORD PTR [esi],eax
109884ab:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109884ae:	03 c2                                           	add    eax,edx
109884b0:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
109884b3:	eb 14                                           	jmp    0x109884c9
109884b5:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
109884bb:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
109884c2:	c7 46 08 46 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8246
109884c9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109884cd:	8b 06                                           	mov    eax,DWORD PTR [esi]
109884cf:	03 ed                                           	add    ebp,ebp
109884d1:	55                                              	push   ebp
109884d2:	51                                              	push   ecx
109884d3:	50                                              	push   eax
109884d4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
109884d8:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109884de:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
109884e2:	8d 04 2a                                        	lea    eax,[edx+ebp*1]
109884e5:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
109884e9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109884ec:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
109884f1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109884f5:	83 c4 0c                                        	add    esp,0xc
109884f8:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
109884fc:	89 0b                                           	mov    DWORD PTR [ebx],ecx
109884fe:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
10988502:	89 53 04                                        	mov    DWORD PTR [ebx+0x4],edx
10988505:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10988509:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1098850d:	2b d0                                           	sub    edx,eax
1098850f:	83 e2 fe                                        	and    edx,0xfffffffe
10988512:	83 fa 02                                        	cmp    edx,0x2
10988515:	89 19                                           	mov    DWORD PTR [ecx],ebx
10988517:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
1098851b:	7e 0d                                           	jle    0x1098852a
1098851d:	85 c0                                           	test   eax,eax
1098851f:	74 09                                           	je     0x1098852a
10988521:	50                                              	push   eax
10988522:	e8 69 09 f9 ff                                  	call   0x10918e90
10988527:	83 c4 04                                        	add    esp,0x4
1098852a:	8b 84 24 c0 00 00 00                            	mov    eax,DWORD PTR [esp+0xc0]
10988531:	2b c7                                           	sub    eax,edi
10988533:	83 e0 fe                                        	and    eax,0xfffffffe
10988536:	83 f8 02                                        	cmp    eax,0x2
10988539:	7e 0d                                           	jle    0x10988548
1098853b:	85 ff                                           	test   edi,edi
1098853d:	74 09                                           	je     0x10988548
1098853f:	57                                              	push   edi
10988540:	e8 4b 09 f9 ff                                  	call   0x10918e90
10988545:	83 c4 04                                        	add    esp,0x4
10988548:	8b 6d 00                                        	mov    ebp,DWORD PTR [ebp+0x0]
1098854b:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
10988552:	3b e8                                           	cmp    ebp,eax
10988554:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
10988558:	0f 85 32 fd ff ff                               	jne    0x10988290
1098855e:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10988565:	e8 a6 9d 6e ff                                  	call   0x10072310
1098856a:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
1098856e:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
10988573:	33 db                                           	xor    ebx,ebx
10988575:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
10988579:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098857c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098857e:	8d 46 04                                        	lea    eax,[esi+0x4]
10988581:	89 11                                           	mov    DWORD PTR [ecx],edx
10988583:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
10988585:	8b 10                                           	mov    edx,DWORD PTR [eax]
10988587:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1098858a:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098858d:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
10988590:	2b c8                                           	sub    ecx,eax
10988592:	83 e1 fe                                        	and    ecx,0xfffffffe
10988595:	83 f9 02                                        	cmp    ecx,0x2
10988598:	7e 0d                                           	jle    0x109885a7
1098859a:	3b c3                                           	cmp    eax,ebx
1098859c:	74 09                                           	je     0x109885a7
1098859e:	50                                              	push   eax
1098859f:	e8 ec 08 f9 ff                                  	call   0x10918e90
109885a4:	83 c4 04                                        	add    esp,0x4
109885a7:	56                                              	push   esi
109885a8:	e8 e3 08 f9 ff                                  	call   0x10918e90
109885ad:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
109885b1:	2b d7                                           	sub    edx,edi
109885b3:	83 e2 fe                                        	and    edx,0xfffffffe
109885b6:	83 c4 04                                        	add    esp,0x4
109885b9:	83 fa 02                                        	cmp    edx,0x2
109885bc:	7e 0d                                           	jle    0x109885cb
109885be:	3b fb                                           	cmp    edi,ebx
109885c0:	74 09                                           	je     0x109885cb
109885c2:	57                                              	push   edi
109885c3:	e8 c8 08 f9 ff                                  	call   0x10918e90
109885c8:	83 c4 04                                        	add    esp,0x4
109885cb:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
109885cf:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109885d3:	3b c1                                           	cmp    eax,ecx
109885d5:	0f 85 5a fb ff ff                               	jne    0x10988135
109885db:	6a 01                                           	push   0x1
109885dd:	6a 05                                           	push   0x5
109885df:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
109885e6:	e8 b5 e6 f9 ff                                  	call   0x10926ca0
109885eb:	68 98 03 00 00                                  	push   0x398
109885f0:	e8 eb 09 f9 ff                                  	call   0x10918fe0
109885f5:	83 c4 04                                        	add    esp,0x4
109885f8:	3b c3                                           	cmp    eax,ebx
109885fa:	0f 84 b4 00 00 00                               	je     0x109886b4
10988600:	53                                              	push   ebx
10988601:	53                                              	push   ebx
10988602:	8b c8                                           	mov    ecx,eax
10988604:	e8 c7 69 f5 ff                                  	call   0x108defd0
10988609:	8b f8                                           	mov    edi,eax
1098860b:	3b fb                                           	cmp    edi,ebx
1098860d:	74 0a                                           	je     0x10988619
1098860f:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10988612:	8b 02                                           	mov    eax,DWORD PTR [edx]
10988614:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988617:	ff d0                                           	call   eax
10988619:	6a 02                                           	push   0x2
1098861b:	8b cf                                           	mov    ecx,edi
1098861d:	e8 9e 06 fc ff                                  	call   0x10948cc0
10988622:	8b 17                                           	mov    edx,DWORD PTR [edi]
10988624:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988627:	8b cf                                           	mov    ecx,edi
10988629:	ff d0                                           	call   eax
1098862b:	84 c0                                           	test   al,al
1098862d:	0f 84 72 07 00 00                               	je     0x10988da5
10988633:	8b 17                                           	mov    edx,DWORD PTR [edi]
10988635:	8b 84 24 1c 0f 00 00                            	mov    eax,DWORD PTR [esp+0xf1c]
1098863c:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
1098863f:	50                                              	push   eax
10988640:	8b cf                                           	mov    ecx,edi
10988642:	ff d2                                           	call   edx
10988644:	84 c0                                           	test   al,al
10988646:	0f 84 59 07 00 00                               	je     0x10988da5
1098864c:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098864e:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
10988651:	53                                              	push   ebx
10988652:	6a 02                                           	push   0x2
10988654:	6a 02                                           	push   0x2
10988656:	8b cf                                           	mov    ecx,edi
10988658:	ff d2                                           	call   edx
1098865a:	84 c0                                           	test   al,al
1098865c:	0f 84 43 07 00 00                               	je     0x10988da5
10988662:	53                                              	push   ebx
10988663:	53                                              	push   ebx
10988664:	53                                              	push   ebx
10988665:	53                                              	push   ebx
10988666:	68 9c 6b b9 10                                  	push   0x10b96b9c
1098866b:	6a 48                                           	push   0x48
1098866d:	e8 3e 08 f9 ff                                  	call   0x10918eb0
10988672:	83 c4 18                                        	add    esp,0x18
10988675:	3b c3                                           	cmp    eax,ebx
10988677:	74 42                                           	je     0x109886bb
10988679:	8b c8                                           	mov    ecx,eax
1098867b:	e8 90 9d b9 ff                                  	call   0x10522410
10988680:	8b d8                                           	mov    ebx,eax
10988682:	85 db                                           	test   ebx,ebx
10988684:	74 08                                           	je     0x1098868e
10988686:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10988688:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098868a:	8b cb                                           	mov    ecx,ebx
1098868c:	ff d2                                           	call   edx
1098868e:	6a 00                                           	push   0x0
10988690:	6a 00                                           	push   0x0
10988692:	6a 00                                           	push   0x0
10988694:	6a 00                                           	push   0x0
10988696:	68 8c 6b b9 10                                  	push   0x10b96b8c
1098869b:	6a 50                                           	push   0x50
1098869d:	e8 0e 08 f9 ff                                  	call   0x10918eb0
109886a2:	83 c4 18                                        	add    esp,0x18
109886a5:	85 c0                                           	test   eax,eax
109886a7:	74 16                                           	je     0x109886bf
109886a9:	8b c8                                           	mov    ecx,eax
109886ab:	e8 80 bd 8b ff                                  	call   0x10244430
109886b0:	8b e8                                           	mov    ebp,eax
109886b2:	eb 0d                                           	jmp    0x109886c1
109886b4:	33 ff                                           	xor    edi,edi
109886b6:	e9 5e ff ff ff                                  	jmp    0x10988619
109886bb:	33 db                                           	xor    ebx,ebx
109886bd:	eb cf                                           	jmp    0x1098868e
109886bf:	33 ed                                           	xor    ebp,ebp
109886c1:	6a 00                                           	push   0x0
109886c3:	6a 00                                           	push   0x0
109886c5:	6a 00                                           	push   0x0
109886c7:	6a 00                                           	push   0x0
109886c9:	68 8c 6b b9 10                                  	push   0x10b96b8c
109886ce:	6a 50                                           	push   0x50
109886d0:	e8 db 07 f9 ff                                  	call   0x10918eb0
109886d5:	83 c4 18                                        	add    esp,0x18
109886d8:	85 c0                                           	test   eax,eax
109886da:	74 0d                                           	je     0x109886e9
109886dc:	8b c8                                           	mov    ecx,eax
109886de:	e8 4d bd 8b ff                                  	call   0x10244430
109886e3:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
109886e7:	eb 08                                           	jmp    0x109886f1
109886e9:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
109886f1:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
109886f5:	33 f6                                           	xor    esi,esi
109886f7:	c7 45 48 3f 34 dc 02                            	mov    DWORD PTR [ebp+0x48],0x2dc343f
109886fe:	c7 40 48 f1 84 68 73                            	mov    DWORD PTR [eax+0x48],0x736884f1
10988705:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10988709:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1098870d:	3b c1                                           	cmp    eax,ecx
1098870f:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
10988713:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
10988717:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
1098871b:	c7 44 24 50 68 6b b9 10                         	mov    DWORD PTR [esp+0x50],0x10b96b68
10988723:	89 b4 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],esi
1098872a:	89 b4 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],esi
10988731:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10988735:	0f 84 31 01 00 00                               	je     0x1098886c
1098873b:	eb 03                                           	jmp    0x10988740
1098873d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10988740:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10988744:	8b c2                                           	mov    eax,edx
10988746:	68 98 03 00 00                                  	push   0x398
1098874b:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
10988753:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10988757:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098875b:	e8 80 08 f9 ff                                  	call   0x10918fe0
10988760:	83 c4 04                                        	add    esp,0x4
10988763:	85 c0                                           	test   eax,eax
10988765:	74 0f                                           	je     0x10988776
10988767:	6a 00                                           	push   0x0
10988769:	6a 00                                           	push   0x0
1098876b:	8b c8                                           	mov    ecx,eax
1098876d:	e8 5e 68 f5 ff                                  	call   0x108defd0
10988772:	8b f0                                           	mov    esi,eax
10988774:	eb 02                                           	jmp    0x10988778
10988776:	33 f6                                           	xor    esi,esi
10988778:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098877c:	3b f1                                           	cmp    esi,ecx
1098877e:	74 3f                                           	je     0x109887bf
10988780:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10988784:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10988788:	3b c2                                           	cmp    eax,edx
1098878a:	75 0e                                           	jne    0x1098879a
1098878c:	85 c9                                           	test   ecx,ecx
1098878e:	74 29                                           	je     0x109887b9
10988790:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10988792:	8b 10                                           	mov    edx,DWORD PTR [eax]
10988794:	6a 01                                           	push   0x1
10988796:	ff d2                                           	call   edx
10988798:	eb 1f                                           	jmp    0x109887b9
1098879a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098879e:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
109887a1:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
109887a5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109887a9:	89 02                                           	mov    DWORD PTR [edx],eax
109887ab:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109887af:	8b d1                                           	mov    edx,ecx
109887b1:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
109887b5:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
109887b9:	8b ce                                           	mov    ecx,esi
109887bb:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
109887bf:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109887c1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109887c4:	ff d2                                           	call   edx
109887c6:	84 c0                                           	test   al,al
109887c8:	0f 84 12 02 00 00                               	je     0x109889e0
109887ce:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109887d2:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
109887d5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109887d9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109887db:	50                                              	push   eax
109887dc:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
109887df:	ff d0                                           	call   eax
109887e1:	84 c0                                           	test   al,al
109887e3:	0f 84 f7 01 00 00                               	je     0x109889e0
109887e9:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109887ed:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109887ef:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
109887f2:	6a 00                                           	push   0x0
109887f4:	6a 06                                           	push   0x6
109887f6:	6a 01                                           	push   0x1
109887f8:	ff d0                                           	call   eax
109887fa:	84 c0                                           	test   al,al
109887fc:	0f 84 de 01 00 00                               	je     0x109889e0
10988802:	85 db                                           	test   ebx,ebx
10988804:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
1098880b:	51                                              	push   ecx
1098880c:	8d 54 24 48                                     	lea    edx,[esp+0x48]
10988810:	52                                              	push   edx
10988811:	51                                              	push   ecx
10988812:	8b c4                                           	mov    eax,esp
10988814:	89 18                                           	mov    DWORD PTR [eax],ebx
10988816:	74 08                                           	je     0x10988820
10988818:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1098881a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098881c:	8b cb                                           	mov    ecx,ebx
1098881e:	ff d2                                           	call   edx
10988820:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10988824:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10988828:	50                                              	push   eax
10988829:	55                                              	push   ebp
1098882a:	51                                              	push   ecx
1098882b:	57                                              	push   edi
1098882c:	e8 0f f0 ff ff                                  	call   0x10987840
10988831:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10988835:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988837:	8b f0                                           	mov    esi,eax
10988839:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098883c:	83 c4 1c                                        	add    esp,0x1c
1098883f:	ff d0                                           	call   eax
10988841:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10988845:	e8 56 e9 ff ff                                  	call   0x109871a0
1098884a:	85 f6                                           	test   esi,esi
1098884c:	0f 8c f8 00 00 00                               	jl     0x1098894a
10988852:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10988856:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10988858:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1098885c:	3b c2                                           	cmp    eax,edx
1098885e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10988862:	0f 85 d8 fe ff ff                               	jne    0x10988740
10988868:	8b 74 24 44                                     	mov    esi,DWORD PTR [esp+0x44]
1098886c:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
10988874:	8b 17                                           	mov    edx,DWORD PTR [edi]
10988876:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10988879:	8b cf                                           	mov    ecx,edi
1098887b:	ff d0                                           	call   eax
1098887d:	50                                              	push   eax
1098887e:	8d 8c 24 0c 0b 00 00                            	lea    ecx,[esp+0xb0c]
10988885:	e8 06 9b f9 ff                                  	call   0x10922390
1098888a:	68 00 01 00 00                                  	push   0x100
1098888f:	8d 8c 24 ec 02 00 00                            	lea    ecx,[esp+0x2ec]
10988896:	51                                              	push   ecx
10988897:	8d 8c 24 10 0b 00 00                            	lea    ecx,[esp+0xb10]
1098889e:	e8 9d 97 f9 ff                                  	call   0x10922040
109888a3:	8d 94 24 e8 02 00 00                            	lea    edx,[esp+0x2e8]
109888aa:	52                                              	push   edx
109888ab:	e8 d0 b0 c3 ff                                  	call   0x105c3980
109888b0:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
109888b4:	83 c4 04                                        	add    esp,0x4
109888b7:	85 c9                                           	test   ecx,ecx
109888b9:	89 84 24 a8 00 00 00                            	mov    DWORD PTR [esp+0xa8],eax
109888c0:	89 94 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],edx
109888c7:	c7 84 24 b0 00 00 00 8c 03 66 01                	mov    DWORD PTR [esp+0xb0],0x166038c
109888d2:	c7 84 24 b4 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0xb4],0x0
109888dd:	74 0f                                           	je     0x109888ee
109888df:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
109888e7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109888e9:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
109888ec:	ff d2                                           	call   edx
109888ee:	8b 07                                           	mov    eax,DWORD PTR [edi]
109888f0:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
109888f3:	6a 00                                           	push   0x0
109888f5:	6a 01                                           	push   0x1
109888f7:	6a 02                                           	push   0x2
109888f9:	6a 03                                           	push   0x3
109888fb:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
109888ff:	51                                              	push   ecx
10988900:	8d 94 24 bc 00 00 00                            	lea    edx,[esp+0xbc]
10988907:	52                                              	push   edx
10988908:	8b cf                                           	mov    ecx,edi
1098890a:	ff d0                                           	call   eax
1098890c:	84 c0                                           	test   al,al
1098890e:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10988912:	0f 85 21 01 00 00                               	jne    0x10988a39
10988918:	85 c9                                           	test   ecx,ecx
1098891a:	74 07                                           	je     0x10988923
1098891c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098891e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988921:	ff d0                                           	call   eax
10988923:	85 f6                                           	test   esi,esi
10988925:	74 09                                           	je     0x10988930
10988927:	56                                              	push   esi
10988928:	e8 63 05 f9 ff                                  	call   0x10918e90
1098892d:	83 c4 04                                        	add    esp,0x4
10988930:	85 db                                           	test   ebx,ebx
10988932:	74 09                                           	je     0x1098893d
10988934:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10988936:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988939:	8b cb                                           	mov    ecx,ebx
1098893b:	ff d0                                           	call   eax
1098893d:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10988940:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988943:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988946:	ff d0                                           	call   eax
10988948:	eb 29                                           	jmp    0x10988973
1098894a:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1098894e:	85 c0                                           	test   eax,eax
10988950:	74 09                                           	je     0x1098895b
10988952:	50                                              	push   eax
10988953:	e8 38 05 f9 ff                                  	call   0x10918e90
10988958:	83 c4 04                                        	add    esp,0x4
1098895b:	85 db                                           	test   ebx,ebx
1098895d:	74 09                                           	je     0x10988968
1098895f:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10988961:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10988964:	8b cb                                           	mov    ecx,ebx
10988966:	ff d2                                           	call   edx
10988968:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1098896b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098896e:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988971:	ff d2                                           	call   edx
10988973:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10988977:	e8 44 92 e4 ff                                  	call   0x107d1bc0
1098897c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10988980:	e8 3b 92 e4 ff                                  	call   0x107d1bc0
10988985:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10988989:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
1098898d:	2b c8                                           	sub    ecx,eax
1098898f:	83 e1 fe                                        	and    ecx,0xfffffffe
10988992:	83 f9 02                                        	cmp    ecx,0x2
10988995:	7e 0d                                           	jle    0x109889a4
10988997:	85 c0                                           	test   eax,eax
10988999:	74 09                                           	je     0x109889a4
1098899b:	50                                              	push   eax
1098899c:	e8 ef 04 f9 ff                                  	call   0x10918e90
109889a1:	83 c4 04                                        	add    esp,0x4
109889a4:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
109889a8:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
109889ac:	2b d0                                           	sub    edx,eax
109889ae:	83 e2 fe                                        	and    edx,0xfffffffe
109889b1:	83 fa 02                                        	cmp    edx,0x2
109889b4:	7e 0d                                           	jle    0x109889c3
109889b6:	85 c0                                           	test   eax,eax
109889b8:	74 09                                           	je     0x109889c3
109889ba:	50                                              	push   eax
109889bb:	e8 d0 04 f9 ff                                  	call   0x10918e90
109889c0:	83 c4 04                                        	add    esp,0x4
109889c3:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
109889c7:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
109889cb:	2b c8                                           	sub    ecx,eax
109889cd:	83 e1 fe                                        	and    ecx,0xfffffffe
109889d0:	83 f9 02                                        	cmp    ecx,0x2
109889d3:	0f 8e 46 04 00 00                               	jle    0x10988e1f
109889d9:	85 c0                                           	test   eax,eax
109889db:	e9 34 04 00 00                                  	jmp    0x10988e14
109889e0:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109889e4:	85 c9                                           	test   ecx,ecx
109889e6:	0f 84 5e ff ff ff                               	je     0x1098894a
109889ec:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
109889f0:	8d 54 24 14                                     	lea    edx,[esp+0x14]
109889f4:	3b c2                                           	cmp    eax,edx
109889f6:	75 15                                           	jne    0x10988a0d
109889f8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109889fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
109889fc:	6a 01                                           	push   0x1
109889fe:	ff d2                                           	call   edx
10988a00:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10988a08:	e9 3d ff ff ff                                  	jmp    0x1098894a
10988a0d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10988a11:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
10988a14:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10988a18:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10988a1c:	89 02                                           	mov    DWORD PTR [edx],eax
10988a1e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10988a22:	8b d1                                           	mov    edx,ecx
10988a24:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10988a28:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10988a2c:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10988a34:	e9 11 ff ff ff                                  	jmp    0x1098894a
10988a39:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988a3b:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988a3e:	ff d0                                           	call   eax
10988a40:	50                                              	push   eax
10988a41:	8b cb                                           	mov    ecx,ebx
10988a43:	e8 38 90 b9 ff                                  	call   0x10521a80
10988a48:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10988a4c:	51                                              	push   ecx
10988a4d:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10988a51:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988a53:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988a56:	ff d0                                           	call   eax
10988a58:	50                                              	push   eax
10988a59:	e8 22 ed ff ff                                  	call   0x10987780
10988a5e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10988a62:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988a64:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
10988a67:	83 c4 08                                        	add    esp,0x8
10988a6a:	ff d0                                           	call   eax
10988a6c:	85 db                                           	test   ebx,ebx
10988a6e:	74 09                                           	je     0x10988a79
10988a70:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10988a72:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988a75:	8b cb                                           	mov    ecx,ebx
10988a77:	ff d0                                           	call   eax
10988a79:	83 7d 34 00                                     	cmp    DWORD PTR [ebp+0x34],0x0
10988a7d:	be 44 82 ca 10                                  	mov    esi,0x10ca8244
10988a82:	c7 44 24 20 e8 6a b9 10                         	mov    DWORD PTR [esp+0x20],0x10b96ae8
10988a8a:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10988a8e:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
10988a92:	c7 44 24 1c 46 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8246
10988a9a:	bb 4a d1 c5 94                                  	mov    ebx,0x94c5d14a
10988a9f:	0f 86 25 01 00 00                               	jbe    0x10988bca
10988aa5:	8d 8c 24 e8 02 00 00                            	lea    ecx,[esp+0x2e8]
10988aac:	51                                              	push   ecx
10988aad:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10988ab1:	68 38 6b b9 10                                  	push   0x10b96b38
10988ab6:	52                                              	push   edx
10988ab7:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10988abf:	e8 2c 25 6e ff                                  	call   0x1006aff0
10988ac4:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10988ac8:	56                                              	push   esi
10988ac9:	e8 b2 ae c3 ff                                  	call   0x105c3980
10988ace:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10988ad2:	83 c4 10                                        	add    esp,0x10
10988ad5:	85 c9                                           	test   ecx,ecx
10988ad7:	89 84 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],eax
10988ade:	89 94 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],edx
10988ae5:	89 9c 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],ebx
10988aec:	c7 84 24 90 00 00 00 01 00 00 00                	mov    DWORD PTR [esp+0x90],0x1
10988af7:	74 0f                                           	je     0x10988b08
10988af9:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10988b01:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10988b03:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10988b06:	ff d2                                           	call   edx
10988b08:	8b 07                                           	mov    eax,DWORD PTR [edi]
10988b0a:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
10988b0d:	6a 00                                           	push   0x0
10988b0f:	6a 01                                           	push   0x1
10988b11:	6a 02                                           	push   0x2
10988b13:	6a 03                                           	push   0x3
10988b15:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10988b19:	51                                              	push   ecx
10988b1a:	8d 94 24 98 00 00 00                            	lea    edx,[esp+0x98]
10988b21:	52                                              	push   edx
10988b22:	8b cf                                           	mov    ecx,edi
10988b24:	ff d0                                           	call   eax
10988b26:	84 c0                                           	test   al,al
10988b28:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10988b2c:	75 5a                                           	jne    0x10988b88
10988b2e:	85 c9                                           	test   ecx,ecx
10988b30:	74 07                                           	je     0x10988b39
10988b32:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988b34:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988b37:	ff d0                                           	call   eax
10988b39:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10988b3d:	2b ce                                           	sub    ecx,esi
10988b3f:	83 e1 fe                                        	and    ecx,0xfffffffe
10988b42:	83 f9 02                                        	cmp    ecx,0x2
10988b45:	7e 0d                                           	jle    0x10988b54
10988b47:	85 f6                                           	test   esi,esi
10988b49:	74 09                                           	je     0x10988b54
10988b4b:	56                                              	push   esi
10988b4c:	e8 3f 03 f9 ff                                  	call   0x10918e90
10988b51:	83 c4 04                                        	add    esp,0x4
10988b54:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10988b58:	85 c9                                           	test   ecx,ecx
10988b5a:	74 07                                           	je     0x10988b63
10988b5c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988b5e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988b61:	ff d0                                           	call   eax
10988b63:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10988b67:	85 c0                                           	test   eax,eax
10988b69:	0f 84 ce fd ff ff                               	je     0x1098893d
10988b6f:	50                                              	push   eax
10988b70:	e8 1b 03 f9 ff                                  	call   0x10918e90
10988b75:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10988b78:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988b7b:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988b7e:	83 c4 04                                        	add    esp,0x4
10988b81:	ff d0                                           	call   eax
10988b83:	e9 eb fd ff ff                                  	jmp    0x10988973
10988b88:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988b8a:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988b8d:	ff d0                                           	call   eax
10988b8f:	50                                              	push   eax
10988b90:	8b cd                                           	mov    ecx,ebp
10988b92:	e8 89 49 da ff                                  	call   0x1072d520
10988b97:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10988b9b:	51                                              	push   ecx
10988b9c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10988ba0:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988ba2:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988ba5:	ff d0                                           	call   eax
10988ba7:	50                                              	push   eax
10988ba8:	e8 d3 eb ff ff                                  	call   0x10987780
10988bad:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10988bb1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988bb3:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
10988bb6:	83 c4 08                                        	add    esp,0x8
10988bb9:	ff d0                                           	call   eax
10988bbb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10988bbf:	85 c9                                           	test   ecx,ecx
10988bc1:	74 07                                           	je     0x10988bca
10988bc3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988bc5:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988bc8:	ff d0                                           	call   eax
10988bca:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10988bce:	83 79 34 00                                     	cmp    DWORD PTR [ecx+0x34],0x0
10988bd2:	0f 86 e9 00 00 00                               	jbe    0x10988cc1
10988bd8:	8d 94 24 e8 02 00 00                            	lea    edx,[esp+0x2e8]
10988bdf:	52                                              	push   edx
10988be0:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10988be4:	68 04 6b b9 10                                  	push   0x10b96b04
10988be9:	50                                              	push   eax
10988bea:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10988bf2:	e8 f9 23 6e ff                                  	call   0x1006aff0
10988bf7:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
10988bfb:	56                                              	push   esi
10988bfc:	e8 7f ad c3 ff                                  	call   0x105c3980
10988c01:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10988c05:	83 c4 10                                        	add    esp,0x10
10988c08:	85 c9                                           	test   ecx,ecx
10988c0a:	89 84 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],eax
10988c11:	89 94 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],edx
10988c18:	89 9c 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],ebx
10988c1f:	c7 84 24 90 00 00 00 01 00 00 00                	mov    DWORD PTR [esp+0x90],0x1
10988c2a:	74 0f                                           	je     0x10988c3b
10988c2c:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10988c34:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988c36:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988c39:	ff d0                                           	call   eax
10988c3b:	8b 17                                           	mov    edx,DWORD PTR [edi]
10988c3d:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10988c40:	6a 00                                           	push   0x0
10988c42:	6a 01                                           	push   0x1
10988c44:	6a 02                                           	push   0x2
10988c46:	6a 03                                           	push   0x3
10988c48:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10988c4c:	50                                              	push   eax
10988c4d:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
10988c54:	51                                              	push   ecx
10988c55:	8b cf                                           	mov    ecx,edi
10988c57:	ff d2                                           	call   edx
10988c59:	84 c0                                           	test   al,al
10988c5b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10988c5f:	75 1c                                           	jne    0x10988c7d
10988c61:	85 c9                                           	test   ecx,ecx
10988c63:	74 07                                           	je     0x10988c6c
10988c65:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10988c67:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10988c6a:	ff d2                                           	call   edx
10988c6c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10988c70:	2b c6                                           	sub    eax,esi
10988c72:	83 e0 fe                                        	and    eax,0xfffffffe
10988c75:	83 f8 02                                        	cmp    eax,0x2
10988c78:	e9 c8 fe ff ff                                  	jmp    0x10988b45
10988c7d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988c7f:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988c82:	ff d0                                           	call   eax
10988c84:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10988c88:	50                                              	push   eax
10988c89:	e8 92 48 da ff                                  	call   0x1072d520
10988c8e:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10988c92:	51                                              	push   ecx
10988c93:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10988c97:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988c99:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10988c9c:	ff d0                                           	call   eax
10988c9e:	50                                              	push   eax
10988c9f:	e8 dc ea ff ff                                  	call   0x10987780
10988ca4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10988ca8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988caa:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
10988cad:	83 c4 08                                        	add    esp,0x8
10988cb0:	ff d0                                           	call   eax
10988cb2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10988cb6:	85 c9                                           	test   ecx,ecx
10988cb8:	74 07                                           	je     0x10988cc1
10988cba:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988cbc:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988cbf:	ff d0                                           	call   eax
10988cc1:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10988cc4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988cc7:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
10988ccb:	6a 01                                           	push   0x1
10988ccd:	8b cd                                           	mov    ecx,ebp
10988ccf:	ff d0                                           	call   eax
10988cd1:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10988cd5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988cd7:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988cda:	6a 01                                           	push   0x1
10988cdc:	ff d0                                           	call   eax
10988cde:	8b 17                                           	mov    edx,DWORD PTR [edi]
10988ce0:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988ce3:	8b cf                                           	mov    ecx,edi
10988ce5:	ff d0                                           	call   eax
10988ce7:	2b de                                           	sub    ebx,esi
10988ce9:	83 e3 fe                                        	and    ebx,0xfffffffe
10988cec:	83 fb 02                                        	cmp    ebx,0x2
10988cef:	7e 0d                                           	jle    0x10988cfe
10988cf1:	85 f6                                           	test   esi,esi
10988cf3:	74 09                                           	je     0x10988cfe
10988cf5:	56                                              	push   esi
10988cf6:	e8 95 01 f9 ff                                  	call   0x10918e90
10988cfb:	83 c4 04                                        	add    esp,0x4
10988cfe:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10988d02:	85 c9                                           	test   ecx,ecx
10988d04:	74 07                                           	je     0x10988d0d
10988d06:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10988d08:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10988d0b:	ff d0                                           	call   eax
10988d0d:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10988d11:	85 c0                                           	test   eax,eax
10988d13:	74 09                                           	je     0x10988d1e
10988d15:	50                                              	push   eax
10988d16:	e8 75 01 f9 ff                                  	call   0x10918e90
10988d1b:	83 c4 04                                        	add    esp,0x4
10988d1e:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10988d21:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988d24:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988d27:	ff d0                                           	call   eax
10988d29:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10988d2d:	e8 8e 8e e4 ff                                  	call   0x107d1bc0
10988d32:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10988d36:	e8 85 8e e4 ff                                  	call   0x107d1bc0
10988d3b:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10988d3f:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10988d43:	2b c8                                           	sub    ecx,eax
10988d45:	83 e1 fe                                        	and    ecx,0xfffffffe
10988d48:	83 f9 02                                        	cmp    ecx,0x2
10988d4b:	7e 0d                                           	jle    0x10988d5a
10988d4d:	85 c0                                           	test   eax,eax
10988d4f:	74 09                                           	je     0x10988d5a
10988d51:	50                                              	push   eax
10988d52:	e8 39 01 f9 ff                                  	call   0x10918e90
10988d57:	83 c4 04                                        	add    esp,0x4
10988d5a:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
10988d5e:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
10988d62:	2b d0                                           	sub    edx,eax
10988d64:	83 e2 fe                                        	and    edx,0xfffffffe
10988d67:	83 fa 02                                        	cmp    edx,0x2
10988d6a:	7e 0d                                           	jle    0x10988d79
10988d6c:	85 c0                                           	test   eax,eax
10988d6e:	74 09                                           	je     0x10988d79
10988d70:	50                                              	push   eax
10988d71:	e8 1a 01 f9 ff                                  	call   0x10918e90
10988d76:	83 c4 04                                        	add    esp,0x4
10988d79:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10988d7d:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10988d81:	2b c8                                           	sub    ecx,eax
10988d83:	83 e1 fe                                        	and    ecx,0xfffffffe
10988d86:	83 f9 02                                        	cmp    ecx,0x2
10988d89:	7e 0d                                           	jle    0x10988d98
10988d8b:	85 c0                                           	test   eax,eax
10988d8d:	74 09                                           	je     0x10988d98
10988d8f:	50                                              	push   eax
10988d90:	e8 fb 00 f9 ff                                  	call   0x10918e90
10988d95:	83 c4 04                                        	add    esp,0x4
10988d98:	b0 01                                           	mov    al,0x1
10988d9a:	5f                                              	pop    edi
10988d9b:	5e                                              	pop    esi
10988d9c:	5d                                              	pop    ebp
10988d9d:	5b                                              	pop    ebx
10988d9e:	81 c4 08 0f 00 00                               	add    esp,0xf08
10988da4:	c3                                              	ret
10988da5:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
10988da8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10988dab:	8d 4f 04                                        	lea    ecx,[edi+0x4]
10988dae:	ff d0                                           	call   eax
10988db0:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10988db4:	e8 07 8e e4 ff                                  	call   0x107d1bc0
10988db9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10988dbd:	e8 fe 8d e4 ff                                  	call   0x107d1bc0
10988dc2:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10988dc6:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10988dca:	2b c8                                           	sub    ecx,eax
10988dcc:	83 e1 fe                                        	and    ecx,0xfffffffe
10988dcf:	83 f9 02                                        	cmp    ecx,0x2
10988dd2:	7e 0d                                           	jle    0x10988de1
10988dd4:	3b c3                                           	cmp    eax,ebx
10988dd6:	74 09                                           	je     0x10988de1
10988dd8:	50                                              	push   eax
10988dd9:	e8 b2 00 f9 ff                                  	call   0x10918e90
10988dde:	83 c4 04                                        	add    esp,0x4
10988de1:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
10988de5:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
10988de9:	2b d0                                           	sub    edx,eax
10988deb:	83 e2 fe                                        	and    edx,0xfffffffe
10988dee:	83 fa 02                                        	cmp    edx,0x2
10988df1:	7e 0d                                           	jle    0x10988e00
10988df3:	3b c3                                           	cmp    eax,ebx
10988df5:	74 09                                           	je     0x10988e00
10988df7:	50                                              	push   eax
10988df8:	e8 93 00 f9 ff                                  	call   0x10918e90
10988dfd:	83 c4 04                                        	add    esp,0x4
10988e00:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10988e04:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10988e08:	2b c8                                           	sub    ecx,eax
10988e0a:	83 e1 fe                                        	and    ecx,0xfffffffe
10988e0d:	83 f9 02                                        	cmp    ecx,0x2
10988e10:	7e 0d                                           	jle    0x10988e1f
10988e12:	3b c3                                           	cmp    eax,ebx
10988e14:	74 09                                           	je     0x10988e1f
10988e16:	50                                              	push   eax
10988e17:	e8 74 00 f9 ff                                  	call   0x10918e90
10988e1c:	83 c4 04                                        	add    esp,0x4
10988e1f:	5f                                              	pop    edi
10988e20:	5e                                              	pop    esi
10988e21:	5d                                              	pop    ebp
10988e22:	32 c0                                           	xor    al,al
10988e24:	5b                                              	pop    ebx
10988e25:	81 c4 08 0f 00 00                               	add    esp,0xf08
10988e2b:	c3                                              	ret
10988e2c:	cc                                              	int3
10988e2d:	cc                                              	int3
10988e2e:	cc                                              	int3
10988e2f:	cc                                              	int3
