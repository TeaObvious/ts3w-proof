# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00c88b40 ShaderTextureBinding_RequestAndPublish
# Complete actual Ghidra owned ranges: 00c88b40..00c88c08; 81 instructions/201 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00C88B40_ShaderTextureBinding_RequestAndPublish.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c88b40 <.text+0x887b40>:
  c88b40:	83 ec 10                                        	sub    esp,0x10
  c88b43:	53                                              	push   ebx
  c88b44:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  c88b48:	55                                              	push   ebp
  c88b49:	33 ed                                           	xor    ebp,ebp
  c88b4b:	8b cb                                           	mov    ecx,ebx
  c88b4d:	89 6c 24 08                                     	mov    DWORD PTR [esp+0x8],ebp
  c88b51:	89 6c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebp
  c88b55:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  c88b59:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  c88b5d:	e8 fe a3 a9 ff                                  	call   0x722f60
  c88b62:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c88b66:	55                                              	push   ebp
  c88b67:	55                                              	push   ebp
  c88b68:	55                                              	push   ebp
  c88b69:	68 82 d8 b2 00                                  	push   0xb2d882
  c88b6e:	50                                              	push   eax
  c88b6f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  c88b73:	51                                              	push   ecx
  c88b74:	e8 c7 62 82 ff                                  	call   0x4aee40
  c88b79:	83 c4 18                                        	add    esp,0x18
  c88b7c:	84 c0                                           	test   al,al
  c88b7e:	75 06                                           	jne    0xc88b86
  c88b80:	5d                                              	pop    ebp
  c88b81:	5b                                              	pop    ebx
  c88b82:	83 c4 10                                        	add    esp,0x10
  c88b85:	c3                                              	ret
  c88b86:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  c88b8a:	56                                              	push   esi
  c88b8b:	8b 35 30 85 1d 01                               	mov    esi,DWORD PTR ds:0x11d8530
  c88b91:	57                                              	push   edi
  c88b92:	6a 05                                           	push   0x5
  c88b94:	6a 01                                           	push   0x1
  c88b96:	52                                              	push   edx
  c88b97:	8b ce                                           	mov    ecx,esi
  c88b99:	e8 92 19 b1 ff                                  	call   0x79a530
  c88b9e:	8b 7c 24 30                                     	mov    edi,DWORD PTR [esp+0x30]
  c88ba2:	55                                              	push   ebp
  c88ba3:	55                                              	push   ebp
  c88ba4:	89 07                                           	mov    DWORD PTR [edi],eax
  c88ba6:	6a 01                                           	push   0x1
  c88ba8:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  c88bac:	50                                              	push   eax
  c88bad:	8b cb                                           	mov    ecx,ebx
  c88baf:	e8 3c a3 a9 ff                                  	call   0x722ef0
  c88bb4:	84 c0                                           	test   al,al
  c88bb6:	75 25                                           	jne    0xc88bdd
  c88bb8:	8b 07                                           	mov    eax,DWORD PTR [edi]
  c88bba:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  c88bbd:	73 14                                           	jae    0xc88bd3
  c88bbf:	c1 e0 04                                        	shl    eax,0x4
  c88bc2:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  c88bc5:	83 00 01                                        	add    DWORD PTR [eax],0x1
  c88bc8:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  c88bcc:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  c88bd0:	89 68 0c                                        	mov    DWORD PTR [eax+0xc],ebp
  c88bd3:	5f                                              	pop    edi
  c88bd4:	5e                                              	pop    esi
  c88bd5:	5d                                              	pop    ebp
  c88bd6:	32 c0                                           	xor    al,al
  c88bd8:	5b                                              	pop    ebx
  c88bd9:	83 c4 10                                        	add    esp,0x10
  c88bdc:	c3                                              	ret
  c88bdd:	8b cb                                           	mov    ecx,ebx
  c88bdf:	e8 ec a2 a9 ff                                  	call   0x722ed0
  c88be4:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  c88be6:	3b 4e 08                                        	cmp    ecx,DWORD PTR [esi+0x8]
  c88be9:	73 14                                           	jae    0xc88bff
  c88beb:	c1 e1 04                                        	shl    ecx,0x4
  c88bee:	03 4e 04                                        	add    ecx,DWORD PTR [esi+0x4]
  c88bf1:	83 01 01                                        	add    DWORD PTR [ecx],0x1
  c88bf4:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  c88bf8:	66 89 51 04                                     	mov    WORD PTR [ecx+0x4],dx
  c88bfc:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  c88bff:	5f                                              	pop    edi
  c88c00:	5e                                              	pop    esi
  c88c01:	5d                                              	pop    ebp
  c88c02:	b0 01                                           	mov    al,0x1
  c88c04:	5b                                              	pop    ebx
  c88c05:	83 c4 10                                        	add    esp,0x10
  c88c08:	c3                                              	ret
