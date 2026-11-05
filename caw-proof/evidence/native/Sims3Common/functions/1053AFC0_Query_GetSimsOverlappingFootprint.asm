# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053afc0 (Query_GetSimsOverlappingFootprint)
Paired Ghidra pseudocode: 1053AFC0_Query_GetSimsOverlappingFootprint.c
Window: [0x1053afc0, 0x1053b670) (1712 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053b670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053afc0: 55 8b ec 83 e4 f0 81 ec 44 01 00 00 53 56 57 e8
1053afd0: cc f1 1e 00 8b f0 89 b4 24 94 00 00 00 e8 5e 2d
1053afe0: f4 ff 33 db 3b f3 89 44 24 1c 0f 84 06 02 00 00
1053aff0: 3b c3 0f 84 fe 01 00 00 8b 45 10 8b 4d 0c 50 51
1053b000: 8b ce e8 a9 fb 1e 00 8b f8 3b fb 0f 84 e5 01 00
1053b010: 00 8b 15 e8 d7 c8 10 52 8b cf e8 81 bd 1e 00 8b
1053b020: f0 a1 98 d9 c8 10 50 8b cf e8 72 bd 1e 00 8b 0d
1053b030: 08 04 c7 10 51 8b cf 89 44 24 1c e8 60 bd 1e 00
1053b040: 3b f3 8b f8 0f 84 ac 01 00 00 8b 4c 24 18 3b cb
1053b050: 0f 84 a0 01 00 00 3b fb 0f 84 98 01 00 00 8d 94
1053b060: 24 c0 00 00 00 52 e8 25 f1 20 00 8b 55 14 8d 44
1053b070: 24 17 50 8d 4c 24 64 51 52 8b ce 89 5c 24 6c 89
1053b080: 5c 24 70 89 5c 24 74 c7 44 24 78 d0 b5 b1 10 e8
1053b090: dc e6 1f 00 8b 4f 18 f3 0f 10 05 14 b5 b1 10 8b
1053b0a0: c1 2d ff ff ff 7f f7 d8 1b c0 23 c1 0f be 4c 24
1053b0b0: 17 03 c8 8b 44 24 64 f3 0f 11 44 24 2c f3 0f 11
1053b0c0: 44 24 28 f3 0f 11 44 24 24 f3 0f 11 44 24 20 0f
1053b0d0: 28 44 24 20 8b f8 2b 44 24 60 0f 29 44 24 70 f3
1053b0e0: 0f 10 05 10 b5 b1 10 c1 f8 06 89 8c 24 90 00 00
1053b0f0: 00 f3 0f 11 44 24 2c f3 0f 11 44 24 28 f3 0f 11
1053b100: 44 24 24 f3 0f 11 44 24 20 0f 28 44 24 20 50 8d
1053b110: 4c 24 44 0f 29 44 24 54 89 5c 24 44 89 5c 24 48
1053b120: 89 5c 24 4c c7 44 24 50 ac b5 b1 10 e8 af c3 c0
1053b130: ff 8b 44 24 60 3b c7 0f 84 9d 00 00 00 8d 70 20
1053b140: 8b 46 10 3b 46 14 0f 84 80 00 00 00 f3 0f 10 06
1053b150: f3 0f 10 4e 04 f3 0f 11 4c 24 24 0f 28 4c 24 70
1053b160: f3 0f 11 44 24 2c f3 0f 11 44 24 28 f3 0f 11 44
1053b170: 24 20 0f 28 44 24 20 0f 5d c8 f3 0f 10 46 08 0f
1053b180: 29 4c 24 70 f3 0f 10 4e 0c f3 0f 11 4c 24 34 0f
1053b190: 28 4c 24 50 f3 0f 11 44 24 3c f3 0f 11 44 24 38
1053b1a0: f3 0f 11 44 24 30 0f 28 44 24 30 0f 5f c8 8d 4c
1053b1b0: 24 40 0f 29 4c 24 50 e8 94 fd ff ff 8b 4c 24 44
1053b1c0: 8d 46 10 50 83 c1 f0 e8 f4 65 b4 ff 83 c6 40 8d
1053b1d0: 4e e0 3b cf 0f 85 66 ff ff ff 8b 54 24 40 3b 54
1053b1e0: 24 44 75 1b 8d 4c 24 40 e8 f3 94 b6 ff 8d 4c 24
1053b1f0: 60 e8 6a f6 ff ff 33 c0 5f 5e 5b 8b e5 5d c3 0f
1053b200: 28 4c 24 50 0f 28 5c 24 70 f3 0f 10 15 ec 10 b3
1053b210: 10 0f 28 c1 0f 58 c3 0f c6 d2 00 0f 59 c2 0f 29
1053b220: 44 24 50 0f 29 44 24 70 f3 0f 10 44 24 70 0f 5c
1053b230: cb 0f 28 9c 24 c0 00 00 00 f3 0f 11 44 24 3c f3
1053b240: 0f 11 44 24 30 0f 59 ca f3 0f 10 54 24 54 f3 0f
1053b250: 11 54 24 38 0f 57 d2 f3 0f 11 54 24 34 0f 28 54
1053b260: 24 30 0f 28 e3 0f c6 e3 09 0f 28 eb 0f c6 eb 12
1053b270: 0f 28 f2 0f c6 f2 09 0f 59 f5 0f 28 c2 0f c6 c2
1053b280: 12 0f 59 c4 0f 5c c6 0f 28 f3 0f c6 f3 ff f3 0f
1053b290: 10 1d fc df aa 10 0f 59 f2 0f 58 c6 0f 28 f0 0f
1053b2a0: c6 f0 09 0f 59 f5 0f 28 e8 0f c6 e8 12 0f 28 84
1053b2b0: 24 d0 00 00 00 0f 59 ec 0f 5c ee 0f c6 db 00 0f
1053b2c0: 59 eb 0f 59 c9 0f 58 ea 0f 58 e8 53 0f 28 c1 0f
1053b2d0: c6 c1 55 8d 84 24 84 00 00 00 50 0f c6 c9 00 0f
1053b2e0: 58 c1 0f 51 c0 6a 06 51 0f 29 44 24 60 d9 44 24
1053b2f0: 60 8d 8c 24 00 01 00 00 d9 1c 24 51 8b 4c 24 30
1053b300: 0f 29 9c 24 84 00 00 00 0f 29 ac 24 04 01 00 00
1053b310: 89 9c 24 94 00 00 00 89 9c 24 98 00 00 00 89 9c
1053b320: 24 9c 00 00 00 c7 84 24 a0 00 00 00 58 4a ab 10
1053b330: e8 db 2b f4 ff 8b b4 24 84 00 00 00 8b bc 24 80
1053b340: 00 00 00 b8 60 f1 ab 10 89 74 24 18 89 9c 24 a0
1053b350: 00 00 00 89 9c 24 a4 00 00 00 89 9c 24 a8 00 00
1053b360: 00 89 84 24 ac 00 00 00 89 9c 24 b0 00 00 00 3b
1053b370: fe 0f 28 94 24 c0 00 00 00 0f 28 6c 24 70 0f 28
1053b380: c2 0f 59 c2 0f 28 c8 0f c6 c8 0e 0f 58 c8 0f 28
1053b390: c1 0f c6 c1 01 0f 58 c1 0f c6 c0 00 0f 53 d8 0f
1053b3a0: 28 e3 0f 59 e0 0f 28 cd 0f 5c cc 0f 59 cb 0f 28
1053b3b0: d9 0f 59 d8 0f 28 c5 0f 5c c3 0f 59 c1 0f 57 c9
1053b3c0: f3 0f 11 4c 24 3c c7 44 24 1c 00 00 00 80 f3 0f
1053b3d0: 10 4c 24 1c f3 0f 11 4c 24 38 f3 0f 11 4c 24 34
1053b3e0: f3 0f 11 4c 24 30 0f 28 4c 24 30 0f 57 ca 0f 28
1053b3f0: 94 24 d0 00 00 00 0f 59 c1 0f 28 d8 0f c6 d8 12
1053b400: 0f 28 e0 0f c6 e0 09 0f c6 c0 ff 0f 28 ca 0f c6
1053b410: ca 12 0f 28 f2 0f c6 f2 09 0f 59 f3 0f 59 cc 0f
1053b420: 5c ce 0f 29 84 24 e0 00 00 00 0f 28 f2 0f 59 f0
1053b430: 0f 58 ce 0f 28 f1 0f c6 f1 12 0f 59 f4 0f 28 c1
1053b440: 0f c6 c1 09 0f 59 c3 0f 5c f0 0f 59 f5 0f 58 f2
1053b450: 0f 57 c0 0f 5c c6 89 9c 24 b4 00 00 00 89 9c 24
1053b460: b8 00 00 00 89 84 24 bc 00 00 00 0f 29 5c 24 30
1053b470: 0f 29 64 24 50 0f 29 84 24 40 01 00 00 0f 84 6e
1053b480: 01 00 00 8b 4f 04 8b 07 51 8b 8c 24 98 00 00 00
1053b490: 50 e8 1a f7 1e 00 8b f0 3b f3 0f 84 2f 01 00 00
1053b4a0: 8b 15 98 d9 c8 10 52 8b ce e8 f2 b8 1e 00 89 44
1053b4b0: 24 1c a1 08 04 c7 10 50 8b ce e8 e1 b8 1e 00 8b
1053b4c0: 4c 24 1c 3b cb 0f 84 04 01 00 00 3b c3 0f 84 fc
1053b4d0: 00 00 00 8b 50 18 8b c2 2d ff ff ff 7f f7 d8 1b
1053b4e0: c0 23 c2 3b 84 24 90 00 00 00 0f 85 df 00 00 00
1053b4f0: 8d 94 24 20 01 00 00 52 e8 b3 ed 20 00 0f 28 10
1053b500: 0f 28 64 24 50 0f 28 5c 24 30 0f 28 c2 0f c6 c2
1053b510: 12 0f 59 c4 0f 28 ca 0f c6 ca 09 0f 59 cb 0f 5c
1053b520: c1 0f 28 ca 0f 59 8c 24 e0 00 00 00 0f 58 c1 0f
1053b530: 28 c8 0f c6 c8 12 0f 59 cc 0f 28 e0 0f c6 e0 09
1053b540: 0f 59 e3 0f 5c cc 0f 59 4c 24 70 0f 58 ca 0f 58
1053b550: 8c 24 40 01 00 00 0f 29 8c 24 10 01 00 00 f3 0f
1053b560: 10 84 24 10 01 00 00 0f 29 8c 24 00 01 00 00 f3
1053b570: 0f 11 44 24 20 f3 0f 10 84 24 08 01 00 00 f3 0f
1053b580: 11 44 24 24 0f 57 c0 0f 2f 45 18 72 18 8d 44 24
1053b590: 20 50 8d 4c 24 44 51 8d 8c 24 a8 00 00 00 e8 7d
1053b5a0: 34 f3 ff eb 1d d9 45 18 51 d9 1c 24 8d 54 24 24
1053b5b0: 52 8d 44 24 48 50 8d 8c 24 ac 00 00 00 e8 ce 71
1053b5c0: f3 ff 3a c3 74 09 8b 44 24 18 83 c7 08 eb 16 8b
1053b5d0: 44 24 18 8b 48 f8 83 e8 08 89 0f 8b 50 04 89 44
1053b5e0: 24 18 89 57 04 3b f8 0f 85 96 fe ff ff 8b 74 24
1053b5f0: 18 e8 2a fb 01 00 8b 8c 24 80 00 00 00 2b f1 c1
1053b600: fe 03 89 9c 24 98 00 00 00 89 9c 24 9c 00 00 00
1053b610: 75 07 8d 8c 24 98 00 00 00 8b 10 8b 92 c0 00 00
1053b620: 00 56 51 8b 4d 08 51 8b c8 ff d2 8d 8c 24 a0 00
1053b630: 00 00 8b f0 e8 67 0d 05 00 8b 84 24 80 00 00 00
1053b640: 3b c3 74 09 50 e8 46 d8 3d 00 83 c4 04 8d 4c 24
1053b650: 40 e8 8a 90 b6 ff 8d 4c 24 60 e8 01 f2 ff ff 5f
1053b660: 8b c6 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053afc0 <.text+0x539fc0>:
1053afc0:	55                                              	push   ebp
1053afc1:	8b ec                                           	mov    ebp,esp
1053afc3:	83 e4 f0                                        	and    esp,0xfffffff0
1053afc6:	81 ec 44 01 00 00                               	sub    esp,0x144
1053afcc:	53                                              	push   ebx
1053afcd:	56                                              	push   esi
1053afce:	57                                              	push   edi
1053afcf:	e8 cc f1 1e 00                                  	call   0x1072a1a0
1053afd4:	8b f0                                           	mov    esi,eax
1053afd6:	89 b4 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],esi
1053afdd:	e8 5e 2d f4 ff                                  	call   0x1047dd40
1053afe2:	33 db                                           	xor    ebx,ebx
1053afe4:	3b f3                                           	cmp    esi,ebx
1053afe6:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1053afea:	0f 84 06 02 00 00                               	je     0x1053b1f6
1053aff0:	3b c3                                           	cmp    eax,ebx
1053aff2:	0f 84 fe 01 00 00                               	je     0x1053b1f6
1053aff8:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1053affb:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1053affe:	50                                              	push   eax
1053afff:	51                                              	push   ecx
1053b000:	8b ce                                           	mov    ecx,esi
1053b002:	e8 a9 fb 1e 00                                  	call   0x1072abb0
1053b007:	8b f8                                           	mov    edi,eax
1053b009:	3b fb                                           	cmp    edi,ebx
1053b00b:	0f 84 e5 01 00 00                               	je     0x1053b1f6
1053b011:	8b 15 e8 d7 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d7e8
1053b017:	52                                              	push   edx
1053b018:	8b cf                                           	mov    ecx,edi
1053b01a:	e8 81 bd 1e 00                                  	call   0x10726da0
1053b01f:	8b f0                                           	mov    esi,eax
1053b021:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
1053b026:	50                                              	push   eax
1053b027:	8b cf                                           	mov    ecx,edi
1053b029:	e8 72 bd 1e 00                                  	call   0x10726da0
1053b02e:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
1053b034:	51                                              	push   ecx
1053b035:	8b cf                                           	mov    ecx,edi
1053b037:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1053b03b:	e8 60 bd 1e 00                                  	call   0x10726da0
1053b040:	3b f3                                           	cmp    esi,ebx
1053b042:	8b f8                                           	mov    edi,eax
1053b044:	0f 84 ac 01 00 00                               	je     0x1053b1f6
1053b04a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1053b04e:	3b cb                                           	cmp    ecx,ebx
1053b050:	0f 84 a0 01 00 00                               	je     0x1053b1f6
1053b056:	3b fb                                           	cmp    edi,ebx
1053b058:	0f 84 98 01 00 00                               	je     0x1053b1f6
1053b05e:	8d 94 24 c0 00 00 00                            	lea    edx,[esp+0xc0]
1053b065:	52                                              	push   edx
1053b066:	e8 25 f1 20 00                                  	call   0x1074a190
1053b06b:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
1053b06e:	8d 44 24 17                                     	lea    eax,[esp+0x17]
1053b072:	50                                              	push   eax
1053b073:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1053b077:	51                                              	push   ecx
1053b078:	52                                              	push   edx
1053b079:	8b ce                                           	mov    ecx,esi
1053b07b:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
1053b07f:	89 5c 24 70                                     	mov    DWORD PTR [esp+0x70],ebx
1053b083:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
1053b087:	c7 44 24 78 d0 b5 b1 10                         	mov    DWORD PTR [esp+0x78],0x10b1b5d0
1053b08f:	e8 dc e6 1f 00                                  	call   0x10739770
1053b094:	8b 4f 18                                        	mov    ecx,DWORD PTR [edi+0x18]
1053b097:	f3 0f 10 05 14 b5 b1 10                         	movss  xmm0,DWORD PTR ds:0x10b1b514
1053b09f:	8b c1                                           	mov    eax,ecx
1053b0a1:	2d ff ff ff 7f                                  	sub    eax,0x7fffffff
1053b0a6:	f7 d8                                           	neg    eax
1053b0a8:	1b c0                                           	sbb    eax,eax
1053b0aa:	23 c1                                           	and    eax,ecx
1053b0ac:	0f be 4c 24 17                                  	movsx  ecx,BYTE PTR [esp+0x17]
1053b0b1:	03 c8                                           	add    ecx,eax
1053b0b3:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
1053b0b7:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1053b0bd:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1053b0c3:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
1053b0c9:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1053b0cf:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
1053b0d4:	8b f8                                           	mov    edi,eax
1053b0d6:	2b 44 24 60                                     	sub    eax,DWORD PTR [esp+0x60]
1053b0da:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
1053b0df:	f3 0f 10 05 10 b5 b1 10                         	movss  xmm0,DWORD PTR ds:0x10b1b510
1053b0e7:	c1 f8 06                                        	sar    eax,0x6
1053b0ea:	89 8c 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],ecx
1053b0f1:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1053b0f7:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1053b0fd:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
1053b103:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1053b109:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
1053b10e:	50                                              	push   eax
1053b10f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1053b113:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
1053b118:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
1053b11c:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
1053b120:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
1053b124:	c7 44 24 50 ac b5 b1 10                         	mov    DWORD PTR [esp+0x50],0x10b1b5ac
1053b12c:	e8 af c3 c0 ff                                  	call   0x101474e0
1053b131:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1053b135:	3b c7                                           	cmp    eax,edi
1053b137:	0f 84 9d 00 00 00                               	je     0x1053b1da
1053b13d:	8d 70 20                                        	lea    esi,[eax+0x20]
1053b140:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
1053b143:	3b 46 14                                        	cmp    eax,DWORD PTR [esi+0x14]
1053b146:	0f 84 80 00 00 00                               	je     0x1053b1cc
1053b14c:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
1053b150:	f3 0f 10 4e 04                                  	movss  xmm1,DWORD PTR [esi+0x4]
1053b155:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
1053b15b:	0f 28 4c 24 70                                  	movaps xmm1,XMMWORD PTR [esp+0x70]
1053b160:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1053b166:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1053b16c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1053b172:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
1053b177:	0f 5d c8                                        	minps  xmm1,xmm0
1053b17a:	f3 0f 10 46 08                                  	movss  xmm0,DWORD PTR [esi+0x8]
1053b17f:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
1053b184:	f3 0f 10 4e 0c                                  	movss  xmm1,DWORD PTR [esi+0xc]
1053b189:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
1053b18f:	0f 28 4c 24 50                                  	movaps xmm1,XMMWORD PTR [esp+0x50]
1053b194:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1053b19a:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1053b1a0:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1053b1a6:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
1053b1ab:	0f 5f c8                                        	maxps  xmm1,xmm0
1053b1ae:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1053b1b2:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
1053b1b7:	e8 94 fd ff ff                                  	call   0x1053af50
1053b1bc:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1053b1c0:	8d 46 10                                        	lea    eax,[esi+0x10]
1053b1c3:	50                                              	push   eax
1053b1c4:	83 c1 f0                                        	add    ecx,0xfffffff0
1053b1c7:	e8 f4 65 b4 ff                                  	call   0x100817c0
1053b1cc:	83 c6 40                                        	add    esi,0x40
1053b1cf:	8d 4e e0                                        	lea    ecx,[esi-0x20]
1053b1d2:	3b cf                                           	cmp    ecx,edi
1053b1d4:	0f 85 66 ff ff ff                               	jne    0x1053b140
1053b1da:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
1053b1de:	3b 54 24 44                                     	cmp    edx,DWORD PTR [esp+0x44]
1053b1e2:	75 1b                                           	jne    0x1053b1ff
1053b1e4:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1053b1e8:	e8 f3 94 b6 ff                                  	call   0x100a46e0
1053b1ed:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1053b1f1:	e8 6a f6 ff ff                                  	call   0x1053a860
1053b1f6:	33 c0                                           	xor    eax,eax
1053b1f8:	5f                                              	pop    edi
1053b1f9:	5e                                              	pop    esi
1053b1fa:	5b                                              	pop    ebx
1053b1fb:	8b e5                                           	mov    esp,ebp
1053b1fd:	5d                                              	pop    ebp
1053b1fe:	c3                                              	ret
1053b1ff:	0f 28 4c 24 50                                  	movaps xmm1,XMMWORD PTR [esp+0x50]
1053b204:	0f 28 5c 24 70                                  	movaps xmm3,XMMWORD PTR [esp+0x70]
1053b209:	f3 0f 10 15 ec 10 b3 10                         	movss  xmm2,DWORD PTR ds:0x10b310ec
1053b211:	0f 28 c1                                        	movaps xmm0,xmm1
1053b214:	0f 58 c3                                        	addps  xmm0,xmm3
1053b217:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
1053b21b:	0f 59 c2                                        	mulps  xmm0,xmm2
1053b21e:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
1053b223:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
1053b228:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
1053b22e:	0f 5c cb                                        	subps  xmm1,xmm3
1053b231:	0f 28 9c 24 c0 00 00 00                         	movaps xmm3,XMMWORD PTR [esp+0xc0]
1053b239:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1053b23f:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1053b245:	0f 59 ca                                        	mulps  xmm1,xmm2
1053b248:	f3 0f 10 54 24 54                               	movss  xmm2,DWORD PTR [esp+0x54]
1053b24e:	f3 0f 11 54 24 38                               	movss  DWORD PTR [esp+0x38],xmm2
1053b254:	0f 57 d2                                        	xorps  xmm2,xmm2
1053b257:	f3 0f 11 54 24 34                               	movss  DWORD PTR [esp+0x34],xmm2
1053b25d:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
1053b262:	0f 28 e3                                        	movaps xmm4,xmm3
1053b265:	0f c6 e3 09                                     	shufps xmm4,xmm3,0x9
1053b269:	0f 28 eb                                        	movaps xmm5,xmm3
1053b26c:	0f c6 eb 12                                     	shufps xmm5,xmm3,0x12
1053b270:	0f 28 f2                                        	movaps xmm6,xmm2
1053b273:	0f c6 f2 09                                     	shufps xmm6,xmm2,0x9
1053b277:	0f 59 f5                                        	mulps  xmm6,xmm5
1053b27a:	0f 28 c2                                        	movaps xmm0,xmm2
1053b27d:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
1053b281:	0f 59 c4                                        	mulps  xmm0,xmm4
1053b284:	0f 5c c6                                        	subps  xmm0,xmm6
1053b287:	0f 28 f3                                        	movaps xmm6,xmm3
1053b28a:	0f c6 f3 ff                                     	shufps xmm6,xmm3,0xff
1053b28e:	f3 0f 10 1d fc df aa 10                         	movss  xmm3,DWORD PTR ds:0x10aadffc
1053b296:	0f 59 f2                                        	mulps  xmm6,xmm2
1053b299:	0f 58 c6                                        	addps  xmm0,xmm6
1053b29c:	0f 28 f0                                        	movaps xmm6,xmm0
1053b29f:	0f c6 f0 09                                     	shufps xmm6,xmm0,0x9
1053b2a3:	0f 59 f5                                        	mulps  xmm6,xmm5
1053b2a6:	0f 28 e8                                        	movaps xmm5,xmm0
1053b2a9:	0f c6 e8 12                                     	shufps xmm5,xmm0,0x12
1053b2ad:	0f 28 84 24 d0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xd0]
1053b2b5:	0f 59 ec                                        	mulps  xmm5,xmm4
1053b2b8:	0f 5c ee                                        	subps  xmm5,xmm6
1053b2bb:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
1053b2bf:	0f 59 eb                                        	mulps  xmm5,xmm3
1053b2c2:	0f 59 c9                                        	mulps  xmm1,xmm1
1053b2c5:	0f 58 ea                                        	addps  xmm5,xmm2
1053b2c8:	0f 58 e8                                        	addps  xmm5,xmm0
1053b2cb:	53                                              	push   ebx
1053b2cc:	0f 28 c1                                        	movaps xmm0,xmm1
1053b2cf:	0f c6 c1 55                                     	shufps xmm0,xmm1,0x55
1053b2d3:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
1053b2da:	50                                              	push   eax
1053b2db:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
1053b2df:	0f 58 c1                                        	addps  xmm0,xmm1
1053b2e2:	0f 51 c0                                        	sqrtps xmm0,xmm0
1053b2e5:	6a 06                                           	push   0x6
1053b2e7:	51                                              	push   ecx
1053b2e8:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
1053b2ed:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
1053b2f1:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
1053b2f8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053b2fb:	51                                              	push   ecx
1053b2fc:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1053b300:	0f 29 9c 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm3
1053b308:	0f 29 ac 24 04 01 00 00                         	movaps XMMWORD PTR [esp+0x104],xmm5
1053b310:	89 9c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ebx
1053b317:	89 9c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ebx
1053b31e:	89 9c 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],ebx
1053b325:	c7 84 24 a0 00 00 00 58 4a ab 10                	mov    DWORD PTR [esp+0xa0],0x10ab4a58
1053b330:	e8 db 2b f4 ff                                  	call   0x1047df10
1053b335:	8b b4 24 84 00 00 00                            	mov    esi,DWORD PTR [esp+0x84]
1053b33c:	8b bc 24 80 00 00 00                            	mov    edi,DWORD PTR [esp+0x80]
1053b343:	b8 60 f1 ab 10                                  	mov    eax,0x10abf160
1053b348:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1053b34c:	89 9c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ebx
1053b353:	89 9c 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],ebx
1053b35a:	89 9c 24 a8 00 00 00                            	mov    DWORD PTR [esp+0xa8],ebx
1053b361:	89 84 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],eax
1053b368:	89 9c 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],ebx
1053b36f:	3b fe                                           	cmp    edi,esi
1053b371:	0f 28 94 24 c0 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0xc0]
1053b379:	0f 28 6c 24 70                                  	movaps xmm5,XMMWORD PTR [esp+0x70]
1053b37e:	0f 28 c2                                        	movaps xmm0,xmm2
1053b381:	0f 59 c2                                        	mulps  xmm0,xmm2
1053b384:	0f 28 c8                                        	movaps xmm1,xmm0
1053b387:	0f c6 c8 0e                                     	shufps xmm1,xmm0,0xe
1053b38b:	0f 58 c8                                        	addps  xmm1,xmm0
1053b38e:	0f 28 c1                                        	movaps xmm0,xmm1
1053b391:	0f c6 c1 01                                     	shufps xmm0,xmm1,0x1
1053b395:	0f 58 c1                                        	addps  xmm0,xmm1
1053b398:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1053b39c:	0f 53 d8                                        	rcpps  xmm3,xmm0
1053b39f:	0f 28 e3                                        	movaps xmm4,xmm3
1053b3a2:	0f 59 e0                                        	mulps  xmm4,xmm0
1053b3a5:	0f 28 cd                                        	movaps xmm1,xmm5
1053b3a8:	0f 5c cc                                        	subps  xmm1,xmm4
1053b3ab:	0f 59 cb                                        	mulps  xmm1,xmm3
1053b3ae:	0f 28 d9                                        	movaps xmm3,xmm1
1053b3b1:	0f 59 d8                                        	mulps  xmm3,xmm0
1053b3b4:	0f 28 c5                                        	movaps xmm0,xmm5
1053b3b7:	0f 5c c3                                        	subps  xmm0,xmm3
1053b3ba:	0f 59 c1                                        	mulps  xmm0,xmm1
1053b3bd:	0f 57 c9                                        	xorps  xmm1,xmm1
1053b3c0:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
1053b3c6:	c7 44 24 1c 00 00 00 80                         	mov    DWORD PTR [esp+0x1c],0x80000000
1053b3ce:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
1053b3d4:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
1053b3da:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
1053b3e0:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
1053b3e6:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
1053b3eb:	0f 57 ca                                        	xorps  xmm1,xmm2
1053b3ee:	0f 28 94 24 d0 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0xd0]
1053b3f6:	0f 59 c1                                        	mulps  xmm0,xmm1
1053b3f9:	0f 28 d8                                        	movaps xmm3,xmm0
1053b3fc:	0f c6 d8 12                                     	shufps xmm3,xmm0,0x12
1053b400:	0f 28 e0                                        	movaps xmm4,xmm0
1053b403:	0f c6 e0 09                                     	shufps xmm4,xmm0,0x9
1053b407:	0f c6 c0 ff                                     	shufps xmm0,xmm0,0xff
1053b40b:	0f 28 ca                                        	movaps xmm1,xmm2
1053b40e:	0f c6 ca 12                                     	shufps xmm1,xmm2,0x12
1053b412:	0f 28 f2                                        	movaps xmm6,xmm2
1053b415:	0f c6 f2 09                                     	shufps xmm6,xmm2,0x9
1053b419:	0f 59 f3                                        	mulps  xmm6,xmm3
1053b41c:	0f 59 cc                                        	mulps  xmm1,xmm4
1053b41f:	0f 5c ce                                        	subps  xmm1,xmm6
1053b422:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
1053b42a:	0f 28 f2                                        	movaps xmm6,xmm2
1053b42d:	0f 59 f0                                        	mulps  xmm6,xmm0
1053b430:	0f 58 ce                                        	addps  xmm1,xmm6
1053b433:	0f 28 f1                                        	movaps xmm6,xmm1
1053b436:	0f c6 f1 12                                     	shufps xmm6,xmm1,0x12
1053b43a:	0f 59 f4                                        	mulps  xmm6,xmm4
1053b43d:	0f 28 c1                                        	movaps xmm0,xmm1
1053b440:	0f c6 c1 09                                     	shufps xmm0,xmm1,0x9
1053b444:	0f 59 c3                                        	mulps  xmm0,xmm3
1053b447:	0f 5c f0                                        	subps  xmm6,xmm0
1053b44a:	0f 59 f5                                        	mulps  xmm6,xmm5
1053b44d:	0f 58 f2                                        	addps  xmm6,xmm2
1053b450:	0f 57 c0                                        	xorps  xmm0,xmm0
1053b453:	0f 5c c6                                        	subps  xmm0,xmm6
1053b456:	89 9c 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],ebx
1053b45d:	89 9c 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],ebx
1053b464:	89 84 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],eax
1053b46b:	0f 29 5c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm3
1053b470:	0f 29 64 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm4
1053b475:	0f 29 84 24 40 01 00 00                         	movaps XMMWORD PTR [esp+0x140],xmm0
1053b47d:	0f 84 6e 01 00 00                               	je     0x1053b5f1
1053b483:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
1053b486:	8b 07                                           	mov    eax,DWORD PTR [edi]
1053b488:	51                                              	push   ecx
1053b489:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
1053b490:	50                                              	push   eax
1053b491:	e8 1a f7 1e 00                                  	call   0x1072abb0
1053b496:	8b f0                                           	mov    esi,eax
1053b498:	3b f3                                           	cmp    esi,ebx
1053b49a:	0f 84 2f 01 00 00                               	je     0x1053b5cf
1053b4a0:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
1053b4a6:	52                                              	push   edx
1053b4a7:	8b ce                                           	mov    ecx,esi
1053b4a9:	e8 f2 b8 1e 00                                  	call   0x10726da0
1053b4ae:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1053b4b2:	a1 08 04 c7 10                                  	mov    eax,ds:0x10c70408
1053b4b7:	50                                              	push   eax
1053b4b8:	8b ce                                           	mov    ecx,esi
1053b4ba:	e8 e1 b8 1e 00                                  	call   0x10726da0
1053b4bf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053b4c3:	3b cb                                           	cmp    ecx,ebx
1053b4c5:	0f 84 04 01 00 00                               	je     0x1053b5cf
1053b4cb:	3b c3                                           	cmp    eax,ebx
1053b4cd:	0f 84 fc 00 00 00                               	je     0x1053b5cf
1053b4d3:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1053b4d6:	8b c2                                           	mov    eax,edx
1053b4d8:	2d ff ff ff 7f                                  	sub    eax,0x7fffffff
1053b4dd:	f7 d8                                           	neg    eax
1053b4df:	1b c0                                           	sbb    eax,eax
1053b4e1:	23 c2                                           	and    eax,edx
1053b4e3:	3b 84 24 90 00 00 00                            	cmp    eax,DWORD PTR [esp+0x90]
1053b4ea:	0f 85 df 00 00 00                               	jne    0x1053b5cf
1053b4f0:	8d 94 24 20 01 00 00                            	lea    edx,[esp+0x120]
1053b4f7:	52                                              	push   edx
1053b4f8:	e8 b3 ed 20 00                                  	call   0x1074a2b0
1053b4fd:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
1053b500:	0f 28 64 24 50                                  	movaps xmm4,XMMWORD PTR [esp+0x50]
1053b505:	0f 28 5c 24 30                                  	movaps xmm3,XMMWORD PTR [esp+0x30]
1053b50a:	0f 28 c2                                        	movaps xmm0,xmm2
1053b50d:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
1053b511:	0f 59 c4                                        	mulps  xmm0,xmm4
1053b514:	0f 28 ca                                        	movaps xmm1,xmm2
1053b517:	0f c6 ca 09                                     	shufps xmm1,xmm2,0x9
1053b51b:	0f 59 cb                                        	mulps  xmm1,xmm3
1053b51e:	0f 5c c1                                        	subps  xmm0,xmm1
1053b521:	0f 28 ca                                        	movaps xmm1,xmm2
1053b524:	0f 59 8c 24 e0 00 00 00                         	mulps  xmm1,XMMWORD PTR [esp+0xe0]
1053b52c:	0f 58 c1                                        	addps  xmm0,xmm1
1053b52f:	0f 28 c8                                        	movaps xmm1,xmm0
1053b532:	0f c6 c8 12                                     	shufps xmm1,xmm0,0x12
1053b536:	0f 59 cc                                        	mulps  xmm1,xmm4
1053b539:	0f 28 e0                                        	movaps xmm4,xmm0
1053b53c:	0f c6 e0 09                                     	shufps xmm4,xmm0,0x9
1053b540:	0f 59 e3                                        	mulps  xmm4,xmm3
1053b543:	0f 5c cc                                        	subps  xmm1,xmm4
1053b546:	0f 59 4c 24 70                                  	mulps  xmm1,XMMWORD PTR [esp+0x70]
1053b54b:	0f 58 ca                                        	addps  xmm1,xmm2
1053b54e:	0f 58 8c 24 40 01 00 00                         	addps  xmm1,XMMWORD PTR [esp+0x140]
1053b556:	0f 29 8c 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm1
1053b55e:	f3 0f 10 84 24 10 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x110]
1053b567:	0f 29 8c 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm1
1053b56f:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1053b575:	f3 0f 10 84 24 08 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x108]
1053b57e:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
1053b584:	0f 57 c0                                        	xorps  xmm0,xmm0
1053b587:	0f 2f 45 18                                     	comiss xmm0,DWORD PTR [ebp+0x18]
1053b58b:	72 18                                           	jb     0x1053b5a5
1053b58d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1053b591:	50                                              	push   eax
1053b592:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1053b596:	51                                              	push   ecx
1053b597:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
1053b59e:	e8 7d 34 f3 ff                                  	call   0x1046ea20
1053b5a3:	eb 1d                                           	jmp    0x1053b5c2
1053b5a5:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
1053b5a8:	51                                              	push   ecx
1053b5a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053b5ac:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1053b5b0:	52                                              	push   edx
1053b5b1:	8d 44 24 48                                     	lea    eax,[esp+0x48]
1053b5b5:	50                                              	push   eax
1053b5b6:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
1053b5bd:	e8 ce 71 f3 ff                                  	call   0x10472790
1053b5c2:	3a c3                                           	cmp    al,bl
1053b5c4:	74 09                                           	je     0x1053b5cf
1053b5c6:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1053b5ca:	83 c7 08                                        	add    edi,0x8
1053b5cd:	eb 16                                           	jmp    0x1053b5e5
1053b5cf:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1053b5d3:	8b 48 f8                                        	mov    ecx,DWORD PTR [eax-0x8]
1053b5d6:	83 e8 08                                        	sub    eax,0x8
1053b5d9:	89 0f                                           	mov    DWORD PTR [edi],ecx
1053b5db:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1053b5de:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1053b5e2:	89 57 04                                        	mov    DWORD PTR [edi+0x4],edx
1053b5e5:	3b f8                                           	cmp    edi,eax
1053b5e7:	0f 85 96 fe ff ff                               	jne    0x1053b483
1053b5ed:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1053b5f1:	e8 2a fb 01 00                                  	call   0x1055b120
1053b5f6:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
1053b5fd:	2b f1                                           	sub    esi,ecx
1053b5ff:	c1 fe 03                                        	sar    esi,0x3
1053b602:	89 9c 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],ebx
1053b609:	89 9c 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],ebx
1053b610:	75 07                                           	jne    0x1053b619
1053b612:	8d 8c 24 98 00 00 00                            	lea    ecx,[esp+0x98]
1053b619:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053b61b:	8b 92 c0 00 00 00                               	mov    edx,DWORD PTR [edx+0xc0]
1053b621:	56                                              	push   esi
1053b622:	51                                              	push   ecx
1053b623:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1053b626:	51                                              	push   ecx
1053b627:	8b c8                                           	mov    ecx,eax
1053b629:	ff d2                                           	call   edx
1053b62b:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
1053b632:	8b f0                                           	mov    esi,eax
1053b634:	e8 67 0d 05 00                                  	call   0x1058c3a0
1053b639:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
1053b640:	3b c3                                           	cmp    eax,ebx
1053b642:	74 09                                           	je     0x1053b64d
1053b644:	50                                              	push   eax
1053b645:	e8 46 d8 3d 00                                  	call   0x10918e90
1053b64a:	83 c4 04                                        	add    esp,0x4
1053b64d:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1053b651:	e8 8a 90 b6 ff                                  	call   0x100a46e0
1053b656:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1053b65a:	e8 01 f2 ff ff                                  	call   0x1053a860
1053b65f:	5f                                              	pop    edi
1053b660:	8b c6                                           	mov    eax,esi
1053b662:	5e                                              	pop    esi
1053b663:	5b                                              	pop    ebx
1053b664:	8b e5                                           	mov    esp,ebp
1053b666:	5d                                              	pop    ebp
1053b667:	c3                                              	ret
1053b668:	cc                                              	int3
1053b669:	cc                                              	int3
1053b66a:	cc                                              	int3
1053b66b:	cc                                              	int3
1053b66c:	cc                                              	int3
1053b66d:	cc                                              	int3
1053b66e:	cc                                              	int3
1053b66f:	cc                                              	int3
