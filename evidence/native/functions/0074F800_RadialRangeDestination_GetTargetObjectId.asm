# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f800, 0x0074f807); analyst name RadialRangeDestination_GetTargetObjectId.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f800 <.text+0x34e800>:
  74f800:	8b 41 50             	mov    eax,DWORD PTR [ecx+0x50]
  74f803:	8b 51 54             	mov    edx,DWORD PTR [ecx+0x54]
  74f806:	c3                   	ret
