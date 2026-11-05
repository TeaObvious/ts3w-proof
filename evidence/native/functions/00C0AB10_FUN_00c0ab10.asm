# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0ab10, 0x00c0ac00); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0ab10 <.text+0x809b10>:
  c0ab10:	83 ec 14             	sub    esp,0x14
  c0ab13:	56                   	push   esi
  c0ab14:	57                   	push   edi
  c0ab15:	8b f9                	mov    edi,ecx
  c0ab17:	e8 24 46 b2 ff       	call   0x72f140
  c0ab1c:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  c0ab20:	6a 06                	push   0x6
  c0ab22:	6a 02                	push   0x2
  c0ab24:	51                   	push   ecx
  c0ab25:	33 f6                	xor    esi,esi
  c0ab27:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c0ab2b:	51                   	push   ecx
  c0ab2c:	c7 44 24 1c 01 00 00 	mov    DWORD PTR [esp+0x1c],0x1
  c0ab33:	00 
  c0ab34:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  c0ab38:	c7 44 24 24 e6 ac 74 	mov    DWORD PTR [esp+0x24],0xb074ace6
  c0ab3f:	b0 
  c0ab40:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
  c0ab44:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  c0ab48:	8b 10                	mov    edx,DWORD PTR [eax]
  c0ab4a:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  c0ab4d:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c0ab51:	51                   	push   ecx
  c0ab52:	8b c8                	mov    ecx,eax
  c0ab54:	ff d2                	call   edx
  c0ab56:	84 c0                	test   al,al
  c0ab58:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  c0ab5c:	0f 84 89 00 00 00    	je     0xc0abeb
  c0ab62:	8b 01                	mov    eax,DWORD PTR [ecx]
  c0ab64:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  c0ab67:	53                   	push   ebx
  c0ab68:	55                   	push   ebp
  c0ab69:	ff d2                	call   edx
  c0ab6b:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
  c0ab6f:	55                   	push   ebp
  c0ab70:	8b d8                	mov    ebx,eax
  c0ab72:	6a 04                	push   0x4
  c0ab74:	53                   	push   ebx
  c0ab75:	e8 f6 32 8d ff       	call   0x4dde70
  c0ab7a:	d9 47 14             	fld    DWORD PTR [edi+0x14]
  c0ab7d:	83 c4 0c             	add    esp,0xc
  c0ab80:	55                   	push   ebp
  c0ab81:	51                   	push   ecx
  c0ab82:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0ab85:	53                   	push   ebx
  c0ab86:	e8 05 38 8d ff       	call   0x4de390
  c0ab8b:	8b 87 cc 02 00 00    	mov    eax,DWORD PTR [edi+0x2cc]
  c0ab91:	2b 87 c8 02 00 00    	sub    eax,DWORD PTR [edi+0x2c8]
  c0ab97:	55                   	push   ebp
  c0ab98:	c1 f8 02             	sar    eax,0x2
  c0ab9b:	50                   	push   eax
  c0ab9c:	53                   	push   ebx
  c0ab9d:	e8 ce 32 8d ff       	call   0x4dde70
  c0aba2:	8b b7 c8 02 00 00    	mov    esi,DWORD PTR [edi+0x2c8]
  c0aba8:	8b bf cc 02 00 00    	mov    edi,DWORD PTR [edi+0x2cc]
  c0abae:	83 c4 18             	add    esp,0x18
  c0abb1:	3b f7                	cmp    esi,edi
  c0abb3:	74 10                	je     0xc0abc5
  c0abb5:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c0abb7:	55                   	push   ebp
  c0abb8:	53                   	push   ebx
  c0abb9:	e8 22 23 00 00       	call   0xc0cee0
  c0abbe:	83 c6 04             	add    esi,0x4
  c0abc1:	3b f7                	cmp    esi,edi
  c0abc3:	75 f0                	jne    0xc0abb5
  c0abc5:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c0abc9:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0abcb:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  c0abce:	ff d0                	call   eax
  c0abd0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c0abd4:	85 c9                	test   ecx,ecx
  c0abd6:	5d                   	pop    ebp
  c0abd7:	5b                   	pop    ebx
  c0abd8:	74 07                	je     0xc0abe1
  c0abda:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0abdc:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c0abdf:	ff d0                	call   eax
  c0abe1:	5f                   	pop    edi
  c0abe2:	b0 01                	mov    al,0x1
  c0abe4:	5e                   	pop    esi
  c0abe5:	83 c4 14             	add    esp,0x14
  c0abe8:	c2 08 00             	ret    0x8
  c0abeb:	3b ce                	cmp    ecx,esi
  c0abed:	74 07                	je     0xc0abf6
  c0abef:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0abf1:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c0abf4:	ff d0                	call   eax
  c0abf6:	5f                   	pop    edi
  c0abf7:	32 c0                	xor    al,al
  c0abf9:	5e                   	pop    esi
  c0abfa:	83 c4 14             	add    esp,0x14
  c0abfd:	c2 08 00             	ret    0x8
