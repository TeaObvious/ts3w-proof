# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d200 (AnimationWrap_Clip_GetReferencedNamespaceHashcodes)
Paired Ghidra pseudocode: 1097D200_AnimationWrap_Clip_GetReferencedNamespaceHashcodes.c
Window: [0x1097d200, 0x1097d350) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d200: 83 ec 34 8b 44 24 38 8b 48 08 8b 50 0c 56 57 89
1097d210: 4c 24 0c 8b 48 04 89 54 24 10 8b 10 33 ff 89 4c
1097d220: 24 18 89 54 24 14 33 f6 89 7c 24 40 e8 9f 7e f6
1097d230: ff 8b 10 8b 52 0c 57 57 57 57 8d 4c 24 50 51 8d
1097d240: 4c 24 20 51 8b c8 ff d2 84 c0 0f 84 ee 00 00 00
1097d250: f3 0f 10 05 d4 b0 ac 10 8b 74 24 40 6a 01 f3 0f
1097d260: 11 44 24 30 f3 0f 10 05 fc df aa 10 68 f8 71 c5
1097d270: 10 8d 4c 24 24 f3 0f 11 44 24 38 c7 44 24 40 b4
1097d280: 5e b9 10 c7 44 24 2c 01 00 00 00 c7 44 24 28 f8
1097d290: 71 c5 10 89 7c 24 30 89 7c 24 3c e8 70 e6 c6 ff
1097d2a0: 8d 44 24 1c 50 8b ce 89 7c 24 2c e8 60 a3 9f ff
1097d2b0: 8b 16 8b 42 04 8b ce ff d0 8b 54 24 20 8b 02 3b
1097d2c0: c7 8b 74 24 28 89 74 24 08 8b ca 75 11 39 7a 04
1097d2d0: 8d 4a 04 75 07 83 c1 04 39 39 74 f9 8b 01 53 8b
1097d2e0: 5c 24 28 8b 1c 9a 3b c3 74 2c 8b 74 24 4c 55 90
1097d2f0: 8b 28 89 2e 8b 40 04 3b c7 75 0f eb 03 8d 49 00
1097d300: 8b 41 04 83 c1 04 3b c7 74 f6 83 c6 04 3b c3 75
1097d310: df 8b 74 24 10 5d 8b 4c 24 28 51 52 8d 4c 24 28
1097d320: e8 eb e5 c6 ff 83 7c 24 28 01 89 7c 24 2c 5b 76
1097d330: 0d 8b 54 24 20 52 e8 55 bb f9 ff 83 c4 04 5f 8b
1097d340: c6 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d200 <.text+0x97c200>:
1097d200:	83 ec 34                                        	sub    esp,0x34
1097d203:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1097d207:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1097d20a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097d20d:	56                                              	push   esi
1097d20e:	57                                              	push   edi
1097d20f:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1097d213:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1097d216:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1097d21a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d21c:	33 ff                                           	xor    edi,edi
1097d21e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1097d222:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1097d226:	33 f6                                           	xor    esi,esi
1097d228:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
1097d22c:	e8 9f 7e f6 ff                                  	call   0x108e50d0
1097d231:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d233:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1097d236:	57                                              	push   edi
1097d237:	57                                              	push   edi
1097d238:	57                                              	push   edi
1097d239:	57                                              	push   edi
1097d23a:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1097d23e:	51                                              	push   ecx
1097d23f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1097d243:	51                                              	push   ecx
1097d244:	8b c8                                           	mov    ecx,eax
1097d246:	ff d2                                           	call   edx
1097d248:	84 c0                                           	test   al,al
1097d24a:	0f 84 ee 00 00 00                               	je     0x1097d33e
1097d250:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1097d258:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
1097d25c:	6a 01                                           	push   0x1
1097d25e:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1097d264:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1097d26c:	68 f8 71 c5 10                                  	push   0x10c571f8
1097d271:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1097d275:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1097d27b:	c7 44 24 40 b4 5e b9 10                         	mov    DWORD PTR [esp+0x40],0x10b95eb4
1097d283:	c7 44 24 2c 01 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x1
1097d28b:	c7 44 24 28 f8 71 c5 10                         	mov    DWORD PTR [esp+0x28],0x10c571f8
1097d293:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1097d297:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
1097d29b:	e8 70 e6 c6 ff                                  	call   0x105eb910
1097d2a0:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1097d2a4:	50                                              	push   eax
1097d2a5:	8b ce                                           	mov    ecx,esi
1097d2a7:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1097d2ab:	e8 60 a3 9f ff                                  	call   0x10377610
1097d2b0:	8b 16                                           	mov    edx,DWORD PTR [esi]
1097d2b2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1097d2b5:	8b ce                                           	mov    ecx,esi
1097d2b7:	ff d0                                           	call   eax
1097d2b9:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1097d2bd:	8b 02                                           	mov    eax,DWORD PTR [edx]
1097d2bf:	3b c7                                           	cmp    eax,edi
1097d2c1:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
1097d2c5:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
1097d2c9:	8b ca                                           	mov    ecx,edx
1097d2cb:	75 11                                           	jne    0x1097d2de
1097d2cd:	39 7a 04                                        	cmp    DWORD PTR [edx+0x4],edi
1097d2d0:	8d 4a 04                                        	lea    ecx,[edx+0x4]
1097d2d3:	75 07                                           	jne    0x1097d2dc
1097d2d5:	83 c1 04                                        	add    ecx,0x4
1097d2d8:	39 39                                           	cmp    DWORD PTR [ecx],edi
1097d2da:	74 f9                                           	je     0x1097d2d5
1097d2dc:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097d2de:	53                                              	push   ebx
1097d2df:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
1097d2e3:	8b 1c 9a                                        	mov    ebx,DWORD PTR [edx+ebx*4]
1097d2e6:	3b c3                                           	cmp    eax,ebx
1097d2e8:	74 2c                                           	je     0x1097d316
1097d2ea:	8b 74 24 4c                                     	mov    esi,DWORD PTR [esp+0x4c]
1097d2ee:	55                                              	push   ebp
1097d2ef:	90                                              	nop
1097d2f0:	8b 28                                           	mov    ebp,DWORD PTR [eax]
1097d2f2:	89 2e                                           	mov    DWORD PTR [esi],ebp
1097d2f4:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1097d2f7:	3b c7                                           	cmp    eax,edi
1097d2f9:	75 0f                                           	jne    0x1097d30a
1097d2fb:	eb 03                                           	jmp    0x1097d300
1097d2fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1097d300:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1097d303:	83 c1 04                                        	add    ecx,0x4
1097d306:	3b c7                                           	cmp    eax,edi
1097d308:	74 f6                                           	je     0x1097d300
1097d30a:	83 c6 04                                        	add    esi,0x4
1097d30d:	3b c3                                           	cmp    eax,ebx
1097d30f:	75 df                                           	jne    0x1097d2f0
1097d311:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1097d315:	5d                                              	pop    ebp
1097d316:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1097d31a:	51                                              	push   ecx
1097d31b:	52                                              	push   edx
1097d31c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1097d320:	e8 eb e5 c6 ff                                  	call   0x105eb910
1097d325:	83 7c 24 28 01                                  	cmp    DWORD PTR [esp+0x28],0x1
1097d32a:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1097d32e:	5b                                              	pop    ebx
1097d32f:	76 0d                                           	jbe    0x1097d33e
1097d331:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1097d335:	52                                              	push   edx
1097d336:	e8 55 bb f9 ff                                  	call   0x10918e90
1097d33b:	83 c4 04                                        	add    esp,0x4
1097d33e:	5f                                              	pop    edi
1097d33f:	8b c6                                           	mov    eax,esi
1097d341:	5e                                              	pop    esi
1097d342:	83 c4 34                                        	add    esp,0x34
1097d345:	c3                                              	ret
1097d346:	cc                                              	int3
1097d347:	cc                                              	int3
1097d348:	cc                                              	int3
1097d349:	cc                                              	int3
1097d34a:	cc                                              	int3
1097d34b:	cc                                              	int3
1097d34c:	cc                                              	int3
1097d34d:	cc                                              	int3
1097d34e:	cc                                              	int3
1097d34f:	cc                                              	int3
