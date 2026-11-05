# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00584070, 0x0058407f); analyst name AnimationTrackMap_GetSequence.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00584070 <.text+0x183070>:
  584070:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  584074:	50                   	push   eax
  584075:	e8 76 fd ff ff       	call   0x583df0
  58407a:	8b 00                	mov    eax,DWORD PTR [eax]
  58407c:	c2 04 00             	ret    0x4
