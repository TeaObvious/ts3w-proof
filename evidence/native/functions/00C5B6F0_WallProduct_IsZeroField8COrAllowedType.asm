# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c5b6f0 (WallProduct_IsZeroField8COrAllowedType)
Paired actual Ghidra pseudocode: 00C5B6F0_WallProduct_IsZeroField8COrAllowedType.c
Envelope [0x00c5b6f0,0x00c5b746); 86 bytes; exact owned ranges: [0x00c5b6f0,0x00c5b746)
Owned: 86 original bytes / 34 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c5b6f0 <original>:
  c5b6f0:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  c5b6f6:	56                                              	push   esi
  c5b6f7:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  c5b6fb:	6a 01                                           	push   0x1
  c5b6fd:	56                                              	push   esi
  c5b6fe:	e8 1d 43 03 00                                  	call   0xc8fa20
  c5b703:	85 c0                                           	test   eax,eax
  c5b705:	74 11                                           	je     0xc5b718
  c5b707:	8b 80 8c 00 00 00                               	mov    eax,DWORD PTR [eax+0x8c]
  c5b70d:	33 c9                                           	xor    ecx,ecx
  c5b70f:	85 c0                                           	test   eax,eax
  c5b711:	0f 94 c1                                        	sete   cl
  c5b714:	8a c1                                           	mov    al,cl
  c5b716:	5e                                              	pop    esi
  c5b717:	c3                                              	ret
  c5b718:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  c5b71b:	3d 2a fe 18 04                                  	cmp    eax,0x418fe2a
  c5b720:	75 10                                           	jne    0xc5b732
  c5b722:	b8 01 00 00 00                                  	mov    eax,0x1
  c5b727:	33 c9                                           	xor    ecx,ecx
  c5b729:	85 c0                                           	test   eax,eax
  c5b72b:	0f 94 c1                                        	sete   cl
  c5b72e:	8a c1                                           	mov    al,cl
  c5b730:	5e                                              	pop    esi
  c5b731:	c3                                              	ret
  c5b732:	2d bc e6 51 91                                  	sub    eax,0x9151e6bc
  c5b737:	f7 d8                                           	neg    eax
  c5b739:	1b c0                                           	sbb    eax,eax
  c5b73b:	33 c9                                           	xor    ecx,ecx
  c5b73d:	85 c0                                           	test   eax,eax
  c5b73f:	0f 94 c1                                        	sete   cl
  c5b742:	8a c1                                           	mov    al,cl
  c5b744:	5e                                              	pop    esi
  c5b745:	c3                                              	ret
