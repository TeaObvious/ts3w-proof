# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00955f40, 0x00955f9a); analyst name TransformComponent_PositionWithinFiniteRange.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00955f40 <.text+0x554f40>:
  955f40:	55                   	push   ebp
  955f41:	8b ec                	mov    ebp,esp
  955f43:	83 e4 f0             	and    esp,0xfffffff0
  955f46:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  955f49:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  955f4c:	0f 28 15 80 a2 1e 01 	movaps xmm2,XMMWORD PTR ds:0x11ea280
  955f53:	0f 28 c1             	movaps xmm0,xmm1
  955f56:	0f c2 c2 02          	cmpleps xmm0,xmm2
  955f5a:	0f 28 15 70 a2 1e 01 	movaps xmm2,XMMWORD PTR ds:0x11ea270
  955f61:	0f c2 d1 02          	cmpleps xmm2,xmm1
  955f65:	0f 54 c2             	andps  xmm0,xmm2
  955f68:	0f 28 c8             	movaps xmm1,xmm0
  955f6b:	0f 15 c8             	unpckhps xmm1,xmm0
  955f6e:	0f 28 d0             	movaps xmm2,xmm0
  955f71:	0f 14 d0             	unpcklps xmm2,xmm0
  955f74:	0f 54 ca             	andps  xmm1,xmm2
  955f77:	0f 28 d0             	movaps xmm2,xmm0
  955f7a:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  955f7e:	0f 14 c9             	unpcklps xmm1,xmm1
  955f81:	0f 54 d1             	andps  xmm2,xmm1
  955f84:	0f 57 c0             	xorps  xmm0,xmm0
  955f87:	0f c2 d0 00          	cmpeqps xmm2,xmm0
  955f8b:	33 c0                	xor    eax,eax
  955f8d:	0f 50 ca             	movmskps ecx,xmm2
  955f90:	83 f9 0f             	cmp    ecx,0xf
  955f93:	0f 95 c0             	setne  al
  955f96:	8b e5                	mov    esp,ebp
  955f98:	5d                   	pop    ebp
  955f99:	c3                   	ret
