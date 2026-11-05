# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00970ef0, 0x00970f21).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: GameplayCamera_GetYawDegrees.
Paired annotated Ghidra pseudocode: 00970EF0_GameplayCamera_GetYawDegrees.c
Complete Ghidra-body envelope [0x00970ef0,0x00970f21); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00970ef0 <.text+0x56fef0>:
  970ef0:	55                   	push   ebp
  970ef1:	8b ec                	mov    ebp,esp
  970ef3:	83 e4 f0             	and    esp,0xfffffff0
  970ef6:	83 ec 10             	sub    esp,0x10
  970ef9:	0f 28 81 d0 07 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x7d0]
  970f00:	0f 28 c8             	movaps xmm1,xmm0
  970f03:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  970f07:	f3 0f 10 05 b4 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cb4
  970f0e:	01
  970f0f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  970f13:	0f 59 c8             	mulps  xmm1,xmm0
  970f16:	0f 29 0c 24          	movaps XMMWORD PTR [esp],xmm1
  970f1a:	d9 04 24             	fld    DWORD PTR [esp]
  970f1d:	8b e5                	mov    esp,ebp
  970f1f:	5d                   	pop    ebp
  970f20:	c3                   	ret
