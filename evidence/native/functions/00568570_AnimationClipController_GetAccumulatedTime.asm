# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568570, 0x00568577); analyst name AnimationClipController_GetAccumulatedTime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568570 <.text+0x167570>:
  568570:	d9 81 e0 05 00 00    	fld    DWORD PTR [ecx+0x5e0]
  568576:	c3                   	ret
