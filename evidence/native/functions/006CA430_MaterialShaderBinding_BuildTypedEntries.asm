# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006ca430 (MaterialShaderBinding_BuildTypedEntries)
Paired actual Ghidra pseudocode: 006CA430_MaterialShaderBinding_BuildTypedEntries.c
Envelope [0x006ca430,0x006ca548); 280 bytes; exact owned ranges: [0x006ca430,0x006ca468),[0x006ca470,0x006ca548)
Owned: 272 original bytes / 95 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006ca430 <original>:
  6ca430:	51                                              	push   ecx
  6ca431:	53                                              	push   ebx
  6ca432:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  6ca436:	55                                              	push   ebp
  6ca437:	56                                              	push   esi
  6ca438:	8b f1                                           	mov    esi,ecx
  6ca43a:	8b 46 64                                        	mov    eax,DWORD PTR [esi+0x64]
  6ca43d:	8d 4e 64                                        	lea    ecx,[esi+0x64]
  6ca440:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  6ca443:	8b 53 0c                                        	mov    edx,DWORD PTR [ebx+0xc]
  6ca446:	52                                              	push   edx
  6ca447:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  6ca44b:	e8 70 ff ff ff                                  	call   0x6ca3c0
  6ca450:	33 ed                                           	xor    ebp,ebp
  6ca452:	39 6b 0c                                        	cmp    DWORD PTR [ebx+0xc],ebp
  6ca455:	0f 86 e6 00 00 00                               	jbe    0x6ca541
  6ca45b:	0f 57 c0                                        	xorps  xmm0,xmm0
  6ca45e:	57                                              	push   edi
  6ca45f:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  6ca463:	8d 7b 10                                        	lea    edi,[ebx+0x10]
  6ca466:	eb 0c                                           	jmp    0x6ca474
  6ca468:	eb 06                                           	jmp    0x6ca470
  6ca46a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  6ca470:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  6ca474:	8d 46 64                                        	lea    eax,[esi+0x64]
  6ca477:	8b 30                                           	mov    esi,DWORD PTR [eax]
  6ca479:	03 74 24 18                                     	add    esi,DWORD PTR [esp+0x18]
  6ca47d:	8a 47 04                                        	mov    al,BYTE PTR [edi+0x4]
  6ca480:	88 46 1e                                        	mov    BYTE PTR [esi+0x1e],al
  6ca483:	66 8b 4f 08                                     	mov    cx,WORD PTR [edi+0x8]
  6ca487:	66 89 4e 0a                                     	mov    WORD PTR [esi+0xa],cx
  6ca48b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  6ca48d:	89 16                                           	mov    DWORD PTR [esi],edx
  6ca48f:	33 d2                                           	xor    edx,edx
  6ca491:	0f b6 c0                                        	movzx  eax,al
  6ca494:	89 7e 10                                        	mov    DWORD PTR [esi+0x10],edi
  6ca497:	89 6e 0c                                        	mov    DWORD PTR [esi+0xc],ebp
  6ca49a:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  6ca49d:	88 56 1c                                        	mov    BYTE PTR [esi+0x1c],dl
  6ca4a0:	8b 4f 0c                                        	mov    ecx,DWORD PTR [edi+0xc]
  6ca4a3:	83 c0 ff                                        	add    eax,0xffffffff
  6ca4a6:	03 cb                                           	add    ecx,ebx
  6ca4a8:	83 f8 05                                        	cmp    eax,0x5
  6ca4ab:	77 7f                                           	ja     0x6ca52c
  6ca4ad:	ff 24 85 48 a5 6c 00                            	jmp    DWORD PTR [eax*4+0x6ca548]
  6ca4b4:	66 83 7e 0a 00                                  	cmp    WORD PTR [esi+0xa],0x0
  6ca4b9:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  6ca4bc:	76 6e                                           	jbe    0x6ca52c
  6ca4be:	8b ff                                           	mov    edi,edi
  6ca4c0:	f3 0f 10 0c 91                                  	movss  xmm1,DWORD PTR [ecx+edx*4]
  6ca4c5:	0f 2e c8                                        	ucomiss xmm1,xmm0
  6ca4c8:	9f                                              	lahf
  6ca4c9:	f6 c4 44                                        	test   ah,0x44
  6ca4cc:	7a 5a                                           	jp     0x6ca528
  6ca4ce:	0f b7 46 0a                                     	movzx  eax,WORD PTR [esi+0xa]
  6ca4d2:	83 c2 01                                        	add    edx,0x1
  6ca4d5:	3b d0                                           	cmp    edx,eax
  6ca4d7:	72 e7                                           	jb     0x6ca4c0
  6ca4d9:	eb 51                                           	jmp    0x6ca52c
  6ca4db:	33 c0                                           	xor    eax,eax
  6ca4dd:	66 39 56 0a                                     	cmp    WORD PTR [esi+0xa],dx
  6ca4e1:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  6ca4e4:	76 46                                           	jbe    0x6ca52c
  6ca4e6:	83 3c 81 00                                     	cmp    DWORD PTR [ecx+eax*4],0x0
  6ca4ea:	75 3c                                           	jne    0x6ca528
  6ca4ec:	0f b7 56 0a                                     	movzx  edx,WORD PTR [esi+0xa]
  6ca4f0:	83 c0 01                                        	add    eax,0x1
  6ca4f3:	3b c2                                           	cmp    eax,edx
  6ca4f5:	72 ef                                           	jb     0x6ca4e6
  6ca4f7:	eb 33                                           	jmp    0x6ca52c
  6ca4f9:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  6ca4fc:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  6ca500:	56                                              	push   esi
  6ca501:	e8 aa f0 ff ff                                  	call   0x6c95b0
  6ca506:	c6 46 1d 00                                     	mov    BYTE PTR [esi+0x1d],0x0
  6ca50a:	eb 1c                                           	jmp    0x6ca528
  6ca50c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  6ca50e:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  6ca511:	c6 46 1e 06                                     	mov    BYTE PTR [esi+0x1e],0x6
  6ca515:	eb 03                                           	jmp    0x6ca51a
  6ca517:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  6ca51a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  6ca51e:	56                                              	push   esi
  6ca51f:	e8 8c f0 ff ff                                  	call   0x6c95b0
  6ca524:	c6 46 1d 01                                     	mov    BYTE PTR [esi+0x1d],0x1
  6ca528:	c6 46 1c 01                                     	mov    BYTE PTR [esi+0x1c],0x1
  6ca52c:	83 44 24 18 20                                  	add    DWORD PTR [esp+0x18],0x20
  6ca531:	83 c5 01                                        	add    ebp,0x1
  6ca534:	83 c7 10                                        	add    edi,0x10
  6ca537:	3b 6b 0c                                        	cmp    ebp,DWORD PTR [ebx+0xc]
  6ca53a:	0f 82 30 ff ff ff                               	jb     0x6ca470
  6ca540:	5f                                              	pop    edi
  6ca541:	5e                                              	pop    esi
  6ca542:	5d                                              	pop    ebp
  6ca543:	5b                                              	pop    ebx
  6ca544:	59                                              	pop    ecx
  6ca545:	c2 04 00                                        	ret    0x4
