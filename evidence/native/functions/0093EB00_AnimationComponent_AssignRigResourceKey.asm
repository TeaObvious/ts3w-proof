# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0093eb00,0x0093ebab); analyst name AnimationComponent_AssignRigResourceKey.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093eb00 <.text+0x53db00>:
  93eb00:	51                   	push   ecx
  93eb01:	56                   	push   esi
  93eb02:	57                   	push   edi
  93eb03:	8b f9                	mov    edi,ecx
  93eb05:	e8 76 13 b7 ff       	call   0x4afe80
  93eb0a:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  93eb0d:	85 c9                	test   ecx,ecx
  93eb0f:	8b f0                	mov    esi,eax
  93eb11:	c7 47 20 00 00 00 00 	mov    DWORD PTR [edi+0x20],0x0
  93eb18:	74 07                	je     0x93eb21
  93eb1a:	8b 01                	mov    eax,DWORD PTR [ecx]
  93eb1c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  93eb1f:	ff d2                	call   edx
  93eb21:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  93eb25:	6a 00                	push   0x0
  93eb27:	6a 00                	push   0x0
  93eb29:	6a 00                	push   0x0
  93eb2b:	6a 00                	push   0x0
  93eb2d:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  93eb31:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  93eb38:	00 
  93eb39:	8b 06                	mov    eax,DWORD PTR [esi]
  93eb3b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  93eb3e:	51                   	push   ecx
  93eb3f:	52                   	push   edx
  93eb40:	8b ce                	mov    ecx,esi
  93eb42:	ff d0                	call   eax
  93eb44:	84 c0                	test   al,al
  93eb46:	74 40                	je     0x93eb88
  93eb48:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93eb4c:	85 c9                	test   ecx,ecx
  93eb4e:	74 10                	je     0x93eb60
  93eb50:	8b 11                	mov    edx,DWORD PTR [ecx]
  93eb52:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  93eb55:	68 de 13 af 8e       	push   0x8eaf13de
  93eb5a:	ff d0                	call   eax
  93eb5c:	8b f0                	mov    esi,eax
  93eb5e:	eb 02                	jmp    0x93eb62
  93eb60:	33 f6                	xor    esi,esi
  93eb62:	55                   	push   ebp
  93eb63:	8b 6f 20             	mov    ebp,DWORD PTR [edi+0x20]
  93eb66:	3b f5                	cmp    esi,ebp
  93eb68:	74 1d                	je     0x93eb87
  93eb6a:	85 f6                	test   esi,esi
  93eb6c:	74 08                	je     0x93eb76
  93eb6e:	8b 16                	mov    edx,DWORD PTR [esi]
  93eb70:	8b 02                	mov    eax,DWORD PTR [edx]
  93eb72:	8b ce                	mov    ecx,esi
  93eb74:	ff d0                	call   eax
  93eb76:	85 ed                	test   ebp,ebp
  93eb78:	89 77 20             	mov    DWORD PTR [edi+0x20],esi
  93eb7b:	74 0a                	je     0x93eb87
  93eb7d:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  93eb80:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  93eb83:	8b cd                	mov    ecx,ebp
  93eb85:	ff d0                	call   eax
  93eb87:	5d                   	pop    ebp
  93eb88:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  93eb8d:	74 07                	je     0x93eb96
  93eb8f:	8b cf                	mov    ecx,edi
  93eb91:	e8 aa f3 ff ff       	call   0x93df40
  93eb96:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93eb9a:	85 c9                	test   ecx,ecx
  93eb9c:	5f                   	pop    edi
  93eb9d:	5e                   	pop    esi
  93eb9e:	74 07                	je     0x93eba7
  93eba0:	8b 11                	mov    edx,DWORD PTR [ecx]
  93eba2:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  93eba5:	ff d0                	call   eax
  93eba7:	59                   	pop    ecx
  93eba8:	c2 08 00             	ret    0x8
