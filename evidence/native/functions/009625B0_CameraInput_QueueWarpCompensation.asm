# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009625b0, 0x00962634).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

009625b0 <.text+0x5615b0>:
  9625b0:	55                   	push   ebp
  9625b1:	8b ec                	mov    ebp,esp
  9625b3:	83 e4 f0             	and    esp,0xfffffff0
  9625b6:	83 ec 20             	sub    esp,0x20
  9625b9:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  9625be:	f3 0f 10 4d 0c       	movss  xmm1,DWORD PTR [ebp+0xc]
  9625c3:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  9625c9:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  9625cf:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  9625d4:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  9625da:	0f 28 14 24          	movaps xmm2,XMMWORD PTR [esp]
  9625de:	0f 28 89 20 05 00 00 	movaps xmm1,XMMWORD PTR [ecx+0x520]
  9625e5:	0f 28 c2             	movaps xmm0,xmm2
  9625e8:	0f 59 c2             	mulps  xmm0,xmm2
  9625eb:	0f 28 d8             	movaps xmm3,xmm0
  9625ee:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  9625f2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9625f6:	0f 58 d8             	addps  xmm3,xmm0
  9625f9:	0f 59 c9             	mulps  xmm1,xmm1
  9625fc:	0f 51 c3             	sqrtps xmm0,xmm3
  9625ff:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  962604:	0f 28 c1             	movaps xmm0,xmm1
  962607:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  96260b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  96260f:	0f 58 c1             	addps  xmm0,xmm1
  962612:	0f 51 c0             	sqrtps xmm0,xmm0
  962615:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  96261b:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [esp]
  962620:	0f 2f 44 24 10       	comiss xmm0,DWORD PTR [esp+0x10]
  962625:	76 07                	jbe    0x96262e
  962627:	0f 29 91 20 05 00 00 	movaps XMMWORD PTR [ecx+0x520],xmm2
  96262e:	8b e5                	mov    esp,ebp
  962630:	5d                   	pop    ebp
  962631:	c2 08 00             	ret    0x8
