# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c5a6c0 (WallGraph_BuildProductBuckets)
Paired actual Ghidra pseudocode: 00C5A6C0_WallGraph_BuildProductBuckets.c
Envelope [0x00c5a6c0,0x00c5aa7c); 956 bytes; exact owned ranges: [0x00c5a6c0,0x00c5a96e),[0x00c5a970,0x00c5aa7c)
Owned: 954 original bytes / 290 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c5a6c0 <original>:
  c5a6c0:	81 ec 50 08 00 00                               	sub    esp,0x850
  c5a6c6:	53                                              	push   ebx
  c5a6c7:	55                                              	push   ebp
  c5a6c8:	56                                              	push   esi
  c5a6c9:	8b f1                                           	mov    esi,ecx
  c5a6cb:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  c5a6ce:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  c5a6d1:	8b 50 6c                                        	mov    edx,DWORD PTR [eax+0x6c]
  c5a6d4:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  c5a6d8:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
  c5a6db:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  c5a6df:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  c5a6e2:	57                                              	push   edi
  c5a6e3:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  c5a6e7:	89 96 3c 01 00 00                               	mov    DWORD PTR [esi+0x13c],edx
  c5a6ed:	8d 9e 70 02 00 00                               	lea    ebx,[esi+0x270]
  c5a6f3:	bd 07 00 00 00                                  	mov    ebp,0x7
  c5a6f8:	6a 00                                           	push   0x0
  c5a6fa:	6a 00                                           	push   0x0
  c5a6fc:	6a 00                                           	push   0x0
  c5a6fe:	6a 00                                           	push   0x0
  c5a700:	68 60 93 07 01                                  	push   0x1079360
  c5a705:	6a 64                                           	push   0x64
  c5a707:	e8 f4 9d 88 ff                                  	call   0x4e4500
  c5a70c:	83 c4 18                                        	add    esp,0x18
  c5a70f:	85 c0                                           	test   eax,eax
  c5a711:	74 19                                           	je     0xc5a72c
  c5a713:	8d 8e 60 02 00 00                               	lea    ecx,[esi+0x260]
  c5a719:	51                                              	push   ecx
  c5a71a:	8d 96 50 02 00 00                               	lea    edx,[esi+0x250]
  c5a720:	52                                              	push   edx
  c5a721:	8b c8                                           	mov    ecx,eax
  c5a723:	e8 d8 61 fe ff                                  	call   0xc40900
  c5a728:	8b f8                                           	mov    edi,eax
  c5a72a:	eb 02                                           	jmp    0xc5a72e
  c5a72c:	33 ff                                           	xor    edi,edi
  c5a72e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c5a732:	50                                              	push   eax
  c5a733:	8b cf                                           	mov    ecx,edi
  c5a735:	e8 96 74 fe ff                                  	call   0xc41bd0
  c5a73a:	8b cf                                           	mov    ecx,edi
  c5a73c:	e8 ef a1 fe ff                                  	call   0xc44930
  c5a741:	89 3b                                           	mov    DWORD PTR [ebx],edi
  c5a743:	83 c3 04                                        	add    ebx,0x4
  c5a746:	83 ed 01                                        	sub    ebp,0x1
  c5a749:	75 ad                                           	jne    0xc5a6f8
  c5a74b:	8d 7c 24 44                                     	lea    edi,[esp+0x44]
  c5a74f:	8d 5d 06                                        	lea    ebx,[ebp+0x6]
  c5a752:	8b cf                                           	mov    ecx,edi
  c5a754:	e8 37 a3 ff ff                                  	call   0xc54a90
  c5a759:	81 c7 28 01 00 00                               	add    edi,0x128
  c5a75f:	83 eb 01                                        	sub    ebx,0x1
  c5a762:	79 ee                                           	jns    0xc5a752
  c5a764:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  c5a768:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  c5a76c:	51                                              	push   ecx
  c5a76d:	52                                              	push   edx
  c5a76e:	8d 8e bc 01 00 00                               	lea    ecx,[esi+0x1bc]
  c5a774:	c6 84 24 64 08 00 00 00                         	mov    BYTE PTR [esp+0x864],0x0
  c5a77c:	e8 6f fe ff ff                                  	call   0xc5a5f0
  c5a781:	8d bc 24 5c 08 00 00                            	lea    edi,[esp+0x85c]
  c5a788:	bb 06 00 00 00                                  	mov    ebx,0x6
  c5a78d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  c5a790:	81 ef 28 01 00 00                               	sub    edi,0x128
  c5a796:	8b cf                                           	mov    ecx,edi
  c5a798:	e8 c3 8f ff ff                                  	call   0xc53760
  c5a79d:	83 eb 01                                        	sub    ebx,0x1
  c5a7a0:	79 ee                                           	jns    0xc5a790
  c5a7a2:	8b be 3c 01 00 00                               	mov    edi,DWORD PTR [esi+0x13c]
  c5a7a8:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
  c5a7ac:	3b fb                                           	cmp    edi,ebx
  c5a7ae:	7f 0f                                           	jg     0xc5a7bf
  c5a7b0:	57                                              	push   edi
  c5a7b1:	8b ce                                           	mov    ecx,esi
  c5a7b3:	e8 88 2d ff ff                                  	call   0xc4d540
  c5a7b8:	83 c7 01                                        	add    edi,0x1
  c5a7bb:	3b fb                                           	cmp    edi,ebx
  c5a7bd:	7e f1                                           	jle    0xc5a7b0
  c5a7bf:	8b ce                                           	mov    ecx,esi
  c5a7c1:	e8 da 18 ff ff                                  	call   0xc4c0a0
  c5a7c6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c5a7ca:	8b 98 98 02 00 00                               	mov    ebx,DWORD PTR [eax+0x298]
  c5a7d0:	8b cb                                           	mov    ecx,ebx
  c5a7d2:	e8 69 d6 ee ff                                  	call   0xb47e40
  c5a7d7:	8b e8                                           	mov    ebp,eax
  c5a7d9:	8b cb                                           	mov    ecx,ebx
  c5a7db:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  c5a7df:	e8 2c d9 ee ff                                  	call   0xb48110
  c5a7e4:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  c5a7e8:	03 c5                                           	add    eax,ebp
  c5a7ea:	8d be 40 01 00 00                               	lea    edi,[esi+0x140]
  c5a7f0:	50                                              	push   eax
  c5a7f1:	8b cf                                           	mov    ecx,edi
  c5a7f3:	e8 a8 48 ff ff                                  	call   0xc4f0a0
  c5a7f8:	0c ff                                           	or     al,0xff
  c5a7fa:	88 44 24 14                                     	mov    BYTE PTR [esp+0x14],al
  c5a7fe:	88 44 24 15                                     	mov    BYTE PTR [esp+0x15],al
  c5a802:	88 44 24 17                                     	mov    BYTE PTR [esp+0x17],al
  c5a806:	88 44 24 18                                     	mov    BYTE PTR [esp+0x18],al
  c5a80a:	33 c0                                           	xor    eax,eax
  c5a80c:	3b e8                                           	cmp    ebp,eax
  c5a80e:	c6 44 24 16 00                                  	mov    BYTE PTR [esp+0x16],0x0
  c5a813:	c6 44 24 19 00                                  	mov    BYTE PTR [esp+0x19],0x0
  c5a818:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  c5a81c:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  c5a820:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  c5a824:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  c5a828:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  c5a82c:	0f 8e 0b 01 00 00                               	jle    0xc5a93d
  c5a832:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c5a836:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  c5a83a:	51                                              	push   ecx
  c5a83b:	52                                              	push   edx
  c5a83c:	8b cb                                           	mov    ecx,ebx
  c5a83e:	e8 1d d6 ee ff                                  	call   0xb47e60
  c5a843:	6a 00                                           	push   0x0
  c5a845:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  c5a849:	50                                              	push   eax
  c5a84a:	8b cb                                           	mov    ecx,ebx
  c5a84c:	e8 9f d5 ee ff                                  	call   0xb47df0
  c5a851:	50                                              	push   eax
  c5a852:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  c5a856:	51                                              	push   ecx
  c5a857:	8b ce                                           	mov    ecx,esi
  c5a859:	e8 d2 05 ff ff                                  	call   0xc4ae30
  c5a85e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c5a860:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  c5a864:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  c5a867:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  c5a86b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  c5a86e:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  c5a872:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c5a875:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  c5a879:	51                                              	push   ecx
  c5a87a:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  c5a87e:	e8 7d 0d 00 00                                  	call   0xc5b600
  c5a883:	8b e8                                           	mov    ebp,eax
  c5a885:	83 c4 04                                        	add    esp,0x4
  c5a888:	85 ed                                           	test   ebp,ebp
  c5a88a:	0f 84 98 00 00 00                               	je     0xc5a928
  c5a890:	8b 95 90 00 00 00                               	mov    edx,DWORD PTR [ebp+0x90]
  c5a896:	c1 ea 0b                                        	shr    edx,0xb
  c5a899:	f6 c2 01                                        	test   dl,0x1
  c5a89c:	0f 84 86 00 00 00                               	je     0xc5a928
  c5a8a2:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  c5a8a6:	50                                              	push   eax
  c5a8a7:	e8 44 0e 00 00                                  	call   0xc5b6f0
  c5a8ac:	83 c4 04                                        	add    esp,0x4
  c5a8af:	84 c0                                           	test   al,al
  c5a8b1:	75 11                                           	jne    0xc5a8c4
  c5a8b3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  c5a8b7:	51                                              	push   ecx
  c5a8b8:	e8 73 0f 00 00                                  	call   0xc5b830
  c5a8bd:	83 c4 04                                        	add    esp,0x4
  c5a8c0:	84 c0                                           	test   al,al
  c5a8c2:	74 64                                           	je     0xc5a928
  c5a8c4:	55                                              	push   ebp
  c5a8c5:	e8 16 06 ff ff                                  	call   0xc4aee0
  c5a8ca:	8b 8c 86 70 02 00 00                            	mov    ecx,DWORD PTR [esi+eax*4+0x270]
  c5a8d1:	83 c4 04                                        	add    esp,0x4
  c5a8d4:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  c5a8d8:	52                                              	push   edx
  c5a8d9:	e8 32 a1 fe ff                                  	call   0xc44a10
  c5a8de:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  c5a8e1:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  c5a8e4:	73 35                                           	jae    0xc5a91b
  c5a8e6:	85 c0                                           	test   eax,eax
  c5a8e8:	8d 48 18                                        	lea    ecx,[eax+0x18]
  c5a8eb:	89 4f 04                                        	mov    DWORD PTR [edi+0x4],ecx
  c5a8ee:	74 38                                           	je     0xc5a928
  c5a8f0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  c5a8f4:	89 10                                           	mov    DWORD PTR [eax],edx
  c5a8f6:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  c5a8fa:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  c5a8fd:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  c5a901:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  c5a904:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  c5a908:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  c5a90b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  c5a90f:	89 50 10                                        	mov    DWORD PTR [eax+0x10],edx
  c5a912:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  c5a916:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  c5a919:	eb 0d                                           	jmp    0xc5a928
  c5a91b:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  c5a91f:	52                                              	push   edx
  c5a920:	50                                              	push   eax
  c5a921:	8b cf                                           	mov    ecx,edi
  c5a923:	e8 68 cb 8a ff                                  	call   0x507490
  c5a928:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c5a92c:	83 c0 01                                        	add    eax,0x1
  c5a92f:	3b 44 24 2c                                     	cmp    eax,DWORD PTR [esp+0x2c]
  c5a933:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  c5a937:	0f 8c f5 fe ff ff                               	jl     0xc5a832
  c5a93d:	e8 ce 11 00 00                                  	call   0xc5bb10
  c5a942:	83 7c 24 30 00                                  	cmp    DWORD PTR [esp+0x30],0x0
  c5a947:	8b e8                                           	mov    ebp,eax
  c5a949:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  c5a94d:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  c5a955:	7f 1d                                           	jg     0xc5a974
  c5a957:	8b 86 3c 01 00 00                               	mov    eax,DWORD PTR [esi+0x13c]
  c5a95d:	5f                                              	pop    edi
  c5a95e:	89 86 50 01 00 00                               	mov    DWORD PTR [esi+0x150],eax
  c5a964:	5e                                              	pop    esi
  c5a965:	5d                                              	pop    ebp
  c5a966:	5b                                              	pop    ebx
  c5a967:	81 c4 50 08 00 00                               	add    esp,0x850
  c5a96d:	c3                                              	ret
  c5a96e:	8b ff                                           	mov    edi,edi
  c5a970:	8b 6c 24 2c                                     	mov    ebp,DWORD PTR [esp+0x2c]
  c5a974:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c5a978:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  c5a97c:	50                                              	push   eax
  c5a97d:	51                                              	push   ecx
  c5a97e:	8b cb                                           	mov    ecx,ebx
  c5a980:	e8 ab d7 ee ff                                  	call   0xb48130
  c5a985:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  c5a988:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  c5a98c:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  c5a98f:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  c5a993:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  c5a996:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  c5a99a:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  c5a99d:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  c5a9a1:	50                                              	push   eax
  c5a9a2:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  c5a9a6:	e8 55 0c 00 00                                  	call   0xc5b600
  c5a9ab:	8b e8                                           	mov    ebp,eax
  c5a9ad:	83 c4 04                                        	add    esp,0x4
  c5a9b0:	85 ed                                           	test   ebp,ebp
  c5a9b2:	0f 84 98 00 00 00                               	je     0xc5aa50
  c5a9b8:	8b 8d 90 00 00 00                               	mov    ecx,DWORD PTR [ebp+0x90]
  c5a9be:	c1 e9 0b                                        	shr    ecx,0xb
  c5a9c1:	f6 c1 01                                        	test   cl,0x1
  c5a9c4:	0f 84 86 00 00 00                               	je     0xc5aa50
  c5a9ca:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  c5a9ce:	52                                              	push   edx
  c5a9cf:	e8 1c 0d 00 00                                  	call   0xc5b6f0
  c5a9d4:	83 c4 04                                        	add    esp,0x4
  c5a9d7:	84 c0                                           	test   al,al
  c5a9d9:	75 11                                           	jne    0xc5a9ec
  c5a9db:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  c5a9df:	50                                              	push   eax
  c5a9e0:	e8 4b 0e 00 00                                  	call   0xc5b830
  c5a9e5:	83 c4 04                                        	add    esp,0x4
  c5a9e8:	84 c0                                           	test   al,al
  c5a9ea:	74 64                                           	je     0xc5aa50
  c5a9ec:	55                                              	push   ebp
  c5a9ed:	e8 ee 04 ff ff                                  	call   0xc4aee0
  c5a9f2:	83 c4 04                                        	add    esp,0x4
  c5a9f5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  c5a9f9:	51                                              	push   ecx
  c5a9fa:	8b 8c 86 70 02 00 00                            	mov    ecx,DWORD PTR [esi+eax*4+0x270]
  c5aa01:	e8 0a a0 fe ff                                  	call   0xc44a10
  c5aa06:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  c5aa09:	3b 47 08                                        	cmp    eax,DWORD PTR [edi+0x8]
  c5aa0c:	73 35                                           	jae    0xc5aa43
  c5aa0e:	85 c0                                           	test   eax,eax
  c5aa10:	8d 50 18                                        	lea    edx,[eax+0x18]
  c5aa13:	89 57 04                                        	mov    DWORD PTR [edi+0x4],edx
  c5aa16:	74 38                                           	je     0xc5aa50
  c5aa18:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  c5aa1c:	89 08                                           	mov    DWORD PTR [eax],ecx
  c5aa1e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  c5aa22:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  c5aa25:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  c5aa29:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  c5aa2c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  c5aa30:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  c5aa33:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c5aa37:	89 48 10                                        	mov    DWORD PTR [eax+0x10],ecx
  c5aa3a:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  c5aa3e:	89 50 14                                        	mov    DWORD PTR [eax+0x14],edx
  c5aa41:	eb 0d                                           	jmp    0xc5aa50
  c5aa43:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  c5aa47:	51                                              	push   ecx
  c5aa48:	50                                              	push   eax
  c5aa49:	8b cf                                           	mov    ecx,edi
  c5aa4b:	e8 40 ca 8a ff                                  	call   0x507490
  c5aa50:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c5aa54:	83 c0 01                                        	add    eax,0x1
  c5aa57:	3b 44 24 30                                     	cmp    eax,DWORD PTR [esp+0x30]
  c5aa5b:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  c5aa5f:	0f 8c 0b ff ff ff                               	jl     0xc5a970
  c5aa65:	8b 96 3c 01 00 00                               	mov    edx,DWORD PTR [esi+0x13c]
  c5aa6b:	5f                                              	pop    edi
  c5aa6c:	89 96 50 01 00 00                               	mov    DWORD PTR [esi+0x150],edx
  c5aa72:	5e                                              	pop    esi
  c5aa73:	5d                                              	pop    ebp
  c5aa74:	5b                                              	pop    ebx
  c5aa75:	81 c4 50 08 00 00                               	add    esp,0x850
  c5aa7b:	c3                                              	ret
