# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00970e60, 0x00970ea3); analyst name MainCamera_GetBaseZoomDistance.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00970e60 <.text+0x56fe60>:
  970e60:	55                   	push   ebp
  970e61:	8b ec                	mov    ebp,esp
  970e63:	83 e4 f0             	and    esp,0xfffffff0
  970e66:	83 ec 10             	sub    esp,0x10
  970e69:	0f 28 89 80 07 00 00 	movaps xmm1,XMMWORD PTR [ecx+0x780]
  970e70:	0f 28 81 70 07 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x770]
  970e77:	0f 5c c1             	subps  xmm0,xmm1
  970e7a:	0f 59 c0             	mulps  xmm0,xmm0
  970e7d:	0f 28 c8             	movaps xmm1,xmm0
  970e80:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  970e84:	0f 28 d1             	movaps xmm2,xmm1
  970e87:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  970e8b:	0f 58 c2             	addps  xmm0,xmm2
  970e8e:	0f 58 c1             	addps  xmm0,xmm1
  970e91:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  970e95:	0f 51 c0             	sqrtps xmm0,xmm0
  970e98:	0f 29 04 24          	movaps XMMWORD PTR [esp],xmm0
  970e9c:	d9 04 24             	fld    DWORD PTR [esp]
  970e9f:	8b e5                	mov    esp,ebp
  970ea1:	5d                   	pop    ebp
  970ea2:	c3                   	ret
