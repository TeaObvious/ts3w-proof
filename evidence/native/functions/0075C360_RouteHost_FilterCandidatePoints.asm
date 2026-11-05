# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075c360, 0x0075d2e3); analyst name RouteHost_FilterCandidatePoints.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075c360 <.text+0x35b360>:
  75c360:	55                   	push   ebp
  75c361:	8b ec                	mov    ebp,esp
  75c363:	83 e4 f0             	and    esp,0xfffffff0
  75c366:	81 ec 84 02 00 00    	sub    esp,0x284
  75c36c:	53                   	push   ebx
  75c36d:	56                   	push   esi
  75c36e:	57                   	push   edi
  75c36f:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  75c373:	e8 78 c9 0c 00       	call   0x828cf0
  75c378:	8b c8                	mov    ecx,eax
  75c37a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  75c37e:	e8 3d d2 0c 00       	call   0x8295c0
  75c383:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  75c386:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  75c389:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  75c38f:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  75c397:	d9 84 24 18 01 00 00 	fld    DWORD PTR [esp+0x118]
  75c39e:	83 ec 08             	sub    esp,0x8
  75c3a1:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c3a5:	0f 29 44 24 68       	movaps XMMWORD PTR [esp+0x68],xmm0
  75c3aa:	d9 44 24 68          	fld    DWORD PTR [esp+0x68]
  75c3ae:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  75c3b2:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c3b5:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
  75c3b9:	e8 12 c4 50 00       	call   0xc687d0
  75c3be:	8b f0                	mov    esi,eax
  75c3c0:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  75c3c3:	6a 02                	push   0x2
  75c3c5:	57                   	push   edi
  75c3c6:	50                   	push   eax
  75c3c7:	56                   	push   esi
  75c3c8:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  75c3cc:	e8 9f fa fe ff       	call   0x74be70
  75c3d1:	0f b7 c0             	movzx  eax,ax
  75c3d4:	83 c4 10             	add    esp,0x10
  75c3d7:	85 f6                	test   esi,esi
  75c3d9:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  75c3dd:	74 0e                	je     0x75c3ed
  75c3df:	66 3d ff ff          	cmp    ax,0xffff
  75c3e3:	75 08                	jne    0x75c3ed
  75c3e5:	c7 44 24 5c 00 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
  75c3ed:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  75c3f0:	51                   	push   ecx
  75c3f1:	57                   	push   edi
  75c3f2:	e8 49 72 51 00       	call   0xc73640
  75c3f7:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  75c3fa:	8b 74 24 38          	mov    esi,DWORD PTR [esp+0x38]
  75c3fe:	83 c4 08             	add    esp,0x8
  75c401:	6a 01                	push   0x1
  75c403:	6a 00                	push   0x0
  75c405:	6a 04                	push   0x4
  75c407:	8b cb                	mov    ecx,ebx
  75c409:	88 44 24 27          	mov    BYTE PTR [esp+0x27],al
  75c40d:	c6 44 24 2e 00       	mov    BYTE PTR [esp+0x2e],0x0
  75c412:	81 c6 8c 00 00 00    	add    esi,0x8c
  75c418:	c6 44 24 36 00       	mov    BYTE PTR [esp+0x36],0x0
  75c41d:	e8 be 00 0c 00       	call   0x81c4e0
  75c422:	84 c0                	test   al,al
  75c424:	74 52                	je     0x75c478
  75c426:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  75c429:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  75c42d:	83 ec 0c             	sub    esp,0xc
  75c430:	0f 29 84 24 1c 01 00 00 	movaps XMMWORD PTR [esp+0x11c],xmm0
  75c438:	d9 84 24 24 01 00 00 	fld    DWORD PTR [esp+0x124]
  75c43f:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  75c443:	0f 29 44 24 6c       	movaps XMMWORD PTR [esp+0x6c],xmm0
  75c448:	d9 e8                	fld1
  75c44a:	8b ce                	mov    ecx,esi
  75c44c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c450:	c6 44 24 36 01       	mov    BYTE PTR [esp+0x36],0x1
  75c455:	d9 44 24 6c          	fld    DWORD PTR [esp+0x6c]
  75c459:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c45c:	52                   	push   edx
  75c45d:	e8 ce 17 f1 ff       	call   0x66dc30
  75c462:	3b 46 0c             	cmp    eax,DWORD PTR [esi+0xc]
  75c465:	73 0c                	jae    0x75c473
  75c467:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  75c46a:	8a 14 41             	mov    dl,BYTE PTR [ecx+eax*2]
  75c46d:	88 54 24 22          	mov    BYTE PTR [esp+0x22],dl
  75c471:	eb 05                	jmp    0x75c478
  75c473:	c6 44 24 22 00       	mov    BYTE PTR [esp+0x22],0x0
  75c478:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  75c47b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  75c47e:	2b 06                	sub    eax,DWORD PTR [esi]
  75c480:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75c488:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75c48b:	c1 f8 06             	sar    eax,0x6
  75c48e:	f3 0f 11 84 24 d4 00 00 00 	movss  DWORD PTR [esp+0xd4],xmm0
  75c497:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  75c49f:	33 ff                	xor    edi,edi
  75c4a1:	50                   	push   eax
  75c4a2:	f3 0f 11 84 24 dc 00 00 00 	movss  DWORD PTR [esp+0xdc],xmm0
  75c4ab:	c7 84 24 e4 00 00 00 dc 56 00 01 	mov    DWORD PTR [esp+0xe4],0x10056dc
  75c4b6:	c7 84 24 d0 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0xd0],0x1
  75c4c1:	c7 84 24 cc 00 00 00 00 d9 14 01 	mov    DWORD PTR [esp+0xcc],0x114d900
  75c4cc:	89 bc 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],edi
  75c4d3:	89 bc 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],edi
  75c4da:	e8 51 c3 ff ff       	call   0x758830
  75c4df:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  75c4e2:	2b 0e                	sub    ecx,DWORD PTR [esi]
  75c4e4:	c1 f9 06             	sar    ecx,0x6
  75c4e7:	51                   	push   ecx
  75c4e8:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  75c4eb:	e8 40 c3 ff ff       	call   0x758830
  75c4f0:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  75c4f4:	33 c0                	xor    eax,eax
  75c4f6:	52                   	push   edx
  75c4f7:	8d 8c 24 40 01 00 00 	lea    ecx,[esp+0x140]
  75c4fe:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  75c502:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  75c506:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  75c50a:	c7 44 24 70 c4 56 00 01 	mov    DWORD PTR [esp+0x70],0x10056c4
  75c512:	e8 59 07 ff ff       	call   0x74cc70
  75c517:	57                   	push   edi
  75c518:	68 00 00 00 20       	push   0x20000000
  75c51d:	57                   	push   edi
  75c51e:	8b cb                	mov    ecx,ebx
  75c520:	c6 44 24 2d 01       	mov    BYTE PTR [esp+0x2d],0x1
  75c525:	e8 b6 ff 0b 00       	call   0x81c4e0
  75c52a:	84 c0                	test   al,al
  75c52c:	75 16                	jne    0x75c544
  75c52e:	6a 00                	push   0x0
  75c530:	6a 00                	push   0x0
  75c532:	6a 01                	push   0x1
  75c534:	8b cb                	mov    ecx,ebx
  75c536:	e8 a5 ff 0b 00       	call   0x81c4e0
  75c53b:	84 c0                	test   al,al
  75c53d:	c6 44 24 29 00       	mov    BYTE PTR [esp+0x29],0x0
  75c542:	74 05                	je     0x75c549
  75c544:	c6 44 24 29 01       	mov    BYTE PTR [esp+0x29],0x1
  75c549:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  75c54d:	33 c9                	xor    ecx,ecx
  75c54f:	3b c1                	cmp    eax,ecx
  75c551:	74 18                	je     0x75c56b
  75c553:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  75c557:	38 4a 29             	cmp    BYTE PTR [edx+0x29],cl
  75c55a:	74 0a                	je     0x75c566
  75c55c:	38 48 30             	cmp    BYTE PTR [eax+0x30],cl
  75c55f:	c6 44 24 21 01       	mov    BYTE PTR [esp+0x21],0x1
  75c564:	75 05                	jne    0x75c56b
  75c566:	c6 44 24 21 00       	mov    BYTE PTR [esp+0x21],0x0
  75c56b:	8b 06                	mov    eax,DWORD PTR [esi]
  75c56d:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  75c570:	3b c6                	cmp    eax,esi
  75c572:	89 8c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ecx
  75c579:	89 8c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ecx
  75c580:	89 8c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ecx
  75c587:	c7 84 24 bc 00 00 00 7c e3 fe 00 	mov    DWORD PTR [esp+0xbc],0xfee37c
  75c592:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  75c596:	89 b4 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],esi
  75c59d:	0f 84 b9 0c 00 00    	je     0x75d25c
  75c5a3:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  75c5a7:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  75c5aa:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75c5ad:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  75c5b0:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  75c5b5:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  75c5b9:	89 8c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ecx
  75c5c0:	8b 48 2c             	mov    ecx,DWORD PTR [eax+0x2c]
  75c5c3:	89 94 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],edx
  75c5ca:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  75c5cd:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  75c5d5:	f3 0f 10 40 20       	movss  xmm0,DWORD PTR [eax+0x20]
  75c5da:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ecx
  75c5e1:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  75c5e5:	50                   	push   eax
  75c5e6:	8d 8c 24 40 01 00 00 	lea    ecx,[esp+0x140]
  75c5ed:	89 94 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],edx
  75c5f4:	51                   	push   ecx
  75c5f5:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  75c5f9:	8d 54 24 78          	lea    edx,[esp+0x78]
  75c5fd:	52                   	push   edx
  75c5fe:	f3 0f 11 84 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm0
  75c607:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  75c60f:	c6 44 24 37 00       	mov    BYTE PTR [esp+0x37],0x0
  75c614:	e8 77 07 ff ff       	call   0x74cd90
  75c619:	8a d8                	mov    bl,al
  75c61b:	80 e3 01             	and    bl,0x1
  75c61e:	88 5c 24 1a          	mov    BYTE PTR [esp+0x1a],bl
  75c622:	74 6b                	je     0x75c68f
  75c624:	80 7c 24 2a 00       	cmp    BYTE PTR [esp+0x2a],0x0
  75c629:	74 64                	je     0x75c68f
  75c62b:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75c630:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  75c634:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  75c638:	83 ec 0c             	sub    esp,0xc
  75c63b:	0f 29 84 24 cc 01 00 00 	movaps XMMWORD PTR [esp+0x1cc],xmm0
  75c643:	d9 84 24 d4 01 00 00 	fld    DWORD PTR [esp+0x1d4]
  75c64a:	0f 29 84 24 dc 01 00 00 	movaps XMMWORD PTR [esp+0x1dc],xmm0
  75c652:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  75c656:	81 c6 8c 00 00 00    	add    esi,0x8c
  75c65c:	d9 e8                	fld1
  75c65e:	8b ce                	mov    ecx,esi
  75c660:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c664:	d9 84 24 dc 01 00 00 	fld    DWORD PTR [esp+0x1dc]
  75c66b:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c66e:	50                   	push   eax
  75c66f:	e8 bc 15 f1 ff       	call   0x66dc30
  75c674:	3b 46 0c             	cmp    eax,DWORD PTR [esi+0xc]
  75c677:	73 08                	jae    0x75c681
  75c679:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  75c67c:	8a 04 41             	mov    al,BYTE PTR [ecx+eax*2]
  75c67f:	eb 02                	jmp    0x75c683
  75c681:	32 c0                	xor    al,al
  75c683:	38 44 24 22          	cmp    BYTE PTR [esp+0x22],al
  75c687:	74 06                	je     0x75c68f
  75c689:	32 db                	xor    bl,bl
  75c68b:	88 5c 24 1a          	mov    BYTE PTR [esp+0x1a],bl
  75c68f:	84 db                	test   bl,bl
  75c691:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75c694:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  75c697:	0f 28 54 24 70       	movaps xmm2,XMMWORD PTR [esp+0x70]
  75c69c:	0f 5c c2             	subps  xmm0,xmm2
  75c69f:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  75c6a7:	0f 57 c0             	xorps  xmm0,xmm0
  75c6aa:	f3 0f 11 84 24 14 01 00 00 	movss  DWORD PTR [esp+0x114],xmm0
  75c6b3:	0f 84 55 07 00 00    	je     0x75ce0e
  75c6b9:	0f 28 8c 24 10 01 00 00 	movaps xmm1,XMMWORD PTR [esp+0x110]
  75c6c1:	0f 59 c9             	mulps  xmm1,xmm1
  75c6c4:	0f 28 c1             	movaps xmm0,xmm1
  75c6c7:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  75c6cb:	0f 28 d9             	movaps xmm3,xmm1
  75c6ce:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  75c6d2:	0f 58 c3             	addps  xmm0,xmm3
  75c6d5:	0f 58 c1             	addps  xmm0,xmm1
  75c6d8:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75c6dc:	f3 0f 11 84 24 10 02 00 00 	movss  DWORD PTR [esp+0x210],xmm0
  75c6e5:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  75c6ed:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75c6f1:	f3 0f 11 84 24 30 02 00 00 	movss  DWORD PTR [esp+0x230],xmm0
  75c6fa:	f3 0f 10 84 24 10 02 00 00 	movss  xmm0,DWORD PTR [esp+0x210]
  75c703:	0f 2f 84 24 30 02 00 00 	comiss xmm0,DWORD PTR [esp+0x230]
  75c70b:	77 12                	ja     0x75c71f
  75c70d:	8b c2                	mov    eax,edx
  75c70f:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75c712:	3b 8c 24 94 00 00 00 	cmp    ecx,DWORD PTR [esp+0x94]
  75c719:	0f 84 5b 07 00 00    	je     0x75ce7a
  75c71f:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  75c723:	85 ff                	test   edi,edi
  75c725:	75 3a                	jne    0x75c761
  75c727:	8b 8c 24 3c 01 00 00 	mov    ecx,DWORD PTR [esp+0x13c]
  75c72e:	0f 29 94 24 e0 01 00 00 	movaps XMMWORD PTR [esp+0x1e0],xmm2
  75c736:	d9 84 24 e8 01 00 00 	fld    DWORD PTR [esp+0x1e8]
  75c73d:	83 ec 08             	sub    esp,0x8
  75c740:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c744:	0f 29 94 24 88 01 00 00 	movaps XMMWORD PTR [esp+0x188],xmm2
  75c74c:	d9 84 24 88 01 00 00 	fld    DWORD PTR [esp+0x188]
  75c753:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c756:	e8 75 c0 50 00       	call   0xc687d0
  75c75b:	8b f8                	mov    edi,eax
  75c75d:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  75c761:	33 f6                	xor    esi,esi
  75c763:	32 db                	xor    bl,bl
  75c765:	39 b4 24 94 00 00 00 	cmp    DWORD PTR [esp+0x94],esi
  75c76c:	7d 5a                	jge    0x75c7c8
  75c76e:	3b fe                	cmp    edi,esi
  75c770:	0f 84 98 06 00 00    	je     0x75ce0e
  75c776:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  75c77e:	8d 94 24 fc 00 00 00 	lea    edx,[esp+0xfc]
  75c785:	52                   	push   edx
  75c786:	8d 44 24 74          	lea    eax,[esp+0x74]
  75c78a:	50                   	push   eax
  75c78b:	57                   	push   edi
  75c78c:	f3 0f 11 84 24 08 01 00 00 	movss  DWORD PTR [esp+0x108],xmm0
  75c795:	f3 0f 11 84 24 0c 01 00 00 	movss  DWORD PTR [esp+0x10c],xmm0
  75c79e:	89 b4 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],esi
  75c7a5:	e8 16 01 38 00       	call   0xadc8c0
  75c7aa:	8d 8c 24 08 01 00 00 	lea    ecx,[esp+0x108]
  75c7b1:	51                   	push   ecx
  75c7b2:	57                   	push   edi
  75c7b3:	e8 38 34 3a 00       	call   0xaffbf0
  75c7b8:	83 c4 14             	add    esp,0x14
  75c7bb:	84 c0                	test   al,al
  75c7bd:	0f 84 b2 00 00 00    	je     0x75c875
  75c7c3:	c6 44 24 1a 01       	mov    BYTE PTR [esp+0x1a],0x1
  75c7c8:	3b fe                	cmp    edi,esi
  75c7ca:	74 4d                	je     0x75c819
  75c7cc:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  75c7d4:	8d 84 24 24 01 00 00 	lea    eax,[esp+0x124]
  75c7db:	50                   	push   eax
  75c7dc:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  75c7e0:	51                   	push   ecx
  75c7e1:	57                   	push   edi
  75c7e2:	f3 0f 11 84 24 30 01 00 00 	movss  DWORD PTR [esp+0x130],xmm0
  75c7eb:	f3 0f 11 84 24 34 01 00 00 	movss  DWORD PTR [esp+0x134],xmm0
  75c7f4:	89 b4 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],esi
  75c7fb:	e8 20 01 38 00       	call   0xadc920
  75c800:	6a 01                	push   0x1
  75c802:	8d 94 24 34 01 00 00 	lea    edx,[esp+0x134]
  75c809:	52                   	push   edx
  75c80a:	57                   	push   edi
  75c80b:	e8 90 2e 3a 00       	call   0xaff6a0
  75c810:	83 c4 18             	add    esp,0x18
  75c813:	84 c0                	test   al,al
  75c815:	74 02                	je     0x75c819
  75c817:	b3 01                	mov    bl,0x1
  75c819:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  75c81e:	0f 84 88 00 00 00    	je     0x75c8ac
  75c824:	80 7c 24 29 00       	cmp    BYTE PTR [esp+0x29],0x0
  75c829:	75 6e                	jne    0x75c899
  75c82b:	3b fe                	cmp    edi,esi
  75c82d:	74 6a                	je     0x75c899
  75c82f:	39 b4 24 94 00 00 00 	cmp    DWORD PTR [esp+0x94],esi
  75c836:	75 61                	jne    0x75c899
  75c838:	83 bf 08 04 00 00 01 	cmp    DWORD PTR [edi+0x408],0x1
  75c83f:	75 09                	jne    0x75c84a
  75c841:	83 bf 0c 04 00 00 50 	cmp    DWORD PTR [edi+0x40c],0x50
  75c848:	74 4f                	je     0x75c899
  75c84a:	8d 44 24 70          	lea    eax,[esp+0x70]
  75c84e:	50                   	push   eax
  75c84f:	57                   	push   edi
  75c850:	e8 3b 33 3a 00       	call   0xaffb90
  75c855:	83 c4 08             	add    esp,0x8
  75c858:	84 c0                	test   al,al
  75c85a:	74 3d                	je     0x75c899
  75c85c:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75c85f:	56                   	push   esi
  75c860:	56                   	push   esi
  75c861:	68 00 00 00 10       	push   0x10000000
  75c866:	e8 75 fc 0b 00       	call   0x81c4e0
  75c86b:	84 c0                	test   al,al
  75c86d:	75 2a                	jne    0x75c899
  75c86f:	88 44 24 1a          	mov    BYTE PTR [esp+0x1a],al
  75c873:	eb 37                	jmp    0x75c8ac
  75c875:	6a 01                	push   0x1
  75c877:	8d 94 24 00 01 00 00 	lea    edx,[esp+0x100]
  75c87e:	52                   	push   edx
  75c87f:	57                   	push   edi
  75c880:	e8 1b 2e 3a 00       	call   0xaff6a0
  75c885:	83 c4 0c             	add    esp,0xc
  75c888:	84 c0                	test   al,al
  75c88a:	0f 84 7e 05 00 00    	je     0x75ce0e
  75c890:	c6 44 24 1a 01       	mov    BYTE PTR [esp+0x1a],0x1
  75c895:	b3 01                	mov    bl,0x1
  75c897:	eb 8b                	jmp    0x75c824
  75c899:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75c89c:	56                   	push   esi
  75c89d:	56                   	push   esi
  75c89e:	68 00 00 00 80       	push   0x80000000
  75c8a3:	e8 38 fc 0b 00       	call   0x81c4e0
  75c8a8:	84 c0                	test   al,al
  75c8aa:	74 08                	je     0x75c8b4
  75c8ac:	84 db                	test   bl,bl
  75c8ae:	0f 84 63 03 00 00    	je     0x75cc17
  75c8b4:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
  75c8b8:	3b de                	cmp    ebx,esi
  75c8ba:	75 4a                	jne    0x75c906
  75c8bc:	3b fe                	cmp    edi,esi
  75c8be:	0f 84 53 03 00 00    	je     0x75cc17
  75c8c4:	8b 7c 24 5c          	mov    edi,DWORD PTR [esp+0x5c]
  75c8c8:	33 f6                	xor    esi,esi
  75c8ca:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  75c8cf:	74 2b                	je     0x75c8fc
  75c8d1:	8b 94 24 94 00 00 00 	mov    edx,DWORD PTR [esp+0x94]
  75c8d8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  75c8dc:	6a 02                	push   0x2
  75c8de:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  75c8e2:	51                   	push   ecx
  75c8e3:	52                   	push   edx
  75c8e4:	50                   	push   eax
  75c8e5:	e8 86 f5 fe ff       	call   0x74be70
  75c8ea:	0f b7 c8             	movzx  ecx,ax
  75c8ed:	8b c1                	mov    eax,ecx
  75c8ef:	83 c4 10             	add    esp,0x10
  75c8f2:	66 3d ff ff          	cmp    ax,0xffff
  75c8f6:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  75c8fa:	75 13                	jne    0x75c90f
  75c8fc:	c7 44 24 24 00 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  75c904:	eb 12                	jmp    0x75c918
  75c906:	8b 7c 24 5c          	mov    edi,DWORD PTR [esp+0x5c]
  75c90a:	0f b7 f7             	movzx  esi,di
  75c90d:	eb bb                	jmp    0x75c8ca
  75c90f:	66 85 c0             	test   ax,ax
  75c912:	0f 8c fb 02 00 00    	jl     0x75cc13
  75c918:	85 db                	test   ebx,ebx
  75c91a:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  75c91e:	0f 84 9c 01 00 00    	je     0x75cac0
  75c924:	85 d2                	test   edx,edx
  75c926:	0f 84 a0 01 00 00    	je     0x75cacc
  75c92c:	3b da                	cmp    ebx,edx
  75c92e:	0f 84 8c 01 00 00    	je     0x75cac0
  75c934:	8b 53 48             	mov    edx,DWORD PTR [ebx+0x48]
  75c937:	8b 43 4c             	mov    eax,DWORD PTR [ebx+0x4c]
  75c93a:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  75c93e:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  75c942:	51                   	push   ecx
  75c943:	8d 94 24 0c 01 00 00 	lea    edx,[esp+0x10c]
  75c94a:	52                   	push   edx
  75c94b:	8d 8c 24 cc 00 00 00 	lea    ecx,[esp+0xcc]
  75c952:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  75c956:	66 89 74 24 58       	mov    WORD PTR [esp+0x58],si
  75c95b:	e8 30 9c ff ff       	call   0x756590
  75c960:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
  75c967:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  75c96e:	8b 94 24 c8 00 00 00 	mov    edx,DWORD PTR [esp+0xc8]
  75c975:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  75c978:	74 28                	je     0x75c9a2
  75c97a:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  75c97d:	83 f9 01             	cmp    ecx,0x1
  75c980:	74 12                	je     0x75c994
  75c982:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75c987:	74 0b                	je     0x75c994
  75c989:	33 c0                	xor    eax,eax
  75c98b:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75c98f:	83 f9 ff             	cmp    ecx,0xffffffff
  75c992:	eb 6e                	jmp    0x75ca02
  75c994:	b8 01 00 00 00       	mov    eax,0x1
  75c999:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75c99d:	83 f9 ff             	cmp    ecx,0xffffffff
  75c9a0:	eb 60                	jmp    0x75ca02
  75c9a2:	8b cb                	mov    ecx,ebx
  75c9a4:	e8 e7 3b 35 00       	call   0xab0590
  75c9a9:	8b f0                	mov    esi,eax
  75c9ab:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75c9ae:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75c9b1:	51                   	push   ecx
  75c9b2:	57                   	push   edi
  75c9b3:	e8 38 7f ec ff       	call   0x6248f0
  75c9b8:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75c9bb:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  75c9bf:	83 c4 08             	add    esp,0x8
  75c9c2:	0f b7 c0             	movzx  eax,ax
  75c9c5:	83 c6 04             	add    esi,0x4
  75c9c8:	56                   	push   esi
  75c9c9:	50                   	push   eax
  75c9ca:	53                   	push   ebx
  75c9cb:	52                   	push   edx
  75c9cc:	e8 df 32 ee ff       	call   0x63fcb0
  75c9d1:	8b f0                	mov    esi,eax
  75c9d3:	83 fe 01             	cmp    esi,0x1
  75c9d6:	74 0b                	je     0x75c9e3
  75c9d8:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75c9dd:	74 04                	je     0x75c9e3
  75c9df:	33 c0                	xor    eax,eax
  75c9e1:	eb 05                	jmp    0x75c9e8
  75c9e3:	b8 01 00 00 00       	mov    eax,0x1
  75c9e8:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75c9ec:	8d 44 24 48          	lea    eax,[esp+0x48]
  75c9f0:	50                   	push   eax
  75c9f1:	8d 8c 24 c8 00 00 00 	lea    ecx,[esp+0xc8]
  75c9f8:	e8 c3 c8 ff ff       	call   0x7592c0
  75c9fd:	89 30                	mov    DWORD PTR [eax],esi
  75c9ff:	83 fe ff             	cmp    esi,0xffffffff
  75ca02:	75 0b                	jne    0x75ca0f
  75ca04:	c7 84 24 a0 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0xa0],0x1
  75ca0f:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  75ca13:	8b 4f 48             	mov    ecx,DWORD PTR [edi+0x48]
  75ca16:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
  75ca19:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  75ca1d:	89 4c 24 48          	mov    DWORD PTR [esp+0x48],ecx
  75ca21:	8d 44 24 48          	lea    eax,[esp+0x48]
  75ca25:	50                   	push   eax
  75ca26:	8d 8c 24 fc 01 00 00 	lea    ecx,[esp+0x1fc]
  75ca2d:	51                   	push   ecx
  75ca2e:	8d 8c 24 cc 00 00 00 	lea    ecx,[esp+0xcc]
  75ca35:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
  75ca39:	66 89 5c 24 58       	mov    WORD PTR [esp+0x58],bx
  75ca3e:	e8 4d 9b ff ff       	call   0x756590
  75ca43:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  75ca46:	8b 08                	mov    ecx,DWORD PTR [eax]
  75ca48:	8b 84 24 c8 00 00 00 	mov    eax,DWORD PTR [esp+0xc8]
  75ca4f:	89 94 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],edx
  75ca56:	8b 94 24 cc 00 00 00 	mov    edx,DWORD PTR [esp+0xcc]
  75ca5d:	3b 0c 90             	cmp    ecx,DWORD PTR [eax+edx*4]
  75ca60:	89 8c 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],ecx
  75ca67:	74 2e                	je     0x75ca97
  75ca69:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
  75ca6c:	83 f9 01             	cmp    ecx,0x1
  75ca6f:	74 15                	je     0x75ca86
  75ca71:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75ca76:	74 0e                	je     0x75ca86
  75ca78:	33 c0                	xor    eax,eax
  75ca7a:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75ca7e:	83 f9 ff             	cmp    ecx,0xffffffff
  75ca81:	e9 80 01 00 00       	jmp    0x75cc06
  75ca86:	b8 01 00 00 00       	mov    eax,0x1
  75ca8b:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75ca8f:	83 f9 ff             	cmp    ecx,0xffffffff
  75ca92:	e9 6f 01 00 00       	jmp    0x75cc06
  75ca97:	8b cf                	mov    ecx,edi
  75ca99:	e8 f2 3a 35 00       	call   0xab0590
  75ca9e:	83 c0 04             	add    eax,0x4
  75caa1:	0f b7 f0             	movzx  esi,ax
  75caa4:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
  75caab:	50                   	push   eax
  75caac:	53                   	push   ebx
  75caad:	e8 3e 7e ec ff       	call   0x6248f0
  75cab2:	83 c4 08             	add    esp,0x8
  75cab5:	0f b7 c0             	movzx  eax,ax
  75cab8:	50                   	push   eax
  75cab9:	56                   	push   esi
  75caba:	57                   	push   edi
  75cabb:	e9 08 01 00 00       	jmp    0x75cbc8
  75cac0:	85 d2                	test   edx,edx
  75cac2:	74 08                	je     0x75cacc
  75cac4:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  75cac7:	8b 4a 4c             	mov    ecx,DWORD PTR [edx+0x4c]
  75caca:	eb 06                	jmp    0x75cad2
  75cacc:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
  75cacf:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  75cad2:	85 d2                	test   edx,edx
  75cad4:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  75cad8:	89 4c 24 4c          	mov    DWORD PTR [esp+0x4c],ecx
  75cadc:	74 0c                	je     0x75caea
  75cade:	66 8b 44 24 24       	mov    ax,WORD PTR [esp+0x24]
  75cae3:	66 89 44 24 50       	mov    WORD PTR [esp+0x50],ax
  75cae8:	eb 05                	jmp    0x75caef
  75caea:	66 89 74 24 50       	mov    WORD PTR [esp+0x50],si
  75caef:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  75caf3:	51                   	push   ecx
  75caf4:	8d 94 24 4c 01 00 00 	lea    edx,[esp+0x14c]
  75cafb:	52                   	push   edx
  75cafc:	8d 8c 24 cc 00 00 00 	lea    ecx,[esp+0xcc]
  75cb03:	e8 88 9a ff ff       	call   0x756590
  75cb08:	8b 84 24 48 01 00 00 	mov    eax,DWORD PTR [esp+0x148]
  75cb0f:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
  75cb16:	8b 94 24 c8 00 00 00 	mov    edx,DWORD PTR [esp+0xc8]
  75cb1d:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  75cb20:	74 08                	je     0x75cb2a
  75cb22:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  75cb25:	e9 42 ff ff ff       	jmp    0x75ca6c
  75cb2a:	85 db                	test   ebx,ebx
  75cb2c:	74 0b                	je     0x75cb39
  75cb2e:	8b cb                	mov    ecx,ebx
  75cb30:	e8 5b 3a 35 00       	call   0xab0590
  75cb35:	8b f0                	mov    esi,eax
  75cb37:	eb 02                	jmp    0x75cb3b
  75cb39:	33 f6                	xor    esi,esi
  75cb3b:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  75cb40:	74 0b                	je     0x75cb4d
  75cb42:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  75cb46:	e8 45 3a 35 00       	call   0xab0590
  75cb4b:	eb 02                	jmp    0x75cb4f
  75cb4d:	33 c0                	xor    eax,eax
  75cb4f:	85 db                	test   ebx,ebx
  75cb51:	74 26                	je     0x75cb79
  75cb53:	66 85 ff             	test   di,di
  75cb56:	7e 08                	jle    0x75cb60
  75cb58:	83 c7 10             	add    edi,0x10
  75cb5b:	0f b7 c7             	movzx  eax,di
  75cb5e:	eb 1f                	jmp    0x75cb7f
  75cb60:	75 10                	jne    0x75cb72
  75cb62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75cb65:	66 8b 48 24          	mov    cx,WORD PTR [eax+0x24]
  75cb69:	66 83 c1 04          	add    cx,0x4
  75cb6d:	0f b7 c1             	movzx  eax,cx
  75cb70:	eb 0d                	jmp    0x75cb7f
  75cb72:	b8 ff ff 00 00       	mov    eax,0xffff
  75cb77:	eb 06                	jmp    0x75cb7f
  75cb79:	83 c0 04             	add    eax,0x4
  75cb7c:	0f b7 c0             	movzx  eax,ax
  75cb7f:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  75cb84:	0f b7 d0             	movzx  edx,ax
  75cb87:	74 29                	je     0x75cbb2
  75cb89:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75cb8d:	66 85 c0             	test   ax,ax
  75cb90:	7e 08                	jle    0x75cb9a
  75cb92:	83 c0 10             	add    eax,0x10
  75cb95:	0f b7 c0             	movzx  eax,ax
  75cb98:	eb 1e                	jmp    0x75cbb8
  75cb9a:	75 0f                	jne    0x75cbab
  75cb9c:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
  75cba3:	83 c0 04             	add    eax,0x4
  75cba6:	0f b7 c0             	movzx  eax,ax
  75cba9:	eb 0d                	jmp    0x75cbb8
  75cbab:	b8 ff ff 00 00       	mov    eax,0xffff
  75cbb0:	eb 06                	jmp    0x75cbb8
  75cbb2:	83 c6 04             	add    esi,0x4
  75cbb5:	0f b7 c6             	movzx  eax,si
  75cbb8:	0f b7 c8             	movzx  ecx,ax
  75cbbb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  75cbbf:	85 c0                	test   eax,eax
  75cbc1:	75 02                	jne    0x75cbc5
  75cbc3:	8b c3                	mov    eax,ebx
  75cbc5:	51                   	push   ecx
  75cbc6:	52                   	push   edx
  75cbc7:	50                   	push   eax
  75cbc8:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  75cbcb:	51                   	push   ecx
  75cbcc:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  75cbd0:	e8 db 30 ee ff       	call   0x63fcb0
  75cbd5:	8b f0                	mov    esi,eax
  75cbd7:	83 fe 01             	cmp    esi,0x1
  75cbda:	74 0b                	je     0x75cbe7
  75cbdc:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75cbe1:	74 04                	je     0x75cbe7
  75cbe3:	33 c0                	xor    eax,eax
  75cbe5:	eb 05                	jmp    0x75cbec
  75cbe7:	b8 01 00 00 00       	mov    eax,0x1
  75cbec:	20 44 24 1a          	and    BYTE PTR [esp+0x1a],al
  75cbf0:	8d 54 24 48          	lea    edx,[esp+0x48]
  75cbf4:	52                   	push   edx
  75cbf5:	8d 8c 24 c8 00 00 00 	lea    ecx,[esp+0xc8]
  75cbfc:	e8 bf c6 ff ff       	call   0x7592c0
  75cc01:	83 fe ff             	cmp    esi,0xffffffff
  75cc04:	89 30                	mov    DWORD PTR [eax],esi
  75cc06:	75 0b                	jne    0x75cc13
  75cc08:	c7 84 24 a0 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0xa0],0x1
  75cc13:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  75cc17:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  75cc1c:	0f 84 ec 01 00 00    	je     0x75ce0e
  75cc22:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  75cc26:	80 7b 28 00          	cmp    BYTE PTR [ebx+0x28],0x0
  75cc2a:	74 40                	je     0x75cc6c
  75cc2c:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  75cc2f:	d9 05 04 e5 f9 00    	fld    DWORD PTR ds:0xf9e504
  75cc35:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  75cc38:	8d 94 24 30 01 00 00 	lea    edx,[esp+0x130]
  75cc3f:	52                   	push   edx
  75cc40:	89 8c 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],ecx
  75cc47:	8b 0d 40 a1 1d 01    	mov    ecx,DWORD PTR ds:0x11da140
  75cc4d:	6a 01                	push   0x1
  75cc4f:	51                   	push   ecx
  75cc50:	89 84 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],eax
  75cc57:	d9 1c 24             	fstp   DWORD PTR [esp]
  75cc5a:	8d 44 24 7c          	lea    eax,[esp+0x7c]
  75cc5e:	50                   	push   eax
  75cc5f:	e8 4c e0 0d 00       	call   0x83acb0
  75cc64:	0b c2                	or     eax,edx
  75cc66:	0f 85 a2 01 00 00    	jne    0x75ce0e
  75cc6c:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  75cc70:	85 f6                	test   esi,esi
  75cc72:	0f 84 02 02 00 00    	je     0x75ce7a
  75cc78:	8b 8c 24 b4 00 00 00 	mov    ecx,DWORD PTR [esp+0xb4]
  75cc7f:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
  75cc86:	51                   	push   ecx
  75cc87:	52                   	push   edx
  75cc88:	8d 8c 24 b8 00 00 00 	lea    ecx,[esp+0xb8]
  75cc8f:	e8 dc 38 54 00       	call   0xca0570
  75cc94:	d9 05 60 d7 fe 00    	fld    DWORD PTR ds:0xfed760
  75cc9a:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  75cc9d:	8b 11                	mov    edx,DWORD PTR [ecx]
  75cc9f:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
  75cca6:	52                   	push   edx
  75cca7:	6a 00                	push   0x0
  75cca9:	89 84 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],eax
  75ccb0:	8d 84 24 b8 00 00 00 	lea    eax,[esp+0xb8]
  75ccb7:	50                   	push   eax
  75ccb8:	51                   	push   ecx
  75ccb9:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  75ccc0:	d9 1c 24             	fstp   DWORD PTR [esp]
  75ccc3:	51                   	push   ecx
  75ccc4:	8b ce                	mov    ecx,esi
  75ccc6:	e8 15 1b 0d 00       	call   0x82e7e0
  75cccb:	84 c0                	test   al,al
  75cccd:	0f 84 a7 01 00 00    	je     0x75ce7a
  75ccd3:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
  75ccda:	8b 94 24 b4 00 00 00 	mov    edx,DWORD PTR [esp+0xb4]
  75cce1:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75cce5:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  75cce9:	eb 09                	jmp    0x75ccf4
  75cceb:	eb 03                	jmp    0x75ccf0
  75cced:	8d 49 00             	lea    ecx,[ecx+0x0]
  75ccf0:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75ccf4:	3b 44 24 34          	cmp    eax,DWORD PTR [esp+0x34]
  75ccf8:	0f 84 7c 01 00 00    	je     0x75ce7a
  75ccfe:	8b 30                	mov    esi,DWORD PTR [eax]
  75cd00:	85 f6                	test   esi,esi
  75cd02:	0f 84 f6 00 00 00    	je     0x75cdfe
  75cd08:	8b 06                	mov    eax,DWORD PTR [esi]
  75cd0a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  75cd0d:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  75cd11:	8b ce                	mov    ecx,esi
  75cd13:	ff d2                	call   edx
  75cd15:	3b 43 20             	cmp    eax,DWORD PTR [ebx+0x20]
  75cd18:	75 09                	jne    0x75cd23
  75cd1a:	3b 53 24             	cmp    edx,DWORD PTR [ebx+0x24]
  75cd1d:	0f 84 bf 00 00 00    	je     0x75cde2
  75cd23:	8b 06                	mov    eax,DWORD PTR [esi]
  75cd25:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  75cd28:	8b ce                	mov    ecx,esi
  75cd2a:	ff d2                	call   edx
  75cd2c:	83 c0 fe             	add    eax,0xfffffffe
  75cd2f:	83 f8 17             	cmp    eax,0x17
  75cd32:	0f 87 aa 00 00 00    	ja     0x75cde2
  75cd38:	0f b6 80 f8 d2 75 00 	movzx  eax,BYTE PTR [eax+0x75d2f8]
  75cd3f:	ff 24 85 e4 d2 75 00 	jmp    DWORD PTR [eax*4+0x75d2e4]
  75cd46:	8b 16                	mov    edx,DWORD PTR [esi]
  75cd48:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  75cd4b:	6a 00                	push   0x0
  75cd4d:	8b ce                	mov    ecx,esi
  75cd4f:	ff d0                	call   eax
  75cd51:	e9 83 00 00 00       	jmp    0x75cdd9
  75cd56:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75cd59:	6a 00                	push   0x0
  75cd5b:	68 00 00 80 00       	push   0x800000
  75cd60:	6a 00                	push   0x0
  75cd62:	e8 79 f7 0b 00       	call   0x81c4e0
  75cd67:	84 c0                	test   al,al
  75cd69:	75 77                	jne    0x75cde2
  75cd6b:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75cd6e:	6a 00                	push   0x0
  75cd70:	6a 00                	push   0x0
  75cd72:	68 00 00 20 00       	push   0x200000
  75cd77:	e8 64 f7 0b 00       	call   0x81c4e0
  75cd7c:	84 c0                	test   al,al
  75cd7e:	74 62                	je     0x75cde2
  75cd80:	8b 16                	mov    edx,DWORD PTR [esi]
  75cd82:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  75cd85:	6a 00                	push   0x0
  75cd87:	8b ce                	mov    ecx,esi
  75cd89:	ff d0                	call   eax
  75cd8b:	84 c0                	test   al,al
  75cd8d:	75 4e                	jne    0x75cddd
  75cd8f:	85 ff                	test   edi,edi
  75cd91:	74 4f                	je     0x75cde2
  75cd93:	8d 8c 24 20 02 00 00 	lea    ecx,[esp+0x220]
  75cd9a:	51                   	push   ecx
  75cd9b:	8d 54 24 74          	lea    edx,[esp+0x74]
  75cd9f:	52                   	push   edx
  75cda0:	8b cf                	mov    ecx,edi
  75cda2:	e8 f9 a3 35 00       	call   0xab71a0
  75cda7:	8b 46 fc             	mov    eax,DWORD PTR [esi-0x4]
  75cdaa:	8b 80 b8 00 00 00    	mov    eax,DWORD PTR [eax+0xb8]
  75cdb0:	8d 4e fc             	lea    ecx,[esi-0x4]
  75cdb3:	8d 94 24 20 02 00 00 	lea    edx,[esp+0x220]
  75cdba:	52                   	push   edx
  75cdbb:	6a 00                	push   0x0
  75cdbd:	ff d0                	call   eax
  75cdbf:	eb 18                	jmp    0x75cdd9
  75cdc1:	80 7c 24 21 00       	cmp    BYTE PTR [esp+0x21],0x0
  75cdc6:	74 1a                	je     0x75cde2
  75cdc8:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75cdcb:	6a 00                	push   0x0
  75cdcd:	6a 00                	push   0x0
  75cdcf:	68 00 00 20 00       	push   0x200000
  75cdd4:	e8 07 f7 0b 00       	call   0x81c4e0
  75cdd9:	84 c0                	test   al,al
  75cddb:	74 05                	je     0x75cde2
  75cddd:	c6 44 24 1a 00       	mov    BYTE PTR [esp+0x1a],0x0
  75cde2:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  75cde5:	83 c0 ff             	add    eax,0xffffffff
  75cde8:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  75cdeb:	75 11                	jne    0x75cdfe
  75cded:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  75cdf4:	8b 16                	mov    edx,DWORD PTR [esi]
  75cdf6:	8b 02                	mov    eax,DWORD PTR [edx]
  75cdf8:	6a 01                	push   0x1
  75cdfa:	8b ce                	mov    ecx,esi
  75cdfc:	ff d0                	call   eax
  75cdfe:	83 44 24 24 04       	add    DWORD PTR [esp+0x24],0x4
  75ce03:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  75ce08:	0f 85 e2 fe ff ff    	jne    0x75ccf0
  75ce0e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  75ce11:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  75ce14:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  75ce17:	0f 83 e0 03 00 00    	jae    0x75d1fd
  75ce1d:	85 c0                	test   eax,eax
  75ce1f:	8d 50 40             	lea    edx,[eax+0x40]
  75ce22:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  75ce25:	0f 84 dd 03 00 00    	je     0x75d208
  75ce2b:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75ce30:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  75ce33:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  75ce3b:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  75ce3f:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [esp+0x90]
  75ce48:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  75ce4d:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [esp+0x94]
  75ce54:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  75ce57:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
  75ce5e:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  75ce61:	8b 8c 24 9c 00 00 00 	mov    ecx,DWORD PTR [esp+0x9c]
  75ce68:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  75ce6b:	8b 94 24 a0 00 00 00 	mov    edx,DWORD PTR [esp+0xa0]
  75ce72:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
  75ce75:	e9 8e 03 00 00       	jmp    0x75d208
  75ce7a:	8a 5c 24 1a          	mov    bl,BYTE PTR [esp+0x1a]
  75ce7e:	84 db                	test   bl,bl
  75ce80:	74 8c                	je     0x75ce0e
  75ce82:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
  75ce85:	6a 00                	push   0x0
  75ce87:	6a 00                	push   0x0
  75ce89:	68 00 00 00 08       	push   0x8000000
  75ce8e:	8b ce                	mov    ecx,esi
  75ce90:	e8 4b f6 0b 00       	call   0x81c4e0
  75ce95:	84 c0                	test   al,al
  75ce97:	74 41                	je     0x75ceda
  75ce99:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75ce9e:	0f 29 84 24 a0 01 00 00 	movaps XMMWORD PTR [esp+0x1a0],xmm0
  75cea6:	d9 84 24 a8 01 00 00 	fld    DWORD PTR [esp+0x1a8]
  75cead:	6a 00                	push   0x0
  75ceaf:	83 ec 08             	sub    esp,0x8
  75ceb2:	0f 29 84 24 0c 02 00 00 	movaps XMMWORD PTR [esp+0x20c],xmm0
  75ceba:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75cebe:	d9 84 24 0c 02 00 00 	fld    DWORD PTR [esp+0x20c]
  75cec5:	d9 1c 24             	fstp   DWORD PTR [esp]
  75cec8:	e8 63 cd 02 00       	call   0x789c30
  75cecd:	83 c4 0c             	add    esp,0xc
  75ced0:	83 f8 04             	cmp    eax,0x4
  75ced3:	0f 95 c3             	setne  bl
  75ced6:	88 5c 24 1a          	mov    BYTE PTR [esp+0x1a],bl
  75ceda:	84 db                	test   bl,bl
  75cedc:	0f 84 2c ff ff ff    	je     0x75ce0e
  75cee2:	6a 00                	push   0x0
  75cee4:	6a 40                	push   0x40
  75cee6:	6a 00                	push   0x0
  75cee8:	8b ce                	mov    ecx,esi
  75ceea:	e8 f1 f5 0b 00       	call   0x81c4e0
  75ceef:	84 c0                	test   al,al
  75cef1:	0f 84 fd 00 00 00    	je     0x75cff4
  75cef7:	8b 7c 24 3c          	mov    edi,DWORD PTR [esp+0x3c]
  75cefb:	8b 4f 5c             	mov    ecx,DWORD PTR [edi+0x5c]
  75cefe:	85 c9                	test   ecx,ecx
  75cf00:	0f 84 e8 00 00 00    	je     0x75cfee
  75cf06:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75cf0b:	6a 00                	push   0x0
  75cf0d:	6a 00                	push   0x0
  75cf0f:	6a 00                	push   0x0
  75cf11:	6a 00                	push   0x0
  75cf13:	0f 29 84 24 60 01 00 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  75cf1b:	d9 84 24 68 01 00 00 	fld    DWORD PTR [esp+0x168]
  75cf22:	6a 01                	push   0x1
  75cf24:	83 ec 08             	sub    esp,0x8
  75cf27:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75cf2b:	0f 29 84 24 5c 02 00 00 	movaps XMMWORD PTR [esp+0x25c],xmm0
  75cf33:	d9 84 24 5c 02 00 00 	fld    DWORD PTR [esp+0x25c]
  75cf3a:	d9 1c 24             	fstp   DWORD PTR [esp]
  75cf3d:	e8 1e b0 41 00       	call   0xb77f60
  75cf42:	84 c0                	test   al,al
  75cf44:	0f 84 a4 00 00 00    	je     0x75cfee
  75cf4a:	6a 00                	push   0x0
  75cf4c:	68 00 00 00 10       	push   0x10000000
  75cf51:	6a 00                	push   0x0
  75cf53:	8b ce                	mov    ecx,esi
  75cf55:	e8 86 f5 0b 00       	call   0x81c4e0
  75cf5a:	84 c0                	test   al,al
  75cf5c:	0f 84 ac fe ff ff    	je     0x75ce0e
  75cf62:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75cf67:	6a 01                	push   0x1
  75cf69:	6a 00                	push   0x0
  75cf6b:	6a 00                	push   0x0
  75cf6d:	6a 00                	push   0x0
  75cf6f:	6a 00                	push   0x0
  75cf71:	6a 00                	push   0x0
  75cf73:	6a 00                	push   0x0
  75cf75:	6a 00                	push   0x0
  75cf77:	0f 29 84 24 80 01 00 00 	movaps XMMWORD PTR [esp+0x180],xmm0
  75cf7f:	d9 84 24 88 01 00 00 	fld    DWORD PTR [esp+0x188]
  75cf86:	6a 00                	push   0x0
  75cf88:	83 ec 08             	sub    esp,0x8
  75cf8b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75cf8f:	0f 29 84 24 9c 01 00 00 	movaps XMMWORD PTR [esp+0x19c],xmm0
  75cf97:	d9 84 24 9c 01 00 00 	fld    DWORD PTR [esp+0x19c]
  75cf9e:	8b cf                	mov    ecx,edi
  75cfa0:	d9 1c 24             	fstp   DWORD PTR [esp]
  75cfa3:	e8 d8 d3 50 00       	call   0xc6a380
  75cfa8:	d8 05 f8 98 f9 00    	fadd   DWORD PTR ds:0xf998f8
  75cfae:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75cfb3:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  75cfb7:	f3 0f 11 84 24 b0 01 00 00 	movss  DWORD PTR [esp+0x1b0],xmm0
  75cfc0:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
  75cfc4:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  75cfca:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75cfce:	f3 0f 11 84 24 90 01 00 00 	movss  DWORD PTR [esp+0x190],xmm0
  75cfd7:	f3 0f 10 84 24 90 01 00 00 	movss  xmm0,DWORD PTR [esp+0x190]
  75cfe0:	0f 2f 84 24 b0 01 00 00 	comiss xmm0,DWORD PTR [esp+0x1b0]
  75cfe8:	0f 86 20 fe ff ff    	jbe    0x75ce0e
  75cfee:	b3 01                	mov    bl,0x1
  75cff0:	88 5c 24 1a          	mov    BYTE PTR [esp+0x1a],bl
  75cff4:	33 f6                	xor    esi,esi
  75cff6:	39 74 24 40          	cmp    DWORD PTR [esp+0x40],esi
  75cffa:	0f 84 e3 01 00 00    	je     0x75d1e3
  75d000:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  75d004:	80 79 2a 00          	cmp    BYTE PTR [ecx+0x2a],0x0
  75d008:	0f 84 d5 01 00 00    	je     0x75d1e3
  75d00e:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  75d012:	3b ce                	cmp    ecx,esi
  75d014:	0f 84 c9 01 00 00    	je     0x75d1e3
  75d01a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75d01d:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  75d020:	3b 94 24 94 00 00 00 	cmp    edx,DWORD PTR [esp+0x94]
  75d027:	0f 85 b6 01 00 00    	jne    0x75d1e3
  75d02d:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75d030:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  75d036:	8b 12                	mov    edx,DWORD PTR [edx]
  75d038:	51                   	push   ecx
  75d039:	d9 1c 24             	fstp   DWORD PTR [esp]
  75d03c:	52                   	push   edx
  75d03d:	6a 01                	push   0x1
  75d03f:	8d 94 24 f4 00 00 00 	lea    edx,[esp+0xf4]
  75d046:	52                   	push   edx
  75d047:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  75d04e:	52                   	push   edx
  75d04f:	50                   	push   eax
  75d050:	89 b4 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],esi
  75d057:	89 b4 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],esi
  75d05e:	89 b4 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],esi
  75d065:	c7 84 24 0c 01 00 00 7c e3 fe 00 	mov    DWORD PTR [esp+0x10c],0xfee37c
  75d070:	e8 6b 1a 0d 00       	call   0x82eae0
  75d075:	84 c0                	test   al,al
  75d077:	0f 84 b6 00 00 00    	je     0x75d133
  75d07d:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [esp+0xe8]
  75d084:	8b 8c 24 ec 00 00 00 	mov    ecx,DWORD PTR [esp+0xec]
  75d08b:	3b c1                	cmp    eax,ecx
  75d08d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75d091:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
  75d095:	0f 84 98 00 00 00    	je     0x75d133
  75d09b:	8b 30                	mov    esi,DWORD PTR [eax]
  75d09d:	85 f6                	test   esi,esi
  75d09f:	74 76                	je     0x75d117
  75d0a1:	83 c6 fc             	add    esi,0xfffffffc
  75d0a4:	74 71                	je     0x75d117
  75d0a6:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  75d0a9:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  75d0ac:	8d 4e 04             	lea    ecx,[esi+0x4]
  75d0af:	6a 00                	push   0x0
  75d0b1:	ff d2                	call   edx
  75d0b3:	84 c0                	test   al,al
  75d0b5:	74 60                	je     0x75d117
  75d0b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75d0ba:	50                   	push   eax
  75d0bb:	8d 8c 24 54 02 00 00 	lea    ecx,[esp+0x254]
  75d0c2:	e8 39 39 ef ff       	call   0x650a00
  75d0c7:	8d 8c 24 50 02 00 00 	lea    ecx,[esp+0x250]
  75d0ce:	51                   	push   ecx
  75d0cf:	8b d1                	mov    edx,ecx
  75d0d1:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  75d0d5:	52                   	push   edx
  75d0d6:	e8 c5 a0 35 00       	call   0xab71a0
  75d0db:	8b 06                	mov    eax,DWORD PTR [esi]
  75d0dd:	8b 10                	mov    edx,DWORD PTR [eax]
  75d0df:	8b ce                	mov    ecx,esi
  75d0e1:	c6 44 24 23 00       	mov    BYTE PTR [esp+0x23],0x0
  75d0e6:	ff d2                	call   edx
  75d0e8:	8b d8                	mov    ebx,eax
  75d0ea:	33 ff                	xor    edi,edi
  75d0ec:	85 db                	test   ebx,ebx
  75d0ee:	76 3e                	jbe    0x75d12e
  75d0f0:	8b 06                	mov    eax,DWORD PTR [esi]
  75d0f2:	8b 90 b8 00 00 00    	mov    edx,DWORD PTR [eax+0xb8]
  75d0f8:	8d 8c 24 50 02 00 00 	lea    ecx,[esp+0x250]
  75d0ff:	51                   	push   ecx
  75d100:	57                   	push   edi
  75d101:	8b ce                	mov    ecx,esi
  75d103:	ff d2                	call   edx
  75d105:	08 44 24 23          	or     BYTE PTR [esp+0x23],al
  75d109:	83 c7 01             	add    edi,0x1
  75d10c:	3b fb                	cmp    edi,ebx
  75d10e:	72 e0                	jb     0x75d0f0
  75d110:	80 7c 24 23 00       	cmp    BYTE PTR [esp+0x23],0x0
  75d115:	74 17                	je     0x75d12e
  75d117:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75d11b:	83 c0 04             	add    eax,0x4
  75d11e:	3b 44 24 34          	cmp    eax,DWORD PTR [esp+0x34]
  75d122:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75d126:	0f 85 6f ff ff ff    	jne    0x75d09b
  75d12c:	eb 05                	jmp    0x75d133
  75d12e:	c6 44 24 2b 01       	mov    BYTE PTR [esp+0x2b],0x1
  75d133:	8b 84 24 ec 00 00 00 	mov    eax,DWORD PTR [esp+0xec]
  75d13a:	8b 8c 24 e8 00 00 00 	mov    ecx,DWORD PTR [esp+0xe8]
  75d141:	50                   	push   eax
  75d142:	51                   	push   ecx
  75d143:	8d 8c 24 f0 00 00 00 	lea    ecx,[esp+0xf0]
  75d14a:	e8 21 34 54 00       	call   0xca0570
  75d14f:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [esp+0xe8]
  75d156:	33 f6                	xor    esi,esi
  75d158:	3b c6                	cmp    eax,esi
  75d15a:	74 09                	je     0x75d165
  75d15c:	50                   	push   eax
  75d15d:	e8 7e 73 d8 ff       	call   0x4e44e0
  75d162:	83 c4 04             	add    esp,0x4
  75d165:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  75d16a:	74 73                	je     0x75d1df
  75d16c:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  75d170:	3b 4c 24 68          	cmp    ecx,DWORD PTR [esp+0x68]
  75d174:	73 5d                	jae    0x75d1d3
  75d176:	8b c1                	mov    eax,ecx
  75d178:	83 c1 40             	add    ecx,0x40
  75d17b:	3b c6                	cmp    eax,esi
  75d17d:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
  75d181:	0f 84 81 00 00 00    	je     0x75d208
  75d187:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75d18c:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  75d18f:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  75d197:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  75d19b:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [esp+0x90]
  75d1a4:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  75d1a9:	8b 94 24 94 00 00 00 	mov    edx,DWORD PTR [esp+0x94]
  75d1b0:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
  75d1b3:	8b 8c 24 98 00 00 00 	mov    ecx,DWORD PTR [esp+0x98]
  75d1ba:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  75d1bd:	8b 94 24 9c 00 00 00 	mov    edx,DWORD PTR [esp+0x9c]
  75d1c4:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
  75d1c7:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  75d1ce:	89 48 30             	mov    DWORD PTR [eax+0x30],ecx
  75d1d1:	eb 35                	jmp    0x75d208
  75d1d3:	8d 54 24 70          	lea    edx,[esp+0x70]
  75d1d7:	52                   	push   edx
  75d1d8:	51                   	push   ecx
  75d1d9:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  75d1dd:	eb 24                	jmp    0x75d203
  75d1df:	8a 5c 24 1a          	mov    bl,BYTE PTR [esp+0x1a]
  75d1e3:	84 db                	test   bl,bl
  75d1e5:	0f 84 23 fc ff ff    	je     0x75ce0e
  75d1eb:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75d1ee:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  75d1f1:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  75d1f4:	73 07                	jae    0x75d1fd
  75d1f6:	3b c6                	cmp    eax,esi
  75d1f8:	e9 22 fc ff ff       	jmp    0x75ce1f
  75d1fd:	8d 54 24 70          	lea    edx,[esp+0x70]
  75d201:	52                   	push   edx
  75d202:	50                   	push   eax
  75d203:	e8 68 6e ef ff       	call   0x654070
  75d208:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  75d20c:	83 c0 40             	add    eax,0x40
  75d20f:	3b 84 24 e4 00 00 00 	cmp    eax,DWORD PTR [esp+0xe4]
  75d216:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  75d21a:	0f 85 83 f3 ff ff    	jne    0x75c5a3
  75d220:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
  75d224:	8b 54 24 64          	mov    edx,DWORD PTR [esp+0x64]
  75d228:	3b fa                	cmp    edi,edx
  75d22a:	74 30                	je     0x75d25c
  75d22c:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75d22f:	8b 01                	mov    eax,DWORD PTR [ecx]
  75d231:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
  75d234:	75 10                	jne    0x75d246
  75d236:	89 39                	mov    DWORD PTR [ecx],edi
  75d238:	8b f8                	mov    edi,eax
  75d23a:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  75d23e:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  75d241:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  75d244:	eb 16                	jmp    0x75d25c
  75d246:	8b 8c 24 e4 00 00 00 	mov    ecx,DWORD PTR [esp+0xe4]
  75d24d:	51                   	push   ecx
  75d24e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  75d251:	52                   	push   edx
  75d252:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  75d255:	57                   	push   edi
  75d256:	52                   	push   edx
  75d257:	e8 d4 94 ff ff       	call   0x756730
  75d25c:	8b 84 24 b4 00 00 00 	mov    eax,DWORD PTR [esp+0xb4]
  75d263:	8b 8c 24 b0 00 00 00 	mov    ecx,DWORD PTR [esp+0xb0]
  75d26a:	50                   	push   eax
  75d26b:	51                   	push   ecx
  75d26c:	8d 8c 24 b8 00 00 00 	lea    ecx,[esp+0xb8]
  75d273:	e8 f8 32 54 00       	call   0xca0570
  75d278:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
  75d27f:	85 c0                	test   eax,eax
  75d281:	74 09                	je     0x75d28c
  75d283:	50                   	push   eax
  75d284:	e8 57 72 d8 ff       	call   0x4e44e0
  75d289:	83 c4 04             	add    esp,0x4
  75d28c:	85 ff                	test   edi,edi
  75d28e:	74 09                	je     0x75d299
  75d290:	57                   	push   edi
  75d291:	e8 4a 72 d8 ff       	call   0x4e44e0
  75d296:	83 c4 04             	add    esp,0x4
  75d299:	8b 94 24 cc 00 00 00 	mov    edx,DWORD PTR [esp+0xcc]
  75d2a0:	8b 84 24 c8 00 00 00 	mov    eax,DWORD PTR [esp+0xc8]
  75d2a7:	52                   	push   edx
  75d2a8:	50                   	push   eax
  75d2a9:	8d 8c 24 cc 00 00 00 	lea    ecx,[esp+0xcc]
  75d2b0:	e8 3b 95 27 00       	call   0x9d67f0
  75d2b5:	83 bc 24 cc 00 00 00 01 	cmp    DWORD PTR [esp+0xcc],0x1
  75d2bd:	c7 84 24 d0 00 00 00 00 00 00 00 	mov    DWORD PTR [esp+0xd0],0x0
  75d2c8:	76 10                	jbe    0x75d2da
  75d2ca:	8b 8c 24 c8 00 00 00 	mov    ecx,DWORD PTR [esp+0xc8]
  75d2d1:	51                   	push   ecx
  75d2d2:	e8 09 72 d8 ff       	call   0x4e44e0
  75d2d7:	83 c4 04             	add    esp,0x4
  75d2da:	5f                   	pop    edi
  75d2db:	5e                   	pop    esi
  75d2dc:	5b                   	pop    ebx
  75d2dd:	8b e5                	mov    esp,ebp
  75d2df:	5d                   	pop    ebp
  75d2e0:	c2 18 00             	ret    0x18
