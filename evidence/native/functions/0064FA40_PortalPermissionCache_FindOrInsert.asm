# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064fa40,0x0064fb1f); analyst name PortalPermissionCache_FindOrInsert.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064fa40 <.text+0x24ea40>:
  64fa40:	83 ec 08             	sub    esp,0x8
  64fa43:	53                   	push   ebx
  64fa44:	55                   	push   ebp
  64fa45:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  64fa49:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  64fa4c:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  64fa4f:	56                   	push   esi
  64fa50:	8b f1                	mov    esi,ecx
  64fa52:	57                   	push   edi
  64fa53:	b1 20                	mov    cl,0x20
  64fa55:	e8 66 fe 92 00       	call   0xf7f8c0
  64fa5a:	0f b7 4d 08          	movzx  ecx,WORD PTR [ebp+0x8]
  64fa5e:	8b f8                	mov    edi,eax
  64fa60:	0f b7 45 0a          	movzx  eax,WORD PTR [ebp+0xa]
  64fa64:	33 f8                	xor    edi,eax
  64fa66:	33 f9                	xor    edi,ecx
  64fa68:	33 7d 00             	xor    edi,DWORD PTR [ebp+0x0]
  64fa6b:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  64fa6e:	33 d2                	xor    edx,edx
  64fa70:	8b c7                	mov    eax,edi
  64fa72:	f7 f1                	div    ecx
  64fa74:	57                   	push   edi
  64fa75:	55                   	push   ebp
  64fa76:	8b ce                	mov    ecx,esi
  64fa78:	8b da                	mov    ebx,edx
  64fa7a:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  64fa7d:	8d 04 9a             	lea    eax,[edx+ebx*4]
  64fa80:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  64fa84:	8b 00                	mov    eax,DWORD PTR [eax]
  64fa86:	50                   	push   eax
  64fa87:	e8 24 ff ff ff       	call   0x64f9b0
  64fa8c:	85 c0                	test   eax,eax
  64fa8e:	75 72                	jne    0x64fb02
  64fa90:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  64fa93:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  64fa96:	6a 01                	push   0x1
  64fa98:	51                   	push   ecx
  64fa99:	50                   	push   eax
  64fa9a:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  64fa9e:	52                   	push   edx
  64fa9f:	8d 4e 2c             	lea    ecx,[esi+0x2c]
  64faa2:	e8 19 14 e9 ff       	call   0x4e0ec0
  64faa7:	55                   	push   ebp
  64faa8:	8b ce                	mov    ecx,esi
  64faaa:	e8 51 fc ff ff       	call   0x64f700
  64faaf:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  64fab4:	8b e8                	mov    ebp,eax
  64fab6:	74 14                	je     0x64facc
  64fab8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  64fabc:	33 d2                	xor    edx,edx
  64fabe:	8b c7                	mov    eax,edi
  64fac0:	f7 f1                	div    ecx
  64fac2:	51                   	push   ecx
  64fac3:	8b ce                	mov    ecx,esi
  64fac5:	8b da                	mov    ebx,edx
  64fac7:	e8 14 fe ff ff       	call   0x64f8e0
  64facc:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  64facf:	8d 0c 9d 00 00 00 00 	lea    ecx,[ebx*4+0x0]
  64fad6:	8b 14 01             	mov    edx,DWORD PTR [ecx+eax*1]
  64fad9:	89 55 18             	mov    DWORD PTR [ebp+0x18],edx
  64fadc:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  64fadf:	89 2c 01             	mov    DWORD PTR [ecx+eax*1],ebp
  64fae2:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  64fae6:	83 46 28 01          	add    DWORD PTR [esi+0x28],0x1
  64faea:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  64faed:	5f                   	pop    edi
  64faee:	5e                   	pop    esi
  64faef:	89 28                	mov    DWORD PTR [eax],ebp
  64faf1:	03 d1                	add    edx,ecx
  64faf3:	5d                   	pop    ebp
  64faf4:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  64faf7:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
  64fafb:	5b                   	pop    ebx
  64fafc:	83 c4 08             	add    esp,0x8
  64faff:	c2 0c 00             	ret    0xc
  64fb02:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  64fb06:	5f                   	pop    edi
  64fb07:	89 01                	mov    DWORD PTR [ecx],eax
  64fb09:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  64fb0d:	5e                   	pop    esi
  64fb0e:	5d                   	pop    ebp
  64fb0f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  64fb12:	c6 41 08 00          	mov    BYTE PTR [ecx+0x8],0x0
  64fb16:	8b c1                	mov    eax,ecx
  64fb18:	5b                   	pop    ebx
  64fb19:	83 c4 08             	add    esp,0x8
  64fb1c:	c2 0c 00             	ret    0xc
