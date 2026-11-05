# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c5a00 (Sims3Pack_ParsePackagedFileFields)
Full Ghidra function-body envelope: 0x009c5a00..0x009c5cc6 (exclusive end)
Ghidra body ranges: [[009c5a00, 009c5cc5]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c5a00 <.text+0x5c4a00>:
  9c5a00:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  9c5a04:	83 ec 30                                        	sub    esp,0x30
  9c5a07:	85 c0                                           	test   eax,eax
  9c5a09:	0f 84 af 02 00 00                               	je     0x9c5cbe
  9c5a0f:	83 c0 24                                        	add    eax,0x24
  9c5a12:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5a14:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  9c5a18:	0f 84 a0 02 00 00                               	je     0x9c5cbe
  9c5a1e:	53                                              	push   ebx
  9c5a1f:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  9c5a21:	3b d8                                           	cmp    ebx,eax
  9c5a23:	0f 84 8c 02 00 00                               	je     0x9c5cb5
  9c5a29:	55                                              	push   ebp
  9c5a2a:	8b 6c 24 3c                                     	mov    ebp,DWORD PTR [esp+0x3c]
  9c5a2e:	56                                              	push   esi
  9c5a2f:	57                                              	push   edi
  9c5a30:	8b 7b 08                                        	mov    edi,DWORD PTR [ebx+0x8]
  9c5a33:	83 7f 04 02                                     	cmp    DWORD PTR [edi+0x4],0x2
  9c5a37:	0f 85 69 02 00 00                               	jne    0x9c5ca6
  9c5a3d:	8d 77 08                                        	lea    esi,[edi+0x8]
  9c5a40:	68 d0 0d 05 01                                  	push   0x1050dd0
  9c5a45:	8b ce                                           	mov    ecx,esi
  9c5a47:	e8 34 97 ad ff                                  	call   0x49f180
  9c5a4c:	85 c0                                           	test   eax,eax
  9c5a4e:	75 56                                           	jne    0x9c5aa6
  9c5a50:	8d 47 24                                        	lea    eax,[edi+0x24]
  9c5a53:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5a55:	0f 84 4b 02 00 00                               	je     0x9c5ca6
  9c5a5b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c5a5d:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c5a60:	85 c0                                           	test   eax,eax
  9c5a62:	0f 84 3e 02 00 00                               	je     0x9c5ca6
  9c5a68:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c5a6b:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c5a6e:	0f 84 32 02 00 00                               	je     0x9c5ca6
  9c5a74:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c5a77:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
  9c5a7a:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c5a7d:	6a 00                                           	push   0x0
  9c5a7f:	51                                              	push   ecx
  9c5a80:	50                                              	push   eax
  9c5a81:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  9c5a85:	52                                              	push   edx
  9c5a86:	e8 c5 e0 b2 ff                                  	call   0x4f3b50
  9c5a8b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c5a8d:	83 c4 10                                        	add    esp,0x10
  9c5a90:	50                                              	push   eax
  9c5a91:	8b cd                                           	mov    ecx,ebp
  9c5a93:	e8 b8 f6 ff ff                                  	call   0x9c5150
  9c5a98:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  9c5a9c:	e8 4f 9e b2 ff                                  	call   0x4ef8f0
  9c5aa1:	e9 00 02 00 00                                  	jmp    0x9c5ca6
  9c5aa6:	68 c8 0d 05 01                                  	push   0x1050dc8
  9c5aab:	8b ce                                           	mov    ecx,esi
  9c5aad:	e8 ce 96 ad ff                                  	call   0x49f180
  9c5ab2:	85 c0                                           	test   eax,eax
  9c5ab4:	75 3b                                           	jne    0x9c5af1
  9c5ab6:	8d 47 24                                        	lea    eax,[edi+0x24]
  9c5ab9:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5abb:	0f 84 e5 01 00 00                               	je     0x9c5ca6
  9c5ac1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  9c5ac3:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c5ac6:	85 c0                                           	test   eax,eax
  9c5ac8:	0f 84 d8 01 00 00                               	je     0x9c5ca6
  9c5ace:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c5ad1:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c5ad4:	0f 84 cc 01 00 00                               	je     0x9c5ca6
  9c5ada:	6a 0a                                           	push   0xa
  9c5adc:	8b c2                                           	mov    eax,edx
  9c5ade:	6a 00                                           	push   0x0
  9c5ae0:	50                                              	push   eax
  9c5ae1:	e8 ca a0 b3 ff                                  	call   0x4ffbb0
  9c5ae6:	83 c4 0c                                        	add    esp,0xc
  9c5ae9:	89 45 20                                        	mov    DWORD PTR [ebp+0x20],eax
  9c5aec:	e9 b5 01 00 00                                  	jmp    0x9c5ca6
  9c5af1:	68 c4 0d 05 01                                  	push   0x1050dc4
  9c5af6:	8b ce                                           	mov    ecx,esi
  9c5af8:	e8 83 96 ad ff                                  	call   0x49f180
  9c5afd:	85 c0                                           	test   eax,eax
  9c5aff:	75 3e                                           	jne    0x9c5b3f
  9c5b01:	8d 47 24                                        	lea    eax,[edi+0x24]
  9c5b04:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5b06:	0f 84 9a 01 00 00                               	je     0x9c5ca6
  9c5b0c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c5b0e:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c5b11:	85 c0                                           	test   eax,eax
  9c5b13:	0f 84 8d 01 00 00                               	je     0x9c5ca6
  9c5b19:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c5b1c:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c5b1f:	0f 84 81 01 00 00                               	je     0x9c5ca6
  9c5b25:	6a 10                                           	push   0x10
  9c5b27:	8b c1                                           	mov    eax,ecx
  9c5b29:	6a 00                                           	push   0x0
  9c5b2b:	50                                              	push   eax
  9c5b2c:	e8 7f a0 b3 ff                                  	call   0x4ffbb0
  9c5b31:	83 c4 0c                                        	add    esp,0xc
  9c5b34:	89 45 18                                        	mov    DWORD PTR [ebp+0x18],eax
  9c5b37:	89 55 1c                                        	mov    DWORD PTR [ebp+0x1c],edx
  9c5b3a:	e9 67 01 00 00                                  	jmp    0x9c5ca6
  9c5b3f:	68 bc 0d 05 01                                  	push   0x1050dbc
  9c5b44:	8b ce                                           	mov    ecx,esi
  9c5b46:	e8 35 96 ad ff                                  	call   0x49f180
  9c5b4b:	85 c0                                           	test   eax,eax
  9c5b4d:	75 55                                           	jne    0x9c5ba4
  9c5b4f:	8d 47 24                                        	lea    eax,[edi+0x24]
  9c5b52:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5b54:	0f 84 4c 01 00 00                               	je     0x9c5ca6
  9c5b5a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9c5b5c:	8b 72 08                                        	mov    esi,DWORD PTR [edx+0x8]
  9c5b5f:	85 f6                                           	test   esi,esi
  9c5b61:	0f 84 3f 01 00 00                               	je     0x9c5ca6
  9c5b67:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  9c5b6a:	3b 46 0c                                        	cmp    eax,DWORD PTR [esi+0xc]
  9c5b6d:	0f 84 33 01 00 00                               	je     0x9c5ca6
  9c5b73:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  9c5b77:	e8 84 b0 b3 ff                                  	call   0x500c00
  9c5b7c:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  9c5b7f:	6a 10                                           	push   0x10
  9c5b81:	6a 00                                           	push   0x0
  9c5b83:	51                                              	push   ecx
  9c5b84:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  9c5b88:	52                                              	push   edx
  9c5b89:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  9c5b8d:	e8 0e bb b3 ff                                  	call   0x5016a0
  9c5b92:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  9c5b96:	50                                              	push   eax
  9c5b97:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  9c5b9a:	e8 f1 b0 b3 ff                                  	call   0x500c90
  9c5b9f:	e9 02 01 00 00                                  	jmp    0x9c5ca6
  9c5ba4:	68 f4 3d fc 00                                  	push   0xfc3df4
  9c5ba9:	8b ce                                           	mov    ecx,esi
  9c5bab:	e8 d0 95 ad ff                                  	call   0x49f180
  9c5bb0:	85 c0                                           	test   eax,eax
  9c5bb2:	75 3b                                           	jne    0x9c5bef
  9c5bb4:	8d 47 24                                        	lea    eax,[edi+0x24]
  9c5bb7:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c5bb9:	0f 84 e7 00 00 00                               	je     0x9c5ca6
  9c5bbf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  9c5bc1:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c5bc4:	85 c0                                           	test   eax,eax
  9c5bc6:	0f 84 da 00 00 00                               	je     0x9c5ca6
  9c5bcc:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c5bcf:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c5bd2:	0f 84 ce 00 00 00                               	je     0x9c5ca6
  9c5bd8:	6a 0a                                           	push   0xa
  9c5bda:	8b c2                                           	mov    eax,edx
  9c5bdc:	6a 00                                           	push   0x0
  9c5bde:	50                                              	push   eax
  9c5bdf:	e8 cc 9f b3 ff                                  	call   0x4ffbb0
  9c5be4:	83 c4 0c                                        	add    esp,0xc
  9c5be7:	89 45 24                                        	mov    DWORD PTR [ebp+0x24],eax
  9c5bea:	e9 b7 00 00 00                                  	jmp    0x9c5ca6
  9c5bef:	68 b0 0d 05 01                                  	push   0x1050db0
  9c5bf4:	8b ce                                           	mov    ecx,esi
  9c5bf6:	e8 85 95 ad ff                                  	call   0x49f180
  9c5bfb:	85 c0                                           	test   eax,eax
  9c5bfd:	75 1c                                           	jne    0x9c5c1b
  9c5bff:	83 bd 5c 08 00 00 02                            	cmp    DWORD PTR [ebp+0x85c],0x2
  9c5c06:	0f 84 9a 00 00 00                               	je     0x9c5ca6
  9c5c0c:	c7 85 5c 08 00 00 01 00 00 00                   	mov    DWORD PTR [ebp+0x85c],0x1
  9c5c16:	e9 8b 00 00 00                                  	jmp    0x9c5ca6
  9c5c1b:	68 9c 0d 05 01                                  	push   0x1050d9c
  9c5c20:	8b ce                                           	mov    ecx,esi
  9c5c22:	e8 59 95 ad ff                                  	call   0x49f180
  9c5c27:	85 c0                                           	test   eax,eax
  9c5c29:	75 0c                                           	jne    0x9c5c37
  9c5c2b:	c7 85 5c 08 00 00 02 00 00 00                   	mov    DWORD PTR [ebp+0x85c],0x2
  9c5c35:	eb 6f                                           	jmp    0x9c5ca6
  9c5c37:	68 94 0d 05 01                                  	push   0x1050d94
  9c5c3c:	8b ce                                           	mov    ecx,esi
  9c5c3e:	e8 3d 95 ad ff                                  	call   0x49f180
  9c5c43:	85 c0                                           	test   eax,eax
  9c5c45:	75 2c                                           	jne    0x9c5c73
  9c5c47:	8b 47 24                                        	mov    eax,DWORD PTR [edi+0x24]
  9c5c4a:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c5c4d:	85 c0                                           	test   eax,eax
  9c5c4f:	74 55                                           	je     0x9c5ca6
  9c5c51:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c5c54:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c5c57:	74 4d                                           	je     0x9c5ca6
  9c5c59:	8d 95 64 08 00 00                               	lea    edx,[ebp+0x864]
  9c5c5f:	52                                              	push   edx
  9c5c60:	8b c1                                           	mov    eax,ecx
  9c5c62:	68 c8 df fc 00                                  	push   0xfcdfc8
  9c5c67:	50                                              	push   eax
  9c5c68:	ff 15 00 67 f9 00                               	call   DWORD PTR ds:0xf96700
  9c5c6e:	83 c4 0c                                        	add    esp,0xc
  9c5c71:	eb 33                                           	jmp    0x9c5ca6
  9c5c73:	68 88 0d 05 01                                  	push   0x1050d88
  9c5c78:	8b ce                                           	mov    ecx,esi
  9c5c7a:	e8 01 95 ad ff                                  	call   0x49f180
  9c5c7f:	85 c0                                           	test   eax,eax
  9c5c81:	75 23                                           	jne    0x9c5ca6
  9c5c83:	8b 4f 24                                        	mov    ecx,DWORD PTR [edi+0x24]
  9c5c86:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c5c89:	85 c0                                           	test   eax,eax
  9c5c8b:	74 19                                           	je     0x9c5ca6
  9c5c8d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c5c90:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c5c93:	74 11                                           	je     0x9c5ca6
  9c5c95:	8b c2                                           	mov    eax,edx
  9c5c97:	50                                              	push   eax
  9c5c98:	e8 c3 58 fd ff                                  	call   0x99b560
  9c5c9d:	83 c4 04                                        	add    esp,0x4
  9c5ca0:	89 85 58 08 00 00                               	mov    DWORD PTR [ebp+0x858],eax
  9c5ca6:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
  9c5ca8:	3b 5c 24 48                                     	cmp    ebx,DWORD PTR [esp+0x48]
  9c5cac:	0f 85 7e fd ff ff                               	jne    0x9c5a30
  9c5cb2:	5f                                              	pop    edi
  9c5cb3:	5e                                              	pop    esi
  9c5cb4:	5d                                              	pop    ebp
  9c5cb5:	b0 01                                           	mov    al,0x1
  9c5cb7:	5b                                              	pop    ebx
  9c5cb8:	83 c4 30                                        	add    esp,0x30
  9c5cbb:	c2 08 00                                        	ret    0x8
  9c5cbe:	32 c0                                           	xor    al,al
  9c5cc0:	83 c4 30                                        	add    esp,0x30
  9c5cc3:	c2 08 00                                        	ret    0x8
