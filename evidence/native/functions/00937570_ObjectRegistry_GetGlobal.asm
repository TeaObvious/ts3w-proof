# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937570, 0x00937576); analyst name ObjectRegistry_GetGlobal.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937570 <.text+0x536570>:
  937570:	a1 50 d3 1d 01       	mov    eax,ds:0x11dd350
  937575:	c3                   	ret
