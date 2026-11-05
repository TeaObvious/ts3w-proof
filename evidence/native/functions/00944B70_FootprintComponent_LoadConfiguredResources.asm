# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00944b70, 0x00944bd8); analyst name FootprintComponent_LoadConfiguredResources.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00944b70 <.text+0x543b70>:
  944b70:	56                   	push   esi
  944b71:	57                   	push   edi
  944b72:	8b f1                	mov    esi,ecx
  944b74:	e8 c7 a5 de ff       	call   0x72f140
  944b79:	8b f8                	mov    edi,eax
  944b7b:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  944b7e:	85 c0                	test   eax,eax
  944b80:	75 0c                	jne    0x944b8e
  944b82:	39 46 20             	cmp    DWORD PTR [esi+0x20],eax
  944b85:	75 07                	jne    0x944b8e
  944b87:	5f                   	pop    edi
  944b88:	32 c0                	xor    al,al
  944b8a:	5e                   	pop    esi
  944b8b:	c2 08 00             	ret    0x8
  944b8e:	85 c0                	test   eax,eax
  944b90:	53                   	push   ebx
  944b91:	74 21                	je     0x944bb4
  944b93:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  944b97:	8b 07                	mov    eax,DWORD PTR [edi]
  944b99:	8b 10                	mov    edx,DWORD PTR [eax]
  944b9b:	51                   	push   ecx
  944b9c:	68 2a 31 07 c8       	push   0xc807312a
  944ba1:	8d 5e 08             	lea    ebx,[esi+0x8]
  944ba4:	53                   	push   ebx
  944ba5:	8b cf                	mov    ecx,edi
  944ba7:	ff d2                	call   edx
  944ba9:	84 c0                	test   al,al
  944bab:	75 07                	jne    0x944bb4
  944bad:	8b 03                	mov    eax,DWORD PTR [ebx]
  944baf:	0b 43 04             	or     eax,DWORD PTR [ebx+0x4]
  944bb2:	75 1c                	jne    0x944bd0
  944bb4:	83 7e 20 00          	cmp    DWORD PTR [esi+0x20],0x0
  944bb8:	74 16                	je     0x944bd0
  944bba:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  944bbe:	8b 17                	mov    edx,DWORD PTR [edi]
  944bc0:	8b 12                	mov    edx,DWORD PTR [edx]
  944bc2:	50                   	push   eax
  944bc3:	68 2a 31 07 c8       	push   0xc807312a
  944bc8:	83 c6 18             	add    esi,0x18
  944bcb:	56                   	push   esi
  944bcc:	8b cf                	mov    ecx,edi
  944bce:	ff d2                	call   edx
  944bd0:	5b                   	pop    ebx
  944bd1:	5f                   	pop    edi
  944bd2:	b0 01                	mov    al,0x1
  944bd4:	5e                   	pop    esi
  944bd5:	c2 08 00             	ret    0x8
