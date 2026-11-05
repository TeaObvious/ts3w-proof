# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568b00, 0x00568b49); analyst name AnimationController_DispatchLoop.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568b00 <.text+0x167b00>:
  568b00:	83 41 18 01          	add    DWORD PTR [ecx+0x18],0x1
  568b04:	53                   	push   ebx
  568b05:	56                   	push   esi
  568b06:	57                   	push   edi
  568b07:	8d 79 0c             	lea    edi,[ecx+0xc]
  568b0a:	f7 d9                	neg    ecx
  568b0c:	1b c9                	sbb    ecx,ecx
  568b0e:	23 cf                	and    ecx,edi
  568b10:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  568b13:	8d 59 04             	lea    ebx,[ecx+0x4]
  568b16:	3b f3                	cmp    esi,ebx
  568b18:	74 22                	je     0x568b3c
  568b1a:	55                   	push   ebp
  568b1b:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  568b1f:	90                   	nop
  568b20:	8b c6                	mov    eax,esi
  568b22:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  568b25:	85 c9                	test   ecx,ecx
  568b27:	8b 36                	mov    esi,DWORD PTR [esi]
  568b29:	74 0c                	je     0x568b37
  568b2b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  568b2e:	8b 11                	mov    edx,DWORD PTR [ecx]
  568b30:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  568b33:	50                   	push   eax
  568b34:	55                   	push   ebp
  568b35:	ff d2                	call   edx
  568b37:	3b f3                	cmp    esi,ebx
  568b39:	75 e5                	jne    0x568b20
  568b3b:	5d                   	pop    ebp
  568b3c:	8b cf                	mov    ecx,edi
  568b3e:	e8 0d d2 ff ff       	call   0x565d50
  568b43:	5f                   	pop    edi
  568b44:	5e                   	pop    esi
  568b45:	5b                   	pop    ebx
  568b46:	c2 04 00             	ret    0x4
