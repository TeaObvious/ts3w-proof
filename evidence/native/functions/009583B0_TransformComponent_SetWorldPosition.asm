# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009583b0, 0x0095854c); analyst name TransformComponent_SetWorldPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009583b0 <.text+0x5573b0>:
  9583b0:	55                   	push   ebp
  9583b1:	8b ec                	mov    ebp,esp
  9583b3:	83 e4 f0             	and    esp,0xfffffff0
  9583b6:	83 ec 3c             	sub    esp,0x3c
  9583b9:	56                   	push   esi
  9583ba:	8b f1                	mov    esi,ecx
  9583bc:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
  9583c0:	75 10                	jne    0x9583d2
  9583c2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  9583c5:	50                   	push   eax
  9583c6:	e8 65 ff ff ff       	call   0x958330
  9583cb:	5e                   	pop    esi
  9583cc:	8b e5                	mov    esp,ebp
  9583ce:	5d                   	pop    ebp
  9583cf:	c2 04 00             	ret    0x4
  9583d2:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  9583d6:	51                   	push   ecx
  9583d7:	8b ce                	mov    ecx,esi
  9583d9:	e8 b2 eb ff ff       	call   0x956f90
  9583de:	0f 28 5c 24 20       	movaps xmm3,XMMWORD PTR [esp+0x20]
  9583e3:	f3 0f 10 15 88 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd88
  9583eb:	0f 28 c3             	movaps xmm0,xmm3
  9583ee:	0f 59 c3             	mulps  xmm0,xmm3
  9583f1:	0f 28 c8             	movaps xmm1,xmm0
  9583f4:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  9583f8:	0f 58 c8             	addps  xmm1,xmm0
  9583fb:	0f 28 c1             	movaps xmm0,xmm1
  9583fe:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  958402:	0f 58 c1             	addps  xmm0,xmm1
  958405:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  958409:	0f 53 e0             	rcpps  xmm4,xmm0
  95840c:	0f 28 ec             	movaps xmm5,xmm4
  95840f:	0f 59 e8             	mulps  xmm5,xmm0
  958412:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  958415:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  958419:	0f 28 ca             	movaps xmm1,xmm2
  95841c:	0f 5c cd             	subps  xmm1,xmm5
  95841f:	0f 28 6c 24 30       	movaps xmm5,XMMWORD PTR [esp+0x30]
  958424:	0f 59 cc             	mulps  xmm1,xmm4
  958427:	0f 28 e1             	movaps xmm4,xmm1
  95842a:	0f 59 e0             	mulps  xmm4,xmm0
  95842d:	0f 28 c2             	movaps xmm0,xmm2
  958430:	0f 5c c4             	subps  xmm0,xmm4
  958433:	0f 59 c1             	mulps  xmm0,xmm1
  958436:	0f 57 c9             	xorps  xmm1,xmm1
  958439:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  95843f:	c7 44 24 0c 00 00 00 80 	mov    DWORD PTR [esp+0xc],0x80000000
  958447:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  95844d:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  958453:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  958459:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  95845f:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  958464:	0f 57 cb             	xorps  xmm1,xmm3
  958467:	0f 59 c1             	mulps  xmm0,xmm1
  95846a:	0f 28 d8             	movaps xmm3,xmm0
  95846d:	0f c6 d8 12          	shufps xmm3,xmm0,0x12
  958471:	0f 28 e0             	movaps xmm4,xmm0
  958474:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  958478:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  95847c:	0f 28 cd             	movaps xmm1,xmm5
  95847f:	0f c6 cd 12          	shufps xmm1,xmm5,0x12
  958483:	0f 59 cc             	mulps  xmm1,xmm4
  958486:	0f 28 f5             	movaps xmm6,xmm5
  958489:	0f c6 f5 09          	shufps xmm6,xmm5,0x9
  95848d:	0f 59 f3             	mulps  xmm6,xmm3
  958490:	0f 5c ce             	subps  xmm1,xmm6
  958493:	0f 28 f0             	movaps xmm6,xmm0
  958496:	0f 59 f5             	mulps  xmm6,xmm5
  958499:	0f 58 ce             	addps  xmm1,xmm6
  95849c:	0f 28 f9             	movaps xmm7,xmm1
  95849f:	0f c6 f9 12          	shufps xmm7,xmm1,0x12
  9584a3:	0f 59 fc             	mulps  xmm7,xmm4
  9584a6:	0f 28 f1             	movaps xmm6,xmm1
  9584a9:	0f c6 f1 09          	shufps xmm6,xmm1,0x9
  9584ad:	0f 59 f3             	mulps  xmm6,xmm3
  9584b0:	0f 5c fe             	subps  xmm7,xmm6
  9584b3:	0f 59 fa             	mulps  xmm7,xmm2
  9584b6:	0f 58 fd             	addps  xmm7,xmm5
  9584b9:	0f 28 2a             	movaps xmm5,XMMWORD PTR [edx]
  9584bc:	0f 57 f6             	xorps  xmm6,xmm6
  9584bf:	0f 5c f7             	subps  xmm6,xmm7
  9584c2:	0f 28 cd             	movaps xmm1,xmm5
  9584c5:	0f c6 cd 12          	shufps xmm1,xmm5,0x12
  9584c9:	0f 59 cc             	mulps  xmm1,xmm4
  9584cc:	0f 28 fd             	movaps xmm7,xmm5
  9584cf:	0f c6 fd 09          	shufps xmm7,xmm5,0x9
  9584d3:	0f 59 fb             	mulps  xmm7,xmm3
  9584d6:	0f 5c cf             	subps  xmm1,xmm7
  9584d9:	0f 28 fd             	movaps xmm7,xmm5
  9584dc:	0f 59 f8             	mulps  xmm7,xmm0
  9584df:	0f 58 cf             	addps  xmm1,xmm7
  9584e2:	0f 28 c1             	movaps xmm0,xmm1
  9584e5:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  9584e9:	0f 59 c4             	mulps  xmm0,xmm4
  9584ec:	0f 28 e1             	movaps xmm4,xmm1
  9584ef:	0f c6 e1 09          	shufps xmm4,xmm1,0x9
  9584f3:	0f 28 4e 20          	movaps xmm1,XMMWORD PTR [esi+0x20]
  9584f7:	0f 59 e3             	mulps  xmm4,xmm3
  9584fa:	0f 5c c4             	subps  xmm0,xmm4
  9584fd:	0f 59 c2             	mulps  xmm0,xmm2
  958500:	0f 58 c5             	addps  xmm0,xmm5
  958503:	0f 58 c6             	addps  xmm0,xmm6
  958506:	0f 28 d0             	movaps xmm2,xmm0
  958509:	0f 5c d1             	subps  xmm2,xmm1
  95850c:	f3 0f 10 0d 18 b2 fa 00 	movss  xmm1,DWORD PTR ds:0xfab218
  958514:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  958518:	0f 59 ca             	mulps  xmm1,xmm2
  95851b:	0f 5f ca             	maxps  xmm1,xmm2
  95851e:	f3 0f 10 15 1c 58 04 01 	movss  xmm2,DWORD PTR ds:0x104581c
  958526:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  95852a:	0f c2 ca 02          	cmpleps xmm1,xmm2
  95852e:	0f 50 c1             	movmskps eax,xmm1
  958531:	83 e0 07             	and    eax,0x7
  958534:	3c 07                	cmp    al,0x7
  958536:	74 0d                	je     0x958545
  958538:	6a 00                	push   0x0
  95853a:	8b ce                	mov    ecx,esi
  95853c:	0f 29 46 20          	movaps XMMWORD PTR [esi+0x20],xmm0
  958540:	e8 9b f6 ff ff       	call   0x957be0
  958545:	5e                   	pop    esi
  958546:	8b e5                	mov    esp,ebp
  958548:	5d                   	pop    ebp
  958549:	c2 04 00             	ret    0x4
