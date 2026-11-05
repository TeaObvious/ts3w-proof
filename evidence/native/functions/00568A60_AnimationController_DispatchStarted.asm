# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568a60, 0x00568aa8); analyst name AnimationController_DispatchStarted.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568a60 <.text+0x167a60>:
  568a60:	83 41 18 01          	add    DWORD PTR [ecx+0x18],0x1
  568a64:	53                   	push   ebx
  568a65:	56                   	push   esi
  568a66:	57                   	push   edi
  568a67:	8d 79 0c             	lea    edi,[ecx+0xc]
  568a6a:	f7 d9                	neg    ecx
  568a6c:	1b c9                	sbb    ecx,ecx
  568a6e:	23 cf                	and    ecx,edi
  568a70:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  568a73:	8d 59 04             	lea    ebx,[ecx+0x4]
  568a76:	3b f3                	cmp    esi,ebx
  568a78:	74 21                	je     0x568a9b
  568a7a:	55                   	push   ebp
  568a7b:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  568a7f:	90                   	nop
  568a80:	8b c6                	mov    eax,esi
  568a82:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  568a85:	85 c9                	test   ecx,ecx
  568a87:	8b 36                	mov    esi,DWORD PTR [esi]
  568a89:	74 0b                	je     0x568a96
  568a8b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  568a8e:	8b 11                	mov    edx,DWORD PTR [ecx]
  568a90:	8b 12                	mov    edx,DWORD PTR [edx]
  568a92:	50                   	push   eax
  568a93:	55                   	push   ebp
  568a94:	ff d2                	call   edx
  568a96:	3b f3                	cmp    esi,ebx
  568a98:	75 e6                	jne    0x568a80
  568a9a:	5d                   	pop    ebp
  568a9b:	8b cf                	mov    ecx,edi
  568a9d:	e8 ae d2 ff ff       	call   0x565d50
  568aa2:	5f                   	pop    edi
  568aa3:	5e                   	pop    esi
  568aa4:	5b                   	pop    ebx
  568aa5:	c2 04 00             	ret    0x4
