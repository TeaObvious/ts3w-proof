# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109813a0 (AnimationComponent_LoopBindPose)
Paired Ghidra pseudocode: 109813A0_AnimationComponent_LoopBindPose.c
Window: [0x109813a0, 0x109814c0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x109814c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109813a0: 81 ec f0 01 00 00 53 e8 34 4c a6 ff 33 db 3b c3
109813b0: 0f 84 02 01 00 00 8b 94 24 fc 01 00 00 8d 4c 24
109813c0: 08 51 52 8b c8 89 5c 24 10 89 5c 24 14 89 5c 24
109813d0: 18 89 5c 24 1c e8 76 5f a6 ff 84 c0 0f 84 d6 00
109813e0: 00 00 e8 e9 3c f6 ff 8b 10 8b 52 0c 53 53 53 53
109813f0: 8d 4c 24 14 51 8d 4c 24 1c 51 8b c8 ff d2 84 c0
10981400: 0f 84 b2 00 00 00 55 56 57 8b 7c 24 10 8d 4c 24
10981410: 24 e8 2a 17 db ff 57 8d 8c 24 d8 01 00 00 e8 ad
10981420: 72 6a ff 0f 57 c0 8b ac 24 04 02 00 00 8d 44 24
10981430: 24 50 8b cd f3 0f 11 84 24 f4 01 00 00 f3 0f 11
10981440: 84 24 f8 01 00 00 c6 84 24 02 02 00 00 01 e8 fd
10981450: e5 da ff 8b f0 3b f3 74 28 d9 05 84 e1 aa 10 83
10981460: 46 04 01 8b 55 08 8b 42 14 53 53 53 53 83 ec 08
10981470: d9 5c 24 04 8d 4d 08 d9 ee d9 1c 24 53 56 53 ff
10981480: d0 8b 17 8b 42 04 8b cf ff d0 3b f3 74 1e 8b 46
10981490: 04 83 c0 ff 3b c3 89 46 04 75 11 c7 46 04 01 00
109814a0: 00 00 8b 16 8b 02 6a 01 8b ce ff d0 8d 4c 24 24
109814b0: e8 bb 64 c6 ff 5f 5e 5d 5b 81 c4 f0 01 00 00 c3

LINEAR DISASSEMBLY
109813a0 <.text+0x9803a0>:
109813a0:	81 ec f0 01 00 00                               	sub    esp,0x1f0
109813a6:	53                                              	push   ebx
109813a7:	e8 34 4c a6 ff                                  	call   0x103e5fe0
109813ac:	33 db                                           	xor    ebx,ebx
109813ae:	3b c3                                           	cmp    eax,ebx
109813b0:	0f 84 02 01 00 00                               	je     0x109814b8
109813b6:	8b 94 24 fc 01 00 00                            	mov    edx,DWORD PTR [esp+0x1fc]
109813bd:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109813c1:	51                                              	push   ecx
109813c2:	52                                              	push   edx
109813c3:	8b c8                                           	mov    ecx,eax
109813c5:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
109813c9:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
109813cd:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
109813d1:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
109813d5:	e8 76 5f a6 ff                                  	call   0x103e7350
109813da:	84 c0                                           	test   al,al
109813dc:	0f 84 d6 00 00 00                               	je     0x109814b8
109813e2:	e8 e9 3c f6 ff                                  	call   0x108e50d0
109813e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
109813e9:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
109813ec:	53                                              	push   ebx
109813ed:	53                                              	push   ebx
109813ee:	53                                              	push   ebx
109813ef:	53                                              	push   ebx
109813f0:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109813f4:	51                                              	push   ecx
109813f5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
109813f9:	51                                              	push   ecx
109813fa:	8b c8                                           	mov    ecx,eax
109813fc:	ff d2                                           	call   edx
109813fe:	84 c0                                           	test   al,al
10981400:	0f 84 b2 00 00 00                               	je     0x109814b8
10981406:	55                                              	push   ebp
10981407:	56                                              	push   esi
10981408:	57                                              	push   edi
10981409:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098140d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10981411:	e8 2a 17 db ff                                  	call   0x10732b40
10981416:	57                                              	push   edi
10981417:	8d 8c 24 d8 01 00 00                            	lea    ecx,[esp+0x1d8]
1098141e:	e8 ad 72 6a ff                                  	call   0x100286d0
10981423:	0f 57 c0                                        	xorps  xmm0,xmm0
10981426:	8b ac 24 04 02 00 00                            	mov    ebp,DWORD PTR [esp+0x204]
1098142d:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10981431:	50                                              	push   eax
10981432:	8b cd                                           	mov    ecx,ebp
10981434:	f3 0f 11 84 24 f4 01 00 00                      	movss  DWORD PTR [esp+0x1f4],xmm0
1098143d:	f3 0f 11 84 24 f8 01 00 00                      	movss  DWORD PTR [esp+0x1f8],xmm0
10981446:	c6 84 24 02 02 00 00 01                         	mov    BYTE PTR [esp+0x202],0x1
1098144e:	e8 fd e5 da ff                                  	call   0x1072fa50
10981453:	8b f0                                           	mov    esi,eax
10981455:	3b f3                                           	cmp    esi,ebx
10981457:	74 28                                           	je     0x10981481
10981459:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1098145f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
10981463:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10981466:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10981469:	53                                              	push   ebx
1098146a:	53                                              	push   ebx
1098146b:	53                                              	push   ebx
1098146c:	53                                              	push   ebx
1098146d:	83 ec 08                                        	sub    esp,0x8
10981470:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10981474:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
10981477:	d9 ee                                           	fldz
10981479:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098147c:	53                                              	push   ebx
1098147d:	56                                              	push   esi
1098147e:	53                                              	push   ebx
1098147f:	ff d0                                           	call   eax
10981481:	8b 17                                           	mov    edx,DWORD PTR [edi]
10981483:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10981486:	8b cf                                           	mov    ecx,edi
10981488:	ff d0                                           	call   eax
1098148a:	3b f3                                           	cmp    esi,ebx
1098148c:	74 1e                                           	je     0x109814ac
1098148e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
10981491:	83 c0 ff                                        	add    eax,0xffffffff
10981494:	3b c3                                           	cmp    eax,ebx
10981496:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10981499:	75 11                                           	jne    0x109814ac
1098149b:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
109814a2:	8b 16                                           	mov    edx,DWORD PTR [esi]
109814a4:	8b 02                                           	mov    eax,DWORD PTR [edx]
109814a6:	6a 01                                           	push   0x1
109814a8:	8b ce                                           	mov    ecx,esi
109814aa:	ff d0                                           	call   eax
109814ac:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
109814b0:	e8 bb 64 c6 ff                                  	call   0x105e7970
109814b5:	5f                                              	pop    edi
109814b6:	5e                                              	pop    esi
109814b7:	5d                                              	pop    ebp
109814b8:	5b                                              	pop    ebx
109814b9:	81 c4 f0 01 00 00                               	add    esp,0x1f0
109814bf:	c3                                              	ret
