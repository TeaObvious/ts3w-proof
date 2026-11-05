# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00bea7f0 (RoofHeight_SampleWithFloorFallback)
Paired actual Ghidra pseudocode: 00BEA7F0_RoofHeight_SampleWithFloorFallback.c
Envelope [0x00bea7f0,0x00beaa7e); 654 bytes; exact owned ranges: [0x00bea7f0,0x00beaa7e)
Owned: 654 original bytes / 201 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00bea7f0 <original>:
  bea7f0:	81 ec 40 01 00 00                               	sub    esp,0x140
  bea7f6:	53                                              	push   ebx
  bea7f7:	55                                              	push   ebp
  bea7f8:	56                                              	push   esi
  bea7f9:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  bea7fd:	57                                              	push   edi
  bea7fe:	8b bc 24 54 01 00 00                            	mov    edi,DWORD PTR [esp+0x154]
  bea805:	8b d9                                           	mov    ebx,ecx
  bea807:	8b c8                                           	mov    ecx,eax
  bea809:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  bea80d:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  bea810:	85 c0                                           	test   eax,eax
  bea812:	8d 94 24 50 01 00 00                            	lea    edx,[esp+0x150]
  bea819:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
  bea81d:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  bea821:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  bea825:	c7 44 24 48 60 2f 07 01                         	mov    DWORD PTR [esp+0x48],0x1072f60
  bea82d:	7c 13                                           	jl     0xbea842
  bea82f:	6a 00                                           	push   0x0
  bea831:	50                                              	push   eax
  bea832:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  bea836:	50                                              	push   eax
  bea837:	8b cb                                           	mov    ecx,ebx
  bea839:	e8 22 f9 ff ff                                  	call   0xbea160
  bea83e:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  bea842:	8b 43 28                                        	mov    eax,DWORD PTR [ebx+0x28]
  bea845:	8b b0 30 02 00 00                               	mov    esi,DWORD PTR [eax+0x230]
  bea84b:	85 f6                                           	test   esi,esi
  bea84d:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  bea851:	8b e9                                           	mov    ebp,ecx
  bea853:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  bea857:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  bea85b:	75 22                                           	jne    0xbea87f
  bea85d:	85 c9                                           	test   ecx,ecx
  bea85f:	74 0f                                           	je     0xbea870
  bea861:	3b 4c 24 4c                                     	cmp    ecx,DWORD PTR [esp+0x4c]
  bea865:	74 09                                           	je     0xbea870
  bea867:	51                                              	push   ecx
  bea868:	e8 73 9c 8f ff                                  	call   0x4e44e0
  bea86d:	83 c4 04                                        	add    esp,0x4
  bea870:	d9 ee                                           	fldz
  bea872:	5f                                              	pop    edi
  bea873:	5e                                              	pop    esi
  bea874:	5d                                              	pop    ebp
  bea875:	5b                                              	pop    ebx
  bea876:	81 c4 40 01 00 00                               	add    esp,0x140
  bea87c:	c2 08 00                                        	ret    0x8
  bea87f:	57                                              	push   edi
  bea880:	8b ce                                           	mov    ecx,esi
  bea882:	e8 09 63 eb ff                                  	call   0xaa0b90
  bea887:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  bea88b:	3b 6c 24 2c                                     	cmp    ebp,DWORD PTR [esp+0x2c]
  bea88f:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  bea894:	0f 84 8d 01 00 00                               	je     0xbeaa27
  bea89a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  bea8a0:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  bea8a3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  bea8a7:	51                                              	push   ecx
  bea8a8:	50                                              	push   eax
  bea8a9:	8b cb                                           	mov    ecx,ebx
  bea8ab:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  bea8b3:	e8 18 d7 ff ff                                  	call   0xbe7fd0
  bea8b8:	84 c0                                           	test   al,al
  bea8ba:	75 33                                           	jne    0xbea8ef
  bea8bc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  bea8c0:	85 c9                                           	test   ecx,ecx
  bea8c2:	0f 84 1f 01 00 00                               	je     0xbea9e7
  bea8c8:	8d 41 04                                        	lea    eax,[ecx+0x4]
  bea8cb:	8b d0                                           	mov    edx,eax
  bea8cd:	83 ce ff                                        	or     esi,0xffffffff
  bea8d0:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  bea8d4:	4e                                              	dec    esi
  bea8d5:	0f 85 0c 01 00 00                               	jne    0xbea9e7
  bea8db:	ba 01 00 00 00                                  	mov    edx,0x1
  bea8e0:	87 10                                           	xchg   DWORD PTR [eax],edx
  bea8e2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  bea8e4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  bea8e6:	6a 01                                           	push   0x1
  bea8e8:	ff d2                                           	call   edx
  bea8ea:	e9 f8 00 00 00                                  	jmp    0xbea9e7
  bea8ef:	80 bc 24 58 01 00 00 00                         	cmp    BYTE PTR [esp+0x158],0x0
  bea8f7:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  bea8fb:	74 14                                           	je     0xbea911
  bea8fd:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  bea900:	50                                              	push   eax
  bea901:	e8 1a 86 01 00                                  	call   0xc02f20
  bea906:	83 c4 04                                        	add    esp,0x4
  bea909:	84 c0                                           	test   al,al
  bea90b:	0f 84 b6 00 00 00                               	je     0xbea9c7
  bea911:	80 bc 24 58 01 00 00 00                         	cmp    BYTE PTR [esp+0x158],0x0
  bea919:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  bea91e:	74 12                                           	je     0xbea932
  bea920:	57                                              	push   edi
  bea921:	56                                              	push   esi
  bea922:	e8 49 86 01 00                                  	call   0xc02f70
  bea927:	83 c4 08                                        	add    esp,0x8
  bea92a:	84 c0                                           	test   al,al
  bea92c:	0f 84 91 00 00 00                               	je     0xbea9c3
  bea932:	85 f6                                           	test   esi,esi
  bea934:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [edi]
  bea938:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  bea93e:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [edi+0x4]
  bea943:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  bea949:	0f 57 c0                                        	xorps  xmm0,xmm0
  bea94c:	74 68                                           	je     0xbea9b6
  bea94e:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  bea951:	3b 4e 18                                        	cmp    ecx,DWORD PTR [esi+0x18]
  bea954:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  bea95a:	7d 2d                                           	jge    0xbea989
  bea95c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  bea960:	8b 16                                           	mov    edx,DWORD PTR [esi]
  bea962:	8b 42 50                                        	mov    eax,DWORD PTR [edx+0x50]
  bea965:	83 ec 08                                        	sub    esp,0x8
  bea968:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  bea96c:	8b ce                                           	mov    ecx,esi
  bea96e:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  bea972:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  bea975:	ff d0                                           	call   eax
  bea977:	84 c0                                           	test   al,al
  bea979:	74 0e                                           	je     0xbea989
  bea97b:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  bea983:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  bea989:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  bea98d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  bea98f:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  bea992:	83 ec 0c                                        	sub    esp,0xc
  bea995:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  bea999:	8b ce                                           	mov    ecx,esi
  bea99b:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  bea99f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  bea9a3:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  bea9a7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  bea9aa:	ff d0                                           	call   eax
  bea9ac:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  bea9b0:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  bea9b6:	0f 2f 44 24 18                                  	comiss xmm0,DWORD PTR [esp+0x18]
  bea9bb:	76 06                                           	jbe    0xbea9c3
  bea9bd:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  bea9c3:	85 f6                                           	test   esi,esi
  bea9c5:	74 20                                           	je     0xbea9e7
  bea9c7:	8d 46 04                                        	lea    eax,[esi+0x4]
  bea9ca:	8b c8                                           	mov    ecx,eax
  bea9cc:	83 ca ff                                        	or     edx,0xffffffff
  bea9cf:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  bea9d3:	4a                                              	dec    edx
  bea9d4:	75 11                                           	jne    0xbea9e7
  bea9d6:	b9 01 00 00 00                                  	mov    ecx,0x1
  bea9db:	87 08                                           	xchg   DWORD PTR [eax],ecx
  bea9dd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  bea9df:	8b 02                                           	mov    eax,DWORD PTR [edx]
  bea9e1:	6a 01                                           	push   0x1
  bea9e3:	8b ce                                           	mov    ecx,esi
  bea9e5:	ff d0                                           	call   eax
  bea9e7:	83 c5 04                                        	add    ebp,0x4
  bea9ea:	3b 6c 24 2c                                     	cmp    ebp,DWORD PTR [esp+0x2c]
  bea9ee:	0f 85 ac fe ff ff                               	jne    0xbea8a0
  bea9f4:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  bea9f9:	74 28                                           	je     0xbeaa23
  bea9fb:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  bea9ff:	85 c0                                           	test   eax,eax
  beaa01:	74 0f                                           	je     0xbeaa12
  beaa03:	3b 44 24 4c                                     	cmp    eax,DWORD PTR [esp+0x4c]
  beaa07:	74 09                                           	je     0xbeaa12
  beaa09:	50                                              	push   eax
  beaa0a:	e8 d1 9a 8f ff                                  	call   0x4e44e0
  beaa0f:	83 c4 04                                        	add    esp,0x4
  beaa12:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  beaa16:	5f                                              	pop    edi
  beaa17:	5e                                              	pop    esi
  beaa18:	5d                                              	pop    ebp
  beaa19:	5b                                              	pop    ebx
  beaa1a:	81 c4 40 01 00 00                               	add    esp,0x140
  beaa20:	c2 08 00                                        	ret    0x8
  beaa23:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  beaa27:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  beaa2a:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [edi]
  beaa2e:	83 c1 01                                        	add    ecx,0x1
  beaa31:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  beaa35:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  beaa3b:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [edi+0x4]
  beaa40:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
  beaa44:	52                                              	push   edx
  beaa45:	8b ce                                           	mov    ecx,esi
  beaa47:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  beaa4d:	e8 3e 61 eb ff                                  	call   0xaa0b90
  beaa52:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  beaa56:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  beaa5a:	85 c0                                           	test   eax,eax
  beaa5c:	74 0f                                           	je     0xbeaa6d
  beaa5e:	3b 44 24 4c                                     	cmp    eax,DWORD PTR [esp+0x4c]
  beaa62:	74 09                                           	je     0xbeaa6d
  beaa64:	50                                              	push   eax
  beaa65:	e8 76 9a 8f ff                                  	call   0x4e44e0
  beaa6a:	83 c4 04                                        	add    esp,0x4
  beaa6d:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  beaa71:	5f                                              	pop    edi
  beaa72:	5e                                              	pop    esi
  beaa73:	5d                                              	pop    ebp
  beaa74:	5b                                              	pop    ebx
  beaa75:	81 c4 40 01 00 00                               	add    esp,0x140
  beaa7b:	c2 08 00                                        	ret    0x8
