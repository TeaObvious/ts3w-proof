# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x005685f0, 0x005685f7); analyst name AnimationClipController_GetDuration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005685f0 <.text+0x1675f0>:
  5685f0:	d9 81 e8 05 00 00    	fld    DWORD PTR [ecx+0x5e8]
  5685f6:	c3                   	ret
