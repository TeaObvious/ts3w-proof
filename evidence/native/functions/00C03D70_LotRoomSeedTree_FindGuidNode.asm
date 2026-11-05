# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c03d70,0x00c03dd9); analyst name LotRoomSeedTree_FindGuidNode.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c03d70 <.text+0x802d70>:
  c03d70:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  c03d73:	85 c0                	test   eax,eax
  c03d75:	8d 51 04             	lea    edx,[ecx+0x4]
  c03d78:	53                   	push   ebx
  c03d79:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  c03d7d:	8b ca                	mov    ecx,edx
  c03d7f:	74 2f                	je     0xc03db0
  c03d81:	55                   	push   ebp
  c03d82:	56                   	push   esi
  c03d83:	8b 33                	mov    esi,DWORD PTR [ebx]
  c03d85:	57                   	push   edi
  c03d86:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  c03d89:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c03d90:	8b 68 14             	mov    ebp,DWORD PTR [eax+0x14]
  c03d93:	3b ef                	cmp    ebp,edi
  c03d95:	72 10                	jb     0xc03da7
  c03d97:	77 07                	ja     0xc03da0
  c03d99:	8b 68 10             	mov    ebp,DWORD PTR [eax+0x10]
  c03d9c:	3b ee                	cmp    ebp,esi
  c03d9e:	72 07                	jb     0xc03da7
  c03da0:	8b c8                	mov    ecx,eax
  c03da2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  c03da5:	eb 02                	jmp    0xc03da9
  c03da7:	8b 00                	mov    eax,DWORD PTR [eax]
  c03da9:	85 c0                	test   eax,eax
  c03dab:	75 e3                	jne    0xc03d90
  c03dad:	5f                   	pop    edi
  c03dae:	5e                   	pop    esi
  c03daf:	5d                   	pop    ebp
  c03db0:	3b ca                	cmp    ecx,edx
  c03db2:	74 1b                	je     0xc03dcf
  c03db4:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  c03db7:	3b 41 14             	cmp    eax,DWORD PTR [ecx+0x14]
  c03dba:	72 13                	jb     0xc03dcf
  c03dbc:	77 07                	ja     0xc03dc5
  c03dbe:	8b 03                	mov    eax,DWORD PTR [ebx]
  c03dc0:	3b 41 10             	cmp    eax,DWORD PTR [ecx+0x10]
  c03dc3:	72 0a                	jb     0xc03dcf
  c03dc5:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  c03dc9:	89 08                	mov    DWORD PTR [eax],ecx
  c03dcb:	5b                   	pop    ebx
  c03dcc:	c2 08 00             	ret    0x8
  c03dcf:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  c03dd3:	89 10                	mov    DWORD PTR [eax],edx
  c03dd5:	5b                   	pop    ebx
  c03dd6:	c2 08 00             	ret    0x8
