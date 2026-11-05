# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d7a00 <.text+0x3d6a00>:
  7d7a00:	83 ec 08             	sub    esp,0x8
  7d7a03:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7d7a07:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
  7d7a0b:	53                   	push   ebx
  7d7a0c:	55                   	push   ebp
  7d7a0d:	56                   	push   esi
  7d7a0e:	8b f1                	mov    esi,ecx
  7d7a10:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d7a13:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  7d7a17:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d7a19:	8b da                	mov    ebx,edx
  7d7a1b:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  7d7a1e:	6a 00                	push   0x0
  7d7a20:	ff d2                	call   edx
  7d7a22:	80 7e 15 00          	cmp    BYTE PTR [esi+0x15],0x0
  7d7a26:	8b e8                	mov    ebp,eax
  7d7a28:	74 05                	je     0x7d7a2f
  7d7a2a:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  7d7a2d:	eb 0c                	jmp    0x7d7a3b
  7d7a2f:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d7a32:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d7a34:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  7d7a37:	ff d2                	call   edx
  7d7a39:	8b c8                	mov    ecx,eax
  7d7a3b:	3b e9                	cmp    ebp,ecx
  7d7a3d:	76 0f                	jbe    0x7d7a4e
  7d7a3f:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  7d7a43:	5e                   	pop    esi
  7d7a44:	5d                   	pop    ebp
  7d7a45:	32 c0                	xor    al,al
  7d7a47:	5b                   	pop    ebx
  7d7a48:	83 c4 08             	add    esp,0x8
  7d7a4b:	c2 08 00             	ret    0x8
  7d7a4e:	8b c5                	mov    eax,ebp
  7d7a50:	57                   	push   edi
  7d7a51:	33 ff                	xor    edi,edi
  7d7a53:	99                   	cdq
  7d7a54:	2b c8                	sub    ecx,eax
  7d7a56:	1b fa                	sbb    edi,edx
  7d7a58:	3b fb                	cmp    edi,ebx
  7d7a5a:	5f                   	pop    edi
  7d7a5b:	77 08                	ja     0x7d7a65
  7d7a5d:	72 e0                	jb     0x7d7a3f
  7d7a5f:	3b 4c 24 0c          	cmp    ecx,DWORD PTR [esp+0xc]
  7d7a63:	72 da                	jb     0x7d7a3f
  7d7a65:	5e                   	pop    esi
  7d7a66:	5d                   	pop    ebp
  7d7a67:	b0 01                	mov    al,0x1
  7d7a69:	5b                   	pop    ebx
  7d7a6a:	83 c4 08             	add    esp,0x8
  7d7a6d:	c2 08 00             	ret    0x8
