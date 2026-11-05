# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0070e340, 0x0070e411).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_BuildTreeRandomFactors (analyst-assigned)
Entry: 0x0070e340
Ghidra body envelope: 0x0070e340..0x0070e410 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

0070e340 <.text+0x30d340>:
  70e340:	55                   	push   ebp
  70e341:	8b ec                	mov    ebp,esp
  70e343:	83 e4 f0             	and    esp,0xfffffff0
  70e346:	83 ec 20             	sub    esp,0x20
  70e349:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  70e34c:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  70e34f:	0f 28 c8             	movaps xmm1,xmm0
  70e352:	0f c6 c8 aa          	shufps xmm1,xmm0,0xaa
  70e356:	0f 28 d0             	movaps xmm2,xmm0
  70e359:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  70e35d:	0f 59 d1             	mulps  xmm2,xmm1
  70e360:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  70e365:	0f 28 d0             	movaps xmm2,xmm0
  70e368:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  70e36c:	0f 59 d1             	mulps  xmm2,xmm1
  70e36f:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  70e375:	0f 29 14 24          	movaps XMMWORD PTR [esp],xmm2
  70e379:	f3 0f 10 1c 24       	movss  xmm3,DWORD PTR [esp]
  70e37e:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  70e385:	00
  70e386:	0f 28 c3             	movaps xmm0,xmm3
  70e389:	f3 0f 58 c1          	addss  xmm0,xmm1
  70e38d:	0f 2f c2             	comiss xmm0,xmm2
  70e390:	76 3d                	jbe    0x70e3cf
  70e392:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  70e395:	f3 0f 5e d0          	divss  xmm2,xmm0
  70e399:	0f 28 c2             	movaps xmm0,xmm2
  70e39c:	f3 0f 59 d1          	mulss  xmm2,xmm1
  70e3a0:	f3 0f 10 4d 08       	movss  xmm1,DWORD PTR [ebp+0x8]
  70e3a5:	f3 0f 59 c3          	mulss  xmm0,xmm3
  70e3a9:	f3 0f 59 d1          	mulss  xmm2,xmm1
  70e3ad:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  70e3b3:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  70e3b9:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  70e3bf:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  70e3c4:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  70e3c8:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  70e3cb:	8b e5                	mov    esp,ebp
  70e3cd:	5d                   	pop    ebp
  70e3ce:	c3                   	ret
  70e3cf:	f3 0f 10 55 08       	movss  xmm2,DWORD PTR [ebp+0x8]
  70e3d4:	f3 0f 10 25 b4 b5 f9 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  70e3db:	00
  70e3dc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  70e3df:	f3 0f 59 ca          	mulss  xmm1,xmm2
  70e3e3:	f3 0f 59 c4          	mulss  xmm0,xmm4
  70e3e7:	f3 0f 58 cc          	addss  xmm1,xmm4
  70e3eb:	f3 0f 5c c8          	subss  xmm1,xmm0
  70e3ef:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  70e3f5:	f3 0f 11 5c 24 08    	movss  DWORD PTR [esp+0x8],xmm3
  70e3fb:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  70e401:	f3 0f 11 14 24       	movss  DWORD PTR [esp],xmm2
  70e406:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  70e40a:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  70e40d:	8b e5                	mov    esp,ebp
  70e40f:	5d                   	pop    ebp
  70e410:	c3                   	ret
