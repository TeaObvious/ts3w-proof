# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00932d60, 0x00932d6d); analyst name FootprintResource_GetSecondaryPolygonVector.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00932d60 <.text+0x531d60>:
  932d60:	83 79 58 05          	cmp    DWORD PTR [ecx+0x58],0x5
  932d64:	8d 41 48             	lea    eax,[ecx+0x48]
  932d67:	73 03                	jae    0x932d6c
  932d69:	8d 41 28             	lea    eax,[ecx+0x28]
  932d6c:	c3                   	ret
