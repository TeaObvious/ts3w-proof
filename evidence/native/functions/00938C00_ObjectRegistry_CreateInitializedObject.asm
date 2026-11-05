# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00938c00, 0x00938cb5); analyst name ObjectRegistry_CreateInitializedObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00938c00 <.text+0x537c00>:
  938c00:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  938c04:	53                   	push   ebx
  938c05:	55                   	push   ebp
  938c06:	56                   	push   esi
  938c07:	57                   	push   edi
  938c08:	8b e9                	mov    ebp,ecx
  938c0a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  938c0e:	50                   	push   eax
  938c0f:	51                   	push   ecx
  938c10:	8b cd                	mov    ecx,ebp
  938c12:	e8 f9 f7 ff ff       	call   0x938410
  938c17:	8b f0                	mov    esi,eax
  938c19:	8b fa                	mov    edi,edx
  938c1b:	8b d6                	mov    edx,esi
  938c1d:	0b d7                	or     edx,edi
  938c1f:	0f 84 87 00 00 00    	je     0x938cac
  938c25:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  938c29:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  938c2d:	53                   	push   ebx
  938c2e:	50                   	push   eax
  938c2f:	e8 5c eb ff ff       	call   0x937790
  938c34:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  938c38:	51                   	push   ecx
  938c39:	50                   	push   eax
  938c3a:	57                   	push   edi
  938c3b:	56                   	push   esi
  938c3c:	e8 8f c0 ff ff       	call   0x934cd0
  938c41:	8b f0                	mov    esi,eax
  938c43:	83 c4 18             	add    esp,0x18
  938c46:	85 f6                	test   esi,esi
  938c48:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  938c4c:	74 5e                	je     0x938cac
  938c4e:	8d 7e 04             	lea    edi,[esi+0x4]
  938c51:	8b d7                	mov    edx,edi
  938c53:	b8 01 00 00 00       	mov    eax,0x1
  938c58:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  938c5c:	53                   	push   ebx
  938c5d:	8b ce                	mov    ecx,esi
  938c5f:	e8 6c b7 ff ff       	call   0x9343d0
  938c64:	84 c0                	test   al,al
  938c66:	74 1a                	je     0x938c82
  938c68:	56                   	push   esi
  938c69:	8b cd                	mov    ecx,ebp
  938c6b:	e8 e0 f5 ff ff       	call   0x938250
  938c70:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  938c74:	e8 67 d6 e0 ff       	call   0x7462e0
  938c79:	5f                   	pop    edi
  938c7a:	8b c6                	mov    eax,esi
  938c7c:	5e                   	pop    esi
  938c7d:	5d                   	pop    ebp
  938c7e:	5b                   	pop    ebx
  938c7f:	c2 14 00             	ret    0x14
  938c82:	6a 00                	push   0x0
  938c84:	56                   	push   esi
  938c85:	6a 06                	push   0x6
  938c87:	e8 34 ca ff ff       	call   0x9356c0
  938c8c:	83 c4 0c             	add    esp,0xc
  938c8f:	8b cf                	mov    ecx,edi
  938c91:	83 ca ff             	or     edx,0xffffffff
  938c94:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  938c98:	4a                   	dec    edx
  938c99:	75 11                	jne    0x938cac
  938c9b:	b8 01 00 00 00       	mov    eax,0x1
  938ca0:	87 07                	xchg   DWORD PTR [edi],eax
  938ca2:	8b 16                	mov    edx,DWORD PTR [esi]
  938ca4:	8b 02                	mov    eax,DWORD PTR [edx]
  938ca6:	6a 01                	push   0x1
  938ca8:	8b ce                	mov    ecx,esi
  938caa:	ff d0                	call   eax
  938cac:	5f                   	pop    edi
  938cad:	5e                   	pop    esi
  938cae:	5d                   	pop    ebp
  938caf:	33 c0                	xor    eax,eax
  938cb1:	5b                   	pop    ebx
  938cb2:	c2 14 00             	ret    0x14
