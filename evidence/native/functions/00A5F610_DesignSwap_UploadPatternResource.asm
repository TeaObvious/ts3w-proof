# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a5f610 (DesignSwap_UploadPatternResource)
Paired actual Ghidra pseudocode: 00A5F610_DesignSwap_UploadPatternResource.c
Envelope [0x00a5f610,0x00a5f6ee); 222 bytes; exact owned ranges: [0x00a5f610,0x00a5f6ee)
Owned: 222 original bytes / 84 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00a5f610 <original>:
  a5f610:	83 ec 34                                        	sub    esp,0x34
  a5f613:	53                                              	push   ebx
  a5f614:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
  a5f618:	85 db                                           	test   ebx,ebx
  a5f61a:	57                                              	push   edi
  a5f61b:	0f 84 c3 00 00 00                               	je     0xa5f6e4
  a5f621:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
  a5f625:	85 ff                                           	test   edi,edi
  a5f627:	0f 84 b7 00 00 00                               	je     0xa5f6e4
  a5f62d:	56                                              	push   esi
  a5f62e:	8d 71 74                                        	lea    esi,[ecx+0x74]
  a5f631:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  a5f635:	50                                              	push   eax
  a5f636:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  a5f63a:	51                                              	push   ecx
  a5f63b:	8b ce                                           	mov    ecx,esi
  a5f63d:	e8 6e c3 ff ff                                  	call   0xa5b9b0
  a5f642:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  a5f645:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  a5f648:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  a5f64c:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  a5f64f:	74 66                                           	je     0xa5f6b7
  a5f651:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  a5f654:	85 c9                                           	test   ecx,ecx
  a5f656:	74 10                                           	je     0xa5f668
  a5f658:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  a5f65a:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  a5f65d:	68 34 0f 42 03                                  	push   0x3420f34
  a5f662:	ff d0                                           	call   eax
  a5f664:	8b f0                                           	mov    esi,eax
  a5f666:	eb 02                                           	jmp    0xa5f66a
  a5f668:	33 f6                                           	xor    esi,esi
  a5f66a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  a5f66c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  a5f66e:	8b ce                                           	mov    ecx,esi
  a5f670:	ff d0                                           	call   eax
  a5f672:	6a 00                                           	push   0x0
  a5f674:	6a 00                                           	push   0x0
  a5f676:	6a 01                                           	push   0x1
  a5f678:	6a 00                                           	push   0x0
  a5f67a:	53                                              	push   ebx
  a5f67b:	57                                              	push   edi
  a5f67c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  a5f680:	e8 3b fe a7 ff                                  	call   0x4df4c0
  a5f685:	6a 00                                           	push   0x0
  a5f687:	6a 00                                           	push   0x0
  a5f689:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  a5f68d:	51                                              	push   ecx
  a5f68e:	8b ce                                           	mov    ecx,esi
  a5f690:	e8 7b 7f ba ff                                  	call   0x607610
  a5f695:	8b 16                                           	mov    edx,DWORD PTR [esi]
  a5f697:	84 c0                                           	test   al,al
  a5f699:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a5f69c:	8b ce                                           	mov    ecx,esi
  a5f69e:	75 22                                           	jne    0xa5f6c2
  a5f6a0:	ff d0                                           	call   eax
  a5f6a2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  a5f6a6:	85 c9                                           	test   ecx,ecx
  a5f6a8:	c7 44 24 14 00 6c fb 00                         	mov    DWORD PTR [esp+0x14],0xfb6c00
  a5f6b0:	74 05                                           	je     0xa5f6b7
  a5f6b2:	e8 49 f7 a7 ff                                  	call   0x4dee00
  a5f6b7:	5e                                              	pop    esi
  a5f6b8:	5f                                              	pop    edi
  a5f6b9:	32 c0                                           	xor    al,al
  a5f6bb:	5b                                              	pop    ebx
  a5f6bc:	83 c4 34                                        	add    esp,0x34
  a5f6bf:	c2 0c 00                                        	ret    0xc
  a5f6c2:	ff d0                                           	call   eax
  a5f6c4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  a5f6c8:	85 c9                                           	test   ecx,ecx
  a5f6ca:	c7 44 24 14 00 6c fb 00                         	mov    DWORD PTR [esp+0x14],0xfb6c00
  a5f6d2:	74 05                                           	je     0xa5f6d9
  a5f6d4:	e8 27 f7 a7 ff                                  	call   0x4dee00
  a5f6d9:	5e                                              	pop    esi
  a5f6da:	5f                                              	pop    edi
  a5f6db:	b0 01                                           	mov    al,0x1
  a5f6dd:	5b                                              	pop    ebx
  a5f6de:	83 c4 34                                        	add    esp,0x34
  a5f6e1:	c2 0c 00                                        	ret    0xc
  a5f6e4:	5f                                              	pop    edi
  a5f6e5:	32 c0                                           	xor    al,al
  a5f6e7:	5b                                              	pop    ebx
  a5f6e8:	83 c4 34                                        	add    esp,0x34
  a5f6eb:	c2 0c 00                                        	ret    0xc
