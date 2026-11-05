# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958610, 0x00958752); analyst name TransformComponent_SetWorldQuaternion.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958610 <.text+0x557610>:
  958610:	55                   	push   ebp
  958611:	8b ec                	mov    ebp,esp
  958613:	83 e4 f0             	and    esp,0xfffffff0
  958616:	83 ec 2c             	sub    esp,0x2c
  958619:	56                   	push   esi
  95861a:	8b f1                	mov    esi,ecx
  95861c:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
  958620:	75 10                	jne    0x958632
  958622:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  958625:	50                   	push   eax
  958626:	e8 25 ff ff ff       	call   0x958550
  95862b:	5e                   	pop    esi
  95862c:	8b e5                	mov    esp,ebp
  95862e:	5d                   	pop    ebp
  95862f:	c2 04 00             	ret    0x4
  958632:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  958636:	51                   	push   ecx
  958637:	8b ce                	mov    ecx,esi
  958639:	e8 52 e9 ff ff       	call   0x956f90
  95863e:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  958641:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  958644:	0f 28 c2             	movaps xmm0,xmm2
  958647:	0f 59 c2             	mulps  xmm0,xmm2
  95864a:	0f 28 c8             	movaps xmm1,xmm0
  95864d:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  958651:	0f 58 c8             	addps  xmm1,xmm0
  958654:	0f 28 c1             	movaps xmm0,xmm1
  958657:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  95865b:	0f 58 c1             	addps  xmm0,xmm1
  95865e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  958662:	0f 28 d8             	movaps xmm3,xmm0
  958665:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  95866d:	0f 53 e3             	rcpps  xmm4,xmm3
  958670:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  958674:	0f 28 c8             	movaps xmm1,xmm0
  958677:	0f 28 ec             	movaps xmm5,xmm4
  95867a:	0f 59 eb             	mulps  xmm5,xmm3
  95867d:	0f 5c cd             	subps  xmm1,xmm5
  958680:	0f 59 cc             	mulps  xmm1,xmm4
  958683:	0f 28 e1             	movaps xmm4,xmm1
  958686:	0f 59 e3             	mulps  xmm4,xmm3
  958689:	0f 5c c4             	subps  xmm0,xmm4
  95868c:	0f 59 c1             	mulps  xmm0,xmm1
  95868f:	0f 57 c9             	xorps  xmm1,xmm1
  958692:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  958698:	c7 44 24 0c 00 00 00 80 	mov    DWORD PTR [esp+0xc],0x80000000
  9586a0:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  9586a6:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  9586ac:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  9586b2:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  9586b8:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  9586bd:	0f 57 ca             	xorps  xmm1,xmm2
  9586c0:	0f 59 c1             	mulps  xmm0,xmm1
  9586c3:	0f 28 d0             	movaps xmm2,xmm0
  9586c6:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  9586c9:	0f 28 ca             	movaps xmm1,xmm2
  9586cc:	0f c6 ca 12          	shufps xmm1,xmm2,0x12
  9586d0:	0f 28 e8             	movaps xmm5,xmm0
  9586d3:	0f c6 e8 09          	shufps xmm5,xmm0,0x9
  9586d7:	0f 59 e9             	mulps  xmm5,xmm1
  9586da:	0f 28 f2             	movaps xmm6,xmm2
  9586dd:	0f c6 f2 09          	shufps xmm6,xmm2,0x9
  9586e1:	0f 28 c8             	movaps xmm1,xmm0
  9586e4:	0f c6 c8 12          	shufps xmm1,xmm0,0x12
  9586e8:	0f 28 e2             	movaps xmm4,xmm2
  9586eb:	0f c6 e2 ff          	shufps xmm4,xmm2,0xff
  9586ef:	0f 59 ce             	mulps  xmm1,xmm6
  9586f2:	0f 5c cd             	subps  xmm1,xmm5
  9586f5:	0f 28 e8             	movaps xmm5,xmm0
  9586f8:	0f 59 ec             	mulps  xmm5,xmm4
  9586fb:	0f 58 cd             	addps  xmm1,xmm5
  9586fe:	0f 28 d8             	movaps xmm3,xmm0
  958701:	0f c6 d8 ff          	shufps xmm3,xmm0,0xff
  958705:	0f 59 c2             	mulps  xmm0,xmm2
  958708:	0f 28 eb             	movaps xmm5,xmm3
  95870b:	0f 59 ea             	mulps  xmm5,xmm2
  95870e:	0f 58 cd             	addps  xmm1,xmm5
  958711:	0f 28 d0             	movaps xmm2,xmm0
  958714:	0f c6 d0 02          	shufps xmm2,xmm0,0x2
  958718:	0f 28 e8             	movaps xmm5,xmm0
  95871b:	0f c6 e8 01          	shufps xmm5,xmm0,0x1
  95871f:	0f 58 d5             	addps  xmm2,xmm5
  958722:	0f 58 d0             	addps  xmm2,xmm0
  958725:	0f 28 c1             	movaps xmm0,xmm1
  958728:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  95872c:	0f 59 dc             	mulps  xmm3,xmm4
  95872f:	0f 5c da             	subps  xmm3,xmm2
  958732:	8d 44 24 10          	lea    eax,[esp+0x10]
  958736:	0f c6 c3 0a          	shufps xmm0,xmm3,0xa
  95873a:	0f c6 c8 84          	shufps xmm1,xmm0,0x84
  95873e:	8b ce                	mov    ecx,esi
  958740:	50                   	push   eax
  958741:	0f 29 4c 24 14       	movaps XMMWORD PTR [esp+0x14],xmm1
  958746:	e8 05 fe ff ff       	call   0x958550
  95874b:	5e                   	pop    esi
  95874c:	8b e5                	mov    esp,ebp
  95874e:	5d                   	pop    ebp
  95874f:	c2 04 00             	ret    0x4
