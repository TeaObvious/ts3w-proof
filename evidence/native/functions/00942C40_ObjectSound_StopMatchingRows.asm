# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942c40 <.text+0x541c40>:
  942c40:	53                   	push   ebx
  942c41:	56                   	push   esi
  942c42:	57                   	push   edi
  942c43:	8b f9                	mov    edi,ecx
  942c45:	8b 77 20             	mov    esi,DWORD PTR [edi+0x20]
  942c48:	8b 5f 24             	mov    ebx,DWORD PTR [edi+0x24]
  942c4b:	3b f3                	cmp    esi,ebx
  942c4d:	74 4a                	je     0x942c99
  942c4f:	55                   	push   ebp
  942c50:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  942c54:	83 fd ff             	cmp    ebp,0xffffffff
  942c57:	8b 06                	mov    eax,DWORD PTR [esi]
  942c59:	74 04                	je     0x942c5f
  942c5b:	85 c5                	test   ebp,eax
  942c5d:	74 32                	je     0x942c91
  942c5f:	80 7f 4c 00          	cmp    BYTE PTR [edi+0x4c],0x0
  942c63:	74 1d                	je     0x942c82
  942c65:	a9 00 00 00 40       	test   eax,0x40000000
  942c6a:	75 16                	jne    0x942c82
  942c6c:	0f b6 4c 24 14       	movzx  ecx,BYTE PTR [esp+0x14]
  942c71:	51                   	push   ecx
  942c72:	25 ff ff ff 3f       	and    eax,0x3fffffff
  942c77:	50                   	push   eax
  942c78:	e8 63 dc f1 ff       	call   0x8608e0
  942c7d:	83 c4 08             	add    esp,0x8
  942c80:	eb 0f                	jmp    0x942c91
  942c82:	6a 01                	push   0x1
  942c84:	25 ff ff ff 3f       	and    eax,0x3fffffff
  942c89:	50                   	push   eax
  942c8a:	8b cf                	mov    ecx,edi
  942c8c:	e8 6f fd ff ff       	call   0x942a00
  942c91:	83 c6 14             	add    esi,0x14
  942c94:	3b f3                	cmp    esi,ebx
  942c96:	75 bc                	jne    0x942c54
  942c98:	5d                   	pop    ebp
  942c99:	5f                   	pop    edi
  942c9a:	5e                   	pop    esi
  942c9b:	5b                   	pop    ebx
  942c9c:	c2 08 00             	ret    0x8
