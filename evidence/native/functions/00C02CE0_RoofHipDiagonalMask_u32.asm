# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02ce0 (RoofHipDiagonalMask_u32)
Complete Ghidra function body: 0x00c02ce0..0x00c02d63 (exclusive end)
Ghidra body ranges: [[00c02ce0, 00c02d62]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02ce0 <.text+0x801ce0>:
  c02ce0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c02ce4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  c02ce8:	55                                              	push   ebp
  c02ce9:	56                                              	push   esi
  c02cea:	57                                              	push   edi
  c02ceb:	8b f1                                           	mov    esi,ecx
  c02ced:	d1 ee                                           	shr    esi,1
  c02cef:	8b fa                                           	mov    edi,edx
  c02cf1:	d1 ef                                           	shr    edi,1
  c02cf3:	32 c0                                           	xor    al,al
  c02cf5:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  c02cf9:	3b f7                                           	cmp    esi,edi
  c02cfb:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  c02cff:	8d 74 24 1c                                     	lea    esi,[esp+0x1c]
  c02d03:	72 04                                           	jb     0xc02d09
  c02d05:	8d 74 24 18                                     	lea    esi,[esp+0x18]
  c02d09:	8b 2e                                           	mov    ebp,DWORD PTR [esi]
  c02d0b:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  c02d0f:	3b fd                                           	cmp    edi,ebp
  c02d11:	77 21                                           	ja     0xc02d34
  c02d13:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  c02d17:	3b d5                                           	cmp    edx,ebp
  c02d19:	77 0a                                           	ja     0xc02d25
  c02d1b:	3b fa                                           	cmp    edi,edx
  c02d1d:	75 40                                           	jne    0xc02d5f
  c02d1f:	5f                                              	pop    edi
  c02d20:	5e                                              	pop    esi
  c02d21:	b0 0a                                           	mov    al,0xa
  c02d23:	5d                                              	pop    ebp
  c02d24:	c3                                              	ret
  c02d25:	2b ca                                           	sub    ecx,edx
  c02d27:	83 e9 01                                        	sub    ecx,0x1
  c02d2a:	3b f9                                           	cmp    edi,ecx
  c02d2c:	75 31                                           	jne    0xc02d5f
  c02d2e:	5f                                              	pop    edi
  c02d2f:	5e                                              	pop    esi
  c02d30:	b0 06                                           	mov    al,0x6
  c02d32:	5d                                              	pop    ebp
  c02d33:	c3                                              	ret
  c02d34:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  c02d38:	3b f5                                           	cmp    esi,ebp
  c02d3a:	77 13                                           	ja     0xc02d4f
  c02d3c:	53                                              	push   ebx
  c02d3d:	8b da                                           	mov    ebx,edx
  c02d3f:	2b df                                           	sub    ebx,edi
  c02d41:	83 eb 01                                        	sub    ebx,0x1
  c02d44:	3b f3                                           	cmp    esi,ebx
  c02d46:	5b                                              	pop    ebx
  c02d47:	75 02                                           	jne    0xc02d4b
  c02d49:	b0 09                                           	mov    al,0x9
  c02d4b:	3b f5                                           	cmp    esi,ebp
  c02d4d:	76 10                                           	jbe    0xc02d5f
  c02d4f:	2b d7                                           	sub    edx,edi
  c02d51:	2b ce                                           	sub    ecx,esi
  c02d53:	83 ea 01                                        	sub    edx,0x1
  c02d56:	83 e9 01                                        	sub    ecx,0x1
  c02d59:	3b d1                                           	cmp    edx,ecx
  c02d5b:	75 02                                           	jne    0xc02d5f
  c02d5d:	0c 05                                           	or     al,0x5
  c02d5f:	5f                                              	pop    edi
  c02d60:	5e                                              	pop    esi
  c02d61:	5d                                              	pop    ebp
  c02d62:	c3                                              	ret
