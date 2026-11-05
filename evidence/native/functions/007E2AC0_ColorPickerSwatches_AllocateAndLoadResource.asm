# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007e2ac0 (ColorPickerSwatches_AllocateAndLoadResource)
Paired actual Ghidra pseudocode: 007E2AC0_ColorPickerSwatches_AllocateAndLoadResource.c
Envelope [0x007e2ac0,0x007e2bac); 236 bytes; exact owned ranges: [0x007e2ac0,0x007e2bac)
Owned: 236 original bytes / 101 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007e2ac0 <original>:
  7e2ac0:	53                                              	push   ebx
  7e2ac1:	55                                              	push   ebp
  7e2ac2:	56                                              	push   esi
  7e2ac3:	33 db                                           	xor    ebx,ebx
  7e2ac5:	83 7c 24 1c ff                                  	cmp    DWORD PTR [esp+0x1c],0xffffffff
  7e2aca:	57                                              	push   edi
  7e2acb:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  7e2acf:	8b e9                                           	mov    ebp,ecx
  7e2ad1:	75 14                                           	jne    0x7e2ae7
  7e2ad3:	3b fb                                           	cmp    edi,ebx
  7e2ad5:	74 10                                           	je     0x7e2ae7
  7e2ad7:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7e2ad9:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  7e2adc:	8b cf                                           	mov    ecx,edi
  7e2ade:	ff d2                                           	call   edx
  7e2ae0:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7e2ae3:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7e2ae7:	53                                              	push   ebx
  7e2ae8:	53                                              	push   ebx
  7e2ae9:	53                                              	push   ebx
  7e2aea:	53                                              	push   ebx
  7e2aeb:	68 c0 c5 01 01                                  	push   0x101c5c0
  7e2af0:	68 b8 01 00 00                                  	push   0x1b8
  7e2af5:	e8 06 1a d0 ff                                  	call   0x4e4500
  7e2afa:	8b f0                                           	mov    esi,eax
  7e2afc:	83 c4 18                                        	add    esp,0x18
  7e2aff:	3b f3                                           	cmp    esi,ebx
  7e2b01:	0f 84 93 00 00 00                               	je     0x7e2b9a
  7e2b07:	c7 06 14 3c fb 00                               	mov    DWORD PTR [esi],0xfb3c14
  7e2b0d:	33 c9                                           	xor    ecx,ecx
  7e2b0f:	8d 56 04                                        	lea    edx,[esi+0x4]
  7e2b12:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  7e2b14:	89 5e 08                                        	mov    DWORD PTR [esi+0x8],ebx
  7e2b17:	89 5e 0c                                        	mov    DWORD PTR [esi+0xc],ebx
  7e2b1a:	89 5e 10                                        	mov    DWORD PTR [esi+0x10],ebx
  7e2b1d:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  7e2b20:	68 90 01 00 00                                  	push   0x190
  7e2b25:	8d 46 28                                        	lea    eax,[esi+0x28]
  7e2b28:	53                                              	push   ebx
  7e2b29:	50                                              	push   eax
  7e2b2a:	89 5e 20                                        	mov    DWORD PTR [esi+0x20],ebx
  7e2b2d:	89 5e 24                                        	mov    DWORD PTR [esi+0x24],ebx
  7e2b30:	89 5e 1c                                        	mov    DWORD PTR [esi+0x1c],ebx
  7e2b33:	89 5e 18                                        	mov    DWORD PTR [esi+0x18],ebx
  7e2b36:	c7 06 a8 c5 01 01                               	mov    DWORD PTR [esi],0x101c5a8
  7e2b3c:	e8 57 c7 79 00                                  	call   0xf7f298
  7e2b41:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7e2b43:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7e2b45:	83 c4 0c                                        	add    esp,0xc
  7e2b48:	8b ce                                           	mov    ecx,esi
  7e2b4a:	ff d0                                           	call   eax
  7e2b4c:	3b fb                                           	cmp    edi,ebx
  7e2b4e:	74 3b                                           	je     0x7e2b8b
  7e2b50:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7e2b54:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7e2b58:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7e2b5b:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  7e2b5e:	50                                              	push   eax
  7e2b5f:	51                                              	push   ecx
  7e2b60:	56                                              	push   esi
  7e2b61:	57                                              	push   edi
  7e2b62:	8b cd                                           	mov    ecx,ebp
  7e2b64:	ff d2                                           	call   edx
  7e2b66:	84 c0                                           	test   al,al
  7e2b68:	74 0f                                           	je     0x7e2b79
  7e2b6a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7e2b6e:	5f                                              	pop    edi
  7e2b6f:	89 30                                           	mov    DWORD PTR [eax],esi
  7e2b71:	5e                                              	pop    esi
  7e2b72:	5d                                              	pop    ebp
  7e2b73:	b0 01                                           	mov    al,0x1
  7e2b75:	5b                                              	pop    ebx
  7e2b76:	c2 10 00                                        	ret    0x10
  7e2b79:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7e2b7b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7e2b7e:	8b ce                                           	mov    ecx,esi
  7e2b80:	ff d0                                           	call   eax
  7e2b82:	5f                                              	pop    edi
  7e2b83:	5e                                              	pop    esi
  7e2b84:	5d                                              	pop    ebp
  7e2b85:	32 c0                                           	xor    al,al
  7e2b87:	5b                                              	pop    ebx
  7e2b88:	c2 10 00                                        	ret    0x10
  7e2b8b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7e2b8f:	5f                                              	pop    edi
  7e2b90:	89 31                                           	mov    DWORD PTR [ecx],esi
  7e2b92:	5e                                              	pop    esi
  7e2b93:	5d                                              	pop    ebp
  7e2b94:	b0 01                                           	mov    al,0x1
  7e2b96:	5b                                              	pop    ebx
  7e2b97:	c2 10 00                                        	ret    0x10
  7e2b9a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7e2b9c:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  7e2b9f:	8b cf                                           	mov    ecx,edi
  7e2ba1:	ff d0                                           	call   eax
  7e2ba3:	5f                                              	pop    edi
  7e2ba4:	5e                                              	pop    esi
  7e2ba5:	5d                                              	pop    ebp
  7e2ba6:	32 c0                                           	xor    al,al
  7e2ba8:	5b                                              	pop    ebx
  7e2ba9:	c2 10 00                                        	ret    0x10
