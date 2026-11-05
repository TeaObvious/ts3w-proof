# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf1bd0 (RoofHippedAtlas_TwoDiagonalB)
Complete Ghidra function body: 0x00bf1bd0..0x00bf1cb3 (exclusive end)
Ghidra body ranges: [[00bf1bd0, 00bf1cb2]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf1bd0 <.text+0x7f0bd0>:
  bf1bd0:	53                                              	push   ebx
  bf1bd1:	55                                              	push   ebp
  bf1bd2:	56                                              	push   esi
  bf1bd3:	8b f1                                           	mov    esi,ecx
  bf1bd5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf1bd7:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  bf1bda:	57                                              	push   edi
  bf1bdb:	ff d2                                           	call   edx
  bf1bdd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf1bdf:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  bf1be2:	8b ce                                           	mov    ecx,esi
  bf1be4:	ff d2                                           	call   edx
  bf1be6:	8d 6e 30                                        	lea    ebp,[esi+0x30]
  bf1be9:	33 db                                           	xor    ebx,ebx
  bf1beb:	55                                              	push   ebp
  bf1bec:	8b f8                                           	mov    edi,eax
  bf1bee:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  bf1bf1:	e8 ea 11 01 00                                  	call   0xc02de0
  bf1bf6:	83 c4 04                                        	add    esp,0x4
  bf1bf9:	84 c0                                           	test   al,al
  bf1bfb:	74 51                                           	je     0xbf1c4e
  bf1bfd:	83 ff 02                                        	cmp    edi,0x2
  bf1c00:	75 2c                                           	jne    0xbf1c2e
  bf1c02:	8b 46 50                                        	mov    eax,DWORD PTR [esi+0x50]
  bf1c05:	c1 e8 02                                        	shr    eax,0x2
  bf1c08:	a8 01                                           	test   al,0x1
  bf1c0a:	0f 84 9e 00 00 00                               	je     0xbf1cae
  bf1c10:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  bf1c13:	c1 e9 02                                        	shr    ecx,0x2
  bf1c16:	f6 c1 01                                        	test   cl,0x1
  bf1c19:	0f 84 8f 00 00 00                               	je     0xbf1cae
  bf1c1f:	5f                                              	pop    edi
  bf1c20:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1c23:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf1c2a:	5e                                              	pop    esi
  bf1c2b:	5d                                              	pop    ebp
  bf1c2c:	5b                                              	pop    ebx
  bf1c2d:	c3                                              	ret
  bf1c2e:	83 ff 01                                        	cmp    edi,0x1
  bf1c31:	75 7b                                           	jne    0xbf1cae
  bf1c33:	8b 56 50                                        	mov    edx,DWORD PTR [esi+0x50]
  bf1c36:	c1 ea 02                                        	shr    edx,0x2
  bf1c39:	f6 c2 01                                        	test   dl,0x1
  bf1c3c:	74 70                                           	je     0xbf1cae
  bf1c3e:	5f                                              	pop    edi
  bf1c3f:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf1c46:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf1c4a:	5e                                              	pop    esi
  bf1c4b:	5d                                              	pop    ebp
  bf1c4c:	5b                                              	pop    ebx
  bf1c4d:	c3                                              	ret
  bf1c4e:	55                                              	push   ebp
  bf1c4f:	e8 7c 12 01 00                                  	call   0xc02ed0
  bf1c54:	83 c4 04                                        	add    esp,0x4
  bf1c57:	84 c0                                           	test   al,al
  bf1c59:	74 53                                           	je     0xbf1cae
  bf1c5b:	83 ff 01                                        	cmp    edi,0x1
  bf1c5e:	75 19                                           	jne    0xbf1c79
  bf1c60:	8b 46 60                                        	mov    eax,DWORD PTR [esi+0x60]
  bf1c63:	c1 e8 02                                        	shr    eax,0x2
  bf1c66:	a8 01                                           	test   al,0x1
  bf1c68:	74 3a                                           	je     0xbf1ca4
  bf1c6a:	5f                                              	pop    edi
  bf1c6b:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1c6e:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf1c75:	5e                                              	pop    esi
  bf1c76:	5d                                              	pop    ebp
  bf1c77:	5b                                              	pop    ebx
  bf1c78:	c3                                              	ret
  bf1c79:	83 ff 02                                        	cmp    edi,0x2
  bf1c7c:	75 26                                           	jne    0xbf1ca4
  bf1c7e:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  bf1c81:	c1 e9 02                                        	shr    ecx,0x2
  bf1c84:	f6 c1 01                                        	test   cl,0x1
  bf1c87:	74 1b                                           	je     0xbf1ca4
  bf1c89:	8b 56 60                                        	mov    edx,DWORD PTR [esi+0x60]
  bf1c8c:	c1 ea 02                                        	shr    edx,0x2
  bf1c8f:	f6 c2 01                                        	test   dl,0x1
  bf1c92:	74 10                                           	je     0xbf1ca4
  bf1c94:	5f                                              	pop    edi
  bf1c95:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf1c9c:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf1ca0:	5e                                              	pop    esi
  bf1ca1:	5d                                              	pop    ebp
  bf1ca2:	5b                                              	pop    ebx
  bf1ca3:	c3                                              	ret
  bf1ca4:	c7 46 40 52 00 00 00                            	mov    DWORD PTR [esi+0x40],0x52
  bf1cab:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf1cae:	5f                                              	pop    edi
  bf1caf:	5e                                              	pop    esi
  bf1cb0:	5d                                              	pop    ebp
  bf1cb1:	5b                                              	pop    ebx
  bf1cb2:	c3                                              	ret
