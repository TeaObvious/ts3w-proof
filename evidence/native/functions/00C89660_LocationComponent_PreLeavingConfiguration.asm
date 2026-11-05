# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c89660, 0x00c8966b); analyst name LocationComponent_PreLeavingConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c89660 <.text+0x888660>:
  c89660:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  c89663:	50                   	push   eax
  c89664:	e8 97 57 e8 ff       	call   0xb0ee00
  c89669:	59                   	pop    ecx
  c8966a:	c3                   	ret
