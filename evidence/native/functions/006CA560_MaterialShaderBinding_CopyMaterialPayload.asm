# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006ca560 (MaterialShaderBinding_CopyMaterialPayload)
Paired actual Ghidra pseudocode: 006CA560_MaterialShaderBinding_CopyMaterialPayload.c
Envelope [0x006ca560,0x006ca62c); 204 bytes; exact owned ranges: [0x006ca560,0x006ca5fd),[0x006ca600,0x006ca62c)
Owned: 201 original bytes / 74 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006ca560 <original>:
  6ca560:	55                                              	push   ebp
  6ca561:	56                                              	push   esi
  6ca562:	57                                              	push   edi
  6ca563:	8b f1                                           	mov    esi,ecx
  6ca565:	e8 76 f7 ff ff                                  	call   0x6c9ce0
  6ca56a:	8b 46 38                                        	mov    eax,DWORD PTR [esi+0x38]
  6ca56d:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  6ca573:	50                                              	push   eax
  6ca574:	e8 f7 b8 e1 ff                                  	call   0x4e5e70
  6ca579:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  6ca57d:	85 ed                                           	test   ebp,ebp
  6ca57f:	c7 46 38 00 00 00 00                            	mov    DWORD PTR [esi+0x38],0x0
  6ca586:	c7 46 3c 00 00 00 00                            	mov    DWORD PTR [esi+0x3c],0x0
  6ca58d:	74 5c                                           	je     0x6ca5eb
  6ca58f:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  6ca593:	85 ff                                           	test   edi,edi
  6ca595:	74 54                                           	je     0x6ca5eb
  6ca597:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  6ca59d:	6a 00                                           	push   0x0
  6ca59f:	6a 00                                           	push   0x0
  6ca5a1:	6a 10                                           	push   0x10
  6ca5a3:	57                                              	push   edi
  6ca5a4:	e8 c7 c9 e1 ff                                  	call   0x4e6f70
  6ca5a9:	85 c0                                           	test   eax,eax
  6ca5ab:	89 46 38                                        	mov    DWORD PTR [esi+0x38],eax
  6ca5ae:	89 7e 3c                                        	mov    DWORD PTR [esi+0x3c],edi
  6ca5b1:	75 08                                           	jne    0x6ca5bb
  6ca5b3:	5f                                              	pop    edi
  6ca5b4:	5e                                              	pop    esi
  6ca5b5:	32 c0                                           	xor    al,al
  6ca5b7:	5d                                              	pop    ebp
  6ca5b8:	c2 10 00                                        	ret    0x10
  6ca5bb:	57                                              	push   edi
  6ca5bc:	55                                              	push   ebp
  6ca5bd:	50                                              	push   eax
  6ca5be:	e8 c3 4c 8b 00                                  	call   0xf7f286
  6ca5c3:	8b 4e 38                                        	mov    ecx,DWORD PTR [esi+0x38]
  6ca5c6:	83 c4 0c                                        	add    esp,0xc
  6ca5c9:	51                                              	push   ecx
  6ca5ca:	8b ce                                           	mov    ecx,esi
  6ca5cc:	e8 5f fe ff ff                                  	call   0x6ca430
  6ca5d1:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  6ca5d5:	52                                              	push   edx
  6ca5d6:	8b ce                                           	mov    ecx,esi
  6ca5d8:	e8 f3 fa ff ff                                  	call   0x6ca0d0
  6ca5dd:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
  6ca5e2:	74 07                                           	je     0x6ca5eb
  6ca5e4:	8b ce                                           	mov    ecx,esi
  6ca5e6:	e8 c5 f6 ff ff                                  	call   0x6c9cb0
  6ca5eb:	83 7e 38 00                                     	cmp    DWORD PTR [esi+0x38],0x0
  6ca5ef:	74 1e                                           	je     0x6ca60f
  6ca5f1:	8b 46 64                                        	mov    eax,DWORD PTR [esi+0x64]
  6ca5f4:	8b 4e 68                                        	mov    ecx,DWORD PTR [esi+0x68]
  6ca5f7:	3b c1                                           	cmp    eax,ecx
  6ca5f9:	74 14                                           	je     0x6ca60f
  6ca5fb:	eb 03                                           	jmp    0x6ca600
  6ca5fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  6ca600:	81 38 05 aa 7d 63                               	cmp    DWORD PTR [eax],0x637daa05
  6ca606:	74 16                                           	je     0x6ca61e
  6ca608:	83 c0 20                                        	add    eax,0x20
  6ca60b:	3b c1                                           	cmp    eax,ecx
  6ca60d:	75 f1                                           	jne    0x6ca600
  6ca60f:	5f                                              	pop    edi
  6ca610:	c7 46 58 00 00 00 00                            	mov    DWORD PTR [esi+0x58],0x0
  6ca617:	5e                                              	pop    esi
  6ca618:	b0 01                                           	mov    al,0x1
  6ca61a:	5d                                              	pop    ebp
  6ca61b:	c2 10 00                                        	ret    0x10
  6ca61e:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  6ca621:	5f                                              	pop    edi
  6ca622:	89 46 58                                        	mov    DWORD PTR [esi+0x58],eax
  6ca625:	5e                                              	pop    esi
  6ca626:	b0 01                                           	mov    al,0x1
  6ca628:	5d                                              	pop    ebp
  6ca629:	c2 10 00                                        	ret    0x10
