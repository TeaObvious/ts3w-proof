# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c6d3b0..00c6d78b; WorldManager_UpdateFrame
  c6d3b0:	55                   	push   ebp
  c6d3b1:	8b ec                	mov    ebp,esp
  c6d3b3:	83 e4 f0             	and    esp,0xfffffff0
  c6d3b6:	83 ec 64             	sub    esp,0x64
  c6d3b9:	53                   	push   ebx
  c6d3ba:	56                   	push   esi
  c6d3bb:	8b f1                	mov    esi,ecx
  c6d3bd:	83 be b4 01 00 00 00 	cmp    DWORD PTR [esi+0x1b4],0x0
  c6d3c4:	57                   	push   edi
  c6d3c5:	75 36                	jne    0xc6d3fd
  c6d3c7:	f3 0f 10 86 28 01 00 00 	movss  xmm0,DWORD PTR [esi+0x128]
  c6d3cf:	f3 0f 59 45 0c       	mulss  xmm0,DWORD PTR [ebp+0xc]
  c6d3d4:	f3 0f 58 86 24 01 00 00 	addss  xmm0,DWORD PTR [esi+0x124]
  c6d3dc:	f3 0f 10 0d 34 ab 07 01 	movss  xmm1,DWORD PTR ds:0x107ab34
  c6d3e4:	0f 2f c1             	comiss xmm0,xmm1
  c6d3e7:	f3 0f 11 86 24 01 00 00 	movss  DWORD PTR [esi+0x124],xmm0
  c6d3ef:	76 0c                	jbe    0xc6d3fd
  c6d3f1:	f3 0f 5c c1          	subss  xmm0,xmm1
  c6d3f5:	f3 0f 11 86 24 01 00 00 	movss  DWORD PTR [esi+0x124],xmm0
  c6d3fd:	e8 6e ad a7 ff       	call   0x6e8170
  c6d402:	8b c8                	mov    ecx,eax
  c6d404:	e8 c7 8d 8c ff       	call   0x5361d0
  c6d409:	0f 28 40 60          	movaps xmm0,XMMWORD PTR [eax+0x60]
  c6d40d:	8b c8                	mov    ecx,eax
  c6d40f:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  c6d414:	e8 c7 29 cf ff       	call   0x95fde0
  c6d419:	83 7e 58 00          	cmp    DWORD PTR [esi+0x58],0x0
  c6d41d:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  c6d420:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  c6d425:	0f 84 a9 00 00 00    	je     0xc6d4d4
  c6d42b:	e8 30 c2 a7 ff       	call   0x6e9660
  c6d430:	8b f8                	mov    edi,eax
  c6d432:	e8 a9 07 a9 ff       	call   0x6fdbe0
  c6d437:	83 be b4 01 00 00 00 	cmp    DWORD PTR [esi+0x1b4],0x0
  c6d43e:	8b d8                	mov    ebx,eax
  c6d440:	74 3f                	je     0xc6d481
  c6d442:	85 ff                	test   edi,edi
  c6d444:	74 0d                	je     0xc6d453
  c6d446:	6a 01                	push   0x1
  c6d448:	8b cf                	mov    ecx,edi
  c6d44a:	e8 81 84 a4 ff       	call   0x6b58d0
  c6d44f:	84 c0                	test   al,al
  c6d451:	75 11                	jne    0xc6d464
  c6d453:	85 db                	test   ebx,ebx
  c6d455:	74 2a                	je     0xc6d481
  c6d457:	6a 01                	push   0x1
  c6d459:	8b cb                	mov    ecx,ebx
  c6d45b:	e8 20 07 a9 ff       	call   0x6fdb80
  c6d460:	84 c0                	test   al,al
  c6d462:	74 1d                	je     0xc6d481
  c6d464:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  c6d46a:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  c6d46d:	33 c0                	xor    eax,eax
  c6d46f:	38 46 43             	cmp    BYTE PTR [esi+0x43],al
  c6d472:	6a 01                	push   0x1
  c6d474:	0f 94 c0             	sete   al
  c6d477:	50                   	push   eax
  c6d478:	51                   	push   ecx
  c6d479:	8b 4a 64             	mov    ecx,DWORD PTR [edx+0x64]
  c6d47c:	e8 1f b9 fb ff       	call   0xc28da0
  c6d481:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  c6d486:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  c6d48a:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  c6d490:	f3 0f 10 86 e8 00 00 00 	movss  xmm0,DWORD PTR [esi+0xe8]
  c6d498:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  c6d49c:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  c6d4a2:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  c6d4a8:	0f 2f 44 24 40       	comiss xmm0,DWORD PTR [esp+0x40]
  c6d4ad:	73 0e                	jae    0xc6d4bd
  c6d4af:	80 be da 00 00 00 00 	cmp    BYTE PTR [esi+0xda],0x0
  c6d4b6:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  c6d4bb:	74 05                	je     0xc6d4c2
  c6d4bd:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  c6d4c2:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  c6d4c6:	50                   	push   eax
  c6d4c7:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c6d4cb:	51                   	push   ecx
  c6d4cc:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  c6d4cf:	e8 9c 70 01 00       	call   0xc84570
  c6d4d4:	80 be 58 02 00 00 00 	cmp    BYTE PTR [esi+0x258],0x0
  c6d4db:	75 4c                	jne    0xc6d529
  c6d4dd:	e8 8e ac a7 ff       	call   0x6e8170
  c6d4e2:	8b c8                	mov    ecx,eax
  c6d4e4:	e8 e7 8c 8c ff       	call   0x5361d0
  c6d4e9:	8b d8                	mov    ebx,eax
  c6d4eb:	85 db                	test   ebx,ebx
  c6d4ed:	74 11                	je     0xc6d500
  c6d4ef:	8d 54 24 50          	lea    edx,[esp+0x50]
  c6d4f3:	52                   	push   edx
  c6d4f4:	8d 44 24 64          	lea    eax,[esp+0x64]
  c6d4f8:	50                   	push   eax
  c6d4f9:	8b cb                	mov    ecx,ebx
  c6d4fb:	e8 a0 37 cf ff       	call   0x960ca0
  c6d500:	8b cb                	mov    ecx,ebx
  c6d502:	e8 29 29 cf ff       	call   0x95fe30
  c6d507:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c6d50a:	84 c0                	test   al,al
  c6d50c:	0f 94 c1             	sete   cl
  c6d50f:	88 4c 24 0c          	mov    BYTE PTR [esp+0xc],cl
  c6d513:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  c6d517:	53                   	push   ebx
  c6d518:	52                   	push   edx
  c6d519:	8d 44 24 18          	lea    eax,[esp+0x18]
  c6d51d:	50                   	push   eax
  c6d51e:	51                   	push   ecx
  c6d51f:	8b ce                	mov    ecx,esi
  c6d521:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d524:	e8 a7 eb ff ff       	call   0xc6c0d0
  c6d529:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  c6d52c:	85 c9                	test   ecx,ecx
  c6d52e:	74 05                	je     0xc6d535
  c6d530:	e8 1b a4 f1 ff       	call   0xb87950
  c6d535:	83 7e 60 00          	cmp    DWORD PTR [esi+0x60],0x0
  c6d539:	74 44                	je     0xc6d57f
  c6d53b:	8b 8e 10 01 00 00    	mov    ecx,DWORD PTR [esi+0x110]
  c6d541:	85 c9                	test   ecx,ecx
  c6d543:	8d be 10 01 00 00    	lea    edi,[esi+0x110]
  c6d549:	74 20                	je     0xc6d56b
  c6d54b:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  c6d54e:	8d 9e 14 01 00 00    	lea    ebx,[esi+0x114]
  c6d554:	53                   	push   ebx
  c6d555:	e8 16 ca f9 ff       	call   0xc09f70
  c6d55a:	33 d2                	xor    edx,edx
  c6d55c:	87 17                	xchg   DWORD PTR [edi],edx
  c6d55e:	33 c0                	xor    eax,eax
  c6d560:	89 03                	mov    DWORD PTR [ebx],eax
  c6d562:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  c6d565:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  c6d568:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
  c6d56b:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c6d56e:	8d 44 24 10          	lea    eax,[esp+0x10]
  c6d572:	50                   	push   eax
  c6d573:	51                   	push   ecx
  c6d574:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  c6d577:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d57a:	e8 01 f2 f9 ff       	call   0xc0c780
  c6d57f:	8b 9e 04 01 00 00    	mov    ebx,DWORD PTR [esi+0x104]
  c6d585:	2b 9e 00 01 00 00    	sub    ebx,DWORD PTR [esi+0x100]
  c6d58b:	33 ff                	xor    edi,edi
  c6d58d:	c1 fb 02             	sar    ebx,0x2
  c6d590:	74 1c                	je     0xc6d5ae
  c6d592:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c6d595:	51                   	push   ecx
  c6d596:	8b 8e 00 01 00 00    	mov    ecx,DWORD PTR [esi+0x100]
  c6d59c:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d59f:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  c6d5a2:	e8 69 f1 ee ff       	call   0xb5c710
  c6d5a7:	83 c7 01             	add    edi,0x1
  c6d5aa:	3b fb                	cmp    edi,ebx
  c6d5ac:	72 e4                	jb     0xc6d592
  c6d5ae:	8b 4e 74             	mov    ecx,DWORD PTR [esi+0x74]
  c6d5b1:	85 c9                	test   ecx,ecx
  c6d5b3:	74 15                	je     0xc6d5ca
  c6d5b5:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c6d5b8:	83 ec 08             	sub    esp,0x8
  c6d5bb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c6d5bf:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c6d5c2:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d5c5:	e8 86 0e 10 00       	call   0xd6e450
  c6d5ca:	8b 4e 64             	mov    ecx,DWORD PTR [esi+0x64]
  c6d5cd:	85 c9                	test   ecx,ecx
  c6d5cf:	74 15                	je     0xc6d5e6
  c6d5d1:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  c6d5d4:	83 ec 08             	sub    esp,0x8
  c6d5d7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c6d5db:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c6d5de:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d5e1:	e8 7a 71 fa ff       	call   0xc14760
  c6d5e6:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  c6d5e9:	85 c9                	test   ecx,ecx
  c6d5eb:	74 11                	je     0xc6d5fe
  c6d5ed:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  c6d5f0:	8d 54 24 10          	lea    edx,[esp+0x10]
  c6d5f4:	52                   	push   edx
  c6d5f5:	51                   	push   ecx
  c6d5f6:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6d5f9:	e8 82 20 de ff       	call   0xa4f680
  c6d5fe:	8b 86 98 00 00 00    	mov    eax,DWORD PTR [esi+0x98]
  c6d604:	85 c0                	test   eax,eax
  c6d606:	8d be 98 00 00 00    	lea    edi,[esi+0x98]
  c6d60c:	0f 84 71 01 00 00    	je     0xc6d783
  c6d612:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d614:	83 f9 02             	cmp    ecx,0x2
  c6d617:	75 17                	jne    0xc6d630
  c6d619:	8b 4e 74             	mov    ecx,DWORD PTR [esi+0x74]
  c6d61c:	85 c9                	test   ecx,ecx
  c6d61e:	74 10                	je     0xc6d630
  c6d620:	e8 6b 61 84 ff       	call   0x4b3790
  c6d625:	85 c0                	test   eax,eax
  c6d627:	74 07                	je     0xc6d630
  c6d629:	8b c8                	mov    ecx,eax
  c6d62b:	e8 60 9c fa ff       	call   0xc17290
  c6d630:	8b 17                	mov    edx,DWORD PTR [edi]
  c6d632:	83 fa 05             	cmp    edx,0x5
  c6d635:	75 08                	jne    0xc6d63f
  c6d637:	8b 4e 74             	mov    ecx,DWORD PTR [esi+0x74]
  c6d63a:	e8 81 6a 84 ff       	call   0x4b40c0
  c6d63f:	8b 07                	mov    eax,DWORD PTR [edi]
  c6d641:	83 f8 01             	cmp    eax,0x1
  c6d644:	75 0c                	jne    0xc6d652
  c6d646:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  c6d649:	85 c9                	test   ecx,ecx
  c6d64b:	74 05                	je     0xc6d652
  c6d64d:	e8 ae d5 f9 ff       	call   0xc0ac00
  c6d652:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d654:	83 f9 03             	cmp    ecx,0x3
  c6d657:	75 05                	jne    0xc6d65e
  c6d659:	e8 b2 bc e8 ff       	call   0xaf9310
  c6d65e:	8b 17                	mov    edx,DWORD PTR [edi]
  c6d660:	83 fa 04             	cmp    edx,0x4
  c6d663:	75 08                	jne    0xc6d66d
  c6d665:	8b 4e 64             	mov    ecx,DWORD PTR [esi+0x64]
  c6d668:	e8 33 3c fa ff       	call   0xc112a0
  c6d66d:	8b 07                	mov    eax,DWORD PTR [edi]
  c6d66f:	83 f8 06             	cmp    eax,0x6
  c6d672:	75 0c                	jne    0xc6d680
  c6d674:	e8 c7 bf a7 ff       	call   0x6e9640
  c6d679:	8b c8                	mov    ecx,eax
  c6d67b:	e8 d0 27 a4 ff       	call   0x6afe50
  c6d680:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d682:	83 f9 07             	cmp    ecx,0x7
  c6d685:	74 07                	je     0xc6d68e
  c6d687:	8b 17                	mov    edx,DWORD PTR [edi]
  c6d689:	83 fa 08             	cmp    edx,0x8
  c6d68c:	75 05                	jne    0xc6d693
  c6d68e:	e8 fd 78 cf ff       	call   0x964f90
  c6d693:	8b 07                	mov    eax,DWORD PTR [edi]
  c6d695:	83 f8 0e             	cmp    eax,0xe
  c6d698:	75 05                	jne    0xc6d69f
  c6d69a:	e8 a1 f0 a3 ff       	call   0x6ac740
  c6d69f:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d6a1:	83 f9 0f             	cmp    ecx,0xf
  c6d6a4:	75 0b                	jne    0xc6d6b1
  c6d6a6:	8b ce                	mov    ecx,esi
  c6d6a8:	e8 a3 22 ff ff       	call   0xc5f950
  c6d6ad:	c6 46 04 01          	mov    BYTE PTR [esi+0x4],0x1
  c6d6b1:	8b 17                	mov    edx,DWORD PTR [edi]
  c6d6b3:	83 fa 09             	cmp    edx,0x9
  c6d6b6:	75 5f                	jne    0xc6d717
  c6d6b8:	e8 13 b5 a1 ff       	call   0x688bd0
  c6d6bd:	8b c8                	mov    ecx,eax
  c6d6bf:	e8 dc b0 a1 ff       	call   0x6887a0
  c6d6c4:	6a 00                	push   0x0
  c6d6c6:	6a 00                	push   0x0
  c6d6c8:	6a 00                	push   0x0
  c6d6ca:	6a 00                	push   0x0
  c6d6cc:	68 1c ab 07 01       	push   0x107ab1c
  c6d6d1:	6a 18                	push   0x18
  c6d6d3:	e8 28 6e 87 ff       	call   0x4e4500
  c6d6d8:	83 c4 18             	add    esp,0x18
  c6d6db:	85 c0                	test   eax,eax
  c6d6dd:	74 1e                	je     0xc6d6fd
  c6d6df:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
  c6d6e6:	c7 00 1c c9 06 01    	mov    DWORD PTR [eax],0x106c91c
  c6d6ec:	33 c9                	xor    ecx,ecx
  c6d6ee:	8d 50 04             	lea    edx,[eax+0x4]
  c6d6f1:	87 0a                	xchg   DWORD PTR [edx],ecx
  c6d6f3:	c7 00 1c c9 06 01    	mov    DWORD PTR [eax],0x106c91c
  c6d6f9:	8b f0                	mov    esi,eax
  c6d6fb:	eb 02                	jmp    0xc6d6ff
  c6d6fd:	33 f6                	xor    esi,esi
  c6d6ff:	e8 ec ed 7d ff       	call   0x44c4f0
  c6d704:	8b 10                	mov    edx,DWORD PTR [eax]
  c6d706:	6a 00                	push   0x0
  c6d708:	6a 00                	push   0x0
  c6d70a:	56                   	push   esi
  c6d70b:	8b c8                	mov    ecx,eax
  c6d70d:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  c6d710:	68 9d 51 86 04       	push   0x486519d
  c6d715:	ff d0                	call   eax
  c6d717:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d719:	83 f9 0a             	cmp    ecx,0xa
  c6d71c:	75 0f                	jne    0xc6d72d
  c6d71e:	8b 0d 30 ec 1e 01    	mov    ecx,DWORD PTR ds:0x11eec30
  c6d724:	85 c9                	test   ecx,ecx
  c6d726:	74 05                	je     0xc6d72d
  c6d728:	e8 93 a3 0e 00       	call   0xd57ac0
  c6d72d:	8b 17                	mov    edx,DWORD PTR [edi]
  c6d72f:	83 fa 0c             	cmp    edx,0xc
  c6d732:	75 0f                	jne    0xc6d743
  c6d734:	8b 0d 30 ec 1e 01    	mov    ecx,DWORD PTR ds:0x11eec30
  c6d73a:	85 c9                	test   ecx,ecx
  c6d73c:	74 05                	je     0xc6d743
  c6d73e:	e8 fd a4 0e 00       	call   0xd57c40
  c6d743:	8b 07                	mov    eax,DWORD PTR [edi]
  c6d745:	83 f8 0b             	cmp    eax,0xb
  c6d748:	75 05                	jne    0xc6d74f
  c6d74a:	e8 61 0a a7 ff       	call   0x6de1b0
  c6d74f:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c6d751:	83 f9 0d             	cmp    ecx,0xd
  c6d754:	75 05                	jne    0xc6d75b
  c6d756:	e8 b5 38 e4 ff       	call   0xab1010
  c6d75b:	8b 07                	mov    eax,DWORD PTR [edi]
  c6d75d:	83 c0 fe             	add    eax,0xfffffffe
  c6d760:	83 f8 0c             	cmp    eax,0xc
  c6d763:	77 1a                	ja     0xc6d77f
  c6d765:	0f b6 90 94 d7 c6 00 	movzx  edx,BYTE PTR [eax+0xc6d794]
  c6d76c:	ff 24 95 8c d7 c6 00 	jmp    DWORD PTR [edx*4+0xc6d78c]
  c6d773:	e8 c8 be a7 ff       	call   0x6e9640
  c6d778:	8b c8                	mov    ecx,eax
  c6d77a:	e8 e1 f2 a3 ff       	call   0x6aca60
  c6d77f:	33 c0                	xor    eax,eax
  c6d781:	87 07                	xchg   DWORD PTR [edi],eax
  c6d783:	5f                   	pop    edi
  c6d784:	5e                   	pop    esi
  c6d785:	5b                   	pop    ebx
  c6d786:	8b e5                	mov    esp,ebp
  c6d788:	5d                   	pop    ebp
  c6d789:	c2 08 00             	ret    0x8
