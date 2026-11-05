# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00961f30, 0x00961f41).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: CameraInput_GetBankScalar.
Paired annotated Ghidra pseudocode: 00961F30_CameraInput_GetBankScalar.c
Complete Ghidra-body envelope [0x00961f30,0x00961f41); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00961f30 <.text+0x560f30>:
  961f30:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  961f34:	c1 e0 06             	shl    eax,0x6
  961f37:	03 44 24 08          	add    eax,DWORD PTR [esp+0x8]
  961f3b:	d9 04 81             	fld    DWORD PTR [ecx+eax*4]
  961f3e:	c2 08 00             	ret    0x8
