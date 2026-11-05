# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d7e9f0 (RegisterAllNativeMethodTables)
Paired Ghidra pseudocode: 00D7E9F0_RegisterAllNativeMethodTables.c
Window: [0x00d7e9f0, 0x00d7f360) (2416 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d7f360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d7e9f0: 51 53 56 57 8b f1 e8 d5 1e 82 ff 33 db 3b c3 74
00d7ea00: 13 8b 10 68 10 27 00 00 8b c8 8b 42 18 68 e0 8a
00d7ea10: 00 01 ff d0 e8 b7 1e 82 ff 3b c3 74 19 33 ff 57
00d7ea20: ba 70 28 d7 00 52 8d 4e f8 51 68 48 cf 08 01 8b
00d7ea30: c8 e8 6a 68 9b ff e8 95 1e 82 ff 3b c3 74 19 33
00d7ea40: ff 57 ba d0 10 d7 00 52 8d 56 f8 52 68 1c cf 08
00d7ea50: 01 8b c8 e8 48 68 9b ff e8 73 1e 82 ff 3b c3 74
00d7ea60: 19 33 ff 57 ba f0 10 d7 00 52 8d 4e f8 51 68 f0
00d7ea70: ce 08 01 8b c8 e8 26 68 9b ff e8 51 1e 82 ff 3b
00d7ea80: c3 74 0f 8b 10 68 ff ff ff 7f 8b c8 8b 42 18 53
00d7ea90: ff d0 e8 a9 fc 0c 00 68 e4 ce 08 01 e8 cf be 0d
00d7eaa0: 00 83 c4 04 3b c3 89 86 c4 0a 00 00 75 07 5f 5e
00d7eab0: 32 c0 5b 59 c3 68 a0 01 00 00 c7 05 60 53 23 01
00d7eac0: c0 40 4b 00 e8 b7 d7 0c 00 8b f8 83 c4 04 3b fb
00d7ead0: 74 21 68 94 01 00 00 53 57 89 9f 98 01 00 00 e8
00d7eae0: b4 07 20 00 83 c4 0c c7 87 94 01 00 00 ff ff ff
00d7eaf0: ff eb 02 33 ff 55 68 10 ce d7 00 68 ac ce 08 01
00d7eb00: 89 be 7c 0b 00 00 e8 15 3d 10 00 68 a0 ce d7 00
00d7eb10: 68 74 ce 08 01 e8 06 3d 10 00 8b ae 00 16 00 00
00d7eb20: 8d 86 00 16 00 00 83 c4 10 3b e8 89 5c 24 10 74
00d7eb30: 49 8b 4d 08 8b 11 8b 52 10 8d 44 24 10 50 ff d2
00d7eb40: 8b 44 24 10 33 ff 39 18 74 23 8d 9b 00 00 00 00
00d7eb50: 8b 08 8b 50 04 51 52 e8 c4 3c 10 00 8b 44 24 18
00d7eb60: 83 c7 01 8d 04 f8 83 c4 08 39 18 75 e3 8b 6d 00
00d7eb70: 8d 86 00 16 00 00 3b e8 75 b7 8d 7e f8 8b cf e8
00d7eb80: 1c f6 ff ff 68 64 ce 08 01 68 5c ce 08 01 68 a8
00d7eb90: c6 08 01 8b cf e8 56 df ff ff 68 4c ce 08 01 68
00d7eba0: 5c ce 08 01 68 a8 c6 08 01 8b cf 89 86 10 16 00
00d7ebb0: 00 e8 3a df ff ff 68 40 ce 08 01 68 5c ce 08 01
00d7ebc0: 68 a8 c6 08 01 8b cf 89 86 14 16 00 00 e8 1e df
00d7ebd0: ff ff 68 38 ce 08 01 68 5c ce 08 01 68 a8 c6 08
00d7ebe0: 01 8b cf 89 86 18 16 00 00 e8 02 df ff ff 68 20
00d7ebf0: ce 08 01 68 1c 8d 00 01 68 a8 c6 08 01 8b cf 89
00d7ec00: 86 1c 16 00 00 e8 e6 de ff ff 68 0c ce 08 01 68
00d7ec10: f8 23 00 01 68 f0 c8 08 01 8b cf 89 86 20 16 00
00d7ec20: 00 e8 ca de ff ff 68 f8 cd 08 01 68 f8 23 00 01
00d7ec30: 68 f0 c8 08 01 8b cf 89 86 24 16 00 00 e8 ae de
00d7ec40: ff ff 68 e8 cd 08 01 68 f8 23 00 01 68 f0 c8 08
00d7ec50: 01 8b cf 89 86 28 16 00 00 e8 92 de ff ff 68 b0
00d7ec60: 88 00 01 68 f8 23 00 01 68 f0 c8 08 01 8b cf 89
00d7ec70: 86 2c 16 00 00 e8 76 de ff ff 68 bc 88 00 01 68
00d7ec80: f8 23 00 01 68 f0 c8 08 01 8b cf 89 86 30 16 00
00d7ec90: 00 e8 5a de ff ff 68 e0 cd 08 01 68 1c 8d 00 01
00d7eca0: 68 f0 c8 08 01 8b cf 89 86 34 16 00 00 e8 3e de
00d7ecb0: ff ff 68 d4 cd 08 01 68 1c 8d 00 01 68 f0 c8 08
00d7ecc0: 01 8b cf 89 86 38 16 00 00 e8 22 de ff ff 68 c8
00d7ecd0: cd 08 01 68 c0 8b 00 01 68 f0 c8 08 01 8b cf 89
00d7ece0: 86 3c 16 00 00 e8 06 de ff ff 89 86 40 16 00 00
00d7ecf0: 68 c0 cd 08 01 68 c0 8b 00 01 68 f0 c8 08 01 8b
00d7ed00: cf e8 ea dd ff ff 68 b4 cd 08 01 68 c0 8b 00 01
00d7ed10: 68 f0 c8 08 01 8b cf 89 86 44 16 00 00 e8 ce dd
00d7ed20: ff ff 68 a8 cd 08 01 68 c0 8b 00 01 68 f0 c8 08
00d7ed30: 01 8b cf 89 86 48 16 00 00 e8 b2 dd ff ff 68 a0
00d7ed40: cd 08 01 68 94 cd 08 01 68 8c cd 08 01 8b cf 89
00d7ed50: 86 4c 16 00 00 e8 96 dd ff ff 68 c0 8b 00 01 68
00d7ed60: f0 c8 08 01 8b cf 89 86 50 16 00 00 e8 1f b3 ff
00d7ed70: ff 3b c3 89 86 54 16 00 00 75 08 5d 5f 5e 32 c0
00d7ed80: 5b 59 c3 68 1c 8d 00 01 68 f0 c8 08 01 8b cf e8
00d7ed90: fc b2 ff ff 8b e8 3b eb 74 39 8b 8e c4 0a 00 00
00d7eda0: 55 51 e8 29 40 12 00 68 80 cd 08 01 55 8b d8 e8
00d7edb0: 5c 0c 0f 00 8b e8 83 c4 10 85 ed 74 16 85 db 74
00d7edc0: 12 53 e8 69 f2 11 00 83 c4 04 03 45 08 89 86 20
00d7edd0: 0c 00 00 68 74 cd 08 01 68 58 cd 08 01 8b cf e8
00d7ede0: ac b2 ff ff 8b e8 85 ed 74 39 8b 96 c4 0a 00 00
00d7edf0: 55 52 e8 d9 3f 12 00 68 80 cd 08 01 55 8b d8 e8
00d7ee00: 0c 0c 0f 00 8b e8 83 c4 10 85 ed 74 16 85 db 74
00d7ee10: 12 53 e8 19 f2 11 00 83 c4 04 03 45 08 89 86 24
00d7ee20: 0c 00 00 8b ae 00 16 00 00 8d 86 00 16 00 00 3b
00d7ee30: e8 74 33 8b 5d 08 8b 03 8b 50 0c 8b cb ff d2 85
00d7ee40: c0 74 0d 50 68 f0 c8 08 01 8b cf e8 c0 f1 ff ff
00d7ee50: 8b 03 8b 50 04 8b cb ff d2 8b 6d 00 8d 86 00 16
00d7ee60: 00 00 3b e8 75 cd e8 b5 ad a5 ff 8b f8 e8 ce ad
00d7ee70: a5 ff 3b f8 74 1d e8 a5 ac 81 ff 8b 10 6a ff 6a
00d7ee80: 00 8b c8 8b 42 14 68 04 00 00 80 ff d0 89 86 c0
00d7ee90: 0a 00 00 5d 5f 5e b0 01 5b 59 c3 cc cc cc cc cc
00d7eea0: 8b 44 24 04 3d 20 4b 9e 03 56 77 5c 74 4c 2d f0
00d7eeb0: 90 02 03 74 2c 2d 1e ab 8b 00 74 17 83 e8 10 0f
00d7eec0: 85 94 00 00 00 83 c1 04 e8 43 ab 9e ff 32 c0 5e
00d7eed0: c2 08 00 83 c1 04 e8 15 ab 9e ff 32 c0 5e c2 08
00d7eee0: 00 8b 74 24 0c 8b 06 8b 50 10 8b ce ff d2 6a 00
00d7eef0: 56 ff d0 83 c4 08 5e c2 08 00 83 c1 fc e8 9e f2
00d7ef00: ff ff 32 c0 5e c2 08 00 3d 98 ab 10 05 74 3c 3d
00d7ef10: 75 da f1 07 74 24 3d a1 f7 88 d4 75 3c 8b 44 24
00d7ef20: 0c 8b 70 0c 8b 51 fc 8b 40 08 8b 52 0c 83 c1 fc
00d7ef30: 56 50 ff d2 32 c0 5e c2 08 00 8b 41 fc 8b 50 50
00d7ef40: 83 c1 fc ff d2 32 c0 5e c2 08 00 8b 41 04 8b 90
00d7ef50: 4c 01 00 00 83 c1 04 ff d2 32 c0 5e c2 08 00 cc
00d7ef60: 8b 44 24 04 81 ec 00 01 00 00 56 57 68 00 01 00
00d7ef70: 00 8b f1 50 8d 4c 24 10 51 e8 72 05 78 ff 8b 3d
00d7ef80: 64 66 f9 00 8d 54 24 14 6a 2c 52 ff d7 c6 00 00
00d7ef90: 8d 44 24 1c 6a 2e 50 ff d7 83 c4 1c c6 00 00 83
00d7efa0: c0 01 50 8d 4c 24 0c 83 c6 f8 51 8b ce e8 5e f0
00d7efb0: ff ff 85 c0 74 19 8b 16 6a 00 6a 00 50 8b 42 14
00d7efc0: 8b ce ff d0 5f 5e 81 c4 00 01 00 00 c2 04 00 5f
00d7efd0: 33 c0 33 d2 5e 81 c4 00 01 00 00 c2 04 00 cc cc
00d7efe0: 81 ec 54 01 00 00 53 8b 9c 24 5c 01 00 00 8b 03
00d7eff0: 8b 50 1c 55 8b e9 8b cb ff d2 85 c0 75 0d 5d 33
00d7f000: c0 5b 81 c4 54 01 00 00 c2 04 00 3d 00 40 1f 00
00d7f010: 77 ec 56 57 68 84 c9 08 01 8d 75 f8 68 78 c9 08
00d7f020: 01 8b ce e8 e8 ef ff ff 6a 00 8d 8c 24 a4 00 00
00d7f030: 00 8b f8 e8 58 98 73 ff 6a ff 6a 00 6a 01 53 8d
00d7f040: 8c 24 b0 00 00 00 e8 b5 7b 73 ff 8b 85 64 0b 00
00d7f050: 00 8d 4c 24 10 33 db 51 53 8d 4c 24 2c c7 44 24
00d7f060: 18 60 9b fb 00 89 44 24 1c c6 44 24 20 00 89 5c
00d7f070: 24 24 89 5c 24 28 e8 e5 58 73 ff 8d 54 24 24 52
00d7f080: 8d 8c 24 a4 00 00 00 e8 24 62 73 ff 8d 4c 24 5c
00d7f090: e8 4b 8c ff ff 53 57 8d 44 24 2c 50 8d 4c 24 68
00d7f0a0: 51 8b ce e8 e8 e3 ff ff 8d 4c 24 5c e8 af 69 ff
00d7f0b0: ff 8d 4c 24 24 e8 e6 56 73 ff 8d 4c 24 10 e8 ad
00d7f0c0: 53 76 ff 8d 8c 24 a0 00 00 00 e8 01 84 73 ff 8b
00d7f0d0: c7 5f 5e 5d 5b 81 c4 54 01 00 00 c2 04 00 cc cc
00d7f0e0: 8b 44 24 04 83 ec 54 0b 44 24 5c 56 57 8b f1 75
00d7f0f0: 10 8d 4e f8 e8 e7 69 ff ff 89 44 24 60 89 54 24
00d7f100: 64 8b 96 60 16 00 00 8b 86 5c 16 00 00 8b 3c 90
00d7f110: 8d 8e 58 16 00 00 8d 54 24 60 52 8d 44 24 1c 50
00d7f120: e8 1b 45 ba ff 39 38 0f 85 24 02 00 00 8b 96 80
00d7f130: 16 00 00 8b 86 7c 16 00 00 8b 3c 90 8d 8e 78 16
00d7f140: 00 00 8d 54 24 60 52 8d 44 24 1c 50 e8 ef 44 ba
00d7f150: ff 39 38 0f 85 f8 01 00 00 b8 54 8e 1c 01 68 c0
00d7f160: 8b 00 01 68 f0 c8 08 01 8d 4e f8 c7 44 24 48 30
00d7f170: 1f 00 01 89 44 24 3c 89 44 24 40 c7 44 24 44 55
00d7f180: 8e 1c 01 e8 88 ee ff ff 8b 4c 24 34 3b 4c 24 38
00d7f190: 89 44 24 50 89 44 24 54 74 0f c6 01 00 8b 4c 24
00d7f1a0: 34 8b 44 24 50 89 4c 24 38 8b 54 24 60 8b 4c 24
00d7f1b0: 64 89 54 24 44 8b 96 14 16 00 00 52 50 89 4c 24
00d7f1c0: 50 c7 44 24 54 00 00 00 00 c6 44 24 61 00 c7 44
00d7f1d0: 24 10 00 00 00 00 e8 b5 20 12 00 8d 4c 24 68 8d
00d7f1e0: 54 24 10 52 8b 54 24 5c 89 4c 24 18 8d 4c 24 18
00d7f1f0: 51 52 50 e8 78 21 12 00 8b 44 24 20 83 c4 18 85
00d7f200: c0 74 09 50 e8 d7 51 ff ff 83 c4 04 8b 96 38 16
00d7f210: 00 00 8b 44 24 50 6a 00 8d 4c 24 10 51 6a 00 52
00d7f220: 89 44 24 1c e8 47 21 12 00 8b 44 24 60 8d 54 24
00d7f230: 18 52 89 44 24 24 8d 44 24 24 8d 4c 24 7c 50 89
00d7f240: 4c 24 2c 8b 8e 24 16 00 00 6a 00 51 e8 1f 21 12
00d7f250: 00 8b 4c 24 28 83 c4 20 85 c9 0f 85 b2 00 00 00
00d7f260: 50 e8 da 26 12 00 83 c4 04 80 38 00 75 15 8b 86
00d7f270: 3c 16 00 00 6a 00 8d 54 24 10 52 6a 00 50 e9 a8
00d7f280: 00 00 00 8b 54 24 50 8b 86 40 16 00 00 8d 4c 24
00d7f290: 08 51 6a 00 52 50 e8 d5 20 12 00 8b 4c 24 18 83
00d7f2a0: c4 10 85 c9 75 6c 85 c0 74 71 8b ce c6 44 24 58
00d7f2b0: 01 e8 ca a7 9e ff 8d 4c 24 34 51 8d 8e d0 0b 00
00d7f2c0: 00 e8 8a 90 ff ff 8b 54 24 44 8b 44 24 48 8b 8e
00d7f2d0: d4 0b 00 00 89 54 24 24 8d 54 24 24 89 44 24 28
00d7f2e0: 52 8d 44 24 1c 89 4c 24 30 50 8d 8e dc 0b 00 00
00d7f2f0: e8 db 45 ff ff 8b 74 24 60 8b 7c 24 64 8d 4c 24
00d7f300: 34 e8 4a 53 ff ff 8b d7 5f 8b c6 5e 83 c4 54 c2
00d7f310: 0c 00 51 e8 c8 50 ff ff 83 c4 04 8b 96 3c 16 00
00d7f320: 00 6a 00 8d 4c 24 10 51 6a 00 52 e8 40 20 12 00
00d7f330: 8b 4c 24 44 8b 44 24 4c 2b c1 83 c4 10 83 f8 01
00d7f340: 7e 0f 85 c9 74 0b 50 51 8d 4c 24 48 e8 5f a1 9e
00d7f350: ff 5f 33 c0 33 d2 5e 83 c4 54 c2 0c 00 cc cc cc

LINEAR DISASSEMBLY
00d7e9f0 <.text+0x97d9f0>:
  d7e9f0:	51                                              	push   ecx
  d7e9f1:	53                                              	push   ebx
  d7e9f2:	56                                              	push   esi
  d7e9f3:	57                                              	push   edi
  d7e9f4:	8b f1                                           	mov    esi,ecx
  d7e9f6:	e8 d5 1e 82 ff                                  	call   0x5a08d0
  d7e9fb:	33 db                                           	xor    ebx,ebx
  d7e9fd:	3b c3                                           	cmp    eax,ebx
  d7e9ff:	74 13                                           	je     0xd7ea14
  d7ea01:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d7ea03:	68 10 27 00 00                                  	push   0x2710
  d7ea08:	8b c8                                           	mov    ecx,eax
  d7ea0a:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  d7ea0d:	68 e0 8a 00 01                                  	push   0x1008ae0
  d7ea12:	ff d0                                           	call   eax
  d7ea14:	e8 b7 1e 82 ff                                  	call   0x5a08d0
  d7ea19:	3b c3                                           	cmp    eax,ebx
  d7ea1b:	74 19                                           	je     0xd7ea36
  d7ea1d:	33 ff                                           	xor    edi,edi
  d7ea1f:	57                                              	push   edi
  d7ea20:	ba 70 28 d7 00                                  	mov    edx,0xd72870
  d7ea25:	52                                              	push   edx
  d7ea26:	8d 4e f8                                        	lea    ecx,[esi-0x8]
  d7ea29:	51                                              	push   ecx
  d7ea2a:	68 48 cf 08 01                                  	push   0x108cf48
  d7ea2f:	8b c8                                           	mov    ecx,eax
  d7ea31:	e8 6a 68 9b ff                                  	call   0x7352a0
  d7ea36:	e8 95 1e 82 ff                                  	call   0x5a08d0
  d7ea3b:	3b c3                                           	cmp    eax,ebx
  d7ea3d:	74 19                                           	je     0xd7ea58
  d7ea3f:	33 ff                                           	xor    edi,edi
  d7ea41:	57                                              	push   edi
  d7ea42:	ba d0 10 d7 00                                  	mov    edx,0xd710d0
  d7ea47:	52                                              	push   edx
  d7ea48:	8d 56 f8                                        	lea    edx,[esi-0x8]
  d7ea4b:	52                                              	push   edx
  d7ea4c:	68 1c cf 08 01                                  	push   0x108cf1c
  d7ea51:	8b c8                                           	mov    ecx,eax
  d7ea53:	e8 48 68 9b ff                                  	call   0x7352a0
  d7ea58:	e8 73 1e 82 ff                                  	call   0x5a08d0
  d7ea5d:	3b c3                                           	cmp    eax,ebx
  d7ea5f:	74 19                                           	je     0xd7ea7a
  d7ea61:	33 ff                                           	xor    edi,edi
  d7ea63:	57                                              	push   edi
  d7ea64:	ba f0 10 d7 00                                  	mov    edx,0xd710f0
  d7ea69:	52                                              	push   edx
  d7ea6a:	8d 4e f8                                        	lea    ecx,[esi-0x8]
  d7ea6d:	51                                              	push   ecx
  d7ea6e:	68 f0 ce 08 01                                  	push   0x108cef0
  d7ea73:	8b c8                                           	mov    ecx,eax
  d7ea75:	e8 26 68 9b ff                                  	call   0x7352a0
  d7ea7a:	e8 51 1e 82 ff                                  	call   0x5a08d0
  d7ea7f:	3b c3                                           	cmp    eax,ebx
  d7ea81:	74 0f                                           	je     0xd7ea92
  d7ea83:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d7ea85:	68 ff ff ff 7f                                  	push   0x7fffffff
  d7ea8a:	8b c8                                           	mov    ecx,eax
  d7ea8c:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  d7ea8f:	53                                              	push   ebx
  d7ea90:	ff d0                                           	call   eax
  d7ea92:	e8 a9 fc 0c 00                                  	call   0xe4e740
  d7ea97:	68 e4 ce 08 01                                  	push   0x108cee4
  d7ea9c:	e8 cf be 0d 00                                  	call   0xe5a970
  d7eaa1:	83 c4 04                                        	add    esp,0x4
  d7eaa4:	3b c3                                           	cmp    eax,ebx
  d7eaa6:	89 86 c4 0a 00 00                               	mov    DWORD PTR [esi+0xac4],eax
  d7eaac:	75 07                                           	jne    0xd7eab5
  d7eaae:	5f                                              	pop    edi
  d7eaaf:	5e                                              	pop    esi
  d7eab0:	32 c0                                           	xor    al,al
  d7eab2:	5b                                              	pop    ebx
  d7eab3:	59                                              	pop    ecx
  d7eab4:	c3                                              	ret
  d7eab5:	68 a0 01 00 00                                  	push   0x1a0
  d7eaba:	c7 05 60 53 23 01 c0 40 4b 00                   	mov    DWORD PTR ds:0x1235360,0x4b40c0
  d7eac4:	e8 b7 d7 0c 00                                  	call   0xe4c280
  d7eac9:	8b f8                                           	mov    edi,eax
  d7eacb:	83 c4 04                                        	add    esp,0x4
  d7eace:	3b fb                                           	cmp    edi,ebx
  d7ead0:	74 21                                           	je     0xd7eaf3
  d7ead2:	68 94 01 00 00                                  	push   0x194
  d7ead7:	53                                              	push   ebx
  d7ead8:	57                                              	push   edi
  d7ead9:	89 9f 98 01 00 00                               	mov    DWORD PTR [edi+0x198],ebx
  d7eadf:	e8 b4 07 20 00                                  	call   0xf7f298
  d7eae4:	83 c4 0c                                        	add    esp,0xc
  d7eae7:	c7 87 94 01 00 00 ff ff ff ff                   	mov    DWORD PTR [edi+0x194],0xffffffff
  d7eaf1:	eb 02                                           	jmp    0xd7eaf5
  d7eaf3:	33 ff                                           	xor    edi,edi
  d7eaf5:	55                                              	push   ebp
  d7eaf6:	68 10 ce d7 00                                  	push   0xd7ce10
  d7eafb:	68 ac ce 08 01                                  	push   0x108ceac
  d7eb00:	89 be 7c 0b 00 00                               	mov    DWORD PTR [esi+0xb7c],edi
  d7eb06:	e8 15 3d 10 00                                  	call   0xe82820
  d7eb0b:	68 a0 ce d7 00                                  	push   0xd7cea0
  d7eb10:	68 74 ce 08 01                                  	push   0x108ce74
  d7eb15:	e8 06 3d 10 00                                  	call   0xe82820
  d7eb1a:	8b ae 00 16 00 00                               	mov    ebp,DWORD PTR [esi+0x1600]
  d7eb20:	8d 86 00 16 00 00                               	lea    eax,[esi+0x1600]
  d7eb26:	83 c4 10                                        	add    esp,0x10
  d7eb29:	3b e8                                           	cmp    ebp,eax
  d7eb2b:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  d7eb2f:	74 49                                           	je     0xd7eb7a
  d7eb31:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  d7eb34:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d7eb36:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  d7eb39:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  d7eb3d:	50                                              	push   eax
  d7eb3e:	ff d2                                           	call   edx
  d7eb40:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d7eb44:	33 ff                                           	xor    edi,edi
  d7eb46:	39 18                                           	cmp    DWORD PTR [eax],ebx
  d7eb48:	74 23                                           	je     0xd7eb6d
  d7eb4a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  d7eb50:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  d7eb52:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d7eb55:	51                                              	push   ecx
  d7eb56:	52                                              	push   edx
  d7eb57:	e8 c4 3c 10 00                                  	call   0xe82820
  d7eb5c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  d7eb60:	83 c7 01                                        	add    edi,0x1
  d7eb63:	8d 04 f8                                        	lea    eax,[eax+edi*8]
  d7eb66:	83 c4 08                                        	add    esp,0x8
  d7eb69:	39 18                                           	cmp    DWORD PTR [eax],ebx
  d7eb6b:	75 e3                                           	jne    0xd7eb50
  d7eb6d:	8b 6d 00                                        	mov    ebp,DWORD PTR [ebp+0x0]
  d7eb70:	8d 86 00 16 00 00                               	lea    eax,[esi+0x1600]
  d7eb76:	3b e8                                           	cmp    ebp,eax
  d7eb78:	75 b7                                           	jne    0xd7eb31
  d7eb7a:	8d 7e f8                                        	lea    edi,[esi-0x8]
  d7eb7d:	8b cf                                           	mov    ecx,edi
  d7eb7f:	e8 1c f6 ff ff                                  	call   0xd7e1a0
  d7eb84:	68 64 ce 08 01                                  	push   0x108ce64
  d7eb89:	68 5c ce 08 01                                  	push   0x108ce5c
  d7eb8e:	68 a8 c6 08 01                                  	push   0x108c6a8
  d7eb93:	8b cf                                           	mov    ecx,edi
  d7eb95:	e8 56 df ff ff                                  	call   0xd7caf0
  d7eb9a:	68 4c ce 08 01                                  	push   0x108ce4c
  d7eb9f:	68 5c ce 08 01                                  	push   0x108ce5c
  d7eba4:	68 a8 c6 08 01                                  	push   0x108c6a8
  d7eba9:	8b cf                                           	mov    ecx,edi
  d7ebab:	89 86 10 16 00 00                               	mov    DWORD PTR [esi+0x1610],eax
  d7ebb1:	e8 3a df ff ff                                  	call   0xd7caf0
  d7ebb6:	68 40 ce 08 01                                  	push   0x108ce40
  d7ebbb:	68 5c ce 08 01                                  	push   0x108ce5c
  d7ebc0:	68 a8 c6 08 01                                  	push   0x108c6a8
  d7ebc5:	8b cf                                           	mov    ecx,edi
  d7ebc7:	89 86 14 16 00 00                               	mov    DWORD PTR [esi+0x1614],eax
  d7ebcd:	e8 1e df ff ff                                  	call   0xd7caf0
  d7ebd2:	68 38 ce 08 01                                  	push   0x108ce38
  d7ebd7:	68 5c ce 08 01                                  	push   0x108ce5c
  d7ebdc:	68 a8 c6 08 01                                  	push   0x108c6a8
  d7ebe1:	8b cf                                           	mov    ecx,edi
  d7ebe3:	89 86 18 16 00 00                               	mov    DWORD PTR [esi+0x1618],eax
  d7ebe9:	e8 02 df ff ff                                  	call   0xd7caf0
  d7ebee:	68 20 ce 08 01                                  	push   0x108ce20
  d7ebf3:	68 1c 8d 00 01                                  	push   0x1008d1c
  d7ebf8:	68 a8 c6 08 01                                  	push   0x108c6a8
  d7ebfd:	8b cf                                           	mov    ecx,edi
  d7ebff:	89 86 1c 16 00 00                               	mov    DWORD PTR [esi+0x161c],eax
  d7ec05:	e8 e6 de ff ff                                  	call   0xd7caf0
  d7ec0a:	68 0c ce 08 01                                  	push   0x108ce0c
  d7ec0f:	68 f8 23 00 01                                  	push   0x10023f8
  d7ec14:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ec19:	8b cf                                           	mov    ecx,edi
  d7ec1b:	89 86 20 16 00 00                               	mov    DWORD PTR [esi+0x1620],eax
  d7ec21:	e8 ca de ff ff                                  	call   0xd7caf0
  d7ec26:	68 f8 cd 08 01                                  	push   0x108cdf8
  d7ec2b:	68 f8 23 00 01                                  	push   0x10023f8
  d7ec30:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ec35:	8b cf                                           	mov    ecx,edi
  d7ec37:	89 86 24 16 00 00                               	mov    DWORD PTR [esi+0x1624],eax
  d7ec3d:	e8 ae de ff ff                                  	call   0xd7caf0
  d7ec42:	68 e8 cd 08 01                                  	push   0x108cde8
  d7ec47:	68 f8 23 00 01                                  	push   0x10023f8
  d7ec4c:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ec51:	8b cf                                           	mov    ecx,edi
  d7ec53:	89 86 28 16 00 00                               	mov    DWORD PTR [esi+0x1628],eax
  d7ec59:	e8 92 de ff ff                                  	call   0xd7caf0
  d7ec5e:	68 b0 88 00 01                                  	push   0x10088b0
  d7ec63:	68 f8 23 00 01                                  	push   0x10023f8
  d7ec68:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ec6d:	8b cf                                           	mov    ecx,edi
  d7ec6f:	89 86 2c 16 00 00                               	mov    DWORD PTR [esi+0x162c],eax
  d7ec75:	e8 76 de ff ff                                  	call   0xd7caf0
  d7ec7a:	68 bc 88 00 01                                  	push   0x10088bc
  d7ec7f:	68 f8 23 00 01                                  	push   0x10023f8
  d7ec84:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ec89:	8b cf                                           	mov    ecx,edi
  d7ec8b:	89 86 30 16 00 00                               	mov    DWORD PTR [esi+0x1630],eax
  d7ec91:	e8 5a de ff ff                                  	call   0xd7caf0
  d7ec96:	68 e0 cd 08 01                                  	push   0x108cde0
  d7ec9b:	68 1c 8d 00 01                                  	push   0x1008d1c
  d7eca0:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7eca5:	8b cf                                           	mov    ecx,edi
  d7eca7:	89 86 34 16 00 00                               	mov    DWORD PTR [esi+0x1634],eax
  d7ecad:	e8 3e de ff ff                                  	call   0xd7caf0
  d7ecb2:	68 d4 cd 08 01                                  	push   0x108cdd4
  d7ecb7:	68 1c 8d 00 01                                  	push   0x1008d1c
  d7ecbc:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ecc1:	8b cf                                           	mov    ecx,edi
  d7ecc3:	89 86 38 16 00 00                               	mov    DWORD PTR [esi+0x1638],eax
  d7ecc9:	e8 22 de ff ff                                  	call   0xd7caf0
  d7ecce:	68 c8 cd 08 01                                  	push   0x108cdc8
  d7ecd3:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7ecd8:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ecdd:	8b cf                                           	mov    ecx,edi
  d7ecdf:	89 86 3c 16 00 00                               	mov    DWORD PTR [esi+0x163c],eax
  d7ece5:	e8 06 de ff ff                                  	call   0xd7caf0
  d7ecea:	89 86 40 16 00 00                               	mov    DWORD PTR [esi+0x1640],eax
  d7ecf0:	68 c0 cd 08 01                                  	push   0x108cdc0
  d7ecf5:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7ecfa:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ecff:	8b cf                                           	mov    ecx,edi
  d7ed01:	e8 ea dd ff ff                                  	call   0xd7caf0
  d7ed06:	68 b4 cd 08 01                                  	push   0x108cdb4
  d7ed0b:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7ed10:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ed15:	8b cf                                           	mov    ecx,edi
  d7ed17:	89 86 44 16 00 00                               	mov    DWORD PTR [esi+0x1644],eax
  d7ed1d:	e8 ce dd ff ff                                  	call   0xd7caf0
  d7ed22:	68 a8 cd 08 01                                  	push   0x108cda8
  d7ed27:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7ed2c:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ed31:	8b cf                                           	mov    ecx,edi
  d7ed33:	89 86 48 16 00 00                               	mov    DWORD PTR [esi+0x1648],eax
  d7ed39:	e8 b2 dd ff ff                                  	call   0xd7caf0
  d7ed3e:	68 a0 cd 08 01                                  	push   0x108cda0
  d7ed43:	68 94 cd 08 01                                  	push   0x108cd94
  d7ed48:	68 8c cd 08 01                                  	push   0x108cd8c
  d7ed4d:	8b cf                                           	mov    ecx,edi
  d7ed4f:	89 86 4c 16 00 00                               	mov    DWORD PTR [esi+0x164c],eax
  d7ed55:	e8 96 dd ff ff                                  	call   0xd7caf0
  d7ed5a:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7ed5f:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ed64:	8b cf                                           	mov    ecx,edi
  d7ed66:	89 86 50 16 00 00                               	mov    DWORD PTR [esi+0x1650],eax
  d7ed6c:	e8 1f b3 ff ff                                  	call   0xd7a090
  d7ed71:	3b c3                                           	cmp    eax,ebx
  d7ed73:	89 86 54 16 00 00                               	mov    DWORD PTR [esi+0x1654],eax
  d7ed79:	75 08                                           	jne    0xd7ed83
  d7ed7b:	5d                                              	pop    ebp
  d7ed7c:	5f                                              	pop    edi
  d7ed7d:	5e                                              	pop    esi
  d7ed7e:	32 c0                                           	xor    al,al
  d7ed80:	5b                                              	pop    ebx
  d7ed81:	59                                              	pop    ecx
  d7ed82:	c3                                              	ret
  d7ed83:	68 1c 8d 00 01                                  	push   0x1008d1c
  d7ed88:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ed8d:	8b cf                                           	mov    ecx,edi
  d7ed8f:	e8 fc b2 ff ff                                  	call   0xd7a090
  d7ed94:	8b e8                                           	mov    ebp,eax
  d7ed96:	3b eb                                           	cmp    ebp,ebx
  d7ed98:	74 39                                           	je     0xd7edd3
  d7ed9a:	8b 8e c4 0a 00 00                               	mov    ecx,DWORD PTR [esi+0xac4]
  d7eda0:	55                                              	push   ebp
  d7eda1:	51                                              	push   ecx
  d7eda2:	e8 29 40 12 00                                  	call   0xea2dd0
  d7eda7:	68 80 cd 08 01                                  	push   0x108cd80
  d7edac:	55                                              	push   ebp
  d7edad:	8b d8                                           	mov    ebx,eax
  d7edaf:	e8 5c 0c 0f 00                                  	call   0xe6fa10
  d7edb4:	8b e8                                           	mov    ebp,eax
  d7edb6:	83 c4 10                                        	add    esp,0x10
  d7edb9:	85 ed                                           	test   ebp,ebp
  d7edbb:	74 16                                           	je     0xd7edd3
  d7edbd:	85 db                                           	test   ebx,ebx
  d7edbf:	74 12                                           	je     0xd7edd3
  d7edc1:	53                                              	push   ebx
  d7edc2:	e8 69 f2 11 00                                  	call   0xe9e030
  d7edc7:	83 c4 04                                        	add    esp,0x4
  d7edca:	03 45 08                                        	add    eax,DWORD PTR [ebp+0x8]
  d7edcd:	89 86 20 0c 00 00                               	mov    DWORD PTR [esi+0xc20],eax
  d7edd3:	68 74 cd 08 01                                  	push   0x108cd74
  d7edd8:	68 58 cd 08 01                                  	push   0x108cd58
  d7eddd:	8b cf                                           	mov    ecx,edi
  d7eddf:	e8 ac b2 ff ff                                  	call   0xd7a090
  d7ede4:	8b e8                                           	mov    ebp,eax
  d7ede6:	85 ed                                           	test   ebp,ebp
  d7ede8:	74 39                                           	je     0xd7ee23
  d7edea:	8b 96 c4 0a 00 00                               	mov    edx,DWORD PTR [esi+0xac4]
  d7edf0:	55                                              	push   ebp
  d7edf1:	52                                              	push   edx
  d7edf2:	e8 d9 3f 12 00                                  	call   0xea2dd0
  d7edf7:	68 80 cd 08 01                                  	push   0x108cd80
  d7edfc:	55                                              	push   ebp
  d7edfd:	8b d8                                           	mov    ebx,eax
  d7edff:	e8 0c 0c 0f 00                                  	call   0xe6fa10
  d7ee04:	8b e8                                           	mov    ebp,eax
  d7ee06:	83 c4 10                                        	add    esp,0x10
  d7ee09:	85 ed                                           	test   ebp,ebp
  d7ee0b:	74 16                                           	je     0xd7ee23
  d7ee0d:	85 db                                           	test   ebx,ebx
  d7ee0f:	74 12                                           	je     0xd7ee23
  d7ee11:	53                                              	push   ebx
  d7ee12:	e8 19 f2 11 00                                  	call   0xe9e030
  d7ee17:	83 c4 04                                        	add    esp,0x4
  d7ee1a:	03 45 08                                        	add    eax,DWORD PTR [ebp+0x8]
  d7ee1d:	89 86 24 0c 00 00                               	mov    DWORD PTR [esi+0xc24],eax
  d7ee23:	8b ae 00 16 00 00                               	mov    ebp,DWORD PTR [esi+0x1600]
  d7ee29:	8d 86 00 16 00 00                               	lea    eax,[esi+0x1600]
  d7ee2f:	3b e8                                           	cmp    ebp,eax
  d7ee31:	74 33                                           	je     0xd7ee66
  d7ee33:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  d7ee36:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  d7ee38:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  d7ee3b:	8b cb                                           	mov    ecx,ebx
  d7ee3d:	ff d2                                           	call   edx
  d7ee3f:	85 c0                                           	test   eax,eax
  d7ee41:	74 0d                                           	je     0xd7ee50
  d7ee43:	50                                              	push   eax
  d7ee44:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7ee49:	8b cf                                           	mov    ecx,edi
  d7ee4b:	e8 c0 f1 ff ff                                  	call   0xd7e010
  d7ee50:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  d7ee52:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d7ee55:	8b cb                                           	mov    ecx,ebx
  d7ee57:	ff d2                                           	call   edx
  d7ee59:	8b 6d 00                                        	mov    ebp,DWORD PTR [ebp+0x0]
  d7ee5c:	8d 86 00 16 00 00                               	lea    eax,[esi+0x1600]
  d7ee62:	3b e8                                           	cmp    ebp,eax
  d7ee64:	75 cd                                           	jne    0xd7ee33
  d7ee66:	e8 b5 ad a5 ff                                  	call   0x7d9c20
  d7ee6b:	8b f8                                           	mov    edi,eax
  d7ee6d:	e8 ce ad a5 ff                                  	call   0x7d9c40
  d7ee72:	3b f8                                           	cmp    edi,eax
  d7ee74:	74 1d                                           	je     0xd7ee93
  d7ee76:	e8 a5 ac 81 ff                                  	call   0x599b20
  d7ee7b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d7ee7d:	6a ff                                           	push   0xffffffff
  d7ee7f:	6a 00                                           	push   0x0
  d7ee81:	8b c8                                           	mov    ecx,eax
  d7ee83:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  d7ee86:	68 04 00 00 80                                  	push   0x80000004
  d7ee8b:	ff d0                                           	call   eax
  d7ee8d:	89 86 c0 0a 00 00                               	mov    DWORD PTR [esi+0xac0],eax
  d7ee93:	5d                                              	pop    ebp
  d7ee94:	5f                                              	pop    edi
  d7ee95:	5e                                              	pop    esi
  d7ee96:	b0 01                                           	mov    al,0x1
  d7ee98:	5b                                              	pop    ebx
  d7ee99:	59                                              	pop    ecx
  d7ee9a:	c3                                              	ret
  d7ee9b:	cc                                              	int3
  d7ee9c:	cc                                              	int3
  d7ee9d:	cc                                              	int3
  d7ee9e:	cc                                              	int3
  d7ee9f:	cc                                              	int3
  d7eea0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d7eea4:	3d 20 4b 9e 03                                  	cmp    eax,0x39e4b20
  d7eea9:	56                                              	push   esi
  d7eeaa:	77 5c                                           	ja     0xd7ef08
  d7eeac:	74 4c                                           	je     0xd7eefa
  d7eeae:	2d f0 90 02 03                                  	sub    eax,0x30290f0
  d7eeb3:	74 2c                                           	je     0xd7eee1
  d7eeb5:	2d 1e ab 8b 00                                  	sub    eax,0x8bab1e
  d7eeba:	74 17                                           	je     0xd7eed3
  d7eebc:	83 e8 10                                        	sub    eax,0x10
  d7eebf:	0f 85 94 00 00 00                               	jne    0xd7ef59
  d7eec5:	83 c1 04                                        	add    ecx,0x4
  d7eec8:	e8 43 ab 9e ff                                  	call   0x769a10
  d7eecd:	32 c0                                           	xor    al,al
  d7eecf:	5e                                              	pop    esi
  d7eed0:	c2 08 00                                        	ret    0x8
  d7eed3:	83 c1 04                                        	add    ecx,0x4
  d7eed6:	e8 15 ab 9e ff                                  	call   0x7699f0
  d7eedb:	32 c0                                           	xor    al,al
  d7eedd:	5e                                              	pop    esi
  d7eede:	c2 08 00                                        	ret    0x8
  d7eee1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  d7eee5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d7eee7:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  d7eeea:	8b ce                                           	mov    ecx,esi
  d7eeec:	ff d2                                           	call   edx
  d7eeee:	6a 00                                           	push   0x0
  d7eef0:	56                                              	push   esi
  d7eef1:	ff d0                                           	call   eax
  d7eef3:	83 c4 08                                        	add    esp,0x8
  d7eef6:	5e                                              	pop    esi
  d7eef7:	c2 08 00                                        	ret    0x8
  d7eefa:	83 c1 fc                                        	add    ecx,0xfffffffc
  d7eefd:	e8 9e f2 ff ff                                  	call   0xd7e1a0
  d7ef02:	32 c0                                           	xor    al,al
  d7ef04:	5e                                              	pop    esi
  d7ef05:	c2 08 00                                        	ret    0x8
  d7ef08:	3d 98 ab 10 05                                  	cmp    eax,0x510ab98
  d7ef0d:	74 3c                                           	je     0xd7ef4b
  d7ef0f:	3d 75 da f1 07                                  	cmp    eax,0x7f1da75
  d7ef14:	74 24                                           	je     0xd7ef3a
  d7ef16:	3d a1 f7 88 d4                                  	cmp    eax,0xd488f7a1
  d7ef1b:	75 3c                                           	jne    0xd7ef59
  d7ef1d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  d7ef21:	8b 70 0c                                        	mov    esi,DWORD PTR [eax+0xc]
  d7ef24:	8b 51 fc                                        	mov    edx,DWORD PTR [ecx-0x4]
  d7ef27:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  d7ef2a:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  d7ef2d:	83 c1 fc                                        	add    ecx,0xfffffffc
  d7ef30:	56                                              	push   esi
  d7ef31:	50                                              	push   eax
  d7ef32:	ff d2                                           	call   edx
  d7ef34:	32 c0                                           	xor    al,al
  d7ef36:	5e                                              	pop    esi
  d7ef37:	c2 08 00                                        	ret    0x8
  d7ef3a:	8b 41 fc                                        	mov    eax,DWORD PTR [ecx-0x4]
  d7ef3d:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  d7ef40:	83 c1 fc                                        	add    ecx,0xfffffffc
  d7ef43:	ff d2                                           	call   edx
  d7ef45:	32 c0                                           	xor    al,al
  d7ef47:	5e                                              	pop    esi
  d7ef48:	c2 08 00                                        	ret    0x8
  d7ef4b:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  d7ef4e:	8b 90 4c 01 00 00                               	mov    edx,DWORD PTR [eax+0x14c]
  d7ef54:	83 c1 04                                        	add    ecx,0x4
  d7ef57:	ff d2                                           	call   edx
  d7ef59:	32 c0                                           	xor    al,al
  d7ef5b:	5e                                              	pop    esi
  d7ef5c:	c2 08 00                                        	ret    0x8
  d7ef5f:	cc                                              	int3
  d7ef60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d7ef64:	81 ec 00 01 00 00                               	sub    esp,0x100
  d7ef6a:	56                                              	push   esi
  d7ef6b:	57                                              	push   edi
  d7ef6c:	68 00 01 00 00                                  	push   0x100
  d7ef71:	8b f1                                           	mov    esi,ecx
  d7ef73:	50                                              	push   eax
  d7ef74:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d7ef78:	51                                              	push   ecx
  d7ef79:	e8 72 05 78 ff                                  	call   0x4ff4f0
  d7ef7e:	8b 3d 64 66 f9 00                               	mov    edi,DWORD PTR ds:0xf96664
  d7ef84:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  d7ef88:	6a 2c                                           	push   0x2c
  d7ef8a:	52                                              	push   edx
  d7ef8b:	ff d7                                           	call   edi
  d7ef8d:	c6 00 00                                        	mov    BYTE PTR [eax],0x0
  d7ef90:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  d7ef94:	6a 2e                                           	push   0x2e
  d7ef96:	50                                              	push   eax
  d7ef97:	ff d7                                           	call   edi
  d7ef99:	83 c4 1c                                        	add    esp,0x1c
  d7ef9c:	c6 00 00                                        	mov    BYTE PTR [eax],0x0
  d7ef9f:	83 c0 01                                        	add    eax,0x1
  d7efa2:	50                                              	push   eax
  d7efa3:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  d7efa7:	83 c6 f8                                        	add    esi,0xfffffff8
  d7efaa:	51                                              	push   ecx
  d7efab:	8b ce                                           	mov    ecx,esi
  d7efad:	e8 5e f0 ff ff                                  	call   0xd7e010
  d7efb2:	85 c0                                           	test   eax,eax
  d7efb4:	74 19                                           	je     0xd7efcf
  d7efb6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d7efb8:	6a 00                                           	push   0x0
  d7efba:	6a 00                                           	push   0x0
  d7efbc:	50                                              	push   eax
  d7efbd:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  d7efc0:	8b ce                                           	mov    ecx,esi
  d7efc2:	ff d0                                           	call   eax
  d7efc4:	5f                                              	pop    edi
  d7efc5:	5e                                              	pop    esi
  d7efc6:	81 c4 00 01 00 00                               	add    esp,0x100
  d7efcc:	c2 04 00                                        	ret    0x4
  d7efcf:	5f                                              	pop    edi
  d7efd0:	33 c0                                           	xor    eax,eax
  d7efd2:	33 d2                                           	xor    edx,edx
  d7efd4:	5e                                              	pop    esi
  d7efd5:	81 c4 00 01 00 00                               	add    esp,0x100
  d7efdb:	c2 04 00                                        	ret    0x4
  d7efde:	cc                                              	int3
  d7efdf:	cc                                              	int3
  d7efe0:	81 ec 54 01 00 00                               	sub    esp,0x154
  d7efe6:	53                                              	push   ebx
  d7efe7:	8b 9c 24 5c 01 00 00                            	mov    ebx,DWORD PTR [esp+0x15c]
  d7efee:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  d7eff0:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  d7eff3:	55                                              	push   ebp
  d7eff4:	8b e9                                           	mov    ebp,ecx
  d7eff6:	8b cb                                           	mov    ecx,ebx
  d7eff8:	ff d2                                           	call   edx
  d7effa:	85 c0                                           	test   eax,eax
  d7effc:	75 0d                                           	jne    0xd7f00b
  d7effe:	5d                                              	pop    ebp
  d7efff:	33 c0                                           	xor    eax,eax
  d7f001:	5b                                              	pop    ebx
  d7f002:	81 c4 54 01 00 00                               	add    esp,0x154
  d7f008:	c2 04 00                                        	ret    0x4
  d7f00b:	3d 00 40 1f 00                                  	cmp    eax,0x1f4000
  d7f010:	77 ec                                           	ja     0xd7effe
  d7f012:	56                                              	push   esi
  d7f013:	57                                              	push   edi
  d7f014:	68 84 c9 08 01                                  	push   0x108c984
  d7f019:	8d 75 f8                                        	lea    esi,[ebp-0x8]
  d7f01c:	68 78 c9 08 01                                  	push   0x108c978
  d7f021:	8b ce                                           	mov    ecx,esi
  d7f023:	e8 e8 ef ff ff                                  	call   0xd7e010
  d7f028:	6a 00                                           	push   0x0
  d7f02a:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  d7f031:	8b f8                                           	mov    edi,eax
  d7f033:	e8 58 98 73 ff                                  	call   0x4b8890
  d7f038:	6a ff                                           	push   0xffffffff
  d7f03a:	6a 00                                           	push   0x0
  d7f03c:	6a 01                                           	push   0x1
  d7f03e:	53                                              	push   ebx
  d7f03f:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  d7f046:	e8 b5 7b 73 ff                                  	call   0x4b6c00
  d7f04b:	8b 85 64 0b 00 00                               	mov    eax,DWORD PTR [ebp+0xb64]
  d7f051:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d7f055:	33 db                                           	xor    ebx,ebx
  d7f057:	51                                              	push   ecx
  d7f058:	53                                              	push   ebx
  d7f059:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  d7f05d:	c7 44 24 18 60 9b fb 00                         	mov    DWORD PTR [esp+0x18],0xfb9b60
  d7f065:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  d7f069:	c6 44 24 20 00                                  	mov    BYTE PTR [esp+0x20],0x0
  d7f06e:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  d7f072:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  d7f076:	e8 e5 58 73 ff                                  	call   0x4b4960
  d7f07b:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  d7f07f:	52                                              	push   edx
  d7f080:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  d7f087:	e8 24 62 73 ff                                  	call   0x4b52b0
  d7f08c:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  d7f090:	e8 4b 8c ff ff                                  	call   0xd77ce0
  d7f095:	53                                              	push   ebx
  d7f096:	57                                              	push   edi
  d7f097:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  d7f09b:	50                                              	push   eax
  d7f09c:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  d7f0a0:	51                                              	push   ecx
  d7f0a1:	8b ce                                           	mov    ecx,esi
  d7f0a3:	e8 e8 e3 ff ff                                  	call   0xd7d490
  d7f0a8:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  d7f0ac:	e8 af 69 ff ff                                  	call   0xd75a60
  d7f0b1:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  d7f0b5:	e8 e6 56 73 ff                                  	call   0x4b47a0
  d7f0ba:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d7f0be:	e8 ad 53 76 ff                                  	call   0x4e4470
  d7f0c3:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  d7f0ca:	e8 01 84 73 ff                                  	call   0x4b74d0
  d7f0cf:	8b c7                                           	mov    eax,edi
  d7f0d1:	5f                                              	pop    edi
  d7f0d2:	5e                                              	pop    esi
  d7f0d3:	5d                                              	pop    ebp
  d7f0d4:	5b                                              	pop    ebx
  d7f0d5:	81 c4 54 01 00 00                               	add    esp,0x154
  d7f0db:	c2 04 00                                        	ret    0x4
  d7f0de:	cc                                              	int3
  d7f0df:	cc                                              	int3
  d7f0e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d7f0e4:	83 ec 54                                        	sub    esp,0x54
  d7f0e7:	0b 44 24 5c                                     	or     eax,DWORD PTR [esp+0x5c]
  d7f0eb:	56                                              	push   esi
  d7f0ec:	57                                              	push   edi
  d7f0ed:	8b f1                                           	mov    esi,ecx
  d7f0ef:	75 10                                           	jne    0xd7f101
  d7f0f1:	8d 4e f8                                        	lea    ecx,[esi-0x8]
  d7f0f4:	e8 e7 69 ff ff                                  	call   0xd75ae0
  d7f0f9:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
  d7f0fd:	89 54 24 64                                     	mov    DWORD PTR [esp+0x64],edx
  d7f101:	8b 96 60 16 00 00                               	mov    edx,DWORD PTR [esi+0x1660]
  d7f107:	8b 86 5c 16 00 00                               	mov    eax,DWORD PTR [esi+0x165c]
  d7f10d:	8b 3c 90                                        	mov    edi,DWORD PTR [eax+edx*4]
  d7f110:	8d 8e 58 16 00 00                               	lea    ecx,[esi+0x1658]
  d7f116:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  d7f11a:	52                                              	push   edx
  d7f11b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  d7f11f:	50                                              	push   eax
  d7f120:	e8 1b 45 ba ff                                  	call   0x923640
  d7f125:	39 38                                           	cmp    DWORD PTR [eax],edi
  d7f127:	0f 85 24 02 00 00                               	jne    0xd7f351
  d7f12d:	8b 96 80 16 00 00                               	mov    edx,DWORD PTR [esi+0x1680]
  d7f133:	8b 86 7c 16 00 00                               	mov    eax,DWORD PTR [esi+0x167c]
  d7f139:	8b 3c 90                                        	mov    edi,DWORD PTR [eax+edx*4]
  d7f13c:	8d 8e 78 16 00 00                               	lea    ecx,[esi+0x1678]
  d7f142:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  d7f146:	52                                              	push   edx
  d7f147:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  d7f14b:	50                                              	push   eax
  d7f14c:	e8 ef 44 ba ff                                  	call   0x923640
  d7f151:	39 38                                           	cmp    DWORD PTR [eax],edi
  d7f153:	0f 85 f8 01 00 00                               	jne    0xd7f351
  d7f159:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  d7f15e:	68 c0 8b 00 01                                  	push   0x1008bc0
  d7f163:	68 f0 c8 08 01                                  	push   0x108c8f0
  d7f168:	8d 4e f8                                        	lea    ecx,[esi-0x8]
  d7f16b:	c7 44 24 48 30 1f 00 01                         	mov    DWORD PTR [esp+0x48],0x1001f30
  d7f173:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  d7f177:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  d7f17b:	c7 44 24 44 55 8e 1c 01                         	mov    DWORD PTR [esp+0x44],0x11c8e55
  d7f183:	e8 88 ee ff ff                                  	call   0xd7e010
  d7f188:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d7f18c:	3b 4c 24 38                                     	cmp    ecx,DWORD PTR [esp+0x38]
  d7f190:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  d7f194:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  d7f198:	74 0f                                           	je     0xd7f1a9
  d7f19a:	c6 01 00                                        	mov    BYTE PTR [ecx],0x0
  d7f19d:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  d7f1a1:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  d7f1a5:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
  d7f1a9:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  d7f1ad:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  d7f1b1:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  d7f1b5:	8b 96 14 16 00 00                               	mov    edx,DWORD PTR [esi+0x1614]
  d7f1bb:	52                                              	push   edx
  d7f1bc:	50                                              	push   eax
  d7f1bd:	89 4c 24 50                                     	mov    DWORD PTR [esp+0x50],ecx
  d7f1c1:	c7 44 24 54 00 00 00 00                         	mov    DWORD PTR [esp+0x54],0x0
  d7f1c9:	c6 44 24 61 00                                  	mov    BYTE PTR [esp+0x61],0x0
  d7f1ce:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  d7f1d6:	e8 b5 20 12 00                                  	call   0xea1290
  d7f1db:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  d7f1df:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  d7f1e3:	52                                              	push   edx
  d7f1e4:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  d7f1e8:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  d7f1ec:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  d7f1f0:	51                                              	push   ecx
  d7f1f1:	52                                              	push   edx
  d7f1f2:	50                                              	push   eax
  d7f1f3:	e8 78 21 12 00                                  	call   0xea1370
  d7f1f8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  d7f1fc:	83 c4 18                                        	add    esp,0x18
  d7f1ff:	85 c0                                           	test   eax,eax
  d7f201:	74 09                                           	je     0xd7f20c
  d7f203:	50                                              	push   eax
  d7f204:	e8 d7 51 ff ff                                  	call   0xd743e0
  d7f209:	83 c4 04                                        	add    esp,0x4
  d7f20c:	8b 96 38 16 00 00                               	mov    edx,DWORD PTR [esi+0x1638]
  d7f212:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  d7f216:	6a 00                                           	push   0x0
  d7f218:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d7f21c:	51                                              	push   ecx
  d7f21d:	6a 00                                           	push   0x0
  d7f21f:	52                                              	push   edx
  d7f220:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  d7f224:	e8 47 21 12 00                                  	call   0xea1370
  d7f229:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  d7f22d:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  d7f231:	52                                              	push   edx
  d7f232:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  d7f236:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  d7f23a:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
  d7f23e:	50                                              	push   eax
  d7f23f:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  d7f243:	8b 8e 24 16 00 00                               	mov    ecx,DWORD PTR [esi+0x1624]
  d7f249:	6a 00                                           	push   0x0
  d7f24b:	51                                              	push   ecx
  d7f24c:	e8 1f 21 12 00                                  	call   0xea1370
  d7f251:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  d7f255:	83 c4 20                                        	add    esp,0x20
  d7f258:	85 c9                                           	test   ecx,ecx
  d7f25a:	0f 85 b2 00 00 00                               	jne    0xd7f312
  d7f260:	50                                              	push   eax
  d7f261:	e8 da 26 12 00                                  	call   0xea1940
  d7f266:	83 c4 04                                        	add    esp,0x4
  d7f269:	80 38 00                                        	cmp    BYTE PTR [eax],0x0
  d7f26c:	75 15                                           	jne    0xd7f283
  d7f26e:	8b 86 3c 16 00 00                               	mov    eax,DWORD PTR [esi+0x163c]
  d7f274:	6a 00                                           	push   0x0
  d7f276:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  d7f27a:	52                                              	push   edx
  d7f27b:	6a 00                                           	push   0x0
  d7f27d:	50                                              	push   eax
  d7f27e:	e9 a8 00 00 00                                  	jmp    0xd7f32b
  d7f283:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  d7f287:	8b 86 40 16 00 00                               	mov    eax,DWORD PTR [esi+0x1640]
  d7f28d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d7f291:	51                                              	push   ecx
  d7f292:	6a 00                                           	push   0x0
  d7f294:	52                                              	push   edx
  d7f295:	50                                              	push   eax
  d7f296:	e8 d5 20 12 00                                  	call   0xea1370
  d7f29b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  d7f29f:	83 c4 10                                        	add    esp,0x10
  d7f2a2:	85 c9                                           	test   ecx,ecx
  d7f2a4:	75 6c                                           	jne    0xd7f312
  d7f2a6:	85 c0                                           	test   eax,eax
  d7f2a8:	74 71                                           	je     0xd7f31b
  d7f2aa:	8b ce                                           	mov    ecx,esi
  d7f2ac:	c6 44 24 58 01                                  	mov    BYTE PTR [esp+0x58],0x1
  d7f2b1:	e8 ca a7 9e ff                                  	call   0x769a80
  d7f2b6:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  d7f2ba:	51                                              	push   ecx
  d7f2bb:	8d 8e d0 0b 00 00                               	lea    ecx,[esi+0xbd0]
  d7f2c1:	e8 8a 90 ff ff                                  	call   0xd78350
  d7f2c6:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  d7f2ca:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  d7f2ce:	8b 8e d4 0b 00 00                               	mov    ecx,DWORD PTR [esi+0xbd4]
  d7f2d4:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  d7f2d8:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  d7f2dc:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  d7f2e0:	52                                              	push   edx
  d7f2e1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  d7f2e5:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  d7f2e9:	50                                              	push   eax
  d7f2ea:	8d 8e dc 0b 00 00                               	lea    ecx,[esi+0xbdc]
  d7f2f0:	e8 db 45 ff ff                                  	call   0xd738d0
  d7f2f5:	8b 74 24 60                                     	mov    esi,DWORD PTR [esp+0x60]
  d7f2f9:	8b 7c 24 64                                     	mov    edi,DWORD PTR [esp+0x64]
  d7f2fd:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  d7f301:	e8 4a 53 ff ff                                  	call   0xd74650
  d7f306:	8b d7                                           	mov    edx,edi
  d7f308:	5f                                              	pop    edi
  d7f309:	8b c6                                           	mov    eax,esi
  d7f30b:	5e                                              	pop    esi
  d7f30c:	83 c4 54                                        	add    esp,0x54
  d7f30f:	c2 0c 00                                        	ret    0xc
  d7f312:	51                                              	push   ecx
  d7f313:	e8 c8 50 ff ff                                  	call   0xd743e0
  d7f318:	83 c4 04                                        	add    esp,0x4
  d7f31b:	8b 96 3c 16 00 00                               	mov    edx,DWORD PTR [esi+0x163c]
  d7f321:	6a 00                                           	push   0x0
  d7f323:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d7f327:	51                                              	push   ecx
  d7f328:	6a 00                                           	push   0x0
  d7f32a:	52                                              	push   edx
  d7f32b:	e8 40 20 12 00                                  	call   0xea1370
  d7f330:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  d7f334:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  d7f338:	2b c1                                           	sub    eax,ecx
  d7f33a:	83 c4 10                                        	add    esp,0x10
  d7f33d:	83 f8 01                                        	cmp    eax,0x1
  d7f340:	7e 0f                                           	jle    0xd7f351
  d7f342:	85 c9                                           	test   ecx,ecx
  d7f344:	74 0b                                           	je     0xd7f351
  d7f346:	50                                              	push   eax
  d7f347:	51                                              	push   ecx
  d7f348:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  d7f34c:	e8 5f a1 9e ff                                  	call   0x7694b0
  d7f351:	5f                                              	pop    edi
  d7f352:	33 c0                                           	xor    eax,eax
  d7f354:	33 d2                                           	xor    edx,edx
  d7f356:	5e                                              	pop    esi
  d7f357:	83 c4 54                                        	add    esp,0x54
  d7f35a:	c2 0c 00                                        	ret    0xc
  d7f35d:	cc                                              	int3
  d7f35e:	cc                                              	int3
  d7f35f:	cc                                              	int3
