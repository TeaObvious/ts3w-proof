# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937320, 0x00937330); analyst name ObjectRegistry_Deactivate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937320 <.text+0x536320>:
  937320:	e8 4b e3 ff ff       	call   0x935670
  937325:	c7 05 50 d3 1d 01 00 00 00 00 	mov    DWORD PTR ds:0x11dd350,0x0
  93732f:	c3                   	ret
