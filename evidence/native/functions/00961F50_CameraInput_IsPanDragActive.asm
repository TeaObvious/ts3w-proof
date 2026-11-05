# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00961f50, 0x00961f5e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: CameraInput_IsPanDragActive.
Paired annotated Ghidra pseudocode: 00961F50_CameraInput_IsPanDragActive.c
Complete Ghidra-body envelope [0x00961f50,0x00961f5e); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00961f50 <.text+0x560f50>:
  961f50:	0f b6 81 e0 04 00 00 	movzx  eax,BYTE PTR [ecx+0x4e0]
  961f57:	c1 e8 02             	shr    eax,0x2
  961f5a:	83 e0 01             	and    eax,0x1
  961f5d:	c3                   	ret
