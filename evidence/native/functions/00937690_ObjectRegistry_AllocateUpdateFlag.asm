# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937690, 0x009376b5); analyst name ObjectRegistry_AllocateUpdateFlag.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937690 <.text+0x536690>:
  937690:	8b 91 cc 11 00 00    	mov    edx,DWORD PTR [ecx+0x11cc]
  937696:	56                   	push   esi
  937697:	8b f2                	mov    esi,edx
  937699:	81 f6 00 00 00 ff    	xor    esi,0xff000000
  93769f:	8b c6                	mov    eax,esi
  9376a1:	f7 d8                	neg    eax
  9376a3:	23 c6                	and    eax,esi
  9376a5:	09 81 d0 11 00 00    	or     DWORD PTR [ecx+0x11d0],eax
  9376ab:	0b d0                	or     edx,eax
  9376ad:	89 91 cc 11 00 00    	mov    DWORD PTR [ecx+0x11cc],edx
  9376b3:	5e                   	pop    esi
  9376b4:	c3                   	ret
