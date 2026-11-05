# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a240 (WorldWrap_GetCameraParams)
Paired Ghidra pseudocode: 1099A240_WorldWrap_GetCameraParams.c
Window: [0x1099a240, 0x1099a3d0) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a240: 55 8b ec 83 e4 f0 83 ec 28 56 57 e8 e0 23 dc ff
1099a250: 8b c8 e8 29 d8 f9 ff 85 c0 0f 84 5f 01 00 00 8b
1099a260: c8 e8 ea 26 dc ff 8b f8 85 ff 0f 84 4e 01 00 00
1099a270: 8b 07 8b 50 0c 68 db 4e 39 4d 8b cf ff d2 8b f0
1099a280: 8b 07 8b 50 0c 68 9b 61 bc 14 8b cf ff d2 85 f6
1099a290: 8b f8 74 61 8b 06 8b 50 34 8d 4c 24 20 51 8b ce
1099a2a0: ff d2 0f 28 00 8b 45 08 0f 29 44 24 10 f3 0f 10
1099a2b0: 4c 24 10 0f 29 44 24 20 f3 0f 11 4c 24 10 f3 0f
1099a2c0: 10 4c 24 24 8b 4c 24 10 89 08 0f 29 44 24 20 f3
1099a2d0: 0f 10 44 24 28 f3 0f 11 4c 24 14 8b 54 24 14 f3
1099a2e0: 0f 11 44 24 18 8b 4c 24 18 89 50 04 89 48 08 8b
1099a2f0: 16 8b ce eb 67 85 ff 0f 84 c1 00 00 00 8b 17 8b
1099a300: 52 34 8d 44 24 20 50 8b cf ff d2 0f 28 00 8b 45
1099a310: 08 0f 29 44 24 20 f3 0f 10 4c 24 20 0f 29 44 24
1099a320: 20 f3 0f 11 4c 24 10 f3 0f 10 4c 24 24 8b 4c 24
1099a330: 10 89 08 0f 29 44 24 20 f3 0f 10 44 24 28 f3 0f
1099a340: 11 4c 24 14 8b 54 24 14 f3 0f 11 44 24 18 8b 4c
1099a350: 24 18 89 50 04 89 48 08 8b 17 8b cf 8b 52 30 8d
1099a360: 44 24 20 50 ff d2 0f 28 00 8b 45 0c 0f 29 44 24
1099a370: 20 f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f 11 4c
1099a380: 24 10 f3 0f 10 4c 24 24 8b 4c 24 10 89 08 0f 29
1099a390: 44 24 20 f3 0f 10 44 24 28 f3 0f 11 4c 24 14 8b
1099a3a0: 54 24 14 f3 0f 11 44 24 18 8b 4c 24 18 89 50 04
1099a3b0: 89 48 08 b8 01 00 00 00 5f 5e 8b e5 5d c3 5f 33
1099a3c0: c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a240 <.text+0x999240>:
1099a240:	55                                              	push   ebp
1099a241:	8b ec                                           	mov    ebp,esp
1099a243:	83 e4 f0                                        	and    esp,0xfffffff0
1099a246:	83 ec 28                                        	sub    esp,0x28
1099a249:	56                                              	push   esi
1099a24a:	57                                              	push   edi
1099a24b:	e8 e0 23 dc ff                                  	call   0x1075c630
1099a250:	8b c8                                           	mov    ecx,eax
1099a252:	e8 29 d8 f9 ff                                  	call   0x10937a80
1099a257:	85 c0                                           	test   eax,eax
1099a259:	0f 84 5f 01 00 00                               	je     0x1099a3be
1099a25f:	8b c8                                           	mov    ecx,eax
1099a261:	e8 ea 26 dc ff                                  	call   0x1075c950
1099a266:	8b f8                                           	mov    edi,eax
1099a268:	85 ff                                           	test   edi,edi
1099a26a:	0f 84 4e 01 00 00                               	je     0x1099a3be
1099a270:	8b 07                                           	mov    eax,DWORD PTR [edi]
1099a272:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1099a275:	68 db 4e 39 4d                                  	push   0x4d394edb
1099a27a:	8b cf                                           	mov    ecx,edi
1099a27c:	ff d2                                           	call   edx
1099a27e:	8b f0                                           	mov    esi,eax
1099a280:	8b 07                                           	mov    eax,DWORD PTR [edi]
1099a282:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1099a285:	68 9b 61 bc 14                                  	push   0x14bc619b
1099a28a:	8b cf                                           	mov    ecx,edi
1099a28c:	ff d2                                           	call   edx
1099a28e:	85 f6                                           	test   esi,esi
1099a290:	8b f8                                           	mov    edi,eax
1099a292:	74 61                                           	je     0x1099a2f5
1099a294:	8b 06                                           	mov    eax,DWORD PTR [esi]
1099a296:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
1099a299:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1099a29d:	51                                              	push   ecx
1099a29e:	8b ce                                           	mov    ecx,esi
1099a2a0:	ff d2                                           	call   edx
1099a2a2:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1099a2a5:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1099a2a8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a2ad:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
1099a2b3:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a2b8:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1099a2be:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
1099a2c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1099a2c8:	89 08                                           	mov    DWORD PTR [eax],ecx
1099a2ca:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a2cf:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
1099a2d5:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1099a2db:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1099a2df:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1099a2e5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1099a2e9:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099a2ec:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1099a2ef:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099a2f1:	8b ce                                           	mov    ecx,esi
1099a2f3:	eb 67                                           	jmp    0x1099a35c
1099a2f5:	85 ff                                           	test   edi,edi
1099a2f7:	0f 84 c1 00 00 00                               	je     0x1099a3be
1099a2fd:	8b 17                                           	mov    edx,DWORD PTR [edi]
1099a2ff:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1099a302:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1099a306:	50                                              	push   eax
1099a307:	8b cf                                           	mov    ecx,edi
1099a309:	ff d2                                           	call   edx
1099a30b:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1099a30e:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1099a311:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a316:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
1099a31c:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a321:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1099a327:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
1099a32d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1099a331:	89 08                                           	mov    DWORD PTR [eax],ecx
1099a333:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a338:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
1099a33e:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1099a344:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1099a348:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1099a34e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1099a352:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099a355:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1099a358:	8b 17                                           	mov    edx,DWORD PTR [edi]
1099a35a:	8b cf                                           	mov    ecx,edi
1099a35c:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1099a35f:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1099a363:	50                                              	push   eax
1099a364:	ff d2                                           	call   edx
1099a366:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1099a369:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1099a36c:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a371:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
1099a377:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a37c:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1099a382:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
1099a388:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1099a38c:	89 08                                           	mov    DWORD PTR [eax],ecx
1099a38e:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1099a393:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
1099a399:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1099a39f:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1099a3a3:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1099a3a9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1099a3ad:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099a3b0:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1099a3b3:	b8 01 00 00 00                                  	mov    eax,0x1
1099a3b8:	5f                                              	pop    edi
1099a3b9:	5e                                              	pop    esi
1099a3ba:	8b e5                                           	mov    esp,ebp
1099a3bc:	5d                                              	pop    ebp
1099a3bd:	c3                                              	ret
1099a3be:	5f                                              	pop    edi
1099a3bf:	33 c0                                           	xor    eax,eax
1099a3c1:	5e                                              	pop    esi
1099a3c2:	8b e5                                           	mov    esp,ebp
1099a3c4:	5d                                              	pop    ebp
1099a3c5:	c3                                              	ret
1099a3c6:	cc                                              	int3
1099a3c7:	cc                                              	int3
1099a3c8:	cc                                              	int3
1099a3c9:	cc                                              	int3
1099a3ca:	cc                                              	int3
1099a3cb:	cc                                              	int3
1099a3cc:	cc                                              	int3
1099a3cd:	cc                                              	int3
1099a3ce:	cc                                              	int3
1099a3cf:	cc                                              	int3
