# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10984510 (ContentManager_ExportChallenge)
Paired Ghidra pseudocode: 10984510_ContentManager_ExportChallenge.c
Window: [0x10984510, 0x109855f0) (4320 bytes; stop exclusive)
Next defined Ghidra entry: 0x109855f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10984510: b8 24 12 00 00 e8 d6 c3 10 00 53 55 56 57 e8 0d
10984520: e3 d9 ff be 44 82 ca 10 33 ff 3b c7 bb 46 82 ca
10984530: 10 89 44 24 10 c7 84 24 88 00 00 00 34 68 b9 10
10984540: 89 74 24 7c 89 b4 24 80 00 00 00 89 9c 24 84 00
10984550: 00 00 0f 84 8f 00 00 00 8d 4c 24 5c e8 0f f0 fa
10984560: ff e8 5a ff de ff 3b c7 89 84 24 cc 00 00 00 c7
10984570: 84 24 98 00 00 00 0c 68 b9 10 89 b4 24 8c 00 00
10984580: 00 89 b4 24 90 00 00 00 89 9c 24 94 00 00 00 89
10984590: bc 24 9c 00 00 00 89 bc 24 a0 00 00 00 89 bc 24
109845a0: a4 00 00 00 c7 84 24 a8 00 00 00 e8 67 b9 10 89
109845b0: 7c 24 2c 89 7c 24 30 89 7c 24 34 c7 44 24 38 c4
109845c0: 67 b9 10 75 2f 8b 8c 24 84 00 00 00 8b 44 24 7c
109845d0: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09 50 e8
109845e0: ac 48 f9 ff 83 c4 04 33 c0 5f 5e 5d 5b 81 c4 24
109845f0: 12 00 00 c3 8b ac 24 5c 12 00 00 8b 55 00 57 68
10984600: da 57 05 22 52 8d 44 24 28 50 e8 01 a8 e2 ff 8b
10984610: 5c 24 30 8b 74 24 2c 8d 8c 24 bc 00 00 00 81 e3
10984620: ff ff ff 00 51 89 74 24 30 89 5c 24 34 e8 ae 3c
10984630: e0 ff 83 c4 14 50 8d 4c 24 60 e8 81 ef fa ff 8b
10984640: 4c 24 24 8d 94 24 8c 00 00 00 52 8b 54 24 2c 83
10984650: ec 10 8b c4 89 30 89 58 04 89 48 08 8b 4d 00 89
10984660: 50 0c 8d 44 24 70 50 51 e8 e3 e7 de ff 83 c4 1c
10984670: 8d 54 24 1c 52 57 8d 4c 24 34 e8 21 a9 b3 ff bb
10984680: 01 00 00 00 39 9c 24 58 12 00 00 0f 8e c5 00 00
10984690: 00 8b 44 9d 00 50 8d 8c 24 18 0a 00 00 e8 ee dc
109846a0: f9 ff 68 00 01 00 00 8d 8c 24 10 08 00 00 51 8d
109846b0: 8c 24 1c 0a 00 00 e8 85 d9 f9 ff 8d 94 24 0c 08
109846c0: 00 00 52 e8 b8 f2 c3 ff 8b f0 83 ec 0c 8b c4 8b
109846d0: fa 89 30 b9 da 57 05 22 89 78 04 33 d2 89 48 08
109846e0: 89 50 0c 8b 44 9d 00 89 4c 24 34 50 8d 8c 24 a0
109846f0: 00 00 00 51 89 74 24 34 89 7c 24 38 89 54 24 40
10984700: e8 8b dd de ff 8b 54 24 4c 8b 4c 24 48 83 c4 18
10984710: 3b ca 73 21 8b c1 83 c1 10 85 c0 89 4c 24 30 74
10984720: 23 89 30 b9 da 57 05 22 89 78 04 89 48 08 33 c9
10984730: 89 48 0c eb 0f 8d 44 24 1c 50 51 8d 4c 24 34 e8
10984740: 5c a8 b3 ff 83 c3 01 3b 9c 24 58 12 00 00 0f 8c
10984750: 3d ff ff ff 33 ff 8d 8c 24 ac 04 00 00 e8 ae db
10984760: e1 ff 8d 54 24 5c 52 8d 8c 24 b0 00 00 00 e8 4d
10984770: ee fa ff 8d 84 24 ac 00 00 00 50 8d 8c 24 d8 04
10984780: 00 00 e8 39 ee fa ff 66 8b 8c 24 4c 12 00 00 8b
10984790: 94 24 38 12 00 00 57 83 ec 10 66 89 8c 24 1a 05
109847a0: 00 00 8d 44 24 70 8b cc 50 89 94 24 c4 04 00 00
109847b0: e8 0b ee fa ff 8d 8c 24 c0 04 00 00 e8 1f 2a e2
109847c0: ff 8b 6c 24 2c 3b 6c 24 30 b8 44 82 ca 10 c7 84
109847d0: 24 b8 00 00 00 98 67 b9 10 89 84 24 ac 00 00 00
109847e0: 89 84 24 b0 00 00 00 c7 84 24 b4 00 00 00 45 82
109847f0: ca 10 8b fd 0f 84 8a 01 00 00 8d 9b 00 00 00 00
10984800: 8b 4f 04 8b 17 8b 47 0c 51 8b 4f 08 52 50 51 6a
10984810: 00 8d 94 24 c0 00 00 00 68 ac 98 b5 10 52 e8 5d
10984820: a8 68 ff 8b 74 24 2c a1 5c 9c c5 10 83 c4 1c 56
10984830: 6a 00 50 8d 8c 24 0c 01 00 00 e8 61 5b f6 ff 8b
10984840: 8c 24 ac 00 00 00 8b 15 60 9c c5 10 56 51 52 8d
10984850: 8c 24 dc 00 00 00 e8 05 55 f6 ff 8b 94 24 44 01
10984860: 00 00 8b 8c 24 40 01 00 00 52 8b 94 24 4c 01 00
10984870: 00 8b d8 8b 01 8b 40 08 52 6a 38 ff d0 8b f0 8d
10984880: 4e 08 85 c9 74 06 53 e8 84 52 f6 ff 8d 8c 24 38
10984890: 01 00 00 89 0e 8b 94 24 3c 01 00 00 89 56 04 8b
109848a0: 84 24 3c 01 00 00 89 30 8b 84 24 f0 00 00 00 8b
109848b0: 94 24 e8 00 00 00 2b c2 83 f8 01 89 b4 24 3c 01
109848c0: 00 00 7e 14 85 d2 74 10 8b 8c 24 f4 00 00 00 8b
109848d0: 31 50 52 8b 56 0c ff d2 8b 84 24 d8 00 00 00 8b
109848e0: 94 24 d0 00 00 00 2b c2 83 f8 01 7e 14 85 d2 74
109848f0: 10 8b 8c 24 dc 00 00 00 8b 31 50 8b 46 0c 52 ff
10984900: d0 8d 8c 24 00 01 00 00 e8 a3 5f f6 ff 8b 0d 5c
10984910: 9c c5 10 51 8b f0 e8 55 39 e0 ff 8b 94 24 40 05
10984920: 00 00 83 c4 04 3b 94 24 40 05 00 00 89 44 24 14
10984930: 89 74 24 18 73 17 8b ca 83 c2 08 85 c9 89 94 24
10984940: 3c 05 00 00 74 19 89 01 89 71 04 eb 12 8d 44 24
10984950: 14 50 52 8d 8c 24 40 05 00 00 e8 11 12 87 ff 8d
10984960: 8c 24 38 01 00 00 e8 25 7e e0 ff 8d 8c 24 00 01
10984970: 00 00 e8 09 51 f6 ff 83 c7 10 3b 7c 24 30 0f 85
10984980: 7c fe ff ff 8b 5c 24 30 3b eb 8b f5 74 3f 8b ff
10984990: 8b 0e 8b 56 04 83 ec 10 8b c4 89 08 8b 4e 08 89
109849a0: 50 04 8b 56 0c 89 48 08 83 ec 10 89 50 0c 8d 44
109849b0: 24 7c 8b cc 50 e8 06 ec fa ff 8d 8c 24 cc 04 00
109849c0: 00 e8 9a 28 e2 ff 83 c6 10 3b f3 75 c3 8b 4c 24
109849d0: 38 83 ec 10 8b f3 2b f5 c1 fe 04 8b fc 89 4f 0c
109849e0: 74 21 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00
109849f0: 8b d1 8b c6 52 c1 e0 04 50 e8 b2 44 f9 ff 83 c4
10984a00: 18 eb 02 33 c0 c1 e6 04 03 f0 3b eb 89 07 89 47
10984a10: 04 89 77 08 74 32 8b cd 2b c8 8d 9b 00 00 00 00
10984a20: 85 c0 74 1a 8b 14 01 89 10 8b 54 01 04 89 50 04
10984a30: 8b 54 01 08 89 50 08 8b 54 01 0c 89 50 0c 83 c0
10984a40: 10 8d 14 01 3b d3 75 d8 89 47 04 8d 84 24 9c 00
10984a50: 00 00 50 68 da 57 05 22 8d 4c 24 74 51 8d 94 24
10984a60: c8 04 00 00 52 e8 e6 da de ff 8b 84 24 c0 00 00
10984a70: 00 83 c4 20 3b 84 24 a4 00 00 00 89 6c 24 30 73
10984a80: 1c 8b c8 83 c0 10 85 c9 89 84 24 a0 00 00 00 74
10984a90: 1e 8d 44 24 5c 50 e8 25 eb fa ff eb 12 8d 4c 24
10984aa0: 5c 51 50 8d 8c 24 a4 00 00 00 e8 21 f6 cf ff 8b
10984ab0: 94 24 48 12 00 00 52 8d 8c 24 18 0a 00 00 e8 cd
10984ac0: d8 f9 ff 68 00 01 00 00 8d 84 24 10 08 00 00 50
10984ad0: 8d 8c 24 1c 0a 00 00 e8 64 d5 f9 ff 8d 8c 24 0c
10984ae0: 08 00 00 51 e8 97 ee c3 ff 83 c4 04 8b f0 8b 84
10984af0: 24 44 12 00 00 8b fa 8b 94 24 38 12 00 00 6a 10
10984b00: 33 db 50 8d 4c 24 74 89 74 24 24 89 7c 24 28 89
10984b10: 54 24 2c 89 5c 24 30 e8 14 ff fa ff 50 8d 4c 24
10984b20: 60 e8 9a ea fa ff 3b 6c 24 34 73 20 85 ed 8d 4d
10984b30: 10 89 4c 24 30 74 24 8b 94 24 38 12 00 00 89 75
10984b40: 00 89 7d 04 89 55 08 89 5d 0c eb 0f 8d 44 24 1c
10984b50: 50 55 8d 4c 24 34 e8 45 a4 b3 ff 8b 54 24 1c 8d
10984b60: 8c 24 8c 00 00 00 51 8b 4c 24 24 83 ec 10 8b c4
10984b70: 89 10 8b 54 24 38 89 48 04 8b 4c 24 3c 89 50 08
10984b80: 8d 54 24 70 89 48 0c 8b 84 24 5c 12 00 00 52 50
10984b90: e8 bb e2 de ff 83 c4 1c 8d 8c 24 4c 01 00 00 e8
10984ba0: 6c d7 e1 ff 8d 4c 24 5c 51 8d 4c 24 70 e8 0e ea
10984bb0: fa ff 8d 54 24 6c 52 8d 8c 24 78 01 00 00 e8 fd
10984bc0: e9 fa ff 66 8b 84 24 4c 12 00 00 8b 8c 24 60 12
10984bd0: 00 00 66 89 84 24 a6 01 00 00 8b c1 8d 70 01 90
10984be0: 8a 10 83 c0 01 84 d2 75 f7 2b c6 03 c1 50 51 8d
10984bf0: 8c 24 14 02 00 00 e8 a5 9c 68 ff 8b 8c 24 64 12
10984c00: 00 00 8b c1 8d 70 01 8a 10 83 c0 01 84 d2 75 f7
10984c10: 2b c6 03 c1 50 51 8d 8c 24 24 02 00 00 e8 7e 9c
10984c20: 68 ff 8b 8c 24 70 12 00 00 8b c1 8d 70 01 8b ff
10984c30: 8a 10 83 c0 01 84 d2 75 f7 2b c6 03 c1 50 51 8d
10984c40: 8c 24 f4 01 00 00 e8 55 9c 68 ff 8b 8c 24 74 12
10984c50: 00 00 8b c1 8d 70 01 8a 10 83 c0 01 84 d2 75 f7
10984c60: 2b c6 03 c1 50 51 8d 8c 24 04 02 00 00 e8 2e 9c
10984c70: 68 ff 8b 8c 24 68 12 00 00 8b c1 8d 70 01 8b ff
10984c80: 8a 10 83 c0 01 84 d2 75 f7 2b c6 03 c1 50 51 8d
10984c90: 8c 24 44 02 00 00 e8 05 9c 68 ff 8b 8c 24 6c 12
10984ca0: 00 00 8b c1 8d 70 01 8a 10 83 c0 01 84 d2 75 f7
10984cb0: 2b c6 03 c1 50 51 8d 8c 24 54 02 00 00 e8 de 9b
10984cc0: 68 ff 8b 8c 24 94 12 00 00 8b c1 8d 70 01 8b ff
10984cd0: 8a 10 83 c0 01 84 d2 75 f7 2b c6 03 c1 50 51 8d
10984ce0: 8c 24 34 02 00 00 e8 b5 9b 68 ff 8b 8c 24 88 12
10984cf0: 00 00 8b c1 8d 70 01 8a 10 83 c0 01 84 d2 75 f7
10984d00: 2b c6 03 c1 50 51 8d 8c 24 64 02 00 00 e8 8e 9b
10984d10: 68 ff 33 c0 39 84 24 80 12 00 00 89 84 24 bc 00
10984d20: 00 00 89 84 24 c0 00 00 00 89 84 24 c4 00 00 00
10984d30: c7 84 24 c8 00 00 00 c4 67 b9 10 89 44 24 10 0f
10984d40: 8e 85 01 00 00 eb 09 8d a4 24 00 00 00 00 8b ff
10984d50: 8b 54 24 10 8b 8c 24 84 12 00 00 8b 2c 91 8b c5
10984d60: c7 44 24 48 3c dc b5 10 8d 50 01 eb 03 8d 49 00
10984d70: 8a 08 83 c0 01 84 c9 75 f7 2b c2 8d 34 28 8b de
10984d80: 2b dd 89 5c 24 14 83 c3 01 83 fb 01 76 26 68 e7
10984d90: 00 00 00 68 d0 df aa 10 6a 00 6a 00 68 3c dc b5
10984da0: 10 53 e8 09 41 f9 ff 8b f8 83 c4 18 03 df 89 5c
10984db0: 24 44 eb 0d bf 44 82 ca 10 c7 44 24 44 45 82 ca
10984dc0: 10 8b 44 24 14 50 55 57 89 7c 24 48 ff 15 00 b6
10984dd0: aa 10 8b 84 24 cc 00 00 00 2b f5 03 f7 8b ee 83
10984de0: c4 0c 3b 84 24 c4 00 00 00 89 6c 24 40 c6 45 00
10984df0: 00 0f 83 8d 00 00 00 8b f0 83 c0 10 85 f6 89 84
10984e00: 24 c0 00 00 00 0f 84 8f 00 00 00 8b dd 2b df 33
10984e10: c0 89 5c 24 14 83 c3 01 83 fb 01 89 06 89 46 04
10984e20: 89 46 08 c7 46 0c 3c dc b5 10 76 25 8b 4e 0c 68
10984e30: e7 00 00 00 68 d0 df aa 10 50 50 51 53 e8 6e 40
10984e40: f9 ff 83 c4 18 03 d8 89 06 89 46 04 89 5e 08 eb
10984e50: 14 c7 06 44 82 ca 10 c7 46 04 44 82 ca 10 c7 46
10984e60: 08 45 82 ca 10 8b 54 24 14 8b 1e 52 57 53 ff 15
10984e70: 00 b6 aa 10 2b ef 83 c4 0c 03 eb 89 6e 04 c6 45
10984e80: 00 00 eb 16 8d 4c 24 3c 51 50 8d 8c 24 c4 00 00
10984e90: 00 e8 5a 0a c6 ff 8b 7c 24 3c 8b 44 24 44 2b c7
10984ea0: 83 f8 01 7e 0d 85 ff 74 09 57 e8 e1 3f f9 ff 83
10984eb0: c4 04 8b 44 24 10 83 c0 01 3b 84 24 80 12 00 00
10984ec0: 89 44 24 10 0f 8c 86 fe ff ff 8d 94 24 bc 00 00
10984ed0: 00 52 8d 8c 24 80 02 00 00 e8 62 7a e0 ff 33 c0
10984ee0: 39 84 24 78 12 00 00 89 44 24 3c 89 44 24 40 89
10984ef0: 44 24 44 c7 44 24 48 70 67 b9 10 89 44 24 10 0f
10984f00: 8e 79 01 00 00 eb 09 8d a4 24 00 00 00 00 8b ff
10984f10: 8b 84 24 7c 12 00 00 8b 4c 24 10 8b 2c 88 8b c5
10984f20: c7 44 24 58 68 dc b5 10 8d 50 01 eb 03 8d 49 00
10984f30: 8a 08 83 c0 01 84 c9 75 f7 2b c2 8d 34 28 8b de
10984f40: 2b dd 89 5c 24 14 83 c3 01 83 fb 01 76 26 68 e7
10984f50: 00 00 00 68 d0 df aa 10 6a 00 6a 00 68 68 dc b5
10984f60: 10 53 e8 49 3f f9 ff 8b f8 83 c4 18 03 df 89 5c
10984f70: 24 54 eb 0d bf 44 82 ca 10 c7 44 24 54 45 82 ca
10984f80: 10 8b 54 24 14 52 55 57 89 7c 24 58 ff 15 00 b6
10984f90: aa 10 8b 44 24 4c 2b f5 03 f7 8b ee 83 c4 0c 3b
10984fa0: 44 24 44 89 6c 24 50 c6 45 00 00 0f 83 8a 00 00
10984fb0: 00 8b f0 83 c0 10 85 f6 89 44 24 40 0f 84 8c 00
10984fc0: 00 00 8b dd 2b df 33 c0 89 5c 24 14 83 c3 01 83
10984fd0: fb 01 89 06 89 46 04 89 46 08 c7 46 0c 68 dc b5
10984fe0: 10 76 25 68 e7 00 00 00 68 d0 df aa 10 50 50 8b
10984ff0: 46 0c 50 53 e8 b7 3e f9 ff 83 c4 18 03 d8 89 06
10985000: 89 46 04 89 5e 08 eb 14 c7 06 44 82 ca 10 c7 46
10985010: 04 44 82 ca 10 c7 46 08 45 82 ca 10 8b 4c 24 14
10985020: 8b 1e 51 57 53 ff 15 00 b6 aa 10 2b ef 83 c4 0c
10985030: 03 eb 89 6e 04 c6 45 00 00 eb 13 8d 54 24 4c 52
10985040: 50 8d 4c 24 44 e8 a6 08 c6 ff 8b 7c 24 4c 8b 44
10985050: 24 54 2b c7 83 f8 01 7e 0d 85 ff 74 09 57 e8 2d
10985060: 3e f9 ff 83 c4 04 8b 44 24 10 83 c0 01 3b 84 24
10985070: 78 12 00 00 89 44 24 10 0f 8c 92 fe ff ff 8d 44
10985080: 24 3c 50 8d 8c 24 70 02 00 00 e8 b1 78 e0 ff 33
10985090: c0 39 84 24 8c 12 00 00 89 44 24 4c 89 44 24 50
109850a0: 89 44 24 54 c7 44 24 58 4c 67 b9 10 89 44 24 10
109850b0: 0f 8e 78 01 00 00 eb 08 8d a4 24 00 00 00 00 90
109850c0: 8b 54 24 10 8b 8c 24 90 12 00 00 8b 2c 91 8b c5
109850d0: c7 44 24 78 0c dc b5 10 8d 50 01 eb 03 8d 49 00
109850e0: 8a 08 83 c0 01 84 c9 75 f7 2b c2 8d 34 28 8b de
109850f0: 2b dd 89 5c 24 14 83 c3 01 83 fb 01 76 26 68 e7
10985100: 00 00 00 68 d0 df aa 10 6a 00 6a 00 68 0c dc b5
10985110: 10 53 e8 99 3d f9 ff 8b f8 83 c4 18 03 df 89 5c
10985120: 24 74 eb 0d bf 44 82 ca 10 c7 44 24 74 45 82 ca
10985130: 10 8b 44 24 14 50 55 57 89 7c 24 78 ff 15 00 b6
10985140: aa 10 8b 44 24 5c 2b f5 03 f7 8b ee 83 c4 0c 3b
10985150: 44 24 54 89 6c 24 70 c6 45 00 00 0f 83 8a 00 00
10985160: 00 8b f0 83 c0 10 85 f6 89 44 24 50 0f 84 8c 00
10985170: 00 00 8b dd 2b df 33 c0 89 5c 24 14 83 c3 01 83
10985180: fb 01 89 06 89 46 04 89 46 08 c7 46 0c 0c dc b5
10985190: 10 76 25 8b 4e 0c 68 e7 00 00 00 68 d0 df aa 10
109851a0: 50 50 51 53 e8 07 3d f9 ff 83 c4 18 03 d8 89 06
109851b0: 89 46 04 89 5e 08 eb 14 c7 06 44 82 ca 10 c7 46
109851c0: 04 44 82 ca 10 c7 46 08 45 82 ca 10 8b 54 24 14
109851d0: 8b 1e 52 57 53 ff 15 00 b6 aa 10 2b ef 83 c4 0c
109851e0: 03 eb 89 6e 04 c6 45 00 00 eb 13 8d 4c 24 6c 51
109851f0: 50 8d 4c 24 54 e8 f6 06 c6 ff 8b 7c 24 6c 8b 44
10985200: 24 74 2b c7 83 f8 01 7e 0d 85 ff 74 09 57 e8 7d
10985210: 3c f9 ff 83 c4 04 8b 44 24 10 83 c0 01 3b 84 24
10985220: 8c 12 00 00 89 44 24 10 0f 8c 92 fe ff ff 8d 54
10985230: 24 4c 52 8d 8c 24 90 02 00 00 e8 01 77 e0 ff 8b
10985240: ac 24 38 12 00 00 6a 00 83 ec 10 8d 44 24 70 8b
10985250: cc 50 89 ac 24 64 01 00 00 e8 62 e3 fa ff 8d 8c
10985260: 24 60 01 00 00 e8 76 1f e2 ff 8b 4c 24 1c 8b 54
10985270: 24 20 83 ec 10 8b c4 89 08 8b 4c 24 34 89 50 04
10985280: 8b 54 24 38 89 48 08 83 ec 10 89 50 0c 8d 44 24
10985290: 7c 8b cc 50 e8 27 e3 fa ff 8d 8c 24 6c 01 00 00
109852a0: e8 bb 1f e2 ff 8b 84 24 a0 00 00 00 8b b4 24 9c
109852b0: 00 00 00 33 ff 3b f0 8b d8 74 2d eb 03 8d 49 00
109852c0: 83 ff 03 7d 23 6a 00 83 ec 10 8b cc 56 e8 ee e2
109852d0: fa ff 8d 8c 24 60 01 00 00 e8 02 1f e2 ff 83 c6
109852e0: 10 83 c7 01 3b f3 75 d8 8b 5c 24 30 8b 4c 24 2c
109852f0: 8b 54 24 38 83 ec 10 8b f3 2b f1 c1 fe 04 8b fc
10985300: 89 57 0c 74 25 68 e7 00 00 00 68 d0 df aa 10 6a
10985310: 00 6a 00 8b c2 8b ce 50 c1 e1 04 51 e8 8f 3b f9
10985320: ff 8b 4c 24 54 83 c4 18 eb 02 33 c0 c1 e6 04 03
10985330: f0 3b cb 89 07 89 47 04 89 77 08 74 2b 2b c8 90
10985340: 85 c0 74 1a 8b 14 01 89 10 8b 54 01 04 89 50 04
10985350: 8b 54 01 08 89 50 08 8b 54 01 0c 89 50 0c 83 c0
10985360: 10 8d 14 01 3b d3 75 d8 89 47 04 8d 84 24 9c 00
10985370: 00 00 50 55 8d 4c 24 74 51 8d 94 24 68 01 00 00
10985380: 52 e8 ca d1 de ff 8b 84 24 74 12 00 00 8b 8c 24
10985390: 70 12 00 00 8b bc 24 60 12 00 00 8b 9c 24 ec 00
109853a0: 00 00 83 c4 20 50 8b 84 24 90 00 00 00 51 8d 94
109853b0: 24 a4 00 00 00 52 6a 00 57 50 8b cb e8 3f 7e e0
109853c0: ff 8d 8c 24 24 0e 00 00 e8 b3 ba f9 ff 57 8d 8c
109853d0: 24 28 0e 00 00 e8 06 ce f9 ff 6a 00 6a 00 6a 00
109853e0: 6a 00 68 24 67 b9 10 68 08 02 00 00 e8 bf 3a f9
109853f0: ff 83 c4 18 8b f0 68 04 01 00 00 56 8d 8c 24 2c
10985400: 0e 00 00 e8 68 cd f9 ff 66 83 3e 00 8b c6 74 09
10985410: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 8d 0c 46
10985420: 51 56 8d 8b 30 01 00 00 e8 93 a4 69 ff 66 83 3f
10985430: 00 8b c7 74 09 83 c0 02 66 83 38 00 75 f7 2b c7
10985440: d1 f8 8d 14 47 52 57 8d 8c 24 84 00 00 00 e8 5d
10985450: 9f 69 ff 8d 4c 24 7c 3b c1 74 0c 8b 50 04 8b 00
10985460: 52 50 e8 59 a4 69 ff 8b 4c 24 7c 51 ff 15 c4 b6
10985470: aa 10 8b 5c 24 4c 8b 7c 24 50 3b df 8b e8 8b f3
10985480: 73 20 8b 06 8b 56 08 2b d0 83 fa 01 7e 0d 85 c0
10985490: 74 09 50 e8 f8 39 f9 ff 83 c4 04 83 c6 10 3b f7
109854a0: 72 e0 85 db 74 09 53 e8 e4 39 f9 ff 83 c4 04 8b
109854b0: 5c 24 3c 8b 7c 24 40 3b df 8b f3 73 23 8d 49 00
109854c0: 8b 06 8b 4e 08 2b c8 83 f9 01 7e 0d 85 c0 74 09
109854d0: 50 e8 ba 39 f9 ff 83 c4 04 83 c6 10 3b f7 72 e0
109854e0: 85 db 74 09 53 e8 a6 39 f9 ff 83 c4 04 8b 9c 24
109854f0: bc 00 00 00 8b bc 24 c0 00 00 00 3b df 8b f3 73
10985500: 20 8b 06 8b 56 08 2b d0 83 fa 01 7e 0d 85 c0 74
10985510: 09 50 e8 79 39 f9 ff 83 c4 04 83 c6 10 3b f7 72
10985520: e0 85 db 74 09 53 e8 65 39 f9 ff 83 c4 04 8d 8c
10985530: 24 4c 01 00 00 e8 36 d0 e1 ff 8b 84 24 b4 00 00
10985540: 00 8b 8c 24 ac 00 00 00 2b c1 83 f8 01 7e 0d 85
10985550: c9 74 09 51 e8 37 39 f9 ff 83 c4 04 8d 8c 24 ac
10985560: 04 00 00 e8 08 d0 e1 ff 8b 44 24 2c 85 c0 74 09
10985570: 50 e8 1a 39 f9 ff 83 c4 04 8b 84 24 9c 00 00 00
10985580: 85 c0 74 09 50 e8 06 39 f9 ff 83 c4 04 8b 8c 24
10985590: 94 00 00 00 8b 84 24 8c 00 00 00 2b c8 83 e1 fe
109855a0: 83 f9 02 7e 0d 85 c0 74 09 50 e8 e1 38 f9 ff 83
109855b0: c4 04 8b 94 24 84 00 00 00 8b 44 24 7c 2b d0 83
109855c0: e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 bf 38 f9
109855d0: ff 83 c4 04 5f 5e 8b c5 5d 5b 81 c4 24 12 00 00
109855e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10984510 <.text+0x983510>:
10984510:	b8 24 12 00 00                                  	mov    eax,0x1224
10984515:	e8 d6 c3 10 00                                  	call   0x10a908f0
1098451a:	53                                              	push   ebx
1098451b:	55                                              	push   ebp
1098451c:	56                                              	push   esi
1098451d:	57                                              	push   edi
1098451e:	e8 0d e3 d9 ff                                  	call   0x10722830
10984523:	be 44 82 ca 10                                  	mov    esi,0x10ca8244
10984528:	33 ff                                           	xor    edi,edi
1098452a:	3b c7                                           	cmp    eax,edi
1098452c:	bb 46 82 ca 10                                  	mov    ebx,0x10ca8246
10984531:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10984535:	c7 84 24 88 00 00 00 34 68 b9 10                	mov    DWORD PTR [esp+0x88],0x10b96834
10984540:	89 74 24 7c                                     	mov    DWORD PTR [esp+0x7c],esi
10984544:	89 b4 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],esi
1098454b:	89 9c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ebx
10984552:	0f 84 8f 00 00 00                               	je     0x109845e7
10984558:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
1098455c:	e8 0f f0 fa ff                                  	call   0x10933570
10984561:	e8 5a ff de ff                                  	call   0x107744c0
10984566:	3b c7                                           	cmp    eax,edi
10984568:	89 84 24 cc 00 00 00                            	mov    DWORD PTR [esp+0xcc],eax
1098456f:	c7 84 24 98 00 00 00 0c 68 b9 10                	mov    DWORD PTR [esp+0x98],0x10b9680c
1098457a:	89 b4 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],esi
10984581:	89 b4 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],esi
10984588:	89 9c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ebx
1098458f:	89 bc 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],edi
10984596:	89 bc 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],edi
1098459d:	89 bc 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],edi
109845a4:	c7 84 24 a8 00 00 00 e8 67 b9 10                	mov    DWORD PTR [esp+0xa8],0x10b967e8
109845af:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
109845b3:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
109845b7:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
109845bb:	c7 44 24 38 c4 67 b9 10                         	mov    DWORD PTR [esp+0x38],0x10b967c4
109845c3:	75 2f                                           	jne    0x109845f4
109845c5:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
109845cc:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
109845d0:	2b c8                                           	sub    ecx,eax
109845d2:	83 e1 fe                                        	and    ecx,0xfffffffe
109845d5:	83 f9 02                                        	cmp    ecx,0x2
109845d8:	7e 0d                                           	jle    0x109845e7
109845da:	3b c7                                           	cmp    eax,edi
109845dc:	74 09                                           	je     0x109845e7
109845de:	50                                              	push   eax
109845df:	e8 ac 48 f9 ff                                  	call   0x10918e90
109845e4:	83 c4 04                                        	add    esp,0x4
109845e7:	33 c0                                           	xor    eax,eax
109845e9:	5f                                              	pop    edi
109845ea:	5e                                              	pop    esi
109845eb:	5d                                              	pop    ebp
109845ec:	5b                                              	pop    ebx
109845ed:	81 c4 24 12 00 00                               	add    esp,0x1224
109845f3:	c3                                              	ret
109845f4:	8b ac 24 5c 12 00 00                            	mov    ebp,DWORD PTR [esp+0x125c]
109845fb:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
109845fe:	57                                              	push   edi
109845ff:	68 da 57 05 22                                  	push   0x220557da
10984604:	52                                              	push   edx
10984605:	8d 44 24 28                                     	lea    eax,[esp+0x28]
10984609:	50                                              	push   eax
1098460a:	e8 01 a8 e2 ff                                  	call   0x107aee10
1098460f:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
10984613:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10984617:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
1098461e:	81 e3 ff ff ff 00                               	and    ebx,0xffffff
10984624:	51                                              	push   ecx
10984625:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
10984629:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
1098462d:	e8 ae 3c e0 ff                                  	call   0x107882e0
10984632:	83 c4 14                                        	add    esp,0x14
10984635:	50                                              	push   eax
10984636:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1098463a:	e8 81 ef fa ff                                  	call   0x109335c0
1098463f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10984643:	8d 94 24 8c 00 00 00                            	lea    edx,[esp+0x8c]
1098464a:	52                                              	push   edx
1098464b:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1098464f:	83 ec 10                                        	sub    esp,0x10
10984652:	8b c4                                           	mov    eax,esp
10984654:	89 30                                           	mov    DWORD PTR [eax],esi
10984656:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
10984659:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098465c:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
1098465f:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10984662:	8d 44 24 70                                     	lea    eax,[esp+0x70]
10984666:	50                                              	push   eax
10984667:	51                                              	push   ecx
10984668:	e8 e3 e7 de ff                                  	call   0x10772e50
1098466d:	83 c4 1c                                        	add    esp,0x1c
10984670:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10984674:	52                                              	push   edx
10984675:	57                                              	push   edi
10984676:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098467a:	e8 21 a9 b3 ff                                  	call   0x104befa0
1098467f:	bb 01 00 00 00                                  	mov    ebx,0x1
10984684:	39 9c 24 58 12 00 00                            	cmp    DWORD PTR [esp+0x1258],ebx
1098468b:	0f 8e c5 00 00 00                               	jle    0x10984756
10984691:	8b 44 9d 00                                     	mov    eax,DWORD PTR [ebp+ebx*4+0x0]
10984695:	50                                              	push   eax
10984696:	8d 8c 24 18 0a 00 00                            	lea    ecx,[esp+0xa18]
1098469d:	e8 ee dc f9 ff                                  	call   0x10922390
109846a2:	68 00 01 00 00                                  	push   0x100
109846a7:	8d 8c 24 10 08 00 00                            	lea    ecx,[esp+0x810]
109846ae:	51                                              	push   ecx
109846af:	8d 8c 24 1c 0a 00 00                            	lea    ecx,[esp+0xa1c]
109846b6:	e8 85 d9 f9 ff                                  	call   0x10922040
109846bb:	8d 94 24 0c 08 00 00                            	lea    edx,[esp+0x80c]
109846c2:	52                                              	push   edx
109846c3:	e8 b8 f2 c3 ff                                  	call   0x105c3980
109846c8:	8b f0                                           	mov    esi,eax
109846ca:	83 ec 0c                                        	sub    esp,0xc
109846cd:	8b c4                                           	mov    eax,esp
109846cf:	8b fa                                           	mov    edi,edx
109846d1:	89 30                                           	mov    DWORD PTR [eax],esi
109846d3:	b9 da 57 05 22                                  	mov    ecx,0x220557da
109846d8:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
109846db:	33 d2                                           	xor    edx,edx
109846dd:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
109846e0:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
109846e3:	8b 44 9d 00                                     	mov    eax,DWORD PTR [ebp+ebx*4+0x0]
109846e7:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
109846eb:	50                                              	push   eax
109846ec:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
109846f3:	51                                              	push   ecx
109846f4:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
109846f8:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
109846fc:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
10984700:	e8 8b dd de ff                                  	call   0x10772490
10984705:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
10984709:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1098470d:	83 c4 18                                        	add    esp,0x18
10984710:	3b ca                                           	cmp    ecx,edx
10984712:	73 21                                           	jae    0x10984735
10984714:	8b c1                                           	mov    eax,ecx
10984716:	83 c1 10                                        	add    ecx,0x10
10984719:	85 c0                                           	test   eax,eax
1098471b:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1098471f:	74 23                                           	je     0x10984744
10984721:	89 30                                           	mov    DWORD PTR [eax],esi
10984723:	b9 da 57 05 22                                  	mov    ecx,0x220557da
10984728:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
1098472b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098472e:	33 c9                                           	xor    ecx,ecx
10984730:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10984733:	eb 0f                                           	jmp    0x10984744
10984735:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10984739:	50                                              	push   eax
1098473a:	51                                              	push   ecx
1098473b:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098473f:	e8 5c a8 b3 ff                                  	call   0x104befa0
10984744:	83 c3 01                                        	add    ebx,0x1
10984747:	3b 9c 24 58 12 00 00                            	cmp    ebx,DWORD PTR [esp+0x1258]
1098474e:	0f 8c 3d ff ff ff                               	jl     0x10984691
10984754:	33 ff                                           	xor    edi,edi
10984756:	8d 8c 24 ac 04 00 00                            	lea    ecx,[esp+0x4ac]
1098475d:	e8 ae db e1 ff                                  	call   0x107a2310
10984762:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
10984766:	52                                              	push   edx
10984767:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
1098476e:	e8 4d ee fa ff                                  	call   0x109335c0
10984773:	8d 84 24 ac 00 00 00                            	lea    eax,[esp+0xac]
1098477a:	50                                              	push   eax
1098477b:	8d 8c 24 d8 04 00 00                            	lea    ecx,[esp+0x4d8]
10984782:	e8 39 ee fa ff                                  	call   0x109335c0
10984787:	66 8b 8c 24 4c 12 00 00                         	mov    cx,WORD PTR [esp+0x124c]
1098478f:	8b 94 24 38 12 00 00                            	mov    edx,DWORD PTR [esp+0x1238]
10984796:	57                                              	push   edi
10984797:	83 ec 10                                        	sub    esp,0x10
1098479a:	66 89 8c 24 1a 05 00 00                         	mov    WORD PTR [esp+0x51a],cx
109847a2:	8d 44 24 70                                     	lea    eax,[esp+0x70]
109847a6:	8b cc                                           	mov    ecx,esp
109847a8:	50                                              	push   eax
109847a9:	89 94 24 c4 04 00 00                            	mov    DWORD PTR [esp+0x4c4],edx
109847b0:	e8 0b ee fa ff                                  	call   0x109335c0
109847b5:	8d 8c 24 c0 04 00 00                            	lea    ecx,[esp+0x4c0]
109847bc:	e8 1f 2a e2 ff                                  	call   0x107a71e0
109847c1:	8b 6c 24 2c                                     	mov    ebp,DWORD PTR [esp+0x2c]
109847c5:	3b 6c 24 30                                     	cmp    ebp,DWORD PTR [esp+0x30]
109847c9:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109847ce:	c7 84 24 b8 00 00 00 98 67 b9 10                	mov    DWORD PTR [esp+0xb8],0x10b96798
109847d9:	89 84 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],eax
109847e0:	89 84 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],eax
109847e7:	c7 84 24 b4 00 00 00 45 82 ca 10                	mov    DWORD PTR [esp+0xb4],0x10ca8245
109847f2:	8b fd                                           	mov    edi,ebp
109847f4:	0f 84 8a 01 00 00                               	je     0x10984984
109847fa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10984800:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
10984803:	8b 17                                           	mov    edx,DWORD PTR [edi]
10984805:	8b 47 0c                                        	mov    eax,DWORD PTR [edi+0xc]
10984808:	51                                              	push   ecx
10984809:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
1098480c:	52                                              	push   edx
1098480d:	50                                              	push   eax
1098480e:	51                                              	push   ecx
1098480f:	6a 00                                           	push   0x0
10984811:	8d 94 24 c0 00 00 00                            	lea    edx,[esp+0xc0]
10984818:	68 ac 98 b5 10                                  	push   0x10b598ac
1098481d:	52                                              	push   edx
1098481e:	e8 5d a8 68 ff                                  	call   0x1000f080
10984823:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
10984827:	a1 5c 9c c5 10                                  	mov    eax,ds:0x10c59c5c
1098482c:	83 c4 1c                                        	add    esp,0x1c
1098482f:	56                                              	push   esi
10984830:	6a 00                                           	push   0x0
10984832:	50                                              	push   eax
10984833:	8d 8c 24 0c 01 00 00                            	lea    ecx,[esp+0x10c]
1098483a:	e8 61 5b f6 ff                                  	call   0x108ea3a0
1098483f:	8b 8c 24 ac 00 00 00                            	mov    ecx,DWORD PTR [esp+0xac]
10984846:	8b 15 60 9c c5 10                               	mov    edx,DWORD PTR ds:0x10c59c60
1098484c:	56                                              	push   esi
1098484d:	51                                              	push   ecx
1098484e:	52                                              	push   edx
1098484f:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
10984856:	e8 05 55 f6 ff                                  	call   0x108e9d60
1098485b:	8b 94 24 44 01 00 00                            	mov    edx,DWORD PTR [esp+0x144]
10984862:	8b 8c 24 40 01 00 00                            	mov    ecx,DWORD PTR [esp+0x140]
10984869:	52                                              	push   edx
1098486a:	8b 94 24 4c 01 00 00                            	mov    edx,DWORD PTR [esp+0x14c]
10984871:	8b d8                                           	mov    ebx,eax
10984873:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10984875:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10984878:	52                                              	push   edx
10984879:	6a 38                                           	push   0x38
1098487b:	ff d0                                           	call   eax
1098487d:	8b f0                                           	mov    esi,eax
1098487f:	8d 4e 08                                        	lea    ecx,[esi+0x8]
10984882:	85 c9                                           	test   ecx,ecx
10984884:	74 06                                           	je     0x1098488c
10984886:	53                                              	push   ebx
10984887:	e8 84 52 f6 ff                                  	call   0x108e9b10
1098488c:	8d 8c 24 38 01 00 00                            	lea    ecx,[esp+0x138]
10984893:	89 0e                                           	mov    DWORD PTR [esi],ecx
10984895:	8b 94 24 3c 01 00 00                            	mov    edx,DWORD PTR [esp+0x13c]
1098489c:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1098489f:	8b 84 24 3c 01 00 00                            	mov    eax,DWORD PTR [esp+0x13c]
109848a6:	89 30                                           	mov    DWORD PTR [eax],esi
109848a8:	8b 84 24 f0 00 00 00                            	mov    eax,DWORD PTR [esp+0xf0]
109848af:	8b 94 24 e8 00 00 00                            	mov    edx,DWORD PTR [esp+0xe8]
109848b6:	2b c2                                           	sub    eax,edx
109848b8:	83 f8 01                                        	cmp    eax,0x1
109848bb:	89 b4 24 3c 01 00 00                            	mov    DWORD PTR [esp+0x13c],esi
109848c2:	7e 14                                           	jle    0x109848d8
109848c4:	85 d2                                           	test   edx,edx
109848c6:	74 10                                           	je     0x109848d8
109848c8:	8b 8c 24 f4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf4]
109848cf:	8b 31                                           	mov    esi,DWORD PTR [ecx]
109848d1:	50                                              	push   eax
109848d2:	52                                              	push   edx
109848d3:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
109848d6:	ff d2                                           	call   edx
109848d8:	8b 84 24 d8 00 00 00                            	mov    eax,DWORD PTR [esp+0xd8]
109848df:	8b 94 24 d0 00 00 00                            	mov    edx,DWORD PTR [esp+0xd0]
109848e6:	2b c2                                           	sub    eax,edx
109848e8:	83 f8 01                                        	cmp    eax,0x1
109848eb:	7e 14                                           	jle    0x10984901
109848ed:	85 d2                                           	test   edx,edx
109848ef:	74 10                                           	je     0x10984901
109848f1:	8b 8c 24 dc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xdc]
109848f8:	8b 31                                           	mov    esi,DWORD PTR [ecx]
109848fa:	50                                              	push   eax
109848fb:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
109848fe:	52                                              	push   edx
109848ff:	ff d0                                           	call   eax
10984901:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
10984908:	e8 a3 5f f6 ff                                  	call   0x108ea8b0
1098490d:	8b 0d 5c 9c c5 10                               	mov    ecx,DWORD PTR ds:0x10c59c5c
10984913:	51                                              	push   ecx
10984914:	8b f0                                           	mov    esi,eax
10984916:	e8 55 39 e0 ff                                  	call   0x10788270
1098491b:	8b 94 24 40 05 00 00                            	mov    edx,DWORD PTR [esp+0x540]
10984922:	83 c4 04                                        	add    esp,0x4
10984925:	3b 94 24 40 05 00 00                            	cmp    edx,DWORD PTR [esp+0x540]
1098492c:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10984930:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
10984934:	73 17                                           	jae    0x1098494d
10984936:	8b ca                                           	mov    ecx,edx
10984938:	83 c2 08                                        	add    edx,0x8
1098493b:	85 c9                                           	test   ecx,ecx
1098493d:	89 94 24 3c 05 00 00                            	mov    DWORD PTR [esp+0x53c],edx
10984944:	74 19                                           	je     0x1098495f
10984946:	89 01                                           	mov    DWORD PTR [ecx],eax
10984948:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
1098494b:	eb 12                                           	jmp    0x1098495f
1098494d:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10984951:	50                                              	push   eax
10984952:	52                                              	push   edx
10984953:	8d 8c 24 40 05 00 00                            	lea    ecx,[esp+0x540]
1098495a:	e8 11 12 87 ff                                  	call   0x101f5b70
1098495f:	8d 8c 24 38 01 00 00                            	lea    ecx,[esp+0x138]
10984966:	e8 25 7e e0 ff                                  	call   0x1078c790
1098496b:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
10984972:	e8 09 51 f6 ff                                  	call   0x108e9a80
10984977:	83 c7 10                                        	add    edi,0x10
1098497a:	3b 7c 24 30                                     	cmp    edi,DWORD PTR [esp+0x30]
1098497e:	0f 85 7c fe ff ff                               	jne    0x10984800
10984984:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
10984988:	3b eb                                           	cmp    ebp,ebx
1098498a:	8b f5                                           	mov    esi,ebp
1098498c:	74 3f                                           	je     0x109849cd
1098498e:	8b ff                                           	mov    edi,edi
10984990:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
10984992:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
10984995:	83 ec 10                                        	sub    esp,0x10
10984998:	8b c4                                           	mov    eax,esp
1098499a:	89 08                                           	mov    DWORD PTR [eax],ecx
1098499c:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098499f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
109849a2:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
109849a5:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
109849a8:	83 ec 10                                        	sub    esp,0x10
109849ab:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
109849ae:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
109849b2:	8b cc                                           	mov    ecx,esp
109849b4:	50                                              	push   eax
109849b5:	e8 06 ec fa ff                                  	call   0x109335c0
109849ba:	8d 8c 24 cc 04 00 00                            	lea    ecx,[esp+0x4cc]
109849c1:	e8 9a 28 e2 ff                                  	call   0x107a7260
109849c6:	83 c6 10                                        	add    esi,0x10
109849c9:	3b f3                                           	cmp    esi,ebx
109849cb:	75 c3                                           	jne    0x10984990
109849cd:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
109849d1:	83 ec 10                                        	sub    esp,0x10
109849d4:	8b f3                                           	mov    esi,ebx
109849d6:	2b f5                                           	sub    esi,ebp
109849d8:	c1 fe 04                                        	sar    esi,0x4
109849db:	8b fc                                           	mov    edi,esp
109849dd:	89 4f 0c                                        	mov    DWORD PTR [edi+0xc],ecx
109849e0:	74 21                                           	je     0x10984a03
109849e2:	68 e7 00 00 00                                  	push   0xe7
109849e7:	68 d0 df aa 10                                  	push   0x10aadfd0
109849ec:	6a 00                                           	push   0x0
109849ee:	6a 00                                           	push   0x0
109849f0:	8b d1                                           	mov    edx,ecx
109849f2:	8b c6                                           	mov    eax,esi
109849f4:	52                                              	push   edx
109849f5:	c1 e0 04                                        	shl    eax,0x4
109849f8:	50                                              	push   eax
109849f9:	e8 b2 44 f9 ff                                  	call   0x10918eb0
109849fe:	83 c4 18                                        	add    esp,0x18
10984a01:	eb 02                                           	jmp    0x10984a05
10984a03:	33 c0                                           	xor    eax,eax
10984a05:	c1 e6 04                                        	shl    esi,0x4
10984a08:	03 f0                                           	add    esi,eax
10984a0a:	3b eb                                           	cmp    ebp,ebx
10984a0c:	89 07                                           	mov    DWORD PTR [edi],eax
10984a0e:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10984a11:	89 77 08                                        	mov    DWORD PTR [edi+0x8],esi
10984a14:	74 32                                           	je     0x10984a48
10984a16:	8b cd                                           	mov    ecx,ebp
10984a18:	2b c8                                           	sub    ecx,eax
10984a1a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10984a20:	85 c0                                           	test   eax,eax
10984a22:	74 1a                                           	je     0x10984a3e
10984a24:	8b 14 01                                        	mov    edx,DWORD PTR [ecx+eax*1]
10984a27:	89 10                                           	mov    DWORD PTR [eax],edx
10984a29:	8b 54 01 04                                     	mov    edx,DWORD PTR [ecx+eax*1+0x4]
10984a2d:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10984a30:	8b 54 01 08                                     	mov    edx,DWORD PTR [ecx+eax*1+0x8]
10984a34:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10984a37:	8b 54 01 0c                                     	mov    edx,DWORD PTR [ecx+eax*1+0xc]
10984a3b:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10984a3e:	83 c0 10                                        	add    eax,0x10
10984a41:	8d 14 01                                        	lea    edx,[ecx+eax*1]
10984a44:	3b d3                                           	cmp    edx,ebx
10984a46:	75 d8                                           	jne    0x10984a20
10984a48:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10984a4b:	8d 84 24 9c 00 00 00                            	lea    eax,[esp+0x9c]
10984a52:	50                                              	push   eax
10984a53:	68 da 57 05 22                                  	push   0x220557da
10984a58:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
10984a5c:	51                                              	push   ecx
10984a5d:	8d 94 24 c8 04 00 00                            	lea    edx,[esp+0x4c8]
10984a64:	52                                              	push   edx
10984a65:	e8 e6 da de ff                                  	call   0x10772550
10984a6a:	8b 84 24 c0 00 00 00                            	mov    eax,DWORD PTR [esp+0xc0]
10984a71:	83 c4 20                                        	add    esp,0x20
10984a74:	3b 84 24 a4 00 00 00                            	cmp    eax,DWORD PTR [esp+0xa4]
10984a7b:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
10984a7f:	73 1c                                           	jae    0x10984a9d
10984a81:	8b c8                                           	mov    ecx,eax
10984a83:	83 c0 10                                        	add    eax,0x10
10984a86:	85 c9                                           	test   ecx,ecx
10984a88:	89 84 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],eax
10984a8f:	74 1e                                           	je     0x10984aaf
10984a91:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
10984a95:	50                                              	push   eax
10984a96:	e8 25 eb fa ff                                  	call   0x109335c0
10984a9b:	eb 12                                           	jmp    0x10984aaf
10984a9d:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
10984aa1:	51                                              	push   ecx
10984aa2:	50                                              	push   eax
10984aa3:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
10984aaa:	e8 21 f6 cf ff                                  	call   0x106840d0
10984aaf:	8b 94 24 48 12 00 00                            	mov    edx,DWORD PTR [esp+0x1248]
10984ab6:	52                                              	push   edx
10984ab7:	8d 8c 24 18 0a 00 00                            	lea    ecx,[esp+0xa18]
10984abe:	e8 cd d8 f9 ff                                  	call   0x10922390
10984ac3:	68 00 01 00 00                                  	push   0x100
10984ac8:	8d 84 24 10 08 00 00                            	lea    eax,[esp+0x810]
10984acf:	50                                              	push   eax
10984ad0:	8d 8c 24 1c 0a 00 00                            	lea    ecx,[esp+0xa1c]
10984ad7:	e8 64 d5 f9 ff                                  	call   0x10922040
10984adc:	8d 8c 24 0c 08 00 00                            	lea    ecx,[esp+0x80c]
10984ae3:	51                                              	push   ecx
10984ae4:	e8 97 ee c3 ff                                  	call   0x105c3980
10984ae9:	83 c4 04                                        	add    esp,0x4
10984aec:	8b f0                                           	mov    esi,eax
10984aee:	8b 84 24 44 12 00 00                            	mov    eax,DWORD PTR [esp+0x1244]
10984af5:	8b fa                                           	mov    edi,edx
10984af7:	8b 94 24 38 12 00 00                            	mov    edx,DWORD PTR [esp+0x1238]
10984afe:	6a 10                                           	push   0x10
10984b00:	33 db                                           	xor    ebx,ebx
10984b02:	50                                              	push   eax
10984b03:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
10984b07:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
10984b0b:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
10984b0f:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
10984b13:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10984b17:	e8 14 ff fa ff                                  	call   0x10934a30
10984b1c:	50                                              	push   eax
10984b1d:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10984b21:	e8 9a ea fa ff                                  	call   0x109335c0
10984b26:	3b 6c 24 34                                     	cmp    ebp,DWORD PTR [esp+0x34]
10984b2a:	73 20                                           	jae    0x10984b4c
10984b2c:	85 ed                                           	test   ebp,ebp
10984b2e:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
10984b31:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
10984b35:	74 24                                           	je     0x10984b5b
10984b37:	8b 94 24 38 12 00 00                            	mov    edx,DWORD PTR [esp+0x1238]
10984b3e:	89 75 00                                        	mov    DWORD PTR [ebp+0x0],esi
10984b41:	89 7d 04                                        	mov    DWORD PTR [ebp+0x4],edi
10984b44:	89 55 08                                        	mov    DWORD PTR [ebp+0x8],edx
10984b47:	89 5d 0c                                        	mov    DWORD PTR [ebp+0xc],ebx
10984b4a:	eb 0f                                           	jmp    0x10984b5b
10984b4c:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10984b50:	50                                              	push   eax
10984b51:	55                                              	push   ebp
10984b52:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10984b56:	e8 45 a4 b3 ff                                  	call   0x104befa0
10984b5b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10984b5f:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
10984b66:	51                                              	push   ecx
10984b67:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10984b6b:	83 ec 10                                        	sub    esp,0x10
10984b6e:	8b c4                                           	mov    eax,esp
10984b70:	89 10                                           	mov    DWORD PTR [eax],edx
10984b72:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10984b76:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10984b79:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10984b7d:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10984b80:	8d 54 24 70                                     	lea    edx,[esp+0x70]
10984b84:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10984b87:	8b 84 24 5c 12 00 00                            	mov    eax,DWORD PTR [esp+0x125c]
10984b8e:	52                                              	push   edx
10984b8f:	50                                              	push   eax
10984b90:	e8 bb e2 de ff                                  	call   0x10772e50
10984b95:	83 c4 1c                                        	add    esp,0x1c
10984b98:	8d 8c 24 4c 01 00 00                            	lea    ecx,[esp+0x14c]
10984b9f:	e8 6c d7 e1 ff                                  	call   0x107a2310
10984ba4:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
10984ba8:	51                                              	push   ecx
10984ba9:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
10984bad:	e8 0e ea fa ff                                  	call   0x109335c0
10984bb2:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
10984bb6:	52                                              	push   edx
10984bb7:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
10984bbe:	e8 fd e9 fa ff                                  	call   0x109335c0
10984bc3:	66 8b 84 24 4c 12 00 00                         	mov    ax,WORD PTR [esp+0x124c]
10984bcb:	8b 8c 24 60 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1260]
10984bd2:	66 89 84 24 a6 01 00 00                         	mov    WORD PTR [esp+0x1a6],ax
10984bda:	8b c1                                           	mov    eax,ecx
10984bdc:	8d 70 01                                        	lea    esi,[eax+0x1]
10984bdf:	90                                              	nop
10984be0:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984be2:	83 c0 01                                        	add    eax,0x1
10984be5:	84 d2                                           	test   dl,dl
10984be7:	75 f7                                           	jne    0x10984be0
10984be9:	2b c6                                           	sub    eax,esi
10984beb:	03 c1                                           	add    eax,ecx
10984bed:	50                                              	push   eax
10984bee:	51                                              	push   ecx
10984bef:	8d 8c 24 14 02 00 00                            	lea    ecx,[esp+0x214]
10984bf6:	e8 a5 9c 68 ff                                  	call   0x1000e8a0
10984bfb:	8b 8c 24 64 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1264]
10984c02:	8b c1                                           	mov    eax,ecx
10984c04:	8d 70 01                                        	lea    esi,[eax+0x1]
10984c07:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984c09:	83 c0 01                                        	add    eax,0x1
10984c0c:	84 d2                                           	test   dl,dl
10984c0e:	75 f7                                           	jne    0x10984c07
10984c10:	2b c6                                           	sub    eax,esi
10984c12:	03 c1                                           	add    eax,ecx
10984c14:	50                                              	push   eax
10984c15:	51                                              	push   ecx
10984c16:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
10984c1d:	e8 7e 9c 68 ff                                  	call   0x1000e8a0
10984c22:	8b 8c 24 70 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1270]
10984c29:	8b c1                                           	mov    eax,ecx
10984c2b:	8d 70 01                                        	lea    esi,[eax+0x1]
10984c2e:	8b ff                                           	mov    edi,edi
10984c30:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984c32:	83 c0 01                                        	add    eax,0x1
10984c35:	84 d2                                           	test   dl,dl
10984c37:	75 f7                                           	jne    0x10984c30
10984c39:	2b c6                                           	sub    eax,esi
10984c3b:	03 c1                                           	add    eax,ecx
10984c3d:	50                                              	push   eax
10984c3e:	51                                              	push   ecx
10984c3f:	8d 8c 24 f4 01 00 00                            	lea    ecx,[esp+0x1f4]
10984c46:	e8 55 9c 68 ff                                  	call   0x1000e8a0
10984c4b:	8b 8c 24 74 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1274]
10984c52:	8b c1                                           	mov    eax,ecx
10984c54:	8d 70 01                                        	lea    esi,[eax+0x1]
10984c57:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984c59:	83 c0 01                                        	add    eax,0x1
10984c5c:	84 d2                                           	test   dl,dl
10984c5e:	75 f7                                           	jne    0x10984c57
10984c60:	2b c6                                           	sub    eax,esi
10984c62:	03 c1                                           	add    eax,ecx
10984c64:	50                                              	push   eax
10984c65:	51                                              	push   ecx
10984c66:	8d 8c 24 04 02 00 00                            	lea    ecx,[esp+0x204]
10984c6d:	e8 2e 9c 68 ff                                  	call   0x1000e8a0
10984c72:	8b 8c 24 68 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1268]
10984c79:	8b c1                                           	mov    eax,ecx
10984c7b:	8d 70 01                                        	lea    esi,[eax+0x1]
10984c7e:	8b ff                                           	mov    edi,edi
10984c80:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984c82:	83 c0 01                                        	add    eax,0x1
10984c85:	84 d2                                           	test   dl,dl
10984c87:	75 f7                                           	jne    0x10984c80
10984c89:	2b c6                                           	sub    eax,esi
10984c8b:	03 c1                                           	add    eax,ecx
10984c8d:	50                                              	push   eax
10984c8e:	51                                              	push   ecx
10984c8f:	8d 8c 24 44 02 00 00                            	lea    ecx,[esp+0x244]
10984c96:	e8 05 9c 68 ff                                  	call   0x1000e8a0
10984c9b:	8b 8c 24 6c 12 00 00                            	mov    ecx,DWORD PTR [esp+0x126c]
10984ca2:	8b c1                                           	mov    eax,ecx
10984ca4:	8d 70 01                                        	lea    esi,[eax+0x1]
10984ca7:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984ca9:	83 c0 01                                        	add    eax,0x1
10984cac:	84 d2                                           	test   dl,dl
10984cae:	75 f7                                           	jne    0x10984ca7
10984cb0:	2b c6                                           	sub    eax,esi
10984cb2:	03 c1                                           	add    eax,ecx
10984cb4:	50                                              	push   eax
10984cb5:	51                                              	push   ecx
10984cb6:	8d 8c 24 54 02 00 00                            	lea    ecx,[esp+0x254]
10984cbd:	e8 de 9b 68 ff                                  	call   0x1000e8a0
10984cc2:	8b 8c 24 94 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1294]
10984cc9:	8b c1                                           	mov    eax,ecx
10984ccb:	8d 70 01                                        	lea    esi,[eax+0x1]
10984cce:	8b ff                                           	mov    edi,edi
10984cd0:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984cd2:	83 c0 01                                        	add    eax,0x1
10984cd5:	84 d2                                           	test   dl,dl
10984cd7:	75 f7                                           	jne    0x10984cd0
10984cd9:	2b c6                                           	sub    eax,esi
10984cdb:	03 c1                                           	add    eax,ecx
10984cdd:	50                                              	push   eax
10984cde:	51                                              	push   ecx
10984cdf:	8d 8c 24 34 02 00 00                            	lea    ecx,[esp+0x234]
10984ce6:	e8 b5 9b 68 ff                                  	call   0x1000e8a0
10984ceb:	8b 8c 24 88 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1288]
10984cf2:	8b c1                                           	mov    eax,ecx
10984cf4:	8d 70 01                                        	lea    esi,[eax+0x1]
10984cf7:	8a 10                                           	mov    dl,BYTE PTR [eax]
10984cf9:	83 c0 01                                        	add    eax,0x1
10984cfc:	84 d2                                           	test   dl,dl
10984cfe:	75 f7                                           	jne    0x10984cf7
10984d00:	2b c6                                           	sub    eax,esi
10984d02:	03 c1                                           	add    eax,ecx
10984d04:	50                                              	push   eax
10984d05:	51                                              	push   ecx
10984d06:	8d 8c 24 64 02 00 00                            	lea    ecx,[esp+0x264]
10984d0d:	e8 8e 9b 68 ff                                  	call   0x1000e8a0
10984d12:	33 c0                                           	xor    eax,eax
10984d14:	39 84 24 80 12 00 00                            	cmp    DWORD PTR [esp+0x1280],eax
10984d1b:	89 84 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],eax
10984d22:	89 84 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],eax
10984d29:	89 84 24 c4 00 00 00                            	mov    DWORD PTR [esp+0xc4],eax
10984d30:	c7 84 24 c8 00 00 00 c4 67 b9 10                	mov    DWORD PTR [esp+0xc8],0x10b967c4
10984d3b:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10984d3f:	0f 8e 85 01 00 00                               	jle    0x10984eca
10984d45:	eb 09                                           	jmp    0x10984d50
10984d47:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10984d4e:	8b ff                                           	mov    edi,edi
10984d50:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10984d54:	8b 8c 24 84 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1284]
10984d5b:	8b 2c 91                                        	mov    ebp,DWORD PTR [ecx+edx*4]
10984d5e:	8b c5                                           	mov    eax,ebp
10984d60:	c7 44 24 48 3c dc b5 10                         	mov    DWORD PTR [esp+0x48],0x10b5dc3c
10984d68:	8d 50 01                                        	lea    edx,[eax+0x1]
10984d6b:	eb 03                                           	jmp    0x10984d70
10984d6d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10984d70:	8a 08                                           	mov    cl,BYTE PTR [eax]
10984d72:	83 c0 01                                        	add    eax,0x1
10984d75:	84 c9                                           	test   cl,cl
10984d77:	75 f7                                           	jne    0x10984d70
10984d79:	2b c2                                           	sub    eax,edx
10984d7b:	8d 34 28                                        	lea    esi,[eax+ebp*1]
10984d7e:	8b de                                           	mov    ebx,esi
10984d80:	2b dd                                           	sub    ebx,ebp
10984d82:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10984d86:	83 c3 01                                        	add    ebx,0x1
10984d89:	83 fb 01                                        	cmp    ebx,0x1
10984d8c:	76 26                                           	jbe    0x10984db4
10984d8e:	68 e7 00 00 00                                  	push   0xe7
10984d93:	68 d0 df aa 10                                  	push   0x10aadfd0
10984d98:	6a 00                                           	push   0x0
10984d9a:	6a 00                                           	push   0x0
10984d9c:	68 3c dc b5 10                                  	push   0x10b5dc3c
10984da1:	53                                              	push   ebx
10984da2:	e8 09 41 f9 ff                                  	call   0x10918eb0
10984da7:	8b f8                                           	mov    edi,eax
10984da9:	83 c4 18                                        	add    esp,0x18
10984dac:	03 df                                           	add    ebx,edi
10984dae:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
10984db2:	eb 0d                                           	jmp    0x10984dc1
10984db4:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10984db9:	c7 44 24 44 45 82 ca 10                         	mov    DWORD PTR [esp+0x44],0x10ca8245
10984dc1:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10984dc5:	50                                              	push   eax
10984dc6:	55                                              	push   ebp
10984dc7:	57                                              	push   edi
10984dc8:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
10984dcc:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10984dd2:	8b 84 24 cc 00 00 00                            	mov    eax,DWORD PTR [esp+0xcc]
10984dd9:	2b f5                                           	sub    esi,ebp
10984ddb:	03 f7                                           	add    esi,edi
10984ddd:	8b ee                                           	mov    ebp,esi
10984ddf:	83 c4 0c                                        	add    esp,0xc
10984de2:	3b 84 24 c4 00 00 00                            	cmp    eax,DWORD PTR [esp+0xc4]
10984de9:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
10984ded:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
10984df1:	0f 83 8d 00 00 00                               	jae    0x10984e84
10984df7:	8b f0                                           	mov    esi,eax
10984df9:	83 c0 10                                        	add    eax,0x10
10984dfc:	85 f6                                           	test   esi,esi
10984dfe:	89 84 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],eax
10984e05:	0f 84 8f 00 00 00                               	je     0x10984e9a
10984e0b:	8b dd                                           	mov    ebx,ebp
10984e0d:	2b df                                           	sub    ebx,edi
10984e0f:	33 c0                                           	xor    eax,eax
10984e11:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10984e15:	83 c3 01                                        	add    ebx,0x1
10984e18:	83 fb 01                                        	cmp    ebx,0x1
10984e1b:	89 06                                           	mov    DWORD PTR [esi],eax
10984e1d:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10984e20:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10984e23:	c7 46 0c 3c dc b5 10                            	mov    DWORD PTR [esi+0xc],0x10b5dc3c
10984e2a:	76 25                                           	jbe    0x10984e51
10984e2c:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10984e2f:	68 e7 00 00 00                                  	push   0xe7
10984e34:	68 d0 df aa 10                                  	push   0x10aadfd0
10984e39:	50                                              	push   eax
10984e3a:	50                                              	push   eax
10984e3b:	51                                              	push   ecx
10984e3c:	53                                              	push   ebx
10984e3d:	e8 6e 40 f9 ff                                  	call   0x10918eb0
10984e42:	83 c4 18                                        	add    esp,0x18
10984e45:	03 d8                                           	add    ebx,eax
10984e47:	89 06                                           	mov    DWORD PTR [esi],eax
10984e49:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10984e4c:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
10984e4f:	eb 14                                           	jmp    0x10984e65
10984e51:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
10984e57:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
10984e5e:	c7 46 08 45 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8245
10984e65:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10984e69:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
10984e6b:	52                                              	push   edx
10984e6c:	57                                              	push   edi
10984e6d:	53                                              	push   ebx
10984e6e:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10984e74:	2b ef                                           	sub    ebp,edi
10984e76:	83 c4 0c                                        	add    esp,0xc
10984e79:	03 eb                                           	add    ebp,ebx
10984e7b:	89 6e 04                                        	mov    DWORD PTR [esi+0x4],ebp
10984e7e:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
10984e82:	eb 16                                           	jmp    0x10984e9a
10984e84:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10984e88:	51                                              	push   ecx
10984e89:	50                                              	push   eax
10984e8a:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
10984e91:	e8 5a 0a c6 ff                                  	call   0x105e58f0
10984e96:	8b 7c 24 3c                                     	mov    edi,DWORD PTR [esp+0x3c]
10984e9a:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10984e9e:	2b c7                                           	sub    eax,edi
10984ea0:	83 f8 01                                        	cmp    eax,0x1
10984ea3:	7e 0d                                           	jle    0x10984eb2
10984ea5:	85 ff                                           	test   edi,edi
10984ea7:	74 09                                           	je     0x10984eb2
10984ea9:	57                                              	push   edi
10984eaa:	e8 e1 3f f9 ff                                  	call   0x10918e90
10984eaf:	83 c4 04                                        	add    esp,0x4
10984eb2:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10984eb6:	83 c0 01                                        	add    eax,0x1
10984eb9:	3b 84 24 80 12 00 00                            	cmp    eax,DWORD PTR [esp+0x1280]
10984ec0:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10984ec4:	0f 8c 86 fe ff ff                               	jl     0x10984d50
10984eca:	8d 94 24 bc 00 00 00                            	lea    edx,[esp+0xbc]
10984ed1:	52                                              	push   edx
10984ed2:	8d 8c 24 80 02 00 00                            	lea    ecx,[esp+0x280]
10984ed9:	e8 62 7a e0 ff                                  	call   0x1078c940
10984ede:	33 c0                                           	xor    eax,eax
10984ee0:	39 84 24 78 12 00 00                            	cmp    DWORD PTR [esp+0x1278],eax
10984ee7:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10984eeb:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10984eef:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
10984ef3:	c7 44 24 48 70 67 b9 10                         	mov    DWORD PTR [esp+0x48],0x10b96770
10984efb:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10984eff:	0f 8e 79 01 00 00                               	jle    0x1098507e
10984f05:	eb 09                                           	jmp    0x10984f10
10984f07:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10984f0e:	8b ff                                           	mov    edi,edi
10984f10:	8b 84 24 7c 12 00 00                            	mov    eax,DWORD PTR [esp+0x127c]
10984f17:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10984f1b:	8b 2c 88                                        	mov    ebp,DWORD PTR [eax+ecx*4]
10984f1e:	8b c5                                           	mov    eax,ebp
10984f20:	c7 44 24 58 68 dc b5 10                         	mov    DWORD PTR [esp+0x58],0x10b5dc68
10984f28:	8d 50 01                                        	lea    edx,[eax+0x1]
10984f2b:	eb 03                                           	jmp    0x10984f30
10984f2d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10984f30:	8a 08                                           	mov    cl,BYTE PTR [eax]
10984f32:	83 c0 01                                        	add    eax,0x1
10984f35:	84 c9                                           	test   cl,cl
10984f37:	75 f7                                           	jne    0x10984f30
10984f39:	2b c2                                           	sub    eax,edx
10984f3b:	8d 34 28                                        	lea    esi,[eax+ebp*1]
10984f3e:	8b de                                           	mov    ebx,esi
10984f40:	2b dd                                           	sub    ebx,ebp
10984f42:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10984f46:	83 c3 01                                        	add    ebx,0x1
10984f49:	83 fb 01                                        	cmp    ebx,0x1
10984f4c:	76 26                                           	jbe    0x10984f74
10984f4e:	68 e7 00 00 00                                  	push   0xe7
10984f53:	68 d0 df aa 10                                  	push   0x10aadfd0
10984f58:	6a 00                                           	push   0x0
10984f5a:	6a 00                                           	push   0x0
10984f5c:	68 68 dc b5 10                                  	push   0x10b5dc68
10984f61:	53                                              	push   ebx
10984f62:	e8 49 3f f9 ff                                  	call   0x10918eb0
10984f67:	8b f8                                           	mov    edi,eax
10984f69:	83 c4 18                                        	add    esp,0x18
10984f6c:	03 df                                           	add    ebx,edi
10984f6e:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
10984f72:	eb 0d                                           	jmp    0x10984f81
10984f74:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10984f79:	c7 44 24 54 45 82 ca 10                         	mov    DWORD PTR [esp+0x54],0x10ca8245
10984f81:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10984f85:	52                                              	push   edx
10984f86:	55                                              	push   ebp
10984f87:	57                                              	push   edi
10984f88:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
10984f8c:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10984f92:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10984f96:	2b f5                                           	sub    esi,ebp
10984f98:	03 f7                                           	add    esi,edi
10984f9a:	8b ee                                           	mov    ebp,esi
10984f9c:	83 c4 0c                                        	add    esp,0xc
10984f9f:	3b 44 24 44                                     	cmp    eax,DWORD PTR [esp+0x44]
10984fa3:	89 6c 24 50                                     	mov    DWORD PTR [esp+0x50],ebp
10984fa7:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
10984fab:	0f 83 8a 00 00 00                               	jae    0x1098503b
10984fb1:	8b f0                                           	mov    esi,eax
10984fb3:	83 c0 10                                        	add    eax,0x10
10984fb6:	85 f6                                           	test   esi,esi
10984fb8:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10984fbc:	0f 84 8c 00 00 00                               	je     0x1098504e
10984fc2:	8b dd                                           	mov    ebx,ebp
10984fc4:	2b df                                           	sub    ebx,edi
10984fc6:	33 c0                                           	xor    eax,eax
10984fc8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
10984fcc:	83 c3 01                                        	add    ebx,0x1
10984fcf:	83 fb 01                                        	cmp    ebx,0x1
10984fd2:	89 06                                           	mov    DWORD PTR [esi],eax
10984fd4:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10984fd7:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10984fda:	c7 46 0c 68 dc b5 10                            	mov    DWORD PTR [esi+0xc],0x10b5dc68
10984fe1:	76 25                                           	jbe    0x10985008
10984fe3:	68 e7 00 00 00                                  	push   0xe7
10984fe8:	68 d0 df aa 10                                  	push   0x10aadfd0
10984fed:	50                                              	push   eax
10984fee:	50                                              	push   eax
10984fef:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
10984ff2:	50                                              	push   eax
10984ff3:	53                                              	push   ebx
10984ff4:	e8 b7 3e f9 ff                                  	call   0x10918eb0
10984ff9:	83 c4 18                                        	add    esp,0x18
10984ffc:	03 d8                                           	add    ebx,eax
10984ffe:	89 06                                           	mov    DWORD PTR [esi],eax
10985000:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10985003:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
10985006:	eb 14                                           	jmp    0x1098501c
10985008:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
1098500e:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
10985015:	c7 46 08 45 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8245
1098501c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10985020:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
10985022:	51                                              	push   ecx
10985023:	57                                              	push   edi
10985024:	53                                              	push   ebx
10985025:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098502b:	2b ef                                           	sub    ebp,edi
1098502d:	83 c4 0c                                        	add    esp,0xc
10985030:	03 eb                                           	add    ebp,ebx
10985032:	89 6e 04                                        	mov    DWORD PTR [esi+0x4],ebp
10985035:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
10985039:	eb 13                                           	jmp    0x1098504e
1098503b:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
1098503f:	52                                              	push   edx
10985040:	50                                              	push   eax
10985041:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10985045:	e8 a6 08 c6 ff                                  	call   0x105e58f0
1098504a:	8b 7c 24 4c                                     	mov    edi,DWORD PTR [esp+0x4c]
1098504e:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10985052:	2b c7                                           	sub    eax,edi
10985054:	83 f8 01                                        	cmp    eax,0x1
10985057:	7e 0d                                           	jle    0x10985066
10985059:	85 ff                                           	test   edi,edi
1098505b:	74 09                                           	je     0x10985066
1098505d:	57                                              	push   edi
1098505e:	e8 2d 3e f9 ff                                  	call   0x10918e90
10985063:	83 c4 04                                        	add    esp,0x4
10985066:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098506a:	83 c0 01                                        	add    eax,0x1
1098506d:	3b 84 24 78 12 00 00                            	cmp    eax,DWORD PTR [esp+0x1278]
10985074:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10985078:	0f 8c 92 fe ff ff                               	jl     0x10984f10
1098507e:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
10985082:	50                                              	push   eax
10985083:	8d 8c 24 70 02 00 00                            	lea    ecx,[esp+0x270]
1098508a:	e8 b1 78 e0 ff                                  	call   0x1078c940
1098508f:	33 c0                                           	xor    eax,eax
10985091:	39 84 24 8c 12 00 00                            	cmp    DWORD PTR [esp+0x128c],eax
10985098:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
1098509c:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
109850a0:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
109850a4:	c7 44 24 58 4c 67 b9 10                         	mov    DWORD PTR [esp+0x58],0x10b9674c
109850ac:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109850b0:	0f 8e 78 01 00 00                               	jle    0x1098522e
109850b6:	eb 08                                           	jmp    0x109850c0
109850b8:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
109850bf:	90                                              	nop
109850c0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
109850c4:	8b 8c 24 90 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1290]
109850cb:	8b 2c 91                                        	mov    ebp,DWORD PTR [ecx+edx*4]
109850ce:	8b c5                                           	mov    eax,ebp
109850d0:	c7 44 24 78 0c dc b5 10                         	mov    DWORD PTR [esp+0x78],0x10b5dc0c
109850d8:	8d 50 01                                        	lea    edx,[eax+0x1]
109850db:	eb 03                                           	jmp    0x109850e0
109850dd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
109850e0:	8a 08                                           	mov    cl,BYTE PTR [eax]
109850e2:	83 c0 01                                        	add    eax,0x1
109850e5:	84 c9                                           	test   cl,cl
109850e7:	75 f7                                           	jne    0x109850e0
109850e9:	2b c2                                           	sub    eax,edx
109850eb:	8d 34 28                                        	lea    esi,[eax+ebp*1]
109850ee:	8b de                                           	mov    ebx,esi
109850f0:	2b dd                                           	sub    ebx,ebp
109850f2:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
109850f6:	83 c3 01                                        	add    ebx,0x1
109850f9:	83 fb 01                                        	cmp    ebx,0x1
109850fc:	76 26                                           	jbe    0x10985124
109850fe:	68 e7 00 00 00                                  	push   0xe7
10985103:	68 d0 df aa 10                                  	push   0x10aadfd0
10985108:	6a 00                                           	push   0x0
1098510a:	6a 00                                           	push   0x0
1098510c:	68 0c dc b5 10                                  	push   0x10b5dc0c
10985111:	53                                              	push   ebx
10985112:	e8 99 3d f9 ff                                  	call   0x10918eb0
10985117:	8b f8                                           	mov    edi,eax
10985119:	83 c4 18                                        	add    esp,0x18
1098511c:	03 df                                           	add    ebx,edi
1098511e:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
10985122:	eb 0d                                           	jmp    0x10985131
10985124:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10985129:	c7 44 24 74 45 82 ca 10                         	mov    DWORD PTR [esp+0x74],0x10ca8245
10985131:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10985135:	50                                              	push   eax
10985136:	55                                              	push   ebp
10985137:	57                                              	push   edi
10985138:	89 7c 24 78                                     	mov    DWORD PTR [esp+0x78],edi
1098513c:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10985142:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10985146:	2b f5                                           	sub    esi,ebp
10985148:	03 f7                                           	add    esi,edi
1098514a:	8b ee                                           	mov    ebp,esi
1098514c:	83 c4 0c                                        	add    esp,0xc
1098514f:	3b 44 24 54                                     	cmp    eax,DWORD PTR [esp+0x54]
10985153:	89 6c 24 70                                     	mov    DWORD PTR [esp+0x70],ebp
10985157:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
1098515b:	0f 83 8a 00 00 00                               	jae    0x109851eb
10985161:	8b f0                                           	mov    esi,eax
10985163:	83 c0 10                                        	add    eax,0x10
10985166:	85 f6                                           	test   esi,esi
10985168:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
1098516c:	0f 84 8c 00 00 00                               	je     0x109851fe
10985172:	8b dd                                           	mov    ebx,ebp
10985174:	2b df                                           	sub    ebx,edi
10985176:	33 c0                                           	xor    eax,eax
10985178:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1098517c:	83 c3 01                                        	add    ebx,0x1
1098517f:	83 fb 01                                        	cmp    ebx,0x1
10985182:	89 06                                           	mov    DWORD PTR [esi],eax
10985184:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10985187:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1098518a:	c7 46 0c 0c dc b5 10                            	mov    DWORD PTR [esi+0xc],0x10b5dc0c
10985191:	76 25                                           	jbe    0x109851b8
10985193:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10985196:	68 e7 00 00 00                                  	push   0xe7
1098519b:	68 d0 df aa 10                                  	push   0x10aadfd0
109851a0:	50                                              	push   eax
109851a1:	50                                              	push   eax
109851a2:	51                                              	push   ecx
109851a3:	53                                              	push   ebx
109851a4:	e8 07 3d f9 ff                                  	call   0x10918eb0
109851a9:	83 c4 18                                        	add    esp,0x18
109851ac:	03 d8                                           	add    ebx,eax
109851ae:	89 06                                           	mov    DWORD PTR [esi],eax
109851b0:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109851b3:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
109851b6:	eb 14                                           	jmp    0x109851cc
109851b8:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
109851be:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
109851c5:	c7 46 08 45 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8245
109851cc:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109851d0:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
109851d2:	52                                              	push   edx
109851d3:	57                                              	push   edi
109851d4:	53                                              	push   ebx
109851d5:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109851db:	2b ef                                           	sub    ebp,edi
109851dd:	83 c4 0c                                        	add    esp,0xc
109851e0:	03 eb                                           	add    ebp,ebx
109851e2:	89 6e 04                                        	mov    DWORD PTR [esi+0x4],ebp
109851e5:	c6 45 00 00                                     	mov    BYTE PTR [ebp+0x0],0x0
109851e9:	eb 13                                           	jmp    0x109851fe
109851eb:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
109851ef:	51                                              	push   ecx
109851f0:	50                                              	push   eax
109851f1:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109851f5:	e8 f6 06 c6 ff                                  	call   0x105e58f0
109851fa:	8b 7c 24 6c                                     	mov    edi,DWORD PTR [esp+0x6c]
109851fe:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
10985202:	2b c7                                           	sub    eax,edi
10985204:	83 f8 01                                        	cmp    eax,0x1
10985207:	7e 0d                                           	jle    0x10985216
10985209:	85 ff                                           	test   edi,edi
1098520b:	74 09                                           	je     0x10985216
1098520d:	57                                              	push   edi
1098520e:	e8 7d 3c f9 ff                                  	call   0x10918e90
10985213:	83 c4 04                                        	add    esp,0x4
10985216:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098521a:	83 c0 01                                        	add    eax,0x1
1098521d:	3b 84 24 8c 12 00 00                            	cmp    eax,DWORD PTR [esp+0x128c]
10985224:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10985228:	0f 8c 92 fe ff ff                               	jl     0x109850c0
1098522e:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10985232:	52                                              	push   edx
10985233:	8d 8c 24 90 02 00 00                            	lea    ecx,[esp+0x290]
1098523a:	e8 01 77 e0 ff                                  	call   0x1078c940
1098523f:	8b ac 24 38 12 00 00                            	mov    ebp,DWORD PTR [esp+0x1238]
10985246:	6a 00                                           	push   0x0
10985248:	83 ec 10                                        	sub    esp,0x10
1098524b:	8d 44 24 70                                     	lea    eax,[esp+0x70]
1098524f:	8b cc                                           	mov    ecx,esp
10985251:	50                                              	push   eax
10985252:	89 ac 24 64 01 00 00                            	mov    DWORD PTR [esp+0x164],ebp
10985259:	e8 62 e3 fa ff                                  	call   0x109335c0
1098525e:	8d 8c 24 60 01 00 00                            	lea    ecx,[esp+0x160]
10985265:	e8 76 1f e2 ff                                  	call   0x107a71e0
1098526a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098526e:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10985272:	83 ec 10                                        	sub    esp,0x10
10985275:	8b c4                                           	mov    eax,esp
10985277:	89 08                                           	mov    DWORD PTR [eax],ecx
10985279:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1098527d:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10985280:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10985284:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10985287:	83 ec 10                                        	sub    esp,0x10
1098528a:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098528d:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
10985291:	8b cc                                           	mov    ecx,esp
10985293:	50                                              	push   eax
10985294:	e8 27 e3 fa ff                                  	call   0x109335c0
10985299:	8d 8c 24 6c 01 00 00                            	lea    ecx,[esp+0x16c]
109852a0:	e8 bb 1f e2 ff                                  	call   0x107a7260
109852a5:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
109852ac:	8b b4 24 9c 00 00 00                            	mov    esi,DWORD PTR [esp+0x9c]
109852b3:	33 ff                                           	xor    edi,edi
109852b5:	3b f0                                           	cmp    esi,eax
109852b7:	8b d8                                           	mov    ebx,eax
109852b9:	74 2d                                           	je     0x109852e8
109852bb:	eb 03                                           	jmp    0x109852c0
109852bd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
109852c0:	83 ff 03                                        	cmp    edi,0x3
109852c3:	7d 23                                           	jge    0x109852e8
109852c5:	6a 00                                           	push   0x0
109852c7:	83 ec 10                                        	sub    esp,0x10
109852ca:	8b cc                                           	mov    ecx,esp
109852cc:	56                                              	push   esi
109852cd:	e8 ee e2 fa ff                                  	call   0x109335c0
109852d2:	8d 8c 24 60 01 00 00                            	lea    ecx,[esp+0x160]
109852d9:	e8 02 1f e2 ff                                  	call   0x107a71e0
109852de:	83 c6 10                                        	add    esi,0x10
109852e1:	83 c7 01                                        	add    edi,0x1
109852e4:	3b f3                                           	cmp    esi,ebx
109852e6:	75 d8                                           	jne    0x109852c0
109852e8:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
109852ec:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
109852f0:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
109852f4:	83 ec 10                                        	sub    esp,0x10
109852f7:	8b f3                                           	mov    esi,ebx
109852f9:	2b f1                                           	sub    esi,ecx
109852fb:	c1 fe 04                                        	sar    esi,0x4
109852fe:	8b fc                                           	mov    edi,esp
10985300:	89 57 0c                                        	mov    DWORD PTR [edi+0xc],edx
10985303:	74 25                                           	je     0x1098532a
10985305:	68 e7 00 00 00                                  	push   0xe7
1098530a:	68 d0 df aa 10                                  	push   0x10aadfd0
1098530f:	6a 00                                           	push   0x0
10985311:	6a 00                                           	push   0x0
10985313:	8b c2                                           	mov    eax,edx
10985315:	8b ce                                           	mov    ecx,esi
10985317:	50                                              	push   eax
10985318:	c1 e1 04                                        	shl    ecx,0x4
1098531b:	51                                              	push   ecx
1098531c:	e8 8f 3b f9 ff                                  	call   0x10918eb0
10985321:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
10985325:	83 c4 18                                        	add    esp,0x18
10985328:	eb 02                                           	jmp    0x1098532c
1098532a:	33 c0                                           	xor    eax,eax
1098532c:	c1 e6 04                                        	shl    esi,0x4
1098532f:	03 f0                                           	add    esi,eax
10985331:	3b cb                                           	cmp    ecx,ebx
10985333:	89 07                                           	mov    DWORD PTR [edi],eax
10985335:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10985338:	89 77 08                                        	mov    DWORD PTR [edi+0x8],esi
1098533b:	74 2b                                           	je     0x10985368
1098533d:	2b c8                                           	sub    ecx,eax
1098533f:	90                                              	nop
10985340:	85 c0                                           	test   eax,eax
10985342:	74 1a                                           	je     0x1098535e
10985344:	8b 14 01                                        	mov    edx,DWORD PTR [ecx+eax*1]
10985347:	89 10                                           	mov    DWORD PTR [eax],edx
10985349:	8b 54 01 04                                     	mov    edx,DWORD PTR [ecx+eax*1+0x4]
1098534d:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10985350:	8b 54 01 08                                     	mov    edx,DWORD PTR [ecx+eax*1+0x8]
10985354:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10985357:	8b 54 01 0c                                     	mov    edx,DWORD PTR [ecx+eax*1+0xc]
1098535b:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098535e:	83 c0 10                                        	add    eax,0x10
10985361:	8d 14 01                                        	lea    edx,[ecx+eax*1]
10985364:	3b d3                                           	cmp    edx,ebx
10985366:	75 d8                                           	jne    0x10985340
10985368:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1098536b:	8d 84 24 9c 00 00 00                            	lea    eax,[esp+0x9c]
10985372:	50                                              	push   eax
10985373:	55                                              	push   ebp
10985374:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
10985378:	51                                              	push   ecx
10985379:	8d 94 24 68 01 00 00                            	lea    edx,[esp+0x168]
10985380:	52                                              	push   edx
10985381:	e8 ca d1 de ff                                  	call   0x10772550
10985386:	8b 84 24 74 12 00 00                            	mov    eax,DWORD PTR [esp+0x1274]
1098538d:	8b 8c 24 70 12 00 00                            	mov    ecx,DWORD PTR [esp+0x1270]
10985394:	8b bc 24 60 12 00 00                            	mov    edi,DWORD PTR [esp+0x1260]
1098539b:	8b 9c 24 ec 00 00 00                            	mov    ebx,DWORD PTR [esp+0xec]
109853a2:	83 c4 20                                        	add    esp,0x20
109853a5:	50                                              	push   eax
109853a6:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
109853ad:	51                                              	push   ecx
109853ae:	8d 94 24 a4 00 00 00                            	lea    edx,[esp+0xa4]
109853b5:	52                                              	push   edx
109853b6:	6a 00                                           	push   0x0
109853b8:	57                                              	push   edi
109853b9:	50                                              	push   eax
109853ba:	8b cb                                           	mov    ecx,ebx
109853bc:	e8 3f 7e e0 ff                                  	call   0x1078d200
109853c1:	8d 8c 24 24 0e 00 00                            	lea    ecx,[esp+0xe24]
109853c8:	e8 b3 ba f9 ff                                  	call   0x10920e80
109853cd:	57                                              	push   edi
109853ce:	8d 8c 24 28 0e 00 00                            	lea    ecx,[esp+0xe28]
109853d5:	e8 06 ce f9 ff                                  	call   0x109221e0
109853da:	6a 00                                           	push   0x0
109853dc:	6a 00                                           	push   0x0
109853de:	6a 00                                           	push   0x0
109853e0:	6a 00                                           	push   0x0
109853e2:	68 24 67 b9 10                                  	push   0x10b96724
109853e7:	68 08 02 00 00                                  	push   0x208
109853ec:	e8 bf 3a f9 ff                                  	call   0x10918eb0
109853f1:	83 c4 18                                        	add    esp,0x18
109853f4:	8b f0                                           	mov    esi,eax
109853f6:	68 04 01 00 00                                  	push   0x104
109853fb:	56                                              	push   esi
109853fc:	8d 8c 24 2c 0e 00 00                            	lea    ecx,[esp+0xe2c]
10985403:	e8 68 cd f9 ff                                  	call   0x10922170
10985408:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
1098540c:	8b c6                                           	mov    eax,esi
1098540e:	74 09                                           	je     0x10985419
10985410:	83 c0 02                                        	add    eax,0x2
10985413:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10985417:	75 f7                                           	jne    0x10985410
10985419:	2b c6                                           	sub    eax,esi
1098541b:	d1 f8                                           	sar    eax,1
1098541d:	8d 0c 46                                        	lea    ecx,[esi+eax*2]
10985420:	51                                              	push   ecx
10985421:	56                                              	push   esi
10985422:	8d 8b 30 01 00 00                               	lea    ecx,[ebx+0x130]
10985428:	e8 93 a4 69 ff                                  	call   0x1001f8c0
1098542d:	66 83 3f 00                                     	cmp    WORD PTR [edi],0x0
10985431:	8b c7                                           	mov    eax,edi
10985433:	74 09                                           	je     0x1098543e
10985435:	83 c0 02                                        	add    eax,0x2
10985438:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1098543c:	75 f7                                           	jne    0x10985435
1098543e:	2b c7                                           	sub    eax,edi
10985440:	d1 f8                                           	sar    eax,1
10985442:	8d 14 47                                        	lea    edx,[edi+eax*2]
10985445:	52                                              	push   edx
10985446:	57                                              	push   edi
10985447:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
1098544e:	e8 5d 9f 69 ff                                  	call   0x1001f3b0
10985453:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
10985457:	3b c1                                           	cmp    eax,ecx
10985459:	74 0c                                           	je     0x10985467
1098545b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098545e:	8b 00                                           	mov    eax,DWORD PTR [eax]
10985460:	52                                              	push   edx
10985461:	50                                              	push   eax
10985462:	e8 59 a4 69 ff                                  	call   0x1001f8c0
10985467:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1098546b:	51                                              	push   ecx
1098546c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10985472:	8b 5c 24 4c                                     	mov    ebx,DWORD PTR [esp+0x4c]
10985476:	8b 7c 24 50                                     	mov    edi,DWORD PTR [esp+0x50]
1098547a:	3b df                                           	cmp    ebx,edi
1098547c:	8b e8                                           	mov    ebp,eax
1098547e:	8b f3                                           	mov    esi,ebx
10985480:	73 20                                           	jae    0x109854a2
10985482:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985484:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
10985487:	2b d0                                           	sub    edx,eax
10985489:	83 fa 01                                        	cmp    edx,0x1
1098548c:	7e 0d                                           	jle    0x1098549b
1098548e:	85 c0                                           	test   eax,eax
10985490:	74 09                                           	je     0x1098549b
10985492:	50                                              	push   eax
10985493:	e8 f8 39 f9 ff                                  	call   0x10918e90
10985498:	83 c4 04                                        	add    esp,0x4
1098549b:	83 c6 10                                        	add    esi,0x10
1098549e:	3b f7                                           	cmp    esi,edi
109854a0:	72 e0                                           	jb     0x10985482
109854a2:	85 db                                           	test   ebx,ebx
109854a4:	74 09                                           	je     0x109854af
109854a6:	53                                              	push   ebx
109854a7:	e8 e4 39 f9 ff                                  	call   0x10918e90
109854ac:	83 c4 04                                        	add    esp,0x4
109854af:	8b 5c 24 3c                                     	mov    ebx,DWORD PTR [esp+0x3c]
109854b3:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
109854b7:	3b df                                           	cmp    ebx,edi
109854b9:	8b f3                                           	mov    esi,ebx
109854bb:	73 23                                           	jae    0x109854e0
109854bd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
109854c0:	8b 06                                           	mov    eax,DWORD PTR [esi]
109854c2:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
109854c5:	2b c8                                           	sub    ecx,eax
109854c7:	83 f9 01                                        	cmp    ecx,0x1
109854ca:	7e 0d                                           	jle    0x109854d9
109854cc:	85 c0                                           	test   eax,eax
109854ce:	74 09                                           	je     0x109854d9
109854d0:	50                                              	push   eax
109854d1:	e8 ba 39 f9 ff                                  	call   0x10918e90
109854d6:	83 c4 04                                        	add    esp,0x4
109854d9:	83 c6 10                                        	add    esi,0x10
109854dc:	3b f7                                           	cmp    esi,edi
109854de:	72 e0                                           	jb     0x109854c0
109854e0:	85 db                                           	test   ebx,ebx
109854e2:	74 09                                           	je     0x109854ed
109854e4:	53                                              	push   ebx
109854e5:	e8 a6 39 f9 ff                                  	call   0x10918e90
109854ea:	83 c4 04                                        	add    esp,0x4
109854ed:	8b 9c 24 bc 00 00 00                            	mov    ebx,DWORD PTR [esp+0xbc]
109854f4:	8b bc 24 c0 00 00 00                            	mov    edi,DWORD PTR [esp+0xc0]
109854fb:	3b df                                           	cmp    ebx,edi
109854fd:	8b f3                                           	mov    esi,ebx
109854ff:	73 20                                           	jae    0x10985521
10985501:	8b 06                                           	mov    eax,DWORD PTR [esi]
10985503:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
10985506:	2b d0                                           	sub    edx,eax
10985508:	83 fa 01                                        	cmp    edx,0x1
1098550b:	7e 0d                                           	jle    0x1098551a
1098550d:	85 c0                                           	test   eax,eax
1098550f:	74 09                                           	je     0x1098551a
10985511:	50                                              	push   eax
10985512:	e8 79 39 f9 ff                                  	call   0x10918e90
10985517:	83 c4 04                                        	add    esp,0x4
1098551a:	83 c6 10                                        	add    esi,0x10
1098551d:	3b f7                                           	cmp    esi,edi
1098551f:	72 e0                                           	jb     0x10985501
10985521:	85 db                                           	test   ebx,ebx
10985523:	74 09                                           	je     0x1098552e
10985525:	53                                              	push   ebx
10985526:	e8 65 39 f9 ff                                  	call   0x10918e90
1098552b:	83 c4 04                                        	add    esp,0x4
1098552e:	8d 8c 24 4c 01 00 00                            	lea    ecx,[esp+0x14c]
10985535:	e8 36 d0 e1 ff                                  	call   0x107a2570
1098553a:	8b 84 24 b4 00 00 00                            	mov    eax,DWORD PTR [esp+0xb4]
10985541:	8b 8c 24 ac 00 00 00                            	mov    ecx,DWORD PTR [esp+0xac]
10985548:	2b c1                                           	sub    eax,ecx
1098554a:	83 f8 01                                        	cmp    eax,0x1
1098554d:	7e 0d                                           	jle    0x1098555c
1098554f:	85 c9                                           	test   ecx,ecx
10985551:	74 09                                           	je     0x1098555c
10985553:	51                                              	push   ecx
10985554:	e8 37 39 f9 ff                                  	call   0x10918e90
10985559:	83 c4 04                                        	add    esp,0x4
1098555c:	8d 8c 24 ac 04 00 00                            	lea    ecx,[esp+0x4ac]
10985563:	e8 08 d0 e1 ff                                  	call   0x107a2570
10985568:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098556c:	85 c0                                           	test   eax,eax
1098556e:	74 09                                           	je     0x10985579
10985570:	50                                              	push   eax
10985571:	e8 1a 39 f9 ff                                  	call   0x10918e90
10985576:	83 c4 04                                        	add    esp,0x4
10985579:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
10985580:	85 c0                                           	test   eax,eax
10985582:	74 09                                           	je     0x1098558d
10985584:	50                                              	push   eax
10985585:	e8 06 39 f9 ff                                  	call   0x10918e90
1098558a:	83 c4 04                                        	add    esp,0x4
1098558d:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
10985594:	8b 84 24 8c 00 00 00                            	mov    eax,DWORD PTR [esp+0x8c]
1098559b:	2b c8                                           	sub    ecx,eax
1098559d:	83 e1 fe                                        	and    ecx,0xfffffffe
109855a0:	83 f9 02                                        	cmp    ecx,0x2
109855a3:	7e 0d                                           	jle    0x109855b2
109855a5:	85 c0                                           	test   eax,eax
109855a7:	74 09                                           	je     0x109855b2
109855a9:	50                                              	push   eax
109855aa:	e8 e1 38 f9 ff                                  	call   0x10918e90
109855af:	83 c4 04                                        	add    esp,0x4
109855b2:	8b 94 24 84 00 00 00                            	mov    edx,DWORD PTR [esp+0x84]
109855b9:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
109855bd:	2b d0                                           	sub    edx,eax
109855bf:	83 e2 fe                                        	and    edx,0xfffffffe
109855c2:	83 fa 02                                        	cmp    edx,0x2
109855c5:	7e 0d                                           	jle    0x109855d4
109855c7:	85 c0                                           	test   eax,eax
109855c9:	74 09                                           	je     0x109855d4
109855cb:	50                                              	push   eax
109855cc:	e8 bf 38 f9 ff                                  	call   0x10918e90
109855d1:	83 c4 04                                        	add    esp,0x4
109855d4:	5f                                              	pop    edi
109855d5:	5e                                              	pop    esi
109855d6:	8b c5                                           	mov    eax,ebp
109855d8:	5d                                              	pop    ebp
109855d9:	5b                                              	pop    ebx
109855da:	81 c4 24 12 00 00                               	add    esp,0x1224
109855e0:	c3                                              	ret
109855e1:	cc                                              	int3
109855e2:	cc                                              	int3
109855e3:	cc                                              	int3
109855e4:	cc                                              	int3
109855e5:	cc                                              	int3
109855e6:	cc                                              	int3
109855e7:	cc                                              	int3
109855e8:	cc                                              	int3
109855e9:	cc                                              	int3
109855ea:	cc                                              	int3
109855eb:	cc                                              	int3
109855ec:	cc                                              	int3
109855ed:	cc                                              	int3
109855ee:	cc                                              	int3
109855ef:	cc                                              	int3
