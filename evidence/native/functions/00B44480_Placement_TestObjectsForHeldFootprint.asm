# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b44480 <.text+0x743480>:
  b44480:	55                   	push   ebp
  b44481:	8b ec                	mov    ebp,esp
  b44483:	83 e4 f0             	and    esp,0xfffffff0
  b44486:	81 ec 94 01 00 00    	sub    esp,0x194
  b4448c:	53                   	push   ebx
  b4448d:	56                   	push   esi
  b4448e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b44491:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
  b44497:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
  b4449a:	f6 c3 04             	test   bl,0x4
  b4449d:	57                   	push   edi
  b4449e:	0f 85 4d 05 00 00    	jne    0xb449f1
  b444a4:	33 ff                	xor    edi,edi
  b444a6:	39 be 98 00 00 00    	cmp    DWORD PTR [esi+0x98],edi
  b444ac:	8d 86 98 00 00 00    	lea    eax,[esi+0x98]
  b444b2:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  b444b6:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  b444ba:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  b444be:	c7 44 24 2c 78 56 00 	mov    DWORD PTR [esp+0x2c],0x1005678
  b444c5:	01 
  b444c6:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b444ca:	75 20                	jne    0xb444ec
  b444cc:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  b444cf:	6a 01                	push   0x1
  b444d1:	6a 04                	push   0x4
  b444d3:	6a 01                	push   0x1
  b444d5:	6a 01                	push   0x1
  b444d7:	6a 01                	push   0x1
  b444d9:	51                   	push   ecx
  b444da:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b444dd:	52                   	push   edx
  b444de:	8d 86 c0 00 00 00    	lea    eax,[esi+0xc0]
  b444e4:	50                   	push   eax
  b444e5:	e8 e6 40 f8 ff       	call   0xac85d0
  b444ea:	eb 07                	jmp    0xb444f3
  b444ec:	50                   	push   eax
  b444ed:	57                   	push   edi
  b444ee:	e8 2d df e3 ff       	call   0x982420
  b444f3:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  b444f7:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  b444fb:	2b c1                	sub    eax,ecx
  b444fd:	c1 f8 02             	sar    eax,0x2
  b44500:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  b44504:	0f 84 da 04 00 00    	je     0xb449e4
  b4450a:	80 be 80 00 00 00 00 	cmp    BYTE PTR [esi+0x80],0x0
  b44511:	75 07                	jne    0xb4451a
  b44513:	3b cf                	cmp    ecx,edi
  b44515:	e9 cc 04 00 00       	jmp    0xb449e6
  b4451a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b4451d:	8b 88 90 02 00 00    	mov    ecx,DWORD PTR [eax+0x290]
  b44523:	8d 7e 08             	lea    edi,[esi+0x8]
  b44526:	57                   	push   edi
  b44527:	e8 64 81 f4 ff       	call   0xa8c690
  b4452c:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  b44530:	d9 46 14             	fld    DWORD PTR [esi+0x14]
  b44533:	f3 0f 10 4e 0c       	movss  xmm1,DWORD PTR [esi+0xc]
  b44538:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b4453b:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  b4453f:	8d 8c 24 60 01 00 00 	lea    ecx,[esp+0x160]
  b44546:	51                   	push   ecx
  b44547:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  b4454e:	52                   	push   edx
  b4454f:	8b 16                	mov    edx,DWORD PTR [esi]
  b44551:	51                   	push   ecx
  b44552:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  b44555:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44558:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  b4455e:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  b44563:	f3 0f 58 4c 24 24    	addss  xmm1,DWORD PTR [esp+0x24]
  b44569:	50                   	push   eax
  b4456a:	51                   	push   ecx
  b4456b:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  b44571:	f3 0f 11 4c 24 48    	movss  DWORD PTR [esp+0x48],xmm1
  b44577:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  b4457d:	0f 28 44 24 44       	movaps xmm0,XMMWORD PTR [esp+0x44]
  b44582:	52                   	push   edx
  b44583:	0f 29 84 24 a8 00 00 	movaps XMMWORD PTR [esp+0xa8],xmm0
  b4458a:	00 
  b4458b:	e8 e0 19 fc ff       	call   0xb05f70
  b44590:	0f 28 46 60          	movaps xmm0,XMMWORD PTR [esi+0x60]
  b44594:	83 c4 18             	add    esp,0x18
  b44597:	8d 84 24 60 01 00 00 	lea    eax,[esp+0x160]
  b4459e:	50                   	push   eax
  b4459f:	8d 8c 24 c4 00 00 00 	lea    ecx,[esp+0xc4]
  b445a6:	0f 29 84 24 c4 00 00 	movaps XMMWORD PTR [esp+0xc4],xmm0
  b445ad:	00 
  b445ae:	0f 28 46 70          	movaps xmm0,XMMWORD PTR [esi+0x70]
  b445b2:	51                   	push   ecx
  b445b3:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  b445ba:	0f 29 84 24 d8 00 00 	movaps XMMWORD PTR [esp+0xd8],xmm0
  b445c1:	00 
  b445c2:	e8 e9 95 b4 ff       	call   0x68dbb0
  b445c7:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  b445ca:	33 ff                	xor    edi,edi
  b445cc:	3b cf                	cmp    ecx,edi
  b445ce:	74 0f                	je     0xb445df
  b445d0:	e8 8b 31 15 00       	call   0xc97760
  b445d5:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  b445d9:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
  b445dd:	eb 08                	jmp    0xb445e7
  b445df:	89 7c 24 58          	mov    DWORD PTR [esp+0x58],edi
  b445e3:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  b445e7:	8b c3                	mov    eax,ebx
  b445e9:	c1 e8 07             	shr    eax,0x7
  b445ec:	24 01                	and    al,0x1
  b445ee:	88 44 24 16          	mov    BYTE PTR [esp+0x16],al
  b445f2:	8b c3                	mov    eax,ebx
  b445f4:	c1 e8 08             	shr    eax,0x8
  b445f7:	24 01                	and    al,0x1
  b445f9:	c1 eb 09             	shr    ebx,0x9
  b445fc:	88 44 24 15          	mov    BYTE PTR [esp+0x15],al
  b44600:	80 e3 01             	and    bl,0x1
  b44603:	33 c0                	xor    eax,eax
  b44605:	39 7c 24 44          	cmp    DWORD PTR [esp+0x44],edi
  b44609:	88 5c 24 17          	mov    BYTE PTR [esp+0x17],bl
  b4460d:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  b44611:	0f 86 c9 03 00 00    	jbe    0xb449e0
  b44617:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  b4461b:	8b 3c 82             	mov    edi,DWORD PTR [edx+eax*4]
  b4461e:	85 ff                	test   edi,edi
  b44620:	0f 84 a5 03 00 00    	je     0xb449cb
  b44626:	8b 1e                	mov    ebx,DWORD PTR [esi]
  b44628:	85 db                	test   ebx,ebx
  b4462a:	0f 84 9b 03 00 00    	je     0xb449cb
  b44630:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  b44633:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  b44636:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
  b44639:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  b4463d:	8d 4e 34             	lea    ecx,[esi+0x34]
  b44640:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  b44644:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  b44647:	8b 14 90             	mov    edx,DWORD PTR [eax+edx*4]
  b4464a:	8d 44 24 68          	lea    eax,[esp+0x68]
  b4464e:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
  b44655:	50                   	push   eax
  b44656:	8d 94 24 8c 00 00 00 	lea    edx,[esp+0x8c]
  b4465d:	52                   	push   edx
  b4465e:	e8 5d 40 ae ff       	call   0x6286c0
  b44663:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  b4466a:	39 08                	cmp    DWORD PTR [eax],ecx
  b4466c:	0f 85 59 03 00 00    	jne    0xb449cb
  b44672:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  b44675:	8b 5b 0c             	mov    ebx,DWORD PTR [ebx+0xc]
  b44678:	57                   	push   edi
  b44679:	53                   	push   ebx
  b4467a:	50                   	push   eax
  b4467b:	e8 40 2b fc ff       	call   0xb071c0
  b44680:	83 c4 0c             	add    esp,0xc
  b44683:	84 c0                	test   al,al
  b44685:	0f 85 40 03 00 00    	jne    0xb449cb
  b4468b:	57                   	push   edi
  b4468c:	e8 2f 81 fb ff       	call   0xafc7c0
  b44691:	83 c4 04             	add    esp,0x4
  b44694:	84 c0                	test   al,al
  b44696:	74 1b                	je     0xb446b3
  b44698:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  b4469b:	52                   	push   edx
  b4469c:	57                   	push   edi
  b4469d:	8d 84 24 a8 00 00 00 	lea    eax,[esp+0xa8]
  b446a4:	50                   	push   eax
  b446a5:	56                   	push   esi
  b446a6:	e8 35 d8 ff ff       	call   0xb41ee0
  b446ab:	83 c4 10             	add    esp,0x10
  b446ae:	e9 14 03 00 00       	jmp    0xb449c7
  b446b3:	57                   	push   edi
  b446b4:	e8 f7 b6 fb ff       	call   0xaffdb0
  b446b9:	8b d8                	mov    ebx,eax
  b446bb:	83 c4 04             	add    esp,0x4
  b446be:	85 db                	test   ebx,ebx
  b446c0:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  b446c4:	0f 84 57 02 00 00    	je     0xb44921
  b446ca:	80 7c 24 16 00       	cmp    BYTE PTR [esp+0x16],0x0
  b446cf:	0f 84 1d 02 00 00    	je     0xb448f2
  b446d5:	8b cb                	mov    ecx,ebx
  b446d7:	e8 84 30 15 00       	call   0xc97760
  b446dc:	39 44 24 58          	cmp    DWORD PTR [esp+0x58],eax
  b446e0:	0f 85 0c 02 00 00    	jne    0xb448f2
  b446e6:	39 54 24 5c          	cmp    DWORD PTR [esp+0x5c],edx
  b446ea:	0f 85 02 02 00 00    	jne    0xb448f2
  b446f0:	f7 83 d0 00 00 00 00 	test   DWORD PTR [ebx+0xd0],0x20000
  b446f7:	00 02 00 
  b446fa:	0f 84 d8 00 00 00    	je     0xb447d8
  b44700:	57                   	push   edi
  b44701:	e8 7a 74 c0 ff       	call   0x74bb80
  b44706:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b4470d:	00 
  b4470e:	83 c4 04             	add    esp,0x4
  b44711:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  b44715:	51                   	push   ecx
  b44716:	8b d8                	mov    ebx,eax
  b44718:	8d 54 24 38          	lea    edx,[esp+0x38]
  b4471c:	52                   	push   edx
  b4471d:	8d 44 24 38          	lea    eax,[esp+0x38]
  b44721:	50                   	push   eax
  b44722:	8b cb                	mov    ecx,ebx
  b44724:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  b4472a:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  b44730:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  b44737:	00 
  b44738:	e8 a3 4d 14 00       	call   0xc894e0
  b4473d:	8b cb                	mov    ecx,ebx
  b4473f:	e8 fc 51 14 00       	call   0xc89940
  b44744:	d8 66 14             	fsub   DWORD PTR [esi+0x14]
  b44747:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b4474e:	00 
  b4474f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b44753:	d9 5c 24 64          	fstp   DWORD PTR [esp+0x64]
  b44757:	f3 0f 10 54 24 64    	movss  xmm2,DWORD PTR [esp+0x64]
  b4475d:	f3 0f 10 0d 64 d7 06 	movss  xmm1,DWORD PTR ds:0x106d764
  b44764:	01 
  b44765:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b44769:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b4476d:	0f 28 da             	movaps xmm3,xmm2
  b44770:	0f 59 d8             	mulps  xmm3,xmm0
  b44773:	0f 5f da             	maxps  xmm3,xmm2
  b44776:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b4477a:	0f 50 cb             	movmskps ecx,xmm3
  b4477d:	83 f9 0f             	cmp    ecx,0xf
  b44780:	0f 85 74 02 00 00    	jne    0xb449fa
  b44786:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  b4478c:	f3 0f 5c 56 08       	subss  xmm2,DWORD PTR [esi+0x8]
  b44791:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b44795:	0f 28 da             	movaps xmm3,xmm2
  b44798:	0f 59 d8             	mulps  xmm3,xmm0
  b4479b:	0f 5f da             	maxps  xmm3,xmm2
  b4479e:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b447a2:	0f 50 d3             	movmskps edx,xmm3
  b447a5:	3b d1                	cmp    edx,ecx
  b447a7:	0f 85 4d 02 00 00    	jne    0xb449fa
  b447ad:	f3 0f 10 54 24 34    	movss  xmm2,DWORD PTR [esp+0x34]
  b447b3:	f3 0f 5c 56 0c       	subss  xmm2,DWORD PTR [esi+0xc]
  b447b8:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b447bc:	0f 28 da             	movaps xmm3,xmm2
  b447bf:	0f 59 d8             	mulps  xmm3,xmm0
  b447c2:	0f 5f da             	maxps  xmm3,xmm2
  b447c5:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b447c9:	0f 50 c3             	movmskps eax,xmm3
  b447cc:	3b c1                	cmp    eax,ecx
  b447ce:	0f 85 26 02 00 00    	jne    0xb449fa
  b447d4:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  b447d8:	f7 83 d0 00 00 00 00 	test   DWORD PTR [ebx+0xd0],0x40000
  b447df:	00 04 00 
  b447e2:	0f 84 e3 01 00 00    	je     0xb449cb
  b447e8:	57                   	push   edi
  b447e9:	e8 92 73 c0 ff       	call   0x74bb80
  b447ee:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b447f5:	00 
  b447f6:	83 c4 04             	add    esp,0x4
  b447f9:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  b447fd:	51                   	push   ecx
  b447fe:	8b d8                	mov    ebx,eax
  b44800:	8d 54 24 50          	lea    edx,[esp+0x50]
  b44804:	52                   	push   edx
  b44805:	8d 44 24 50          	lea    eax,[esp+0x50]
  b44809:	50                   	push   eax
  b4480a:	8b cb                	mov    ecx,ebx
  b4480c:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  b44812:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  b44818:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
  b4481f:	00 
  b44820:	e8 bb 4c 14 00       	call   0xc894e0
  b44825:	8b cb                	mov    ecx,ebx
  b44827:	e8 14 51 14 00       	call   0xc89940
  b4482c:	d8 66 14             	fsub   DWORD PTR [esi+0x14]
  b4482f:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b44836:	00 
  b44837:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b4483b:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  b4483f:	f3 0f 10 54 24 1c    	movss  xmm2,DWORD PTR [esp+0x1c]
  b44845:	f3 0f 10 0d 64 d7 06 	movss  xmm1,DWORD PTR ds:0x106d764
  b4484c:	01 
  b4484d:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b44851:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b44855:	0f 28 da             	movaps xmm3,xmm2
  b44858:	0f 59 d8             	mulps  xmm3,xmm0
  b4485b:	0f 5f da             	maxps  xmm3,xmm2
  b4485e:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b44862:	0f 50 cb             	movmskps ecx,xmm3
  b44865:	83 f9 0f             	cmp    ecx,0xf
  b44868:	75 53                	jne    0xb448bd
  b4486a:	f3 0f 10 54 24 48    	movss  xmm2,DWORD PTR [esp+0x48]
  b44870:	f3 0f 5c 56 08       	subss  xmm2,DWORD PTR [esi+0x8]
  b44875:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b44879:	0f 28 da             	movaps xmm3,xmm2
  b4487c:	0f 59 d8             	mulps  xmm3,xmm0
  b4487f:	0f 5f da             	maxps  xmm3,xmm2
  b44882:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b44886:	0f 50 d3             	movmskps edx,xmm3
  b44889:	3b d1                	cmp    edx,ecx
  b4488b:	75 30                	jne    0xb448bd
  b4488d:	f3 0f 10 54 24 4c    	movss  xmm2,DWORD PTR [esp+0x4c]
  b44893:	f3 0f 5c 56 0c       	subss  xmm2,DWORD PTR [esi+0xc]
  b44898:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b4489c:	0f 28 da             	movaps xmm3,xmm2
  b4489f:	0f 59 d8             	mulps  xmm3,xmm0
  b448a2:	0f 5f da             	maxps  xmm3,xmm2
  b448a5:	0f c2 d9 02          	cmpleps xmm3,xmm1
  b448a9:	0f 50 c3             	movmskps eax,xmm3
  b448ac:	3b c1                	cmp    eax,ecx
  b448ae:	75 0d                	jne    0xb448bd
  b448b0:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  b448b4:	3b 4e 10             	cmp    ecx,DWORD PTR [esi+0x10]
  b448b7:	0f 85 0e 01 00 00    	jne    0xb449cb
  b448bd:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  b448c0:	85 f6                	test   esi,esi
  b448c2:	0f 84 63 01 00 00    	je     0xb44a2b
  b448c8:	57                   	push   edi
  b448c9:	6a 11                	push   0x11
  b448cb:	8d 8c 24 28 01 00 00 	lea    ecx,[esp+0x128]
  b448d2:	e8 d9 26 f9 ff       	call   0xad6fb0
  b448d7:	8d 84 24 20 01 00 00 	lea    eax,[esp+0x120]
  b448de:	50                   	push   eax
  b448df:	8b ce                	mov    ecx,esi
  b448e1:	e8 8a 3c f9 ff       	call   0xad8570
  b448e6:	8d 8c 24 20 01 00 00 	lea    ecx,[esp+0x120]
  b448ed:	e9 34 01 00 00       	jmp    0xb44a26
  b448f2:	80 7c 24 15 00       	cmp    BYTE PTR [esp+0x15],0x0
  b448f7:	74 0f                	je     0xb44908
  b448f9:	8b cb                	mov    ecx,ebx
  b448fb:	e8 90 2e 15 00       	call   0xc97790
  b44900:	84 c0                	test   al,al
  b44902:	0f 85 c3 00 00 00    	jne    0xb449cb
  b44908:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  b4490d:	74 12                	je     0xb44921
  b4490f:	8b 93 d0 00 00 00    	mov    edx,DWORD PTR [ebx+0xd0]
  b44915:	c1 ea 02             	shr    edx,0x2
  b44918:	f6 c2 01             	test   dl,0x1
  b4491b:	0f 85 aa 00 00 00    	jne    0xb449cb
  b44921:	68 6c db fe 00       	push   0xfedb6c
  b44926:	e8 c5 8d a5 ff       	call   0x59d6f0
  b4492b:	8b c8                	mov    ecx,eax
  b4492d:	e8 5e 8e a5 ff       	call   0x59d790
  b44932:	80 be 89 00 00 00 00 	cmp    BYTE PTR [esi+0x89],0x0
  b44939:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  b4493d:	89 54 24 74          	mov    DWORD PTR [esp+0x74],edx
  b44941:	c7 44 24 78 1d 4f 9e 	mov    DWORD PTR [esp+0x78],0x319e4f1d
  b44948:	31 
  b44949:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [esp+0x7c],0x0
  b44950:	00 
  b44951:	74 15                	je     0xb44968
  b44953:	8d 44 24 70          	lea    eax,[esp+0x70]
  b44957:	50                   	push   eax
  b44958:	8d 4f 18             	lea    ecx,[edi+0x18]
  b4495b:	51                   	push   ecx
  b4495c:	e8 3f ee 95 ff       	call   0x4a37a0
  b44961:	83 c4 08             	add    esp,0x8
  b44964:	84 c0                	test   al,al
  b44966:	75 63                	jne    0xb449cb
  b44968:	85 db                	test   ebx,ebx
  b4496a:	74 5f                	je     0xb449cb
  b4496c:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
  b44973:	75 3b                	jne    0xb449b0
  b44975:	f7 83 a0 00 00 00 00 	test   DWORD PTR [ebx+0xa0],0x8000000
  b4497c:	00 00 08 
  b4497f:	75 2f                	jne    0xb449b0
  b44981:	8d 54 24 54          	lea    edx,[esp+0x54]
  b44985:	52                   	push   edx
  b44986:	57                   	push   edi
  b44987:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
  b4498e:	00 
  b4498f:	e8 9c d5 fb ff       	call   0xb01f30
  b44994:	83 c4 08             	add    esp,0x8
  b44997:	85 c0                	test   eax,eax
  b44999:	74 15                	je     0xb449b0
  b4499b:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  b4499f:	85 c0                	test   eax,eax
  b449a1:	74 28                	je     0xb449cb
  b449a3:	50                   	push   eax
  b449a4:	e8 67 7f fb ff       	call   0xafc910
  b449a9:	83 c4 04             	add    esp,0x4
  b449ac:	84 c0                	test   al,al
  b449ae:	74 1b                	je     0xb449cb
  b449b0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b449b3:	50                   	push   eax
  b449b4:	53                   	push   ebx
  b449b5:	57                   	push   edi
  b449b6:	8d 8c 24 ac 00 00 00 	lea    ecx,[esp+0xac]
  b449bd:	51                   	push   ecx
  b449be:	56                   	push   esi
  b449bf:	e8 bc d7 ff ff       	call   0xb42180
  b449c4:	83 c4 14             	add    esp,0x14
  b449c7:	84 c0                	test   al,al
  b449c9:	74 60                	je     0xb44a2b
  b449cb:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  b449cf:	83 c0 01             	add    eax,0x1
  b449d2:	3b 44 24 44          	cmp    eax,DWORD PTR [esp+0x44]
  b449d6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  b449da:	0f 82 37 fc ff ff    	jb     0xb44617
  b449e0:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  b449e4:	85 c9                	test   ecx,ecx
  b449e6:	74 09                	je     0xb449f1
  b449e8:	51                   	push   ecx
  b449e9:	e8 f2 fa 99 ff       	call   0x4e44e0
  b449ee:	83 c4 04             	add    esp,0x4
  b449f1:	b0 01                	mov    al,0x1
  b449f3:	5f                   	pop    edi
  b449f4:	5e                   	pop    esi
  b449f5:	5b                   	pop    ebx
  b449f6:	8b e5                	mov    esp,ebp
  b449f8:	5d                   	pop    ebp
  b449f9:	c3                   	ret
  b449fa:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  b449fd:	85 f6                	test   esi,esi
  b449ff:	74 2a                	je     0xb44a2b
  b44a01:	57                   	push   edi
  b44a02:	6a 11                	push   0x11
  b44a04:	8d 8c 24 e8 00 00 00 	lea    ecx,[esp+0xe8]
  b44a0b:	e8 a0 25 f9 ff       	call   0xad6fb0
  b44a10:	8d 94 24 e0 00 00 00 	lea    edx,[esp+0xe0]
  b44a17:	52                   	push   edx
  b44a18:	8b ce                	mov    ecx,esi
  b44a1a:	e8 51 3b f9 ff       	call   0xad8570
  b44a1f:	8d 8c 24 e0 00 00 00 	lea    ecx,[esp+0xe0]
  b44a26:	e8 a5 26 f9 ff       	call   0xad70d0
  b44a2b:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b44a2f:	85 c0                	test   eax,eax
  b44a31:	74 09                	je     0xb44a3c
  b44a33:	50                   	push   eax
  b44a34:	e8 a7 fa 99 ff       	call   0x4e44e0
  b44a39:	83 c4 04             	add    esp,0x4
  b44a3c:	5f                   	pop    edi
  b44a3d:	5e                   	pop    esi
  b44a3e:	32 c0                	xor    al,al
  b44a40:	5b                   	pop    ebx
  b44a41:	8b e5                	mov    esp,ebp
  b44a43:	5d                   	pop    ebp
  b44a44:	c3                   	ret
