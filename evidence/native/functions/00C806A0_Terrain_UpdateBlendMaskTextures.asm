# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c806a0 (Terrain_UpdateBlendMaskTextures)
Paired actual Ghidra pseudocode: 00C806A0_Terrain_UpdateBlendMaskTextures.c
Envelope [0x00c806a0,0x00c807fb); 347 bytes; exact owned ranges: [0x00c806a0,0x00c807fb)
Owned: 347 original bytes / 117 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c806a0 <original>:
  c806a0:	83 ec 28                                        	sub    esp,0x28
  c806a3:	53                                              	push   ebx
  c806a4:	56                                              	push   esi
  c806a5:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  c806a9:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  c806ac:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  c806b0:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  c806b3:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  c806b7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  c806bb:	33 db                                           	xor    ebx,ebx
  c806bd:	85 c9                                           	test   ecx,ecx
  c806bf:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  c806c3:	0f 86 14 01 00 00                               	jbe    0xc807dd
  c806c9:	55                                              	push   ebp
  c806ca:	33 ed                                           	xor    ebp,ebp
  c806cc:	57                                              	push   edi
  c806cd:	c7 44 24 18 04 00 00 00                         	mov    DWORD PTR [esp+0x18],0x4
  c806d5:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  c806d9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c806e0:	8b c1                                           	mov    eax,ecx
  c806e2:	2b c3                                           	sub    eax,ebx
  c806e4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  c806e8:	83 f8 04                                        	cmp    eax,0x4
  c806eb:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  c806ef:	77 04                                           	ja     0xc806f5
  c806f1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  c806f5:	80 7c 24 40 00                                  	cmp    BYTE PTR [esp+0x40],0x0
  c806fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c806fc:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  c80700:	75 10                                           	jne    0xc80712
  c80702:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
  c80708:	83 3c 28 00                                     	cmp    DWORD PTR [eax+ebp*1],0x0
  c8070c:	0f 85 b7 00 00 00                               	jne    0xc807c9
  c80712:	6a 00                                           	push   0x0
  c80714:	6a 00                                           	push   0x0
  c80716:	6a 00                                           	push   0x0
  c80718:	6a 00                                           	push   0x0
  c8071a:	68 30 b6 07 01                                  	push   0x107b630
  c8071f:	6a 34                                           	push   0x34
  c80721:	e8 da 3d 86 ff                                  	call   0x4e4500
  c80726:	83 c4 18                                        	add    esp,0x18
  c80729:	85 c0                                           	test   eax,eax
  c8072b:	74 0b                                           	je     0xc80738
  c8072d:	8b c8                                           	mov    ecx,eax
  c8072f:	e8 6c 9b 99 ff                                  	call   0x61a2a0
  c80734:	8b f8                                           	mov    edi,eax
  c80736:	eb 02                                           	jmp    0xc8073a
  c80738:	33 ff                                           	xor    edi,edi
  c8073a:	8b b6 c0 00 00 00                               	mov    esi,DWORD PTR [esi+0xc0]
  c80740:	03 f5                                           	add    esi,ebp
  c80742:	8b 2e                                           	mov    ebp,DWORD PTR [esi]
  c80744:	3b fd                                           	cmp    edi,ebp
  c80746:	74 1d                                           	je     0xc80765
  c80748:	85 ff                                           	test   edi,edi
  c8074a:	74 09                                           	je     0xc80755
  c8074c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  c8074e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  c80751:	8b cf                                           	mov    ecx,edi
  c80753:	ff d0                                           	call   eax
  c80755:	85 ed                                           	test   ebp,ebp
  c80757:	89 3e                                           	mov    DWORD PTR [esi],edi
  c80759:	74 0a                                           	je     0xc80765
  c8075b:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  c8075e:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  c80761:	8b cd                                           	mov    ecx,ebp
  c80763:	ff d0                                           	call   eax
  c80765:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  c80769:	8b 74 24 44                                     	mov    esi,DWORD PTR [esp+0x44]
  c8076d:	8d 0c 1f                                        	lea    ecx,[edi+ebx*1]
  c80770:	8d 04 33                                        	lea    eax,[ebx+esi*1]
  c80773:	03 ce                                           	add    ecx,esi
  c80775:	3b c1                                           	cmp    eax,ecx
  c80777:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  c8077b:	74 12                                           	je     0xc8078f
  c8077d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  c80780:	0f b6 30                                        	movzx  esi,BYTE PTR [eax]
  c80783:	89 32                                           	mov    DWORD PTR [edx],esi
  c80785:	83 c0 01                                        	add    eax,0x1
  c80788:	83 c2 04                                        	add    edx,0x4
  c8078b:	3b c1                                           	cmp    eax,ecx
  c8078d:	75 f1                                           	jne    0xc80780
  c8078f:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  c80793:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c80797:	57                                              	push   edi
  c80798:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  c8079c:	51                                              	push   ecx
  c8079d:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  c807a1:	52                                              	push   edx
  c807a2:	8b 91 c0 00 00 00                               	mov    edx,DWORD PTR [ecx+0xc0]
  c807a8:	50                                              	push   eax
  c807a9:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  c807ad:	8b 0c 10                                        	mov    ecx,DWORD PTR [eax+edx*1]
  c807b0:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  c807b4:	51                                              	push   ecx
  c807b5:	8b 4a 68                                        	mov    ecx,DWORD PTR [edx+0x68]
  c807b8:	e8 63 2a fa ff                                  	call   0xc23220
  c807bd:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  c807c1:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  c807c5:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  c807c9:	83 c5 04                                        	add    ebp,0x4
  c807cc:	83 c3 04                                        	add    ebx,0x4
  c807cf:	3b d9                                           	cmp    ebx,ecx
  c807d1:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  c807d5:	0f 82 05 ff ff ff                               	jb     0xc806e0
  c807db:	5f                                              	pop    edi
  c807dc:	5d                                              	pop    ebp
  c807dd:	80 7c 24 44 00                                  	cmp    BYTE PTR [esp+0x44],0x0
  c807e2:	74 0f                                           	je     0xc807f3
  c807e4:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  c807e8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  c807ec:	50                                              	push   eax
  c807ed:	56                                              	push   esi
  c807ee:	e8 bd de ff ff                                  	call   0xc7e6b0
  c807f3:	5e                                              	pop    esi
  c807f4:	5b                                              	pop    ebx
  c807f5:	83 c4 28                                        	add    esp,0x28
  c807f8:	c2 14 00                                        	ret    0x14
