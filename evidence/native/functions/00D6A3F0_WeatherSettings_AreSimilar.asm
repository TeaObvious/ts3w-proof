# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6a3f0 <.text+0x9693f0>:
  d6a3f0:	55                   	push   ebp
  d6a3f1:	8b ec                	mov    ebp,esp
  d6a3f3:	83 e4 f0             	and    esp,0xfffffff0
  d6a3f6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  d6a3f9:	8b 10                	mov    edx,DWORD PTR [eax]
  d6a3fb:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  d6a3fe:	3b 11                	cmp    edx,DWORD PTR [ecx]
  d6a400:	0f 85 c7 02 00 00    	jne    0xd6a6cd
  d6a406:	f3 0f 10 50 04       	movss  xmm2,DWORD PTR [eax+0x4]
  d6a40b:	f3 0f 5c 51 04       	subss  xmm2,DWORD PTR [ecx+0x4]
  d6a410:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  d6a417:	00 
  d6a418:	f3 0f 10 0d 7c b2 08 	movss  xmm1,DWORD PTR ds:0x108b27c
  d6a41f:	01 
  d6a420:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d6a424:	0f 28 d8             	movaps xmm3,xmm0
  d6a427:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6a42b:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a42f:	0f 59 da             	mulps  xmm3,xmm2
  d6a432:	0f 5f da             	maxps  xmm3,xmm2
  d6a435:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a439:	0f 50 d3             	movmskps edx,xmm3
  d6a43c:	83 fa 0f             	cmp    edx,0xf
  d6a43f:	0f 85 88 02 00 00    	jne    0xd6a6cd
  d6a445:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [eax+0x8]
  d6a44a:	f3 0f 5c 51 08       	subss  xmm2,DWORD PTR [ecx+0x8]
  d6a44f:	0f 28 d8             	movaps xmm3,xmm0
  d6a452:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a456:	0f 59 da             	mulps  xmm3,xmm2
  d6a459:	0f 5f da             	maxps  xmm3,xmm2
  d6a45c:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a460:	0f 50 d3             	movmskps edx,xmm3
  d6a463:	83 fa 0f             	cmp    edx,0xf
  d6a466:	0f 85 61 02 00 00    	jne    0xd6a6cd
  d6a46c:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  d6a46f:	3b 51 0c             	cmp    edx,DWORD PTR [ecx+0xc]
  d6a472:	0f 85 55 02 00 00    	jne    0xd6a6cd
  d6a478:	f3 0f 10 50 10       	movss  xmm2,DWORD PTR [eax+0x10]
  d6a47d:	f3 0f 5c 51 10       	subss  xmm2,DWORD PTR [ecx+0x10]
  d6a482:	0f 28 d8             	movaps xmm3,xmm0
  d6a485:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a489:	0f 59 da             	mulps  xmm3,xmm2
  d6a48c:	0f 5f da             	maxps  xmm3,xmm2
  d6a48f:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a493:	0f 50 d3             	movmskps edx,xmm3
  d6a496:	83 fa 0f             	cmp    edx,0xf
  d6a499:	0f 85 2e 02 00 00    	jne    0xd6a6cd
  d6a49f:	f3 0f 10 50 14       	movss  xmm2,DWORD PTR [eax+0x14]
  d6a4a4:	f3 0f 5c 51 14       	subss  xmm2,DWORD PTR [ecx+0x14]
  d6a4a9:	0f 28 d8             	movaps xmm3,xmm0
  d6a4ac:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a4b0:	0f 59 da             	mulps  xmm3,xmm2
  d6a4b3:	0f 5f da             	maxps  xmm3,xmm2
  d6a4b6:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a4ba:	0f 50 d3             	movmskps edx,xmm3
  d6a4bd:	83 fa 0f             	cmp    edx,0xf
  d6a4c0:	0f 85 07 02 00 00    	jne    0xd6a6cd
  d6a4c6:	f3 0f 10 50 18       	movss  xmm2,DWORD PTR [eax+0x18]
  d6a4cb:	f3 0f 5c 51 18       	subss  xmm2,DWORD PTR [ecx+0x18]
  d6a4d0:	0f 28 d8             	movaps xmm3,xmm0
  d6a4d3:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a4d7:	0f 59 da             	mulps  xmm3,xmm2
  d6a4da:	0f 5f da             	maxps  xmm3,xmm2
  d6a4dd:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a4e1:	0f 50 d3             	movmskps edx,xmm3
  d6a4e4:	83 fa 0f             	cmp    edx,0xf
  d6a4e7:	0f 85 e0 01 00 00    	jne    0xd6a6cd
  d6a4ed:	f3 0f 10 50 1c       	movss  xmm2,DWORD PTR [eax+0x1c]
  d6a4f2:	f3 0f 5c 51 1c       	subss  xmm2,DWORD PTR [ecx+0x1c]
  d6a4f7:	0f 28 d8             	movaps xmm3,xmm0
  d6a4fa:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a4fe:	0f 59 da             	mulps  xmm3,xmm2
  d6a501:	0f 5f da             	maxps  xmm3,xmm2
  d6a504:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a508:	0f 50 d3             	movmskps edx,xmm3
  d6a50b:	83 fa 0f             	cmp    edx,0xf
  d6a50e:	0f 85 b9 01 00 00    	jne    0xd6a6cd
  d6a514:	f3 0f 10 50 20       	movss  xmm2,DWORD PTR [eax+0x20]
  d6a519:	f3 0f 5c 51 20       	subss  xmm2,DWORD PTR [ecx+0x20]
  d6a51e:	0f 28 d8             	movaps xmm3,xmm0
  d6a521:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a525:	0f 59 da             	mulps  xmm3,xmm2
  d6a528:	0f 5f da             	maxps  xmm3,xmm2
  d6a52b:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a52f:	0f 50 d3             	movmskps edx,xmm3
  d6a532:	83 fa 0f             	cmp    edx,0xf
  d6a535:	0f 85 92 01 00 00    	jne    0xd6a6cd
  d6a53b:	8a 50 24             	mov    dl,BYTE PTR [eax+0x24]
  d6a53e:	3a 51 24             	cmp    dl,BYTE PTR [ecx+0x24]
  d6a541:	0f 85 86 01 00 00    	jne    0xd6a6cd
  d6a547:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
  d6a54a:	3b 51 38             	cmp    edx,DWORD PTR [ecx+0x38]
  d6a54d:	0f 85 7a 01 00 00    	jne    0xd6a6cd
  d6a553:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
  d6a556:	3b 51 3c             	cmp    edx,DWORD PTR [ecx+0x3c]
  d6a559:	0f 85 6e 01 00 00    	jne    0xd6a6cd
  d6a55f:	66 8b 50 40          	mov    dx,WORD PTR [eax+0x40]
  d6a563:	66 3b 51 40          	cmp    dx,WORD PTR [ecx+0x40]
  d6a567:	0f 85 60 01 00 00    	jne    0xd6a6cd
  d6a56d:	f3 0f 10 50 28       	movss  xmm2,DWORD PTR [eax+0x28]
  d6a572:	f3 0f 5c 51 28       	subss  xmm2,DWORD PTR [ecx+0x28]
  d6a577:	0f 28 d8             	movaps xmm3,xmm0
  d6a57a:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a57e:	0f 59 da             	mulps  xmm3,xmm2
  d6a581:	0f 5f da             	maxps  xmm3,xmm2
  d6a584:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a588:	0f 50 d3             	movmskps edx,xmm3
  d6a58b:	83 fa 0f             	cmp    edx,0xf
  d6a58e:	0f 85 39 01 00 00    	jne    0xd6a6cd
  d6a594:	8a 50 2c             	mov    dl,BYTE PTR [eax+0x2c]
  d6a597:	3a 51 2c             	cmp    dl,BYTE PTR [ecx+0x2c]
  d6a59a:	0f 85 2d 01 00 00    	jne    0xd6a6cd
  d6a5a0:	f3 0f 10 50 30       	movss  xmm2,DWORD PTR [eax+0x30]
  d6a5a5:	f3 0f 5c 51 30       	subss  xmm2,DWORD PTR [ecx+0x30]
  d6a5aa:	0f 28 d8             	movaps xmm3,xmm0
  d6a5ad:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a5b1:	0f 59 da             	mulps  xmm3,xmm2
  d6a5b4:	0f 5f da             	maxps  xmm3,xmm2
  d6a5b7:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a5bb:	0f 50 d3             	movmskps edx,xmm3
  d6a5be:	83 fa 0f             	cmp    edx,0xf
  d6a5c1:	0f 85 06 01 00 00    	jne    0xd6a6cd
  d6a5c7:	f3 0f 10 50 44       	movss  xmm2,DWORD PTR [eax+0x44]
  d6a5cc:	f3 0f 5c 51 44       	subss  xmm2,DWORD PTR [ecx+0x44]
  d6a5d1:	0f 28 d8             	movaps xmm3,xmm0
  d6a5d4:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a5d8:	0f 59 da             	mulps  xmm3,xmm2
  d6a5db:	0f 5f da             	maxps  xmm3,xmm2
  d6a5de:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a5e2:	0f 50 d3             	movmskps edx,xmm3
  d6a5e5:	83 fa 0f             	cmp    edx,0xf
  d6a5e8:	0f 85 df 00 00 00    	jne    0xd6a6cd
  d6a5ee:	f3 0f 10 50 48       	movss  xmm2,DWORD PTR [eax+0x48]
  d6a5f3:	f3 0f 5c 51 48       	subss  xmm2,DWORD PTR [ecx+0x48]
  d6a5f8:	0f 28 d8             	movaps xmm3,xmm0
  d6a5fb:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a5ff:	0f 59 da             	mulps  xmm3,xmm2
  d6a602:	0f 5f da             	maxps  xmm3,xmm2
  d6a605:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a609:	0f 50 d3             	movmskps edx,xmm3
  d6a60c:	83 fa 0f             	cmp    edx,0xf
  d6a60f:	0f 85 b8 00 00 00    	jne    0xd6a6cd
  d6a615:	f3 0f 10 50 34       	movss  xmm2,DWORD PTR [eax+0x34]
  d6a61a:	f3 0f 5c 51 34       	subss  xmm2,DWORD PTR [ecx+0x34]
  d6a61f:	0f 28 d8             	movaps xmm3,xmm0
  d6a622:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a626:	0f 59 da             	mulps  xmm3,xmm2
  d6a629:	0f 5f da             	maxps  xmm3,xmm2
  d6a62c:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a630:	0f 50 d3             	movmskps edx,xmm3
  d6a633:	83 fa 0f             	cmp    edx,0xf
  d6a636:	0f 85 91 00 00 00    	jne    0xd6a6cd
  d6a63c:	f3 0f 10 50 4c       	movss  xmm2,DWORD PTR [eax+0x4c]
  d6a641:	f3 0f 5c 51 4c       	subss  xmm2,DWORD PTR [ecx+0x4c]
  d6a646:	0f 28 d8             	movaps xmm3,xmm0
  d6a649:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a64d:	0f 59 da             	mulps  xmm3,xmm2
  d6a650:	0f 5f da             	maxps  xmm3,xmm2
  d6a653:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a657:	0f 50 d3             	movmskps edx,xmm3
  d6a65a:	83 fa 0f             	cmp    edx,0xf
  d6a65d:	75 6e                	jne    0xd6a6cd
  d6a65f:	f3 0f 10 50 50       	movss  xmm2,DWORD PTR [eax+0x50]
  d6a664:	f3 0f 5c 51 50       	subss  xmm2,DWORD PTR [ecx+0x50]
  d6a669:	0f 28 d8             	movaps xmm3,xmm0
  d6a66c:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a670:	0f 59 da             	mulps  xmm3,xmm2
  d6a673:	0f 5f da             	maxps  xmm3,xmm2
  d6a676:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a67a:	0f 50 d3             	movmskps edx,xmm3
  d6a67d:	83 fa 0f             	cmp    edx,0xf
  d6a680:	75 4b                	jne    0xd6a6cd
  d6a682:	f3 0f 10 50 54       	movss  xmm2,DWORD PTR [eax+0x54]
  d6a687:	f3 0f 5c 51 54       	subss  xmm2,DWORD PTR [ecx+0x54]
  d6a68c:	0f 28 d8             	movaps xmm3,xmm0
  d6a68f:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a693:	0f 59 da             	mulps  xmm3,xmm2
  d6a696:	0f 5f da             	maxps  xmm3,xmm2
  d6a699:	0f c2 d9 02          	cmpleps xmm3,xmm1
  d6a69d:	0f 50 d3             	movmskps edx,xmm3
  d6a6a0:	83 fa 0f             	cmp    edx,0xf
  d6a6a3:	75 28                	jne    0xd6a6cd
  d6a6a5:	f3 0f 10 50 58       	movss  xmm2,DWORD PTR [eax+0x58]
  d6a6aa:	f3 0f 5c 51 58       	subss  xmm2,DWORD PTR [ecx+0x58]
  d6a6af:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6a6b3:	0f 59 c2             	mulps  xmm0,xmm2
  d6a6b6:	0f 5f c2             	maxps  xmm0,xmm2
  d6a6b9:	0f c2 c1 02          	cmpleps xmm0,xmm1
  d6a6bd:	0f 50 c0             	movmskps eax,xmm0
  d6a6c0:	3b c2                	cmp    eax,edx
  d6a6c2:	75 09                	jne    0xd6a6cd
  d6a6c4:	b8 01 00 00 00       	mov    eax,0x1
  d6a6c9:	8b e5                	mov    esp,ebp
  d6a6cb:	5d                   	pop    ebp
  d6a6cc:	c3                   	ret
  d6a6cd:	33 c0                	xor    eax,eax
  d6a6cf:	8b e5                	mov    esp,ebp
  d6a6d1:	5d                   	pop    ebp
  d6a6d2:	c3                   	ret
