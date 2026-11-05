# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0062f360,0x0062f41f); analyst name LotRouteGraph_ApplyInverseLotPositionMatrix.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0062f360 <.text+0x22e360>:
  62f360:	55                   	push   ebp
  62f361:	8b ec                	mov    ebp,esp
  62f363:	83 e4 f0             	and    esp,0xfffffff0
  62f366:	83 ec 10             	sub    esp,0x10
  62f369:	8d 45 08             	lea    eax,[ebp+0x8]
  62f36c:	50                   	push   eax
  62f36d:	83 c1 48             	add    ecx,0x48
  62f370:	e8 5b ff ff ff       	call   0x62f2d0
  62f375:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  62f37d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  62f380:	0f 28 90 f0 00 00 00 	movaps xmm2,XMMWORD PTR [eax+0xf0]
  62f387:	0f 28 98 e0 00 00 00 	movaps xmm3,XMMWORD PTR [eax+0xe0]
  62f38e:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  62f394:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  62f399:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  62f39f:	0f 57 c0             	xorps  xmm0,xmm0
  62f3a2:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  62f3a8:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  62f3ac:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  62f3b1:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  62f3b5:	0f 28 c8             	movaps xmm1,xmm0
  62f3b8:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  62f3bc:	0f 59 ca             	mulps  xmm1,xmm2
  62f3bf:	0f 28 d0             	movaps xmm2,xmm0
  62f3c2:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  62f3c6:	0f 59 d3             	mulps  xmm2,xmm3
  62f3c9:	0f 28 98 00 01 00 00 	movaps xmm3,XMMWORD PTR [eax+0x100]
  62f3d0:	0f 58 ca             	addps  xmm1,xmm2
  62f3d3:	0f 28 d0             	movaps xmm2,xmm0
  62f3d6:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  62f3da:	0f 59 d3             	mulps  xmm2,xmm3
  62f3dd:	0f 58 ca             	addps  xmm1,xmm2
  62f3e0:	0f 28 d0             	movaps xmm2,xmm0
  62f3e3:	0f c6 d0 ff          	shufps xmm2,xmm0,0xff
  62f3e7:	0f 28 80 10 01 00 00 	movaps xmm0,XMMWORD PTR [eax+0x110]
  62f3ee:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  62f3f1:	0f 59 d0             	mulps  xmm2,xmm0
  62f3f4:	0f 58 ca             	addps  xmm1,xmm2
  62f3f7:	0f 29 0c 24          	movaps XMMWORD PTR [esp],xmm1
  62f3fb:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [esp]
  62f400:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  62f404:	0f 29 0c 24          	movaps XMMWORD PTR [esp],xmm1
  62f408:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  62f40e:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  62f413:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  62f416:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  62f419:	8b e5                	mov    esp,ebp
  62f41b:	5d                   	pop    ebp
  62f41c:	c2 10 00             	ret    0x10
