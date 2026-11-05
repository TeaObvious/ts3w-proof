# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c89670, 0x00c8967b); analyst name LocationComponent_PostReachingConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c89670 <.text+0x888670>:
  c89670:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  c89673:	50                   	push   eax
  c89674:	e8 37 57 e8 ff       	call   0xb0edb0
  c89679:	59                   	pop    ecx
  c8967a:	c3                   	ret
