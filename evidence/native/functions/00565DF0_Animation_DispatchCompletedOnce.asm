# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00565df0, 0x00565e3f); analyst name Animation_DispatchCompletedOnce.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00565df0 <.text+0x164df0>:
  565df0:	80 79 24 00          	cmp    BYTE PTR [ecx+0x24],0x0
  565df4:	75 46                	jne    0x565e3c
  565df6:	53                   	push   ebx
  565df7:	56                   	push   esi
  565df8:	57                   	push   edi
  565df9:	b8 01 00 00 00       	mov    eax,0x1
  565dfe:	8d 79 0c             	lea    edi,[ecx+0xc]
  565e01:	88 41 24             	mov    BYTE PTR [ecx+0x24],al
  565e04:	01 47 0c             	add    DWORD PTR [edi+0xc],eax
  565e07:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  565e0a:	8d 5f 04             	lea    ebx,[edi+0x4]
  565e0d:	3b f3                	cmp    esi,ebx
  565e0f:	74 21                	je     0x565e32
  565e11:	55                   	push   ebp
  565e12:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  565e16:	8b c6                	mov    eax,esi
  565e18:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  565e1b:	85 c9                	test   ecx,ecx
  565e1d:	8b 36                	mov    esi,DWORD PTR [esi]
  565e1f:	74 0c                	je     0x565e2d
  565e21:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  565e24:	8b 11                	mov    edx,DWORD PTR [ecx]
  565e26:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  565e29:	50                   	push   eax
  565e2a:	55                   	push   ebp
  565e2b:	ff d2                	call   edx
  565e2d:	3b f3                	cmp    esi,ebx
  565e2f:	75 e5                	jne    0x565e16
  565e31:	5d                   	pop    ebp
  565e32:	8b cf                	mov    ecx,edi
  565e34:	e8 17 ff ff ff       	call   0x565d50
  565e39:	5f                   	pop    edi
  565e3a:	5e                   	pop    esi
  565e3b:	5b                   	pop    ebx
  565e3c:	c2 04 00             	ret    0x4
