# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077da20 (ScriptCore.UIManager::UIManager_GetPickInfoImpl)
Paired Ghidra pseudocode: 0077DA20_ScriptCore_UIManager_UIManager_GetPickInfoImpl.c
Window: [0x0077da20, 0x0077e710) (3312 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077e710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077da20: 55 8b ec 83 e4 f0 81 ec d4 01 00 00 53 56 57 e8
0077da30: 5c b9 fe ff 8b 4d 08 8b d1 81 e2 00 00 00 ff 81
0077da40: fa 00 00 00 30 0f 85 b8 0c 00 00 8b 10 51 8b c8
0077da50: 8b 82 cc 00 00 00 ff d0 85 c0 0f 84 a3 0c 00 00
0077da60: 8b 10 8b c8 8b 42 0c 68 6f 43 9a 03 ff d0 85 c0
0077da70: 0f 84 8d 0c 00 00 8b 88 9c 02 00 00 8b 55 0c 8b
0077da80: 7d 18 8b 5d 1c 8d b0 80 02 00 00 89 0a 8b 46 20
0077da90: 8b 4d 10 89 01 8b 56 10 8b 45 14 89 10 8b 4e 14
0077daa0: 89 48 04 8b 45 24 c7 07 00 00 00 00 8b 56 24 89
0077dab0: 10 0f 28 06 0f 29 44 24 60 f3 0f 10 44 24 60 f3
0077dac0: 0f 11 03 0f 28 06 0f 29 44 24 60 f3 0f 10 44 24
0077dad0: 64 f3 0f 11 43 04 0f 28 06 0f 29 44 24 60 f3 0f
0077dae0: 10 44 24 68 f3 0f 11 43 08 8b 46 18 85 c0 0f 84
0077daf0: 0f 0c 00 00 a9 00 00 00 01 c6 44 24 0f 00 74 5e
0077db00: c7 07 02 00 00 00 8b 0d c4 db 1e 01 8b 49 5c 85
0077db10: c9 0f 84 64 09 00 00 0f 28 06 6a 00 6a 00 6a 00
0077db20: 6a 00 6a 01 0f 29 44 24 74 d9 44 24 7c 83 ec 08
0077db30: d9 5c 24 04 0f 29 84 24 fc 00 00 00 d9 84 24 fc
0077db40: 00 00 00 d9 1c 24 e8 15 a4 3f 00 84 c0 0f 84 28
0077db50: 09 00 00 c7 07 07 00 00 00 e9 1d 09 00 00 a9 00
0077db60: 00 20 00 74 0b c7 07 09 00 00 00 e9 0b 09 00 00
0077db70: a9 00 20 80 10 0f 84 47 04 00 00 a9 00 00 80 00
0077db80: 0f 84 be 00 00 00 0c ff 83 7e 10 01 c7 44 24 10
0077db90: 00 00 00 00 88 44 24 14 88 44 24 15 c6 44 24 16
0077dba0: 00 88 44 24 17 88 44 24 18 c6 44 24 19 00 0f 85
0077dbb0: a0 00 00 00 83 7e 14 00 0f 85 96 00 00 00 6a 00
0077dbc0: 8d 54 24 18 52 8d 44 24 18 50 56 e8 20 47 2d 00
0077dbd0: 83 c4 10 84 c0 74 7d 8b 44 24 10 8d 8c 24 80 00
0077dbe0: 00 00 51 8d 54 24 18 52 50 c7 07 04 00 00 00 e8
0077dbf0: 9c 49 2d 00 83 c4 0c 84 c0 74 49 0f 28 84 24 80
0077dc00: 00 00 00 0f 29 84 24 80 00 00 00 f3 0f 10 8c 24
0077dc10: 80 00 00 00 0f 29 84 24 80 00 00 00 f3 0f 11 0b
0077dc20: f3 0f 10 8c 24 84 00 00 00 0f 29 84 24 80 00 00
0077dc30: 00 f3 0f 10 84 24 88 00 00 00 f3 0f 11 4b 04 f3
0077dc40: 0f 11 43 08 c7 07 03 00 00 00 c6 44 24 0f 01 e9
0077dc50: 27 08 00 00 8b 4d 14 51 56 e8 c2 30 39 00 83 c4
0077dc60: 08 84 c0 74 21 8b 45 14 8b 50 04 8b 00 52 50 e8
0077dc70: dc c6 1b 00 83 c4 08 84 c0 74 0b c7 07 02 00 00
0077dc80: 00 e9 f5 07 00 00 8d 4c 24 14 51 8d 54 24 14 52
0077dc90: 56 e8 ca 2e 39 00 83 c4 0c 84 c0 74 a7 8b 44 24
0077dca0: 10 8b 88 98 02 00 00 6a 00 8d 54 24 18 52 e8 3d
0077dcb0: a1 3c 00 50 89 44 24 20 e8 73 db 4d 00 83 c4 04
0077dcc0: 84 c0 0f 84 a2 00 00 00 8a 44 24 14 8a 4c 24 15
0077dcd0: 8a 54 24 16 8b 5c 24 10 88 44 24 1c 8d 44 24 1c
0077dce0: 88 4c 24 1d 50 8b cb 88 54 24 22 e8 f0 fa ff ff
0077dcf0: d9 5c 24 4c 8b 13 8b 52 64 8d 84 24 00 01 00 00
0077dd00: 50 8b cb ff d2 d9 44 24 4c 0f 28 06 89 84 24 b8
0077dd10: 00 00 00 d9 9c 24 bc 00 00 00 f3 0f 10 8c 24 bc
0077dd20: 00 00 00 8b 84 24 b8 00 00 00 0f c6 c0 55 0f c6
0077dd30: c9 00 0f 5c c1 0f 28 08 0f c6 c9 55 0f 5c c1 0f
0077dd40: 29 84 24 80 00 00 00 f3 0f 10 84 24 80 00 00 00
0077dd50: 0f 2f 05 f8 98 f9 00 b8 12 00 00 00 77 05 b8 13
0077dd60: 00 00 00 89 07 e9 11 07 00 00 8b 4c 24 1c 51 e8
0077dd70: ec da 4d 00 83 c4 04 84 c0 74 0b c7 07 0d 00 00
0077dd80: 00 e9 f5 06 00 00 8b 54 24 1c 52 e8 c0 d9 4d 00
0077dd90: 50 e8 ca b7 ff ff 83 c4 08 84 c0 0f 84 a3 fe ff
0077dda0: ff 8b 44 24 10 8b 80 b8 02 00 00 85 c0 89 44 24
0077ddb0: 1c 0f 84 c4 06 00 00 8d 4c 24 14 51 8b c8 e8 4d
0077ddc0: 07 4a 00 8b 4c 24 1c 50 e8 d3 cd 49 00 8b 4d 14
0077ddd0: 89 51 04 8b d0 0b 51 04 89 01 0f 84 9b 06 00 00
0077dde0: f3 0f 10 05 18 b2 fa 00 8d 84 24 98 00 00 00 50
0077ddf0: 8d 4c 24 18 51 f3 0f 11 84 24 a0 00 00 00 f3 0f
0077de00: 11 84 24 a4 00 00 00 c7 84 24 a8 00 00 00 00 00
0077de10: 00 00 e8 69 80 4c 00 8b 94 24 a8 00 00 00 f3 0f
0077de20: 10 84 24 a0 00 00 00 6a 00 83 c2 01 8d 44 24 5c
0077de30: 50 8d 8c 24 f0 00 00 00 89 94 24 f8 00 00 00 8b
0077de40: 54 24 20 51 f3 0f 11 84 24 f4 00 00 00 f3 0f 10
0077de50: 84 24 b0 00 00 00 52 f3 0f 11 84 24 fc 00 00 00
0077de60: e8 5b e9 35 00 8b 4c 24 28 8b 01 8b 40 64 83 c4
0077de70: 18 8d 94 24 f0 00 00 00 52 ff d0 0f 28 00 0f 28
0077de80: 4c 24 50 0f c6 c0 55 0f c6 c9 55 0f 58 c1 f3 0f
0077de90: 10 4b 04 0f c6 c9 00 0f 5c c1 0f 29 84 24 80 00
0077dea0: 00 00 f3 0f 10 84 24 80 00 00 00 0f 2f 05 24 12
0077deb0: 06 01 72 63 f3 0f 10 0d f0 ed 00 01 0f 2f c8 76
0077dec0: 56 8b 54 24 10 f3 0f 10 05 18 b2 fa 00 8d 8c 24
0077ded0: c0 00 00 00 51 56 52 c7 07 10 00 00 00 f3 0f 11
0077dee0: 84 24 cc 00 00 00 f3 0f 11 84 24 d0 00 00 00 c7
0077def0: 84 24 d4 00 00 00 00 00 00 00 e8 61 e9 35 00 8b
0077df00: 84 24 d4 00 00 00 8b 4d 14 99 83 c4 0c 89 01 89
0077df10: 51 04 e9 64 05 00 00 8b 54 24 10 6a 00 8d 44 24
0077df20: 34 50 8d 8c 24 a0 00 00 00 51 52 e8 90 e8 35 00
0077df30: 8b 4c 24 20 83 c4 10 8d 84 24 a0 01 00 00 50 e8
0077df40: fc 35 33 00 0f 28 4c 24 30 0f 28 10 0f 28 58 10
0077df50: 8b 4d 24 0f 28 c1 0f c6 c1 00 0f 59 c2 0f 28 50
0077df60: 30 0f 58 c2 0f 28 d1 0f c6 d1 55 0f 59 d3 0f 58
0077df70: c2 0f 28 d1 0f c6 d1 aa 0f 28 48 20 0f 59 d1 0f
0077df80: 58 c2 0f 29 44 24 30 f3 0f 10 4c 24 30 f3 0f 11
0077df90: 0b 0f 29 44 24 30 f3 0f 10 4c 24 34 0f 29 44 24
0077dfa0: 30 f3 0f 10 44 24 38 f3 0f 11 4b 04 f3 0f 11 43
0077dfb0: 08 c7 07 02 00 00 00 c7 01 15 00 00 00 e9 b9 04
0077dfc0: 00 00 8b d0 81 e2 00 00 40 40 81 fa 00 00 40 40
0077dfd0: 0f 85 84 00 00 00 0f 28 06 8b 0d c4 db 1e 01 0f
0077dfe0: 29 44 24 30 d9 44 24 38 83 ec 08 d9 5c 24 04 0f
0077dff0: 29 44 24 58 d9 44 24 58 d9 1c 24 e8 d0 a7 4e 00
0077e000: 85 c0 0f 84 73 04 00 00 f3 0f 10 05 18 b2 fa 00
0077e010: 8d 8c 24 cc 00 00 00 51 56 50 c7 07 10 00 00 00
0077e020: f3 0f 11 84 24 d8 00 00 00 f3 0f 11 84 24 dc 00
0077e030: 00 00 c7 84 24 e0 00 00 00 00 00 00 00 e8 1e e8
0077e040: 35 00 8b 84 24 e0 00 00 00 8b 4d 14 99 83 c4 0c
0077e050: 89 01 89 51 04 e9 21 04 00 00 a9 00 40 40 00 0f
0077e060: 84 ef 00 00 00 8b d7 c7 02 05 00 00 00 0f 28 06
0077e070: 8b 0d c4 db 1e 01 0f 29 44 24 30 d9 44 24 38 83
0077e080: ec 08 d9 5c 24 04 0f 29 44 24 58 d9 44 24 58 d9
0077e090: 1c 24 e8 39 a7 4e 00 8b f8 85 ff 0f 84 a6 00 00
0077e0a0: 00 f3 0f 10 05 18 b2 fa 00 8d 84 24 a4 00 00 00
0077e0b0: 50 56 57 f3 0f 11 84 24 b0 00 00 00 f3 0f 11 84
0077e0c0: 24 b4 00 00 00 c7 84 24 b8 00 00 00 00 00 00 00
0077e0d0: e8 8b e7 35 00 8d 8c 24 b0 00 00 00 51 57 e8 bd
0077e0e0: 6d 38 00 83 c4 14 84 c0 74 12 f3 0f 10 43 04 f3
0077e0f0: 0f 58 05 ec ed 00 01 f3 0f 11 43 04 8d 94 24 a4
0077e100: 00 00 00 52 57 e8 36 71 38 00 83 c4 08 84 c0 74
0077e110: 16 8b 45 24 8b 7d 18 c7 00 0f f0 00 00 c6 44 24
0077e120: 0f 01 e9 54 03 00 00 6a 01 8d 8c 24 a8 00 00 00
0077e130: 51 57 e8 69 15 38 00 83 c4 0c 84 c0 74 09 8b 55
0077e140: 24 c7 02 0d f0 00 00 8b 7d 18 c6 44 24 0f 01 e9
0077e150: 27 03 00 00 a9 00 00 00 08 74 10 c7 07 11 00 00
0077e160: 00 c6 44 24 0f 01 e9 10 03 00 00 a9 00 00 01 00
0077e170: 0f 84 92 00 00 00 c7 07 06 00 00 00 a1 c4 db 1e
0077e180: 01 85 c0 0f 84 f2 02 00 00 8b 58 5c 85 db 0f 84
0077e190: e7 02 00 00 0f 28 06 6a 00 6a 00 0f 29 44 24 38
0077e1a0: d9 44 24 40 83 ec 08 d9 5c 24 04 0f 29 44 24 60
0077e1b0: d9 44 24 60 8b cb d9 1c 24 e8 02 84 40 00 84 c0
0077e1c0: 74 0b c7 07 07 00 00 00 e9 ae 02 00 00 0f 28 06
0077e1d0: 6a 01 0f 29 44 24 34 d9 44 24 3c 83 ec 08 d9 5c
0077e1e0: 24 04 0f 29 44 24 5c d9 44 24 5c 8b cb d9 1c 24
0077e1f0: e8 4b e8 3f 00 84 c0 0f 84 7e 02 00 00 c7 07 08
0077e200: 00 00 00 e9 73 02 00 00 a9 00 00 04 00 0f 84 b7
0077e210: 01 00 00 8b 46 10 8b 4e 14 8b d0 0b d1 74 4e 83
0077e220: f8 01 75 04 85 c9 74 0b c7 07 0b 00 00 00 e9 48
0077e230: 02 00 00 c7 07 0c 00 00 00 8b 0d c4 db 1e 01 85
0077e240: c9 74 35 0f 28 06 0f 29 44 24 30 d9 44 24 38 83
0077e250: ec 08 d9 5c 24 04 0f 29 44 24 58 d9 44 24 58 d9
0077e260: 1c 24 e8 69 a5 4e 00 89 44 24 10 eb 13 c7 07 0a
0077e270: 00 00 00 e9 03 02 00 00 c7 44 24 10 00 00 00 00
0077e280: 8b 44 24 10 6a 00 50 e8 44 13 55 00 8b c8 83 c4
0077e290: 08 0b ca 74 13 8b 4d 14 89 01 89 51 04 c7 07 02
0077e2a0: 00 00 00 e9 d3 01 00 00 8b 44 24 10 8d 94 24 40
0077e2b0: 01 00 00 52 6a 0f 56 50 e8 a3 08 55 00 83 c4 10
0077e2c0: 84 c0 0f 84 b3 01 00 00 0c ff 6a 00 8d 4c 24 48
0077e2d0: 51 8d 94 24 18 01 00 00 52 88 44 24 50 88 44 24
0077e2e0: 51 88 44 24 53 88 44 24 54 8d 84 24 88 00 00 00
0077e2f0: 50 8d 8c 24 60 01 00 00 51 56 c7 84 24 94 00 00
0077e300: 00 00 00 00 00 c6 44 24 5e 00 c6 44 24 61 00 e8
0077e310: bc 40 2d 00 83 c4 18 84 c0 74 5e 8b 4c 24 7c 8d
0077e320: 54 24 20 52 8d 44 24 48 50 51 c7 07 04 00 00 00
0077e330: e8 5b 42 2d 00 83 c4 0c 84 c0 0f 84 3b 01 00 00
0077e340: 0f 28 44 24 20 0f 29 44 24 20 f3 0f 10 4c 24 20
0077e350: 0f 29 44 24 20 f3 0f 11 0b f3 0f 10 4c 24 24 0f
0077e360: 29 44 24 20 f3 0f 10 44 24 28 f3 0f 11 4b 04 f3
0077e370: 0f 11 43 08 e9 02 01 00 00 0f 28 06 8b 0d c4 db
0077e380: 1e 01 0f 29 44 24 20 d9 44 24 28 83 ec 08 d9 5c
0077e390: 24 04 0f 29 44 24 38 d9 44 24 38 d9 1c 24 e8 2d
0077e3a0: a4 4e 00 85 c0 0f 84 d0 00 00 00 6a 00 56 50 e8
0077e3b0: 0c 72 38 00 83 c4 0c 84 c0 0f 84 bc 00 00 00 c7
0077e3c0: 07 14 00 00 00 e9 b1 00 00 00 a9 00 00 00 02 74
0077e3d0: 0b c7 07 02 00 00 00 e9 9f 00 00 00 8b c8 81 e1
0077e3e0: 00 80 00 00 74 47 a9 00 00 00 40 75 40 8d 94 24
0077e3f0: d8 00 00 00 52 6a 00 6a 00 56 e8 91 28 38 00 83
0077e400: c4 10 84 c0 74 6f 8b 45 14 8b 8c 24 d8 00 00 00
0077e410: 8b 94 24 dc 00 00 00 c7 07 02 00 00 00 89 08 89
0077e420: 50 04 8b 45 24 c7 00 0e 00 00 00 eb 4e 85 c9 74
0077e430: 44 a9 00 00 00 40 74 3d 8d 8c 24 b0 00 00 00 51
0077e440: 8d 94 24 b8 00 00 00 52 33 db 56 89 9c 24 c0 00
0077e450: 00 00 e8 29 fc 37 00 83 c4 0c 84 c0 74 17 8b 45
0077e460: 14 8b 8c 24 b0 00 00 00 c7 07 0f 00 00 00 89 08
0077e470: 89 58 04 eb 06 c7 07 01 00 00 00 e8 80 a8 50 00
0077e480: 84 c0 0f 28 06 0f 84 bf 01 00 00 8b 07 32 db 83
0077e490: f8 02 0f 29 44 24 60 74 09 83 f8 09 0f 85 ca 00
0077e4a0: 00 00 e8 c9 90 1b 00 8b 4d 14 8b 51 04 8b 09 52
0077e4b0: 51 8b c8 e8 c8 9a 1b 00 50 8d 4c 24 50 e8 8e fd
0077e4c0: dd ff 8b 44 24 4c 85 c0 0f 84 88 00 00 00 50 e8
0077e4d0: 7c fb dd ff 83 c4 04 85 c0 74 7b 8d 94 24 20 01
0077e4e0: 00 00 52 8b c8 e8 76 7b 1d 00 0f 28 0e 0f 28 10
0077e4f0: 0f 28 da 0f c6 da 09 0f 28 e2 0f c6 e2 12 0f 28
0077e500: e9 0f c6 e9 09 0f 59 ec 0f 28 c1 0f c6 c1 12 0f
0077e510: 59 c3 0f 5c c5 0f 28 ea 0f c6 ea ff 0f 59 e9 0f
0077e520: 58 c5 0f 28 d0 0f c6 d0 09 0f c6 c0 12 0f 59 c3
0077e530: 0f 59 d4 0f 5c c2 f3 0f 10 15 88 fd 03 01 0f c6
0077e540: d2 00 0f 59 c2 0f 58 c1 0f 28 48 10 0f 58 c1 0f
0077e550: 29 44 24 60 b3 01 8d 4c 24 4c e8 81 7d fc ff 84
0077e560: db 0f 85 ba 00 00 00 0f 28 44 24 60 8b 0d c4 db
0077e570: 1e 01 85 c9 0f 84 ac 00 00 00 0f 28 06 0f 29 44
0077e580: 24 20 d9 44 24 28 83 ec 08 d9 5c 24 04 0f 29 44
0077e590: 24 38 d9 44 24 38 d9 1c 24 e8 32 a2 4e 00 85 c0
0077e5a0: 74 7f 80 b8 bc 04 00 00 00 74 76 8d 8c 24 80 01
0077e5b0: 00 00 51 8b c8 e8 46 35 33 00 0f 28 08 0f 28 16
0077e5c0: 0f 28 d9 0f c6 d9 09 0f 28 e1 0f c6 e1 12 0f 28
0077e5d0: ea 0f c6 ea 09 0f 59 ec 0f 28 c2 0f c6 c2 12 0f
0077e5e0: 59 c3 0f 5c c5 0f 28 e9 0f c6 e9 ff 0f 59 ea 0f
0077e5f0: 58 c5 0f 28 c8 0f c6 c8 09 0f c6 c0 12 0f 59 cc
0077e600: 0f 59 c3 0f 5c c1 f3 0f 10 0d 88 fd 03 01 0f c6
0077e610: c9 00 0f 59 c1 0f 28 48 10 0f 58 c2 0f 58 c1 eb
0077e620: 05 0f 28 44 24 60 8b 45 20 0f 29 44 24 20 f3 0f
0077e630: 10 4c 24 20 f3 0f 11 08 0f 29 44 24 20 f3 0f 10
0077e640: 4c 24 24 f3 0f 11 48 04 eb 28 8b 45 20 0f 29 44
0077e650: 24 20 f3 0f 10 44 24 20 f3 0f 11 00 0f 28 06 0f
0077e660: 29 44 24 20 f3 0f 10 44 24 24 f3 0f 11 40 04 0f
0077e670: 28 06 80 7c 24 0f 00 0f 29 44 24 20 f3 0f 10 44
0077e680: 24 28 f3 0f 11 40 08 74 7a 8b 0d c4 db 1e 01 85
0077e690: c9 74 70 0f 28 06 0f 29 44 24 20 d9 44 24 28 83
0077e6a0: ec 08 d9 5c 24 04 0f 29 44 24 38 d9 44 24 38 d9
0077e6b0: 1c 24 e8 19 a1 4e 00 85 c0 74 32 8b 50 48 8b 4d
0077e6c0: 14 89 11 8b 50 4c 89 51 04 83 3f 03 75 35 6a 01
0077e6d0: 6a 00 56 50 e8 f7 12 38 00 83 c4 10 84 c0 74 23
0077e6e0: c7 07 04 00 00 00 5f 5e 5b 8b e5 5d c3 8b 45 14
0077e6f0: c7 00 00 00 00 00 c7 40 04 00 00 00 00 c7 07 00
0077e700: 00 00 00 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077da20 <.text+0x37ca20>:
  77da20:	55                                              	push   ebp
  77da21:	8b ec                                           	mov    ebp,esp
  77da23:	83 e4 f0                                        	and    esp,0xfffffff0
  77da26:	81 ec d4 01 00 00                               	sub    esp,0x1d4
  77da2c:	53                                              	push   ebx
  77da2d:	56                                              	push   esi
  77da2e:	57                                              	push   edi
  77da2f:	e8 5c b9 fe ff                                  	call   0x769390
  77da34:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  77da37:	8b d1                                           	mov    edx,ecx
  77da39:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77da3f:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77da45:	0f 85 b8 0c 00 00                               	jne    0x77e703
  77da4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77da4d:	51                                              	push   ecx
  77da4e:	8b c8                                           	mov    ecx,eax
  77da50:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77da56:	ff d0                                           	call   eax
  77da58:	85 c0                                           	test   eax,eax
  77da5a:	0f 84 a3 0c 00 00                               	je     0x77e703
  77da60:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77da62:	8b c8                                           	mov    ecx,eax
  77da64:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77da67:	68 6f 43 9a 03                                  	push   0x39a436f
  77da6c:	ff d0                                           	call   eax
  77da6e:	85 c0                                           	test   eax,eax
  77da70:	0f 84 8d 0c 00 00                               	je     0x77e703
  77da76:	8b 88 9c 02 00 00                               	mov    ecx,DWORD PTR [eax+0x29c]
  77da7c:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  77da7f:	8b 7d 18                                        	mov    edi,DWORD PTR [ebp+0x18]
  77da82:	8b 5d 1c                                        	mov    ebx,DWORD PTR [ebp+0x1c]
  77da85:	8d b0 80 02 00 00                               	lea    esi,[eax+0x280]
  77da8b:	89 0a                                           	mov    DWORD PTR [edx],ecx
  77da8d:	8b 46 20                                        	mov    eax,DWORD PTR [esi+0x20]
  77da90:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  77da93:	89 01                                           	mov    DWORD PTR [ecx],eax
  77da95:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  77da98:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77da9b:	89 10                                           	mov    DWORD PTR [eax],edx
  77da9d:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  77daa0:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  77daa3:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  77daa6:	c7 07 00 00 00 00                               	mov    DWORD PTR [edi],0x0
  77daac:	8b 56 24                                        	mov    edx,DWORD PTR [esi+0x24]
  77daaf:	89 10                                           	mov    DWORD PTR [eax],edx
  77dab1:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77dab4:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77dab9:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
  77dabf:	f3 0f 11 03                                     	movss  DWORD PTR [ebx],xmm0
  77dac3:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77dac6:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77dacb:	f3 0f 10 44 24 64                               	movss  xmm0,DWORD PTR [esp+0x64]
  77dad1:	f3 0f 11 43 04                                  	movss  DWORD PTR [ebx+0x4],xmm0
  77dad6:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77dad9:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77dade:	f3 0f 10 44 24 68                               	movss  xmm0,DWORD PTR [esp+0x68]
  77dae4:	f3 0f 11 43 08                                  	movss  DWORD PTR [ebx+0x8],xmm0
  77dae9:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  77daec:	85 c0                                           	test   eax,eax
  77daee:	0f 84 0f 0c 00 00                               	je     0x77e703
  77daf4:	a9 00 00 00 01                                  	test   eax,0x1000000
  77daf9:	c6 44 24 0f 00                                  	mov    BYTE PTR [esp+0xf],0x0
  77dafe:	74 5e                                           	je     0x77db5e
  77db00:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77db06:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77db0c:	8b 49 5c                                        	mov    ecx,DWORD PTR [ecx+0x5c]
  77db0f:	85 c9                                           	test   ecx,ecx
  77db11:	0f 84 64 09 00 00                               	je     0x77e47b
  77db17:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77db1a:	6a 00                                           	push   0x0
  77db1c:	6a 00                                           	push   0x0
  77db1e:	6a 00                                           	push   0x0
  77db20:	6a 00                                           	push   0x0
  77db22:	6a 01                                           	push   0x1
  77db24:	0f 29 44 24 74                                  	movaps XMMWORD PTR [esp+0x74],xmm0
  77db29:	d9 44 24 7c                                     	fld    DWORD PTR [esp+0x7c]
  77db2d:	83 ec 08                                        	sub    esp,0x8
  77db30:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77db34:	0f 29 84 24 fc 00 00 00                         	movaps XMMWORD PTR [esp+0xfc],xmm0
  77db3c:	d9 84 24 fc 00 00 00                            	fld    DWORD PTR [esp+0xfc]
  77db43:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77db46:	e8 15 a4 3f 00                                  	call   0xb77f60
  77db4b:	84 c0                                           	test   al,al
  77db4d:	0f 84 28 09 00 00                               	je     0x77e47b
  77db53:	c7 07 07 00 00 00                               	mov    DWORD PTR [edi],0x7
  77db59:	e9 1d 09 00 00                                  	jmp    0x77e47b
  77db5e:	a9 00 00 20 00                                  	test   eax,0x200000
  77db63:	74 0b                                           	je     0x77db70
  77db65:	c7 07 09 00 00 00                               	mov    DWORD PTR [edi],0x9
  77db6b:	e9 0b 09 00 00                                  	jmp    0x77e47b
  77db70:	a9 00 20 80 10                                  	test   eax,0x10802000
  77db75:	0f 84 47 04 00 00                               	je     0x77dfc2
  77db7b:	a9 00 00 80 00                                  	test   eax,0x800000
  77db80:	0f 84 be 00 00 00                               	je     0x77dc44
  77db86:	0c ff                                           	or     al,0xff
  77db88:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
  77db8c:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  77db94:	88 44 24 14                                     	mov    BYTE PTR [esp+0x14],al
  77db98:	88 44 24 15                                     	mov    BYTE PTR [esp+0x15],al
  77db9c:	c6 44 24 16 00                                  	mov    BYTE PTR [esp+0x16],0x0
  77dba1:	88 44 24 17                                     	mov    BYTE PTR [esp+0x17],al
  77dba5:	88 44 24 18                                     	mov    BYTE PTR [esp+0x18],al
  77dba9:	c6 44 24 19 00                                  	mov    BYTE PTR [esp+0x19],0x0
  77dbae:	0f 85 a0 00 00 00                               	jne    0x77dc54
  77dbb4:	83 7e 14 00                                     	cmp    DWORD PTR [esi+0x14],0x0
  77dbb8:	0f 85 96 00 00 00                               	jne    0x77dc54
  77dbbe:	6a 00                                           	push   0x0
  77dbc0:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77dbc4:	52                                              	push   edx
  77dbc5:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  77dbc9:	50                                              	push   eax
  77dbca:	56                                              	push   esi
  77dbcb:	e8 20 47 2d 00                                  	call   0xa522f0
  77dbd0:	83 c4 10                                        	add    esp,0x10
  77dbd3:	84 c0                                           	test   al,al
  77dbd5:	74 7d                                           	je     0x77dc54
  77dbd7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77dbdb:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  77dbe2:	51                                              	push   ecx
  77dbe3:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77dbe7:	52                                              	push   edx
  77dbe8:	50                                              	push   eax
  77dbe9:	c7 07 04 00 00 00                               	mov    DWORD PTR [edi],0x4
  77dbef:	e8 9c 49 2d 00                                  	call   0xa52590
  77dbf4:	83 c4 0c                                        	add    esp,0xc
  77dbf7:	84 c0                                           	test   al,al
  77dbf9:	74 49                                           	je     0x77dc44
  77dbfb:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  77dc03:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  77dc0b:	f3 0f 10 8c 24 80 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x80]
  77dc14:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  77dc1c:	f3 0f 11 0b                                     	movss  DWORD PTR [ebx],xmm1
  77dc20:	f3 0f 10 8c 24 84 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x84]
  77dc29:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  77dc31:	f3 0f 10 84 24 88 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x88]
  77dc3a:	f3 0f 11 4b 04                                  	movss  DWORD PTR [ebx+0x4],xmm1
  77dc3f:	f3 0f 11 43 08                                  	movss  DWORD PTR [ebx+0x8],xmm0
  77dc44:	c7 07 03 00 00 00                               	mov    DWORD PTR [edi],0x3
  77dc4a:	c6 44 24 0f 01                                  	mov    BYTE PTR [esp+0xf],0x1
  77dc4f:	e9 27 08 00 00                                  	jmp    0x77e47b
  77dc54:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77dc57:	51                                              	push   ecx
  77dc58:	56                                              	push   esi
  77dc59:	e8 c2 30 39 00                                  	call   0xb10d20
  77dc5e:	83 c4 08                                        	add    esp,0x8
  77dc61:	84 c0                                           	test   al,al
  77dc63:	74 21                                           	je     0x77dc86
  77dc65:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77dc68:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77dc6b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77dc6d:	52                                              	push   edx
  77dc6e:	50                                              	push   eax
  77dc6f:	e8 dc c6 1b 00                                  	call   0x93a350
  77dc74:	83 c4 08                                        	add    esp,0x8
  77dc77:	84 c0                                           	test   al,al
  77dc79:	74 0b                                           	je     0x77dc86
  77dc7b:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77dc81:	e9 f5 07 00 00                                  	jmp    0x77e47b
  77dc86:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77dc8a:	51                                              	push   ecx
  77dc8b:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  77dc8f:	52                                              	push   edx
  77dc90:	56                                              	push   esi
  77dc91:	e8 ca 2e 39 00                                  	call   0xb10b60
  77dc96:	83 c4 0c                                        	add    esp,0xc
  77dc99:	84 c0                                           	test   al,al
  77dc9b:	74 a7                                           	je     0x77dc44
  77dc9d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77dca1:	8b 88 98 02 00 00                               	mov    ecx,DWORD PTR [eax+0x298]
  77dca7:	6a 00                                           	push   0x0
  77dca9:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77dcad:	52                                              	push   edx
  77dcae:	e8 3d a1 3c 00                                  	call   0xb47df0
  77dcb3:	50                                              	push   eax
  77dcb4:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  77dcb8:	e8 73 db 4d 00                                  	call   0xc5b830
  77dcbd:	83 c4 04                                        	add    esp,0x4
  77dcc0:	84 c0                                           	test   al,al
  77dcc2:	0f 84 a2 00 00 00                               	je     0x77dd6a
  77dcc8:	8a 44 24 14                                     	mov    al,BYTE PTR [esp+0x14]
  77dccc:	8a 4c 24 15                                     	mov    cl,BYTE PTR [esp+0x15]
  77dcd0:	8a 54 24 16                                     	mov    dl,BYTE PTR [esp+0x16]
  77dcd4:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  77dcd8:	88 44 24 1c                                     	mov    BYTE PTR [esp+0x1c],al
  77dcdc:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  77dce0:	88 4c 24 1d                                     	mov    BYTE PTR [esp+0x1d],cl
  77dce4:	50                                              	push   eax
  77dce5:	8b cb                                           	mov    ecx,ebx
  77dce7:	88 54 24 22                                     	mov    BYTE PTR [esp+0x22],dl
  77dceb:	e8 f0 fa ff ff                                  	call   0x77d7e0
  77dcf0:	d9 5c 24 4c                                     	fstp   DWORD PTR [esp+0x4c]
  77dcf4:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77dcf6:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  77dcf9:	8d 84 24 00 01 00 00                            	lea    eax,[esp+0x100]
  77dd00:	50                                              	push   eax
  77dd01:	8b cb                                           	mov    ecx,ebx
  77dd03:	ff d2                                           	call   edx
  77dd05:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  77dd09:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77dd0c:	89 84 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],eax
  77dd13:	d9 9c 24 bc 00 00 00                            	fstp   DWORD PTR [esp+0xbc]
  77dd1a:	f3 0f 10 8c 24 bc 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xbc]
  77dd23:	8b 84 24 b8 00 00 00                            	mov    eax,DWORD PTR [esp+0xb8]
  77dd2a:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  77dd2e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  77dd32:	0f 5c c1                                        	subps  xmm0,xmm1
  77dd35:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  77dd38:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  77dd3c:	0f 5c c1                                        	subps  xmm0,xmm1
  77dd3f:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  77dd47:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  77dd50:	0f 2f 05 f8 98 f9 00                            	comiss xmm0,DWORD PTR ds:0xf998f8
  77dd57:	b8 12 00 00 00                                  	mov    eax,0x12
  77dd5c:	77 05                                           	ja     0x77dd63
  77dd5e:	b8 13 00 00 00                                  	mov    eax,0x13
  77dd63:	89 07                                           	mov    DWORD PTR [edi],eax
  77dd65:	e9 11 07 00 00                                  	jmp    0x77e47b
  77dd6a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77dd6e:	51                                              	push   ecx
  77dd6f:	e8 ec da 4d 00                                  	call   0xc5b860
  77dd74:	83 c4 04                                        	add    esp,0x4
  77dd77:	84 c0                                           	test   al,al
  77dd79:	74 0b                                           	je     0x77dd86
  77dd7b:	c7 07 0d 00 00 00                               	mov    DWORD PTR [edi],0xd
  77dd81:	e9 f5 06 00 00                                  	jmp    0x77e47b
  77dd86:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  77dd8a:	52                                              	push   edx
  77dd8b:	e8 c0 d9 4d 00                                  	call   0xc5b750
  77dd90:	50                                              	push   eax
  77dd91:	e8 ca b7 ff ff                                  	call   0x779560
  77dd96:	83 c4 08                                        	add    esp,0x8
  77dd99:	84 c0                                           	test   al,al
  77dd9b:	0f 84 a3 fe ff ff                               	je     0x77dc44
  77dda1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77dda5:	8b 80 b8 02 00 00                               	mov    eax,DWORD PTR [eax+0x2b8]
  77ddab:	85 c0                                           	test   eax,eax
  77ddad:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  77ddb1:	0f 84 c4 06 00 00                               	je     0x77e47b
  77ddb7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77ddbb:	51                                              	push   ecx
  77ddbc:	8b c8                                           	mov    ecx,eax
  77ddbe:	e8 4d 07 4a 00                                  	call   0xc1e510
  77ddc3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77ddc7:	50                                              	push   eax
  77ddc8:	e8 d3 cd 49 00                                  	call   0xc1aba0
  77ddcd:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77ddd0:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77ddd3:	8b d0                                           	mov    edx,eax
  77ddd5:	0b 51 04                                        	or     edx,DWORD PTR [ecx+0x4]
  77ddd8:	89 01                                           	mov    DWORD PTR [ecx],eax
  77ddda:	0f 84 9b 06 00 00                               	je     0x77e47b
  77dde0:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  77dde8:	8d 84 24 98 00 00 00                            	lea    eax,[esp+0x98]
  77ddef:	50                                              	push   eax
  77ddf0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77ddf4:	51                                              	push   ecx
  77ddf5:	f3 0f 11 84 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm0
  77ddfe:	f3 0f 11 84 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm0
  77de07:	c7 84 24 a8 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0xa8],0x0
  77de12:	e8 69 80 4c 00                                  	call   0xc45e80
  77de17:	8b 94 24 a8 00 00 00                            	mov    edx,DWORD PTR [esp+0xa8]
  77de1e:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
  77de27:	6a 00                                           	push   0x0
  77de29:	83 c2 01                                        	add    edx,0x1
  77de2c:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  77de30:	50                                              	push   eax
  77de31:	8d 8c 24 f0 00 00 00                            	lea    ecx,[esp+0xf0]
  77de38:	89 94 24 f8 00 00 00                            	mov    DWORD PTR [esp+0xf8],edx
  77de3f:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  77de43:	51                                              	push   ecx
  77de44:	f3 0f 11 84 24 f4 00 00 00                      	movss  DWORD PTR [esp+0xf4],xmm0
  77de4d:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
  77de56:	52                                              	push   edx
  77de57:	f3 0f 11 84 24 fc 00 00 00                      	movss  DWORD PTR [esp+0xfc],xmm0
  77de60:	e8 5b e9 35 00                                  	call   0xadc7c0
  77de65:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  77de69:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  77de6b:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
  77de6e:	83 c4 18                                        	add    esp,0x18
  77de71:	8d 94 24 f0 00 00 00                            	lea    edx,[esp+0xf0]
  77de78:	52                                              	push   edx
  77de79:	ff d0                                           	call   eax
  77de7b:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  77de7e:	0f 28 4c 24 50                                  	movaps xmm1,XMMWORD PTR [esp+0x50]
  77de83:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
  77de87:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  77de8b:	0f 58 c1                                        	addps  xmm0,xmm1
  77de8e:	f3 0f 10 4b 04                                  	movss  xmm1,DWORD PTR [ebx+0x4]
  77de93:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  77de97:	0f 5c c1                                        	subps  xmm0,xmm1
  77de9a:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  77dea2:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  77deab:	0f 2f 05 24 12 06 01                            	comiss xmm0,DWORD PTR ds:0x1061224
  77deb2:	72 63                                           	jb     0x77df17
  77deb4:	f3 0f 10 0d f0 ed 00 01                         	movss  xmm1,DWORD PTR ds:0x100edf0
  77debc:	0f 2f c8                                        	comiss xmm1,xmm0
  77debf:	76 56                                           	jbe    0x77df17
  77dec1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77dec5:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  77decd:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
  77ded4:	51                                              	push   ecx
  77ded5:	56                                              	push   esi
  77ded6:	52                                              	push   edx
  77ded7:	c7 07 10 00 00 00                               	mov    DWORD PTR [edi],0x10
  77dedd:	f3 0f 11 84 24 cc 00 00 00                      	movss  DWORD PTR [esp+0xcc],xmm0
  77dee6:	f3 0f 11 84 24 d0 00 00 00                      	movss  DWORD PTR [esp+0xd0],xmm0
  77deef:	c7 84 24 d4 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0xd4],0x0
  77defa:	e8 61 e9 35 00                                  	call   0xadc860
  77deff:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
  77df06:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77df09:	99                                              	cdq
  77df0a:	83 c4 0c                                        	add    esp,0xc
  77df0d:	89 01                                           	mov    DWORD PTR [ecx],eax
  77df0f:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77df12:	e9 64 05 00 00                                  	jmp    0x77e47b
  77df17:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77df1b:	6a 00                                           	push   0x0
  77df1d:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  77df21:	50                                              	push   eax
  77df22:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  77df29:	51                                              	push   ecx
  77df2a:	52                                              	push   edx
  77df2b:	e8 90 e8 35 00                                  	call   0xadc7c0
  77df30:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  77df34:	83 c4 10                                        	add    esp,0x10
  77df37:	8d 84 24 a0 01 00 00                            	lea    eax,[esp+0x1a0]
  77df3e:	50                                              	push   eax
  77df3f:	e8 fc 35 33 00                                  	call   0xab1540
  77df44:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
  77df49:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  77df4c:	0f 28 58 10                                     	movaps xmm3,XMMWORD PTR [eax+0x10]
  77df50:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
  77df53:	0f 28 c1                                        	movaps xmm0,xmm1
  77df56:	0f c6 c1 00                                     	shufps xmm0,xmm1,0x0
  77df5a:	0f 59 c2                                        	mulps  xmm0,xmm2
  77df5d:	0f 28 50 30                                     	movaps xmm2,XMMWORD PTR [eax+0x30]
  77df61:	0f 58 c2                                        	addps  xmm0,xmm2
  77df64:	0f 28 d1                                        	movaps xmm2,xmm1
  77df67:	0f c6 d1 55                                     	shufps xmm2,xmm1,0x55
  77df6b:	0f 59 d3                                        	mulps  xmm2,xmm3
  77df6e:	0f 58 c2                                        	addps  xmm0,xmm2
  77df71:	0f 28 d1                                        	movaps xmm2,xmm1
  77df74:	0f c6 d1 aa                                     	shufps xmm2,xmm1,0xaa
  77df78:	0f 28 48 20                                     	movaps xmm1,XMMWORD PTR [eax+0x20]
  77df7c:	0f 59 d1                                        	mulps  xmm2,xmm1
  77df7f:	0f 58 c2                                        	addps  xmm0,xmm2
  77df82:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77df87:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  77df8d:	f3 0f 11 0b                                     	movss  DWORD PTR [ebx],xmm1
  77df91:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77df96:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
  77df9c:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77dfa1:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [esp+0x38]
  77dfa7:	f3 0f 11 4b 04                                  	movss  DWORD PTR [ebx+0x4],xmm1
  77dfac:	f3 0f 11 43 08                                  	movss  DWORD PTR [ebx+0x8],xmm0
  77dfb1:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77dfb7:	c7 01 15 00 00 00                               	mov    DWORD PTR [ecx],0x15
  77dfbd:	e9 b9 04 00 00                                  	jmp    0x77e47b
  77dfc2:	8b d0                                           	mov    edx,eax
  77dfc4:	81 e2 00 00 40 40                               	and    edx,0x40400000
  77dfca:	81 fa 00 00 40 40                               	cmp    edx,0x40400000
  77dfd0:	0f 85 84 00 00 00                               	jne    0x77e05a
  77dfd6:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77dfd9:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77dfdf:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77dfe4:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77dfe8:	83 ec 08                                        	sub    esp,0x8
  77dfeb:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77dfef:	0f 29 44 24 58                                  	movaps XMMWORD PTR [esp+0x58],xmm0
  77dff4:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  77dff8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77dffb:	e8 d0 a7 4e 00                                  	call   0xc687d0
  77e000:	85 c0                                           	test   eax,eax
  77e002:	0f 84 73 04 00 00                               	je     0x77e47b
  77e008:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  77e010:	8d 8c 24 cc 00 00 00                            	lea    ecx,[esp+0xcc]
  77e017:	51                                              	push   ecx
  77e018:	56                                              	push   esi
  77e019:	50                                              	push   eax
  77e01a:	c7 07 10 00 00 00                               	mov    DWORD PTR [edi],0x10
  77e020:	f3 0f 11 84 24 d8 00 00 00                      	movss  DWORD PTR [esp+0xd8],xmm0
  77e029:	f3 0f 11 84 24 dc 00 00 00                      	movss  DWORD PTR [esp+0xdc],xmm0
  77e032:	c7 84 24 e0 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0xe0],0x0
  77e03d:	e8 1e e8 35 00                                  	call   0xadc860
  77e042:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [esp+0xe0]
  77e049:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77e04c:	99                                              	cdq
  77e04d:	83 c4 0c                                        	add    esp,0xc
  77e050:	89 01                                           	mov    DWORD PTR [ecx],eax
  77e052:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77e055:	e9 21 04 00 00                                  	jmp    0x77e47b
  77e05a:	a9 00 40 40 00                                  	test   eax,0x404000
  77e05f:	0f 84 ef 00 00 00                               	je     0x77e154
  77e065:	8b d7                                           	mov    edx,edi
  77e067:	c7 02 05 00 00 00                               	mov    DWORD PTR [edx],0x5
  77e06d:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e070:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e076:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77e07b:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77e07f:	83 ec 08                                        	sub    esp,0x8
  77e082:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e086:	0f 29 44 24 58                                  	movaps XMMWORD PTR [esp+0x58],xmm0
  77e08b:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  77e08f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e092:	e8 39 a7 4e 00                                  	call   0xc687d0
  77e097:	8b f8                                           	mov    edi,eax
  77e099:	85 ff                                           	test   edi,edi
  77e09b:	0f 84 a6 00 00 00                               	je     0x77e147
  77e0a1:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  77e0a9:	8d 84 24 a4 00 00 00                            	lea    eax,[esp+0xa4]
  77e0b0:	50                                              	push   eax
  77e0b1:	56                                              	push   esi
  77e0b2:	57                                              	push   edi
  77e0b3:	f3 0f 11 84 24 b0 00 00 00                      	movss  DWORD PTR [esp+0xb0],xmm0
  77e0bc:	f3 0f 11 84 24 b4 00 00 00                      	movss  DWORD PTR [esp+0xb4],xmm0
  77e0c5:	c7 84 24 b8 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0xb8],0x0
  77e0d0:	e8 8b e7 35 00                                  	call   0xadc860
  77e0d5:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  77e0dc:	51                                              	push   ecx
  77e0dd:	57                                              	push   edi
  77e0de:	e8 bd 6d 38 00                                  	call   0xb04ea0
  77e0e3:	83 c4 14                                        	add    esp,0x14
  77e0e6:	84 c0                                           	test   al,al
  77e0e8:	74 12                                           	je     0x77e0fc
  77e0ea:	f3 0f 10 43 04                                  	movss  xmm0,DWORD PTR [ebx+0x4]
  77e0ef:	f3 0f 58 05 ec ed 00 01                         	addss  xmm0,DWORD PTR ds:0x100edec
  77e0f7:	f3 0f 11 43 04                                  	movss  DWORD PTR [ebx+0x4],xmm0
  77e0fc:	8d 94 24 a4 00 00 00                            	lea    edx,[esp+0xa4]
  77e103:	52                                              	push   edx
  77e104:	57                                              	push   edi
  77e105:	e8 36 71 38 00                                  	call   0xb05240
  77e10a:	83 c4 08                                        	add    esp,0x8
  77e10d:	84 c0                                           	test   al,al
  77e10f:	74 16                                           	je     0x77e127
  77e111:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  77e114:	8b 7d 18                                        	mov    edi,DWORD PTR [ebp+0x18]
  77e117:	c7 00 0f f0 00 00                               	mov    DWORD PTR [eax],0xf00f
  77e11d:	c6 44 24 0f 01                                  	mov    BYTE PTR [esp+0xf],0x1
  77e122:	e9 54 03 00 00                                  	jmp    0x77e47b
  77e127:	6a 01                                           	push   0x1
  77e129:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  77e130:	51                                              	push   ecx
  77e131:	57                                              	push   edi
  77e132:	e8 69 15 38 00                                  	call   0xaff6a0
  77e137:	83 c4 0c                                        	add    esp,0xc
  77e13a:	84 c0                                           	test   al,al
  77e13c:	74 09                                           	je     0x77e147
  77e13e:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
  77e141:	c7 02 0d f0 00 00                               	mov    DWORD PTR [edx],0xf00d
  77e147:	8b 7d 18                                        	mov    edi,DWORD PTR [ebp+0x18]
  77e14a:	c6 44 24 0f 01                                  	mov    BYTE PTR [esp+0xf],0x1
  77e14f:	e9 27 03 00 00                                  	jmp    0x77e47b
  77e154:	a9 00 00 00 08                                  	test   eax,0x8000000
  77e159:	74 10                                           	je     0x77e16b
  77e15b:	c7 07 11 00 00 00                               	mov    DWORD PTR [edi],0x11
  77e161:	c6 44 24 0f 01                                  	mov    BYTE PTR [esp+0xf],0x1
  77e166:	e9 10 03 00 00                                  	jmp    0x77e47b
  77e16b:	a9 00 00 01 00                                  	test   eax,0x10000
  77e170:	0f 84 92 00 00 00                               	je     0x77e208
  77e176:	c7 07 06 00 00 00                               	mov    DWORD PTR [edi],0x6
  77e17c:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  77e181:	85 c0                                           	test   eax,eax
  77e183:	0f 84 f2 02 00 00                               	je     0x77e47b
  77e189:	8b 58 5c                                        	mov    ebx,DWORD PTR [eax+0x5c]
  77e18c:	85 db                                           	test   ebx,ebx
  77e18e:	0f 84 e7 02 00 00                               	je     0x77e47b
  77e194:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e197:	6a 00                                           	push   0x0
  77e199:	6a 00                                           	push   0x0
  77e19b:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  77e1a0:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  77e1a4:	83 ec 08                                        	sub    esp,0x8
  77e1a7:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e1ab:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77e1b0:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  77e1b4:	8b cb                                           	mov    ecx,ebx
  77e1b6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e1b9:	e8 02 84 40 00                                  	call   0xb865c0
  77e1be:	84 c0                                           	test   al,al
  77e1c0:	74 0b                                           	je     0x77e1cd
  77e1c2:	c7 07 07 00 00 00                               	mov    DWORD PTR [edi],0x7
  77e1c8:	e9 ae 02 00 00                                  	jmp    0x77e47b
  77e1cd:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e1d0:	6a 01                                           	push   0x1
  77e1d2:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
  77e1d7:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  77e1db:	83 ec 08                                        	sub    esp,0x8
  77e1de:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e1e2:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
  77e1e7:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  77e1eb:	8b cb                                           	mov    ecx,ebx
  77e1ed:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e1f0:	e8 4b e8 3f 00                                  	call   0xb7ca40
  77e1f5:	84 c0                                           	test   al,al
  77e1f7:	0f 84 7e 02 00 00                               	je     0x77e47b
  77e1fd:	c7 07 08 00 00 00                               	mov    DWORD PTR [edi],0x8
  77e203:	e9 73 02 00 00                                  	jmp    0x77e47b
  77e208:	a9 00 00 04 00                                  	test   eax,0x40000
  77e20d:	0f 84 b7 01 00 00                               	je     0x77e3ca
  77e213:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  77e216:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  77e219:	8b d0                                           	mov    edx,eax
  77e21b:	0b d1                                           	or     edx,ecx
  77e21d:	74 4e                                           	je     0x77e26d
  77e21f:	83 f8 01                                        	cmp    eax,0x1
  77e222:	75 04                                           	jne    0x77e228
  77e224:	85 c9                                           	test   ecx,ecx
  77e226:	74 0b                                           	je     0x77e233
  77e228:	c7 07 0b 00 00 00                               	mov    DWORD PTR [edi],0xb
  77e22e:	e9 48 02 00 00                                  	jmp    0x77e47b
  77e233:	c7 07 0c 00 00 00                               	mov    DWORD PTR [edi],0xc
  77e239:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e23f:	85 c9                                           	test   ecx,ecx
  77e241:	74 35                                           	je     0x77e278
  77e243:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e246:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  77e24b:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77e24f:	83 ec 08                                        	sub    esp,0x8
  77e252:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e256:	0f 29 44 24 58                                  	movaps XMMWORD PTR [esp+0x58],xmm0
  77e25b:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  77e25f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e262:	e8 69 a5 4e 00                                  	call   0xc687d0
  77e267:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  77e26b:	eb 13                                           	jmp    0x77e280
  77e26d:	c7 07 0a 00 00 00                               	mov    DWORD PTR [edi],0xa
  77e273:	e9 03 02 00 00                                  	jmp    0x77e47b
  77e278:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  77e280:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77e284:	6a 00                                           	push   0x0
  77e286:	50                                              	push   eax
  77e287:	e8 44 13 55 00                                  	call   0xccf5d0
  77e28c:	8b c8                                           	mov    ecx,eax
  77e28e:	83 c4 08                                        	add    esp,0x8
  77e291:	0b ca                                           	or     ecx,edx
  77e293:	74 13                                           	je     0x77e2a8
  77e295:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77e298:	89 01                                           	mov    DWORD PTR [ecx],eax
  77e29a:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77e29d:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77e2a3:	e9 d3 01 00 00                                  	jmp    0x77e47b
  77e2a8:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77e2ac:	8d 94 24 40 01 00 00                            	lea    edx,[esp+0x140]
  77e2b3:	52                                              	push   edx
  77e2b4:	6a 0f                                           	push   0xf
  77e2b6:	56                                              	push   esi
  77e2b7:	50                                              	push   eax
  77e2b8:	e8 a3 08 55 00                                  	call   0xcceb60
  77e2bd:	83 c4 10                                        	add    esp,0x10
  77e2c0:	84 c0                                           	test   al,al
  77e2c2:	0f 84 b3 01 00 00                               	je     0x77e47b
  77e2c8:	0c ff                                           	or     al,0xff
  77e2ca:	6a 00                                           	push   0x0
  77e2cc:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  77e2d0:	51                                              	push   ecx
  77e2d1:	8d 94 24 18 01 00 00                            	lea    edx,[esp+0x118]
  77e2d8:	52                                              	push   edx
  77e2d9:	88 44 24 50                                     	mov    BYTE PTR [esp+0x50],al
  77e2dd:	88 44 24 51                                     	mov    BYTE PTR [esp+0x51],al
  77e2e1:	88 44 24 53                                     	mov    BYTE PTR [esp+0x53],al
  77e2e5:	88 44 24 54                                     	mov    BYTE PTR [esp+0x54],al
  77e2e9:	8d 84 24 88 00 00 00                            	lea    eax,[esp+0x88]
  77e2f0:	50                                              	push   eax
  77e2f1:	8d 8c 24 60 01 00 00                            	lea    ecx,[esp+0x160]
  77e2f8:	51                                              	push   ecx
  77e2f9:	56                                              	push   esi
  77e2fa:	c7 84 24 94 00 00 00 00 00 00 00                	mov    DWORD PTR [esp+0x94],0x0
  77e305:	c6 44 24 5e 00                                  	mov    BYTE PTR [esp+0x5e],0x0
  77e30a:	c6 44 24 61 00                                  	mov    BYTE PTR [esp+0x61],0x0
  77e30f:	e8 bc 40 2d 00                                  	call   0xa523d0
  77e314:	83 c4 18                                        	add    esp,0x18
  77e317:	84 c0                                           	test   al,al
  77e319:	74 5e                                           	je     0x77e379
  77e31b:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  77e31f:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77e323:	52                                              	push   edx
  77e324:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  77e328:	50                                              	push   eax
  77e329:	51                                              	push   ecx
  77e32a:	c7 07 04 00 00 00                               	mov    DWORD PTR [edi],0x4
  77e330:	e8 5b 42 2d 00                                  	call   0xa52590
  77e335:	83 c4 0c                                        	add    esp,0xc
  77e338:	84 c0                                           	test   al,al
  77e33a:	0f 84 3b 01 00 00                               	je     0x77e47b
  77e340:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  77e345:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e34a:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  77e350:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e355:	f3 0f 11 0b                                     	movss  DWORD PTR [ebx],xmm1
  77e359:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  77e35f:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e364:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  77e36a:	f3 0f 11 4b 04                                  	movss  DWORD PTR [ebx+0x4],xmm1
  77e36f:	f3 0f 11 43 08                                  	movss  DWORD PTR [ebx+0x8],xmm0
  77e374:	e9 02 01 00 00                                  	jmp    0x77e47b
  77e379:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e37c:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e382:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e387:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  77e38b:	83 ec 08                                        	sub    esp,0x8
  77e38e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e392:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  77e397:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77e39b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e39e:	e8 2d a4 4e 00                                  	call   0xc687d0
  77e3a3:	85 c0                                           	test   eax,eax
  77e3a5:	0f 84 d0 00 00 00                               	je     0x77e47b
  77e3ab:	6a 00                                           	push   0x0
  77e3ad:	56                                              	push   esi
  77e3ae:	50                                              	push   eax
  77e3af:	e8 0c 72 38 00                                  	call   0xb055c0
  77e3b4:	83 c4 0c                                        	add    esp,0xc
  77e3b7:	84 c0                                           	test   al,al
  77e3b9:	0f 84 bc 00 00 00                               	je     0x77e47b
  77e3bf:	c7 07 14 00 00 00                               	mov    DWORD PTR [edi],0x14
  77e3c5:	e9 b1 00 00 00                                  	jmp    0x77e47b
  77e3ca:	a9 00 00 00 02                                  	test   eax,0x2000000
  77e3cf:	74 0b                                           	je     0x77e3dc
  77e3d1:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77e3d7:	e9 9f 00 00 00                                  	jmp    0x77e47b
  77e3dc:	8b c8                                           	mov    ecx,eax
  77e3de:	81 e1 00 80 00 00                               	and    ecx,0x8000
  77e3e4:	74 47                                           	je     0x77e42d
  77e3e6:	a9 00 00 00 40                                  	test   eax,0x40000000
  77e3eb:	75 40                                           	jne    0x77e42d
  77e3ed:	8d 94 24 d8 00 00 00                            	lea    edx,[esp+0xd8]
  77e3f4:	52                                              	push   edx
  77e3f5:	6a 00                                           	push   0x0
  77e3f7:	6a 00                                           	push   0x0
  77e3f9:	56                                              	push   esi
  77e3fa:	e8 91 28 38 00                                  	call   0xb00c90
  77e3ff:	83 c4 10                                        	add    esp,0x10
  77e402:	84 c0                                           	test   al,al
  77e404:	74 6f                                           	je     0x77e475
  77e406:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77e409:	8b 8c 24 d8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd8]
  77e410:	8b 94 24 dc 00 00 00                            	mov    edx,DWORD PTR [esp+0xdc]
  77e417:	c7 07 02 00 00 00                               	mov    DWORD PTR [edi],0x2
  77e41d:	89 08                                           	mov    DWORD PTR [eax],ecx
  77e41f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  77e422:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  77e425:	c7 00 0e 00 00 00                               	mov    DWORD PTR [eax],0xe
  77e42b:	eb 4e                                           	jmp    0x77e47b
  77e42d:	85 c9                                           	test   ecx,ecx
  77e42f:	74 44                                           	je     0x77e475
  77e431:	a9 00 00 00 40                                  	test   eax,0x40000000
  77e436:	74 3d                                           	je     0x77e475
  77e438:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  77e43f:	51                                              	push   ecx
  77e440:	8d 94 24 b8 00 00 00                            	lea    edx,[esp+0xb8]
  77e447:	52                                              	push   edx
  77e448:	33 db                                           	xor    ebx,ebx
  77e44a:	56                                              	push   esi
  77e44b:	89 9c 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],ebx
  77e452:	e8 29 fc 37 00                                  	call   0xafe080
  77e457:	83 c4 0c                                        	add    esp,0xc
  77e45a:	84 c0                                           	test   al,al
  77e45c:	74 17                                           	je     0x77e475
  77e45e:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77e461:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  77e468:	c7 07 0f 00 00 00                               	mov    DWORD PTR [edi],0xf
  77e46e:	89 08                                           	mov    DWORD PTR [eax],ecx
  77e470:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
  77e473:	eb 06                                           	jmp    0x77e47b
  77e475:	c7 07 01 00 00 00                               	mov    DWORD PTR [edi],0x1
  77e47b:	e8 80 a8 50 00                                  	call   0xc88d00
  77e480:	84 c0                                           	test   al,al
  77e482:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e485:	0f 84 bf 01 00 00                               	je     0x77e64a
  77e48b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77e48d:	32 db                                           	xor    bl,bl
  77e48f:	83 f8 02                                        	cmp    eax,0x2
  77e492:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77e497:	74 09                                           	je     0x77e4a2
  77e499:	83 f8 09                                        	cmp    eax,0x9
  77e49c:	0f 85 ca 00 00 00                               	jne    0x77e56c
  77e4a2:	e8 c9 90 1b 00                                  	call   0x937570
  77e4a7:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77e4aa:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
  77e4ad:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  77e4af:	52                                              	push   edx
  77e4b0:	51                                              	push   ecx
  77e4b1:	8b c8                                           	mov    ecx,eax
  77e4b3:	e8 c8 9a 1b 00                                  	call   0x937f80
  77e4b8:	50                                              	push   eax
  77e4b9:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  77e4bd:	e8 8e fd dd ff                                  	call   0x55e250
  77e4c2:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  77e4c6:	85 c0                                           	test   eax,eax
  77e4c8:	0f 84 88 00 00 00                               	je     0x77e556
  77e4ce:	50                                              	push   eax
  77e4cf:	e8 7c fb dd ff                                  	call   0x55e050
  77e4d4:	83 c4 04                                        	add    esp,0x4
  77e4d7:	85 c0                                           	test   eax,eax
  77e4d9:	74 7b                                           	je     0x77e556
  77e4db:	8d 94 24 20 01 00 00                            	lea    edx,[esp+0x120]
  77e4e2:	52                                              	push   edx
  77e4e3:	8b c8                                           	mov    ecx,eax
  77e4e5:	e8 76 7b 1d 00                                  	call   0x956060
  77e4ea:	0f 28 0e                                        	movaps xmm1,XMMWORD PTR [esi]
  77e4ed:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  77e4f0:	0f 28 da                                        	movaps xmm3,xmm2
  77e4f3:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  77e4f7:	0f 28 e2                                        	movaps xmm4,xmm2
  77e4fa:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  77e4fe:	0f 28 e9                                        	movaps xmm5,xmm1
  77e501:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  77e505:	0f 59 ec                                        	mulps  xmm5,xmm4
  77e508:	0f 28 c1                                        	movaps xmm0,xmm1
  77e50b:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  77e50f:	0f 59 c3                                        	mulps  xmm0,xmm3
  77e512:	0f 5c c5                                        	subps  xmm0,xmm5
  77e515:	0f 28 ea                                        	movaps xmm5,xmm2
  77e518:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  77e51c:	0f 59 e9                                        	mulps  xmm5,xmm1
  77e51f:	0f 58 c5                                        	addps  xmm0,xmm5
  77e522:	0f 28 d0                                        	movaps xmm2,xmm0
  77e525:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  77e529:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  77e52d:	0f 59 c3                                        	mulps  xmm0,xmm3
  77e530:	0f 59 d4                                        	mulps  xmm2,xmm4
  77e533:	0f 5c c2                                        	subps  xmm0,xmm2
  77e536:	f3 0f 10 15 88 fd 03 01                         	movss  xmm2,DWORD PTR ds:0x103fd88
  77e53e:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  77e542:	0f 59 c2                                        	mulps  xmm0,xmm2
  77e545:	0f 58 c1                                        	addps  xmm0,xmm1
  77e548:	0f 28 48 10                                     	movaps xmm1,XMMWORD PTR [eax+0x10]
  77e54c:	0f 58 c1                                        	addps  xmm0,xmm1
  77e54f:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  77e554:	b3 01                                           	mov    bl,0x1
  77e556:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  77e55a:	e8 81 7d fc ff                                  	call   0x7462e0
  77e55f:	84 db                                           	test   bl,bl
  77e561:	0f 85 ba 00 00 00                               	jne    0x77e621
  77e567:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  77e56c:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e572:	85 c9                                           	test   ecx,ecx
  77e574:	0f 84 ac 00 00 00                               	je     0x77e626
  77e57a:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e57d:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e582:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  77e586:	83 ec 08                                        	sub    esp,0x8
  77e589:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e58d:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  77e592:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77e596:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e599:	e8 32 a2 4e 00                                  	call   0xc687d0
  77e59e:	85 c0                                           	test   eax,eax
  77e5a0:	74 7f                                           	je     0x77e621
  77e5a2:	80 b8 bc 04 00 00 00                            	cmp    BYTE PTR [eax+0x4bc],0x0
  77e5a9:	74 76                                           	je     0x77e621
  77e5ab:	8d 8c 24 80 01 00 00                            	lea    ecx,[esp+0x180]
  77e5b2:	51                                              	push   ecx
  77e5b3:	8b c8                                           	mov    ecx,eax
  77e5b5:	e8 46 35 33 00                                  	call   0xab1b00
  77e5ba:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  77e5bd:	0f 28 16                                        	movaps xmm2,XMMWORD PTR [esi]
  77e5c0:	0f 28 d9                                        	movaps xmm3,xmm1
  77e5c3:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
  77e5c7:	0f 28 e1                                        	movaps xmm4,xmm1
  77e5ca:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  77e5ce:	0f 28 ea                                        	movaps xmm5,xmm2
  77e5d1:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
  77e5d5:	0f 59 ec                                        	mulps  xmm5,xmm4
  77e5d8:	0f 28 c2                                        	movaps xmm0,xmm2
  77e5db:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
  77e5df:	0f 59 c3                                        	mulps  xmm0,xmm3
  77e5e2:	0f 5c c5                                        	subps  xmm0,xmm5
  77e5e5:	0f 28 e9                                        	movaps xmm5,xmm1
  77e5e8:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
  77e5ec:	0f 59 ea                                        	mulps  xmm5,xmm2
  77e5ef:	0f 58 c5                                        	addps  xmm0,xmm5
  77e5f2:	0f 28 c8                                        	movaps xmm1,xmm0
  77e5f5:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  77e5f9:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  77e5fd:	0f 59 cc                                        	mulps  xmm1,xmm4
  77e600:	0f 59 c3                                        	mulps  xmm0,xmm3
  77e603:	0f 5c c1                                        	subps  xmm0,xmm1
  77e606:	f3 0f 10 0d 88 fd 03 01                         	movss  xmm1,DWORD PTR ds:0x103fd88
  77e60e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  77e612:	0f 59 c1                                        	mulps  xmm0,xmm1
  77e615:	0f 28 48 10                                     	movaps xmm1,XMMWORD PTR [eax+0x10]
  77e619:	0f 58 c2                                        	addps  xmm0,xmm2
  77e61c:	0f 58 c1                                        	addps  xmm0,xmm1
  77e61f:	eb 05                                           	jmp    0x77e626
  77e621:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  77e626:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  77e629:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e62e:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  77e634:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  77e638:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e63d:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  77e643:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  77e648:	eb 28                                           	jmp    0x77e672
  77e64a:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  77e64d:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e652:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  77e658:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  77e65c:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e65f:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e664:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  77e66a:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
  77e66f:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e672:	80 7c 24 0f 00                                  	cmp    BYTE PTR [esp+0xf],0x0
  77e677:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e67c:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  77e682:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  77e687:	74 7a                                           	je     0x77e703
  77e689:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e68f:	85 c9                                           	test   ecx,ecx
  77e691:	74 70                                           	je     0x77e703
  77e693:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  77e696:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e69b:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  77e69f:	83 ec 08                                        	sub    esp,0x8
  77e6a2:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  77e6a6:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  77e6ab:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  77e6af:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  77e6b2:	e8 19 a1 4e 00                                  	call   0xc687d0
  77e6b7:	85 c0                                           	test   eax,eax
  77e6b9:	74 32                                           	je     0x77e6ed
  77e6bb:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  77e6be:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  77e6c1:	89 11                                           	mov    DWORD PTR [ecx],edx
  77e6c3:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  77e6c6:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  77e6c9:	83 3f 03                                        	cmp    DWORD PTR [edi],0x3
  77e6cc:	75 35                                           	jne    0x77e703
  77e6ce:	6a 01                                           	push   0x1
  77e6d0:	6a 00                                           	push   0x0
  77e6d2:	56                                              	push   esi
  77e6d3:	50                                              	push   eax
  77e6d4:	e8 f7 12 38 00                                  	call   0xaff9d0
  77e6d9:	83 c4 10                                        	add    esp,0x10
  77e6dc:	84 c0                                           	test   al,al
  77e6de:	74 23                                           	je     0x77e703
  77e6e0:	c7 07 04 00 00 00                               	mov    DWORD PTR [edi],0x4
  77e6e6:	5f                                              	pop    edi
  77e6e7:	5e                                              	pop    esi
  77e6e8:	5b                                              	pop    ebx
  77e6e9:	8b e5                                           	mov    esp,ebp
  77e6eb:	5d                                              	pop    ebp
  77e6ec:	c3                                              	ret
  77e6ed:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77e6f0:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
  77e6f6:	c7 40 04 00 00 00 00                            	mov    DWORD PTR [eax+0x4],0x0
  77e6fd:	c7 07 00 00 00 00                               	mov    DWORD PTR [edi],0x0
  77e703:	5f                                              	pop    edi
  77e704:	5e                                              	pop    esi
  77e705:	5b                                              	pop    ebx
  77e706:	8b e5                                           	mov    esp,ebp
  77e708:	5d                                              	pop    ebp
  77e709:	c3                                              	ret
  77e70a:	cc                                              	int3
  77e70b:	cc                                              	int3
  77e70c:	cc                                              	int3
  77e70d:	cc                                              	int3
  77e70e:	cc                                              	int3
  77e70f:	cc                                              	int3
