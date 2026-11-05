# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10988e30 (PatternExportWrap_ExportPattern)
Paired Ghidra pseudocode: 10988E30_PatternExportWrap_ExportPattern.c
Window: [0x10988e30, 0x10989a40) (3088 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10988e30: 81 ec fc 06 00 00 8b 84 24 04 07 00 00 53 55 56
10988e40: 57 50 8d 8c 24 00 03 00 00 e8 42 95 f9 ff 68 00
10988e50: 01 00 00 8d 8c 24 00 01 00 00 51 8d 8c 24 04 03
10988e60: 00 00 e8 d9 91 f9 ff 33 f6 8d 94 24 fc 00 00 00
10988e70: 52 8d 8c 24 94 00 00 00 89 b4 24 94 00 00 00 89
10988e80: b4 24 98 00 00 00 89 b4 24 9c 00 00 00 c7 84 24
10988e90: a0 00 00 00 ac 6d b9 10 e8 83 17 6e ff 39 b4 24
10988ea0: 20 07 00 00 89 74 24 70 89 74 24 74 89 74 24 78
10988eb0: c7 44 24 7c 80 6d b9 10 89 74 24 14 0f 8e 07 04
10988ec0: 00 00 8b 84 24 24 07 00 00 8b 4c 24 14 8b 34 88
10988ed0: 66 83 3e 00 8b c6 74 11 eb 06 8d 9b 00 00 00 00
10988ee0: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 8d 04 46
10988ef0: 2b c6 8b e8 d1 fd 8d 45 01 83 f8 01 76 29 68 e7
10988f00: 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d 1c 00 68
10988f10: 58 6d b9 10 53 e8 96 ff f8 ff 8b f8 83 c4 18 03
10988f20: df 89 5c 24 68 eb 0d bf 44 82 ca 10 c7 44 24 68
10988f30: 46 82 ca 10 8d 5c 2d 00 53 56 57 89 7c 24 6c ff
10988f40: 15 00 b6 aa 10 8b 44 24 20 8b 94 24 34 07 00 00
10988f50: 03 df 66 c7 03 00 00 8b 34 82 83 c4 0c 66 83 3e
10988f60: 00 89 5c 24 64 8b c6 74 10 8d a4 24 00 00 00 00
10988f70: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 8d 04 46
10988f80: 2b c6 d1 f8 89 44 24 1c 83 c0 01 83 f8 01 76 29
10988f90: 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d 2c
10988fa0: 00 68 30 6d b9 10 55 e8 04 ff f8 ff 8b d8 83 c4
10988fb0: 18 03 eb 89 6c 24 28 eb 0d bb 44 82 ca 10 c7 44
10988fc0: 24 28 46 82 ca 10 8b 6c 24 1c 03 ed 55 56 53 89
10988fd0: 5c 24 2c ff 15 00 b6 aa 10 83 c4 0c 83 7c 24 14
10988fe0: 00 8d 34 2b 66 c7 06 00 00 75 0e 56 53 8d 8c 24
10988ff0: 98 00 00 00 e8 c7 68 69 ff 8b 44 24 64 2b c7 d1
10989000: f8 89 44 24 18 83 c0 01 83 f8 01 c7 44 24 3c 58
10989010: 6d b9 10 76 30 68 e7 00 00 00 68 d0 df aa 10 6a
10989020: 00 6a 00 03 c0 68 58 6d b9 10 50 89 44 24 34 e8
10989030: 7c fe f8 ff 8b 4c 24 34 8b e8 83 c4 18 03 cd 89
10989040: 4c 24 38 eb 0d bd 44 82 ca 10 c7 44 24 38 46 82
10989050: ca 10 8b 44 24 18 03 c0 50 57 55 89 6c 24 3c 89
10989060: 44 24 24 ff 15 00 b6 aa 10 8b 54 24 24 8d 04 2a
10989070: 2b f3 d1 fe 89 44 24 40 66 c7 00 00 00 8d 46 01
10989080: 83 c4 0c 83 f8 01 c7 44 24 4c 30 6d b9 10 76 2a
10989090: 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d 1c
109890a0: 00 68 30 6d b9 10 53 e8 04 fe f8 ff 8b f8 8d 04
109890b0: 1f 83 c4 18 89 44 24 48 eb 0d bf 44 82 ca 10 c7
109890c0: 44 24 48 46 82 ca 10 8b 4c 24 20 03 f6 56 51 57
109890d0: 89 7c 24 4c ff 15 00 b6 aa 10 8d 1c 37 66 c7 03
109890e0: 00 00 8b 84 24 80 00 00 00 83 c4 0c 3b 44 24 78
109890f0: 89 5c 24 44 0f 83 2c 01 00 00 8b f0 83 c0 20 85
10989100: f6 89 44 24 74 0f 84 32 01 00 00 33 c0 89 06 89
10989110: 46 04 89 46 08 8b 44 24 34 2b c5 d1 f8 89 44 24
10989120: 1c 83 c0 01 83 f8 01 c7 46 0c 58 6d b9 10 76 31
10989130: 8b 56 0c 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a
10989140: 00 03 c0 52 50 89 44 24 30 e8 62 fd f8 ff 8b 4c
10989150: 24 30 83 c4 18 03 c8 89 06 89 46 04 89 4e 08 eb
10989160: 14 c7 06 44 82 ca 10 c7 46 04 44 82 ca 10 c7 46
10989170: 08 46 82 ca 10 8b 4c 24 1c 8b 06 03 c9 51 55 50
10989180: 89 44 24 1c 89 4c 24 24 ff 15 00 b6 aa 10 8b 54
10989190: 24 24 8b 44 24 1c 03 c2 89 46 04 33 c9 66 89 08
109891a0: 2b df d1 fb 8d 43 01 83 c4 0c 83 f8 01 89 4e 10
109891b0: 89 4e 14 89 4e 18 c7 46 1c 30 6d b9 10 76 30 68
109891c0: e7 00 00 00 68 d0 df aa 10 51 51 8b 4e 1c 03 c0
109891d0: 51 50 89 44 24 28 e8 d5 fc f8 ff 8b 54 24 28 83
109891e0: c4 18 89 46 10 89 46 14 03 c2 89 46 18 eb 12 b8
109891f0: 44 82 ca 10 89 46 10 89 46 14 c7 46 18 46 82 ca
10989200: 10 8b 46 10 03 db 53 57 50 89 44 24 1c ff 15 00
10989210: b6 aa 10 8b 44 24 1c 83 c4 0c 03 c3 89 46 14 66
10989220: c7 00 00 00 eb 17 8d 4c 24 30 51 50 8d 4c 24 78
10989230: e8 1b bb e1 ff 8b 7c 24 40 8b 6c 24 30 8b 44 24
10989240: 48 2b c7 83 e0 fe 83 f8 02 7e 0d 85 ff 74 09 57
10989250: e8 3b fc f8 ff 83 c4 04 8b 44 24 38 2b c5 83 e0
10989260: fe 83 f8 02 7e 0d 85 ed 74 09 55 e8 20 fc f8 ff
10989270: 83 c4 04 8b 44 24 28 8b 4c 24 20 2b c1 83 e0 fe
10989280: 83 f8 02 7e 0d 85 c9 74 09 51 e8 01 fc f8 ff 83
10989290: c4 04 8b 44 24 68 8b 4c 24 60 2b c1 83 e0 fe 83
109892a0: f8 02 7e 0d 85 c9 74 09 51 e8 e2 fb f8 ff 83 c4
109892b0: 04 8b 44 24 14 83 c0 01 3b 84 24 20 07 00 00 89
109892c0: 44 24 14 0f 8c f9 fb ff ff b8 44 82 ca 10 89 84
109892d0: 24 a0 00 00 00 89 84 24 a4 00 00 00 33 c0 39 84
109892e0: 24 2c 07 00 00 c7 84 24 ac 00 00 00 08 6d b9 10
109892f0: c7 84 24 a8 00 00 00 46 82 ca 10 89 44 24 50 89
10989300: 44 24 54 89 44 24 58 c7 44 24 5c dc 6c b9 10 89
10989310: 44 24 14 0f 8e ee 03 00 00 8d a4 24 00 00 00 00
10989320: 8b 44 24 14 8b 94 24 30 07 00 00 8b 34 82 66 83
10989330: 3e 00 8b c6 74 09 83 c0 02 66 83 38 00 75 f7 2b
10989340: c6 d1 f8 8d 04 46 2b c6 8b e8 d1 fd 8d 45 01 83
10989350: f8 01 76 29 68 e7 00 00 00 68 d0 df aa 10 6a 00
10989360: 6a 00 8d 1c 00 68 58 6d b9 10 53 e8 40 fb f8 ff
10989370: 8b f8 83 c4 18 03 df 89 5c 24 68 eb 0d bf 44 82
10989380: ca 10 c7 44 24 68 46 82 ca 10 8d 5c 2d 00 53 56
10989390: 57 89 7c 24 6c ff 15 00 b6 aa 10 8b 8c 24 40 07
109893a0: 00 00 8b 54 24 20 03 df 66 c7 03 00 00 8b 34 91
109893b0: 83 c4 0c 66 83 3e 00 89 5c 24 64 8b c6 74 0a 90
109893c0: 83 c0 02 66 83 38 00 75 f7 2b c6 d1 f8 8d 04 46
109893d0: 2b c6 d1 f8 89 44 24 10 83 c0 01 83 f8 01 76 29
109893e0: 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d 2c
109893f0: 00 68 30 6d b9 10 55 e8 b4 fa f8 ff 8b d8 83 c4
10989400: 18 03 eb 89 6c 24 28 eb 0d bb 44 82 ca 10 c7 44
10989410: 24 28 46 82 ca 10 8b 6c 24 10 03 ed 55 56 53 89
10989420: 5c 24 2c ff 15 00 b6 aa 10 83 c4 0c 83 7c 24 14
10989430: 00 8d 34 2b 66 c7 06 00 00 75 0e 56 53 8d 8c 24
10989440: a8 00 00 00 e8 77 64 69 ff 8b 44 24 64 2b c7 8b
10989450: f8 d1 ff 8d 47 01 83 f8 01 c7 44 24 3c 58 6d b9
10989460: 10 76 29 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a
10989470: 00 8d 1c 00 68 58 6d b9 10 53 e8 31 fa f8 ff 8b
10989480: e8 83 c4 18 03 dd 89 5c 24 38 eb 0d bd 44 82 ca
10989490: 10 c7 44 24 38 46 82 ca 10 8b 44 24 60 03 ff 57
109894a0: 50 55 89 6c 24 3c ff 15 00 b6 aa 10 2b 74 24 2c
109894b0: 03 fd d1 fe 8d 46 01 83 c4 0c 83 f8 01 89 7c 24
109894c0: 34 66 c7 07 00 00 c7 44 24 4c 30 6d b9 10 76 2a
109894d0: 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 8d 1c
109894e0: 00 68 30 6d b9 10 53 e8 c4 f9 f8 ff 8b f8 8d 0c
109894f0: 1f 83 c4 18 89 4c 24 48 eb 0d bf 44 82 ca 10 c7
10989500: 44 24 48 46 82 ca 10 8b 54 24 20 03 f6 56 52 57
10989510: 89 7c 24 4c ff 15 00 b6 aa 10 8d 1c 37 66 c7 03
10989520: 00 00 8b 44 24 60 83 c4 0c 3b 44 24 58 89 5c 24
10989530: 44 0f 83 2d 01 00 00 8b f0 83 c0 20 85 f6 89 44
10989540: 24 54 0f 84 33 01 00 00 33 c0 89 06 89 46 04 89
10989550: 46 08 8b 44 24 34 2b c5 d1 f8 89 44 24 18 83 c0
10989560: 01 83 f8 01 c7 46 0c 58 6d b9 10 76 31 8b 4e 0c
10989570: 68 e7 00 00 00 68 d0 df aa 10 6a 00 6a 00 03 c0
10989580: 51 50 89 44 24 28 e8 25 f9 f8 ff 8b 54 24 28 83
10989590: c4 18 89 06 89 46 04 03 c2 89 46 08 eb 14 c7 06
109895a0: 44 82 ca 10 c7 46 04 44 82 ca 10 c7 46 08 46 82
109895b0: ca 10 8b 4c 24 18 8b 06 03 c9 51 55 50 89 44 24
109895c0: 28 89 4c 24 1c ff 15 00 b6 aa 10 8b 4c 24 28 8b
109895d0: 44 24 1c 03 c1 89 46 04 33 c9 66 89 08 2b df d1
109895e0: fb 8d 43 01 83 c4 0c 83 f8 01 89 4e 10 89 4e 14
109895f0: 89 4e 18 c7 46 1c 30 6d b9 10 76 30 8b 56 1c 68
10989600: e7 00 00 00 68 d0 df aa 10 51 51 03 c0 52 50 89
10989610: 44 24 28 e8 98 f8 f8 ff 8b 4c 24 28 83 c4 18 89
10989620: 46 10 89 46 14 03 c1 89 46 18 eb 12 b8 44 82 ca
10989630: 10 89 46 10 89 46 14 c7 46 18 46 82 ca 10 8b 46
10989640: 10 03 db 53 57 50 89 44 24 1c ff 15 00 b6 aa 10
10989650: 8b 54 24 1c 8d 04 13 89 46 14 83 c4 0c 66 c7 00
10989660: 00 00 eb 17 8d 4c 24 30 51 50 8d 4c 24 58 e8 dd
10989670: b6 e1 ff 8b 7c 24 40 8b 6c 24 30 8b 44 24 48 2b
10989680: c7 83 e0 fe 83 f8 02 7e 0d 85 ff 74 09 57 e8 fd
10989690: f7 f8 ff 83 c4 04 8b 44 24 38 2b c5 83 e0 fe 83
109896a0: f8 02 7e 0d 85 ed 74 09 55 e8 e2 f7 f8 ff 83 c4
109896b0: 04 8b 44 24 28 8b 4c 24 20 2b c1 83 e0 fe 83 f8
109896c0: 02 7e 0d 85 c9 74 09 51 e8 c3 f7 f8 ff 83 c4 04
109896d0: 8b 44 24 68 8b 4c 24 60 2b c1 83 e0 fe 83 f8 02
109896e0: 7e 0d 85 c9 74 09 51 e8 a4 f7 f8 ff 83 c4 04 8b
109896f0: 44 24 14 83 c0 01 3b 84 24 2c 07 00 00 89 44 24
10989700: 14 0f 8c 19 fc ff ff 8b 84 24 18 07 00 00 33 c9
10989710: 3b c1 89 8c 24 80 00 00 00 89 8c 24 84 00 00 00
10989720: 89 8c 24 88 00 00 00 c7 84 24 8c 00 00 00 b0 6c
10989730: b9 10 7e 72 8b b4 24 1c 07 00 00 83 c6 04 89 44
10989740: 24 14 3b 8c 24 88 00 00 00 8b 56 04 8b 7e 08 8b
10989750: 5e fc 8b 2e 89 54 24 20 89 7c 24 24 89 5c 24 28
10989760: 89 6c 24 2c 73 1d 8b c1 83 c1 10 85 c0 89 8c 24
10989770: 84 00 00 00 74 26 89 10 89 78 04 89 58 08 89 68
10989780: 0c eb 12 8d 54 24 20 52 51 8d 8c 24 88 00 00 00
10989790: e8 0b 58 b3 ff 8b 8c 24 84 00 00 00 83 c6 10 83
109897a0: 6c 24 14 01 75 9c 8d 8c 24 ec 00 00 00 e8 be 9d
109897b0: fa ff 33 f6 8d 8c 24 cc 00 00 00 89 b4 24 b0 00
109897c0: 00 00 89 b4 24 b4 00 00 00 89 b4 24 b8 00 00 00
109897d0: 89 b4 24 bc 00 00 00 c7 84 24 c0 00 00 00 03 00
109897e0: 00 00 89 b4 24 c4 00 00 00 89 b4 24 c8 00 00 00
109897f0: e8 7b 9d fa ff 8a 94 24 3c 07 00 00 8d 44 24 70
10989800: 89 84 24 c4 00 00 00 8b 84 24 40 07 00 00 8d 4c
10989810: 24 50 6a 10 89 8c 24 cc 00 00 00 50 8d 4c 24 28
10989820: 89 b4 24 e8 00 00 00 89 b4 24 ec 00 00 00 89 b4
10989830: 24 f0 00 00 00 88 94 24 e4 00 00 00 e8 ef b1 fa
10989840: ff 50 8d 8c 24 d0 00 00 00 e8 72 9d fa ff 8b 8c
10989850: 24 38 07 00 00 8d 94 24 ec 00 00 00 52 89 8c 24
10989860: e4 00 00 00 8d 84 24 b4 00 00 00 50 8d 8c 24 a8
10989870: 00 00 00 51 8b 8c 24 20 07 00 00 8d 94 24 9c 00
10989880: 00 00 52 8b 94 24 20 07 00 00 8d 84 24 90 00 00
10989890: 00 50 51 52 e8 27 5a e2 ff 83 c4 1c 84 c0 0f 84
109898a0: e5 00 00 00 8d 84 24 ec 00 00 00 50 8d 4c 24 24
109898b0: 51 e8 3a 42 bd ff 8b 10 8b 8c 24 4c 07 00 00 89
109898c0: 11 8b 50 04 89 51 04 8b 50 08 89 51 08 8b 40 0c
109898d0: 89 41 0c 8b 84 24 88 00 00 00 83 c4 08 3b c6 74
109898e0: 09 50 e8 a9 f5 f8 ff 83 c4 04 8b 4c 24 54 8b 54
109898f0: 24 50 51 52 8d 4c 24 58 e8 f3 35 77 ff 8b 44 24
10989900: 50 3b c6 74 09 50 e8 85 f5 f8 ff 83 c4 04 8b 8c
10989910: 24 a8 00 00 00 8b 84 24 a0 00 00 00 2b c8 83 e1
10989920: fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 60 f5 f8 ff
10989930: 83 c4 04 8b 54 24 74 8b 44 24 70 52 50 8d 4c 24
10989940: 78 e8 aa 35 77 ff 8b 44 24 70 3b c6 74 09 50 e8
10989950: 3c f5 f8 ff 83 c4 04 8b 8c 24 98 00 00 00 8b 84
10989960: 24 90 00 00 00 2b c8 83 e1 fe 83 f9 02 7e 0d 3b
10989970: c6 74 09 50 e8 17 f5 f8 ff 83 c4 04 5f 5e 5d 33
10989980: c0 5b 81 c4 fc 06 00 00 c3 8b 84 24 80 00 00 00
10989990: 3b c6 74 09 50 e8 f6 f4 f8 ff 83 c4 04 8b 54 24
109899a0: 54 8b 44 24 50 52 50 8d 4c 24 58 e8 40 35 77 ff
109899b0: 8b 44 24 50 3b c6 74 09 50 e8 d2 f4 f8 ff 83 c4
109899c0: 04 8b 8c 24 a8 00 00 00 8b 84 24 a0 00 00 00 2b
109899d0: c8 83 e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 ad
109899e0: f4 f8 ff 83 c4 04 8b 54 24 74 8b 44 24 70 52 50
109899f0: 8d 4c 24 78 e8 f7 34 77 ff 8b 44 24 70 3b c6 74
10989a00: 09 50 e8 89 f4 f8 ff 83 c4 04 8b 8c 24 98 00 00
10989a10: 00 8b 84 24 90 00 00 00 2b c8 83 e1 fe 83 f9 02
10989a20: 7e 0d 3b c6 74 09 50 e8 64 f4 f8 ff 83 c4 04 5f
10989a30: 5e 5d 83 c8 ff 5b 81 c4 fc 06 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10988e30 <.text+0x987e30>:
10988e30:	81 ec fc 06 00 00                               	sub    esp,0x6fc
10988e36:	8b 84 24 04 07 00 00                            	mov    eax,DWORD PTR [esp+0x704]
10988e3d:	53                                              	push   ebx
10988e3e:	55                                              	push   ebp
10988e3f:	56                                              	push   esi
10988e40:	57                                              	push   edi
10988e41:	50                                              	push   eax
10988e42:	8d 8c 24 00 03 00 00                            	lea    ecx,[esp+0x300]
10988e49:	e8 42 95 f9 ff                                  	call   0x10922390
10988e4e:	68 00 01 00 00                                  	push   0x100
10988e53:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
10988e5a:	51                                              	push   ecx
10988e5b:	8d 8c 24 04 03 00 00                            	lea    ecx,[esp+0x304]
10988e62:	e8 d9 91 f9 ff                                  	call   0x10922040
10988e67:	33 f6                                           	xor    esi,esi
10988e69:	8d 94 24 fc 00 00 00                            	lea    edx,[esp+0xfc]
10988e70:	52                                              	push   edx
10988e71:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10988e78:	89 b4 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],esi
10988e7f:	89 b4 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],esi
10988e86:	89 b4 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],esi
10988e8d:	c7 84 24 a0 00 00 00 ac 6d b9 10                	mov    DWORD PTR [esp+0xa0],0x10b96dac
10988e98:	e8 83 17 6e ff                                  	call   0x1006a620
10988e9d:	39 b4 24 20 07 00 00                            	cmp    DWORD PTR [esp+0x720],esi
10988ea4:	89 74 24 70                                     	mov    DWORD PTR [esp+0x70],esi
10988ea8:	89 74 24 74                                     	mov    DWORD PTR [esp+0x74],esi
10988eac:	89 74 24 78                                     	mov    DWORD PTR [esp+0x78],esi
10988eb0:	c7 44 24 7c 80 6d b9 10                         	mov    DWORD PTR [esp+0x7c],0x10b96d80
10988eb8:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10988ebc:	0f 8e 07 04 00 00                               	jle    0x109892c9
10988ec2:	8b 84 24 24 07 00 00                            	mov    eax,DWORD PTR [esp+0x724]
10988ec9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10988ecd:	8b 34 88                                        	mov    esi,DWORD PTR [eax+ecx*4]
10988ed0:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
10988ed4:	8b c6                                           	mov    eax,esi
10988ed6:	74 11                                           	je     0x10988ee9
10988ed8:	eb 06                                           	jmp    0x10988ee0
10988eda:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10988ee0:	83 c0 02                                        	add    eax,0x2
10988ee3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10988ee7:	75 f7                                           	jne    0x10988ee0
10988ee9:	2b c6                                           	sub    eax,esi
10988eeb:	d1 f8                                           	sar    eax,1
10988eed:	8d 04 46                                        	lea    eax,[esi+eax*2]
10988ef0:	2b c6                                           	sub    eax,esi
10988ef2:	8b e8                                           	mov    ebp,eax
10988ef4:	d1 fd                                           	sar    ebp,1
10988ef6:	8d 45 01                                        	lea    eax,[ebp+0x1]
10988ef9:	83 f8 01                                        	cmp    eax,0x1
10988efc:	76 29                                           	jbe    0x10988f27
10988efe:	68 e7 00 00 00                                  	push   0xe7
10988f03:	68 d0 df aa 10                                  	push   0x10aadfd0
10988f08:	6a 00                                           	push   0x0
10988f0a:	6a 00                                           	push   0x0
10988f0c:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
10988f0f:	68 58 6d b9 10                                  	push   0x10b96d58
10988f14:	53                                              	push   ebx
10988f15:	e8 96 ff f8 ff                                  	call   0x10918eb0
10988f1a:	8b f8                                           	mov    edi,eax
10988f1c:	83 c4 18                                        	add    esp,0x18
10988f1f:	03 df                                           	add    ebx,edi
10988f21:	89 5c 24 68                                     	mov    DWORD PTR [esp+0x68],ebx
10988f25:	eb 0d                                           	jmp    0x10988f34
10988f27:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10988f2c:	c7 44 24 68 46 82 ca 10                         	mov    DWORD PTR [esp+0x68],0x10ca8246
10988f34:	8d 5c 2d 00                                     	lea    ebx,[ebp+ebp*1+0x0]
10988f38:	53                                              	push   ebx
10988f39:	56                                              	push   esi
10988f3a:	57                                              	push   edi
10988f3b:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
10988f3f:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10988f45:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10988f49:	8b 94 24 34 07 00 00                            	mov    edx,DWORD PTR [esp+0x734]
10988f50:	03 df                                           	add    ebx,edi
10988f52:	66 c7 03 00 00                                  	mov    WORD PTR [ebx],0x0
10988f57:	8b 34 82                                        	mov    esi,DWORD PTR [edx+eax*4]
10988f5a:	83 c4 0c                                        	add    esp,0xc
10988f5d:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
10988f61:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
10988f65:	8b c6                                           	mov    eax,esi
10988f67:	74 10                                           	je     0x10988f79
10988f69:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10988f70:	83 c0 02                                        	add    eax,0x2
10988f73:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
10988f77:	75 f7                                           	jne    0x10988f70
10988f79:	2b c6                                           	sub    eax,esi
10988f7b:	d1 f8                                           	sar    eax,1
10988f7d:	8d 04 46                                        	lea    eax,[esi+eax*2]
10988f80:	2b c6                                           	sub    eax,esi
10988f82:	d1 f8                                           	sar    eax,1
10988f84:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10988f88:	83 c0 01                                        	add    eax,0x1
10988f8b:	83 f8 01                                        	cmp    eax,0x1
10988f8e:	76 29                                           	jbe    0x10988fb9
10988f90:	68 e7 00 00 00                                  	push   0xe7
10988f95:	68 d0 df aa 10                                  	push   0x10aadfd0
10988f9a:	6a 00                                           	push   0x0
10988f9c:	6a 00                                           	push   0x0
10988f9e:	8d 2c 00                                        	lea    ebp,[eax+eax*1]
10988fa1:	68 30 6d b9 10                                  	push   0x10b96d30
10988fa6:	55                                              	push   ebp
10988fa7:	e8 04 ff f8 ff                                  	call   0x10918eb0
10988fac:	8b d8                                           	mov    ebx,eax
10988fae:	83 c4 18                                        	add    esp,0x18
10988fb1:	03 eb                                           	add    ebp,ebx
10988fb3:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
10988fb7:	eb 0d                                           	jmp    0x10988fc6
10988fb9:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
10988fbe:	c7 44 24 28 46 82 ca 10                         	mov    DWORD PTR [esp+0x28],0x10ca8246
10988fc6:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
10988fca:	03 ed                                           	add    ebp,ebp
10988fcc:	55                                              	push   ebp
10988fcd:	56                                              	push   esi
10988fce:	53                                              	push   ebx
10988fcf:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10988fd3:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10988fd9:	83 c4 0c                                        	add    esp,0xc
10988fdc:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
10988fe1:	8d 34 2b                                        	lea    esi,[ebx+ebp*1]
10988fe4:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
10988fe9:	75 0e                                           	jne    0x10988ff9
10988feb:	56                                              	push   esi
10988fec:	53                                              	push   ebx
10988fed:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
10988ff4:	e8 c7 68 69 ff                                  	call   0x1001f8c0
10988ff9:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10988ffd:	2b c7                                           	sub    eax,edi
10988fff:	d1 f8                                           	sar    eax,1
10989001:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10989005:	83 c0 01                                        	add    eax,0x1
10989008:	83 f8 01                                        	cmp    eax,0x1
1098900b:	c7 44 24 3c 58 6d b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96d58
10989013:	76 30                                           	jbe    0x10989045
10989015:	68 e7 00 00 00                                  	push   0xe7
1098901a:	68 d0 df aa 10                                  	push   0x10aadfd0
1098901f:	6a 00                                           	push   0x0
10989021:	6a 00                                           	push   0x0
10989023:	03 c0                                           	add    eax,eax
10989025:	68 58 6d b9 10                                  	push   0x10b96d58
1098902a:	50                                              	push   eax
1098902b:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
1098902f:	e8 7c fe f8 ff                                  	call   0x10918eb0
10989034:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10989038:	8b e8                                           	mov    ebp,eax
1098903a:	83 c4 18                                        	add    esp,0x18
1098903d:	03 cd                                           	add    ecx,ebp
1098903f:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
10989043:	eb 0d                                           	jmp    0x10989052
10989045:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
1098904a:	c7 44 24 38 46 82 ca 10                         	mov    DWORD PTR [esp+0x38],0x10ca8246
10989052:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10989056:	03 c0                                           	add    eax,eax
10989058:	50                                              	push   eax
10989059:	57                                              	push   edi
1098905a:	55                                              	push   ebp
1098905b:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
1098905f:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10989063:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10989069:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1098906d:	8d 04 2a                                        	lea    eax,[edx+ebp*1]
10989070:	2b f3                                           	sub    esi,ebx
10989072:	d1 fe                                           	sar    esi,1
10989074:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10989078:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
1098907d:	8d 46 01                                        	lea    eax,[esi+0x1]
10989080:	83 c4 0c                                        	add    esp,0xc
10989083:	83 f8 01                                        	cmp    eax,0x1
10989086:	c7 44 24 4c 30 6d b9 10                         	mov    DWORD PTR [esp+0x4c],0x10b96d30
1098908e:	76 2a                                           	jbe    0x109890ba
10989090:	68 e7 00 00 00                                  	push   0xe7
10989095:	68 d0 df aa 10                                  	push   0x10aadfd0
1098909a:	6a 00                                           	push   0x0
1098909c:	6a 00                                           	push   0x0
1098909e:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
109890a1:	68 30 6d b9 10                                  	push   0x10b96d30
109890a6:	53                                              	push   ebx
109890a7:	e8 04 fe f8 ff                                  	call   0x10918eb0
109890ac:	8b f8                                           	mov    edi,eax
109890ae:	8d 04 1f                                        	lea    eax,[edi+ebx*1]
109890b1:	83 c4 18                                        	add    esp,0x18
109890b4:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
109890b8:	eb 0d                                           	jmp    0x109890c7
109890ba:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
109890bf:	c7 44 24 48 46 82 ca 10                         	mov    DWORD PTR [esp+0x48],0x10ca8246
109890c7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
109890cb:	03 f6                                           	add    esi,esi
109890cd:	56                                              	push   esi
109890ce:	51                                              	push   ecx
109890cf:	57                                              	push   edi
109890d0:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
109890d4:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109890da:	8d 1c 37                                        	lea    ebx,[edi+esi*1]
109890dd:	66 c7 03 00 00                                  	mov    WORD PTR [ebx],0x0
109890e2:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
109890e9:	83 c4 0c                                        	add    esp,0xc
109890ec:	3b 44 24 78                                     	cmp    eax,DWORD PTR [esp+0x78]
109890f0:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
109890f4:	0f 83 2c 01 00 00                               	jae    0x10989226
109890fa:	8b f0                                           	mov    esi,eax
109890fc:	83 c0 20                                        	add    eax,0x20
109890ff:	85 f6                                           	test   esi,esi
10989101:	89 44 24 74                                     	mov    DWORD PTR [esp+0x74],eax
10989105:	0f 84 32 01 00 00                               	je     0x1098923d
1098910b:	33 c0                                           	xor    eax,eax
1098910d:	89 06                                           	mov    DWORD PTR [esi],eax
1098910f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10989112:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10989115:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10989119:	2b c5                                           	sub    eax,ebp
1098911b:	d1 f8                                           	sar    eax,1
1098911d:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10989121:	83 c0 01                                        	add    eax,0x1
10989124:	83 f8 01                                        	cmp    eax,0x1
10989127:	c7 46 0c 58 6d b9 10                            	mov    DWORD PTR [esi+0xc],0x10b96d58
1098912e:	76 31                                           	jbe    0x10989161
10989130:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
10989133:	68 e7 00 00 00                                  	push   0xe7
10989138:	68 d0 df aa 10                                  	push   0x10aadfd0
1098913d:	6a 00                                           	push   0x0
1098913f:	6a 00                                           	push   0x0
10989141:	03 c0                                           	add    eax,eax
10989143:	52                                              	push   edx
10989144:	50                                              	push   eax
10989145:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
10989149:	e8 62 fd f8 ff                                  	call   0x10918eb0
1098914e:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10989152:	83 c4 18                                        	add    esp,0x18
10989155:	03 c8                                           	add    ecx,eax
10989157:	89 06                                           	mov    DWORD PTR [esi],eax
10989159:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1098915c:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
1098915f:	eb 14                                           	jmp    0x10989175
10989161:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
10989167:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
1098916e:	c7 46 08 46 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8246
10989175:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10989179:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098917b:	03 c9                                           	add    ecx,ecx
1098917d:	51                                              	push   ecx
1098917e:	55                                              	push   ebp
1098917f:	50                                              	push   eax
10989180:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
10989184:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10989188:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098918e:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10989192:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10989196:	03 c2                                           	add    eax,edx
10989198:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1098919b:	33 c9                                           	xor    ecx,ecx
1098919d:	66 89 08                                        	mov    WORD PTR [eax],cx
109891a0:	2b df                                           	sub    ebx,edi
109891a2:	d1 fb                                           	sar    ebx,1
109891a4:	8d 43 01                                        	lea    eax,[ebx+0x1]
109891a7:	83 c4 0c                                        	add    esp,0xc
109891aa:	83 f8 01                                        	cmp    eax,0x1
109891ad:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
109891b0:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
109891b3:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
109891b6:	c7 46 1c 30 6d b9 10                            	mov    DWORD PTR [esi+0x1c],0x10b96d30
109891bd:	76 30                                           	jbe    0x109891ef
109891bf:	68 e7 00 00 00                                  	push   0xe7
109891c4:	68 d0 df aa 10                                  	push   0x10aadfd0
109891c9:	51                                              	push   ecx
109891ca:	51                                              	push   ecx
109891cb:	8b 4e 1c                                        	mov    ecx,DWORD PTR [esi+0x1c]
109891ce:	03 c0                                           	add    eax,eax
109891d0:	51                                              	push   ecx
109891d1:	50                                              	push   eax
109891d2:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
109891d6:	e8 d5 fc f8 ff                                  	call   0x10918eb0
109891db:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
109891df:	83 c4 18                                        	add    esp,0x18
109891e2:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
109891e5:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
109891e8:	03 c2                                           	add    eax,edx
109891ea:	89 46 18                                        	mov    DWORD PTR [esi+0x18],eax
109891ed:	eb 12                                           	jmp    0x10989201
109891ef:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109891f4:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
109891f7:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
109891fa:	c7 46 18 46 82 ca 10                            	mov    DWORD PTR [esi+0x18],0x10ca8246
10989201:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
10989204:	03 db                                           	add    ebx,ebx
10989206:	53                                              	push   ebx
10989207:	57                                              	push   edi
10989208:	50                                              	push   eax
10989209:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1098920d:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10989213:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10989217:	83 c4 0c                                        	add    esp,0xc
1098921a:	03 c3                                           	add    eax,ebx
1098921c:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
1098921f:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
10989224:	eb 17                                           	jmp    0x1098923d
10989226:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1098922a:	51                                              	push   ecx
1098922b:	50                                              	push   eax
1098922c:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
10989230:	e8 1b bb e1 ff                                  	call   0x107a4d50
10989235:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
10989239:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
1098923d:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10989241:	2b c7                                           	sub    eax,edi
10989243:	83 e0 fe                                        	and    eax,0xfffffffe
10989246:	83 f8 02                                        	cmp    eax,0x2
10989249:	7e 0d                                           	jle    0x10989258
1098924b:	85 ff                                           	test   edi,edi
1098924d:	74 09                                           	je     0x10989258
1098924f:	57                                              	push   edi
10989250:	e8 3b fc f8 ff                                  	call   0x10918e90
10989255:	83 c4 04                                        	add    esp,0x4
10989258:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1098925c:	2b c5                                           	sub    eax,ebp
1098925e:	83 e0 fe                                        	and    eax,0xfffffffe
10989261:	83 f8 02                                        	cmp    eax,0x2
10989264:	7e 0d                                           	jle    0x10989273
10989266:	85 ed                                           	test   ebp,ebp
10989268:	74 09                                           	je     0x10989273
1098926a:	55                                              	push   ebp
1098926b:	e8 20 fc f8 ff                                  	call   0x10918e90
10989270:	83 c4 04                                        	add    esp,0x4
10989273:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10989277:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1098927b:	2b c1                                           	sub    eax,ecx
1098927d:	83 e0 fe                                        	and    eax,0xfffffffe
10989280:	83 f8 02                                        	cmp    eax,0x2
10989283:	7e 0d                                           	jle    0x10989292
10989285:	85 c9                                           	test   ecx,ecx
10989287:	74 09                                           	je     0x10989292
10989289:	51                                              	push   ecx
1098928a:	e8 01 fc f8 ff                                  	call   0x10918e90
1098928f:	83 c4 04                                        	add    esp,0x4
10989292:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
10989296:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
1098929a:	2b c1                                           	sub    eax,ecx
1098929c:	83 e0 fe                                        	and    eax,0xfffffffe
1098929f:	83 f8 02                                        	cmp    eax,0x2
109892a2:	7e 0d                                           	jle    0x109892b1
109892a4:	85 c9                                           	test   ecx,ecx
109892a6:	74 09                                           	je     0x109892b1
109892a8:	51                                              	push   ecx
109892a9:	e8 e2 fb f8 ff                                  	call   0x10918e90
109892ae:	83 c4 04                                        	add    esp,0x4
109892b1:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109892b5:	83 c0 01                                        	add    eax,0x1
109892b8:	3b 84 24 20 07 00 00                            	cmp    eax,DWORD PTR [esp+0x720]
109892bf:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
109892c3:	0f 8c f9 fb ff ff                               	jl     0x10988ec2
109892c9:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
109892ce:	89 84 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],eax
109892d5:	89 84 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],eax
109892dc:	33 c0                                           	xor    eax,eax
109892de:	39 84 24 2c 07 00 00                            	cmp    DWORD PTR [esp+0x72c],eax
109892e5:	c7 84 24 ac 00 00 00 08 6d b9 10                	mov    DWORD PTR [esp+0xac],0x10b96d08
109892f0:	c7 84 24 a8 00 00 00 46 82 ca 10                	mov    DWORD PTR [esp+0xa8],0x10ca8246
109892fb:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
109892ff:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
10989303:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
10989307:	c7 44 24 5c dc 6c b9 10                         	mov    DWORD PTR [esp+0x5c],0x10b96cdc
1098930f:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10989313:	0f 8e ee 03 00 00                               	jle    0x10989707
10989319:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10989320:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10989324:	8b 94 24 30 07 00 00                            	mov    edx,DWORD PTR [esp+0x730]
1098932b:	8b 34 82                                        	mov    esi,DWORD PTR [edx+eax*4]
1098932e:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
10989332:	8b c6                                           	mov    eax,esi
10989334:	74 09                                           	je     0x1098933f
10989336:	83 c0 02                                        	add    eax,0x2
10989339:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1098933d:	75 f7                                           	jne    0x10989336
1098933f:	2b c6                                           	sub    eax,esi
10989341:	d1 f8                                           	sar    eax,1
10989343:	8d 04 46                                        	lea    eax,[esi+eax*2]
10989346:	2b c6                                           	sub    eax,esi
10989348:	8b e8                                           	mov    ebp,eax
1098934a:	d1 fd                                           	sar    ebp,1
1098934c:	8d 45 01                                        	lea    eax,[ebp+0x1]
1098934f:	83 f8 01                                        	cmp    eax,0x1
10989352:	76 29                                           	jbe    0x1098937d
10989354:	68 e7 00 00 00                                  	push   0xe7
10989359:	68 d0 df aa 10                                  	push   0x10aadfd0
1098935e:	6a 00                                           	push   0x0
10989360:	6a 00                                           	push   0x0
10989362:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
10989365:	68 58 6d b9 10                                  	push   0x10b96d58
1098936a:	53                                              	push   ebx
1098936b:	e8 40 fb f8 ff                                  	call   0x10918eb0
10989370:	8b f8                                           	mov    edi,eax
10989372:	83 c4 18                                        	add    esp,0x18
10989375:	03 df                                           	add    ebx,edi
10989377:	89 5c 24 68                                     	mov    DWORD PTR [esp+0x68],ebx
1098937b:	eb 0d                                           	jmp    0x1098938a
1098937d:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
10989382:	c7 44 24 68 46 82 ca 10                         	mov    DWORD PTR [esp+0x68],0x10ca8246
1098938a:	8d 5c 2d 00                                     	lea    ebx,[ebp+ebp*1+0x0]
1098938e:	53                                              	push   ebx
1098938f:	56                                              	push   esi
10989390:	57                                              	push   edi
10989391:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
10989395:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098939b:	8b 8c 24 40 07 00 00                            	mov    ecx,DWORD PTR [esp+0x740]
109893a2:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
109893a6:	03 df                                           	add    ebx,edi
109893a8:	66 c7 03 00 00                                  	mov    WORD PTR [ebx],0x0
109893ad:	8b 34 91                                        	mov    esi,DWORD PTR [ecx+edx*4]
109893b0:	83 c4 0c                                        	add    esp,0xc
109893b3:	66 83 3e 00                                     	cmp    WORD PTR [esi],0x0
109893b7:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
109893bb:	8b c6                                           	mov    eax,esi
109893bd:	74 0a                                           	je     0x109893c9
109893bf:	90                                              	nop
109893c0:	83 c0 02                                        	add    eax,0x2
109893c3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
109893c7:	75 f7                                           	jne    0x109893c0
109893c9:	2b c6                                           	sub    eax,esi
109893cb:	d1 f8                                           	sar    eax,1
109893cd:	8d 04 46                                        	lea    eax,[esi+eax*2]
109893d0:	2b c6                                           	sub    eax,esi
109893d2:	d1 f8                                           	sar    eax,1
109893d4:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109893d8:	83 c0 01                                        	add    eax,0x1
109893db:	83 f8 01                                        	cmp    eax,0x1
109893de:	76 29                                           	jbe    0x10989409
109893e0:	68 e7 00 00 00                                  	push   0xe7
109893e5:	68 d0 df aa 10                                  	push   0x10aadfd0
109893ea:	6a 00                                           	push   0x0
109893ec:	6a 00                                           	push   0x0
109893ee:	8d 2c 00                                        	lea    ebp,[eax+eax*1]
109893f1:	68 30 6d b9 10                                  	push   0x10b96d30
109893f6:	55                                              	push   ebp
109893f7:	e8 b4 fa f8 ff                                  	call   0x10918eb0
109893fc:	8b d8                                           	mov    ebx,eax
109893fe:	83 c4 18                                        	add    esp,0x18
10989401:	03 eb                                           	add    ebp,ebx
10989403:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
10989407:	eb 0d                                           	jmp    0x10989416
10989409:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
1098940e:	c7 44 24 28 46 82 ca 10                         	mov    DWORD PTR [esp+0x28],0x10ca8246
10989416:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
1098941a:	03 ed                                           	add    ebp,ebp
1098941c:	55                                              	push   ebp
1098941d:	56                                              	push   esi
1098941e:	53                                              	push   ebx
1098941f:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10989423:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10989429:	83 c4 0c                                        	add    esp,0xc
1098942c:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
10989431:	8d 34 2b                                        	lea    esi,[ebx+ebp*1]
10989434:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
10989439:	75 0e                                           	jne    0x10989449
1098943b:	56                                              	push   esi
1098943c:	53                                              	push   ebx
1098943d:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10989444:	e8 77 64 69 ff                                  	call   0x1001f8c0
10989449:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
1098944d:	2b c7                                           	sub    eax,edi
1098944f:	8b f8                                           	mov    edi,eax
10989451:	d1 ff                                           	sar    edi,1
10989453:	8d 47 01                                        	lea    eax,[edi+0x1]
10989456:	83 f8 01                                        	cmp    eax,0x1
10989459:	c7 44 24 3c 58 6d b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96d58
10989461:	76 29                                           	jbe    0x1098948c
10989463:	68 e7 00 00 00                                  	push   0xe7
10989468:	68 d0 df aa 10                                  	push   0x10aadfd0
1098946d:	6a 00                                           	push   0x0
1098946f:	6a 00                                           	push   0x0
10989471:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
10989474:	68 58 6d b9 10                                  	push   0x10b96d58
10989479:	53                                              	push   ebx
1098947a:	e8 31 fa f8 ff                                  	call   0x10918eb0
1098947f:	8b e8                                           	mov    ebp,eax
10989481:	83 c4 18                                        	add    esp,0x18
10989484:	03 dd                                           	add    ebx,ebp
10989486:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
1098948a:	eb 0d                                           	jmp    0x10989499
1098948c:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
10989491:	c7 44 24 38 46 82 ca 10                         	mov    DWORD PTR [esp+0x38],0x10ca8246
10989499:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1098949d:	03 ff                                           	add    edi,edi
1098949f:	57                                              	push   edi
109894a0:	50                                              	push   eax
109894a1:	55                                              	push   ebp
109894a2:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
109894a6:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109894ac:	2b 74 24 2c                                     	sub    esi,DWORD PTR [esp+0x2c]
109894b0:	03 fd                                           	add    edi,ebp
109894b2:	d1 fe                                           	sar    esi,1
109894b4:	8d 46 01                                        	lea    eax,[esi+0x1]
109894b7:	83 c4 0c                                        	add    esp,0xc
109894ba:	83 f8 01                                        	cmp    eax,0x1
109894bd:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
109894c1:	66 c7 07 00 00                                  	mov    WORD PTR [edi],0x0
109894c6:	c7 44 24 4c 30 6d b9 10                         	mov    DWORD PTR [esp+0x4c],0x10b96d30
109894ce:	76 2a                                           	jbe    0x109894fa
109894d0:	68 e7 00 00 00                                  	push   0xe7
109894d5:	68 d0 df aa 10                                  	push   0x10aadfd0
109894da:	6a 00                                           	push   0x0
109894dc:	6a 00                                           	push   0x0
109894de:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
109894e1:	68 30 6d b9 10                                  	push   0x10b96d30
109894e6:	53                                              	push   ebx
109894e7:	e8 c4 f9 f8 ff                                  	call   0x10918eb0
109894ec:	8b f8                                           	mov    edi,eax
109894ee:	8d 0c 1f                                        	lea    ecx,[edi+ebx*1]
109894f1:	83 c4 18                                        	add    esp,0x18
109894f4:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
109894f8:	eb 0d                                           	jmp    0x10989507
109894fa:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
109894ff:	c7 44 24 48 46 82 ca 10                         	mov    DWORD PTR [esp+0x48],0x10ca8246
10989507:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098950b:	03 f6                                           	add    esi,esi
1098950d:	56                                              	push   esi
1098950e:	52                                              	push   edx
1098950f:	57                                              	push   edi
10989510:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
10989514:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098951a:	8d 1c 37                                        	lea    ebx,[edi+esi*1]
1098951d:	66 c7 03 00 00                                  	mov    WORD PTR [ebx],0x0
10989522:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
10989526:	83 c4 0c                                        	add    esp,0xc
10989529:	3b 44 24 58                                     	cmp    eax,DWORD PTR [esp+0x58]
1098952d:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
10989531:	0f 83 2d 01 00 00                               	jae    0x10989664
10989537:	8b f0                                           	mov    esi,eax
10989539:	83 c0 20                                        	add    eax,0x20
1098953c:	85 f6                                           	test   esi,esi
1098953e:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
10989542:	0f 84 33 01 00 00                               	je     0x1098967b
10989548:	33 c0                                           	xor    eax,eax
1098954a:	89 06                                           	mov    DWORD PTR [esi],eax
1098954c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1098954f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10989552:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
10989556:	2b c5                                           	sub    eax,ebp
10989558:	d1 f8                                           	sar    eax,1
1098955a:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098955e:	83 c0 01                                        	add    eax,0x1
10989561:	83 f8 01                                        	cmp    eax,0x1
10989564:	c7 46 0c 58 6d b9 10                            	mov    DWORD PTR [esi+0xc],0x10b96d58
1098956b:	76 31                                           	jbe    0x1098959e
1098956d:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10989570:	68 e7 00 00 00                                  	push   0xe7
10989575:	68 d0 df aa 10                                  	push   0x10aadfd0
1098957a:	6a 00                                           	push   0x0
1098957c:	6a 00                                           	push   0x0
1098957e:	03 c0                                           	add    eax,eax
10989580:	51                                              	push   ecx
10989581:	50                                              	push   eax
10989582:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10989586:	e8 25 f9 f8 ff                                  	call   0x10918eb0
1098958b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1098958f:	83 c4 18                                        	add    esp,0x18
10989592:	89 06                                           	mov    DWORD PTR [esi],eax
10989594:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10989597:	03 c2                                           	add    eax,edx
10989599:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
1098959c:	eb 14                                           	jmp    0x109895b2
1098959e:	c7 06 44 82 ca 10                               	mov    DWORD PTR [esi],0x10ca8244
109895a4:	c7 46 04 44 82 ca 10                            	mov    DWORD PTR [esi+0x4],0x10ca8244
109895ab:	c7 46 08 46 82 ca 10                            	mov    DWORD PTR [esi+0x8],0x10ca8246
109895b2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109895b6:	8b 06                                           	mov    eax,DWORD PTR [esi]
109895b8:	03 c9                                           	add    ecx,ecx
109895ba:	51                                              	push   ecx
109895bb:	55                                              	push   ebp
109895bc:	50                                              	push   eax
109895bd:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
109895c1:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
109895c5:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
109895cb:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109895cf:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109895d3:	03 c1                                           	add    eax,ecx
109895d5:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
109895d8:	33 c9                                           	xor    ecx,ecx
109895da:	66 89 08                                        	mov    WORD PTR [eax],cx
109895dd:	2b df                                           	sub    ebx,edi
109895df:	d1 fb                                           	sar    ebx,1
109895e1:	8d 43 01                                        	lea    eax,[ebx+0x1]
109895e4:	83 c4 0c                                        	add    esp,0xc
109895e7:	83 f8 01                                        	cmp    eax,0x1
109895ea:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
109895ed:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
109895f0:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
109895f3:	c7 46 1c 30 6d b9 10                            	mov    DWORD PTR [esi+0x1c],0x10b96d30
109895fa:	76 30                                           	jbe    0x1098962c
109895fc:	8b 56 1c                                        	mov    edx,DWORD PTR [esi+0x1c]
109895ff:	68 e7 00 00 00                                  	push   0xe7
10989604:	68 d0 df aa 10                                  	push   0x10aadfd0
10989609:	51                                              	push   ecx
1098960a:	51                                              	push   ecx
1098960b:	03 c0                                           	add    eax,eax
1098960d:	52                                              	push   edx
1098960e:	50                                              	push   eax
1098960f:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10989613:	e8 98 f8 f8 ff                                  	call   0x10918eb0
10989618:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1098961c:	83 c4 18                                        	add    esp,0x18
1098961f:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
10989622:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
10989625:	03 c1                                           	add    eax,ecx
10989627:	89 46 18                                        	mov    DWORD PTR [esi+0x18],eax
1098962a:	eb 12                                           	jmp    0x1098963e
1098962c:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10989631:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
10989634:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
10989637:	c7 46 18 46 82 ca 10                            	mov    DWORD PTR [esi+0x18],0x10ca8246
1098963e:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
10989641:	03 db                                           	add    ebx,ebx
10989643:	53                                              	push   ebx
10989644:	57                                              	push   edi
10989645:	50                                              	push   eax
10989646:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1098964a:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10989650:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10989654:	8d 04 13                                        	lea    eax,[ebx+edx*1]
10989657:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
1098965a:	83 c4 0c                                        	add    esp,0xc
1098965d:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
10989662:	eb 17                                           	jmp    0x1098967b
10989664:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10989668:	51                                              	push   ecx
10989669:	50                                              	push   eax
1098966a:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
1098966e:	e8 dd b6 e1 ff                                  	call   0x107a4d50
10989673:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
10989677:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
1098967b:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1098967f:	2b c7                                           	sub    eax,edi
10989681:	83 e0 fe                                        	and    eax,0xfffffffe
10989684:	83 f8 02                                        	cmp    eax,0x2
10989687:	7e 0d                                           	jle    0x10989696
10989689:	85 ff                                           	test   edi,edi
1098968b:	74 09                                           	je     0x10989696
1098968d:	57                                              	push   edi
1098968e:	e8 fd f7 f8 ff                                  	call   0x10918e90
10989693:	83 c4 04                                        	add    esp,0x4
10989696:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1098969a:	2b c5                                           	sub    eax,ebp
1098969c:	83 e0 fe                                        	and    eax,0xfffffffe
1098969f:	83 f8 02                                        	cmp    eax,0x2
109896a2:	7e 0d                                           	jle    0x109896b1
109896a4:	85 ed                                           	test   ebp,ebp
109896a6:	74 09                                           	je     0x109896b1
109896a8:	55                                              	push   ebp
109896a9:	e8 e2 f7 f8 ff                                  	call   0x10918e90
109896ae:	83 c4 04                                        	add    esp,0x4
109896b1:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
109896b5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
109896b9:	2b c1                                           	sub    eax,ecx
109896bb:	83 e0 fe                                        	and    eax,0xfffffffe
109896be:	83 f8 02                                        	cmp    eax,0x2
109896c1:	7e 0d                                           	jle    0x109896d0
109896c3:	85 c9                                           	test   ecx,ecx
109896c5:	74 09                                           	je     0x109896d0
109896c7:	51                                              	push   ecx
109896c8:	e8 c3 f7 f8 ff                                  	call   0x10918e90
109896cd:	83 c4 04                                        	add    esp,0x4
109896d0:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
109896d4:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
109896d8:	2b c1                                           	sub    eax,ecx
109896da:	83 e0 fe                                        	and    eax,0xfffffffe
109896dd:	83 f8 02                                        	cmp    eax,0x2
109896e0:	7e 0d                                           	jle    0x109896ef
109896e2:	85 c9                                           	test   ecx,ecx
109896e4:	74 09                                           	je     0x109896ef
109896e6:	51                                              	push   ecx
109896e7:	e8 a4 f7 f8 ff                                  	call   0x10918e90
109896ec:	83 c4 04                                        	add    esp,0x4
109896ef:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109896f3:	83 c0 01                                        	add    eax,0x1
109896f6:	3b 84 24 2c 07 00 00                            	cmp    eax,DWORD PTR [esp+0x72c]
109896fd:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10989701:	0f 8c 19 fc ff ff                               	jl     0x10989320
10989707:	8b 84 24 18 07 00 00                            	mov    eax,DWORD PTR [esp+0x718]
1098970e:	33 c9                                           	xor    ecx,ecx
10989710:	3b c1                                           	cmp    eax,ecx
10989712:	89 8c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ecx
10989719:	89 8c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ecx
10989720:	89 8c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ecx
10989727:	c7 84 24 8c 00 00 00 b0 6c b9 10                	mov    DWORD PTR [esp+0x8c],0x10b96cb0
10989732:	7e 72                                           	jle    0x109897a6
10989734:	8b b4 24 1c 07 00 00                            	mov    esi,DWORD PTR [esp+0x71c]
1098973b:	83 c6 04                                        	add    esi,0x4
1098973e:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10989742:	3b 8c 24 88 00 00 00                            	cmp    ecx,DWORD PTR [esp+0x88]
10989749:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098974c:	8b 7e 08                                        	mov    edi,DWORD PTR [esi+0x8]
1098974f:	8b 5e fc                                        	mov    ebx,DWORD PTR [esi-0x4]
10989752:	8b 2e                                           	mov    ebp,DWORD PTR [esi]
10989754:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10989758:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1098975c:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
10989760:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
10989764:	73 1d                                           	jae    0x10989783
10989766:	8b c1                                           	mov    eax,ecx
10989768:	83 c1 10                                        	add    ecx,0x10
1098976b:	85 c0                                           	test   eax,eax
1098976d:	89 8c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ecx
10989774:	74 26                                           	je     0x1098979c
10989776:	89 10                                           	mov    DWORD PTR [eax],edx
10989778:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
1098977b:	89 58 08                                        	mov    DWORD PTR [eax+0x8],ebx
1098977e:	89 68 0c                                        	mov    DWORD PTR [eax+0xc],ebp
10989781:	eb 12                                           	jmp    0x10989795
10989783:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10989787:	52                                              	push   edx
10989788:	51                                              	push   ecx
10989789:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
10989790:	e8 0b 58 b3 ff                                  	call   0x104befa0
10989795:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
1098979c:	83 c6 10                                        	add    esi,0x10
1098979f:	83 6c 24 14 01                                  	sub    DWORD PTR [esp+0x14],0x1
109897a4:	75 9c                                           	jne    0x10989742
109897a6:	8d 8c 24 ec 00 00 00                            	lea    ecx,[esp+0xec]
109897ad:	e8 be 9d fa ff                                  	call   0x10933570
109897b2:	33 f6                                           	xor    esi,esi
109897b4:	8d 8c 24 cc 00 00 00                            	lea    ecx,[esp+0xcc]
109897bb:	89 b4 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],esi
109897c2:	89 b4 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],esi
109897c9:	89 b4 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],esi
109897d0:	89 b4 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],esi
109897d7:	c7 84 24 c0 00 00 00 03 00 00 00                	mov    DWORD PTR [esp+0xc0],0x3
109897e2:	89 b4 24 c4 00 00 00                            	mov    DWORD PTR [esp+0xc4],esi
109897e9:	89 b4 24 c8 00 00 00                            	mov    DWORD PTR [esp+0xc8],esi
109897f0:	e8 7b 9d fa ff                                  	call   0x10933570
109897f5:	8a 94 24 3c 07 00 00                            	mov    dl,BYTE PTR [esp+0x73c]
109897fc:	8d 44 24 70                                     	lea    eax,[esp+0x70]
10989800:	89 84 24 c4 00 00 00                            	mov    DWORD PTR [esp+0xc4],eax
10989807:	8b 84 24 40 07 00 00                            	mov    eax,DWORD PTR [esp+0x740]
1098980e:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10989812:	6a 10                                           	push   0x10
10989814:	89 8c 24 cc 00 00 00                            	mov    DWORD PTR [esp+0xcc],ecx
1098981b:	50                                              	push   eax
1098981c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10989820:	89 b4 24 e8 00 00 00                            	mov    DWORD PTR [esp+0xe8],esi
10989827:	89 b4 24 ec 00 00 00                            	mov    DWORD PTR [esp+0xec],esi
1098982e:	89 b4 24 f0 00 00 00                            	mov    DWORD PTR [esp+0xf0],esi
10989835:	88 94 24 e4 00 00 00                            	mov    BYTE PTR [esp+0xe4],dl
1098983c:	e8 ef b1 fa ff                                  	call   0x10934a30
10989841:	50                                              	push   eax
10989842:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
10989849:	e8 72 9d fa ff                                  	call   0x109335c0
1098984e:	8b 8c 24 38 07 00 00                            	mov    ecx,DWORD PTR [esp+0x738]
10989855:	8d 94 24 ec 00 00 00                            	lea    edx,[esp+0xec]
1098985c:	52                                              	push   edx
1098985d:	89 8c 24 e4 00 00 00                            	mov    DWORD PTR [esp+0xe4],ecx
10989864:	8d 84 24 b4 00 00 00                            	lea    eax,[esp+0xb4]
1098986b:	50                                              	push   eax
1098986c:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10989873:	51                                              	push   ecx
10989874:	8b 8c 24 20 07 00 00                            	mov    ecx,DWORD PTR [esp+0x720]
1098987b:	8d 94 24 9c 00 00 00                            	lea    edx,[esp+0x9c]
10989882:	52                                              	push   edx
10989883:	8b 94 24 20 07 00 00                            	mov    edx,DWORD PTR [esp+0x720]
1098988a:	8d 84 24 90 00 00 00                            	lea    eax,[esp+0x90]
10989891:	50                                              	push   eax
10989892:	51                                              	push   ecx
10989893:	52                                              	push   edx
10989894:	e8 27 5a e2 ff                                  	call   0x107af2c0
10989899:	83 c4 1c                                        	add    esp,0x1c
1098989c:	84 c0                                           	test   al,al
1098989e:	0f 84 e5 00 00 00                               	je     0x10989989
109898a4:	8d 84 24 ec 00 00 00                            	lea    eax,[esp+0xec]
109898ab:	50                                              	push   eax
109898ac:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109898b0:	51                                              	push   ecx
109898b1:	e8 3a 42 bd ff                                  	call   0x1055daf0
109898b6:	8b 10                                           	mov    edx,DWORD PTR [eax]
109898b8:	8b 8c 24 4c 07 00 00                            	mov    ecx,DWORD PTR [esp+0x74c]
109898bf:	89 11                                           	mov    DWORD PTR [ecx],edx
109898c1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109898c4:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
109898c7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
109898ca:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
109898cd:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
109898d0:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
109898d3:	8b 84 24 88 00 00 00                            	mov    eax,DWORD PTR [esp+0x88]
109898da:	83 c4 08                                        	add    esp,0x8
109898dd:	3b c6                                           	cmp    eax,esi
109898df:	74 09                                           	je     0x109898ea
109898e1:	50                                              	push   eax
109898e2:	e8 a9 f5 f8 ff                                  	call   0x10918e90
109898e7:	83 c4 04                                        	add    esp,0x4
109898ea:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
109898ee:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
109898f2:	51                                              	push   ecx
109898f3:	52                                              	push   edx
109898f4:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
109898f8:	e8 f3 35 77 ff                                  	call   0x100fcef0
109898fd:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
10989901:	3b c6                                           	cmp    eax,esi
10989903:	74 09                                           	je     0x1098990e
10989905:	50                                              	push   eax
10989906:	e8 85 f5 f8 ff                                  	call   0x10918e90
1098990b:	83 c4 04                                        	add    esp,0x4
1098990e:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
10989915:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
1098991c:	2b c8                                           	sub    ecx,eax
1098991e:	83 e1 fe                                        	and    ecx,0xfffffffe
10989921:	83 f9 02                                        	cmp    ecx,0x2
10989924:	7e 0d                                           	jle    0x10989933
10989926:	3b c6                                           	cmp    eax,esi
10989928:	74 09                                           	je     0x10989933
1098992a:	50                                              	push   eax
1098992b:	e8 60 f5 f8 ff                                  	call   0x10918e90
10989930:	83 c4 04                                        	add    esp,0x4
10989933:	8b 54 24 74                                     	mov    edx,DWORD PTR [esp+0x74]
10989937:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
1098993b:	52                                              	push   edx
1098993c:	50                                              	push   eax
1098993d:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
10989941:	e8 aa 35 77 ff                                  	call   0x100fcef0
10989946:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
1098994a:	3b c6                                           	cmp    eax,esi
1098994c:	74 09                                           	je     0x10989957
1098994e:	50                                              	push   eax
1098994f:	e8 3c f5 f8 ff                                  	call   0x10918e90
10989954:	83 c4 04                                        	add    esp,0x4
10989957:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
1098995e:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
10989965:	2b c8                                           	sub    ecx,eax
10989967:	83 e1 fe                                        	and    ecx,0xfffffffe
1098996a:	83 f9 02                                        	cmp    ecx,0x2
1098996d:	7e 0d                                           	jle    0x1098997c
1098996f:	3b c6                                           	cmp    eax,esi
10989971:	74 09                                           	je     0x1098997c
10989973:	50                                              	push   eax
10989974:	e8 17 f5 f8 ff                                  	call   0x10918e90
10989979:	83 c4 04                                        	add    esp,0x4
1098997c:	5f                                              	pop    edi
1098997d:	5e                                              	pop    esi
1098997e:	5d                                              	pop    ebp
1098997f:	33 c0                                           	xor    eax,eax
10989981:	5b                                              	pop    ebx
10989982:	81 c4 fc 06 00 00                               	add    esp,0x6fc
10989988:	c3                                              	ret
10989989:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
10989990:	3b c6                                           	cmp    eax,esi
10989992:	74 09                                           	je     0x1098999d
10989994:	50                                              	push   eax
10989995:	e8 f6 f4 f8 ff                                  	call   0x10918e90
1098999a:	83 c4 04                                        	add    esp,0x4
1098999d:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
109899a1:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
109899a5:	52                                              	push   edx
109899a6:	50                                              	push   eax
109899a7:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
109899ab:	e8 40 35 77 ff                                  	call   0x100fcef0
109899b0:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
109899b4:	3b c6                                           	cmp    eax,esi
109899b6:	74 09                                           	je     0x109899c1
109899b8:	50                                              	push   eax
109899b9:	e8 d2 f4 f8 ff                                  	call   0x10918e90
109899be:	83 c4 04                                        	add    esp,0x4
109899c1:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
109899c8:	8b 84 24 a0 00 00 00                            	mov    eax,DWORD PTR [esp+0xa0]
109899cf:	2b c8                                           	sub    ecx,eax
109899d1:	83 e1 fe                                        	and    ecx,0xfffffffe
109899d4:	83 f9 02                                        	cmp    ecx,0x2
109899d7:	7e 0d                                           	jle    0x109899e6
109899d9:	3b c6                                           	cmp    eax,esi
109899db:	74 09                                           	je     0x109899e6
109899dd:	50                                              	push   eax
109899de:	e8 ad f4 f8 ff                                  	call   0x10918e90
109899e3:	83 c4 04                                        	add    esp,0x4
109899e6:	8b 54 24 74                                     	mov    edx,DWORD PTR [esp+0x74]
109899ea:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
109899ee:	52                                              	push   edx
109899ef:	50                                              	push   eax
109899f0:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
109899f4:	e8 f7 34 77 ff                                  	call   0x100fcef0
109899f9:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
109899fd:	3b c6                                           	cmp    eax,esi
109899ff:	74 09                                           	je     0x10989a0a
10989a01:	50                                              	push   eax
10989a02:	e8 89 f4 f8 ff                                  	call   0x10918e90
10989a07:	83 c4 04                                        	add    esp,0x4
10989a0a:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
10989a11:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
10989a18:	2b c8                                           	sub    ecx,eax
10989a1a:	83 e1 fe                                        	and    ecx,0xfffffffe
10989a1d:	83 f9 02                                        	cmp    ecx,0x2
10989a20:	7e 0d                                           	jle    0x10989a2f
10989a22:	3b c6                                           	cmp    eax,esi
10989a24:	74 09                                           	je     0x10989a2f
10989a26:	50                                              	push   eax
10989a27:	e8 64 f4 f8 ff                                  	call   0x10918e90
10989a2c:	83 c4 04                                        	add    esp,0x4
10989a2f:	5f                                              	pop    edi
10989a30:	5e                                              	pop    esi
10989a31:	5d                                              	pop    ebp
10989a32:	83 c8 ff                                        	or     eax,0xffffffff
10989a35:	5b                                              	pop    ebx
10989a36:	81 c4 fc 06 00 00                               	add    esp,0x6fc
10989a3c:	c3                                              	ret
10989a3d:	cc                                              	int3
10989a3e:	cc                                              	int3
10989a3f:	cc                                              	int3
