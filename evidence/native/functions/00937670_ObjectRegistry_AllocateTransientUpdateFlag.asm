# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937670, 0x0093768f); analyst name ObjectRegistry_AllocateTransientUpdateFlag.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937670 <.text+0x536670>:
  937670:	8b 91 cc 11 00 00    	mov    edx,DWORD PTR [ecx+0x11cc]
  937676:	56                   	push   esi
  937677:	8b f2                	mov    esi,edx
  937679:	81 f6 00 00 00 ff    	xor    esi,0xff000000
  93767f:	8b c6                	mov    eax,esi
  937681:	f7 d8                	neg    eax
  937683:	23 c6                	and    eax,esi
  937685:	0b d0                	or     edx,eax
  937687:	89 91 cc 11 00 00    	mov    DWORD PTR [ecx+0x11cc],edx
  93768d:	5e                   	pop    esi
  93768e:	c3                   	ret
