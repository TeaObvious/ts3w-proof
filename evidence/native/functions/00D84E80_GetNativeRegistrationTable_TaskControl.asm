# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d84e80 (GetNativeRegistrationTable_TaskControl)
Paired Ghidra pseudocode: 00D84E80_GetNativeRegistrationTable_TaskControl.c
Window: [0x00d84e80, 0x00d86e80) (8192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d873c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d84e80: 8b 44 24 04 c7 00 48 d6 08 01 c2 04 00 cc cc cc
00d84e90: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 51 52 50 ff
00d84ea0: 54 24 10 8b 4c 24 14 83 c4 0c 88 01 c3 cc cc cc
00d84eb0: 8b 44 24 10 8b 48 0c 8b 50 08 51 8b 48 04 52 8b
00d84ec0: 10 51 52 ff 54 24 14 8b 4c 24 18 83 c4 10 88 01
00d84ed0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d84ee0: 8b 44 24 10 8b 00 8b 10 83 ec 10 8b cc 89 11 8b
00d84ef0: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
00d84f00: 0c ff 54 24 14 8b 4c 24 18 83 c4 10 88 01 c3 cc
00d84f10: 8b 44 24 10 8b 08 51 ff 54 24 08 8b 54 24 0c dd
00d84f20: 1a 83 c4 04 c3 cc cc cc cc cc cc cc cc cc cc cc
00d84f30: 8b 44 24 10 dd 40 10 8b 48 04 8b 10 83 ec 08 d9
00d84f40: 5c 24 04 dd 40 08 d9 1c 24 51 52 ff 54 24 14 83
00d84f50: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d84f60: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d84f70: 50 0c 51 8b 48 08 52 8b 10 51 52 ff 54 24 1c 83
00d84f80: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d84f90: 8b 44 24 10 8b 48 14 8b 50 10 51 8b 48 0c 52 8b
00d84fa0: 50 08 51 8b 48 04 52 8b 10 51 52 ff 54 24 1c 8b
00d84fb0: 4c 24 20 83 c4 18 89 01 89 51 04 c3 cc cc cc cc
00d84fc0: 8b 44 24 10 8b 48 08 8b 10 8b 44 24 0c 51 52 50
00d84fd0: ff 54 24 10 8b 4c 24 14 83 c4 0c 89 01 c3 cc cc
00d84fe0: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d84ff0: 50 08 8b 00 51 8b 4c 24 18 52 50 51 ff 54 24 1c
00d85000: 83 c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc
00d85010: 8b 44 24 10 8b 48 08 8b 50 04 8b 00 51 52 50 ff
00d85020: 54 24 10 83 c4 0c c3 cc cc cc cc cc cc cc cc cc
00d85030: 8b 44 24 10 8b 48 10 dd 40 08 51 83 ec 08 d9 5c
00d85040: 24 04 dd 00 d9 1c 24 ff 54 24 10 8b 54 24 14 83
00d85050: c4 0c 89 02 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85060: 8b 44 24 10 8b 48 08 8b 10 51 52 ff 54 24 0c 8b
00d85070: 4c 24 10 83 c4 08 89 01 c3 cc cc cc cc cc cc cc
00d85080: 8b 44 24 10 8b 48 20 dd 40 08 8b 50 18 51 8b 48
00d85090: 10 52 8b 10 51 51 d9 1c 24 52 ff 54 24 18 83 c4
00d850a0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d850b0: 8b 44 24 10 8b 48 30 8b 50 28 56 51 8b 48 20 52
00d850c0: 8b 50 18 51 8b 48 14 52 8b 50 10 51 8b 48 08 8b
00d850d0: 31 52 83 ec 10 8b d4 89 32 8b 71 04 89 72 04 8b
00d850e0: 71 08 8b 49 0c 89 72 08 89 4a 0c 8b 10 52 ff 54
00d850f0: 24 34 83 c4 2c 5e c3 cc cc cc cc cc cc cc cc cc
00d85100: 8b 54 24 10 8b 42 10 56 8b 30 83 ec 10 8b cc 89
00d85110: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d85120: 89 41 0c 8b 4a 08 8b 42 04 51 8b 0a 50 51 ff 54
00d85130: 24 24 83 c4 1c 5e c3 cc cc cc cc cc cc cc cc cc
00d85140: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d85150: 50 0c 51 8b 48 08 52 8b 10 51 52 ff 54 24 1c 8b
00d85160: 4c 24 20 83 c4 18 88 01 c3 cc cc cc cc cc cc cc
00d85170: ff 54 24 04 8b 44 24 08 dd 18 c3 cc cc cc cc cc
00d85180: 8b 44 24 10 8b 48 28 8b 50 20 51 8b 48 18 52 8b
00d85190: 50 10 51 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff
00d851a0: 54 24 20 8b 4c 24 24 83 c4 1c 89 01 c3 cc cc cc
00d851b0: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 0c 8b cc 89
00d851c0: 31 8b 70 04 8b 40 08 89 71 04 89 41 08 8b 02 8b
00d851d0: 10 83 ec 0c 8b cc 89 11 8b 50 04 8b 40 08 89 51
00d851e0: 04 89 41 08 ff 54 24 20 83 c4 18 5e c3 cc cc cc
00d851f0: 8b 44 24 10 8b 48 28 56 51 8b 48 20 8b 31 83 ec
00d85200: 0c 8b d4 89 32 8b 71 04 8b 49 08 89 72 04 89 4a
00d85210: 08 8b 50 18 8b 48 10 8b 31 52 83 ec 0c 8b d4 89
00d85220: 32 8b 71 04 8b 49 08 89 72 04 89 4a 08 8b 50 0c
00d85230: 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff 54 24 38
00d85240: 8b 4c 24 3c 83 c4 30 88 01 5e c3 cc cc cc cc cc
00d85250: 8b 44 24 10 8b 48 20 8b 50 18 56 51 8b 48 10 8b
00d85260: 31 52 83 ec 10 8b d4 89 32 8b 71 04 89 72 04 8b
00d85270: 71 08 8b 49 0c 89 72 08 89 4a 0c 8b 50 0c 8b 48
00d85280: 08 52 8b 10 51 52 ff 54 24 2c 83 c4 24 5e c3 cc
00d85290: 8b 44 24 10 0f b7 48 08 8b 10 51 52 ff 54 24 0c
00d852a0: 8b 4c 24 10 83 c4 08 89 01 c3 cc cc cc cc cc cc
00d852b0: 8b 54 24 10 8b 42 10 56 8b 30 83 ec 10 8b cc 89
00d852c0: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d852d0: 89 41 0c 8b 4a 08 8b 12 51 52 ff 54 24 20 83 c4
00d852e0: 18 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d852f0: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 81 ec 90 00
00d85300: 00 00 56 57 51 52 50 8d 4c 24 5c 51 ff 94 24 ac
00d85310: 00 00 00 8b 94 24 b0 00 00 00 b9 12 00 00 00 8b
00d85320: f0 8d 7c 24 18 f3 a5 8b 3a 83 c4 10 b9 12 00 00
00d85330: 00 8d 74 24 08 f3 a5 5f 5e 81 c4 90 00 00 00 c3
00d85340: 8b 44 24 10 8b 48 04 8b 10 51 52 ff 54 24 0c 8b
00d85350: 44 24 10 d9 18 83 c4 08 c3 cc cc cc cc cc cc cc
00d85360: 8b 44 24 10 8b 48 28 8b 50 20 51 8b 48 1c 52 8b
00d85370: 50 18 51 8b 48 10 52 8b 50 08 51 8b 48 04 52 8b
00d85380: 10 51 52 ff 54 24 24 8b 4c 24 28 83 c4 20 88 01
00d85390: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d853a0: 8b 44 24 10 8b 48 08 8b 10 81 ec 80 00 00 00 56
00d853b0: 57 51 52 8d 44 24 50 50 ff 94 24 98 00 00 00 8b
00d853c0: 94 24 9c 00 00 00 b9 10 00 00 00 8b f0 8d 7c 24
00d853d0: 14 f3 a5 8b 3a 83 c4 0c b9 10 00 00 00 8d 74 24
00d853e0: 08 f3 a5 5f 5e 81 c4 80 00 00 00 c3 cc cc cc cc
00d853f0: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 0c 52 8b
00d85400: 50 08 8b 00 51 52 8b 10 83 ec 10 8b cc 89 11 8b
00d85410: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
00d85420: 0c ff 54 24 24 83 c4 20 c3 cc cc cc cc cc cc cc
00d85430: 8b 44 24 10 8b 48 10 dd 40 08 51 83 ec 08 d9 5c
00d85440: 24 04 dd 00 d9 1c 24 ff 54 24 10 8b 54 24 14 83
00d85450: c4 0c 88 02 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85460: 8b 44 24 10 8b 08 51 ff 54 24 08 8b 54 24 0c 83
00d85470: c4 04 89 02 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85480: 8b 44 24 10 8b 48 50 8b 50 48 51 8b 48 40 52 8b
00d85490: 50 38 51 8b 48 30 52 8b 50 28 51 8b 48 24 52 8b
00d854a0: 50 20 51 8b 48 1c 52 8b 50 18 51 8b 48 10 52 8b
00d854b0: 50 08 8b 00 51 52 50 ff 54 24 38 8b 4c 24 3c 83
00d854c0: c4 34 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc
00d854d0: 8b 44 24 10 8b 48 18 8b 50 14 83 ec 10 56 57 51
00d854e0: 8b 48 10 52 8b 50 08 8b 00 51 52 50 8d 4c 24 1c
00d854f0: 51 ff 54 24 34 8b 70 04 8b 78 08 8b 10 8b 40 0c
00d85500: 8b 4c 24 38 8b 09 89 11 89 71 04 83 c4 18 89 79
00d85510: 08 5f 89 41 0c 5e 83 c4 10 c3 cc cc cc cc cc cc
00d85520: 8b 44 24 10 8b 48 10 8b 10 56 8b 70 08 57 51 83
00d85530: ec 48 8b fc b9 12 00 00 00 52 f3 a5 ff 54 24 5c
00d85540: 8b 4c 24 60 83 c4 50 5f 88 01 5e c3 cc cc cc cc
00d85550: 8b 44 24 10 8b 08 83 ec 0c 56 51 8d 54 24 08 52
00d85560: ff 54 24 1c 8b 70 04 8b 10 8b 4c 24 20 8b 09 8b
00d85570: 40 08 89 11 83 c4 08 89 71 04 89 41 08 5e 83 c4
00d85580: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85590: 8b 44 24 10 8b 48 04 8b 10 51 52 ff 54 24 0c 8b
00d855a0: 4c 24 10 83 c4 08 66 89 01 c3 cc cc cc cc cc cc
00d855b0: 8b 44 24 10 8b 48 04 8b 10 51 52 ff 54 24 0c 8b
00d855c0: 4c 24 10 83 c4 08 88 01 c3 cc cc cc cc cc cc cc
00d855d0: 8b 44 24 10 8b 48 38 8b 50 30 51 8b 48 2c 52 8b
00d855e0: 50 28 51 8b 48 24 52 8b 50 20 51 8b 48 1c 52 8b
00d855f0: 50 18 51 8b 48 10 52 8b 50 08 51 8b 48 04 52 8b
00d85600: 10 51 52 ff 54 24 34 8b 4c 24 38 83 c4 30 89 01
00d85610: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85620: 8b 44 24 10 8b 48 10 56 8b 31 83 ec 0c 8b d4 89
00d85630: 32 8b 71 04 8b 49 08 89 72 04 89 4a 08 8b 50 08
00d85640: 8b 48 04 52 8b 10 51 52 ff 54 24 20 83 c4 18 5e
00d85650: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85660: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 10 8b cc 89
00d85670: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d85680: 89 41 0c 8b 0a 51 ff 54 24 1c 8b 54 24 20 83 c4
00d85690: 14 88 02 5e c3 cc cc cc cc cc cc cc cc cc cc cc
00d856a0: 8b 44 24 10 8b 48 3c 8b 50 38 51 8b 48 30 52 8b
00d856b0: 50 28 51 8b 48 20 52 8b 50 18 51 8b 48 10 52 8b
00d856c0: 50 0c 51 8b 48 08 52 8b 10 51 52 ff 54 24 2c 8b
00d856d0: 4c 24 30 83 c4 28 88 01 c3 cc cc cc cc cc cc cc
00d856e0: 8b 44 24 10 8b 48 10 8b 50 0c 51 8b 48 08 52 8b
00d856f0: 50 04 8b 00 51 52 50 ff 54 24 18 8b 4c 24 1c 83
00d85700: c4 14 89 01 89 51 04 c3 cc cc cc cc cc cc cc cc
00d85710: 8b 44 24 10 dd 40 10 83 ec 0c d9 5c 24 08 dd 40
00d85720: 08 d9 5c 24 04 dd 00 d9 1c 24 ff 54 24 10 83 c4
00d85730: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85740: 8b 44 24 10 8b 48 08 8b 10 83 ec 10 56 57 51 52
00d85750: 8d 44 24 10 50 ff 54 24 28 8b 70 04 8b 78 08 8b
00d85760: 10 8b 40 0c 8b 4c 24 2c 8b 09 89 11 89 71 04 83
00d85770: c4 0c 89 79 08 5f 89 41 0c 5e 83 c4 10 c3 cc cc
00d85780: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 51 52 50 ff
00d85790: 54 24 10 8b 4c 24 14 d9 19 83 c4 0c c3 cc cc cc
00d857a0: 8b 44 24 10 8b 48 38 8b 50 30 51 8b 48 28 52 0f
00d857b0: b6 50 20 51 8b 48 18 52 8b 50 10 51 8b 48 0c 52
00d857c0: 8b 50 08 8b 00 51 52 8b 10 83 ec 10 8b cc 89 11
00d857d0: 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89
00d857e0: 41 0c ff 54 24 34 83 c4 30 c3 cc cc cc cc cc cc
00d857f0: 8b 44 24 10 dd 40 18 81 ec 90 00 00 00 56 57 83
00d85800: ec 0c d9 5c 24 08 8d 4c 24 5c dd 40 10 d9 5c 24
00d85810: 04 dd 40 08 8b 00 d9 1c 24 50 51 ff 94 24 b0 00
00d85820: 00 00 8b 94 24 b4 00 00 00 b9 12 00 00 00 8b f0
00d85830: 8d 7c 24 1c f3 a5 8b 3a 83 c4 14 b9 12 00 00 00
00d85840: 8d 74 24 08 f3 a5 5f 5e 81 c4 90 00 00 00 c3 cc
00d85850: 8b 44 24 10 8b 48 28 8b 50 20 51 8b 48 18 52 8b
00d85860: 50 14 51 8b 48 10 52 8b 50 0c 51 8b 48 08 52 8b
00d85870: 10 51 52 ff 54 24 24 83 c4 20 c3 cc cc cc cc cc
00d85880: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 10 8b cc 89
00d85890: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d858a0: 89 41 0c 8b 0a 51 ff 54 24 1c 83 c4 14 5e c3 cc
00d858b0: 8b 44 24 10 8b 48 34 dd 40 18 8b 50 30 56 51 8b
00d858c0: 48 28 52 8b 50 20 51 8b 48 10 8b 31 52 83 ec 10
00d858d0: d9 5c 24 0c 8b d4 89 32 8b 71 04 8b 49 08 89 72
00d858e0: 04 89 4a 08 8b 48 08 8b 31 83 ec 0c 8b d4 89 32
00d858f0: 8b 71 04 8b 49 08 89 72 04 89 4a 08 8b 50 04 8b
00d85900: 00 52 50 ff 54 24 3c 8b 4c 24 40 83 c4 34 89 01
00d85910: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85920: 8b 44 24 10 dd 40 18 8b 50 0c 51 8b 48 10 d9 1c
00d85930: 24 51 8b 48 08 52 8b 10 51 52 ff 54 24 18 8b 4c
00d85940: 24 1c 83 c4 14 89 01 c3 cc cc cc cc cc cc cc cc
00d85950: 8b 44 24 10 8b 48 14 8b 50 10 51 8b 48 0c 52 8b
00d85960: 50 08 51 8b 48 04 52 8b 10 51 52 ff 54 24 1c 8b
00d85970: 4c 24 20 83 c4 18 89 01 c3 cc cc cc cc cc cc cc
00d85980: 8b 54 24 10 8b 42 08 83 ec 0c 56 8b 30 83 ec 10
00d85990: 8b cc 89 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c
00d859a0: 89 71 08 89 41 0c 8b 4a 04 8b 12 51 52 8d 44 24
00d859b0: 1c 50 ff 54 24 30 8b 70 04 8b 10 8b 4c 24 34 8b
00d859c0: 09 8b 40 08 89 11 83 c4 1c 89 71 04 89 41 08 5e
00d859d0: 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc
00d859e0: 8b 44 24 10 8b 48 18 dd 40 10 56 51 8b 48 08 8b
00d859f0: 31 8b 00 83 ec 10 d9 5c 24 0c 8b d4 89 32 8b 71
00d85a00: 04 8b 49 08 89 72 04 89 4a 08 8b 10 83 ec 0c 8b
00d85a10: cc 89 11 8b 50 04 8b 40 08 89 51 04 89 41 08 ff
00d85a20: 54 24 28 83 c4 20 5e c3 cc cc cc cc cc cc cc cc
00d85a30: 8b 44 24 10 8b 48 10 8b 50 0c 51 8b 48 08 8b 00
00d85a40: 52 8b 10 51 83 ec 10 8b cc 89 11 8b 50 04 89 51
00d85a50: 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c ff 54 24
00d85a60: 20 83 c4 1c c3 cc cc cc cc cc cc cc cc cc cc cc
00d85a70: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 08 52 8b
00d85a80: 10 8b 44 24 14 51 52 50 ff 54 24 18 83 c4 14 c3
00d85a90: 8b 44 24 10 8b 08 51 ff 54 24 08 8b 54 24 0c d9
00d85aa0: 1a 83 c4 04 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85ab0: 8b 44 24 10 8b 48 20 dd 40 18 8b 50 08 51 83 ec
00d85ac0: 08 d9 5c 24 04 dd 40 10 8b 00 d9 1c 24 52 50 ff
00d85ad0: 54 24 18 8b 4c 24 1c d9 19 83 c4 14 c3 cc cc cc
00d85ae0: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 0c 8b cc 89
00d85af0: 31 8b 70 04 8b 40 08 89 71 04 89 41 08 8b 0a 51
00d85b00: ff 54 24 18 8b 54 24 1c 83 c4 10 89 02 5e c3 cc
00d85b10: 8b 44 24 10 8b 48 08 8b 00 8b 10 51 83 ec 0c 8b
00d85b20: cc 89 11 8b 50 04 8b 40 08 89 51 04 89 41 08 ff
00d85b30: 54 24 14 8b 4c 24 18 83 c4 10 66 89 01 c3 cc cc
00d85b40: 8b 44 24 10 8b 48 20 dd 40 18 8b 50 04 51 83 ec
00d85b50: 0c d9 5c 24 08 dd 40 10 d9 5c 24 04 dd 40 08 8b
00d85b60: 00 d9 1c 24 52 50 ff 54 24 1c 8b 4c 24 20 83 c4
00d85b70: 18 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc
00d85b80: 8b 44 24 10 8b 48 18 dd 40 10 8b 50 08 51 51 8b
00d85b90: 48 04 d9 1c 24 52 8b 10 51 52 ff 54 24 18 8b 4c
00d85ba0: 24 1c 83 c4 14 89 01 c3 cc cc cc cc cc cc cc cc
00d85bb0: 8b 44 24 10 8b 48 04 8b 10 83 ec 18 53 55 56 57
00d85bc0: 51 52 8d 44 24 18 50 ff 54 24 38 8b 70 04 8b 78
00d85bd0: 08 8b 58 0c 8b 68 10 8b 10 8b 40 14 8b 4c 24 3c
00d85be0: 8b 09 89 11 89 71 04 83 c4 0c 89 79 08 5f 89 59
00d85bf0: 0c 5e 89 69 10 5d 89 41 14 5b 83 c4 18 c3 cc cc
00d85c00: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 0c 52 8b
00d85c10: 50 08 8b 00 51 52 50 ff 54 24 18 8b 4c 24 1c 83
00d85c20: c4 14 89 01 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85c30: 8b 44 24 10 0f b7 48 10 8b 50 08 8b 00 51 52 50
00d85c40: ff 54 24 10 83 c4 0c c3 cc cc cc cc cc cc cc cc
00d85c50: ff 54 24 04 8b 4c 24 08 89 01 c3 cc cc cc cc cc
00d85c60: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 51 52 50 ff
00d85c70: 54 24 10 83 c4 0c c3 cc cc cc cc cc cc cc cc cc
00d85c80: 8b 54 24 10 8b 42 10 56 8b 30 83 ec 10 8b cc 89
00d85c90: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d85ca0: 89 41 0c 8b 4a 08 8b 42 04 51 8b 0a 50 51 ff 54
00d85cb0: 24 24 8b 54 24 28 83 c4 1c 89 02 5e c3 cc cc cc
00d85cc0: 8b 44 24 10 8b 48 08 8b 50 04 8b 00 83 ec 10 56
00d85cd0: 57 51 52 50 8d 4c 24 14 51 ff 54 24 2c 8b 70 04
00d85ce0: 8b 78 08 8b 10 8b 40 0c 8b 4c 24 30 8b 09 89 11
00d85cf0: 89 71 04 83 c4 10 89 79 08 5f 89 41 0c 5e 83 c4
00d85d00: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85d10: 8b 44 24 10 8b 48 10 8b 50 08 83 ec 10 56 57 51
00d85d20: 8b 48 04 52 8b 10 51 52 8d 44 24 18 50 ff 54 24
00d85d30: 30 8b 70 04 8b 78 08 8b 10 8b 40 0c 8b 4c 24 34
00d85d40: 8b 09 89 11 89 71 04 83 c4 14 89 79 08 5f 89 41
00d85d50: 0c 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc
00d85d60: 8b 54 24 10 8b 42 10 56 50 8b 42 08 8b 30 83 ec
00d85d70: 10 8b cc 89 31 8b 70 04 89 71 04 8b 70 08 8b 40
00d85d80: 0c 89 71 08 89 41 0c 8b 0a 51 ff 54 24 20 8b 54
00d85d90: 24 24 83 c4 18 88 02 5e c3 cc cc cc cc cc cc cc
00d85da0: 8b 44 24 10 8b 48 18 8b 50 14 51 8b 48 10 52 8b
00d85db0: 50 0c 51 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff
00d85dc0: 54 24 20 8b 4c 24 24 83 c4 1c 89 01 c3 cc cc cc
00d85dd0: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 08 52 8b
00d85de0: 10 51 52 ff 54 24 14 8b 4c 24 18 83 c4 10 88 01
00d85df0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85e00: 8b 44 24 10 8b 00 8b 10 83 ec 0c 8b cc 89 11 8b
00d85e10: 50 04 8b 40 08 89 51 04 89 41 08 ff 54 24 10 8b
00d85e20: 4c 24 14 83 c4 0c 89 01 c3 cc cc cc cc cc cc cc
00d85e30: 8b 44 24 10 8b 48 0c 8b 50 08 8b 00 51 52 50 ff
00d85e40: 54 24 10 8b 4c 24 14 83 c4 0c 89 01 c3 cc cc cc
00d85e50: 8b 44 24 10 8b 48 1c 8b 50 18 51 8b 48 10 52 8b
00d85e60: 50 08 8b 00 51 52 50 ff 54 24 18 8b 4c 24 1c 83
00d85e70: c4 14 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc
00d85e80: 8b 44 24 10 dd 40 08 83 ec 08 d9 5c 24 04 dd 00
00d85e90: d9 1c 24 ff 54 24 0c 83 c4 08 c3 cc cc cc cc cc
00d85ea0: 8b 44 24 10 8b 48 30 8b 50 28 51 8b 48 20 52 8b
00d85eb0: 50 18 51 8b 48 10 52 8b 50 08 51 8b 48 04 52 8b
00d85ec0: 10 51 52 ff 54 24 24 8b 4c 24 28 83 c4 20 88 01
00d85ed0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d85ee0: 8b 44 24 10 dd 40 18 83 ec 0c d9 5c 24 08 dd 40
00d85ef0: 10 d9 5c 24 04 dd 40 08 8b 00 d9 1c 24 50 ff 54
00d85f00: 24 14 8b 4c 24 18 83 c4 10 89 01 89 51 04 c3 cc
00d85f10: 8b 44 24 10 8b 48 28 8b 50 20 56 51 8b 48 18 8b
00d85f20: 31 52 83 ec 10 8b d4 89 32 8b 71 04 89 72 04 8b
00d85f30: 71 08 8b 49 0c 89 72 08 89 4a 0c 8b 48 10 8b 31
00d85f40: 83 ec 10 8b d4 89 32 8b 71 04 89 72 04 8b 71 08
00d85f50: 8b 49 0c 89 72 08 89 4a 0c 8b 48 08 8b 31 8b 00
00d85f60: 83 ec 10 8b d4 89 32 8b 71 04 89 72 04 8b 71 08
00d85f70: 8b 49 0c 89 72 08 89 4a 0c 8b 10 83 ec 10 8b cc
00d85f80: 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89 51
00d85f90: 08 89 41 0c ff 54 24 50 83 c4 48 5e c3 cc cc cc
00d85fa0: 8b 44 24 10 8b 48 18 dd 40 10 51 83 ec 14 d9 5c
00d85fb0: 24 10 8b cc dd 40 08 8b 00 8b 10 d9 5c 24 0c 89
00d85fc0: 11 8b 50 04 8b 40 08 89 51 04 89 41 08 ff 54 24
00d85fd0: 1c 8b 4c 24 20 83 c4 18 88 01 c3 cc cc cc cc cc
00d85fe0: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d85ff0: 50 0c 51 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff
00d86000: 54 24 20 83 c4 1c c3 cc cc cc cc cc cc cc cc cc
00d86010: 8b 44 24 10 8b 48 18 8b 50 10 56 8b 70 08 8b 00
00d86020: 57 51 52 83 ec 48 8b fc b9 12 00 00 00 50 f3 a5
00d86030: ff 54 24 60 8b 4c 24 64 83 c4 54 5f 89 01 5e c3
00d86040: 8b 44 24 10 8b 48 14 8b 50 10 51 8b 48 08 52 8b
00d86050: 50 04 8b 00 51 52 50 ff 54 24 18 83 c4 14 c3 cc
00d86060: 8b 44 24 10 8b 00 8b 10 83 ec 0c 8b cc 89 11 8b
00d86070: 50 04 8b 40 08 89 51 04 89 41 08 ff 54 24 10 8b
00d86080: 4c 24 14 83 c4 0c 89 01 89 51 04 c3 cc cc cc cc
00d86090: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 0c 8b cc 89
00d860a0: 31 8b 70 04 8b 40 08 89 71 04 89 41 08 8b 4a 04
00d860b0: 8b 12 51 52 ff 54 24 1c 8b 4c 24 20 83 c4 14 89
00d860c0: 01 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d860d0: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 10 8b cc 89
00d860e0: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d860f0: 89 41 0c 8b 0a 51 ff 54 24 1c 8b 54 24 20 83 c4
00d86100: 14 d9 1a 5e c3 cc cc cc cc cc cc cc cc cc cc cc
00d86110: 8b 44 24 10 8b 08 51 ff 54 24 08 8b 54 24 0c 83
00d86120: c4 04 88 02 c3 cc cc cc cc cc cc cc cc cc cc cc
00d86130: 8b 44 24 10 8b 08 81 ec 90 00 00 00 56 57 51 8d
00d86140: 54 24 54 52 ff 94 24 a4 00 00 00 8b f0 8b 84 24
00d86150: a8 00 00 00 b9 12 00 00 00 8d 7c 24 10 f3 a5 8b
00d86160: 38 83 c4 08 b9 12 00 00 00 8d 74 24 08 f3 a5 5f
00d86170: 5e 81 c4 90 00 00 00 c3 cc cc cc cc cc cc cc cc
00d86180: 8b 44 24 10 8b 48 04 8b 10 51 52 ff 54 24 0c 8b
00d86190: 4c 24 10 8b 09 89 01 83 c4 08 89 51 04 c3 cc cc
00d861a0: 8b 44 24 10 8b 48 18 56 8b 31 83 ec 10 8b d4 89
00d861b0: 32 8b 71 04 89 72 04 8b 71 08 8b 49 0c 89 72 08
00d861c0: 89 4a 0c 8b 50 14 8b 48 10 52 8b 50 08 8b 00 51
00d861d0: 52 50 ff 54 24 28 8b 4c 24 2c 83 c4 20 d9 19 5e
00d861e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d861f0: 8b 44 24 10 dd 40 70 8b 50 60 56 51 8b 48 68 d9
00d86200: 1c 24 51 8b 48 58 52 8b 50 50 51 8b 48 48 52 8b
00d86210: 50 40 51 8b 48 38 52 8b 50 30 51 8b 48 28 52 8b
00d86220: 50 20 51 8b 48 18 52 8b 50 10 51 8b 48 08 8b 31
00d86230: 52 83 ec 0c 8b d4 89 32 8b 71 04 8b 49 08 89 72
00d86240: 04 89 4a 08 8b 50 04 8b 00 52 50 ff 54 24 50 8b
00d86250: 4c 24 54 83 c4 48 88 01 5e c3 cc cc cc cc cc cc
00d86260: 8b 44 24 10 dd 40 08 8b 00 83 ec 08 dd 1c 24 50
00d86270: ff 54 24 10 8b 4c 24 14 83 c4 0c 89 01 c3 cc cc
00d86280: 8b 44 24 10 8b 48 08 dd 40 10 56 8b 31 83 ec 10
00d86290: 8b d4 d9 5c 24 0c 89 32 8b 71 04 8b 49 08 89 72
00d862a0: 04 89 4a 08 8b 50 04 8b 00 52 50 ff 54 24 20 8b
00d862b0: 4c 24 24 83 c4 18 89 01 5e c3 cc cc cc cc cc cc
00d862c0: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 51 52 8b 10
00d862d0: 83 ec 0c 8b cc 89 11 8b 50 04 8b 40 08 89 51 04
00d862e0: 89 41 08 ff 54 24 18 83 c4 14 c3 cc cc cc cc cc
00d862f0: 8b 44 24 10 8b 48 18 8b 50 10 83 ec 0c 56 51 8b
00d86300: 48 08 52 8b 50 04 8b 00 51 52 50 8d 4c 24 18 51
00d86310: ff 54 24 2c 8b 70 04 8b 10 8b 4c 24 30 8b 09 8b
00d86320: 40 08 89 11 83 c4 18 89 71 04 89 41 08 5e 83 c4
00d86330: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86340: 8b 44 24 10 8b 00 8b 10 83 ec 10 8b cc 89 11 8b
00d86350: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
00d86360: 0c ff 54 24 14 83 c4 10 c3 cc cc cc cc cc cc cc
00d86370: 8b 44 24 10 8b 48 20 dd 40 10 8b 50 18 51 52 83
00d86380: ec 08 d9 5c 24 04 dd 40 08 8b 00 d9 1c 24 50 ff
00d86390: 54 24 18 83 c4 14 c3 cc cc cc cc cc cc cc cc cc
00d863a0: 8b 44 24 10 8b 48 30 8b 50 28 56 51 8b 48 20 52
00d863b0: 8b 50 18 51 8b 48 10 52 8b 51 04 8b 09 52 51 8b
00d863c0: 48 08 8b 31 83 ec 0c 8b d4 89 32 8b 71 04 8b 49
00d863d0: 08 89 72 04 89 4a 08 8b 10 52 ff 54 24 30 83 c4
00d863e0: 28 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d863f0: 8b 44 24 10 0f b6 48 18 8b 50 10 51 8b 48 0c 52
00d86400: 8b 50 08 8b 00 51 52 8b 10 83 ec 10 8b cc 89 11
00d86410: 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89
00d86420: 41 0c ff 54 24 24 8b 4c 24 28 83 c4 20 88 01 c3
00d86430: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 10 8b cc 89
00d86440: 31 8b 70 04 89 71 04 8b 70 08 8b 40 0c 89 71 08
00d86450: 89 41 0c 8b 02 8b 48 04 8b 10 51 52 ff 54 24 20
00d86460: 8b 4c 24 24 83 c4 18 89 01 5e c3 cc cc cc cc cc
00d86470: 8b 44 24 10 8b 48 10 8b 50 08 51 8b 48 04 52 8b
00d86480: 10 51 52 ff 54 24 14 8b 4c 24 18 83 c4 10 88 01
00d86490: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d864a0: 8b 44 24 10 8b 48 08 8b 10 81 ec 90 00 00 00 56
00d864b0: 57 51 52 8d 44 24 58 50 ff 94 24 a8 00 00 00 8b
00d864c0: 94 24 ac 00 00 00 b9 12 00 00 00 8b f0 8d 7c 24
00d864d0: 14 f3 a5 8b 3a 83 c4 0c b9 12 00 00 00 8d 74 24
00d864e0: 08 f3 a5 5f 5e 81 c4 90 00 00 00 c3 cc cc cc cc
00d864f0: 8b 44 24 10 8b 48 10 8b 51 04 8b 09 52 8b 50 08
00d86500: 8b 00 51 52 50 ff 54 24 14 8b 4c 24 18 83 c4 10
00d86510: 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86520: 8b 44 24 10 dd 40 10 8b 10 51 8b 48 08 d9 1c 24
00d86530: 51 52 ff 54 24 10 83 c4 0c c3 cc cc cc cc cc cc
00d86540: 8b 44 24 10 8b 48 68 8b 50 60 51 8b 48 58 52 8b
00d86550: 50 50 51 8b 48 48 52 8b 50 40 51 8b 48 38 52 8b
00d86560: 50 30 51 8b 48 28 52 8b 50 24 51 8b 48 20 52 8b
00d86570: 50 1c 51 8b 48 18 52 8b 50 10 51 8b 48 08 52 8b
00d86580: 50 04 8b 00 51 52 50 ff 54 24 48 8b 4c 24 4c 83
00d86590: c4 44 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc
00d865a0: 8b 44 24 10 0f b7 48 18 8b 50 10 56 51 8b 48 08
00d865b0: 8b 31 52 83 ec 0c 8b d4 89 32 8b 71 04 8b 49 08
00d865c0: 89 72 04 89 4a 08 8b 50 04 8b 00 52 50 ff 54 24
00d865d0: 24 8b 4c 24 28 83 c4 1c 88 01 5e c3 cc cc cc cc
00d865e0: 8b 44 24 10 8b 48 10 8b 50 08 51 8b 48 04 52 8b
00d865f0: 10 51 52 ff 54 24 14 83 c4 10 c3 cc cc cc cc cc
00d86600: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 0c 52 8b
00d86610: 50 08 8b 00 51 52 50 ff 54 24 18 8b 4c 24 1c 83
00d86620: c4 14 88 01 c3 cc cc cc cc cc cc cc cc cc cc cc
00d86630: 8b 44 24 10 8b 48 08 8b 00 8b 10 51 83 ec 0c 8b
00d86640: cc 89 11 8b 50 04 8b 40 08 89 51 04 89 41 08 ff
00d86650: 54 24 14 8b 4c 24 18 83 c4 10 88 01 c3 cc cc cc
00d86660: 8b 44 24 10 dd 40 10 83 ec 18 d9 5c 24 14 8b cc
00d86670: dd 40 08 8b 00 8b 10 d9 5c 24 10 89 11 8b 50 04
00d86680: 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c ff
00d86690: 54 24 1c 8b 4c 24 20 83 c4 18 89 01 c3 cc cc cc
00d866a0: 8b 44 24 10 dd 00 83 ec 08 dd 1c 24 ff 54 24 0c
00d866b0: 8b 4c 24 10 83 c4 08 89 01 c3 cc cc cc cc cc cc
00d866c0: 8b 44 24 10 8b 48 28 dd 40 10 56 8b 31 83 ec 0c
00d866d0: 8b d4 89 32 8b 71 04 8b 49 08 89 72 04 89 4a 08
00d866e0: 8b 48 20 8b 31 83 ec 0c 8b d4 89 32 8b 71 04 8b
00d866f0: 49 08 89 72 04 89 4a 08 8b 50 18 52 8b 10 51 8b
00d86700: 48 08 d9 1c 24 51 52 ff 54 24 30 8b 4c 24 34 83
00d86710: c4 28 88 01 5e c3 cc cc cc cc cc cc cc cc cc cc
00d86720: 8b 44 24 10 8b 48 18 dd 40 10 8b 50 04 51 83 ec
00d86730: 08 d9 5c 24 04 dd 40 08 8b 00 d9 1c 24 52 50 ff
00d86740: 54 24 18 8b 4c 24 1c 83 c4 14 88 01 c3 cc cc cc
00d86750: 8b 44 24 10 dd 40 08 8b 10 51 8b 48 04 d9 1c 24
00d86760: 51 52 ff 54 24 10 8b 4c 24 14 83 c4 0c 88 01 c3
00d86770: 8b 44 24 0c 83 ec 0c 56 50 8d 4c 24 08 51 ff 54
00d86780: 24 1c 8b 70 04 8b 10 8b 4c 24 20 8b 09 8b 40 08
00d86790: 89 11 83 c4 08 89 71 04 89 41 08 5e 83 c4 0c c3
00d867a0: 8b 44 24 10 8b 48 28 8b 50 20 51 8b 48 18 52 8b
00d867b0: 50 10 51 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff
00d867c0: 54 24 20 8b 4c 24 24 83 c4 1c 88 01 c3 cc cc cc
00d867d0: 8b 44 24 10 8b 48 10 8b 50 0c 51 8b 48 08 52 8b
00d867e0: 50 04 8b 00 51 52 50 ff 54 24 18 83 c4 14 c3 cc
00d867f0: 8b 44 24 10 8b 48 10 56 51 8b 48 08 8b 31 83 ec
00d86800: 0c 8b d4 89 32 8b 71 04 8b 49 08 89 72 04 89 4a
00d86810: 08 8b 50 04 8b 00 52 50 ff 54 24 20 8b 4c 24 24
00d86820: 83 c4 18 66 89 01 5e c3 cc cc cc cc cc cc cc cc
00d86830: 8b 44 24 10 8b 48 24 dd 40 10 8b 50 20 51 8b 48
00d86840: 18 52 8b 50 08 8b 00 51 51 d9 1c 24 52 50 ff 54
00d86850: 24 1c 8b 4c 24 20 83 c4 18 88 01 c3 cc cc cc cc
00d86860: 8b 44 24 10 8b 48 20 dd 40 18 56 51 8b 48 10 8b
00d86870: 31 83 ec 14 8b d4 d9 5c 24 10 89 32 8b 71 04 89
00d86880: 72 04 8b 71 08 8b 49 0c 89 72 08 89 4a 0c 8b 50
00d86890: 08 8b 48 04 52 8b 10 51 52 ff 54 24 2c 83 c4 24
00d868a0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d868b0: 8b 44 24 10 0f b6 48 10 8b 50 08 8b 00 51 52 50
00d868c0: ff 54 24 10 8b 4c 24 14 83 c4 0c 88 01 c3 cc cc
00d868d0: 8b 44 24 10 8b 48 20 8b 50 18 51 0f b7 48 10 52
00d868e0: 8b 50 08 8b 00 51 52 50 ff 54 24 18 83 c4 14 c3
00d868f0: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 0c 8b cc 89
00d86900: 31 8b 70 04 8b 40 08 89 71 04 89 41 08 8b 4a 04
00d86910: 8b 12 51 52 ff 54 24 1c 83 c4 14 5e c3 cc cc cc
00d86920: 8b 44 24 10 8b 48 10 8b 50 08 51 8b 48 04 52 8b
00d86930: 10 51 52 ff 54 24 14 8b 4c 24 18 83 c4 10 89 01
00d86940: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86950: 8b 44 24 10 8b 48 38 8b 50 30 51 8b 48 2c 52 8b
00d86960: 50 28 51 8b 48 24 52 8b 50 20 51 8b 48 1c 52 8b
00d86970: 50 18 51 8b 48 14 52 8b 50 10 51 8b 48 08 52 8b
00d86980: 10 51 52 ff 54 24 34 8b 4c 24 38 83 c4 30 89 01
00d86990: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d869a0: 8b 44 24 10 dd 40 08 83 ec 08 d9 5c 24 04 dd 00
00d869b0: d9 1c 24 ff 54 24 0c 8b 4c 24 10 83 c4 08 88 01
00d869c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d869d0: 8b 44 24 10 8b 48 28 8b 50 20 51 8b 48 18 52 8b
00d869e0: 50 10 51 8b 48 08 52 8b 10 51 52 ff 54 24 1c 8b
00d869f0: 4c 24 20 83 c4 18 89 01 c3 cc cc cc cc cc cc cc
00d86a00: 8b 44 24 10 dd 00 83 ec 08 dd 1c 24 ff 54 24 0c
00d86a10: 8b 4c 24 10 dd 19 83 c4 08 c3 cc cc cc cc cc cc
00d86a20: 8b 44 24 10 8b 48 08 8b 10 8b 44 24 0c 51 52 50
00d86a30: ff 54 24 10 8b 4c 24 14 83 c4 0c 88 01 c3 cc cc
00d86a40: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d86a50: 50 08 51 8b 48 04 52 8b 10 51 52 ff 54 24 1c 83
00d86a60: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86a70: 8b 54 24 10 8b 42 08 dd 42 10 56 8b 30 83 ec 10
00d86a80: 8b cc d9 5c 24 0c 89 31 8b 70 04 8b 40 08 89 71
00d86a90: 04 89 41 08 8b 0a 51 ff 54 24 1c 8b 54 24 20 83
00d86aa0: c4 14 89 02 5e c3 cc cc cc cc cc cc cc cc cc cc
00d86ab0: 8b 44 24 10 8b 48 04 8b 10 83 ec 60 56 57 51 52
00d86ac0: 8d 44 24 40 50 ff 54 24 78 8b 54 24 7c b9 0c 00
00d86ad0: 00 00 8b f0 8d 7c 24 14 f3 a5 8b 3a 83 c4 0c b9
00d86ae0: 0c 00 00 00 8d 74 24 08 f3 a5 5f 5e 83 c4 60 c3
00d86af0: 8b 44 24 10 8b 48 18 8b 50 10 51 8b 48 0c 52 8b
00d86b00: 50 08 51 8b 48 04 52 8b 10 51 52 ff 54 24 1c 83
00d86b10: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86b20: 8b 44 24 10 8b 48 20 8b 50 18 51 8b 48 10 52 8b
00d86b30: 50 08 51 8b 48 04 52 8b 10 51 52 ff 54 24 1c 8b
00d86b40: 4c 24 20 83 c4 18 89 01 c3 cc cc cc cc cc cc cc
00d86b50: 8b 44 24 10 8b 48 04 8b 10 83 ec 0c 56 51 52 8d
00d86b60: 44 24 0c 50 ff 54 24 20 8b 70 04 8b 10 8b 4c 24
00d86b70: 24 8b 09 8b 40 08 89 11 83 c4 0c 89 71 04 89 41
00d86b80: 08 5e 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc
00d86b90: 8b 44 24 10 8b 48 0c 8b 50 08 83 ec 10 56 57 51
00d86ba0: 8b 48 04 52 8b 10 51 52 8d 44 24 18 50 ff 54 24
00d86bb0: 30 8b 70 04 8b 78 08 8b 10 8b 40 0c 8b 4c 24 34
00d86bc0: 8b 09 89 11 89 71 04 83 c4 14 89 79 08 5f 89 41
00d86bd0: 0c 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc
00d86be0: 8b 44 24 10 8b 48 08 8b 10 51 52 ff 54 24 0c 8b
00d86bf0: 4c 24 10 83 c4 08 88 01 c3 cc cc cc cc cc cc cc
00d86c00: ff 64 24 04 cc cc cc cc cc cc cc cc cc cc cc cc
00d86c10: 8b 44 24 10 8b 48 48 8b 50 40 51 8b 48 38 52 8b
00d86c20: 50 30 51 8b 48 28 52 8b 50 20 51 8b 48 18 52 8b
00d86c30: 50 10 51 8b 48 08 52 8b 50 04 8b 00 51 52 50 ff
00d86c40: 54 24 30 8b 4c 24 34 83 c4 2c 89 01 c3 cc cc cc
00d86c50: 8b 44 24 10 8b 48 60 8b 50 58 51 8b 48 50 52 8b
00d86c60: 50 48 51 8b 48 40 52 8b 50 38 51 8b 48 30 52 8b
00d86c70: 50 28 51 8b 48 20 52 8b 50 18 51 8b 48 10 52 8b
00d86c80: 50 0c 51 8b 48 08 8b 00 52 8b 10 51 83 ec 10 8b
00d86c90: cc 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89
00d86ca0: 51 08 89 41 0c ff 54 24 48 8b 4c 24 4c 83 c4 44
00d86cb0: 89 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86cc0: 8b 54 24 10 8b 42 08 56 8b 30 83 ec 0c 8b cc 89
00d86cd0: 31 8b 70 04 8b 40 08 89 71 04 89 41 08 8b 0a 51
00d86ce0: ff 54 24 18 8b 54 24 1c 83 c4 10 88 02 5e c3 cc
00d86cf0: 8b 44 24 10 8b 48 10 56 51 8b 48 08 8b 31 83 ec
00d86d00: 0c 8b d4 89 32 8b 71 04 8b 49 08 89 72 04 89 4a
00d86d10: 08 8b 50 04 8b 00 52 50 ff 54 24 20 83 c4 18 5e
00d86d20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86d30: 8b 44 24 10 8b 48 10 8b 50 08 8b 00 51 52 50 ff
00d86d40: 54 24 10 8b 4c 24 14 83 c4 0c 89 01 c3 cc cc cc
00d86d50: 8b 44 24 10 8b 48 08 8b 10 51 52 ff 54 24 0c 8b
00d86d60: 44 24 10 d9 18 83 c4 08 c3 cc cc cc cc cc cc cc
00d86d70: 8b 44 24 10 8b 48 14 8b 50 10 51 8b 48 08 52 8b
00d86d80: 10 51 52 ff 54 24 14 83 c4 10 c3 cc cc cc cc cc
00d86d90: 8b 44 24 10 8b 48 30 8b 50 28 51 8b 48 20 52 8b
00d86da0: 50 18 51 8b 48 10 52 8b 50 08 8b 00 51 52 50 ff
00d86db0: 54 24 20 83 c4 1c c3 cc cc cc cc cc cc cc cc cc
00d86dc0: 8b 44 24 10 8b 48 10 56 8b 31 83 ec 0c 8b d4 89
00d86dd0: 32 8b 71 04 8b 49 08 89 72 04 89 4a 08 8b 48 08
00d86de0: 8b 31 83 ec 0c 8b d4 89 32 8b 71 04 8b 49 08 89
00d86df0: 72 04 89 4a 08 8b 50 04 8b 00 52 50 ff 54 24 28
00d86e00: 8b 4c 24 2c 83 c4 20 88 01 5e c3 cc cc cc cc cc
00d86e10: 8b 44 24 10 8b 48 20 8b 50 18 56 51 8b 48 10 8b
00d86e20: 31 52 83 ec 0c 8b d4 89 32 8b 71 04 8b 49 08 89
00d86e30: 72 04 89 4a 08 8b 48 08 8b 31 83 ec 0c 8b d4 89
00d86e40: 32 8b 71 04 8b 49 08 89 72 04 89 4a 08 8b 50 04
00d86e50: 8b 00 52 50 ff 54 24 30 8b 4c 24 34 83 c4 28 88
00d86e60: 01 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
00d86e70: 8b 44 24 10 8b 48 04 8b 10 81 ec 80 00 00 00 56

LINEAR DISASSEMBLY
00d84e80 <.text+0x983e80>:
  d84e80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d84e84:	c7 00 48 d6 08 01                               	mov    DWORD PTR [eax],0x108d648
  d84e8a:	c2 04 00                                        	ret    0x4
  d84e8d:	cc                                              	int3
  d84e8e:	cc                                              	int3
  d84e8f:	cc                                              	int3
  d84e90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84e94:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d84e97:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84e9a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d84e9c:	51                                              	push   ecx
  d84e9d:	52                                              	push   edx
  d84e9e:	50                                              	push   eax
  d84e9f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d84ea3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d84ea7:	83 c4 0c                                        	add    esp,0xc
  d84eaa:	88 01                                           	mov    BYTE PTR [ecx],al
  d84eac:	c3                                              	ret
  d84ead:	cc                                              	int3
  d84eae:	cc                                              	int3
  d84eaf:	cc                                              	int3
  d84eb0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84eb4:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d84eb7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84eba:	51                                              	push   ecx
  d84ebb:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d84ebe:	52                                              	push   edx
  d84ebf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84ec1:	51                                              	push   ecx
  d84ec2:	52                                              	push   edx
  d84ec3:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d84ec7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d84ecb:	83 c4 10                                        	add    esp,0x10
  d84ece:	88 01                                           	mov    BYTE PTR [ecx],al
  d84ed0:	c3                                              	ret
  d84ed1:	cc                                              	int3
  d84ed2:	cc                                              	int3
  d84ed3:	cc                                              	int3
  d84ed4:	cc                                              	int3
  d84ed5:	cc                                              	int3
  d84ed6:	cc                                              	int3
  d84ed7:	cc                                              	int3
  d84ed8:	cc                                              	int3
  d84ed9:	cc                                              	int3
  d84eda:	cc                                              	int3
  d84edb:	cc                                              	int3
  d84edc:	cc                                              	int3
  d84edd:	cc                                              	int3
  d84ede:	cc                                              	int3
  d84edf:	cc                                              	int3
  d84ee0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84ee4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d84ee6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84ee8:	83 ec 10                                        	sub    esp,0x10
  d84eeb:	8b cc                                           	mov    ecx,esp
  d84eed:	89 11                                           	mov    DWORD PTR [ecx],edx
  d84eef:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d84ef2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d84ef5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84ef8:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d84efb:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d84efe:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d84f01:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d84f05:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d84f09:	83 c4 10                                        	add    esp,0x10
  d84f0c:	88 01                                           	mov    BYTE PTR [ecx],al
  d84f0e:	c3                                              	ret
  d84f0f:	cc                                              	int3
  d84f10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84f14:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d84f16:	51                                              	push   ecx
  d84f17:	ff 54 24 08                                     	call   DWORD PTR [esp+0x8]
  d84f1b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  d84f1f:	dd 1a                                           	fstp   QWORD PTR [edx]
  d84f21:	83 c4 04                                        	add    esp,0x4
  d84f24:	c3                                              	ret
  d84f25:	cc                                              	int3
  d84f26:	cc                                              	int3
  d84f27:	cc                                              	int3
  d84f28:	cc                                              	int3
  d84f29:	cc                                              	int3
  d84f2a:	cc                                              	int3
  d84f2b:	cc                                              	int3
  d84f2c:	cc                                              	int3
  d84f2d:	cc                                              	int3
  d84f2e:	cc                                              	int3
  d84f2f:	cc                                              	int3
  d84f30:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84f34:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d84f37:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d84f3a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84f3c:	83 ec 08                                        	sub    esp,0x8
  d84f3f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d84f43:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d84f46:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d84f49:	51                                              	push   ecx
  d84f4a:	52                                              	push   edx
  d84f4b:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d84f4f:	83 c4 10                                        	add    esp,0x10
  d84f52:	c3                                              	ret
  d84f53:	cc                                              	int3
  d84f54:	cc                                              	int3
  d84f55:	cc                                              	int3
  d84f56:	cc                                              	int3
  d84f57:	cc                                              	int3
  d84f58:	cc                                              	int3
  d84f59:	cc                                              	int3
  d84f5a:	cc                                              	int3
  d84f5b:	cc                                              	int3
  d84f5c:	cc                                              	int3
  d84f5d:	cc                                              	int3
  d84f5e:	cc                                              	int3
  d84f5f:	cc                                              	int3
  d84f60:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84f64:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d84f67:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d84f6a:	51                                              	push   ecx
  d84f6b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d84f6e:	52                                              	push   edx
  d84f6f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d84f72:	51                                              	push   ecx
  d84f73:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d84f76:	52                                              	push   edx
  d84f77:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84f79:	51                                              	push   ecx
  d84f7a:	52                                              	push   edx
  d84f7b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d84f7f:	83 c4 18                                        	add    esp,0x18
  d84f82:	c3                                              	ret
  d84f83:	cc                                              	int3
  d84f84:	cc                                              	int3
  d84f85:	cc                                              	int3
  d84f86:	cc                                              	int3
  d84f87:	cc                                              	int3
  d84f88:	cc                                              	int3
  d84f89:	cc                                              	int3
  d84f8a:	cc                                              	int3
  d84f8b:	cc                                              	int3
  d84f8c:	cc                                              	int3
  d84f8d:	cc                                              	int3
  d84f8e:	cc                                              	int3
  d84f8f:	cc                                              	int3
  d84f90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84f94:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d84f97:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d84f9a:	51                                              	push   ecx
  d84f9b:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d84f9e:	52                                              	push   edx
  d84f9f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84fa2:	51                                              	push   ecx
  d84fa3:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d84fa6:	52                                              	push   edx
  d84fa7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84fa9:	51                                              	push   ecx
  d84faa:	52                                              	push   edx
  d84fab:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d84faf:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d84fb3:	83 c4 18                                        	add    esp,0x18
  d84fb6:	89 01                                           	mov    DWORD PTR [ecx],eax
  d84fb8:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d84fbb:	c3                                              	ret
  d84fbc:	cc                                              	int3
  d84fbd:	cc                                              	int3
  d84fbe:	cc                                              	int3
  d84fbf:	cc                                              	int3
  d84fc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84fc4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d84fc7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d84fc9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  d84fcd:	51                                              	push   ecx
  d84fce:	52                                              	push   edx
  d84fcf:	50                                              	push   eax
  d84fd0:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d84fd4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d84fd8:	83 c4 0c                                        	add    esp,0xc
  d84fdb:	89 01                                           	mov    DWORD PTR [ecx],eax
  d84fdd:	c3                                              	ret
  d84fde:	cc                                              	int3
  d84fdf:	cc                                              	int3
  d84fe0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d84fe4:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d84fe7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d84fea:	51                                              	push   ecx
  d84feb:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d84fee:	52                                              	push   edx
  d84fef:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d84ff2:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d84ff4:	51                                              	push   ecx
  d84ff5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d84ff9:	52                                              	push   edx
  d84ffa:	50                                              	push   eax
  d84ffb:	51                                              	push   ecx
  d84ffc:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d85000:	83 c4 18                                        	add    esp,0x18
  d85003:	c3                                              	ret
  d85004:	cc                                              	int3
  d85005:	cc                                              	int3
  d85006:	cc                                              	int3
  d85007:	cc                                              	int3
  d85008:	cc                                              	int3
  d85009:	cc                                              	int3
  d8500a:	cc                                              	int3
  d8500b:	cc                                              	int3
  d8500c:	cc                                              	int3
  d8500d:	cc                                              	int3
  d8500e:	cc                                              	int3
  d8500f:	cc                                              	int3
  d85010:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85014:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85017:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d8501a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8501c:	51                                              	push   ecx
  d8501d:	52                                              	push   edx
  d8501e:	50                                              	push   eax
  d8501f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85023:	83 c4 0c                                        	add    esp,0xc
  d85026:	c3                                              	ret
  d85027:	cc                                              	int3
  d85028:	cc                                              	int3
  d85029:	cc                                              	int3
  d8502a:	cc                                              	int3
  d8502b:	cc                                              	int3
  d8502c:	cc                                              	int3
  d8502d:	cc                                              	int3
  d8502e:	cc                                              	int3
  d8502f:	cc                                              	int3
  d85030:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85034:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85037:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d8503a:	51                                              	push   ecx
  d8503b:	83 ec 08                                        	sub    esp,0x8
  d8503e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85042:	dd 00                                           	fld    QWORD PTR [eax]
  d85044:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85047:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d8504b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  d8504f:	83 c4 0c                                        	add    esp,0xc
  d85052:	89 02                                           	mov    DWORD PTR [edx],eax
  d85054:	c3                                              	ret
  d85055:	cc                                              	int3
  d85056:	cc                                              	int3
  d85057:	cc                                              	int3
  d85058:	cc                                              	int3
  d85059:	cc                                              	int3
  d8505a:	cc                                              	int3
  d8505b:	cc                                              	int3
  d8505c:	cc                                              	int3
  d8505d:	cc                                              	int3
  d8505e:	cc                                              	int3
  d8505f:	cc                                              	int3
  d85060:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85064:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85067:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85069:	51                                              	push   ecx
  d8506a:	52                                              	push   edx
  d8506b:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d8506f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d85073:	83 c4 08                                        	add    esp,0x8
  d85076:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85078:	c3                                              	ret
  d85079:	cc                                              	int3
  d8507a:	cc                                              	int3
  d8507b:	cc                                              	int3
  d8507c:	cc                                              	int3
  d8507d:	cc                                              	int3
  d8507e:	cc                                              	int3
  d8507f:	cc                                              	int3
  d85080:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85084:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85087:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d8508a:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d8508d:	51                                              	push   ecx
  d8508e:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85091:	52                                              	push   edx
  d85092:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85094:	51                                              	push   ecx
  d85095:	51                                              	push   ecx
  d85096:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85099:	52                                              	push   edx
  d8509a:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d8509e:	83 c4 14                                        	add    esp,0x14
  d850a1:	c3                                              	ret
  d850a2:	cc                                              	int3
  d850a3:	cc                                              	int3
  d850a4:	cc                                              	int3
  d850a5:	cc                                              	int3
  d850a6:	cc                                              	int3
  d850a7:	cc                                              	int3
  d850a8:	cc                                              	int3
  d850a9:	cc                                              	int3
  d850aa:	cc                                              	int3
  d850ab:	cc                                              	int3
  d850ac:	cc                                              	int3
  d850ad:	cc                                              	int3
  d850ae:	cc                                              	int3
  d850af:	cc                                              	int3
  d850b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d850b4:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d850b7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d850ba:	56                                              	push   esi
  d850bb:	51                                              	push   ecx
  d850bc:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d850bf:	52                                              	push   edx
  d850c0:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d850c3:	51                                              	push   ecx
  d850c4:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d850c7:	52                                              	push   edx
  d850c8:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d850cb:	51                                              	push   ecx
  d850cc:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d850cf:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d850d1:	52                                              	push   edx
  d850d2:	83 ec 10                                        	sub    esp,0x10
  d850d5:	8b d4                                           	mov    edx,esp
  d850d7:	89 32                                           	mov    DWORD PTR [edx],esi
  d850d9:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d850dc:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d850df:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d850e2:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d850e5:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d850e8:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d850eb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d850ed:	52                                              	push   edx
  d850ee:	ff 54 24 34                                     	call   DWORD PTR [esp+0x34]
  d850f2:	83 c4 2c                                        	add    esp,0x2c
  d850f5:	5e                                              	pop    esi
  d850f6:	c3                                              	ret
  d850f7:	cc                                              	int3
  d850f8:	cc                                              	int3
  d850f9:	cc                                              	int3
  d850fa:	cc                                              	int3
  d850fb:	cc                                              	int3
  d850fc:	cc                                              	int3
  d850fd:	cc                                              	int3
  d850fe:	cc                                              	int3
  d850ff:	cc                                              	int3
  d85100:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85104:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  d85107:	56                                              	push   esi
  d85108:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8510a:	83 ec 10                                        	sub    esp,0x10
  d8510d:	8b cc                                           	mov    ecx,esp
  d8510f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85111:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85114:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85117:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8511a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8511d:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d85120:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85123:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  d85126:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d85129:	51                                              	push   ecx
  d8512a:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d8512c:	50                                              	push   eax
  d8512d:	51                                              	push   ecx
  d8512e:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85132:	83 c4 1c                                        	add    esp,0x1c
  d85135:	5e                                              	pop    esi
  d85136:	c3                                              	ret
  d85137:	cc                                              	int3
  d85138:	cc                                              	int3
  d85139:	cc                                              	int3
  d8513a:	cc                                              	int3
  d8513b:	cc                                              	int3
  d8513c:	cc                                              	int3
  d8513d:	cc                                              	int3
  d8513e:	cc                                              	int3
  d8513f:	cc                                              	int3
  d85140:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85144:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85147:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d8514a:	51                                              	push   ecx
  d8514b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d8514e:	52                                              	push   edx
  d8514f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d85152:	51                                              	push   ecx
  d85153:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85156:	52                                              	push   edx
  d85157:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85159:	51                                              	push   ecx
  d8515a:	52                                              	push   edx
  d8515b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d8515f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d85163:	83 c4 18                                        	add    esp,0x18
  d85166:	88 01                                           	mov    BYTE PTR [ecx],al
  d85168:	c3                                              	ret
  d85169:	cc                                              	int3
  d8516a:	cc                                              	int3
  d8516b:	cc                                              	int3
  d8516c:	cc                                              	int3
  d8516d:	cc                                              	int3
  d8516e:	cc                                              	int3
  d8516f:	cc                                              	int3
  d85170:	ff 54 24 04                                     	call   DWORD PTR [esp+0x4]
  d85174:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  d85178:	dd 18                                           	fstp   QWORD PTR [eax]
  d8517a:	c3                                              	ret
  d8517b:	cc                                              	int3
  d8517c:	cc                                              	int3
  d8517d:	cc                                              	int3
  d8517e:	cc                                              	int3
  d8517f:	cc                                              	int3
  d85180:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85184:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d85187:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d8518a:	51                                              	push   ecx
  d8518b:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d8518e:	52                                              	push   edx
  d8518f:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d85192:	51                                              	push   ecx
  d85193:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85196:	52                                              	push   edx
  d85197:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d8519a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8519c:	51                                              	push   ecx
  d8519d:	52                                              	push   edx
  d8519e:	50                                              	push   eax
  d8519f:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d851a3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d851a7:	83 c4 1c                                        	add    esp,0x1c
  d851aa:	89 01                                           	mov    DWORD PTR [ecx],eax
  d851ac:	c3                                              	ret
  d851ad:	cc                                              	int3
  d851ae:	cc                                              	int3
  d851af:	cc                                              	int3
  d851b0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d851b4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d851b7:	56                                              	push   esi
  d851b8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d851ba:	83 ec 0c                                        	sub    esp,0xc
  d851bd:	8b cc                                           	mov    ecx,esp
  d851bf:	89 31                                           	mov    DWORD PTR [ecx],esi
  d851c1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d851c4:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d851c7:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d851ca:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d851cd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  d851cf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d851d1:	83 ec 0c                                        	sub    esp,0xc
  d851d4:	8b cc                                           	mov    ecx,esp
  d851d6:	89 11                                           	mov    DWORD PTR [ecx],edx
  d851d8:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d851db:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d851de:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d851e1:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d851e4:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d851e8:	83 c4 18                                        	add    esp,0x18
  d851eb:	5e                                              	pop    esi
  d851ec:	c3                                              	ret
  d851ed:	cc                                              	int3
  d851ee:	cc                                              	int3
  d851ef:	cc                                              	int3
  d851f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d851f4:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d851f7:	56                                              	push   esi
  d851f8:	51                                              	push   ecx
  d851f9:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d851fc:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d851fe:	83 ec 0c                                        	sub    esp,0xc
  d85201:	8b d4                                           	mov    edx,esp
  d85203:	89 32                                           	mov    DWORD PTR [edx],esi
  d85205:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85208:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d8520b:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d8520e:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d85211:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d85214:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85217:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d85219:	52                                              	push   edx
  d8521a:	83 ec 0c                                        	sub    esp,0xc
  d8521d:	8b d4                                           	mov    edx,esp
  d8521f:	89 32                                           	mov    DWORD PTR [edx],esi
  d85221:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85224:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d85227:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d8522a:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d8522d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d85230:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85233:	52                                              	push   edx
  d85234:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85237:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85239:	51                                              	push   ecx
  d8523a:	52                                              	push   edx
  d8523b:	50                                              	push   eax
  d8523c:	ff 54 24 38                                     	call   DWORD PTR [esp+0x38]
  d85240:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  d85244:	83 c4 30                                        	add    esp,0x30
  d85247:	88 01                                           	mov    BYTE PTR [ecx],al
  d85249:	5e                                              	pop    esi
  d8524a:	c3                                              	ret
  d8524b:	cc                                              	int3
  d8524c:	cc                                              	int3
  d8524d:	cc                                              	int3
  d8524e:	cc                                              	int3
  d8524f:	cc                                              	int3
  d85250:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85254:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85257:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d8525a:	56                                              	push   esi
  d8525b:	51                                              	push   ecx
  d8525c:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d8525f:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d85261:	52                                              	push   edx
  d85262:	83 ec 10                                        	sub    esp,0x10
  d85265:	8b d4                                           	mov    edx,esp
  d85267:	89 32                                           	mov    DWORD PTR [edx],esi
  d85269:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d8526c:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d8526f:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d85272:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d85275:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d85278:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d8527b:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d8527e:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85281:	52                                              	push   edx
  d85282:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85284:	51                                              	push   ecx
  d85285:	52                                              	push   edx
  d85286:	ff 54 24 2c                                     	call   DWORD PTR [esp+0x2c]
  d8528a:	83 c4 24                                        	add    esp,0x24
  d8528d:	5e                                              	pop    esi
  d8528e:	c3                                              	ret
  d8528f:	cc                                              	int3
  d85290:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85294:	0f b7 48 08                                     	movzx  ecx,WORD PTR [eax+0x8]
  d85298:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d8529a:	51                                              	push   ecx
  d8529b:	52                                              	push   edx
  d8529c:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d852a0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d852a4:	83 c4 08                                        	add    esp,0x8
  d852a7:	89 01                                           	mov    DWORD PTR [ecx],eax
  d852a9:	c3                                              	ret
  d852aa:	cc                                              	int3
  d852ab:	cc                                              	int3
  d852ac:	cc                                              	int3
  d852ad:	cc                                              	int3
  d852ae:	cc                                              	int3
  d852af:	cc                                              	int3
  d852b0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d852b4:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  d852b7:	56                                              	push   esi
  d852b8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d852ba:	83 ec 10                                        	sub    esp,0x10
  d852bd:	8b cc                                           	mov    ecx,esp
  d852bf:	89 31                                           	mov    DWORD PTR [ecx],esi
  d852c1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d852c4:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d852c7:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d852ca:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d852cd:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d852d0:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d852d3:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  d852d6:	8b 12                                           	mov    edx,DWORD PTR [edx]
  d852d8:	51                                              	push   ecx
  d852d9:	52                                              	push   edx
  d852da:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d852de:	83 c4 18                                        	add    esp,0x18
  d852e1:	5e                                              	pop    esi
  d852e2:	c3                                              	ret
  d852e3:	cc                                              	int3
  d852e4:	cc                                              	int3
  d852e5:	cc                                              	int3
  d852e6:	cc                                              	int3
  d852e7:	cc                                              	int3
  d852e8:	cc                                              	int3
  d852e9:	cc                                              	int3
  d852ea:	cc                                              	int3
  d852eb:	cc                                              	int3
  d852ec:	cc                                              	int3
  d852ed:	cc                                              	int3
  d852ee:	cc                                              	int3
  d852ef:	cc                                              	int3
  d852f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d852f4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d852f7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d852fa:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d852fc:	81 ec 90 00 00 00                               	sub    esp,0x90
  d85302:	56                                              	push   esi
  d85303:	57                                              	push   edi
  d85304:	51                                              	push   ecx
  d85305:	52                                              	push   edx
  d85306:	50                                              	push   eax
  d85307:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  d8530b:	51                                              	push   ecx
  d8530c:	ff 94 24 ac 00 00 00                            	call   DWORD PTR [esp+0xac]
  d85313:	8b 94 24 b0 00 00 00                            	mov    edx,DWORD PTR [esp+0xb0]
  d8531a:	b9 12 00 00 00                                  	mov    ecx,0x12
  d8531f:	8b f0                                           	mov    esi,eax
  d85321:	8d 7c 24 18                                     	lea    edi,[esp+0x18]
  d85325:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d85327:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d85329:	83 c4 10                                        	add    esp,0x10
  d8532c:	b9 12 00 00 00                                  	mov    ecx,0x12
  d85331:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d85335:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d85337:	5f                                              	pop    edi
  d85338:	5e                                              	pop    esi
  d85339:	81 c4 90 00 00 00                               	add    esp,0x90
  d8533f:	c3                                              	ret
  d85340:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85344:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85347:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85349:	51                                              	push   ecx
  d8534a:	52                                              	push   edx
  d8534b:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d8534f:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85353:	d9 18                                           	fstp   DWORD PTR [eax]
  d85355:	83 c4 08                                        	add    esp,0x8
  d85358:	c3                                              	ret
  d85359:	cc                                              	int3
  d8535a:	cc                                              	int3
  d8535b:	cc                                              	int3
  d8535c:	cc                                              	int3
  d8535d:	cc                                              	int3
  d8535e:	cc                                              	int3
  d8535f:	cc                                              	int3
  d85360:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85364:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d85367:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d8536a:	51                                              	push   ecx
  d8536b:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  d8536e:	52                                              	push   edx
  d8536f:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d85372:	51                                              	push   ecx
  d85373:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85376:	52                                              	push   edx
  d85377:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d8537a:	51                                              	push   ecx
  d8537b:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d8537e:	52                                              	push   edx
  d8537f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85381:	51                                              	push   ecx
  d85382:	52                                              	push   edx
  d85383:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85387:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d8538b:	83 c4 20                                        	add    esp,0x20
  d8538e:	88 01                                           	mov    BYTE PTR [ecx],al
  d85390:	c3                                              	ret
  d85391:	cc                                              	int3
  d85392:	cc                                              	int3
  d85393:	cc                                              	int3
  d85394:	cc                                              	int3
  d85395:	cc                                              	int3
  d85396:	cc                                              	int3
  d85397:	cc                                              	int3
  d85398:	cc                                              	int3
  d85399:	cc                                              	int3
  d8539a:	cc                                              	int3
  d8539b:	cc                                              	int3
  d8539c:	cc                                              	int3
  d8539d:	cc                                              	int3
  d8539e:	cc                                              	int3
  d8539f:	cc                                              	int3
  d853a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d853a4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d853a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d853a9:	81 ec 80 00 00 00                               	sub    esp,0x80
  d853af:	56                                              	push   esi
  d853b0:	57                                              	push   edi
  d853b1:	51                                              	push   ecx
  d853b2:	52                                              	push   edx
  d853b3:	8d 44 24 50                                     	lea    eax,[esp+0x50]
  d853b7:	50                                              	push   eax
  d853b8:	ff 94 24 98 00 00 00                            	call   DWORD PTR [esp+0x98]
  d853bf:	8b 94 24 9c 00 00 00                            	mov    edx,DWORD PTR [esp+0x9c]
  d853c6:	b9 10 00 00 00                                  	mov    ecx,0x10
  d853cb:	8b f0                                           	mov    esi,eax
  d853cd:	8d 7c 24 14                                     	lea    edi,[esp+0x14]
  d853d1:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d853d3:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d853d5:	83 c4 0c                                        	add    esp,0xc
  d853d8:	b9 10 00 00 00                                  	mov    ecx,0x10
  d853dd:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d853e1:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d853e3:	5f                                              	pop    edi
  d853e4:	5e                                              	pop    esi
  d853e5:	81 c4 80 00 00 00                               	add    esp,0x80
  d853eb:	c3                                              	ret
  d853ec:	cc                                              	int3
  d853ed:	cc                                              	int3
  d853ee:	cc                                              	int3
  d853ef:	cc                                              	int3
  d853f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d853f4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d853f7:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d853fa:	51                                              	push   ecx
  d853fb:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d853fe:	52                                              	push   edx
  d853ff:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85402:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85404:	51                                              	push   ecx
  d85405:	52                                              	push   edx
  d85406:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85408:	83 ec 10                                        	sub    esp,0x10
  d8540b:	8b cc                                           	mov    ecx,esp
  d8540d:	89 11                                           	mov    DWORD PTR [ecx],edx
  d8540f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85412:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85415:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85418:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8541b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d8541e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85421:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85425:	83 c4 20                                        	add    esp,0x20
  d85428:	c3                                              	ret
  d85429:	cc                                              	int3
  d8542a:	cc                                              	int3
  d8542b:	cc                                              	int3
  d8542c:	cc                                              	int3
  d8542d:	cc                                              	int3
  d8542e:	cc                                              	int3
  d8542f:	cc                                              	int3
  d85430:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85434:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85437:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d8543a:	51                                              	push   ecx
  d8543b:	83 ec 08                                        	sub    esp,0x8
  d8543e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85442:	dd 00                                           	fld    QWORD PTR [eax]
  d85444:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85447:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d8544b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  d8544f:	83 c4 0c                                        	add    esp,0xc
  d85452:	88 02                                           	mov    BYTE PTR [edx],al
  d85454:	c3                                              	ret
  d85455:	cc                                              	int3
  d85456:	cc                                              	int3
  d85457:	cc                                              	int3
  d85458:	cc                                              	int3
  d85459:	cc                                              	int3
  d8545a:	cc                                              	int3
  d8545b:	cc                                              	int3
  d8545c:	cc                                              	int3
  d8545d:	cc                                              	int3
  d8545e:	cc                                              	int3
  d8545f:	cc                                              	int3
  d85460:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85464:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d85466:	51                                              	push   ecx
  d85467:	ff 54 24 08                                     	call   DWORD PTR [esp+0x8]
  d8546b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  d8546f:	83 c4 04                                        	add    esp,0x4
  d85472:	89 02                                           	mov    DWORD PTR [edx],eax
  d85474:	c3                                              	ret
  d85475:	cc                                              	int3
  d85476:	cc                                              	int3
  d85477:	cc                                              	int3
  d85478:	cc                                              	int3
  d85479:	cc                                              	int3
  d8547a:	cc                                              	int3
  d8547b:	cc                                              	int3
  d8547c:	cc                                              	int3
  d8547d:	cc                                              	int3
  d8547e:	cc                                              	int3
  d8547f:	cc                                              	int3
  d85480:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85484:	8b 48 50                                        	mov    ecx,DWORD PTR [eax+0x50]
  d85487:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  d8548a:	51                                              	push   ecx
  d8548b:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
  d8548e:	52                                              	push   edx
  d8548f:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  d85492:	51                                              	push   ecx
  d85493:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d85496:	52                                              	push   edx
  d85497:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d8549a:	51                                              	push   ecx
  d8549b:	8b 48 24                                        	mov    ecx,DWORD PTR [eax+0x24]
  d8549e:	52                                              	push   edx
  d8549f:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d854a2:	51                                              	push   ecx
  d854a3:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  d854a6:	52                                              	push   edx
  d854a7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d854aa:	51                                              	push   ecx
  d854ab:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d854ae:	52                                              	push   edx
  d854af:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d854b2:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d854b4:	51                                              	push   ecx
  d854b5:	52                                              	push   edx
  d854b6:	50                                              	push   eax
  d854b7:	ff 54 24 38                                     	call   DWORD PTR [esp+0x38]
  d854bb:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  d854bf:	83 c4 34                                        	add    esp,0x34
  d854c2:	88 01                                           	mov    BYTE PTR [ecx],al
  d854c4:	c3                                              	ret
  d854c5:	cc                                              	int3
  d854c6:	cc                                              	int3
  d854c7:	cc                                              	int3
  d854c8:	cc                                              	int3
  d854c9:	cc                                              	int3
  d854ca:	cc                                              	int3
  d854cb:	cc                                              	int3
  d854cc:	cc                                              	int3
  d854cd:	cc                                              	int3
  d854ce:	cc                                              	int3
  d854cf:	cc                                              	int3
  d854d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d854d4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d854d7:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  d854da:	83 ec 10                                        	sub    esp,0x10
  d854dd:	56                                              	push   esi
  d854de:	57                                              	push   edi
  d854df:	51                                              	push   ecx
  d854e0:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d854e3:	52                                              	push   edx
  d854e4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d854e7:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d854e9:	51                                              	push   ecx
  d854ea:	52                                              	push   edx
  d854eb:	50                                              	push   eax
  d854ec:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  d854f0:	51                                              	push   ecx
  d854f1:	ff 54 24 34                                     	call   DWORD PTR [esp+0x34]
  d854f5:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d854f8:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d854fb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d854fd:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85500:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  d85504:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d85506:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85508:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8550b:	83 c4 18                                        	add    esp,0x18
  d8550e:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d85511:	5f                                              	pop    edi
  d85512:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85515:	5e                                              	pop    esi
  d85516:	83 c4 10                                        	add    esp,0x10
  d85519:	c3                                              	ret
  d8551a:	cc                                              	int3
  d8551b:	cc                                              	int3
  d8551c:	cc                                              	int3
  d8551d:	cc                                              	int3
  d8551e:	cc                                              	int3
  d8551f:	cc                                              	int3
  d85520:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85524:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85527:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85529:	56                                              	push   esi
  d8552a:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8552d:	57                                              	push   edi
  d8552e:	51                                              	push   ecx
  d8552f:	83 ec 48                                        	sub    esp,0x48
  d85532:	8b fc                                           	mov    edi,esp
  d85534:	b9 12 00 00 00                                  	mov    ecx,0x12
  d85539:	52                                              	push   edx
  d8553a:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d8553c:	ff 54 24 5c                                     	call   DWORD PTR [esp+0x5c]
  d85540:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  d85544:	83 c4 50                                        	add    esp,0x50
  d85547:	5f                                              	pop    edi
  d85548:	88 01                                           	mov    BYTE PTR [ecx],al
  d8554a:	5e                                              	pop    esi
  d8554b:	c3                                              	ret
  d8554c:	cc                                              	int3
  d8554d:	cc                                              	int3
  d8554e:	cc                                              	int3
  d8554f:	cc                                              	int3
  d85550:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85554:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d85556:	83 ec 0c                                        	sub    esp,0xc
  d85559:	56                                              	push   esi
  d8555a:	51                                              	push   ecx
  d8555b:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  d8555f:	52                                              	push   edx
  d85560:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d85564:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85567:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85569:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d8556d:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d8556f:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85572:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85574:	83 c4 08                                        	add    esp,0x8
  d85577:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8557a:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8557d:	5e                                              	pop    esi
  d8557e:	83 c4 0c                                        	add    esp,0xc
  d85581:	c3                                              	ret
  d85582:	cc                                              	int3
  d85583:	cc                                              	int3
  d85584:	cc                                              	int3
  d85585:	cc                                              	int3
  d85586:	cc                                              	int3
  d85587:	cc                                              	int3
  d85588:	cc                                              	int3
  d85589:	cc                                              	int3
  d8558a:	cc                                              	int3
  d8558b:	cc                                              	int3
  d8558c:	cc                                              	int3
  d8558d:	cc                                              	int3
  d8558e:	cc                                              	int3
  d8558f:	cc                                              	int3
  d85590:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85594:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85597:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85599:	51                                              	push   ecx
  d8559a:	52                                              	push   edx
  d8559b:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d8559f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d855a3:	83 c4 08                                        	add    esp,0x8
  d855a6:	66 89 01                                        	mov    WORD PTR [ecx],ax
  d855a9:	c3                                              	ret
  d855aa:	cc                                              	int3
  d855ab:	cc                                              	int3
  d855ac:	cc                                              	int3
  d855ad:	cc                                              	int3
  d855ae:	cc                                              	int3
  d855af:	cc                                              	int3
  d855b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d855b4:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d855b7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d855b9:	51                                              	push   ecx
  d855ba:	52                                              	push   edx
  d855bb:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d855bf:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d855c3:	83 c4 08                                        	add    esp,0x8
  d855c6:	88 01                                           	mov    BYTE PTR [ecx],al
  d855c8:	c3                                              	ret
  d855c9:	cc                                              	int3
  d855ca:	cc                                              	int3
  d855cb:	cc                                              	int3
  d855cc:	cc                                              	int3
  d855cd:	cc                                              	int3
  d855ce:	cc                                              	int3
  d855cf:	cc                                              	int3
  d855d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d855d4:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d855d7:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d855da:	51                                              	push   ecx
  d855db:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  d855de:	52                                              	push   edx
  d855df:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d855e2:	51                                              	push   ecx
  d855e3:	8b 48 24                                        	mov    ecx,DWORD PTR [eax+0x24]
  d855e6:	52                                              	push   edx
  d855e7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d855ea:	51                                              	push   ecx
  d855eb:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  d855ee:	52                                              	push   edx
  d855ef:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d855f2:	51                                              	push   ecx
  d855f3:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d855f6:	52                                              	push   edx
  d855f7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d855fa:	51                                              	push   ecx
  d855fb:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d855fe:	52                                              	push   edx
  d855ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85601:	51                                              	push   ecx
  d85602:	52                                              	push   edx
  d85603:	ff 54 24 34                                     	call   DWORD PTR [esp+0x34]
  d85607:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  d8560b:	83 c4 30                                        	add    esp,0x30
  d8560e:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85610:	c3                                              	ret
  d85611:	cc                                              	int3
  d85612:	cc                                              	int3
  d85613:	cc                                              	int3
  d85614:	cc                                              	int3
  d85615:	cc                                              	int3
  d85616:	cc                                              	int3
  d85617:	cc                                              	int3
  d85618:	cc                                              	int3
  d85619:	cc                                              	int3
  d8561a:	cc                                              	int3
  d8561b:	cc                                              	int3
  d8561c:	cc                                              	int3
  d8561d:	cc                                              	int3
  d8561e:	cc                                              	int3
  d8561f:	cc                                              	int3
  d85620:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85624:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85627:	56                                              	push   esi
  d85628:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d8562a:	83 ec 0c                                        	sub    esp,0xc
  d8562d:	8b d4                                           	mov    edx,esp
  d8562f:	89 32                                           	mov    DWORD PTR [edx],esi
  d85631:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85634:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d85637:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d8563a:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d8563d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85640:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85643:	52                                              	push   edx
  d85644:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85646:	51                                              	push   ecx
  d85647:	52                                              	push   edx
  d85648:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d8564c:	83 c4 18                                        	add    esp,0x18
  d8564f:	5e                                              	pop    esi
  d85650:	c3                                              	ret
  d85651:	cc                                              	int3
  d85652:	cc                                              	int3
  d85653:	cc                                              	int3
  d85654:	cc                                              	int3
  d85655:	cc                                              	int3
  d85656:	cc                                              	int3
  d85657:	cc                                              	int3
  d85658:	cc                                              	int3
  d85659:	cc                                              	int3
  d8565a:	cc                                              	int3
  d8565b:	cc                                              	int3
  d8565c:	cc                                              	int3
  d8565d:	cc                                              	int3
  d8565e:	cc                                              	int3
  d8565f:	cc                                              	int3
  d85660:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85664:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d85667:	56                                              	push   esi
  d85668:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8566a:	83 ec 10                                        	sub    esp,0x10
  d8566d:	8b cc                                           	mov    ecx,esp
  d8566f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85671:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85674:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85677:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8567a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8567d:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d85680:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85683:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d85685:	51                                              	push   ecx
  d85686:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d8568a:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  d8568e:	83 c4 14                                        	add    esp,0x14
  d85691:	88 02                                           	mov    BYTE PTR [edx],al
  d85693:	5e                                              	pop    esi
  d85694:	c3                                              	ret
  d85695:	cc                                              	int3
  d85696:	cc                                              	int3
  d85697:	cc                                              	int3
  d85698:	cc                                              	int3
  d85699:	cc                                              	int3
  d8569a:	cc                                              	int3
  d8569b:	cc                                              	int3
  d8569c:	cc                                              	int3
  d8569d:	cc                                              	int3
  d8569e:	cc                                              	int3
  d8569f:	cc                                              	int3
  d856a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d856a4:	8b 48 3c                                        	mov    ecx,DWORD PTR [eax+0x3c]
  d856a7:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  d856aa:	51                                              	push   ecx
  d856ab:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d856ae:	52                                              	push   edx
  d856af:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d856b2:	51                                              	push   ecx
  d856b3:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d856b6:	52                                              	push   edx
  d856b7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d856ba:	51                                              	push   ecx
  d856bb:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d856be:	52                                              	push   edx
  d856bf:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d856c2:	51                                              	push   ecx
  d856c3:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d856c6:	52                                              	push   edx
  d856c7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d856c9:	51                                              	push   ecx
  d856ca:	52                                              	push   edx
  d856cb:	ff 54 24 2c                                     	call   DWORD PTR [esp+0x2c]
  d856cf:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  d856d3:	83 c4 28                                        	add    esp,0x28
  d856d6:	88 01                                           	mov    BYTE PTR [ecx],al
  d856d8:	c3                                              	ret
  d856d9:	cc                                              	int3
  d856da:	cc                                              	int3
  d856db:	cc                                              	int3
  d856dc:	cc                                              	int3
  d856dd:	cc                                              	int3
  d856de:	cc                                              	int3
  d856df:	cc                                              	int3
  d856e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d856e4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d856e7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d856ea:	51                                              	push   ecx
  d856eb:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d856ee:	52                                              	push   edx
  d856ef:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d856f2:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d856f4:	51                                              	push   ecx
  d856f5:	52                                              	push   edx
  d856f6:	50                                              	push   eax
  d856f7:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d856fb:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d856ff:	83 c4 14                                        	add    esp,0x14
  d85702:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85704:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85707:	c3                                              	ret
  d85708:	cc                                              	int3
  d85709:	cc                                              	int3
  d8570a:	cc                                              	int3
  d8570b:	cc                                              	int3
  d8570c:	cc                                              	int3
  d8570d:	cc                                              	int3
  d8570e:	cc                                              	int3
  d8570f:	cc                                              	int3
  d85710:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85714:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85717:	83 ec 0c                                        	sub    esp,0xc
  d8571a:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  d8571e:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85721:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85725:	dd 00                                           	fld    QWORD PTR [eax]
  d85727:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d8572a:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d8572e:	83 c4 0c                                        	add    esp,0xc
  d85731:	c3                                              	ret
  d85732:	cc                                              	int3
  d85733:	cc                                              	int3
  d85734:	cc                                              	int3
  d85735:	cc                                              	int3
  d85736:	cc                                              	int3
  d85737:	cc                                              	int3
  d85738:	cc                                              	int3
  d85739:	cc                                              	int3
  d8573a:	cc                                              	int3
  d8573b:	cc                                              	int3
  d8573c:	cc                                              	int3
  d8573d:	cc                                              	int3
  d8573e:	cc                                              	int3
  d8573f:	cc                                              	int3
  d85740:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85744:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85747:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85749:	83 ec 10                                        	sub    esp,0x10
  d8574c:	56                                              	push   esi
  d8574d:	57                                              	push   edi
  d8574e:	51                                              	push   ecx
  d8574f:	52                                              	push   edx
  d85750:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  d85754:	50                                              	push   eax
  d85755:	ff 54 24 28                                     	call   DWORD PTR [esp+0x28]
  d85759:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d8575c:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d8575f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85761:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85764:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  d85768:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d8576a:	89 11                                           	mov    DWORD PTR [ecx],edx
  d8576c:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8576f:	83 c4 0c                                        	add    esp,0xc
  d85772:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d85775:	5f                                              	pop    edi
  d85776:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85779:	5e                                              	pop    esi
  d8577a:	83 c4 10                                        	add    esp,0x10
  d8577d:	c3                                              	ret
  d8577e:	cc                                              	int3
  d8577f:	cc                                              	int3
  d85780:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85784:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85787:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d8578a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8578c:	51                                              	push   ecx
  d8578d:	52                                              	push   edx
  d8578e:	50                                              	push   eax
  d8578f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85793:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d85797:	d9 19                                           	fstp   DWORD PTR [ecx]
  d85799:	83 c4 0c                                        	add    esp,0xc
  d8579c:	c3                                              	ret
  d8579d:	cc                                              	int3
  d8579e:	cc                                              	int3
  d8579f:	cc                                              	int3
  d857a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d857a4:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d857a7:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d857aa:	51                                              	push   ecx
  d857ab:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d857ae:	52                                              	push   edx
  d857af:	0f b6 50 20                                     	movzx  edx,BYTE PTR [eax+0x20]
  d857b3:	51                                              	push   ecx
  d857b4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d857b7:	52                                              	push   edx
  d857b8:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d857bb:	51                                              	push   ecx
  d857bc:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d857bf:	52                                              	push   edx
  d857c0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d857c3:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d857c5:	51                                              	push   ecx
  d857c6:	52                                              	push   edx
  d857c7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d857c9:	83 ec 10                                        	sub    esp,0x10
  d857cc:	8b cc                                           	mov    ecx,esp
  d857ce:	89 11                                           	mov    DWORD PTR [ecx],edx
  d857d0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d857d3:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d857d6:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d857d9:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d857dc:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d857df:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d857e2:	ff 54 24 34                                     	call   DWORD PTR [esp+0x34]
  d857e6:	83 c4 30                                        	add    esp,0x30
  d857e9:	c3                                              	ret
  d857ea:	cc                                              	int3
  d857eb:	cc                                              	int3
  d857ec:	cc                                              	int3
  d857ed:	cc                                              	int3
  d857ee:	cc                                              	int3
  d857ef:	cc                                              	int3
  d857f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d857f4:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d857f7:	81 ec 90 00 00 00                               	sub    esp,0x90
  d857fd:	56                                              	push   esi
  d857fe:	57                                              	push   edi
  d857ff:	83 ec 0c                                        	sub    esp,0xc
  d85802:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  d85806:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  d8580a:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d8580d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85811:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85814:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85816:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85819:	50                                              	push   eax
  d8581a:	51                                              	push   ecx
  d8581b:	ff 94 24 b0 00 00 00                            	call   DWORD PTR [esp+0xb0]
  d85822:	8b 94 24 b4 00 00 00                            	mov    edx,DWORD PTR [esp+0xb4]
  d85829:	b9 12 00 00 00                                  	mov    ecx,0x12
  d8582e:	8b f0                                           	mov    esi,eax
  d85830:	8d 7c 24 1c                                     	lea    edi,[esp+0x1c]
  d85834:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d85836:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d85838:	83 c4 14                                        	add    esp,0x14
  d8583b:	b9 12 00 00 00                                  	mov    ecx,0x12
  d85840:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d85844:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d85846:	5f                                              	pop    edi
  d85847:	5e                                              	pop    esi
  d85848:	81 c4 90 00 00 00                               	add    esp,0x90
  d8584e:	c3                                              	ret
  d8584f:	cc                                              	int3
  d85850:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85854:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d85857:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d8585a:	51                                              	push   ecx
  d8585b:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d8585e:	52                                              	push   edx
  d8585f:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  d85862:	51                                              	push   ecx
  d85863:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85866:	52                                              	push   edx
  d85867:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d8586a:	51                                              	push   ecx
  d8586b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8586e:	52                                              	push   edx
  d8586f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85871:	51                                              	push   ecx
  d85872:	52                                              	push   edx
  d85873:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85877:	83 c4 20                                        	add    esp,0x20
  d8587a:	c3                                              	ret
  d8587b:	cc                                              	int3
  d8587c:	cc                                              	int3
  d8587d:	cc                                              	int3
  d8587e:	cc                                              	int3
  d8587f:	cc                                              	int3
  d85880:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85884:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d85887:	56                                              	push   esi
  d85888:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8588a:	83 ec 10                                        	sub    esp,0x10
  d8588d:	8b cc                                           	mov    ecx,esp
  d8588f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85891:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85894:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85897:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8589a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8589d:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d858a0:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d858a3:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d858a5:	51                                              	push   ecx
  d858a6:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d858aa:	83 c4 14                                        	add    esp,0x14
  d858ad:	5e                                              	pop    esi
  d858ae:	c3                                              	ret
  d858af:	cc                                              	int3
  d858b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d858b4:	8b 48 34                                        	mov    ecx,DWORD PTR [eax+0x34]
  d858b7:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d858ba:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d858bd:	56                                              	push   esi
  d858be:	51                                              	push   ecx
  d858bf:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d858c2:	52                                              	push   edx
  d858c3:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d858c6:	51                                              	push   ecx
  d858c7:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d858ca:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d858cc:	52                                              	push   edx
  d858cd:	83 ec 10                                        	sub    esp,0x10
  d858d0:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  d858d4:	8b d4                                           	mov    edx,esp
  d858d6:	89 32                                           	mov    DWORD PTR [edx],esi
  d858d8:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d858db:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d858de:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d858e1:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d858e4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d858e7:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d858e9:	83 ec 0c                                        	sub    esp,0xc
  d858ec:	8b d4                                           	mov    edx,esp
  d858ee:	89 32                                           	mov    DWORD PTR [edx],esi
  d858f0:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d858f3:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d858f6:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d858f9:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d858fc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d858ff:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85901:	52                                              	push   edx
  d85902:	50                                              	push   eax
  d85903:	ff 54 24 3c                                     	call   DWORD PTR [esp+0x3c]
  d85907:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  d8590b:	83 c4 34                                        	add    esp,0x34
  d8590e:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85910:	5e                                              	pop    esi
  d85911:	c3                                              	ret
  d85912:	cc                                              	int3
  d85913:	cc                                              	int3
  d85914:	cc                                              	int3
  d85915:	cc                                              	int3
  d85916:	cc                                              	int3
  d85917:	cc                                              	int3
  d85918:	cc                                              	int3
  d85919:	cc                                              	int3
  d8591a:	cc                                              	int3
  d8591b:	cc                                              	int3
  d8591c:	cc                                              	int3
  d8591d:	cc                                              	int3
  d8591e:	cc                                              	int3
  d8591f:	cc                                              	int3
  d85920:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85924:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d85927:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d8592a:	51                                              	push   ecx
  d8592b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d8592e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85931:	51                                              	push   ecx
  d85932:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85935:	52                                              	push   edx
  d85936:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85938:	51                                              	push   ecx
  d85939:	52                                              	push   edx
  d8593a:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d8593e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d85942:	83 c4 14                                        	add    esp,0x14
  d85945:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85947:	c3                                              	ret
  d85948:	cc                                              	int3
  d85949:	cc                                              	int3
  d8594a:	cc                                              	int3
  d8594b:	cc                                              	int3
  d8594c:	cc                                              	int3
  d8594d:	cc                                              	int3
  d8594e:	cc                                              	int3
  d8594f:	cc                                              	int3
  d85950:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85954:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d85957:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8595a:	51                                              	push   ecx
  d8595b:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d8595e:	52                                              	push   edx
  d8595f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85962:	51                                              	push   ecx
  d85963:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85966:	52                                              	push   edx
  d85967:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85969:	51                                              	push   ecx
  d8596a:	52                                              	push   edx
  d8596b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d8596f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d85973:	83 c4 18                                        	add    esp,0x18
  d85976:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85978:	c3                                              	ret
  d85979:	cc                                              	int3
  d8597a:	cc                                              	int3
  d8597b:	cc                                              	int3
  d8597c:	cc                                              	int3
  d8597d:	cc                                              	int3
  d8597e:	cc                                              	int3
  d8597f:	cc                                              	int3
  d85980:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85984:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d85987:	83 ec 0c                                        	sub    esp,0xc
  d8598a:	56                                              	push   esi
  d8598b:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8598d:	83 ec 10                                        	sub    esp,0x10
  d85990:	8b cc                                           	mov    ecx,esp
  d85992:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85994:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85997:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8599a:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8599d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d859a0:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d859a3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d859a6:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
  d859a9:	8b 12                                           	mov    edx,DWORD PTR [edx]
  d859ab:	51                                              	push   ecx
  d859ac:	52                                              	push   edx
  d859ad:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  d859b1:	50                                              	push   eax
  d859b2:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d859b6:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d859b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d859bb:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d859bf:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d859c1:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d859c4:	89 11                                           	mov    DWORD PTR [ecx],edx
  d859c6:	83 c4 1c                                        	add    esp,0x1c
  d859c9:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d859cc:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d859cf:	5e                                              	pop    esi
  d859d0:	83 c4 0c                                        	add    esp,0xc
  d859d3:	c3                                              	ret
  d859d4:	cc                                              	int3
  d859d5:	cc                                              	int3
  d859d6:	cc                                              	int3
  d859d7:	cc                                              	int3
  d859d8:	cc                                              	int3
  d859d9:	cc                                              	int3
  d859da:	cc                                              	int3
  d859db:	cc                                              	int3
  d859dc:	cc                                              	int3
  d859dd:	cc                                              	int3
  d859de:	cc                                              	int3
  d859df:	cc                                              	int3
  d859e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d859e4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d859e7:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d859ea:	56                                              	push   esi
  d859eb:	51                                              	push   ecx
  d859ec:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d859ef:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d859f1:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d859f3:	83 ec 10                                        	sub    esp,0x10
  d859f6:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  d859fa:	8b d4                                           	mov    edx,esp
  d859fc:	89 32                                           	mov    DWORD PTR [edx],esi
  d859fe:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85a01:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d85a04:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d85a07:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d85a0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85a0c:	83 ec 0c                                        	sub    esp,0xc
  d85a0f:	8b cc                                           	mov    ecx,esp
  d85a11:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85a13:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85a16:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85a19:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85a1c:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d85a1f:	ff 54 24 28                                     	call   DWORD PTR [esp+0x28]
  d85a23:	83 c4 20                                        	add    esp,0x20
  d85a26:	5e                                              	pop    esi
  d85a27:	c3                                              	ret
  d85a28:	cc                                              	int3
  d85a29:	cc                                              	int3
  d85a2a:	cc                                              	int3
  d85a2b:	cc                                              	int3
  d85a2c:	cc                                              	int3
  d85a2d:	cc                                              	int3
  d85a2e:	cc                                              	int3
  d85a2f:	cc                                              	int3
  d85a30:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85a34:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85a37:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d85a3a:	51                                              	push   ecx
  d85a3b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85a3e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85a40:	52                                              	push   edx
  d85a41:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85a43:	51                                              	push   ecx
  d85a44:	83 ec 10                                        	sub    esp,0x10
  d85a47:	8b cc                                           	mov    ecx,esp
  d85a49:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85a4b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85a4e:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85a51:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85a54:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85a57:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d85a5a:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85a5d:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d85a61:	83 c4 1c                                        	add    esp,0x1c
  d85a64:	c3                                              	ret
  d85a65:	cc                                              	int3
  d85a66:	cc                                              	int3
  d85a67:	cc                                              	int3
  d85a68:	cc                                              	int3
  d85a69:	cc                                              	int3
  d85a6a:	cc                                              	int3
  d85a6b:	cc                                              	int3
  d85a6c:	cc                                              	int3
  d85a6d:	cc                                              	int3
  d85a6e:	cc                                              	int3
  d85a6f:	cc                                              	int3
  d85a70:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85a74:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85a77:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d85a7a:	51                                              	push   ecx
  d85a7b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85a7e:	52                                              	push   edx
  d85a7f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85a81:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  d85a85:	51                                              	push   ecx
  d85a86:	52                                              	push   edx
  d85a87:	50                                              	push   eax
  d85a88:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85a8c:	83 c4 14                                        	add    esp,0x14
  d85a8f:	c3                                              	ret
  d85a90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85a94:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d85a96:	51                                              	push   ecx
  d85a97:	ff 54 24 08                                     	call   DWORD PTR [esp+0x8]
  d85a9b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  d85a9f:	d9 1a                                           	fstp   DWORD PTR [edx]
  d85aa1:	83 c4 04                                        	add    esp,0x4
  d85aa4:	c3                                              	ret
  d85aa5:	cc                                              	int3
  d85aa6:	cc                                              	int3
  d85aa7:	cc                                              	int3
  d85aa8:	cc                                              	int3
  d85aa9:	cc                                              	int3
  d85aaa:	cc                                              	int3
  d85aab:	cc                                              	int3
  d85aac:	cc                                              	int3
  d85aad:	cc                                              	int3
  d85aae:	cc                                              	int3
  d85aaf:	cc                                              	int3
  d85ab0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85ab4:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85ab7:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d85aba:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85abd:	51                                              	push   ecx
  d85abe:	83 ec 08                                        	sub    esp,0x8
  d85ac1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85ac5:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85ac8:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85aca:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85acd:	52                                              	push   edx
  d85ace:	50                                              	push   eax
  d85acf:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85ad3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d85ad7:	d9 19                                           	fstp   DWORD PTR [ecx]
  d85ad9:	83 c4 14                                        	add    esp,0x14
  d85adc:	c3                                              	ret
  d85add:	cc                                              	int3
  d85ade:	cc                                              	int3
  d85adf:	cc                                              	int3
  d85ae0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85ae4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d85ae7:	56                                              	push   esi
  d85ae8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d85aea:	83 ec 0c                                        	sub    esp,0xc
  d85aed:	8b cc                                           	mov    ecx,esp
  d85aef:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85af1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85af4:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85af7:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85afa:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d85afd:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d85aff:	51                                              	push   ecx
  d85b00:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85b04:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  d85b08:	83 c4 10                                        	add    esp,0x10
  d85b0b:	89 02                                           	mov    DWORD PTR [edx],eax
  d85b0d:	5e                                              	pop    esi
  d85b0e:	c3                                              	ret
  d85b0f:	cc                                              	int3
  d85b10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85b14:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85b17:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85b19:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85b1b:	51                                              	push   ecx
  d85b1c:	83 ec 0c                                        	sub    esp,0xc
  d85b1f:	8b cc                                           	mov    ecx,esp
  d85b21:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85b23:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85b26:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85b29:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85b2c:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d85b2f:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d85b33:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d85b37:	83 c4 10                                        	add    esp,0x10
  d85b3a:	66 89 01                                        	mov    WORD PTR [ecx],ax
  d85b3d:	c3                                              	ret
  d85b3e:	cc                                              	int3
  d85b3f:	cc                                              	int3
  d85b40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85b44:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85b47:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d85b4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85b4d:	51                                              	push   ecx
  d85b4e:	83 ec 0c                                        	sub    esp,0xc
  d85b51:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  d85b55:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85b58:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85b5c:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85b5f:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85b61:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85b64:	52                                              	push   edx
  d85b65:	50                                              	push   eax
  d85b66:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d85b6a:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d85b6e:	83 c4 18                                        	add    esp,0x18
  d85b71:	88 01                                           	mov    BYTE PTR [ecx],al
  d85b73:	c3                                              	ret
  d85b74:	cc                                              	int3
  d85b75:	cc                                              	int3
  d85b76:	cc                                              	int3
  d85b77:	cc                                              	int3
  d85b78:	cc                                              	int3
  d85b79:	cc                                              	int3
  d85b7a:	cc                                              	int3
  d85b7b:	cc                                              	int3
  d85b7c:	cc                                              	int3
  d85b7d:	cc                                              	int3
  d85b7e:	cc                                              	int3
  d85b7f:	cc                                              	int3
  d85b80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85b84:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85b87:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85b8a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85b8d:	51                                              	push   ecx
  d85b8e:	51                                              	push   ecx
  d85b8f:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85b92:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85b95:	52                                              	push   edx
  d85b96:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85b98:	51                                              	push   ecx
  d85b99:	52                                              	push   edx
  d85b9a:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85b9e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d85ba2:	83 c4 14                                        	add    esp,0x14
  d85ba5:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85ba7:	c3                                              	ret
  d85ba8:	cc                                              	int3
  d85ba9:	cc                                              	int3
  d85baa:	cc                                              	int3
  d85bab:	cc                                              	int3
  d85bac:	cc                                              	int3
  d85bad:	cc                                              	int3
  d85bae:	cc                                              	int3
  d85baf:	cc                                              	int3
  d85bb0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85bb4:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85bb7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85bb9:	83 ec 18                                        	sub    esp,0x18
  d85bbc:	53                                              	push   ebx
  d85bbd:	55                                              	push   ebp
  d85bbe:	56                                              	push   esi
  d85bbf:	57                                              	push   edi
  d85bc0:	51                                              	push   ecx
  d85bc1:	52                                              	push   edx
  d85bc2:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  d85bc6:	50                                              	push   eax
  d85bc7:	ff 54 24 38                                     	call   DWORD PTR [esp+0x38]
  d85bcb:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85bce:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d85bd1:	8b 58 0c                                        	mov    ebx,DWORD PTR [eax+0xc]
  d85bd4:	8b 68 10                                        	mov    ebp,DWORD PTR [eax+0x10]
  d85bd7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85bd9:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  d85bdc:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  d85be0:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d85be2:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85be4:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85be7:	83 c4 0c                                        	add    esp,0xc
  d85bea:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d85bed:	5f                                              	pop    edi
  d85bee:	89 59 0c                                        	mov    DWORD PTR [ecx+0xc],ebx
  d85bf1:	5e                                              	pop    esi
  d85bf2:	89 69 10                                        	mov    DWORD PTR [ecx+0x10],ebp
  d85bf5:	5d                                              	pop    ebp
  d85bf6:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
  d85bf9:	5b                                              	pop    ebx
  d85bfa:	83 c4 18                                        	add    esp,0x18
  d85bfd:	c3                                              	ret
  d85bfe:	cc                                              	int3
  d85bff:	cc                                              	int3
  d85c00:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85c04:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85c07:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d85c0a:	51                                              	push   ecx
  d85c0b:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d85c0e:	52                                              	push   edx
  d85c0f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85c12:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85c14:	51                                              	push   ecx
  d85c15:	52                                              	push   edx
  d85c16:	50                                              	push   eax
  d85c17:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85c1b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d85c1f:	83 c4 14                                        	add    esp,0x14
  d85c22:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85c24:	c3                                              	ret
  d85c25:	cc                                              	int3
  d85c26:	cc                                              	int3
  d85c27:	cc                                              	int3
  d85c28:	cc                                              	int3
  d85c29:	cc                                              	int3
  d85c2a:	cc                                              	int3
  d85c2b:	cc                                              	int3
  d85c2c:	cc                                              	int3
  d85c2d:	cc                                              	int3
  d85c2e:	cc                                              	int3
  d85c2f:	cc                                              	int3
  d85c30:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85c34:	0f b7 48 10                                     	movzx  ecx,WORD PTR [eax+0x10]
  d85c38:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85c3b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85c3d:	51                                              	push   ecx
  d85c3e:	52                                              	push   edx
  d85c3f:	50                                              	push   eax
  d85c40:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85c44:	83 c4 0c                                        	add    esp,0xc
  d85c47:	c3                                              	ret
  d85c48:	cc                                              	int3
  d85c49:	cc                                              	int3
  d85c4a:	cc                                              	int3
  d85c4b:	cc                                              	int3
  d85c4c:	cc                                              	int3
  d85c4d:	cc                                              	int3
  d85c4e:	cc                                              	int3
  d85c4f:	cc                                              	int3
  d85c50:	ff 54 24 04                                     	call   DWORD PTR [esp+0x4]
  d85c54:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  d85c58:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85c5a:	c3                                              	ret
  d85c5b:	cc                                              	int3
  d85c5c:	cc                                              	int3
  d85c5d:	cc                                              	int3
  d85c5e:	cc                                              	int3
  d85c5f:	cc                                              	int3
  d85c60:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85c64:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85c67:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85c6a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85c6c:	51                                              	push   ecx
  d85c6d:	52                                              	push   edx
  d85c6e:	50                                              	push   eax
  d85c6f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85c73:	83 c4 0c                                        	add    esp,0xc
  d85c76:	c3                                              	ret
  d85c77:	cc                                              	int3
  d85c78:	cc                                              	int3
  d85c79:	cc                                              	int3
  d85c7a:	cc                                              	int3
  d85c7b:	cc                                              	int3
  d85c7c:	cc                                              	int3
  d85c7d:	cc                                              	int3
  d85c7e:	cc                                              	int3
  d85c7f:	cc                                              	int3
  d85c80:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85c84:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  d85c87:	56                                              	push   esi
  d85c88:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d85c8a:	83 ec 10                                        	sub    esp,0x10
  d85c8d:	8b cc                                           	mov    ecx,esp
  d85c8f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85c91:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85c94:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85c97:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d85c9a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85c9d:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d85ca0:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85ca3:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  d85ca6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d85ca9:	51                                              	push   ecx
  d85caa:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d85cac:	50                                              	push   eax
  d85cad:	51                                              	push   ecx
  d85cae:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85cb2:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  d85cb6:	83 c4 1c                                        	add    esp,0x1c
  d85cb9:	89 02                                           	mov    DWORD PTR [edx],eax
  d85cbb:	5e                                              	pop    esi
  d85cbc:	c3                                              	ret
  d85cbd:	cc                                              	int3
  d85cbe:	cc                                              	int3
  d85cbf:	cc                                              	int3
  d85cc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85cc4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85cc7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85cca:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85ccc:	83 ec 10                                        	sub    esp,0x10
  d85ccf:	56                                              	push   esi
  d85cd0:	57                                              	push   edi
  d85cd1:	51                                              	push   ecx
  d85cd2:	52                                              	push   edx
  d85cd3:	50                                              	push   eax
  d85cd4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  d85cd8:	51                                              	push   ecx
  d85cd9:	ff 54 24 2c                                     	call   DWORD PTR [esp+0x2c]
  d85cdd:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85ce0:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d85ce3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85ce5:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85ce8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  d85cec:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d85cee:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85cf0:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85cf3:	83 c4 10                                        	add    esp,0x10
  d85cf6:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d85cf9:	5f                                              	pop    edi
  d85cfa:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85cfd:	5e                                              	pop    esi
  d85cfe:	83 c4 10                                        	add    esp,0x10
  d85d01:	c3                                              	ret
  d85d02:	cc                                              	int3
  d85d03:	cc                                              	int3
  d85d04:	cc                                              	int3
  d85d05:	cc                                              	int3
  d85d06:	cc                                              	int3
  d85d07:	cc                                              	int3
  d85d08:	cc                                              	int3
  d85d09:	cc                                              	int3
  d85d0a:	cc                                              	int3
  d85d0b:	cc                                              	int3
  d85d0c:	cc                                              	int3
  d85d0d:	cc                                              	int3
  d85d0e:	cc                                              	int3
  d85d0f:	cc                                              	int3
  d85d10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85d14:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85d17:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85d1a:	83 ec 10                                        	sub    esp,0x10
  d85d1d:	56                                              	push   esi
  d85d1e:	57                                              	push   edi
  d85d1f:	51                                              	push   ecx
  d85d20:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85d23:	52                                              	push   edx
  d85d24:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85d26:	51                                              	push   ecx
  d85d27:	52                                              	push   edx
  d85d28:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  d85d2c:	50                                              	push   eax
  d85d2d:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d85d31:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85d34:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d85d37:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85d39:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85d3c:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d85d40:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d85d42:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85d44:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85d47:	83 c4 14                                        	add    esp,0x14
  d85d4a:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d85d4d:	5f                                              	pop    edi
  d85d4e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85d51:	5e                                              	pop    esi
  d85d52:	83 c4 10                                        	add    esp,0x10
  d85d55:	c3                                              	ret
  d85d56:	cc                                              	int3
  d85d57:	cc                                              	int3
  d85d58:	cc                                              	int3
  d85d59:	cc                                              	int3
  d85d5a:	cc                                              	int3
  d85d5b:	cc                                              	int3
  d85d5c:	cc                                              	int3
  d85d5d:	cc                                              	int3
  d85d5e:	cc                                              	int3
  d85d5f:	cc                                              	int3
  d85d60:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d85d64:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  d85d67:	56                                              	push   esi
  d85d68:	50                                              	push   eax
  d85d69:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d85d6c:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d85d6e:	83 ec 10                                        	sub    esp,0x10
  d85d71:	8b cc                                           	mov    ecx,esp
  d85d73:	89 31                                           	mov    DWORD PTR [ecx],esi
  d85d75:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d85d78:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d85d7b:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d85d7e:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85d81:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d85d84:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85d87:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d85d89:	51                                              	push   ecx
  d85d8a:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d85d8e:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  d85d92:	83 c4 18                                        	add    esp,0x18
  d85d95:	88 02                                           	mov    BYTE PTR [edx],al
  d85d97:	5e                                              	pop    esi
  d85d98:	c3                                              	ret
  d85d99:	cc                                              	int3
  d85d9a:	cc                                              	int3
  d85d9b:	cc                                              	int3
  d85d9c:	cc                                              	int3
  d85d9d:	cc                                              	int3
  d85d9e:	cc                                              	int3
  d85d9f:	cc                                              	int3
  d85da0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85da4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85da7:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  d85daa:	51                                              	push   ecx
  d85dab:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85dae:	52                                              	push   edx
  d85daf:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d85db2:	51                                              	push   ecx
  d85db3:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85db6:	52                                              	push   edx
  d85db7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85dba:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85dbc:	51                                              	push   ecx
  d85dbd:	52                                              	push   edx
  d85dbe:	50                                              	push   eax
  d85dbf:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d85dc3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d85dc7:	83 c4 1c                                        	add    esp,0x1c
  d85dca:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85dcc:	c3                                              	ret
  d85dcd:	cc                                              	int3
  d85dce:	cc                                              	int3
  d85dcf:	cc                                              	int3
  d85dd0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85dd4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85dd7:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d85dda:	51                                              	push   ecx
  d85ddb:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85dde:	52                                              	push   edx
  d85ddf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85de1:	51                                              	push   ecx
  d85de2:	52                                              	push   edx
  d85de3:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d85de7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d85deb:	83 c4 10                                        	add    esp,0x10
  d85dee:	88 01                                           	mov    BYTE PTR [ecx],al
  d85df0:	c3                                              	ret
  d85df1:	cc                                              	int3
  d85df2:	cc                                              	int3
  d85df3:	cc                                              	int3
  d85df4:	cc                                              	int3
  d85df5:	cc                                              	int3
  d85df6:	cc                                              	int3
  d85df7:	cc                                              	int3
  d85df8:	cc                                              	int3
  d85df9:	cc                                              	int3
  d85dfa:	cc                                              	int3
  d85dfb:	cc                                              	int3
  d85dfc:	cc                                              	int3
  d85dfd:	cc                                              	int3
  d85dfe:	cc                                              	int3
  d85dff:	cc                                              	int3
  d85e00:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85e04:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85e06:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85e08:	83 ec 0c                                        	sub    esp,0xc
  d85e0b:	8b cc                                           	mov    ecx,esp
  d85e0d:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85e0f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85e12:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85e15:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85e18:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d85e1b:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85e1f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d85e23:	83 c4 0c                                        	add    esp,0xc
  d85e26:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85e28:	c3                                              	ret
  d85e29:	cc                                              	int3
  d85e2a:	cc                                              	int3
  d85e2b:	cc                                              	int3
  d85e2c:	cc                                              	int3
  d85e2d:	cc                                              	int3
  d85e2e:	cc                                              	int3
  d85e2f:	cc                                              	int3
  d85e30:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85e34:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d85e37:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85e3a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85e3c:	51                                              	push   ecx
  d85e3d:	52                                              	push   edx
  d85e3e:	50                                              	push   eax
  d85e3f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d85e43:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d85e47:	83 c4 0c                                        	add    esp,0xc
  d85e4a:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85e4c:	c3                                              	ret
  d85e4d:	cc                                              	int3
  d85e4e:	cc                                              	int3
  d85e4f:	cc                                              	int3
  d85e50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85e54:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  d85e57:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d85e5a:	51                                              	push   ecx
  d85e5b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85e5e:	52                                              	push   edx
  d85e5f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85e62:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85e64:	51                                              	push   ecx
  d85e65:	52                                              	push   edx
  d85e66:	50                                              	push   eax
  d85e67:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d85e6b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d85e6f:	83 c4 14                                        	add    esp,0x14
  d85e72:	88 01                                           	mov    BYTE PTR [ecx],al
  d85e74:	c3                                              	ret
  d85e75:	cc                                              	int3
  d85e76:	cc                                              	int3
  d85e77:	cc                                              	int3
  d85e78:	cc                                              	int3
  d85e79:	cc                                              	int3
  d85e7a:	cc                                              	int3
  d85e7b:	cc                                              	int3
  d85e7c:	cc                                              	int3
  d85e7d:	cc                                              	int3
  d85e7e:	cc                                              	int3
  d85e7f:	cc                                              	int3
  d85e80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85e84:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85e87:	83 ec 08                                        	sub    esp,0x8
  d85e8a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85e8e:	dd 00                                           	fld    QWORD PTR [eax]
  d85e90:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85e93:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d85e97:	83 c4 08                                        	add    esp,0x8
  d85e9a:	c3                                              	ret
  d85e9b:	cc                                              	int3
  d85e9c:	cc                                              	int3
  d85e9d:	cc                                              	int3
  d85e9e:	cc                                              	int3
  d85e9f:	cc                                              	int3
  d85ea0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85ea4:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d85ea7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d85eaa:	51                                              	push   ecx
  d85eab:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85eae:	52                                              	push   edx
  d85eaf:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d85eb2:	51                                              	push   ecx
  d85eb3:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85eb6:	52                                              	push   edx
  d85eb7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85eba:	51                                              	push   ecx
  d85ebb:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d85ebe:	52                                              	push   edx
  d85ebf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85ec1:	51                                              	push   ecx
  d85ec2:	52                                              	push   edx
  d85ec3:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d85ec7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d85ecb:	83 c4 20                                        	add    esp,0x20
  d85ece:	88 01                                           	mov    BYTE PTR [ecx],al
  d85ed0:	c3                                              	ret
  d85ed1:	cc                                              	int3
  d85ed2:	cc                                              	int3
  d85ed3:	cc                                              	int3
  d85ed4:	cc                                              	int3
  d85ed5:	cc                                              	int3
  d85ed6:	cc                                              	int3
  d85ed7:	cc                                              	int3
  d85ed8:	cc                                              	int3
  d85ed9:	cc                                              	int3
  d85eda:	cc                                              	int3
  d85edb:	cc                                              	int3
  d85edc:	cc                                              	int3
  d85edd:	cc                                              	int3
  d85ede:	cc                                              	int3
  d85edf:	cc                                              	int3
  d85ee0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85ee4:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d85ee7:	83 ec 0c                                        	sub    esp,0xc
  d85eea:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  d85eee:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85ef1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d85ef5:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85ef8:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85efa:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d85efd:	50                                              	push   eax
  d85efe:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d85f02:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d85f06:	83 c4 10                                        	add    esp,0x10
  d85f09:	89 01                                           	mov    DWORD PTR [ecx],eax
  d85f0b:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85f0e:	c3                                              	ret
  d85f0f:	cc                                              	int3
  d85f10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85f14:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d85f17:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d85f1a:	56                                              	push   esi
  d85f1b:	51                                              	push   ecx
  d85f1c:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85f1f:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d85f21:	52                                              	push   edx
  d85f22:	83 ec 10                                        	sub    esp,0x10
  d85f25:	8b d4                                           	mov    edx,esp
  d85f27:	89 32                                           	mov    DWORD PTR [edx],esi
  d85f29:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85f2c:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d85f2f:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d85f32:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d85f35:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d85f38:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d85f3b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85f3e:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d85f40:	83 ec 10                                        	sub    esp,0x10
  d85f43:	8b d4                                           	mov    edx,esp
  d85f45:	89 32                                           	mov    DWORD PTR [edx],esi
  d85f47:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85f4a:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d85f4d:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d85f50:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d85f53:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d85f56:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d85f59:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85f5c:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d85f5e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85f60:	83 ec 10                                        	sub    esp,0x10
  d85f63:	8b d4                                           	mov    edx,esp
  d85f65:	89 32                                           	mov    DWORD PTR [edx],esi
  d85f67:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d85f6a:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d85f6d:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d85f70:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d85f73:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d85f76:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d85f79:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85f7b:	83 ec 10                                        	sub    esp,0x10
  d85f7e:	8b cc                                           	mov    ecx,esp
  d85f80:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85f82:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85f85:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85f88:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d85f8b:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d85f8e:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d85f91:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d85f94:	ff 54 24 50                                     	call   DWORD PTR [esp+0x50]
  d85f98:	83 c4 48                                        	add    esp,0x48
  d85f9b:	5e                                              	pop    esi
  d85f9c:	c3                                              	ret
  d85f9d:	cc                                              	int3
  d85f9e:	cc                                              	int3
  d85f9f:	cc                                              	int3
  d85fa0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85fa4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d85fa7:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d85faa:	51                                              	push   ecx
  d85fab:	83 ec 14                                        	sub    esp,0x14
  d85fae:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  d85fb2:	8b cc                                           	mov    ecx,esp
  d85fb4:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d85fb7:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85fb9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d85fbb:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  d85fbf:	89 11                                           	mov    DWORD PTR [ecx],edx
  d85fc1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85fc4:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d85fc7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d85fca:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d85fcd:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d85fd1:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d85fd5:	83 c4 18                                        	add    esp,0x18
  d85fd8:	88 01                                           	mov    BYTE PTR [ecx],al
  d85fda:	c3                                              	ret
  d85fdb:	cc                                              	int3
  d85fdc:	cc                                              	int3
  d85fdd:	cc                                              	int3
  d85fde:	cc                                              	int3
  d85fdf:	cc                                              	int3
  d85fe0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d85fe4:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d85fe7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d85fea:	51                                              	push   ecx
  d85feb:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d85fee:	52                                              	push   edx
  d85fef:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d85ff2:	51                                              	push   ecx
  d85ff3:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d85ff6:	52                                              	push   edx
  d85ff7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d85ffa:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d85ffc:	51                                              	push   ecx
  d85ffd:	52                                              	push   edx
  d85ffe:	50                                              	push   eax
  d85fff:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d86003:	83 c4 1c                                        	add    esp,0x1c
  d86006:	c3                                              	ret
  d86007:	cc                                              	int3
  d86008:	cc                                              	int3
  d86009:	cc                                              	int3
  d8600a:	cc                                              	int3
  d8600b:	cc                                              	int3
  d8600c:	cc                                              	int3
  d8600d:	cc                                              	int3
  d8600e:	cc                                              	int3
  d8600f:	cc                                              	int3
  d86010:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86014:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86017:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8601a:	56                                              	push   esi
  d8601b:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8601e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86020:	57                                              	push   edi
  d86021:	51                                              	push   ecx
  d86022:	52                                              	push   edx
  d86023:	83 ec 48                                        	sub    esp,0x48
  d86026:	8b fc                                           	mov    edi,esp
  d86028:	b9 12 00 00 00                                  	mov    ecx,0x12
  d8602d:	50                                              	push   eax
  d8602e:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d86030:	ff 54 24 60                                     	call   DWORD PTR [esp+0x60]
  d86034:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  d86038:	83 c4 54                                        	add    esp,0x54
  d8603b:	5f                                              	pop    edi
  d8603c:	89 01                                           	mov    DWORD PTR [ecx],eax
  d8603e:	5e                                              	pop    esi
  d8603f:	c3                                              	ret
  d86040:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86044:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d86047:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8604a:	51                                              	push   ecx
  d8604b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8604e:	52                                              	push   edx
  d8604f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86052:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86054:	51                                              	push   ecx
  d86055:	52                                              	push   edx
  d86056:	50                                              	push   eax
  d86057:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d8605b:	83 c4 14                                        	add    esp,0x14
  d8605e:	c3                                              	ret
  d8605f:	cc                                              	int3
  d86060:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86064:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86066:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86068:	83 ec 0c                                        	sub    esp,0xc
  d8606b:	8b cc                                           	mov    ecx,esp
  d8606d:	89 11                                           	mov    DWORD PTR [ecx],edx
  d8606f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86072:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86075:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d86078:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8607b:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d8607f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d86083:	83 c4 0c                                        	add    esp,0xc
  d86086:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86088:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d8608b:	c3                                              	ret
  d8608c:	cc                                              	int3
  d8608d:	cc                                              	int3
  d8608e:	cc                                              	int3
  d8608f:	cc                                              	int3
  d86090:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d86094:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d86097:	56                                              	push   esi
  d86098:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8609a:	83 ec 0c                                        	sub    esp,0xc
  d8609d:	8b cc                                           	mov    ecx,esp
  d8609f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d860a1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d860a4:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d860a7:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d860aa:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d860ad:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
  d860b0:	8b 12                                           	mov    edx,DWORD PTR [edx]
  d860b2:	51                                              	push   ecx
  d860b3:	52                                              	push   edx
  d860b4:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d860b8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d860bc:	83 c4 14                                        	add    esp,0x14
  d860bf:	89 01                                           	mov    DWORD PTR [ecx],eax
  d860c1:	5e                                              	pop    esi
  d860c2:	c3                                              	ret
  d860c3:	cc                                              	int3
  d860c4:	cc                                              	int3
  d860c5:	cc                                              	int3
  d860c6:	cc                                              	int3
  d860c7:	cc                                              	int3
  d860c8:	cc                                              	int3
  d860c9:	cc                                              	int3
  d860ca:	cc                                              	int3
  d860cb:	cc                                              	int3
  d860cc:	cc                                              	int3
  d860cd:	cc                                              	int3
  d860ce:	cc                                              	int3
  d860cf:	cc                                              	int3
  d860d0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d860d4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d860d7:	56                                              	push   esi
  d860d8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d860da:	83 ec 10                                        	sub    esp,0x10
  d860dd:	8b cc                                           	mov    ecx,esp
  d860df:	89 31                                           	mov    DWORD PTR [ecx],esi
  d860e1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d860e4:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d860e7:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d860ea:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d860ed:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d860f0:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d860f3:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d860f5:	51                                              	push   ecx
  d860f6:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d860fa:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  d860fe:	83 c4 14                                        	add    esp,0x14
  d86101:	d9 1a                                           	fstp   DWORD PTR [edx]
  d86103:	5e                                              	pop    esi
  d86104:	c3                                              	ret
  d86105:	cc                                              	int3
  d86106:	cc                                              	int3
  d86107:	cc                                              	int3
  d86108:	cc                                              	int3
  d86109:	cc                                              	int3
  d8610a:	cc                                              	int3
  d8610b:	cc                                              	int3
  d8610c:	cc                                              	int3
  d8610d:	cc                                              	int3
  d8610e:	cc                                              	int3
  d8610f:	cc                                              	int3
  d86110:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86114:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d86116:	51                                              	push   ecx
  d86117:	ff 54 24 08                                     	call   DWORD PTR [esp+0x8]
  d8611b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  d8611f:	83 c4 04                                        	add    esp,0x4
  d86122:	88 02                                           	mov    BYTE PTR [edx],al
  d86124:	c3                                              	ret
  d86125:	cc                                              	int3
  d86126:	cc                                              	int3
  d86127:	cc                                              	int3
  d86128:	cc                                              	int3
  d86129:	cc                                              	int3
  d8612a:	cc                                              	int3
  d8612b:	cc                                              	int3
  d8612c:	cc                                              	int3
  d8612d:	cc                                              	int3
  d8612e:	cc                                              	int3
  d8612f:	cc                                              	int3
  d86130:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86134:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d86136:	81 ec 90 00 00 00                               	sub    esp,0x90
  d8613c:	56                                              	push   esi
  d8613d:	57                                              	push   edi
  d8613e:	51                                              	push   ecx
  d8613f:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  d86143:	52                                              	push   edx
  d86144:	ff 94 24 a4 00 00 00                            	call   DWORD PTR [esp+0xa4]
  d8614b:	8b f0                                           	mov    esi,eax
  d8614d:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
  d86154:	b9 12 00 00 00                                  	mov    ecx,0x12
  d86159:	8d 7c 24 10                                     	lea    edi,[esp+0x10]
  d8615d:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d8615f:	8b 38                                           	mov    edi,DWORD PTR [eax]
  d86161:	83 c4 08                                        	add    esp,0x8
  d86164:	b9 12 00 00 00                                  	mov    ecx,0x12
  d86169:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d8616d:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d8616f:	5f                                              	pop    edi
  d86170:	5e                                              	pop    esi
  d86171:	81 c4 90 00 00 00                               	add    esp,0x90
  d86177:	c3                                              	ret
  d86178:	cc                                              	int3
  d86179:	cc                                              	int3
  d8617a:	cc                                              	int3
  d8617b:	cc                                              	int3
  d8617c:	cc                                              	int3
  d8617d:	cc                                              	int3
  d8617e:	cc                                              	int3
  d8617f:	cc                                              	int3
  d86180:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86184:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86187:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86189:	51                                              	push   ecx
  d8618a:	52                                              	push   edx
  d8618b:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d8618f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d86193:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d86195:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86197:	83 c4 08                                        	add    esp,0x8
  d8619a:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d8619d:	c3                                              	ret
  d8619e:	cc                                              	int3
  d8619f:	cc                                              	int3
  d861a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d861a4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d861a7:	56                                              	push   esi
  d861a8:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d861aa:	83 ec 10                                        	sub    esp,0x10
  d861ad:	8b d4                                           	mov    edx,esp
  d861af:	89 32                                           	mov    DWORD PTR [edx],esi
  d861b1:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d861b4:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d861b7:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d861ba:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d861bd:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d861c0:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d861c3:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  d861c6:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d861c9:	52                                              	push   edx
  d861ca:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d861cd:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d861cf:	51                                              	push   ecx
  d861d0:	52                                              	push   edx
  d861d1:	50                                              	push   eax
  d861d2:	ff 54 24 28                                     	call   DWORD PTR [esp+0x28]
  d861d6:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  d861da:	83 c4 20                                        	add    esp,0x20
  d861dd:	d9 19                                           	fstp   DWORD PTR [ecx]
  d861df:	5e                                              	pop    esi
  d861e0:	c3                                              	ret
  d861e1:	cc                                              	int3
  d861e2:	cc                                              	int3
  d861e3:	cc                                              	int3
  d861e4:	cc                                              	int3
  d861e5:	cc                                              	int3
  d861e6:	cc                                              	int3
  d861e7:	cc                                              	int3
  d861e8:	cc                                              	int3
  d861e9:	cc                                              	int3
  d861ea:	cc                                              	int3
  d861eb:	cc                                              	int3
  d861ec:	cc                                              	int3
  d861ed:	cc                                              	int3
  d861ee:	cc                                              	int3
  d861ef:	cc                                              	int3
  d861f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d861f4:	dd 40 70                                        	fld    QWORD PTR [eax+0x70]
  d861f7:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  d861fa:	56                                              	push   esi
  d861fb:	51                                              	push   ecx
  d861fc:	8b 48 68                                        	mov    ecx,DWORD PTR [eax+0x68]
  d861ff:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d86202:	51                                              	push   ecx
  d86203:	8b 48 58                                        	mov    ecx,DWORD PTR [eax+0x58]
  d86206:	52                                              	push   edx
  d86207:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  d8620a:	51                                              	push   ecx
  d8620b:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  d8620e:	52                                              	push   edx
  d8620f:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
  d86212:	51                                              	push   ecx
  d86213:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d86216:	52                                              	push   edx
  d86217:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d8621a:	51                                              	push   ecx
  d8621b:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d8621e:	52                                              	push   edx
  d8621f:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d86222:	51                                              	push   ecx
  d86223:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86226:	52                                              	push   edx
  d86227:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8622a:	51                                              	push   ecx
  d8622b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8622e:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86230:	52                                              	push   edx
  d86231:	83 ec 0c                                        	sub    esp,0xc
  d86234:	8b d4                                           	mov    edx,esp
  d86236:	89 32                                           	mov    DWORD PTR [edx],esi
  d86238:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d8623b:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d8623e:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86241:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86244:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86247:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86249:	52                                              	push   edx
  d8624a:	50                                              	push   eax
  d8624b:	ff 54 24 50                                     	call   DWORD PTR [esp+0x50]
  d8624f:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  d86253:	83 c4 48                                        	add    esp,0x48
  d86256:	88 01                                           	mov    BYTE PTR [ecx],al
  d86258:	5e                                              	pop    esi
  d86259:	c3                                              	ret
  d8625a:	cc                                              	int3
  d8625b:	cc                                              	int3
  d8625c:	cc                                              	int3
  d8625d:	cc                                              	int3
  d8625e:	cc                                              	int3
  d8625f:	cc                                              	int3
  d86260:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86264:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d86267:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86269:	83 ec 08                                        	sub    esp,0x8
  d8626c:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  d8626f:	50                                              	push   eax
  d86270:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d86274:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d86278:	83 c4 0c                                        	add    esp,0xc
  d8627b:	89 01                                           	mov    DWORD PTR [ecx],eax
  d8627d:	c3                                              	ret
  d8627e:	cc                                              	int3
  d8627f:	cc                                              	int3
  d86280:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86284:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86287:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d8628a:	56                                              	push   esi
  d8628b:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d8628d:	83 ec 10                                        	sub    esp,0x10
  d86290:	8b d4                                           	mov    edx,esp
  d86292:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  d86296:	89 32                                           	mov    DWORD PTR [edx],esi
  d86298:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d8629b:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d8629e:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d862a1:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d862a4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d862a7:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d862a9:	52                                              	push   edx
  d862aa:	50                                              	push   eax
  d862ab:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d862af:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d862b3:	83 c4 18                                        	add    esp,0x18
  d862b6:	89 01                                           	mov    DWORD PTR [ecx],eax
  d862b8:	5e                                              	pop    esi
  d862b9:	c3                                              	ret
  d862ba:	cc                                              	int3
  d862bb:	cc                                              	int3
  d862bc:	cc                                              	int3
  d862bd:	cc                                              	int3
  d862be:	cc                                              	int3
  d862bf:	cc                                              	int3
  d862c0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d862c4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d862c7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d862ca:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d862cc:	51                                              	push   ecx
  d862cd:	52                                              	push   edx
  d862ce:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d862d0:	83 ec 0c                                        	sub    esp,0xc
  d862d3:	8b cc                                           	mov    ecx,esp
  d862d5:	89 11                                           	mov    DWORD PTR [ecx],edx
  d862d7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d862da:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d862dd:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d862e0:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d862e3:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d862e7:	83 c4 14                                        	add    esp,0x14
  d862ea:	c3                                              	ret
  d862eb:	cc                                              	int3
  d862ec:	cc                                              	int3
  d862ed:	cc                                              	int3
  d862ee:	cc                                              	int3
  d862ef:	cc                                              	int3
  d862f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d862f4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d862f7:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d862fa:	83 ec 0c                                        	sub    esp,0xc
  d862fd:	56                                              	push   esi
  d862fe:	51                                              	push   ecx
  d862ff:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86302:	52                                              	push   edx
  d86303:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86306:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86308:	51                                              	push   ecx
  d86309:	52                                              	push   edx
  d8630a:	50                                              	push   eax
  d8630b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  d8630f:	51                                              	push   ecx
  d86310:	ff 54 24 2c                                     	call   DWORD PTR [esp+0x2c]
  d86314:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86317:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86319:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  d8631d:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d8631f:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86322:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86324:	83 c4 18                                        	add    esp,0x18
  d86327:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8632a:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8632d:	5e                                              	pop    esi
  d8632e:	83 c4 0c                                        	add    esp,0xc
  d86331:	c3                                              	ret
  d86332:	cc                                              	int3
  d86333:	cc                                              	int3
  d86334:	cc                                              	int3
  d86335:	cc                                              	int3
  d86336:	cc                                              	int3
  d86337:	cc                                              	int3
  d86338:	cc                                              	int3
  d86339:	cc                                              	int3
  d8633a:	cc                                              	int3
  d8633b:	cc                                              	int3
  d8633c:	cc                                              	int3
  d8633d:	cc                                              	int3
  d8633e:	cc                                              	int3
  d8633f:	cc                                              	int3
  d86340:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86344:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86346:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86348:	83 ec 10                                        	sub    esp,0x10
  d8634b:	8b cc                                           	mov    ecx,esp
  d8634d:	89 11                                           	mov    DWORD PTR [ecx],edx
  d8634f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86352:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d86355:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86358:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8635b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d8635e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d86361:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86365:	83 c4 10                                        	add    esp,0x10
  d86368:	c3                                              	ret
  d86369:	cc                                              	int3
  d8636a:	cc                                              	int3
  d8636b:	cc                                              	int3
  d8636c:	cc                                              	int3
  d8636d:	cc                                              	int3
  d8636e:	cc                                              	int3
  d8636f:	cc                                              	int3
  d86370:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86374:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86377:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d8637a:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d8637d:	51                                              	push   ecx
  d8637e:	52                                              	push   edx
  d8637f:	83 ec 08                                        	sub    esp,0x8
  d86382:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d86386:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d86389:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8638b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d8638e:	50                                              	push   eax
  d8638f:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d86393:	83 c4 14                                        	add    esp,0x14
  d86396:	c3                                              	ret
  d86397:	cc                                              	int3
  d86398:	cc                                              	int3
  d86399:	cc                                              	int3
  d8639a:	cc                                              	int3
  d8639b:	cc                                              	int3
  d8639c:	cc                                              	int3
  d8639d:	cc                                              	int3
  d8639e:	cc                                              	int3
  d8639f:	cc                                              	int3
  d863a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d863a4:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d863a7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d863aa:	56                                              	push   esi
  d863ab:	51                                              	push   ecx
  d863ac:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d863af:	52                                              	push   edx
  d863b0:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d863b3:	51                                              	push   ecx
  d863b4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d863b7:	52                                              	push   edx
  d863b8:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
  d863bb:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d863bd:	52                                              	push   edx
  d863be:	51                                              	push   ecx
  d863bf:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d863c2:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d863c4:	83 ec 0c                                        	sub    esp,0xc
  d863c7:	8b d4                                           	mov    edx,esp
  d863c9:	89 32                                           	mov    DWORD PTR [edx],esi
  d863cb:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d863ce:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d863d1:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d863d4:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d863d7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d863d9:	52                                              	push   edx
  d863da:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d863de:	83 c4 28                                        	add    esp,0x28
  d863e1:	5e                                              	pop    esi
  d863e2:	c3                                              	ret
  d863e3:	cc                                              	int3
  d863e4:	cc                                              	int3
  d863e5:	cc                                              	int3
  d863e6:	cc                                              	int3
  d863e7:	cc                                              	int3
  d863e8:	cc                                              	int3
  d863e9:	cc                                              	int3
  d863ea:	cc                                              	int3
  d863eb:	cc                                              	int3
  d863ec:	cc                                              	int3
  d863ed:	cc                                              	int3
  d863ee:	cc                                              	int3
  d863ef:	cc                                              	int3
  d863f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d863f4:	0f b6 48 18                                     	movzx  ecx,BYTE PTR [eax+0x18]
  d863f8:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d863fb:	51                                              	push   ecx
  d863fc:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d863ff:	52                                              	push   edx
  d86400:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86403:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86405:	51                                              	push   ecx
  d86406:	52                                              	push   edx
  d86407:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86409:	83 ec 10                                        	sub    esp,0x10
  d8640c:	8b cc                                           	mov    ecx,esp
  d8640e:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86410:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86413:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d86416:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86419:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8641c:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d8641f:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d86422:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d86426:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d8642a:	83 c4 20                                        	add    esp,0x20
  d8642d:	88 01                                           	mov    BYTE PTR [ecx],al
  d8642f:	c3                                              	ret
  d86430:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d86434:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d86437:	56                                              	push   esi
  d86438:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d8643a:	83 ec 10                                        	sub    esp,0x10
  d8643d:	8b cc                                           	mov    ecx,esp
  d8643f:	89 31                                           	mov    DWORD PTR [ecx],esi
  d86441:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86444:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86447:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  d8644a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d8644d:	89 71 08                                        	mov    DWORD PTR [ecx+0x8],esi
  d86450:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d86453:	8b 02                                           	mov    eax,DWORD PTR [edx]
  d86455:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86458:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d8645a:	51                                              	push   ecx
  d8645b:	52                                              	push   edx
  d8645c:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d86460:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d86464:	83 c4 18                                        	add    esp,0x18
  d86467:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86469:	5e                                              	pop    esi
  d8646a:	c3                                              	ret
  d8646b:	cc                                              	int3
  d8646c:	cc                                              	int3
  d8646d:	cc                                              	int3
  d8646e:	cc                                              	int3
  d8646f:	cc                                              	int3
  d86470:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86474:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86477:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d8647a:	51                                              	push   ecx
  d8647b:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d8647e:	52                                              	push   edx
  d8647f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86481:	51                                              	push   ecx
  d86482:	52                                              	push   edx
  d86483:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86487:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d8648b:	83 c4 10                                        	add    esp,0x10
  d8648e:	88 01                                           	mov    BYTE PTR [ecx],al
  d86490:	c3                                              	ret
  d86491:	cc                                              	int3
  d86492:	cc                                              	int3
  d86493:	cc                                              	int3
  d86494:	cc                                              	int3
  d86495:	cc                                              	int3
  d86496:	cc                                              	int3
  d86497:	cc                                              	int3
  d86498:	cc                                              	int3
  d86499:	cc                                              	int3
  d8649a:	cc                                              	int3
  d8649b:	cc                                              	int3
  d8649c:	cc                                              	int3
  d8649d:	cc                                              	int3
  d8649e:	cc                                              	int3
  d8649f:	cc                                              	int3
  d864a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d864a4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d864a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d864a9:	81 ec 90 00 00 00                               	sub    esp,0x90
  d864af:	56                                              	push   esi
  d864b0:	57                                              	push   edi
  d864b1:	51                                              	push   ecx
  d864b2:	52                                              	push   edx
  d864b3:	8d 44 24 58                                     	lea    eax,[esp+0x58]
  d864b7:	50                                              	push   eax
  d864b8:	ff 94 24 a8 00 00 00                            	call   DWORD PTR [esp+0xa8]
  d864bf:	8b 94 24 ac 00 00 00                            	mov    edx,DWORD PTR [esp+0xac]
  d864c6:	b9 12 00 00 00                                  	mov    ecx,0x12
  d864cb:	8b f0                                           	mov    esi,eax
  d864cd:	8d 7c 24 14                                     	lea    edi,[esp+0x14]
  d864d1:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d864d3:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d864d5:	83 c4 0c                                        	add    esp,0xc
  d864d8:	b9 12 00 00 00                                  	mov    ecx,0x12
  d864dd:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d864e1:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d864e3:	5f                                              	pop    edi
  d864e4:	5e                                              	pop    esi
  d864e5:	81 c4 90 00 00 00                               	add    esp,0x90
  d864eb:	c3                                              	ret
  d864ec:	cc                                              	int3
  d864ed:	cc                                              	int3
  d864ee:	cc                                              	int3
  d864ef:	cc                                              	int3
  d864f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d864f4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d864f7:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
  d864fa:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d864fc:	52                                              	push   edx
  d864fd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86500:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86502:	51                                              	push   ecx
  d86503:	52                                              	push   edx
  d86504:	50                                              	push   eax
  d86505:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86509:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d8650d:	83 c4 10                                        	add    esp,0x10
  d86510:	88 01                                           	mov    BYTE PTR [ecx],al
  d86512:	c3                                              	ret
  d86513:	cc                                              	int3
  d86514:	cc                                              	int3
  d86515:	cc                                              	int3
  d86516:	cc                                              	int3
  d86517:	cc                                              	int3
  d86518:	cc                                              	int3
  d86519:	cc                                              	int3
  d8651a:	cc                                              	int3
  d8651b:	cc                                              	int3
  d8651c:	cc                                              	int3
  d8651d:	cc                                              	int3
  d8651e:	cc                                              	int3
  d8651f:	cc                                              	int3
  d86520:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86524:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d86527:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86529:	51                                              	push   ecx
  d8652a:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8652d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d86530:	51                                              	push   ecx
  d86531:	52                                              	push   edx
  d86532:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d86536:	83 c4 0c                                        	add    esp,0xc
  d86539:	c3                                              	ret
  d8653a:	cc                                              	int3
  d8653b:	cc                                              	int3
  d8653c:	cc                                              	int3
  d8653d:	cc                                              	int3
  d8653e:	cc                                              	int3
  d8653f:	cc                                              	int3
  d86540:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86544:	8b 48 68                                        	mov    ecx,DWORD PTR [eax+0x68]
  d86547:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  d8654a:	51                                              	push   ecx
  d8654b:	8b 48 58                                        	mov    ecx,DWORD PTR [eax+0x58]
  d8654e:	52                                              	push   edx
  d8654f:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  d86552:	51                                              	push   ecx
  d86553:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  d86556:	52                                              	push   edx
  d86557:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
  d8655a:	51                                              	push   ecx
  d8655b:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d8655e:	52                                              	push   edx
  d8655f:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d86562:	51                                              	push   ecx
  d86563:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d86566:	52                                              	push   edx
  d86567:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  d8656a:	51                                              	push   ecx
  d8656b:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d8656e:	52                                              	push   edx
  d8656f:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  d86572:	51                                              	push   ecx
  d86573:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86576:	52                                              	push   edx
  d86577:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8657a:	51                                              	push   ecx
  d8657b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8657e:	52                                              	push   edx
  d8657f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86582:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86584:	51                                              	push   ecx
  d86585:	52                                              	push   edx
  d86586:	50                                              	push   eax
  d86587:	ff 54 24 48                                     	call   DWORD PTR [esp+0x48]
  d8658b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  d8658f:	83 c4 44                                        	add    esp,0x44
  d86592:	88 01                                           	mov    BYTE PTR [ecx],al
  d86594:	c3                                              	ret
  d86595:	cc                                              	int3
  d86596:	cc                                              	int3
  d86597:	cc                                              	int3
  d86598:	cc                                              	int3
  d86599:	cc                                              	int3
  d8659a:	cc                                              	int3
  d8659b:	cc                                              	int3
  d8659c:	cc                                              	int3
  d8659d:	cc                                              	int3
  d8659e:	cc                                              	int3
  d8659f:	cc                                              	int3
  d865a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d865a4:	0f b7 48 18                                     	movzx  ecx,WORD PTR [eax+0x18]
  d865a8:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d865ab:	56                                              	push   esi
  d865ac:	51                                              	push   ecx
  d865ad:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d865b0:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d865b2:	52                                              	push   edx
  d865b3:	83 ec 0c                                        	sub    esp,0xc
  d865b6:	8b d4                                           	mov    edx,esp
  d865b8:	89 32                                           	mov    DWORD PTR [edx],esi
  d865ba:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d865bd:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d865c0:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d865c3:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d865c6:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d865c9:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d865cb:	52                                              	push   edx
  d865cc:	50                                              	push   eax
  d865cd:	ff 54 24 24                                     	call   DWORD PTR [esp+0x24]
  d865d1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d865d5:	83 c4 1c                                        	add    esp,0x1c
  d865d8:	88 01                                           	mov    BYTE PTR [ecx],al
  d865da:	5e                                              	pop    esi
  d865db:	c3                                              	ret
  d865dc:	cc                                              	int3
  d865dd:	cc                                              	int3
  d865de:	cc                                              	int3
  d865df:	cc                                              	int3
  d865e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d865e4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d865e7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d865ea:	51                                              	push   ecx
  d865eb:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d865ee:	52                                              	push   edx
  d865ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d865f1:	51                                              	push   ecx
  d865f2:	52                                              	push   edx
  d865f3:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d865f7:	83 c4 10                                        	add    esp,0x10
  d865fa:	c3                                              	ret
  d865fb:	cc                                              	int3
  d865fc:	cc                                              	int3
  d865fd:	cc                                              	int3
  d865fe:	cc                                              	int3
  d865ff:	cc                                              	int3
  d86600:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86604:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86607:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8660a:	51                                              	push   ecx
  d8660b:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d8660e:	52                                              	push   edx
  d8660f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86612:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86614:	51                                              	push   ecx
  d86615:	52                                              	push   edx
  d86616:	50                                              	push   eax
  d86617:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d8661b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d8661f:	83 c4 14                                        	add    esp,0x14
  d86622:	88 01                                           	mov    BYTE PTR [ecx],al
  d86624:	c3                                              	ret
  d86625:	cc                                              	int3
  d86626:	cc                                              	int3
  d86627:	cc                                              	int3
  d86628:	cc                                              	int3
  d86629:	cc                                              	int3
  d8662a:	cc                                              	int3
  d8662b:	cc                                              	int3
  d8662c:	cc                                              	int3
  d8662d:	cc                                              	int3
  d8662e:	cc                                              	int3
  d8662f:	cc                                              	int3
  d86630:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86634:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86637:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86639:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d8663b:	51                                              	push   ecx
  d8663c:	83 ec 0c                                        	sub    esp,0xc
  d8663f:	8b cc                                           	mov    ecx,esp
  d86641:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86643:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86646:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86649:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d8664c:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8664f:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86653:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d86657:	83 c4 10                                        	add    esp,0x10
  d8665a:	88 01                                           	mov    BYTE PTR [ecx],al
  d8665c:	c3                                              	ret
  d8665d:	cc                                              	int3
  d8665e:	cc                                              	int3
  d8665f:	cc                                              	int3
  d86660:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86664:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d86667:	83 ec 18                                        	sub    esp,0x18
  d8666a:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  d8666e:	8b cc                                           	mov    ecx,esp
  d86670:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d86673:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86675:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86677:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  d8667b:	89 11                                           	mov    DWORD PTR [ecx],edx
  d8667d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86680:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d86683:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86686:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d86689:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d8668c:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d8668f:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86693:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d86697:	83 c4 18                                        	add    esp,0x18
  d8669a:	89 01                                           	mov    DWORD PTR [ecx],eax
  d8669c:	c3                                              	ret
  d8669d:	cc                                              	int3
  d8669e:	cc                                              	int3
  d8669f:	cc                                              	int3
  d866a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d866a4:	dd 00                                           	fld    QWORD PTR [eax]
  d866a6:	83 ec 08                                        	sub    esp,0x8
  d866a9:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  d866ac:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d866b0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d866b4:	83 c4 08                                        	add    esp,0x8
  d866b7:	89 01                                           	mov    DWORD PTR [ecx],eax
  d866b9:	c3                                              	ret
  d866ba:	cc                                              	int3
  d866bb:	cc                                              	int3
  d866bc:	cc                                              	int3
  d866bd:	cc                                              	int3
  d866be:	cc                                              	int3
  d866bf:	cc                                              	int3
  d866c0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d866c4:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d866c7:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d866ca:	56                                              	push   esi
  d866cb:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d866cd:	83 ec 0c                                        	sub    esp,0xc
  d866d0:	8b d4                                           	mov    edx,esp
  d866d2:	89 32                                           	mov    DWORD PTR [edx],esi
  d866d4:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d866d7:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d866da:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d866dd:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d866e0:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d866e3:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d866e5:	83 ec 0c                                        	sub    esp,0xc
  d866e8:	8b d4                                           	mov    edx,esp
  d866ea:	89 32                                           	mov    DWORD PTR [edx],esi
  d866ec:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d866ef:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d866f2:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d866f5:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d866f8:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d866fb:	52                                              	push   edx
  d866fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d866fe:	51                                              	push   ecx
  d866ff:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86702:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d86705:	51                                              	push   ecx
  d86706:	52                                              	push   edx
  d86707:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d8670b:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d8670f:	83 c4 28                                        	add    esp,0x28
  d86712:	88 01                                           	mov    BYTE PTR [ecx],al
  d86714:	5e                                              	pop    esi
  d86715:	c3                                              	ret
  d86716:	cc                                              	int3
  d86717:	cc                                              	int3
  d86718:	cc                                              	int3
  d86719:	cc                                              	int3
  d8671a:	cc                                              	int3
  d8671b:	cc                                              	int3
  d8671c:	cc                                              	int3
  d8671d:	cc                                              	int3
  d8671e:	cc                                              	int3
  d8671f:	cc                                              	int3
  d86720:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86724:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86727:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d8672a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d8672d:	51                                              	push   ecx
  d8672e:	83 ec 08                                        	sub    esp,0x8
  d86731:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d86735:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d86738:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d8673a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d8673d:	52                                              	push   edx
  d8673e:	50                                              	push   eax
  d8673f:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d86743:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  d86747:	83 c4 14                                        	add    esp,0x14
  d8674a:	88 01                                           	mov    BYTE PTR [ecx],al
  d8674c:	c3                                              	ret
  d8674d:	cc                                              	int3
  d8674e:	cc                                              	int3
  d8674f:	cc                                              	int3
  d86750:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86754:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d86757:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86759:	51                                              	push   ecx
  d8675a:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d8675d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d86760:	51                                              	push   ecx
  d86761:	52                                              	push   edx
  d86762:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d86766:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d8676a:	83 c4 0c                                        	add    esp,0xc
  d8676d:	88 01                                           	mov    BYTE PTR [ecx],al
  d8676f:	c3                                              	ret
  d86770:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  d86774:	83 ec 0c                                        	sub    esp,0xc
  d86777:	56                                              	push   esi
  d86778:	50                                              	push   eax
  d86779:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d8677d:	51                                              	push   ecx
  d8677e:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86782:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86785:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86787:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d8678b:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d8678d:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86790:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86792:	83 c4 08                                        	add    esp,0x8
  d86795:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86798:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8679b:	5e                                              	pop    esi
  d8679c:	83 c4 0c                                        	add    esp,0xc
  d8679f:	c3                                              	ret
  d867a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d867a4:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d867a7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d867aa:	51                                              	push   ecx
  d867ab:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d867ae:	52                                              	push   edx
  d867af:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d867b2:	51                                              	push   ecx
  d867b3:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d867b6:	52                                              	push   edx
  d867b7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d867ba:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d867bc:	51                                              	push   ecx
  d867bd:	52                                              	push   edx
  d867be:	50                                              	push   eax
  d867bf:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d867c3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d867c7:	83 c4 1c                                        	add    esp,0x1c
  d867ca:	88 01                                           	mov    BYTE PTR [ecx],al
  d867cc:	c3                                              	ret
  d867cd:	cc                                              	int3
  d867ce:	cc                                              	int3
  d867cf:	cc                                              	int3
  d867d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d867d4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d867d7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d867da:	51                                              	push   ecx
  d867db:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d867de:	52                                              	push   edx
  d867df:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d867e2:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d867e4:	51                                              	push   ecx
  d867e5:	52                                              	push   edx
  d867e6:	50                                              	push   eax
  d867e7:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d867eb:	83 c4 14                                        	add    esp,0x14
  d867ee:	c3                                              	ret
  d867ef:	cc                                              	int3
  d867f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d867f4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d867f7:	56                                              	push   esi
  d867f8:	51                                              	push   ecx
  d867f9:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d867fc:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d867fe:	83 ec 0c                                        	sub    esp,0xc
  d86801:	8b d4                                           	mov    edx,esp
  d86803:	89 32                                           	mov    DWORD PTR [edx],esi
  d86805:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86808:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d8680b:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d8680e:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86811:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86814:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86816:	52                                              	push   edx
  d86817:	50                                              	push   eax
  d86818:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d8681c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d86820:	83 c4 18                                        	add    esp,0x18
  d86823:	66 89 01                                        	mov    WORD PTR [ecx],ax
  d86826:	5e                                              	pop    esi
  d86827:	c3                                              	ret
  d86828:	cc                                              	int3
  d86829:	cc                                              	int3
  d8682a:	cc                                              	int3
  d8682b:	cc                                              	int3
  d8682c:	cc                                              	int3
  d8682d:	cc                                              	int3
  d8682e:	cc                                              	int3
  d8682f:	cc                                              	int3
  d86830:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86834:	8b 48 24                                        	mov    ecx,DWORD PTR [eax+0x24]
  d86837:	dd 40 10                                        	fld    QWORD PTR [eax+0x10]
  d8683a:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d8683d:	51                                              	push   ecx
  d8683e:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86841:	52                                              	push   edx
  d86842:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86845:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86847:	51                                              	push   ecx
  d86848:	51                                              	push   ecx
  d86849:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d8684c:	52                                              	push   edx
  d8684d:	50                                              	push   eax
  d8684e:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86852:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d86856:	83 c4 18                                        	add    esp,0x18
  d86859:	88 01                                           	mov    BYTE PTR [ecx],al
  d8685b:	c3                                              	ret
  d8685c:	cc                                              	int3
  d8685d:	cc                                              	int3
  d8685e:	cc                                              	int3
  d8685f:	cc                                              	int3
  d86860:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86864:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86867:	dd 40 18                                        	fld    QWORD PTR [eax+0x18]
  d8686a:	56                                              	push   esi
  d8686b:	51                                              	push   ecx
  d8686c:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d8686f:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86871:	83 ec 14                                        	sub    esp,0x14
  d86874:	8b d4                                           	mov    edx,esp
  d86876:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  d8687a:	89 32                                           	mov    DWORD PTR [edx],esi
  d8687c:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d8687f:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86882:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  d86885:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  d86888:	89 72 08                                        	mov    DWORD PTR [edx+0x8],esi
  d8688b:	89 4a 0c                                        	mov    DWORD PTR [edx+0xc],ecx
  d8688e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86891:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86894:	52                                              	push   edx
  d86895:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86897:	51                                              	push   ecx
  d86898:	52                                              	push   edx
  d86899:	ff 54 24 2c                                     	call   DWORD PTR [esp+0x2c]
  d8689d:	83 c4 24                                        	add    esp,0x24
  d868a0:	5e                                              	pop    esi
  d868a1:	c3                                              	ret
  d868a2:	cc                                              	int3
  d868a3:	cc                                              	int3
  d868a4:	cc                                              	int3
  d868a5:	cc                                              	int3
  d868a6:	cc                                              	int3
  d868a7:	cc                                              	int3
  d868a8:	cc                                              	int3
  d868a9:	cc                                              	int3
  d868aa:	cc                                              	int3
  d868ab:	cc                                              	int3
  d868ac:	cc                                              	int3
  d868ad:	cc                                              	int3
  d868ae:	cc                                              	int3
  d868af:	cc                                              	int3
  d868b0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d868b4:	0f b6 48 10                                     	movzx  ecx,BYTE PTR [eax+0x10]
  d868b8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d868bb:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d868bd:	51                                              	push   ecx
  d868be:	52                                              	push   edx
  d868bf:	50                                              	push   eax
  d868c0:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d868c4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d868c8:	83 c4 0c                                        	add    esp,0xc
  d868cb:	88 01                                           	mov    BYTE PTR [ecx],al
  d868cd:	c3                                              	ret
  d868ce:	cc                                              	int3
  d868cf:	cc                                              	int3
  d868d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d868d4:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d868d7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d868da:	51                                              	push   ecx
  d868db:	0f b7 48 10                                     	movzx  ecx,WORD PTR [eax+0x10]
  d868df:	52                                              	push   edx
  d868e0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d868e3:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d868e5:	51                                              	push   ecx
  d868e6:	52                                              	push   edx
  d868e7:	50                                              	push   eax
  d868e8:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d868ec:	83 c4 14                                        	add    esp,0x14
  d868ef:	c3                                              	ret
  d868f0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d868f4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d868f7:	56                                              	push   esi
  d868f8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d868fa:	83 ec 0c                                        	sub    esp,0xc
  d868fd:	8b cc                                           	mov    ecx,esp
  d868ff:	89 31                                           	mov    DWORD PTR [ecx],esi
  d86901:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86904:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86907:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d8690a:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d8690d:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
  d86910:	8b 12                                           	mov    edx,DWORD PTR [edx]
  d86912:	51                                              	push   ecx
  d86913:	52                                              	push   edx
  d86914:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86918:	83 c4 14                                        	add    esp,0x14
  d8691b:	5e                                              	pop    esi
  d8691c:	c3                                              	ret
  d8691d:	cc                                              	int3
  d8691e:	cc                                              	int3
  d8691f:	cc                                              	int3
  d86920:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86924:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86927:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d8692a:	51                                              	push   ecx
  d8692b:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d8692e:	52                                              	push   edx
  d8692f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86931:	51                                              	push   ecx
  d86932:	52                                              	push   edx
  d86933:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86937:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d8693b:	83 c4 10                                        	add    esp,0x10
  d8693e:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86940:	c3                                              	ret
  d86941:	cc                                              	int3
  d86942:	cc                                              	int3
  d86943:	cc                                              	int3
  d86944:	cc                                              	int3
  d86945:	cc                                              	int3
  d86946:	cc                                              	int3
  d86947:	cc                                              	int3
  d86948:	cc                                              	int3
  d86949:	cc                                              	int3
  d8694a:	cc                                              	int3
  d8694b:	cc                                              	int3
  d8694c:	cc                                              	int3
  d8694d:	cc                                              	int3
  d8694e:	cc                                              	int3
  d8694f:	cc                                              	int3
  d86950:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86954:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d86957:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d8695a:	51                                              	push   ecx
  d8695b:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  d8695e:	52                                              	push   edx
  d8695f:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d86962:	51                                              	push   ecx
  d86963:	8b 48 24                                        	mov    ecx,DWORD PTR [eax+0x24]
  d86966:	52                                              	push   edx
  d86967:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d8696a:	51                                              	push   ecx
  d8696b:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  d8696e:	52                                              	push   edx
  d8696f:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86972:	51                                              	push   ecx
  d86973:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d86976:	52                                              	push   edx
  d86977:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d8697a:	51                                              	push   ecx
  d8697b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d8697e:	52                                              	push   edx
  d8697f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86981:	51                                              	push   ecx
  d86982:	52                                              	push   edx
  d86983:	ff 54 24 34                                     	call   DWORD PTR [esp+0x34]
  d86987:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  d8698b:	83 c4 30                                        	add    esp,0x30
  d8698e:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86990:	c3                                              	ret
  d86991:	cc                                              	int3
  d86992:	cc                                              	int3
  d86993:	cc                                              	int3
  d86994:	cc                                              	int3
  d86995:	cc                                              	int3
  d86996:	cc                                              	int3
  d86997:	cc                                              	int3
  d86998:	cc                                              	int3
  d86999:	cc                                              	int3
  d8699a:	cc                                              	int3
  d8699b:	cc                                              	int3
  d8699c:	cc                                              	int3
  d8699d:	cc                                              	int3
  d8699e:	cc                                              	int3
  d8699f:	cc                                              	int3
  d869a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d869a4:	dd 40 08                                        	fld    QWORD PTR [eax+0x8]
  d869a7:	83 ec 08                                        	sub    esp,0x8
  d869aa:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  d869ae:	dd 00                                           	fld    QWORD PTR [eax]
  d869b0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  d869b3:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d869b7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d869bb:	83 c4 08                                        	add    esp,0x8
  d869be:	88 01                                           	mov    BYTE PTR [ecx],al
  d869c0:	c3                                              	ret
  d869c1:	cc                                              	int3
  d869c2:	cc                                              	int3
  d869c3:	cc                                              	int3
  d869c4:	cc                                              	int3
  d869c5:	cc                                              	int3
  d869c6:	cc                                              	int3
  d869c7:	cc                                              	int3
  d869c8:	cc                                              	int3
  d869c9:	cc                                              	int3
  d869ca:	cc                                              	int3
  d869cb:	cc                                              	int3
  d869cc:	cc                                              	int3
  d869cd:	cc                                              	int3
  d869ce:	cc                                              	int3
  d869cf:	cc                                              	int3
  d869d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d869d4:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d869d7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d869da:	51                                              	push   ecx
  d869db:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d869de:	52                                              	push   edx
  d869df:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d869e2:	51                                              	push   ecx
  d869e3:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d869e6:	52                                              	push   edx
  d869e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d869e9:	51                                              	push   ecx
  d869ea:	52                                              	push   edx
  d869eb:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d869ef:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d869f3:	83 c4 18                                        	add    esp,0x18
  d869f6:	89 01                                           	mov    DWORD PTR [ecx],eax
  d869f8:	c3                                              	ret
  d869f9:	cc                                              	int3
  d869fa:	cc                                              	int3
  d869fb:	cc                                              	int3
  d869fc:	cc                                              	int3
  d869fd:	cc                                              	int3
  d869fe:	cc                                              	int3
  d869ff:	cc                                              	int3
  d86a00:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86a04:	dd 00                                           	fld    QWORD PTR [eax]
  d86a06:	83 ec 08                                        	sub    esp,0x8
  d86a09:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  d86a0c:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d86a10:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d86a14:	dd 19                                           	fstp   QWORD PTR [ecx]
  d86a16:	83 c4 08                                        	add    esp,0x8
  d86a19:	c3                                              	ret
  d86a1a:	cc                                              	int3
  d86a1b:	cc                                              	int3
  d86a1c:	cc                                              	int3
  d86a1d:	cc                                              	int3
  d86a1e:	cc                                              	int3
  d86a1f:	cc                                              	int3
  d86a20:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86a24:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86a27:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86a29:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  d86a2d:	51                                              	push   ecx
  d86a2e:	52                                              	push   edx
  d86a2f:	50                                              	push   eax
  d86a30:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d86a34:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d86a38:	83 c4 0c                                        	add    esp,0xc
  d86a3b:	88 01                                           	mov    BYTE PTR [ecx],al
  d86a3d:	c3                                              	ret
  d86a3e:	cc                                              	int3
  d86a3f:	cc                                              	int3
  d86a40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86a44:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86a47:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86a4a:	51                                              	push   ecx
  d86a4b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86a4e:	52                                              	push   edx
  d86a4f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86a52:	51                                              	push   ecx
  d86a53:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86a56:	52                                              	push   edx
  d86a57:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86a59:	51                                              	push   ecx
  d86a5a:	52                                              	push   edx
  d86a5b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86a5f:	83 c4 18                                        	add    esp,0x18
  d86a62:	c3                                              	ret
  d86a63:	cc                                              	int3
  d86a64:	cc                                              	int3
  d86a65:	cc                                              	int3
  d86a66:	cc                                              	int3
  d86a67:	cc                                              	int3
  d86a68:	cc                                              	int3
  d86a69:	cc                                              	int3
  d86a6a:	cc                                              	int3
  d86a6b:	cc                                              	int3
  d86a6c:	cc                                              	int3
  d86a6d:	cc                                              	int3
  d86a6e:	cc                                              	int3
  d86a6f:	cc                                              	int3
  d86a70:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d86a74:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d86a77:	dd 42 10                                        	fld    QWORD PTR [edx+0x10]
  d86a7a:	56                                              	push   esi
  d86a7b:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d86a7d:	83 ec 10                                        	sub    esp,0x10
  d86a80:	8b cc                                           	mov    ecx,esp
  d86a82:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  d86a86:	89 31                                           	mov    DWORD PTR [ecx],esi
  d86a88:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86a8b:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86a8e:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86a91:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d86a94:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d86a96:	51                                              	push   ecx
  d86a97:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86a9b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  d86a9f:	83 c4 14                                        	add    esp,0x14
  d86aa2:	89 02                                           	mov    DWORD PTR [edx],eax
  d86aa4:	5e                                              	pop    esi
  d86aa5:	c3                                              	ret
  d86aa6:	cc                                              	int3
  d86aa7:	cc                                              	int3
  d86aa8:	cc                                              	int3
  d86aa9:	cc                                              	int3
  d86aaa:	cc                                              	int3
  d86aab:	cc                                              	int3
  d86aac:	cc                                              	int3
  d86aad:	cc                                              	int3
  d86aae:	cc                                              	int3
  d86aaf:	cc                                              	int3
  d86ab0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86ab4:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86ab7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86ab9:	83 ec 60                                        	sub    esp,0x60
  d86abc:	56                                              	push   esi
  d86abd:	57                                              	push   edi
  d86abe:	51                                              	push   ecx
  d86abf:	52                                              	push   edx
  d86ac0:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  d86ac4:	50                                              	push   eax
  d86ac5:	ff 54 24 78                                     	call   DWORD PTR [esp+0x78]
  d86ac9:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
  d86acd:	b9 0c 00 00 00                                  	mov    ecx,0xc
  d86ad2:	8b f0                                           	mov    esi,eax
  d86ad4:	8d 7c 24 14                                     	lea    edi,[esp+0x14]
  d86ad8:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d86ada:	8b 3a                                           	mov    edi,DWORD PTR [edx]
  d86adc:	83 c4 0c                                        	add    esp,0xc
  d86adf:	b9 0c 00 00 00                                  	mov    ecx,0xc
  d86ae4:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  d86ae8:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  d86aea:	5f                                              	pop    edi
  d86aeb:	5e                                              	pop    esi
  d86aec:	83 c4 60                                        	add    esp,0x60
  d86aef:	c3                                              	ret
  d86af0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86af4:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86af7:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d86afa:	51                                              	push   ecx
  d86afb:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d86afe:	52                                              	push   edx
  d86aff:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86b02:	51                                              	push   ecx
  d86b03:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86b06:	52                                              	push   edx
  d86b07:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86b09:	51                                              	push   ecx
  d86b0a:	52                                              	push   edx
  d86b0b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86b0f:	83 c4 18                                        	add    esp,0x18
  d86b12:	c3                                              	ret
  d86b13:	cc                                              	int3
  d86b14:	cc                                              	int3
  d86b15:	cc                                              	int3
  d86b16:	cc                                              	int3
  d86b17:	cc                                              	int3
  d86b18:	cc                                              	int3
  d86b19:	cc                                              	int3
  d86b1a:	cc                                              	int3
  d86b1b:	cc                                              	int3
  d86b1c:	cc                                              	int3
  d86b1d:	cc                                              	int3
  d86b1e:	cc                                              	int3
  d86b1f:	cc                                              	int3
  d86b20:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86b24:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86b27:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86b2a:	51                                              	push   ecx
  d86b2b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86b2e:	52                                              	push   edx
  d86b2f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86b32:	51                                              	push   ecx
  d86b33:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86b36:	52                                              	push   edx
  d86b37:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86b39:	51                                              	push   ecx
  d86b3a:	52                                              	push   edx
  d86b3b:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  d86b3f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d86b43:	83 c4 18                                        	add    esp,0x18
  d86b46:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86b48:	c3                                              	ret
  d86b49:	cc                                              	int3
  d86b4a:	cc                                              	int3
  d86b4b:	cc                                              	int3
  d86b4c:	cc                                              	int3
  d86b4d:	cc                                              	int3
  d86b4e:	cc                                              	int3
  d86b4f:	cc                                              	int3
  d86b50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86b54:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86b57:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86b59:	83 ec 0c                                        	sub    esp,0xc
  d86b5c:	56                                              	push   esi
  d86b5d:	51                                              	push   ecx
  d86b5e:	52                                              	push   edx
  d86b5f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  d86b63:	50                                              	push   eax
  d86b64:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d86b68:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86b6b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86b6d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d86b71:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d86b73:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86b76:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86b78:	83 c4 0c                                        	add    esp,0xc
  d86b7b:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86b7e:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d86b81:	5e                                              	pop    esi
  d86b82:	83 c4 0c                                        	add    esp,0xc
  d86b85:	c3                                              	ret
  d86b86:	cc                                              	int3
  d86b87:	cc                                              	int3
  d86b88:	cc                                              	int3
  d86b89:	cc                                              	int3
  d86b8a:	cc                                              	int3
  d86b8b:	cc                                              	int3
  d86b8c:	cc                                              	int3
  d86b8d:	cc                                              	int3
  d86b8e:	cc                                              	int3
  d86b8f:	cc                                              	int3
  d86b90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86b94:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  d86b97:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86b9a:	83 ec 10                                        	sub    esp,0x10
  d86b9d:	56                                              	push   esi
  d86b9e:	57                                              	push   edi
  d86b9f:	51                                              	push   ecx
  d86ba0:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86ba3:	52                                              	push   edx
  d86ba4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86ba6:	51                                              	push   ecx
  d86ba7:	52                                              	push   edx
  d86ba8:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  d86bac:	50                                              	push   eax
  d86bad:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d86bb1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86bb4:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  d86bb7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86bb9:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d86bbc:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d86bc0:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  d86bc2:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86bc4:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86bc7:	83 c4 14                                        	add    esp,0x14
  d86bca:	89 79 08                                        	mov    DWORD PTR [ecx+0x8],edi
  d86bcd:	5f                                              	pop    edi
  d86bce:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d86bd1:	5e                                              	pop    esi
  d86bd2:	83 c4 10                                        	add    esp,0x10
  d86bd5:	c3                                              	ret
  d86bd6:	cc                                              	int3
  d86bd7:	cc                                              	int3
  d86bd8:	cc                                              	int3
  d86bd9:	cc                                              	int3
  d86bda:	cc                                              	int3
  d86bdb:	cc                                              	int3
  d86bdc:	cc                                              	int3
  d86bdd:	cc                                              	int3
  d86bde:	cc                                              	int3
  d86bdf:	cc                                              	int3
  d86be0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86be4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86be7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86be9:	51                                              	push   ecx
  d86bea:	52                                              	push   edx
  d86beb:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d86bef:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  d86bf3:	83 c4 08                                        	add    esp,0x8
  d86bf6:	88 01                                           	mov    BYTE PTR [ecx],al
  d86bf8:	c3                                              	ret
  d86bf9:	cc                                              	int3
  d86bfa:	cc                                              	int3
  d86bfb:	cc                                              	int3
  d86bfc:	cc                                              	int3
  d86bfd:	cc                                              	int3
  d86bfe:	cc                                              	int3
  d86bff:	cc                                              	int3
  d86c00:	ff 64 24 04                                     	jmp    DWORD PTR [esp+0x4]
  d86c04:	cc                                              	int3
  d86c05:	cc                                              	int3
  d86c06:	cc                                              	int3
  d86c07:	cc                                              	int3
  d86c08:	cc                                              	int3
  d86c09:	cc                                              	int3
  d86c0a:	cc                                              	int3
  d86c0b:	cc                                              	int3
  d86c0c:	cc                                              	int3
  d86c0d:	cc                                              	int3
  d86c0e:	cc                                              	int3
  d86c0f:	cc                                              	int3
  d86c10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86c14:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  d86c17:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
  d86c1a:	51                                              	push   ecx
  d86c1b:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  d86c1e:	52                                              	push   edx
  d86c1f:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  d86c22:	51                                              	push   ecx
  d86c23:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  d86c26:	52                                              	push   edx
  d86c27:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  d86c2a:	51                                              	push   ecx
  d86c2b:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  d86c2e:	52                                              	push   edx
  d86c2f:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d86c32:	51                                              	push   ecx
  d86c33:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86c36:	52                                              	push   edx
  d86c37:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86c3a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86c3c:	51                                              	push   ecx
  d86c3d:	52                                              	push   edx
  d86c3e:	50                                              	push   eax
  d86c3f:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d86c43:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d86c47:	83 c4 2c                                        	add    esp,0x2c
  d86c4a:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86c4c:	c3                                              	ret
  d86c4d:	cc                                              	int3
  d86c4e:	cc                                              	int3
  d86c4f:	cc                                              	int3
  d86c50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86c54:	8b 48 60                                        	mov    ecx,DWORD PTR [eax+0x60]
  d86c57:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  d86c5a:	51                                              	push   ecx
  d86c5b:	8b 48 50                                        	mov    ecx,DWORD PTR [eax+0x50]
  d86c5e:	52                                              	push   edx
  d86c5f:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  d86c62:	51                                              	push   ecx
  d86c63:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
  d86c66:	52                                              	push   edx
  d86c67:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  d86c6a:	51                                              	push   ecx
  d86c6b:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d86c6e:	52                                              	push   edx
  d86c6f:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d86c72:	51                                              	push   ecx
  d86c73:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86c76:	52                                              	push   edx
  d86c77:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86c7a:	51                                              	push   ecx
  d86c7b:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86c7e:	52                                              	push   edx
  d86c7f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d86c82:	51                                              	push   ecx
  d86c83:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86c86:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86c88:	52                                              	push   edx
  d86c89:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86c8b:	51                                              	push   ecx
  d86c8c:	83 ec 10                                        	sub    esp,0x10
  d86c8f:	8b cc                                           	mov    ecx,esp
  d86c91:	89 11                                           	mov    DWORD PTR [ecx],edx
  d86c93:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86c96:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  d86c99:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86c9c:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  d86c9f:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  d86ca2:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  d86ca5:	ff 54 24 48                                     	call   DWORD PTR [esp+0x48]
  d86ca9:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  d86cad:	83 c4 44                                        	add    esp,0x44
  d86cb0:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86cb2:	c3                                              	ret
  d86cb3:	cc                                              	int3
  d86cb4:	cc                                              	int3
  d86cb5:	cc                                              	int3
  d86cb6:	cc                                              	int3
  d86cb7:	cc                                              	int3
  d86cb8:	cc                                              	int3
  d86cb9:	cc                                              	int3
  d86cba:	cc                                              	int3
  d86cbb:	cc                                              	int3
  d86cbc:	cc                                              	int3
  d86cbd:	cc                                              	int3
  d86cbe:	cc                                              	int3
  d86cbf:	cc                                              	int3
  d86cc0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  d86cc4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d86cc7:	56                                              	push   esi
  d86cc8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  d86cca:	83 ec 0c                                        	sub    esp,0xc
  d86ccd:	8b cc                                           	mov    ecx,esp
  d86ccf:	89 31                                           	mov    DWORD PTR [ecx],esi
  d86cd1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  d86cd4:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d86cd7:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  d86cda:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  d86cdd:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  d86cdf:	51                                              	push   ecx
  d86ce0:	ff 54 24 18                                     	call   DWORD PTR [esp+0x18]
  d86ce4:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  d86ce8:	83 c4 10                                        	add    esp,0x10
  d86ceb:	88 02                                           	mov    BYTE PTR [edx],al
  d86ced:	5e                                              	pop    esi
  d86cee:	c3                                              	ret
  d86cef:	cc                                              	int3
  d86cf0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86cf4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86cf7:	56                                              	push   esi
  d86cf8:	51                                              	push   ecx
  d86cf9:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86cfc:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86cfe:	83 ec 0c                                        	sub    esp,0xc
  d86d01:	8b d4                                           	mov    edx,esp
  d86d03:	89 32                                           	mov    DWORD PTR [edx],esi
  d86d05:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86d08:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d86d0b:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86d0e:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86d11:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86d14:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86d16:	52                                              	push   edx
  d86d17:	50                                              	push   eax
  d86d18:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d86d1c:	83 c4 18                                        	add    esp,0x18
  d86d1f:	5e                                              	pop    esi
  d86d20:	c3                                              	ret
  d86d21:	cc                                              	int3
  d86d22:	cc                                              	int3
  d86d23:	cc                                              	int3
  d86d24:	cc                                              	int3
  d86d25:	cc                                              	int3
  d86d26:	cc                                              	int3
  d86d27:	cc                                              	int3
  d86d28:	cc                                              	int3
  d86d29:	cc                                              	int3
  d86d2a:	cc                                              	int3
  d86d2b:	cc                                              	int3
  d86d2c:	cc                                              	int3
  d86d2d:	cc                                              	int3
  d86d2e:	cc                                              	int3
  d86d2f:	cc                                              	int3
  d86d30:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86d34:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86d37:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86d3a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86d3c:	51                                              	push   ecx
  d86d3d:	52                                              	push   edx
  d86d3e:	50                                              	push   eax
  d86d3f:	ff 54 24 10                                     	call   DWORD PTR [esp+0x10]
  d86d43:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d86d47:	83 c4 0c                                        	add    esp,0xc
  d86d4a:	89 01                                           	mov    DWORD PTR [ecx],eax
  d86d4c:	c3                                              	ret
  d86d4d:	cc                                              	int3
  d86d4e:	cc                                              	int3
  d86d4f:	cc                                              	int3
  d86d50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86d54:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86d57:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86d59:	51                                              	push   ecx
  d86d5a:	52                                              	push   edx
  d86d5b:	ff 54 24 0c                                     	call   DWORD PTR [esp+0xc]
  d86d5f:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86d63:	d9 18                                           	fstp   DWORD PTR [eax]
  d86d65:	83 c4 08                                        	add    esp,0x8
  d86d68:	c3                                              	ret
  d86d69:	cc                                              	int3
  d86d6a:	cc                                              	int3
  d86d6b:	cc                                              	int3
  d86d6c:	cc                                              	int3
  d86d6d:	cc                                              	int3
  d86d6e:	cc                                              	int3
  d86d6f:	cc                                              	int3
  d86d70:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86d74:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  d86d77:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d86d7a:	51                                              	push   ecx
  d86d7b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86d7e:	52                                              	push   edx
  d86d7f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86d81:	51                                              	push   ecx
  d86d82:	52                                              	push   edx
  d86d83:	ff 54 24 14                                     	call   DWORD PTR [esp+0x14]
  d86d87:	83 c4 10                                        	add    esp,0x10
  d86d8a:	c3                                              	ret
  d86d8b:	cc                                              	int3
  d86d8c:	cc                                              	int3
  d86d8d:	cc                                              	int3
  d86d8e:	cc                                              	int3
  d86d8f:	cc                                              	int3
  d86d90:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86d94:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  d86d97:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  d86d9a:	51                                              	push   ecx
  d86d9b:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86d9e:	52                                              	push   edx
  d86d9f:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86da2:	51                                              	push   ecx
  d86da3:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86da6:	52                                              	push   edx
  d86da7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d86daa:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86dac:	51                                              	push   ecx
  d86dad:	52                                              	push   edx
  d86dae:	50                                              	push   eax
  d86daf:	ff 54 24 20                                     	call   DWORD PTR [esp+0x20]
  d86db3:	83 c4 1c                                        	add    esp,0x1c
  d86db6:	c3                                              	ret
  d86db7:	cc                                              	int3
  d86db8:	cc                                              	int3
  d86db9:	cc                                              	int3
  d86dba:	cc                                              	int3
  d86dbb:	cc                                              	int3
  d86dbc:	cc                                              	int3
  d86dbd:	cc                                              	int3
  d86dbe:	cc                                              	int3
  d86dbf:	cc                                              	int3
  d86dc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86dc4:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86dc7:	56                                              	push   esi
  d86dc8:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86dca:	83 ec 0c                                        	sub    esp,0xc
  d86dcd:	8b d4                                           	mov    edx,esp
  d86dcf:	89 32                                           	mov    DWORD PTR [edx],esi
  d86dd1:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86dd4:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d86dd7:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86dda:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86ddd:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86de0:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86de2:	83 ec 0c                                        	sub    esp,0xc
  d86de5:	8b d4                                           	mov    edx,esp
  d86de7:	89 32                                           	mov    DWORD PTR [edx],esi
  d86de9:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86dec:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d86def:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86df2:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86df5:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86df8:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86dfa:	52                                              	push   edx
  d86dfb:	50                                              	push   eax
  d86dfc:	ff 54 24 28                                     	call   DWORD PTR [esp+0x28]
  d86e00:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  d86e04:	83 c4 20                                        	add    esp,0x20
  d86e07:	88 01                                           	mov    BYTE PTR [ecx],al
  d86e09:	5e                                              	pop    esi
  d86e0a:	c3                                              	ret
  d86e0b:	cc                                              	int3
  d86e0c:	cc                                              	int3
  d86e0d:	cc                                              	int3
  d86e0e:	cc                                              	int3
  d86e0f:	cc                                              	int3
  d86e10:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86e14:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  d86e17:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  d86e1a:	56                                              	push   esi
  d86e1b:	51                                              	push   ecx
  d86e1c:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  d86e1f:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86e21:	52                                              	push   edx
  d86e22:	83 ec 0c                                        	sub    esp,0xc
  d86e25:	8b d4                                           	mov    edx,esp
  d86e27:	89 32                                           	mov    DWORD PTR [edx],esi
  d86e29:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86e2c:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d86e2f:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86e32:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86e35:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d86e38:	8b 31                                           	mov    esi,DWORD PTR [ecx]
  d86e3a:	83 ec 0c                                        	sub    esp,0xc
  d86e3d:	8b d4                                           	mov    edx,esp
  d86e3f:	89 32                                           	mov    DWORD PTR [edx],esi
  d86e41:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d86e44:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  d86e47:	89 72 04                                        	mov    DWORD PTR [edx+0x4],esi
  d86e4a:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  d86e4d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d86e50:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d86e52:	52                                              	push   edx
  d86e53:	50                                              	push   eax
  d86e54:	ff 54 24 30                                     	call   DWORD PTR [esp+0x30]
  d86e58:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d86e5c:	83 c4 28                                        	add    esp,0x28
  d86e5f:	88 01                                           	mov    BYTE PTR [ecx],al
  d86e61:	5e                                              	pop    esi
  d86e62:	c3                                              	ret
  d86e63:	cc                                              	int3
  d86e64:	cc                                              	int3
  d86e65:	cc                                              	int3
  d86e66:	cc                                              	int3
  d86e67:	cc                                              	int3
  d86e68:	cc                                              	int3
  d86e69:	cc                                              	int3
  d86e6a:	cc                                              	int3
  d86e6b:	cc                                              	int3
  d86e6c:	cc                                              	int3
  d86e6d:	cc                                              	int3
  d86e6e:	cc                                              	int3
  d86e6f:	cc                                              	int3
  d86e70:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d86e74:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  d86e77:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d86e79:	81 ec 80 00 00 00                               	sub    esp,0x80
  d86e7f:	56                                              	push   esi
