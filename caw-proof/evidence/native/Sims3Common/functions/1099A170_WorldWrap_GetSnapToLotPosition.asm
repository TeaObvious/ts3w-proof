# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a170 (WorldWrap_GetSnapToLotPosition)
Paired Ghidra pseudocode: 1099A170_WorldWrap_GetSnapToLotPosition.c
Window: [0x1099a170, 0x1099a240) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a170: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 2c 85 c0 56 0f
1099a180: 84 a7 00 00 00 8b 75 10 f3 0f 10 4e 08 f3 0f 10
1099a190: 06 8d 4d 18 51 8d 55 14 52 8b 55 08 8d 4c 24 18
1099a1a0: f3 0f 11 4c 24 20 f3 0f 10 4e 04 51 f3 0f 11 44
1099a1b0: 24 28 f3 0f 11 4c 24 20 f3 0f 11 44 24 1c 0f 28
1099a1c0: 44 24 1c 50 52 0f 29 44 24 24 e8 81 58 8c ff 83
1099a1d0: c4 14 84 c0 74 56 0f 28 44 24 10 0f 29 44 24 10
1099a1e0: f3 0f 10 4c 24 10 0f 29 44 24 20 f3 0f 11 4c 24
1099a1f0: 10 f3 0f 10 4c 24 24 8b 44 24 10 0f 29 44 24 20
1099a200: f3 0f 10 44 24 28 f3 0f 11 4c 24 14 8b 4c 24 14
1099a210: 89 06 f3 0f 11 44 24 18 8b 54 24 18 89 4e 04 89
1099a220: 56 08 b8 01 00 00 00 5e 8b e5 5d c3 33 c0 5e 8b
1099a230: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a170 <.text+0x999170>:
1099a170:	55                                              	push   ebp
1099a171:	8b ec                                           	mov    ebp,esp
1099a173:	83 e4 f0                                        	and    esp,0xfffffff0
1099a176:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1099a179:	83 ec 2c                                        	sub    esp,0x2c
1099a17c:	85 c0                                           	test   eax,eax
1099a17e:	56                                              	push   esi
1099a17f:	0f 84 a7 00 00 00                               	je     0x1099a22c
1099a185:	8b 75 10                                        	mov    esi,DWORD PTR [ebp+0x10]
1099a188:	f3 0f 10 4e 08                                  	movss  xmm1,DWORD PTR [esi+0x8]
1099a18d:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
1099a191:	8d 4d 18                                        	lea    ecx,[ebp+0x18]
1099a194:	51                                              	push   ecx
1099a195:	8d 55 14                                        	lea    edx,[ebp+0x14]
1099a198:	52                                              	push   edx
1099a199:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1099a19c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1099a1a0:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
1099a1a6:	f3 0f 10 4e 04                                  	movss  xmm1,DWORD PTR [esi+0x4]
1099a1ab:	51                                              	push   ecx
1099a1ac:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1099a1b2:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
1099a1b8:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1099a1be:	0f 28 44 24 1c                                  	movaps xmm0,XMMWORD PTR [esp+0x1c]
1099a1c3:	50                                              	push   eax
1099a1c4:	52                                              	push   edx
1099a1c5:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
1099a1ca:	e8 81 58 8c ff                                  	call   0x1025fa50
1099a1cf:	83 c4 14                                        	add    esp,0x14
1099a1d2:	84 c0                                           	test   al,al
1099a1d4:	74 56                                           	je     0x1099a22c
1099a1d6:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099a1db:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a1e0:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
1099a1e6:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a1eb:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1099a1f1:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
1099a1f7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1099a1fb:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a200:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
1099a206:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1099a20c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1099a210:	89 06                                           	mov    DWORD PTR [esi],eax
1099a212:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1099a218:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1099a21c:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
1099a21f:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
1099a222:	b8 01 00 00 00                                  	mov    eax,0x1
1099a227:	5e                                              	pop    esi
1099a228:	8b e5                                           	mov    esp,ebp
1099a22a:	5d                                              	pop    ebp
1099a22b:	c3                                              	ret
1099a22c:	33 c0                                           	xor    eax,eax
1099a22e:	5e                                              	pop    esi
1099a22f:	8b e5                                           	mov    esp,ebp
1099a231:	5d                                              	pop    ebp
1099a232:	c3                                              	ret
1099a233:	cc                                              	int3
1099a234:	cc                                              	int3
1099a235:	cc                                              	int3
1099a236:	cc                                              	int3
1099a237:	cc                                              	int3
1099a238:	cc                                              	int3
1099a239:	cc                                              	int3
1099a23a:	cc                                              	int3
1099a23b:	cc                                              	int3
1099a23c:	cc                                              	int3
1099a23d:	cc                                              	int3
1099a23e:	cc                                              	int3
1099a23f:	cc                                              	int3
