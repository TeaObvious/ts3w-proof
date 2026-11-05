# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00f8ab20, 0x00f8ab34); analyst name TransformBounds_InitializeMaximum.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00f8ab20 <.text+0xb89b20>:
  f8ab20:	f3 0f 10 05 18 58 04 01 	movss  xmm0,DWORD PTR ds:0x1045818
  f8ab28:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  f8ab2c:	0f 29 05 80 a2 1e 01 	movaps XMMWORD PTR ds:0x11ea280,xmm0
  f8ab33:	c3                   	ret
