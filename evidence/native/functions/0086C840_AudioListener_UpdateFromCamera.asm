# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0086c840 (AudioListener_UpdateFromCamera)
Paired Ghidra pseudocode: 0086C840_AudioListener_UpdateFromCamera.c
Window: [0x0086c840, 0x0086d370) (2864 bytes; stop exclusive)
Next defined Ghidra entry: 0x0086d370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0086c840: 55 8b ec 83 e4 f0 81 ec 74 02 00 00 53 56 57 8b
0086c850: f9 e8 fa d7 0f 00 8b f0 85 f6 0f 84 05 0b 00 00
0086c860: 0f 28 56 60 8b 0d c4 db 1e 01 85 c9 0f 57 c9 0f
0086c870: 29 54 24 70 0f 28 46 50 0f 29 8c 24 f0 01 00 00
0086c880: 0f 5c c8 f3 0f 10 05 74 99 f9 00 0f c6 c0 00 0f
0086c890: 59 c1 0f 58 c2 0f 29 8c 24 00 02 00 00 0f 29 84
0086c8a0: 24 e0 01 00 00 74 32 8d 84 24 10 02 00 00 50 8d
0086c8b0: 94 24 64 01 00 00 52 8d 84 24 e8 01 00 00 50 8d
0086c8c0: 54 24 7c 52 e8 e7 d2 3f 00 85 c0 89 44 24 18 74
0086c8d0: 14 8b 48 48 8b 50 4c eb 10 c7 44 24 18 00 00 00
0086c8e0: 00 8b 44 24 18 33 c9 33 d2 85 c0 f3 0f 10 35 f8
0086c8f0: 98 f9 00 0f 57 db 8b d9 89 54 24 54 74 20 8d 8c
0086c900: 24 60 02 00 00 51 8b c8 e8 f3 51 24 00 0f 57 db
0086c910: f3 0f 10 35 f8 98 f9 00 8b 54 24 54 eb 3c f3 0f
0086c920: 11 74 24 4c f3 0f 11 5c 24 48 f3 0f 11 5c 24 44
0086c930: f3 0f 11 5c 24 40 0f 28 44 24 40 0f 29 84 24 20
0086c940: 02 00 00 0f 28 84 24 f0 01 00 00 0f 29 84 24 30
0086c950: 02 00 00 8d 84 24 20 02 00 00 80 bf 61 0a 00 00
0086c960: 00 0f 28 00 0f 29 84 24 80 01 00 00 0f 28 40 10
0086c970: 0f 29 84 24 90 01 00 00 0f 85 fe 00 00 00 0f 28
0086c980: 07 0f 28 96 b0 00 00 00 0f 28 a6 c0 00 00 00 0f
0086c990: 28 ae d0 00 00 00 0f 28 7f 30 f3 0f 10 0d a4 a7
0086c9a0: 02 01 0f 5c d0 0f 28 47 10 0f 5c e0 0f 28 47 20
0086c9b0: 0f 5c e8 0f 28 86 e0 00 00 00 0f 5c c7 0f 29 44
0086c9c0: 24 40 f3 0f 10 05 18 b2 fa 00 0f c6 c0 00 0f 28
0086c9d0: f8 0f 59 fc 0f 5f fc 0f 28 e0 0f 59 e2 0f 5f e2
0086c9e0: 0f c6 c9 00 0f c2 e1 02 0f c2 f9 02 0f 54 fc 0f
0086c9f0: 28 d0 0f 59 d5 0f 5f d5 0f c2 d1 02 0f 54 fa 0f
0086ca00: 28 54 24 40 0f 28 e0 0f 59 e2 0f 5f e2 0f c2 e1
0086ca10: 02 0f 54 fc 0f 50 c7 83 f8 0f 75 60 3b 9f 68 0a
0086ca20: 00 00 75 58 3b 97 6c 0a 00 00 75 50 0f 28 a7 70
0086ca30: 0a 00 00 0f 28 94 24 80 01 00 00 0f 5c d4 0f 28
0086ca40: e0 0f 59 e2 0f 5f e2 0f c2 e1 02 0f 50 cc 3b c8
0086ca50: 75 2a 0f 28 a7 80 0a 00 00 0f 28 94 24 90 01 00
0086ca60: 00 0f 5c d4 0f 59 c2 0f 5f c2 0f c2 c1 02 0f 50
0086ca70: c0 83 e0 07 3c 07 0f 84 e9 08 00 00 0f 28 86 b0
0086ca80: 00 00 00 0f 29 07 0f 28 86 c0 00 00 00 0f 29 47
0086ca90: 10 0f 28 86 d0 00 00 00 0f 29 47 20 0f 28 86 e0
0086caa0: 00 00 00 0f 29 47 30 0f 28 84 24 80 01 00 00 89
0086cab0: 9f 68 0a 00 00 89 97 6c 0a 00 00 0f 29 87 70 0a
0086cac0: 00 00 0f 28 84 24 90 01 00 00 0f 29 87 80 0a 00
0086cad0: 00 0f 28 86 d0 00 00 00 0f 29 44 24 20 0f 29 84
0086cae0: 24 d0 00 00 00 0f 29 84 24 e0 00 00 00 0f 28 86
0086caf0: c0 00 00 00 0f 29 84 24 f0 00 00 00 0f 29 44 24
0086cb00: 50 0f 29 84 24 c0 00 00 00 0f 28 86 b0 00 00 00
0086cb10: 0f 29 44 24 40 0f 29 84 24 90 00 00 00 0f 29 84
0086cb20: 24 00 01 00 00 f3 0f 10 44 24 40 f3 0f 11 84 24
0086cb30: 3c 01 00 00 f3 0f 10 84 24 94 00 00 00 f3 0f 11
0086cb40: 84 24 40 01 00 00 f3 0f 10 84 24 08 01 00 00 f3
0086cb50: 0f 11 84 24 44 01 00 00 f3 0f 10 84 24 f0 00 00
0086cb60: 00 f3 0f 11 84 24 48 01 00 00 f3 0f 10 44 24 54
0086cb70: f3 0f 11 84 24 4c 01 00 00 f3 0f 10 84 24 c8 00
0086cb80: 00 00 f3 0f 11 84 24 50 01 00 00 f3 0f 10 84 24
0086cb90: d0 00 00 00 f3 0f 11 84 24 54 01 00 00 f3 0f 10
0086cba0: 84 24 e4 00 00 00 f3 0f 10 15 b4 b5 f9 00 f3 0f
0086cbb0: 11 84 24 58 01 00 00 f3 0f 10 44 24 28 f3 0f 11
0086cbc0: 84 24 5c 01 00 00 0f 28 86 d0 00 00 00 f3 0f 11
0086cbd0: 5c 24 4c f3 0f 11 74 24 48 f3 0f 11 5c 24 44 f3
0086cbe0: 0f 11 74 24 40 0f 28 64 24 40 0f 59 e0 0f 28 c4
0086cbf0: 0f 59 c4 0f 28 c8 0f c6 c8 0e 0f 58 c8 0f 28 c1
0086cc00: 0f c6 c1 01 0f 58 c1 0f c6 c0 00 0f 28 c8 0f 52
0086cc10: e9 0f 28 fd 0f 59 fd 0f 59 f9 0f 29 4c 24 20 f3
0086cc20: 0f 10 c6 0f c6 c0 00 0f 28 c8 0f 5c cf 0f c6 d2
0086cc30: 00 0f 28 fa 0f 59 fd 0f 59 cf 0f 58 cd 0f 28 e9
0086cc40: 0f 59 e9 0f 59 6c 24 20 0f 5c c5 0f 59 d1 0f 59
0086cc50: c2 0f 58 c1 0f 59 c4 0f 28 e0 0f c6 e0 12 f3 0f
0086cc60: 11 5c 24 4c f3 0f 11 5c 24 48 f3 0f 11 74 24 44
0086cc70: f3 0f 11 5c 24 40 0f 28 54 24 40 0f 28 ca 0f c6
0086cc80: ca 09 0f 59 cc 0f 28 e2 0f c6 e2 12 0f 28 d0 0f
0086cc90: c6 d0 09 0f 29 84 24 40 02 00 00 0f 29 84 24 c0
0086cca0: 00 00 00 0f 29 44 24 40 0f 29 84 24 90 00 00 00
0086ccb0: 0f 59 e2 0f 5c cc 0f 29 4c 24 20 f3 0f 10 44 24
0086ccc0: 20 f3 0f 11 84 24 18 01 00 00 0f 29 8c 24 e0 00
0086ccd0: 00 00 f3 0f 10 84 24 e4 00 00 00 f3 0f 11 84 24
0086cce0: 1c 01 00 00 0f 29 8c 24 d0 00 00 00 f3 0f 10 84
0086ccf0: 24 d8 00 00 00 f3 0f 11 84 24 20 01 00 00 f3 0f
0086cd00: 10 84 24 c0 00 00 00 f3 0f 11 84 24 30 01 00 00
0086cd10: f3 0f 10 44 24 44 f3 0f 11 84 24 34 01 00 00 f3
0086cd20: 0f 10 84 24 98 00 00 00 f3 0f 11 84 24 38 01 00
0086cd30: 00 0f 28 44 24 70 8b ce 0f 29 8c 24 50 02 00 00
0086cd40: f3 0f 11 9c 24 24 01 00 00 f3 0f 11 b4 24 28 01
0086cd50: 00 00 f3 0f 11 9c 24 2c 01 00 00 0f 29 84 24 b0
0086cd60: 00 00 00 e8 38 30 0f 00 0f 28 00 8b ce 0f 29 44
0086cd70: 24 60 e8 29 30 0f 00 0f 28 00 6a 01 8d 8c 24 a4
0086cd80: 01 00 00 51 6a 0d 8d 94 24 ec 01 00 00 52 8d 84
0086cd90: 24 80 00 00 00 50 0f 29 84 24 b4 00 00 00 32 db
0086cda0: e8 8b f7 ff ff 83 c4 14 84 c0 74 0f 0f 28 84 24
0086cdb0: b0 01 00 00 b3 01 0f 29 44 24 60 8b 4c 24 18 85
0086cdc0: c9 74 77 8d 94 24 70 01 00 00 52 8d 44 24 64 50
0086cdd0: e8 db a5 24 00 84 db 8d 84 24 70 01 00 00 75 07
0086cde0: 8d 84 24 10 02 00 00 0f 28 00 6a 01 8d 8c 24 a4
0086cdf0: 01 00 00 51 6a 0d 8d 54 24 2c 52 8d 84 24 70 01
0086ce00: 00 00 50 0f 29 44 24 34 e8 23 f7 ff ff 83 c4 14
0086ce10: 84 c0 74 26 0f 28 84 24 b0 01 00 00 8d 4c 24 60
0086ce20: 51 8b 4c 24 1c 8d 94 24 b4 01 00 00 52 0f 29 84
0086ce30: 24 78 01 00 00 e8 f6 a5 24 00 8b 5d 08 80 bb 09
0086ce40: 7d 02 00 00 0f 84 8c 01 00 00 0f 28 54 24 60 0f
0086ce50: 5c 54 24 70 f3 0f 10 05 18 b2 fa 00 f3 0f 10 0d
0086ce60: a4 a7 02 01 0f c6 c0 00 0f 28 da 0f 59 d8 0f c6
0086ce70: c9 00 0f 5f da 0f c2 d9 02 0f 50 c3 83 e0 07 3c
0086ce80: 07 0f 29 44 24 40 0f 29 8c 24 90 00 00 00 0f 84
0086ce90: 84 00 00 00 6a 01 8d 8c 24 a4 01 00 00 51 6a 02
0086cea0: 8d 54 24 6c 52 8d 84 24 80 00 00 00 50 e8 7e f6
0086ceb0: ff ff 83 c4 14 84 c0 74 0d 0f 28 84 24 b0 01 00
0086cec0: 00 0f 29 44 24 60 83 7c 24 18 00 74 3e 6a 01 8d
0086ced0: 8c 24 a4 01 00 00 51 6a 02 8d 94 24 7c 01 00 00
0086cee0: 52 8d 84 24 70 01 00 00 50 e8 42 f6 ff ff 83 c4
0086cef0: 14 84 c0 74 16 8d 4c 24 60 51 8b 4c 24 1c 8d 94
0086cf00: 24 b4 01 00 00 52 e8 25 a5 24 00 0f 28 8c 24 90
0086cf10: 00 00 00 0f 28 44 24 40 0f 28 94 24 a0 00 00 00
0086cf20: 0f 5c 54 24 70 0f 28 da 0f 59 d8 0f 5f da 0f c2
0086cf30: d9 02 0f 50 c3 83 e0 07 3c 07 0f 84 96 00 00 00
0086cf40: 6a 01 8d 8c 24 a4 01 00 00 51 6a 02 8d 94 24 ac
0086cf50: 00 00 00 52 8d 84 24 80 00 00 00 50 e8 cf f5 ff
0086cf60: ff 83 c4 14 84 c0 74 10 0f 28 84 24 b0 01 00 00
0086cf70: 0f 29 84 24 a0 00 00 00 8b 4c 24 18 85 c9 74 56
0086cf80: 8d 94 24 e0 00 00 00 52 8d 84 24 a4 00 00 00 50
0086cf90: e8 1b a4 24 00 6a 01 8d 8c 24 a4 01 00 00 51 6a
0086cfa0: 02 8d 94 24 ec 00 00 00 52 8d 84 24 70 01 00 00
0086cfb0: 50 e8 7a f5 ff ff 83 c4 14 84 c0 74 19 8d 8c 24
0086cfc0: a0 00 00 00 51 8b 4c 24 1c 8d 94 24 b4 01 00 00
0086cfd0: 52 e8 5a a4 24 00 e8 75 b9 ff ff 84 c0 0f 85 37
0086cfe0: 01 00 00 8b ce e8 f6 3a 0f 00 d9 94 24 8c 00 00
0086cff0: 00 d9 54 24 50 f3 0f 10 44 24 50 80 bf 60 0a 00
0086d000: 00 00 0f 28 4c 24 70 0f c6 c0 00 0f 59 84 24 00
0086d010: 02 00 00 0f 58 c1 0f 28 c8 0f 57 c0 0f 29 8c 24
0086d020: c0 00 00 00 74 79 0f 28 4e 50 0f 28 84 24 f0 01
0086d030: 00 00 51 0f 5c c1 d9 1c 24 8d 8f 00 07 00 00 0f
0086d040: 29 84 24 d4 00 00 00 e8 24 cb 03 00 d9 5c 24 50
0086d050: f3 0f 10 44 24 50 d9 84 24 8c 00 00 00 0f 28 8c
0086d060: 24 b0 00 00 00 51 8d 8f a0 03 00 00 d9 1c 24 0f
0086d070: c6 c0 00 0f 59 84 24 d4 00 00 00 0f 58 c1 0f 29
0086d080: 84 24 b4 00 00 00 e8 e5 ca 03 00 d9 5c 24 50 0f
0086d090: 28 8c 24 c0 00 00 00 f3 0f 10 44 24 50 eb 02 dd
0086d0a0: d8 0f 28 94 24 b0 00 00 00 f3 0f 10 c0 0f c6 c0
0086d0b0: 00 0f c6 c9 55 0f 58 c8 0f 28 c2 8d 44 24 70 0f
0086d0c0: c6 c1 50 0f c6 c2 e8 50 0f 29 8c 24 84 01 00 00
0086d0d0: 0f 29 84 24 b4 00 00 00 e8 c3 bf 41 00 83 c4 04
0086d0e0: 84 c0 75 36 d9 84 24 8c 00 00 00 51 8d 4f 40 d9
0086d0f0: 1c 24 e8 79 ca 03 00 d9 5c 24 50 f3 0f 10 44 24
0086d100: 50 0f 28 4c 24 60 0f c6 c0 00 0f 59 84 24 00 02
0086d110: 00 00 0f 58 c1 0f 29 44 24 60 0f 28 84 24 b0 00
0086d120: 00 00 8b 13 8b 52 14 0f 29 44 24 20 f3 0f 10 4c
0086d130: 24 20 8d 84 24 3c 01 00 00 0f 29 44 24 20 50 8d
0086d140: 8c 24 f4 00 00 00 f3 0f 11 8c 24 f4 00 00 00 f3
0086d150: 0f 10 4c 24 28 51 0f 29 44 24 28 f3 0f 10 44 24
0086d160: 30 6a 00 8b cb f3 0f 11 8c 24 00 01 00 00 f3 0f
0086d170: 11 84 24 04 01 00 00 ff d2 0f 28 44 24 70 8b 03
0086d180: 8b 40 14 0f 29 44 24 20 f3 0f 10 4c 24 20 8d 8c
0086d190: 24 3c 01 00 00 51 0f 29 44 24 24 8d 94 24 04 01
0086d1a0: 00 00 f3 0f 11 8c 24 04 01 00 00 f3 0f 10 4c 24
0086d1b0: 28 52 0f 29 44 24 28 f3 0f 10 44 24 30 6a 01 8b
0086d1c0: cb f3 0f 11 8c 24 10 01 00 00 f3 0f 11 84 24 14
0086d1d0: 01 00 00 ff d0 0f 28 44 24 60 8b 13 8b 52 14 0f
0086d1e0: 29 44 24 20 f3 0f 10 4c 24 20 8d 84 24 18 01 00
0086d1f0: 00 0f 29 44 24 20 50 8d 8c 24 94 00 00 00 f3 0f
0086d200: 11 8c 24 94 00 00 00 f3 0f 10 4c 24 28 51 0f 29
0086d210: 44 24 28 f3 0f 10 44 24 30 6a 02 8b cb f3 0f 11
0086d220: 8c 24 a0 00 00 00 f3 0f 11 84 24 a4 00 00 00 ff
0086d230: d2 0f 28 84 24 a0 00 00 00 8b 03 8b 40 14 0f 29
0086d240: 44 24 20 f3 0f 10 4c 24 20 8d 8c 24 18 01 00 00
0086d250: 51 0f 29 44 24 24 8d 54 24 44 f3 0f 11 4c 24 44
0086d260: f3 0f 10 4c 24 28 52 0f 29 44 24 28 f3 0f 10 44
0086d270: 24 30 6a 03 8b cb f3 0f 11 4c 24 50 f3 0f 11 44
0086d280: 24 54 ff d0 8d 4c 24 3c 51 8d 54 24 1c 52 8d 44
0086d290: 24 24 50 8d 8c 24 bc 00 00 00 51 e8 40 f1 ff ff
0086d2a0: 8b 54 24 4c 0f bf 44 24 28 8b 4c 24 2c 83 c4 10
0086d2b0: 52 50 51 6a 00 8b cb e8 a4 78 ff ff 8d 54 24 3c
0086d2c0: 52 8d 44 24 1c 50 8d 4c 24 24 51 8d 54 24 6c 52
0086d2d0: e8 0b f1 ff ff 8b 44 24 4c 0f bf 4c 24 28 8b 54
0086d2e0: 24 2c 83 c4 10 50 51 52 6a 02 8b cb e8 6f 78 ff
0086d2f0: ff 8d 44 24 3c 50 8d 4c 24 1c 51 8d 54 24 24 52
0086d300: 8d 84 24 ac 00 00 00 50 e8 d3 f0 ff ff 8b 4c 24
0086d310: 4c 0f bf 54 24 28 8b 44 24 2c 83 c4 10 51 52 50
0086d320: 6a 03 8b cb e8 37 78 ff ff 8d 4c 24 3c 51 8d 54
0086d330: 24 1c 52 8d 44 24 24 50 8d 4c 24 7c 51 e8 9e f0
0086d340: ff ff 8b 54 24 4c 0f bf 44 24 28 8b 4c 24 2c 83
0086d350: c4 10 52 50 51 6a 01 8b cb e8 02 78 ff ff c6 87
0086d360: 61 0a 00 00 00 5f 5e 5b 8b e5 5d c2 04 00 cc cc

LINEAR DISASSEMBLY
0086c840 <.text+0x46b840>:
  86c840:	55                                              	push   ebp
  86c841:	8b ec                                           	mov    ebp,esp
  86c843:	83 e4 f0                                        	and    esp,0xfffffff0
  86c846:	81 ec 74 02 00 00                               	sub    esp,0x274
  86c84c:	53                                              	push   ebx
  86c84d:	56                                              	push   esi
  86c84e:	57                                              	push   edi
  86c84f:	8b f9                                           	mov    edi,ecx
  86c851:	e8 fa d7 0f 00                                  	call   0x96a050
  86c856:	8b f0                                           	mov    esi,eax
  86c858:	85 f6                                           	test   esi,esi
  86c85a:	0f 84 05 0b 00 00                               	je     0x86d365
  86c860:	0f 28 56 60                                     	movaps xmm2,XMMWORD PTR [esi+0x60]
  86c864:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  86c86a:	85 c9                                           	test   ecx,ecx
  86c86c:	0f 57 c9                                        	xorps  xmm1,xmm1
  86c86f:	0f 29 54 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm2
  86c874:	0f 28 46 50                                     	movaps xmm0,XMMWORD PTR [esi+0x50]
  86c878:	0f 29 8c 24 f0 01 00 00                         	movaps XMMWORD PTR [esp+0x1f0],xmm1
  86c880:	0f 5c c8                                        	subps  xmm1,xmm0
  86c883:	f3 0f 10 05 74 99 f9 00                         	movss  xmm0,DWORD PTR ds:0xf99974
  86c88b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86c88f:	0f 59 c1                                        	mulps  xmm0,xmm1
  86c892:	0f 58 c2                                        	addps  xmm0,xmm2
  86c895:	0f 29 8c 24 00 02 00 00                         	movaps XMMWORD PTR [esp+0x200],xmm1
  86c89d:	0f 29 84 24 e0 01 00 00                         	movaps XMMWORD PTR [esp+0x1e0],xmm0
  86c8a5:	74 32                                           	je     0x86c8d9
  86c8a7:	8d 84 24 10 02 00 00                            	lea    eax,[esp+0x210]
  86c8ae:	50                                              	push   eax
  86c8af:	8d 94 24 64 01 00 00                            	lea    edx,[esp+0x164]
  86c8b6:	52                                              	push   edx
  86c8b7:	8d 84 24 e8 01 00 00                            	lea    eax,[esp+0x1e8]
  86c8be:	50                                              	push   eax
  86c8bf:	8d 54 24 7c                                     	lea    edx,[esp+0x7c]
  86c8c3:	52                                              	push   edx
  86c8c4:	e8 e7 d2 3f 00                                  	call   0xc69bb0
  86c8c9:	85 c0                                           	test   eax,eax
  86c8cb:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  86c8cf:	74 14                                           	je     0x86c8e5
  86c8d1:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  86c8d4:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  86c8d7:	eb 10                                           	jmp    0x86c8e9
  86c8d9:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  86c8e1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  86c8e5:	33 c9                                           	xor    ecx,ecx
  86c8e7:	33 d2                                           	xor    edx,edx
  86c8e9:	85 c0                                           	test   eax,eax
  86c8eb:	f3 0f 10 35 f8 98 f9 00                         	movss  xmm6,DWORD PTR ds:0xf998f8
  86c8f3:	0f 57 db                                        	xorps  xmm3,xmm3
  86c8f6:	8b d9                                           	mov    ebx,ecx
  86c8f8:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
  86c8fc:	74 20                                           	je     0x86c91e
  86c8fe:	8d 8c 24 60 02 00 00                            	lea    ecx,[esp+0x260]
  86c905:	51                                              	push   ecx
  86c906:	8b c8                                           	mov    ecx,eax
  86c908:	e8 f3 51 24 00                                  	call   0xab1b00
  86c90d:	0f 57 db                                        	xorps  xmm3,xmm3
  86c910:	f3 0f 10 35 f8 98 f9 00                         	movss  xmm6,DWORD PTR ds:0xf998f8
  86c918:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  86c91c:	eb 3c                                           	jmp    0x86c95a
  86c91e:	f3 0f 11 74 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm6
  86c924:	f3 0f 11 5c 24 48                               	movss  DWORD PTR [esp+0x48],xmm3
  86c92a:	f3 0f 11 5c 24 44                               	movss  DWORD PTR [esp+0x44],xmm3
  86c930:	f3 0f 11 5c 24 40                               	movss  DWORD PTR [esp+0x40],xmm3
  86c936:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  86c93b:	0f 29 84 24 20 02 00 00                         	movaps XMMWORD PTR [esp+0x220],xmm0
  86c943:	0f 28 84 24 f0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1f0]
  86c94b:	0f 29 84 24 30 02 00 00                         	movaps XMMWORD PTR [esp+0x230],xmm0
  86c953:	8d 84 24 20 02 00 00                            	lea    eax,[esp+0x220]
  86c95a:	80 bf 61 0a 00 00 00                            	cmp    BYTE PTR [edi+0xa61],0x0
  86c961:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  86c964:	0f 29 84 24 80 01 00 00                         	movaps XMMWORD PTR [esp+0x180],xmm0
  86c96c:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
  86c970:	0f 29 84 24 90 01 00 00                         	movaps XMMWORD PTR [esp+0x190],xmm0
  86c978:	0f 85 fe 00 00 00                               	jne    0x86ca7c
  86c97e:	0f 28 07                                        	movaps xmm0,XMMWORD PTR [edi]
  86c981:	0f 28 96 b0 00 00 00                            	movaps xmm2,XMMWORD PTR [esi+0xb0]
  86c988:	0f 28 a6 c0 00 00 00                            	movaps xmm4,XMMWORD PTR [esi+0xc0]
  86c98f:	0f 28 ae d0 00 00 00                            	movaps xmm5,XMMWORD PTR [esi+0xd0]
  86c996:	0f 28 7f 30                                     	movaps xmm7,XMMWORD PTR [edi+0x30]
  86c99a:	f3 0f 10 0d a4 a7 02 01                         	movss  xmm1,DWORD PTR ds:0x102a7a4
  86c9a2:	0f 5c d0                                        	subps  xmm2,xmm0
  86c9a5:	0f 28 47 10                                     	movaps xmm0,XMMWORD PTR [edi+0x10]
  86c9a9:	0f 5c e0                                        	subps  xmm4,xmm0
  86c9ac:	0f 28 47 20                                     	movaps xmm0,XMMWORD PTR [edi+0x20]
  86c9b0:	0f 5c e8                                        	subps  xmm5,xmm0
  86c9b3:	0f 28 86 e0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xe0]
  86c9ba:	0f 5c c7                                        	subps  xmm0,xmm7
  86c9bd:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86c9c2:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  86c9ca:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86c9ce:	0f 28 f8                                        	movaps xmm7,xmm0
  86c9d1:	0f 59 fc                                        	mulps  xmm7,xmm4
  86c9d4:	0f 5f fc                                        	maxps  xmm7,xmm4
  86c9d7:	0f 28 e0                                        	movaps xmm4,xmm0
  86c9da:	0f 59 e2                                        	mulps  xmm4,xmm2
  86c9dd:	0f 5f e2                                        	maxps  xmm4,xmm2
  86c9e0:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  86c9e4:	0f c2 e1 02                                     	cmpleps xmm4,xmm1
  86c9e8:	0f c2 f9 02                                     	cmpleps xmm7,xmm1
  86c9ec:	0f 54 fc                                        	andps  xmm7,xmm4
  86c9ef:	0f 28 d0                                        	movaps xmm2,xmm0
  86c9f2:	0f 59 d5                                        	mulps  xmm2,xmm5
  86c9f5:	0f 5f d5                                        	maxps  xmm2,xmm5
  86c9f8:	0f c2 d1 02                                     	cmpleps xmm2,xmm1
  86c9fc:	0f 54 fa                                        	andps  xmm7,xmm2
  86c9ff:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  86ca04:	0f 28 e0                                        	movaps xmm4,xmm0
  86ca07:	0f 59 e2                                        	mulps  xmm4,xmm2
  86ca0a:	0f 5f e2                                        	maxps  xmm4,xmm2
  86ca0d:	0f c2 e1 02                                     	cmpleps xmm4,xmm1
  86ca11:	0f 54 fc                                        	andps  xmm7,xmm4
  86ca14:	0f 50 c7                                        	movmskps eax,xmm7
  86ca17:	83 f8 0f                                        	cmp    eax,0xf
  86ca1a:	75 60                                           	jne    0x86ca7c
  86ca1c:	3b 9f 68 0a 00 00                               	cmp    ebx,DWORD PTR [edi+0xa68]
  86ca22:	75 58                                           	jne    0x86ca7c
  86ca24:	3b 97 6c 0a 00 00                               	cmp    edx,DWORD PTR [edi+0xa6c]
  86ca2a:	75 50                                           	jne    0x86ca7c
  86ca2c:	0f 28 a7 70 0a 00 00                            	movaps xmm4,XMMWORD PTR [edi+0xa70]
  86ca33:	0f 28 94 24 80 01 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x180]
  86ca3b:	0f 5c d4                                        	subps  xmm2,xmm4
  86ca3e:	0f 28 e0                                        	movaps xmm4,xmm0
  86ca41:	0f 59 e2                                        	mulps  xmm4,xmm2
  86ca44:	0f 5f e2                                        	maxps  xmm4,xmm2
  86ca47:	0f c2 e1 02                                     	cmpleps xmm4,xmm1
  86ca4b:	0f 50 cc                                        	movmskps ecx,xmm4
  86ca4e:	3b c8                                           	cmp    ecx,eax
  86ca50:	75 2a                                           	jne    0x86ca7c
  86ca52:	0f 28 a7 80 0a 00 00                            	movaps xmm4,XMMWORD PTR [edi+0xa80]
  86ca59:	0f 28 94 24 90 01 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x190]
  86ca61:	0f 5c d4                                        	subps  xmm2,xmm4
  86ca64:	0f 59 c2                                        	mulps  xmm0,xmm2
  86ca67:	0f 5f c2                                        	maxps  xmm0,xmm2
  86ca6a:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
  86ca6e:	0f 50 c0                                        	movmskps eax,xmm0
  86ca71:	83 e0 07                                        	and    eax,0x7
  86ca74:	3c 07                                           	cmp    al,0x7
  86ca76:	0f 84 e9 08 00 00                               	je     0x86d365
  86ca7c:	0f 28 86 b0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xb0]
  86ca83:	0f 29 07                                        	movaps XMMWORD PTR [edi],xmm0
  86ca86:	0f 28 86 c0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xc0]
  86ca8d:	0f 29 47 10                                     	movaps XMMWORD PTR [edi+0x10],xmm0
  86ca91:	0f 28 86 d0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xd0]
  86ca98:	0f 29 47 20                                     	movaps XMMWORD PTR [edi+0x20],xmm0
  86ca9c:	0f 28 86 e0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xe0]
  86caa3:	0f 29 47 30                                     	movaps XMMWORD PTR [edi+0x30],xmm0
  86caa7:	0f 28 84 24 80 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x180]
  86caaf:	89 9f 68 0a 00 00                               	mov    DWORD PTR [edi+0xa68],ebx
  86cab5:	89 97 6c 0a 00 00                               	mov    DWORD PTR [edi+0xa6c],edx
  86cabb:	0f 29 87 70 0a 00 00                            	movaps XMMWORD PTR [edi+0xa70],xmm0
  86cac2:	0f 28 84 24 90 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x190]
  86caca:	0f 29 87 80 0a 00 00                            	movaps XMMWORD PTR [edi+0xa80],xmm0
  86cad1:	0f 28 86 d0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xd0]
  86cad8:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86cadd:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  86cae5:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  86caed:	0f 28 86 c0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xc0]
  86caf4:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  86cafc:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  86cb01:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  86cb09:	0f 28 86 b0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xb0]
  86cb10:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86cb15:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  86cb1d:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  86cb25:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  86cb2b:	f3 0f 11 84 24 3c 01 00 00                      	movss  DWORD PTR [esp+0x13c],xmm0
  86cb34:	f3 0f 10 84 24 94 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x94]
  86cb3d:	f3 0f 11 84 24 40 01 00 00                      	movss  DWORD PTR [esp+0x140],xmm0
  86cb46:	f3 0f 10 84 24 08 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x108]
  86cb4f:	f3 0f 11 84 24 44 01 00 00                      	movss  DWORD PTR [esp+0x144],xmm0
  86cb58:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  86cb61:	f3 0f 11 84 24 48 01 00 00                      	movss  DWORD PTR [esp+0x148],xmm0
  86cb6a:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
  86cb70:	f3 0f 11 84 24 4c 01 00 00                      	movss  DWORD PTR [esp+0x14c],xmm0
  86cb79:	f3 0f 10 84 24 c8 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc8]
  86cb82:	f3 0f 11 84 24 50 01 00 00                      	movss  DWORD PTR [esp+0x150],xmm0
  86cb8b:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  86cb94:	f3 0f 11 84 24 54 01 00 00                      	movss  DWORD PTR [esp+0x154],xmm0
  86cb9d:	f3 0f 10 84 24 e4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe4]
  86cba6:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  86cbae:	f3 0f 11 84 24 58 01 00 00                      	movss  DWORD PTR [esp+0x158],xmm0
  86cbb7:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  86cbbd:	f3 0f 11 84 24 5c 01 00 00                      	movss  DWORD PTR [esp+0x15c],xmm0
  86cbc6:	0f 28 86 d0 00 00 00                            	movaps xmm0,XMMWORD PTR [esi+0xd0]
  86cbcd:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  86cbd3:	f3 0f 11 74 24 48                               	movss  DWORD PTR [esp+0x48],xmm6
  86cbd9:	f3 0f 11 5c 24 44                               	movss  DWORD PTR [esp+0x44],xmm3
  86cbdf:	f3 0f 11 74 24 40                               	movss  DWORD PTR [esp+0x40],xmm6
  86cbe5:	0f 28 64 24 40                                  	movaps xmm4,XMMWORD PTR [esp+0x40]
  86cbea:	0f 59 e0                                        	mulps  xmm4,xmm0
  86cbed:	0f 28 c4                                        	movaps xmm0,xmm4
  86cbf0:	0f 59 c4                                        	mulps  xmm0,xmm4
  86cbf3:	0f 28 c8                                        	movaps xmm1,xmm0
  86cbf6:	0f c6 c8 0e                                     	shufps xmm1,xmm0,0xe
  86cbfa:	0f 58 c8                                        	addps  xmm1,xmm0
  86cbfd:	0f 28 c1                                        	movaps xmm0,xmm1
  86cc00:	0f c6 c1 01                                     	shufps xmm0,xmm1,0x1
  86cc04:	0f 58 c1                                        	addps  xmm0,xmm1
  86cc07:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86cc0b:	0f 28 c8                                        	movaps xmm1,xmm0
  86cc0e:	0f 52 e9                                        	rsqrtps xmm5,xmm1
  86cc11:	0f 28 fd                                        	movaps xmm7,xmm5
  86cc14:	0f 59 fd                                        	mulps  xmm7,xmm5
  86cc17:	0f 59 f9                                        	mulps  xmm7,xmm1
  86cc1a:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
  86cc1f:	f3 0f 10 c6                                     	movss  xmm0,xmm6
  86cc23:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86cc27:	0f 28 c8                                        	movaps xmm1,xmm0
  86cc2a:	0f 5c cf                                        	subps  xmm1,xmm7
  86cc2d:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  86cc31:	0f 28 fa                                        	movaps xmm7,xmm2
  86cc34:	0f 59 fd                                        	mulps  xmm7,xmm5
  86cc37:	0f 59 cf                                        	mulps  xmm1,xmm7
  86cc3a:	0f 58 cd                                        	addps  xmm1,xmm5
  86cc3d:	0f 28 e9                                        	movaps xmm5,xmm1
  86cc40:	0f 59 e9                                        	mulps  xmm5,xmm1
  86cc43:	0f 59 6c 24 20                                  	mulps  xmm5,XMMWORD PTR [esp+0x20]
  86cc48:	0f 5c c5                                        	subps  xmm0,xmm5
  86cc4b:	0f 59 d1                                        	mulps  xmm2,xmm1
  86cc4e:	0f 59 c2                                        	mulps  xmm0,xmm2
  86cc51:	0f 58 c1                                        	addps  xmm0,xmm1
  86cc54:	0f 59 c4                                        	mulps  xmm0,xmm4
  86cc57:	0f 28 e0                                        	movaps xmm4,xmm0
  86cc5a:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  86cc5e:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  86cc64:	f3 0f 11 5c 24 48                               	movss  DWORD PTR [esp+0x48],xmm3
  86cc6a:	f3 0f 11 74 24 44                               	movss  DWORD PTR [esp+0x44],xmm6
  86cc70:	f3 0f 11 5c 24 40                               	movss  DWORD PTR [esp+0x40],xmm3
  86cc76:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  86cc7b:	0f 28 ca                                        	movaps xmm1,xmm2
  86cc7e:	0f c6 ca 09                                     	shufps xmm1,xmm2,0x9
  86cc82:	0f 59 cc                                        	mulps  xmm1,xmm4
  86cc85:	0f 28 e2                                        	movaps xmm4,xmm2
  86cc88:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  86cc8c:	0f 28 d0                                        	movaps xmm2,xmm0
  86cc8f:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  86cc93:	0f 29 84 24 40 02 00 00                         	movaps XMMWORD PTR [esp+0x240],xmm0
  86cc9b:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  86cca3:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86cca8:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  86ccb0:	0f 59 e2                                        	mulps  xmm4,xmm2
  86ccb3:	0f 5c cc                                        	subps  xmm1,xmm4
  86ccb6:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
  86ccbb:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  86ccc1:	f3 0f 11 84 24 18 01 00 00                      	movss  DWORD PTR [esp+0x118],xmm0
  86ccca:	0f 29 8c 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm1
  86ccd2:	f3 0f 10 84 24 e4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe4]
  86ccdb:	f3 0f 11 84 24 1c 01 00 00                      	movss  DWORD PTR [esp+0x11c],xmm0
  86cce4:	0f 29 8c 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm1
  86ccec:	f3 0f 10 84 24 d8 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd8]
  86ccf5:	f3 0f 11 84 24 20 01 00 00                      	movss  DWORD PTR [esp+0x120],xmm0
  86ccfe:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
  86cd07:	f3 0f 11 84 24 30 01 00 00                      	movss  DWORD PTR [esp+0x130],xmm0
  86cd10:	f3 0f 10 44 24 44                               	movss  xmm0,DWORD PTR [esp+0x44]
  86cd16:	f3 0f 11 84 24 34 01 00 00                      	movss  DWORD PTR [esp+0x134],xmm0
  86cd1f:	f3 0f 10 84 24 98 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x98]
  86cd28:	f3 0f 11 84 24 38 01 00 00                      	movss  DWORD PTR [esp+0x138],xmm0
  86cd31:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  86cd36:	8b ce                                           	mov    ecx,esi
  86cd38:	0f 29 8c 24 50 02 00 00                         	movaps XMMWORD PTR [esp+0x250],xmm1
  86cd40:	f3 0f 11 9c 24 24 01 00 00                      	movss  DWORD PTR [esp+0x124],xmm3
  86cd49:	f3 0f 11 b4 24 28 01 00 00                      	movss  DWORD PTR [esp+0x128],xmm6
  86cd52:	f3 0f 11 9c 24 2c 01 00 00                      	movss  DWORD PTR [esp+0x12c],xmm3
  86cd5b:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  86cd63:	e8 38 30 0f 00                                  	call   0x95fda0
  86cd68:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  86cd6b:	8b ce                                           	mov    ecx,esi
  86cd6d:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86cd72:	e8 29 30 0f 00                                  	call   0x95fda0
  86cd77:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  86cd7a:	6a 01                                           	push   0x1
  86cd7c:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86cd83:	51                                              	push   ecx
  86cd84:	6a 0d                                           	push   0xd
  86cd86:	8d 94 24 ec 01 00 00                            	lea    edx,[esp+0x1ec]
  86cd8d:	52                                              	push   edx
  86cd8e:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  86cd95:	50                                              	push   eax
  86cd96:	0f 29 84 24 b4 00 00 00                         	movaps XMMWORD PTR [esp+0xb4],xmm0
  86cd9e:	32 db                                           	xor    bl,bl
  86cda0:	e8 8b f7 ff ff                                  	call   0x86c530
  86cda5:	83 c4 14                                        	add    esp,0x14
  86cda8:	84 c0                                           	test   al,al
  86cdaa:	74 0f                                           	je     0x86cdbb
  86cdac:	0f 28 84 24 b0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  86cdb4:	b3 01                                           	mov    bl,0x1
  86cdb6:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86cdbb:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  86cdbf:	85 c9                                           	test   ecx,ecx
  86cdc1:	74 77                                           	je     0x86ce3a
  86cdc3:	8d 94 24 70 01 00 00                            	lea    edx,[esp+0x170]
  86cdca:	52                                              	push   edx
  86cdcb:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  86cdcf:	50                                              	push   eax
  86cdd0:	e8 db a5 24 00                                  	call   0xab73b0
  86cdd5:	84 db                                           	test   bl,bl
  86cdd7:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  86cdde:	75 07                                           	jne    0x86cde7
  86cde0:	8d 84 24 10 02 00 00                            	lea    eax,[esp+0x210]
  86cde7:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  86cdea:	6a 01                                           	push   0x1
  86cdec:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86cdf3:	51                                              	push   ecx
  86cdf4:	6a 0d                                           	push   0xd
  86cdf6:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  86cdfa:	52                                              	push   edx
  86cdfb:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  86ce02:	50                                              	push   eax
  86ce03:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
  86ce08:	e8 23 f7 ff ff                                  	call   0x86c530
  86ce0d:	83 c4 14                                        	add    esp,0x14
  86ce10:	84 c0                                           	test   al,al
  86ce12:	74 26                                           	je     0x86ce3a
  86ce14:	0f 28 84 24 b0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  86ce1c:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  86ce20:	51                                              	push   ecx
  86ce21:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  86ce25:	8d 94 24 b4 01 00 00                            	lea    edx,[esp+0x1b4]
  86ce2c:	52                                              	push   edx
  86ce2d:	0f 29 84 24 78 01 00 00                         	movaps XMMWORD PTR [esp+0x178],xmm0
  86ce35:	e8 f6 a5 24 00                                  	call   0xab7430
  86ce3a:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  86ce3d:	80 bb 09 7d 02 00 00                            	cmp    BYTE PTR [ebx+0x27d09],0x0
  86ce44:	0f 84 8c 01 00 00                               	je     0x86cfd6
  86ce4a:	0f 28 54 24 60                                  	movaps xmm2,XMMWORD PTR [esp+0x60]
  86ce4f:	0f 5c 54 24 70                                  	subps  xmm2,XMMWORD PTR [esp+0x70]
  86ce54:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  86ce5c:	f3 0f 10 0d a4 a7 02 01                         	movss  xmm1,DWORD PTR ds:0x102a7a4
  86ce64:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86ce68:	0f 28 da                                        	movaps xmm3,xmm2
  86ce6b:	0f 59 d8                                        	mulps  xmm3,xmm0
  86ce6e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  86ce72:	0f 5f da                                        	maxps  xmm3,xmm2
  86ce75:	0f c2 d9 02                                     	cmpleps xmm3,xmm1
  86ce79:	0f 50 c3                                        	movmskps eax,xmm3
  86ce7c:	83 e0 07                                        	and    eax,0x7
  86ce7f:	3c 07                                           	cmp    al,0x7
  86ce81:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86ce86:	0f 29 8c 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm1
  86ce8e:	0f 84 84 00 00 00                               	je     0x86cf18
  86ce94:	6a 01                                           	push   0x1
  86ce96:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86ce9d:	51                                              	push   ecx
  86ce9e:	6a 02                                           	push   0x2
  86cea0:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  86cea4:	52                                              	push   edx
  86cea5:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  86ceac:	50                                              	push   eax
  86cead:	e8 7e f6 ff ff                                  	call   0x86c530
  86ceb2:	83 c4 14                                        	add    esp,0x14
  86ceb5:	84 c0                                           	test   al,al
  86ceb7:	74 0d                                           	je     0x86cec6
  86ceb9:	0f 28 84 24 b0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  86cec1:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86cec6:	83 7c 24 18 00                                  	cmp    DWORD PTR [esp+0x18],0x0
  86cecb:	74 3e                                           	je     0x86cf0b
  86cecd:	6a 01                                           	push   0x1
  86cecf:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86ced6:	51                                              	push   ecx
  86ced7:	6a 02                                           	push   0x2
  86ced9:	8d 94 24 7c 01 00 00                            	lea    edx,[esp+0x17c]
  86cee0:	52                                              	push   edx
  86cee1:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  86cee8:	50                                              	push   eax
  86cee9:	e8 42 f6 ff ff                                  	call   0x86c530
  86ceee:	83 c4 14                                        	add    esp,0x14
  86cef1:	84 c0                                           	test   al,al
  86cef3:	74 16                                           	je     0x86cf0b
  86cef5:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  86cef9:	51                                              	push   ecx
  86cefa:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  86cefe:	8d 94 24 b4 01 00 00                            	lea    edx,[esp+0x1b4]
  86cf05:	52                                              	push   edx
  86cf06:	e8 25 a5 24 00                                  	call   0xab7430
  86cf0b:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
  86cf13:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  86cf18:	0f 28 94 24 a0 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0xa0]
  86cf20:	0f 5c 54 24 70                                  	subps  xmm2,XMMWORD PTR [esp+0x70]
  86cf25:	0f 28 da                                        	movaps xmm3,xmm2
  86cf28:	0f 59 d8                                        	mulps  xmm3,xmm0
  86cf2b:	0f 5f da                                        	maxps  xmm3,xmm2
  86cf2e:	0f c2 d9 02                                     	cmpleps xmm3,xmm1
  86cf32:	0f 50 c3                                        	movmskps eax,xmm3
  86cf35:	83 e0 07                                        	and    eax,0x7
  86cf38:	3c 07                                           	cmp    al,0x7
  86cf3a:	0f 84 96 00 00 00                               	je     0x86cfd6
  86cf40:	6a 01                                           	push   0x1
  86cf42:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86cf49:	51                                              	push   ecx
  86cf4a:	6a 02                                           	push   0x2
  86cf4c:	8d 94 24 ac 00 00 00                            	lea    edx,[esp+0xac]
  86cf53:	52                                              	push   edx
  86cf54:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  86cf5b:	50                                              	push   eax
  86cf5c:	e8 cf f5 ff ff                                  	call   0x86c530
  86cf61:	83 c4 14                                        	add    esp,0x14
  86cf64:	84 c0                                           	test   al,al
  86cf66:	74 10                                           	je     0x86cf78
  86cf68:	0f 28 84 24 b0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  86cf70:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  86cf78:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  86cf7c:	85 c9                                           	test   ecx,ecx
  86cf7e:	74 56                                           	je     0x86cfd6
  86cf80:	8d 94 24 e0 00 00 00                            	lea    edx,[esp+0xe0]
  86cf87:	52                                              	push   edx
  86cf88:	8d 84 24 a4 00 00 00                            	lea    eax,[esp+0xa4]
  86cf8f:	50                                              	push   eax
  86cf90:	e8 1b a4 24 00                                  	call   0xab73b0
  86cf95:	6a 01                                           	push   0x1
  86cf97:	8d 8c 24 a4 01 00 00                            	lea    ecx,[esp+0x1a4]
  86cf9e:	51                                              	push   ecx
  86cf9f:	6a 02                                           	push   0x2
  86cfa1:	8d 94 24 ec 00 00 00                            	lea    edx,[esp+0xec]
  86cfa8:	52                                              	push   edx
  86cfa9:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  86cfb0:	50                                              	push   eax
  86cfb1:	e8 7a f5 ff ff                                  	call   0x86c530
  86cfb6:	83 c4 14                                        	add    esp,0x14
  86cfb9:	84 c0                                           	test   al,al
  86cfbb:	74 19                                           	je     0x86cfd6
  86cfbd:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  86cfc4:	51                                              	push   ecx
  86cfc5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  86cfc9:	8d 94 24 b4 01 00 00                            	lea    edx,[esp+0x1b4]
  86cfd0:	52                                              	push   edx
  86cfd1:	e8 5a a4 24 00                                  	call   0xab7430
  86cfd6:	e8 75 b9 ff ff                                  	call   0x868950
  86cfdb:	84 c0                                           	test   al,al
  86cfdd:	0f 85 37 01 00 00                               	jne    0x86d11a
  86cfe3:	8b ce                                           	mov    ecx,esi
  86cfe5:	e8 f6 3a 0f 00                                  	call   0x960ae0
  86cfea:	d9 94 24 8c 00 00 00                            	fst    DWORD PTR [esp+0x8c]
  86cff1:	d9 54 24 50                                     	fst    DWORD PTR [esp+0x50]
  86cff5:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  86cffb:	80 bf 60 0a 00 00 00                            	cmp    BYTE PTR [edi+0xa60],0x0
  86d002:	0f 28 4c 24 70                                  	movaps xmm1,XMMWORD PTR [esp+0x70]
  86d007:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86d00b:	0f 59 84 24 00 02 00 00                         	mulps  xmm0,XMMWORD PTR [esp+0x200]
  86d013:	0f 58 c1                                        	addps  xmm0,xmm1
  86d016:	0f 28 c8                                        	movaps xmm1,xmm0
  86d019:	0f 57 c0                                        	xorps  xmm0,xmm0
  86d01c:	0f 29 8c 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm1
  86d024:	74 79                                           	je     0x86d09f
  86d026:	0f 28 4e 50                                     	movaps xmm1,XMMWORD PTR [esi+0x50]
  86d02a:	0f 28 84 24 f0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1f0]
  86d032:	51                                              	push   ecx
  86d033:	0f 5c c1                                        	subps  xmm0,xmm1
  86d036:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86d039:	8d 8f 00 07 00 00                               	lea    ecx,[edi+0x700]
  86d03f:	0f 29 84 24 d4 00 00 00                         	movaps XMMWORD PTR [esp+0xd4],xmm0
  86d047:	e8 24 cb 03 00                                  	call   0x8a9b70
  86d04c:	d9 5c 24 50                                     	fstp   DWORD PTR [esp+0x50]
  86d050:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  86d056:	d9 84 24 8c 00 00 00                            	fld    DWORD PTR [esp+0x8c]
  86d05d:	0f 28 8c 24 b0 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0xb0]
  86d065:	51                                              	push   ecx
  86d066:	8d 8f a0 03 00 00                               	lea    ecx,[edi+0x3a0]
  86d06c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86d06f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86d073:	0f 59 84 24 d4 00 00 00                         	mulps  xmm0,XMMWORD PTR [esp+0xd4]
  86d07b:	0f 58 c1                                        	addps  xmm0,xmm1
  86d07e:	0f 29 84 24 b4 00 00 00                         	movaps XMMWORD PTR [esp+0xb4],xmm0
  86d086:	e8 e5 ca 03 00                                  	call   0x8a9b70
  86d08b:	d9 5c 24 50                                     	fstp   DWORD PTR [esp+0x50]
  86d08f:	0f 28 8c 24 c0 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0xc0]
  86d097:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  86d09d:	eb 02                                           	jmp    0x86d0a1
  86d09f:	dd d8                                           	fstp   st(0)
  86d0a1:	0f 28 94 24 b0 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0xb0]
  86d0a9:	f3 0f 10 c0                                     	movss  xmm0,xmm0
  86d0ad:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86d0b1:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  86d0b5:	0f 58 c8                                        	addps  xmm1,xmm0
  86d0b8:	0f 28 c2                                        	movaps xmm0,xmm2
  86d0bb:	8d 44 24 70                                     	lea    eax,[esp+0x70]
  86d0bf:	0f c6 c1 50                                     	shufps xmm0,xmm1,0x50
  86d0c3:	0f c6 c2 e8                                     	shufps xmm0,xmm2,0xe8
  86d0c7:	50                                              	push   eax
  86d0c8:	0f 29 8c 24 84 01 00 00                         	movaps XMMWORD PTR [esp+0x184],xmm1
  86d0d0:	0f 29 84 24 b4 00 00 00                         	movaps XMMWORD PTR [esp+0xb4],xmm0
  86d0d8:	e8 c3 bf 41 00                                  	call   0xc890a0
  86d0dd:	83 c4 04                                        	add    esp,0x4
  86d0e0:	84 c0                                           	test   al,al
  86d0e2:	75 36                                           	jne    0x86d11a
  86d0e4:	d9 84 24 8c 00 00 00                            	fld    DWORD PTR [esp+0x8c]
  86d0eb:	51                                              	push   ecx
  86d0ec:	8d 4f 40                                        	lea    ecx,[edi+0x40]
  86d0ef:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86d0f2:	e8 79 ca 03 00                                  	call   0x8a9b70
  86d0f7:	d9 5c 24 50                                     	fstp   DWORD PTR [esp+0x50]
  86d0fb:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  86d101:	0f 28 4c 24 60                                  	movaps xmm1,XMMWORD PTR [esp+0x60]
  86d106:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86d10a:	0f 59 84 24 00 02 00 00                         	mulps  xmm0,XMMWORD PTR [esp+0x200]
  86d112:	0f 58 c1                                        	addps  xmm0,xmm1
  86d115:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86d11a:	0f 28 84 24 b0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xb0]
  86d122:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  86d124:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  86d127:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d12c:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  86d132:	8d 84 24 3c 01 00 00                            	lea    eax,[esp+0x13c]
  86d139:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d13e:	50                                              	push   eax
  86d13f:	8d 8c 24 f4 00 00 00                            	lea    ecx,[esp+0xf4]
  86d146:	f3 0f 11 8c 24 f4 00 00 00                      	movss  DWORD PTR [esp+0xf4],xmm1
  86d14f:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
  86d155:	51                                              	push   ecx
  86d156:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  86d15b:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  86d161:	6a 00                                           	push   0x0
  86d163:	8b cb                                           	mov    ecx,ebx
  86d165:	f3 0f 11 8c 24 00 01 00 00                      	movss  DWORD PTR [esp+0x100],xmm1
  86d16e:	f3 0f 11 84 24 04 01 00 00                      	movss  DWORD PTR [esp+0x104],xmm0
  86d177:	ff d2                                           	call   edx
  86d179:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  86d17e:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  86d180:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  86d183:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d188:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  86d18e:	8d 8c 24 3c 01 00 00                            	lea    ecx,[esp+0x13c]
  86d195:	51                                              	push   ecx
  86d196:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  86d19b:	8d 94 24 04 01 00 00                            	lea    edx,[esp+0x104]
  86d1a2:	f3 0f 11 8c 24 04 01 00 00                      	movss  DWORD PTR [esp+0x104],xmm1
  86d1ab:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
  86d1b1:	52                                              	push   edx
  86d1b2:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  86d1b7:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  86d1bd:	6a 01                                           	push   0x1
  86d1bf:	8b cb                                           	mov    ecx,ebx
  86d1c1:	f3 0f 11 8c 24 10 01 00 00                      	movss  DWORD PTR [esp+0x110],xmm1
  86d1ca:	f3 0f 11 84 24 14 01 00 00                      	movss  DWORD PTR [esp+0x114],xmm0
  86d1d3:	ff d0                                           	call   eax
  86d1d5:	0f 28 44 24 60                                  	movaps xmm0,XMMWORD PTR [esp+0x60]
  86d1da:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  86d1dc:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  86d1df:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d1e4:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  86d1ea:	8d 84 24 18 01 00 00                            	lea    eax,[esp+0x118]
  86d1f1:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d1f6:	50                                              	push   eax
  86d1f7:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  86d1fe:	f3 0f 11 8c 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm1
  86d207:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
  86d20d:	51                                              	push   ecx
  86d20e:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  86d213:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  86d219:	6a 02                                           	push   0x2
  86d21b:	8b cb                                           	mov    ecx,ebx
  86d21d:	f3 0f 11 8c 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm1
  86d226:	f3 0f 11 84 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm0
  86d22f:	ff d2                                           	call   edx
  86d231:	0f 28 84 24 a0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xa0]
  86d239:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  86d23b:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  86d23e:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86d243:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  86d249:	8d 8c 24 18 01 00 00                            	lea    ecx,[esp+0x118]
  86d250:	51                                              	push   ecx
  86d251:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  86d256:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  86d25a:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
  86d260:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
  86d266:	52                                              	push   edx
  86d267:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  86d26c:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  86d272:	6a 03                                           	push   0x3
  86d274:	8b cb                                           	mov    ecx,ebx
  86d276:	f3 0f 11 4c 24 50                               	movss  DWORD PTR [esp+0x50],xmm1
  86d27c:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  86d282:	ff d0                                           	call   eax
  86d284:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  86d288:	51                                              	push   ecx
  86d289:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  86d28d:	52                                              	push   edx
  86d28e:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  86d292:	50                                              	push   eax
  86d293:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
  86d29a:	51                                              	push   ecx
  86d29b:	e8 40 f1 ff ff                                  	call   0x86c3e0
  86d2a0:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  86d2a4:	0f bf 44 24 28                                  	movsx  eax,WORD PTR [esp+0x28]
  86d2a9:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  86d2ad:	83 c4 10                                        	add    esp,0x10
  86d2b0:	52                                              	push   edx
  86d2b1:	50                                              	push   eax
  86d2b2:	51                                              	push   ecx
  86d2b3:	6a 00                                           	push   0x0
  86d2b5:	8b cb                                           	mov    ecx,ebx
  86d2b7:	e8 a4 78 ff ff                                  	call   0x864b60
  86d2bc:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  86d2c0:	52                                              	push   edx
  86d2c1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  86d2c5:	50                                              	push   eax
  86d2c6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  86d2ca:	51                                              	push   ecx
  86d2cb:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  86d2cf:	52                                              	push   edx
  86d2d0:	e8 0b f1 ff ff                                  	call   0x86c3e0
  86d2d5:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  86d2d9:	0f bf 4c 24 28                                  	movsx  ecx,WORD PTR [esp+0x28]
  86d2de:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  86d2e2:	83 c4 10                                        	add    esp,0x10
  86d2e5:	50                                              	push   eax
  86d2e6:	51                                              	push   ecx
  86d2e7:	52                                              	push   edx
  86d2e8:	6a 02                                           	push   0x2
  86d2ea:	8b cb                                           	mov    ecx,ebx
  86d2ec:	e8 6f 78 ff ff                                  	call   0x864b60
  86d2f1:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  86d2f5:	50                                              	push   eax
  86d2f6:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  86d2fa:	51                                              	push   ecx
  86d2fb:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  86d2ff:	52                                              	push   edx
  86d300:	8d 84 24 ac 00 00 00                            	lea    eax,[esp+0xac]
  86d307:	50                                              	push   eax
  86d308:	e8 d3 f0 ff ff                                  	call   0x86c3e0
  86d30d:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  86d311:	0f bf 54 24 28                                  	movsx  edx,WORD PTR [esp+0x28]
  86d316:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  86d31a:	83 c4 10                                        	add    esp,0x10
  86d31d:	51                                              	push   ecx
  86d31e:	52                                              	push   edx
  86d31f:	50                                              	push   eax
  86d320:	6a 03                                           	push   0x3
  86d322:	8b cb                                           	mov    ecx,ebx
  86d324:	e8 37 78 ff ff                                  	call   0x864b60
  86d329:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  86d32d:	51                                              	push   ecx
  86d32e:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  86d332:	52                                              	push   edx
  86d333:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  86d337:	50                                              	push   eax
  86d338:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
  86d33c:	51                                              	push   ecx
  86d33d:	e8 9e f0 ff ff                                  	call   0x86c3e0
  86d342:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  86d346:	0f bf 44 24 28                                  	movsx  eax,WORD PTR [esp+0x28]
  86d34b:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  86d34f:	83 c4 10                                        	add    esp,0x10
  86d352:	52                                              	push   edx
  86d353:	50                                              	push   eax
  86d354:	51                                              	push   ecx
  86d355:	6a 01                                           	push   0x1
  86d357:	8b cb                                           	mov    ecx,ebx
  86d359:	e8 02 78 ff ff                                  	call   0x864b60
  86d35e:	c6 87 61 0a 00 00 00                            	mov    BYTE PTR [edi+0xa61],0x0
  86d365:	5f                                              	pop    edi
  86d366:	5e                                              	pop    esi
  86d367:	5b                                              	pop    ebx
  86d368:	8b e5                                           	mov    esp,ebp
  86d36a:	5d                                              	pop    ebp
  86d36b:	c2 04 00                                        	ret    0x4
  86d36e:	cc                                              	int3
  86d36f:	cc                                              	int3
