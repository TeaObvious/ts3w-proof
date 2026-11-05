# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0062f750,0x0062f811); analyst name LotRouteGraph_ApplyLotPositionMatrix.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0062f750 <.text+0x22e750>:
  62f750:	55                   	push   ebp
  62f751:	8b ec                	mov    ebp,esp
  62f753:	83 e4 f0             	and    esp,0xfffffff0
  62f756:	83 ec 10             	sub    esp,0x10
  62f759:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  62f761:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  62f767:	f3 0f 10 45 14       	movss  xmm0,DWORD PTR [ebp+0x14]
  62f76c:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  62f772:	0f 57 c0             	xorps  xmm0,xmm0
  62f775:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  62f77b:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  62f780:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  62f785:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  62f789:	8d 45 08             	lea    eax,[ebp+0x8]
  62f78c:	50                   	push   eax
  62f78d:	83 c1 48             	add    ecx,0x48
  62f790:	0f 29 44 24 04       	movaps XMMWORD PTR [esp+0x4],xmm0
  62f795:	e8 36 fb ff ff       	call   0x62f2d0
  62f79a:	0f 28 0c 24          	movaps xmm1,XMMWORD PTR [esp]
  62f79e:	0f 28 90 b0 00 00 00 	movaps xmm2,XMMWORD PTR [eax+0xb0]
  62f7a5:	0f 28 98 a0 00 00 00 	movaps xmm3,XMMWORD PTR [eax+0xa0]
  62f7ac:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  62f7af:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  62f7b2:	05 a0 00 00 00       	add    eax,0xa0
  62f7b7:	0f 28 c1             	movaps xmm0,xmm1
  62f7ba:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  62f7be:	0f 59 c2             	mulps  xmm0,xmm2
  62f7c1:	0f 28 d1             	movaps xmm2,xmm1
  62f7c4:	0f c6 d1 00          	shufps xmm2,xmm1,0x0
  62f7c8:	0f 59 d3             	mulps  xmm2,xmm3
  62f7cb:	0f 28 58 20          	movaps xmm3,XMMWORD PTR [eax+0x20]
  62f7cf:	0f 58 c2             	addps  xmm0,xmm2
  62f7d2:	0f 28 d1             	movaps xmm2,xmm1
  62f7d5:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  62f7d9:	0f 59 d3             	mulps  xmm2,xmm3
  62f7dc:	0f 58 c2             	addps  xmm0,xmm2
  62f7df:	0f 28 d1             	movaps xmm2,xmm1
  62f7e2:	0f c6 d1 ff          	shufps xmm2,xmm1,0xff
  62f7e6:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  62f7ea:	0f 59 d1             	mulps  xmm2,xmm1
  62f7ed:	0f 58 c2             	addps  xmm0,xmm2
  62f7f0:	0f 29 04 24          	movaps XMMWORD PTR [esp],xmm0
  62f7f4:	f3 0f 10 0c 24       	movss  xmm1,DWORD PTR [esp]
  62f7f9:	0f 29 04 24          	movaps XMMWORD PTR [esp],xmm0
  62f7fd:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  62f803:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  62f807:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  62f80b:	8b e5                	mov    esp,ebp
  62f80d:	5d                   	pop    ebp
  62f80e:	c2 18 00             	ret    0x18
