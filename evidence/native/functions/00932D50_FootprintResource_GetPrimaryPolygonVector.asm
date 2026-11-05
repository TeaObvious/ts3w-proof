# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00932d50, 0x00932d5d); analyst name FootprintResource_GetPrimaryPolygonVector.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00932d50 <.text+0x531d50>:
  932d50:	83 79 58 05          	cmp    DWORD PTR [ecx+0x58],0x5
  932d54:	8d 41 38             	lea    eax,[ecx+0x38]
  932d57:	73 03                	jae    0x932d5c
  932d59:	8d 41 28             	lea    eax,[ecx+0x28]
  932d5c:	c3                   	ret
