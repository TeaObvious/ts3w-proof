# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00950fb0, 0x00950fe3); analyst name SlotsComponent_FindChildSlotBinding.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950fb0 <.text+0x54ffb0>:
  950fb0:	8d 51 48             	lea    edx,[ecx+0x48]
  950fb3:	8b 0a                	mov    ecx,DWORD PTR [edx]
  950fb5:	33 c0                	xor    eax,eax
  950fb7:	3b ca                	cmp    ecx,edx
  950fb9:	74 25                	je     0x950fe0
  950fbb:	56                   	push   esi
  950fbc:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  950fc0:	39 71 08             	cmp    DWORD PTR [ecx+0x8],esi
  950fc3:	74 0a                	je     0x950fcf
  950fc5:	8b 09                	mov    ecx,DWORD PTR [ecx]
  950fc7:	3b ca                	cmp    ecx,edx
  950fc9:	75 f5                	jne    0x950fc0
  950fcb:	5e                   	pop    esi
  950fcc:	c2 08 00             	ret    0x8
  950fcf:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  950fd3:	85 d2                	test   edx,edx
  950fd5:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  950fd8:	74 05                	je     0x950fdf
  950fda:	8a 49 10             	mov    cl,BYTE PTR [ecx+0x10]
  950fdd:	88 0a                	mov    BYTE PTR [edx],cl
  950fdf:	5e                   	pop    esi
  950fe0:	c2 08 00             	ret    0x8
