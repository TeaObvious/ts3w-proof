# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; INCOMPLETE stored Ghidra body envelope, not a complete-function export.
Annotated entry: 0x00b16530 (StairHeight_TryFirstMatch_IncompleteBody)
Paired actual Ghidra pseudocode: 00B16530_TryGetFirstMatchingStairHeight.c
Envelope [0x00b16530,0x00b16606); 214 bytes; exact owned ranges: [0x00b16530,0x00b1654d),[0x00b16550,0x00b16606)
Owned: 211 original bytes / 80 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.
Missing true branch [0x00b16606,0x00b1663d) remains outside the stored body; its separate original-byte excerpt is in ../wall-preparation-data.tsv.
Alignment [0x00b1654d,0x00b16550) is not owned. No body, flow or instruction repair was performed.

LINEAR DISASSEMBLY
00b16530 <original>:
  b16530:	83 ec 0c                                        	sub    esp,0xc
  b16533:	53                                              	push   ebx
  b16534:	55                                              	push   ebp
  b16535:	56                                              	push   esi
  b16536:	57                                              	push   edi
  b16537:	8b 79 20                                        	mov    edi,DWORD PTR [ecx+0x20]
  b1653a:	8b 37                                           	mov    esi,DWORD PTR [edi]
  b1653c:	85 f6                                           	test   esi,esi
  b1653e:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  b16542:	75 16                                           	jne    0xb1655a
  b16544:	83 c7 04                                        	add    edi,0x4
  b16547:	39 37                                           	cmp    DWORD PTR [edi],esi
  b16549:	75 0d                                           	jne    0xb16558
  b1654b:	eb 03                                           	jmp    0xb16550
  b1654d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  b16550:	83 c7 04                                        	add    edi,0x4
  b16553:	83 3f 00                                        	cmp    DWORD PTR [edi],0x0
  b16556:	74 f8                                           	je     0xb16550
  b16558:	8b 37                                           	mov    esi,DWORD PTR [edi]
  b1655a:	8b 41 24                                        	mov    eax,DWORD PTR [ecx+0x24]
  b1655d:	8b 49 20                                        	mov    ecx,DWORD PTR [ecx+0x20]
  b16560:	8b 04 81                                        	mov    eax,DWORD PTR [ecx+eax*4]
  b16563:	3b f0                                           	cmp    esi,eax
  b16565:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  b16569:	74 35                                           	je     0xb165a0
  b1656b:	8b 6c 24 20                                     	mov    ebp,DWORD PTR [esp+0x20]
  b1656f:	90                                              	nop
  b16570:	8d 5e 08                                        	lea    ebx,[esi+0x8]
  b16573:	55                                              	push   ebp
  b16574:	8b cb                                           	mov    ecx,ebx
  b16576:	e8 e5 f4 ff ff                                  	call   0xb15a60
  b1657b:	84 c0                                           	test   al,al
  b1657d:	75 2d                                           	jne    0xb165ac
  b1657f:	8b b6 80 00 00 00                               	mov    esi,DWORD PTR [esi+0x80]
  b16585:	85 f6                                           	test   esi,esi
  b16587:	75 11                                           	jne    0xb1659a
  b16589:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  b16590:	8b 77 04                                        	mov    esi,DWORD PTR [edi+0x4]
  b16593:	83 c7 04                                        	add    edi,0x4
  b16596:	85 f6                                           	test   esi,esi
  b16598:	74 f6                                           	je     0xb16590
  b1659a:	3b 74 24 14                                     	cmp    esi,DWORD PTR [esp+0x14]
  b1659e:	75 d0                                           	jne    0xb16570
  b165a0:	5f                                              	pop    edi
  b165a1:	5e                                              	pop    esi
  b165a2:	5d                                              	pop    ebp
  b165a3:	32 c0                                           	xor    al,al
  b165a5:	5b                                              	pop    ebx
  b165a6:	83 c4 0c                                        	add    esp,0xc
  b165a9:	c2 08 00                                        	ret    0x8
  b165ac:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  b165b0:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  b165b3:	8d 4b 44                                        	lea    ecx,[ebx+0x44]
  b165b6:	51                                              	push   ecx
  b165b7:	8b 88 90 02 00 00                               	mov    ecx,DWORD PTR [eax+0x290]
  b165bd:	e8 ce 60 f7 ff                                  	call   0xa8c690
  b165c2:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  b165c6:	d9 45 04                                        	fld    DWORD PTR [ebp+0x4]
  b165c9:	83 ec 08                                        	sub    esp,0x8
  b165cc:	d9 45 00                                        	fld    DWORD PTR [ebp+0x0]
  b165cf:	8b cb                                           	mov    ecx,ebx
  b165d1:	d9 c9                                           	fxch   st(1)
  b165d3:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  b165d7:	d9 c9                                           	fxch   st(1)
  b165d9:	d9 14 24                                        	fst    DWORD PTR [esp]
  b165dc:	e8 9f e6 ff ff                                  	call   0xb14c80
  b165e1:	84 c0                                           	test   al,al
  b165e3:	75 21                                           	jne    0xb16606
  b165e5:	0f 57 c0                                        	xorps  xmm0,xmm0
  b165e8:	dd d9                                           	fstp   st(1)
  b165ea:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  b165ee:	dd d8                                           	fstp   st(0)
  b165f0:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  b165f6:	5f                                              	pop    edi
  b165f7:	5e                                              	pop    esi
  b165f8:	5d                                              	pop    ebp
  b165f9:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  b165fd:	b0 01                                           	mov    al,0x1
  b165ff:	5b                                              	pop    ebx
  b16600:	83 c4 0c                                        	add    esp,0xc
  b16603:	c2 08 00                                        	ret    0x8
