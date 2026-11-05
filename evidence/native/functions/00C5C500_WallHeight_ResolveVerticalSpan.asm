# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c5c500 (WallHeight_ResolveVerticalSpan)
Paired actual Ghidra pseudocode: 00C5C500_WallHeight_ResolveVerticalSpan.c
Envelope [0x00c5c500,0x00c5c6e1); 481 bytes; exact owned ranges: [0x00c5c500,0x00c5c6e1)
Owned: 481 original bytes / 169 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c5c500 <original>:
  c5c500:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  c5c504:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c5c508:	83 ec 0c                                        	sub    esp,0xc
  c5c50b:	83 f9 07                                        	cmp    ecx,0x7
  c5c50e:	53                                              	push   ebx
  c5c50f:	8b 98 30 02 00 00                               	mov    ebx,DWORD PTR [eax+0x230]
  c5c515:	55                                              	push   ebp
  c5c516:	56                                              	push   esi
  c5c517:	57                                              	push   edi
  c5c518:	0f 87 b9 01 00 00                               	ja     0xc5c6d7
  c5c51e:	ff 24 8d e4 c6 c5 00                            	jmp    DWORD PTR [ecx*4+0xc5c6e4]
  c5c525:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c5c529:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  c5c52d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c5c533:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  c5c538:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  c5c53b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  c5c53f:	83 c0 01                                        	add    eax,0x1
  c5c542:	51                                              	push   ecx
  c5c543:	8b cb                                           	mov    ecx,ebx
  c5c545:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  c5c54b:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  c5c54f:	e8 3c 46 e4 ff                                  	call   0xaa0b90
  c5c554:	5f                                              	pop    edi
  c5c555:	5e                                              	pop    esi
  c5c556:	5d                                              	pop    ebp
  c5c557:	5b                                              	pop    ebx
  c5c558:	83 c4 0c                                        	add    esp,0xc
  c5c55b:	c3                                              	ret
  c5c55c:	8b b0 40 02 00 00                               	mov    esi,DWORD PTR [eax+0x240]
  c5c562:	85 f6                                           	test   esi,esi
  c5c564:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  c5c567:	8b aa b4 02 00 00                               	mov    ebp,DWORD PTR [edx+0x2b4]
  c5c56d:	0f 57 c0                                        	xorps  xmm0,xmm0
  c5c570:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  c5c574:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  c5c57a:	74 54                                           	je     0xc5c5d0
  c5c57c:	57                                              	push   edi
  c5c57d:	8b ce                                           	mov    ecx,esi
  c5c57f:	e8 fc ad f8 ff                                  	call   0xbe7380
  c5c584:	84 c0                                           	test   al,al
  c5c586:	74 48                                           	je     0xc5c5d0
  c5c588:	6a 01                                           	push   0x1
  c5c58a:	57                                              	push   edi
  c5c58b:	8b ce                                           	mov    ecx,esi
  c5c58d:	e8 5e e2 f8 ff                                  	call   0xbea7f0
  c5c592:	d8 25 34 94 07 01                               	fsub   DWORD PTR ds:0x1079434
  c5c598:	57                                              	push   edi
  c5c599:	8b cb                                           	mov    ecx,ebx
  c5c59b:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  c5c59f:	e8 ec 45 e4 ff                                  	call   0xaa0b90
  c5c5a4:	d9 54 24 28                                     	fst    DWORD PTR [esp+0x28]
  c5c5a8:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  c5c5ac:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  c5c5b0:	df f1                                           	fcomip st,st(1)
  c5c5b2:	dd d8                                           	fstp   st(0)
  c5c5b4:	77 04                                           	ja     0xc5c5ba
  c5c5b6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  c5c5ba:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  c5c5be:	5f                                              	pop    edi
  c5c5bf:	5e                                              	pop    esi
  c5c5c0:	5d                                              	pop    ebp
  c5c5c1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  c5c5c7:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  c5c5cb:	5b                                              	pop    ebx
  c5c5cc:	83 c4 0c                                        	add    esp,0xc
  c5c5cf:	c3                                              	ret
  c5c5d0:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  c5c5d4:	50                                              	push   eax
  c5c5d5:	57                                              	push   edi
  c5c5d6:	8b cd                                           	mov    ecx,ebp
  c5c5d8:	e8 53 9f eb ff                                  	call   0xb16530
  c5c5dd:	84 c0                                           	test   al,al
  c5c5df:	74 18                                           	je     0xc5c5f9
  c5c5e1:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  c5c5e7:	5f                                              	pop    edi
  c5c5e8:	5e                                              	pop    esi
  c5c5e9:	5d                                              	pop    ebp
  c5c5ea:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  c5c5f0:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  c5c5f4:	5b                                              	pop    ebx
  c5c5f5:	83 c4 0c                                        	add    esp,0xc
  c5c5f8:	c3                                              	ret
  c5c5f9:	57                                              	push   edi
  c5c5fa:	8b cb                                           	mov    ecx,ebx
  c5c5fc:	e8 8f 45 e4 ff                                  	call   0xaa0b90
  c5c601:	d8 05 14 b2 fa 00                               	fadd   DWORD PTR ds:0xfab214
  c5c607:	5f                                              	pop    edi
  c5c608:	5e                                              	pop    esi
  c5c609:	5d                                              	pop    ebp
  c5c60a:	5b                                              	pop    ebx
  c5c60b:	83 c4 0c                                        	add    esp,0xc
  c5c60e:	c3                                              	ret
  c5c60f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c5c613:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  c5c616:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  c5c61a:	83 c1 01                                        	add    ecx,0x1
  c5c61d:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  c5c621:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c5c627:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  c5c62c:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  c5c630:	52                                              	push   edx
  c5c631:	8b cb                                           	mov    ecx,ebx
  c5c633:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  c5c639:	e8 52 45 e4 ff                                  	call   0xaa0b90
  c5c63e:	d8 25 30 94 07 01                               	fsub   DWORD PTR ds:0x1079430
  c5c644:	5f                                              	pop    edi
  c5c645:	5e                                              	pop    esi
  c5c646:	5d                                              	pop    ebp
  c5c647:	5b                                              	pop    ebx
  c5c648:	83 c4 0c                                        	add    esp,0xc
  c5c64b:	c3                                              	ret
  c5c64c:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c5c650:	50                                              	push   eax
  c5c651:	8b cb                                           	mov    ecx,ebx
  c5c653:	e8 38 45 e4 ff                                  	call   0xaa0b90
  c5c658:	d8 05 28 94 07 01                               	fadd   DWORD PTR ds:0x1079428
  c5c65e:	5f                                              	pop    edi
  c5c65f:	5e                                              	pop    esi
  c5c660:	5d                                              	pop    ebp
  c5c661:	5b                                              	pop    ebx
  c5c662:	83 c4 0c                                        	add    esp,0xc
  c5c665:	c3                                              	ret
  c5c666:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c5c66a:	51                                              	push   ecx
  c5c66b:	8b cb                                           	mov    ecx,ebx
  c5c66d:	e8 1e 45 e4 ff                                  	call   0xaa0b90
  c5c672:	d8 05 78 3f fb 00                               	fadd   DWORD PTR ds:0xfb3f78
  c5c678:	5f                                              	pop    edi
  c5c679:	5e                                              	pop    esi
  c5c67a:	5d                                              	pop    ebp
  c5c67b:	5b                                              	pop    ebx
  c5c67c:	83 c4 0c                                        	add    esp,0xc
  c5c67f:	c3                                              	ret
  c5c680:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  c5c684:	52                                              	push   edx
  c5c685:	8b cb                                           	mov    ecx,ebx
  c5c687:	e8 04 45 e4 ff                                  	call   0xaa0b90
  c5c68c:	d8 05 2c 94 07 01                               	fadd   DWORD PTR ds:0x107942c
  c5c692:	5f                                              	pop    edi
  c5c693:	5e                                              	pop    esi
  c5c694:	5d                                              	pop    ebp
  c5c695:	5b                                              	pop    ebx
  c5c696:	83 c4 0c                                        	add    esp,0xc
  c5c699:	c3                                              	ret
  c5c69a:	b8 01 00 00 00                                  	mov    eax,0x1
  c5c69f:	84 05 64 db 1e 01                               	test   BYTE PTR ds:0x11edb64,al
  c5c6a5:	75 16                                           	jne    0xc5c6bd
  c5c6a7:	f3 0f 10 05 c0 94 07 01                         	movss  xmm0,DWORD PTR ds:0x10794c0
  c5c6af:	09 05 64 db 1e 01                               	or     DWORD PTR ds:0x11edb64,eax
  c5c6b5:	f3 0f 11 05 60 db 1e 01                         	movss  DWORD PTR ds:0x11edb60,xmm0
  c5c6bd:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c5c6c1:	50                                              	push   eax
  c5c6c2:	8b cb                                           	mov    ecx,ebx
  c5c6c4:	e8 c7 44 e4 ff                                  	call   0xaa0b90
  c5c6c9:	d8 05 60 db 1e 01                               	fadd   DWORD PTR ds:0x11edb60
  c5c6cf:	5f                                              	pop    edi
  c5c6d0:	5e                                              	pop    esi
  c5c6d1:	5d                                              	pop    ebp
  c5c6d2:	5b                                              	pop    ebx
  c5c6d3:	83 c4 0c                                        	add    esp,0xc
  c5c6d6:	c3                                              	ret
  c5c6d7:	d9 ee                                           	fldz
  c5c6d9:	5f                                              	pop    edi
  c5c6da:	5e                                              	pop    esi
  c5c6db:	5d                                              	pop    ebp
  c5c6dc:	5b                                              	pop    ebx
  c5c6dd:	83 c4 0c                                        	add    esp,0xc
  c5c6e0:	c3                                              	ret
