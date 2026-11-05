# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x005f94e0 (TextureBuilder_DrawTextureComposite)
Paired actual Ghidra pseudocode: 005F94E0_TextureBuilder_DrawTextureComposite.c
Envelope [0x005f94e0,0x005f994f); 1135 bytes; exact owned ranges: [0x005f94e0,0x005f994f)
Owned: 1135 original bytes / 347 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
005f94e0 <original>:
  5f94e0:	55                                              	push   ebp
  5f94e1:	8b ec                                           	mov    ebp,esp
  5f94e3:	83 e4 f0                                        	and    esp,0xfffffff0
  5f94e6:	83 ec 44                                        	sub    esp,0x44
  5f94e9:	53                                              	push   ebx
  5f94ea:	56                                              	push   esi
  5f94eb:	57                                              	push   edi
  5f94ec:	8b f9                                           	mov    edi,ecx
  5f94ee:	8b 77 40                                        	mov    esi,DWORD PTR [edi+0x40]
  5f94f1:	85 f6                                           	test   esi,esi
  5f94f3:	74 55                                           	je     0x5f954a
  5f94f5:	e8 16 54 01 00                                  	call   0x60e910
  5f94fa:	e8 81 e2 01 00                                  	call   0x617780
  5f94ff:	81 ee d3 9c 1e 02                               	sub    esi,0x21e9cd3
  5f9505:	74 0d                                           	je     0x5f9514
  5f9507:	83 ee 02                                        	sub    esi,0x2
  5f950a:	75 1a                                           	jne    0x5f9526
  5f950c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5f950f:	8b 51 18                                        	mov    edx,DWORD PTR [ecx+0x18]
  5f9512:	eb 06                                           	jmp    0x5f951a
  5f9514:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5f9517:	8b 51 14                                        	mov    edx,DWORD PTR [ecx+0x14]
  5f951a:	52                                              	push   edx
  5f951b:	8b c8                                           	mov    ecx,eax
  5f951d:	e8 6e e7 01 00                                  	call   0x617c90
  5f9522:	85 c0                                           	test   eax,eax
  5f9524:	75 04                                           	jne    0x5f952a
  5f9526:	33 f6                                           	xor    esi,esi
  5f9528:	eb 02                                           	jmp    0x5f952c
  5f952a:	8b 30                                           	mov    esi,DWORD PTR [eax]
  5f952c:	8b 4f 3c                                        	mov    ecx,DWORD PTR [edi+0x3c]
  5f952f:	85 c9                                           	test   ecx,ecx
  5f9531:	74 07                                           	je     0x5f953a
  5f9533:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5f9535:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5f9538:	ff d2                                           	call   edx
  5f953a:	85 f6                                           	test   esi,esi
  5f953c:	74 09                                           	je     0x5f9547
  5f953e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f9540:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5f9543:	8b ce                                           	mov    ecx,esi
  5f9545:	ff d2                                           	call   edx
  5f9547:	89 77 3c                                        	mov    DWORD PTR [edi+0x3c],esi
  5f954a:	83 7f 3c 00                                     	cmp    DWORD PTR [edi+0x3c],0x0
  5f954e:	75 0e                                           	jne    0x5f955e
  5f9550:	b8 01 00 00 00                                  	mov    eax,0x1
  5f9555:	5f                                              	pop    edi
  5f9556:	5e                                              	pop    esi
  5f9557:	5b                                              	pop    ebx
  5f9558:	8b e5                                           	mov    esp,ebp
  5f955a:	5d                                              	pop    ebp
  5f955b:	c2 04 00                                        	ret    0x4
  5f955e:	8b 0d 3c 85 1d 01                               	mov    ecx,DWORD PTR ds:0x11d853c
  5f9564:	6a 00                                           	push   0x0
  5f9566:	6a 00                                           	push   0x0
  5f9568:	68 24 71 fe 00                                  	push   0xfe7124
  5f956d:	e8 9e 26 1a 00                                  	call   0x79bc10
  5f9572:	8b f0                                           	mov    esi,eax
  5f9574:	85 f6                                           	test   esi,esi
  5f9576:	74 d8                                           	je     0x5f9550
  5f9578:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f957a:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  5f957d:	8b cf                                           	mov    ecx,edi
  5f957f:	ff d2                                           	call   edx
  5f9581:	50                                              	push   eax
  5f9582:	8b ce                                           	mov    ecx,esi
  5f9584:	e8 17 11 1a 00                                  	call   0x79a6a0
  5f9589:	8b 35 30 85 1d 01                               	mov    esi,DWORD PTR ds:0x11d8530
  5f958f:	a1 c8 fc 1c 01                                  	mov    eax,ds:0x11cfcc8
  5f9594:	6a 05                                           	push   0x5
  5f9596:	6a 01                                           	push   0x1
  5f9598:	68 08 72 fe 00                                  	push   0xfe7208
  5f959d:	8b ce                                           	mov    ecx,esi
  5f959f:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  5f95a3:	e8 88 0f 1a 00                                  	call   0x79a530
  5f95a8:	6a 01                                           	push   0x1
  5f95aa:	6a 01                                           	push   0x1
  5f95ac:	68 f0 71 fe 00                                  	push   0xfe71f0
  5f95b1:	8b ce                                           	mov    ecx,esi
  5f95b3:	8b d8                                           	mov    ebx,eax
  5f95b5:	e8 76 0f 1a 00                                  	call   0x79a530
  5f95ba:	3b 5e 08                                        	cmp    ebx,DWORD PTR [esi+0x8]
  5f95bd:	8b 4f 3c                                        	mov    ecx,DWORD PTR [edi+0x3c]
  5f95c0:	73 14                                           	jae    0x5f95d6
  5f95c2:	c1 e3 04                                        	shl    ebx,0x4
  5f95c5:	03 5e 04                                        	add    ebx,DWORD PTR [esi+0x4]
  5f95c8:	83 03 01                                        	add    DWORD PTR [ebx],0x1
  5f95cb:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f95cf:	66 89 53 04                                     	mov    WORD PTR [ebx+0x4],dx
  5f95d3:	89 4b 0c                                        	mov    DWORD PTR [ebx+0xc],ecx
  5f95d6:	0f bf 4f 4c                                     	movsx  ecx,WORD PTR [edi+0x4c]
  5f95da:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
  5f95de:	f3 0f 59 05 64 e5 fa 00                         	mulss  xmm0,DWORD PTR ds:0xfae564
  5f95e6:	f3 0f 11 05 b0 8d 15 01                         	movss  DWORD PTR ds:0x1158db0,xmm0
  5f95ee:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5f95f1:	73 18                                           	jae    0x5f960b
  5f95f3:	c1 e0 04                                        	shl    eax,0x4
  5f95f6:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  5f95f9:	83 00 01                                        	add    DWORD PTR [eax],0x1
  5f95fc:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f9600:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  5f9604:	c7 40 0c b0 8d 15 01                            	mov    DWORD PTR [eax+0xc],0x1158db0
  5f960b:	6a 05                                           	push   0x5
  5f960d:	6a 01                                           	push   0x1
  5f960f:	68 e8 71 fe 00                                  	push   0xfe71e8
  5f9614:	8b ce                                           	mov    ecx,esi
  5f9616:	e8 15 0f 1a 00                                  	call   0x79a530
  5f961b:	6a 02                                           	push   0x2
  5f961d:	6a 01                                           	push   0x1
  5f961f:	68 dc 71 fe 00                                  	push   0xfe71dc
  5f9624:	8b ce                                           	mov    ecx,esi
  5f9626:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5f962a:	e8 01 0f 1a 00                                  	call   0x79a530
  5f962f:	6a 01                                           	push   0x1
  5f9631:	6a 01                                           	push   0x1
  5f9633:	68 d0 71 fe 00                                  	push   0xfe71d0
  5f9638:	8b ce                                           	mov    ecx,esi
  5f963a:	8b d8                                           	mov    ebx,eax
  5f963c:	e8 ef 0e 1a 00                                  	call   0x79a530
  5f9641:	33 c9                                           	xor    ecx,ecx
  5f9643:	f6 05 80 fa 1c 01 01                            	test   BYTE PTR ds:0x11cfa80,0x1
  5f964a:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5f964e:	75 2e                                           	jne    0x5f967e
  5f9650:	0f 57 c0                                        	xorps  xmm0,xmm0
  5f9653:	83 0d 80 fa 1c 01 01                            	or     DWORD PTR ds:0x11cfa80,0x1
  5f965a:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  5f9660:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  5f9666:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  5f966c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  5f9672:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  5f9677:	0f 29 05 70 fa 1c 01                            	movaps XMMWORD PTR ds:0x11cfa70,xmm0
  5f967e:	8b 57 38                                        	mov    edx,DWORD PTR [edi+0x38]
  5f9681:	f6 c2 03                                        	test   dl,0x3
  5f9684:	0f 85 89 00 00 00                               	jne    0x5f9713
  5f968a:	39 4f 38                                        	cmp    DWORD PTR [edi+0x38],ecx
  5f968d:	0f 84 80 00 00 00                               	je     0x5f9713
  5f9693:	0f bf 47 48                                     	movsx  eax,WORD PTR [edi+0x48]
  5f9697:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5f969b:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
  5f969f:	f3 0f 59 05 64 e5 fa 00                         	mulss  xmm0,DWORD PTR ds:0xfae564
  5f96a7:	51                                              	push   ecx
  5f96a8:	8d 4f 44                                        	lea    ecx,[edi+0x44]
  5f96ab:	f3 0f 11 05 64 fa 1c 01                         	movss  DWORD PTR ds:0x11cfa64,xmm0
  5f96b3:	e8 28 c8 fb ff                                  	call   0x5b5ee0
  5f96b8:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f96bb:	0f 29 05 70 fa 1c 01                            	movaps XMMWORD PTR ds:0x11cfa70,xmm0
  5f96c2:	8b 4f 38                                        	mov    ecx,DWORD PTR [edi+0x38]
  5f96c5:	8b 41 60                                        	mov    eax,DWORD PTR [ecx+0x60]
  5f96c8:	f7 d8                                           	neg    eax
  5f96ca:	1b c0                                           	sbb    eax,eax
  5f96cc:	23 c1                                           	and    eax,ecx
  5f96ce:	74 05                                           	je     0x5f96d5
  5f96d0:	8d 48 28                                        	lea    ecx,[eax+0x28]
  5f96d3:	eb 02                                           	jmp    0x5f96d7
  5f96d5:	33 c9                                           	xor    ecx,ecx
  5f96d7:	3b 5e 08                                        	cmp    ebx,DWORD PTR [esi+0x8]
  5f96da:	73 18                                           	jae    0x5f96f4
  5f96dc:	c1 e3 04                                        	shl    ebx,0x4
  5f96df:	03 5e 04                                        	add    ebx,DWORD PTR [esi+0x4]
  5f96e2:	83 03 01                                        	add    DWORD PTR [ebx],0x1
  5f96e5:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f96e9:	66 89 53 04                                     	mov    WORD PTR [ebx+0x4],dx
  5f96ed:	c7 43 0c 70 fa 1c 01                            	mov    DWORD PTR [ebx+0xc],0x11cfa70
  5f96f4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5f96f8:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5f96fb:	73 50                                           	jae    0x5f974d
  5f96fd:	c1 e0 04                                        	shl    eax,0x4
  5f9700:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  5f9703:	83 00 01                                        	add    DWORD PTR [eax],0x1
  5f9706:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f970a:	c7 40 0c 64 fa 1c 01                            	mov    DWORD PTR [eax+0xc],0x11cfa64
  5f9711:	eb 36                                           	jmp    0x5f9749
  5f9713:	3b 5e 08                                        	cmp    ebx,DWORD PTR [esi+0x8]
  5f9716:	73 18                                           	jae    0x5f9730
  5f9718:	c1 e3 04                                        	shl    ebx,0x4
  5f971b:	03 5e 04                                        	add    ebx,DWORD PTR [esi+0x4]
  5f971e:	83 03 01                                        	add    DWORD PTR [ebx],0x1
  5f9721:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f9725:	66 89 53 04                                     	mov    WORD PTR [ebx+0x4],dx
  5f9729:	c7 43 0c a0 8d 15 01                            	mov    DWORD PTR [ebx+0xc],0x1158da0
  5f9730:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5f9733:	73 18                                           	jae    0x5f974d
  5f9735:	c1 e0 04                                        	shl    eax,0x4
  5f9738:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  5f973b:	83 00 01                                        	add    DWORD PTR [eax],0x1
  5f973e:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f9742:	c7 40 0c c4 70 fe 00                            	mov    DWORD PTR [eax+0xc],0xfe70c4
  5f9749:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  5f974d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5f9751:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5f9754:	73 14                                           	jae    0x5f976a
  5f9756:	c1 e0 04                                        	shl    eax,0x4
  5f9759:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  5f975c:	83 00 01                                        	add    DWORD PTR [eax],0x1
  5f975f:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  5f9763:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  5f9767:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5f976a:	e8 a1 51 01 00                                  	call   0x60e910
  5f976f:	e8 0c e0 01 00                                  	call   0x617780
  5f9774:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5f9777:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  5f977a:	51                                              	push   ecx
  5f977b:	8b c8                                           	mov    ecx,eax
  5f977d:	e8 0e e5 01 00                                  	call   0x617c90
  5f9782:	85 c0                                           	test   eax,eax
  5f9784:	74 02                                           	je     0x5f9788
  5f9786:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5f9788:	39 47 3c                                        	cmp    DWORD PTR [edi+0x3c],eax
  5f978b:	74 25                                           	je     0x5f97b2
  5f978d:	e8 7e 51 01 00                                  	call   0x60e910
  5f9792:	e8 e9 df 01 00                                  	call   0x617780
  5f9797:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  5f979a:	52                                              	push   edx
  5f979b:	8b c8                                           	mov    ecx,eax
  5f979d:	e8 ee e4 01 00                                  	call   0x617c90
  5f97a2:	85 c0                                           	test   eax,eax
  5f97a4:	74 02                                           	je     0x5f97a8
  5f97a6:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5f97a8:	39 47 3c                                        	cmp    DWORD PTR [edi+0x3c],eax
  5f97ab:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  5f97b0:	75 05                                           	jne    0x5f97b7
  5f97b2:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  5f97b7:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f97b9:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  5f97bc:	8b cf                                           	mov    ecx,edi
  5f97be:	ff d2                                           	call   edx
  5f97c0:	f3 0f 10 05 64 e5 fa 00                         	movss  xmm0,DWORD PTR ds:0xfae564
  5f97c8:	0f bf 4f 0c                                     	movsx  ecx,WORD PTR [edi+0xc]
  5f97cc:	0f bf 57 10                                     	movsx  edx,WORD PTR [edi+0x10]
  5f97d0:	83 f8 08                                        	cmp    eax,0x8
  5f97d3:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
  5f97d7:	0f bf 4f 12                                     	movsx  ecx,WORD PTR [edi+0x12]
  5f97db:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f97df:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
  5f97e5:	0f 94 c0                                        	sete   al
  5f97e8:	88 44 24 18                                     	mov    BYTE PTR [esp+0x18],al
  5f97ec:	0f bf 47 0e                                     	movsx  eax,WORD PTR [edi+0xe]
  5f97f0:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5f97f4:	0f bf 57 14                                     	movsx  edx,WORD PTR [edi+0x14]
  5f97f8:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f97fc:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  5f9802:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  5f9806:	0f bf 47 18                                     	movsx  eax,WORD PTR [edi+0x18]
  5f980a:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f980e:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  5f9814:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
  5f9818:	0f bf 4f 16                                     	movsx  ecx,WORD PTR [edi+0x16]
  5f981c:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f9820:	f3 0f 11 4c 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm1
  5f9826:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5f982a:	0f bf 57 1a                                     	movsx  edx,WORD PTR [edi+0x1a]
  5f982e:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f9832:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
  5f9838:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  5f983c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5f9840:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f9844:	50                                              	push   eax
  5f9845:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
  5f984b:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
  5f984f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5f9853:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f9857:	6a 00                                           	push   0x0
  5f9859:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
  5f985f:	6a 01                                           	push   0x1
  5f9861:	51                                              	push   ecx
  5f9862:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5f9866:	0f bf 57 4a                                     	movsx  edx,WORD PTR [edi+0x4a]
  5f986a:	51                                              	push   ecx
  5f986b:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f986f:	f3 0f 11 4c 24 50                               	movss  DWORD PTR [esp+0x50],xmm1
  5f9875:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5f9879:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5f987d:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
  5f9882:	6a ff                                           	push   0xffffffff
  5f9884:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  5f9888:	50                                              	push   eax
  5f9889:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5f988d:	51                                              	push   ecx
  5f988e:	8b ce                                           	mov    ecx,esi
  5f9890:	e8 2b ef ff ff                                  	call   0x5f87c0
  5f9895:	84 c0                                           	test   al,al
  5f9897:	0f 84 b3 fc ff ff                               	je     0x5f9550
  5f989d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5f989f:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
  5f98a2:	8b cf                                           	mov    ecx,edi
  5f98a4:	ff d0                                           	call   eax
  5f98a6:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5f98aa:	8b ce                                           	mov    ecx,esi
  5f98ac:	e8 ef 59 01 00                                  	call   0x60f2a0
  5f98b1:	0f b6 4f 0a                                     	movzx  ecx,BYTE PTR [edi+0xa]
  5f98b5:	c0 e9 05                                        	shr    cl,0x5
  5f98b8:	81 e1 01 ff ff ff                               	and    ecx,0xffffff01
  5f98be:	51                                              	push   ecx
  5f98bf:	8b ce                                           	mov    ecx,esi
  5f98c1:	e8 ca 66 01 00                                  	call   0x60ff90
  5f98c6:	0f b6 47 4e                                     	movzx  eax,BYTE PTR [edi+0x4e]
  5f98ca:	8b d0                                           	mov    edx,eax
  5f98cc:	c1 ea 04                                        	shr    edx,0x4
  5f98cf:	52                                              	push   edx
  5f98d0:	83 e0 0f                                        	and    eax,0xf
  5f98d3:	50                                              	push   eax
  5f98d4:	8b ce                                           	mov    ecx,esi
  5f98d6:	e8 c5 66 01 00                                  	call   0x60ffa0
  5f98db:	f6 47 0a 40                                     	test   BYTE PTR [edi+0xa],0x40
  5f98df:	8b ce                                           	mov    ecx,esi
  5f98e1:	74 0d                                           	je     0x5f98f0
  5f98e3:	6a 01                                           	push   0x1
  5f98e5:	6a 00                                           	push   0x0
  5f98e7:	e8 74 67 01 00                                  	call   0x610060
  5f98ec:	6a 01                                           	push   0x1
  5f98ee:	eb 0b                                           	jmp    0x5f98fb
  5f98f0:	6a 00                                           	push   0x0
  5f98f2:	6a 00                                           	push   0x0
  5f98f4:	e8 67 67 01 00                                  	call   0x610060
  5f98f9:	6a 00                                           	push   0x0
  5f98fb:	6a 00                                           	push   0x0
  5f98fd:	8b ce                                           	mov    ecx,esi
  5f98ff:	e8 9c 67 01 00                                  	call   0x6100a0
  5f9904:	0f b6 47 0a                                     	movzx  eax,BYTE PTR [edi+0xa]
  5f9908:	83 e0 0f                                        	and    eax,0xf
  5f990b:	50                                              	push   eax
  5f990c:	68 a8 00 00 00                                  	push   0xa8
  5f9911:	8b ce                                           	mov    ecx,esi
  5f9913:	e8 98 55 01 00                                  	call   0x60eeb0
  5f9918:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5f991a:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  5f991d:	57                                              	push   edi
  5f991e:	8b cf                                           	mov    ecx,edi
  5f9920:	ff d0                                           	call   eax
  5f9922:	8b ce                                           	mov    ecx,esi
  5f9924:	e8 07 6a 01 00                                  	call   0x610330
  5f9929:	83 7f 40 00                                     	cmp    DWORD PTR [edi+0x40],0x0
  5f992d:	74 15                                           	je     0x5f9944
  5f992f:	8b 4f 3c                                        	mov    ecx,DWORD PTR [edi+0x3c]
  5f9932:	85 c9                                           	test   ecx,ecx
  5f9934:	74 0e                                           	je     0x5f9944
  5f9936:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5f9938:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5f993b:	ff d0                                           	call   eax
  5f993d:	c7 47 3c 00 00 00 00                            	mov    DWORD PTR [edi+0x3c],0x0
  5f9944:	5f                                              	pop    edi
  5f9945:	5e                                              	pop    esi
  5f9946:	33 c0                                           	xor    eax,eax
  5f9948:	5b                                              	pop    ebx
  5f9949:	8b e5                                           	mov    esp,ebp
  5f994b:	5d                                              	pop    ebp
  5f994c:	c2 04 00                                        	ret    0x4
