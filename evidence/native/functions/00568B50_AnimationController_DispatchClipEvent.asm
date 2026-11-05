# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568b50, 0x00568b99); analyst name AnimationController_DispatchClipEvent.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568b50 <.text+0x167b50>:
  568b50:	83 41 18 01          	add    DWORD PTR [ecx+0x18],0x1
  568b54:	53                   	push   ebx
  568b55:	56                   	push   esi
  568b56:	57                   	push   edi
  568b57:	8d 79 0c             	lea    edi,[ecx+0xc]
  568b5a:	f7 d9                	neg    ecx
  568b5c:	1b c9                	sbb    ecx,ecx
  568b5e:	23 cf                	and    ecx,edi
  568b60:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  568b63:	8d 59 04             	lea    ebx,[ecx+0x4]
  568b66:	3b f3                	cmp    esi,ebx
  568b68:	74 22                	je     0x568b8c
  568b6a:	55                   	push   ebp
  568b6b:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  568b6f:	90                   	nop
  568b70:	8b c6                	mov    eax,esi
  568b72:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  568b75:	85 c9                	test   ecx,ecx
  568b77:	8b 36                	mov    esi,DWORD PTR [esi]
  568b79:	74 0c                	je     0x568b87
  568b7b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  568b7e:	8b 11                	mov    edx,DWORD PTR [ecx]
  568b80:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  568b83:	50                   	push   eax
  568b84:	55                   	push   ebp
  568b85:	ff d2                	call   edx
  568b87:	3b f3                	cmp    esi,ebx
  568b89:	75 e5                	jne    0x568b70
  568b8b:	5d                   	pop    ebp
  568b8c:	8b cf                	mov    ecx,edi
  568b8e:	e8 bd d1 ff ff       	call   0x565d50
  568b93:	5f                   	pop    edi
  568b94:	5e                   	pop    esi
  568b95:	5b                   	pop    ebx
  568b96:	c2 04 00             	ret    0x4
