# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c36360 (WallSide_PrepareVerticalProfiles)
Paired actual Ghidra pseudocode: 00C36360_WallSide_PrepareVerticalProfiles.c
Envelope [0x00c36360,0x00c36f76); 3094 bytes; exact owned ranges: [0x00c36360,0x00c36f76)
Owned: 3094 original bytes / 586 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c36360 <original>:
  c36360:	55                                              	push   ebp
  c36361:	8b ec                                           	mov    ebp,esp
  c36363:	83 e4 f0                                        	and    esp,0xfffffff0
  c36366:	81 ec 04 02 00 00                               	sub    esp,0x204
  c3636c:	53                                              	push   ebx
  c3636d:	56                                              	push   esi
  c3636e:	57                                              	push   edi
  c3636f:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  c36373:	8b 41 38                                        	mov    eax,DWORD PTR [ecx+0x38]
  c36376:	f3 0f 10 2d b4 b5 f9 00                         	movss  xmm5,DWORD PTR ds:0xf9b5b4
  c3637e:	8b b0 1c 02 00 00                               	mov    esi,DWORD PTR [eax+0x21c]
  c36384:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  c36387:	0f be 10                                        	movsx  edx,BYTE PTR [eax]
  c3638a:	0f be 58 03                                     	movsx  ebx,BYTE PTR [eax+0x3]
  c3638e:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  c36391:	0f 28 1f                                        	movaps xmm3,XMMWORD PTR [edi]
  c36394:	0f 28 4f 40                                     	movaps xmm1,XMMWORD PTR [edi+0x40]
  c36398:	0f 28 57 60                                     	movaps xmm2,XMMWORD PTR [edi+0x60]
  c3639c:	0f 28 c3                                        	movaps xmm0,xmm3
  c3639f:	0f 58 c1                                        	addps  xmm0,xmm1
  c363a2:	0f 29 84 24 60 01 00 00                         	movaps XMMWORD PTR [esp+0x160],xmm0
  c363aa:	0f 28 47 10                                     	movaps xmm0,XMMWORD PTR [edi+0x10]
  c363ae:	0f 28 c8                                        	movaps xmm1,xmm0
  c363b1:	0f 58 ca                                        	addps  xmm1,xmm2
  c363b4:	0f 28 57 70                                     	movaps xmm2,XMMWORD PTR [edi+0x70]
  c363b8:	0f 29 8c 24 80 01 00 00                         	movaps XMMWORD PTR [esp+0x180],xmm1
  c363c0:	f3 0f 2a f2                                     	cvtsi2ss xmm6,edx
  c363c4:	0f be 50 01                                     	movsx  edx,BYTE PTR [eax+0x1]
  c363c8:	0f 28 c8                                        	movaps xmm1,xmm0
  c363cb:	0f 58 ca                                        	addps  xmm1,xmm2
  c363ce:	0f 28 57 50                                     	movaps xmm2,XMMWORD PTR [edi+0x50]
  c363d2:	0f 29 8c 24 90 01 00 00                         	movaps XMMWORD PTR [esp+0x190],xmm1
  c363da:	0f 28 cb                                        	movaps xmm1,xmm3
  c363dd:	0f 58 ca                                        	addps  xmm1,xmm2
  c363e0:	0f 29 8c 24 b0 01 00 00                         	movaps XMMWORD PTR [esp+0x1b0],xmm1
  c363e8:	f3 0f 2a fa                                     	cvtsi2ss xmm7,edx
  c363ec:	0f be 50 02                                     	movsx  edx,BYTE PTR [eax+0x2]
  c363f0:	f3 0f 2a cb                                     	cvtsi2ss xmm1,ebx
  c363f4:	0f be 58 04                                     	movsx  ebx,BYTE PTR [eax+0x4]
  c363f8:	0f be 40 05                                     	movsx  eax,BYTE PTR [eax+0x5]
  c363fc:	8b 8e 30 02 00 00                               	mov    ecx,DWORD PTR [esi+0x230]
  c36402:	f3 0f 2a d3                                     	cvtsi2ss xmm2,ebx
  c36406:	89 54 24 68                                     	mov    DWORD PTR [esp+0x68],edx
  c3640a:	f3 0f 11 4c 24 70                               	movss  DWORD PTR [esp+0x70],xmm1
  c36410:	f3 0f 11 54 24 74                               	movss  DWORD PTR [esp+0x74],xmm2
  c36416:	89 54 24 58                                     	mov    DWORD PTR [esp+0x58],edx
  c3641a:	f3 0f 10 e5                                     	movss  xmm4,xmm5
  c3641e:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  c36422:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  c36426:	0f 58 c3                                        	addps  xmm0,xmm3
  c36429:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  c3642d:	f3 0f 58 d7                                     	addss  xmm2,xmm7
  c36431:	0f 59 c4                                        	mulps  xmm0,xmm4
  c36434:	f3 0f 59 cd                                     	mulss  xmm1,xmm5
  c36438:	f3 0f 59 d5                                     	mulss  xmm2,xmm5
  c3643c:	52                                              	push   edx
  c3643d:	f3 0f 11 74 24 64                               	movss  DWORD PTR [esp+0x64],xmm6
  c36443:	f3 0f 11 7c 24 68                               	movss  DWORD PTR [esp+0x68],xmm7
  c36449:	89 44 24 7c                                     	mov    DWORD PTR [esp+0x7c],eax
  c3644d:	0f 29 a4 24 44 01 00 00                         	movaps XMMWORD PTR [esp+0x144],xmm4
  c36455:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  c3645a:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
  c36460:	f3 0f 11 54 24 58                               	movss  DWORD PTR [esp+0x58],xmm2
  c36466:	e8 25 a7 e6 ff                                  	call   0xaa0b90
  c3646b:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  c3646f:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  c36475:	f3 0f 10 87 84 00 00 00                         	movss  xmm0,DWORD PTR [edi+0x84]
  c3647d:	0f 28 4f 30                                     	movaps xmm1,XMMWORD PTR [edi+0x30]
  c36481:	f3 0f 11 5c 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm3
  c36487:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  c3648d:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [esp+0x28],xmm3
  c36493:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  c36499:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c3649d:	0f 59 c1                                        	mulps  xmm0,xmm1
  c364a0:	0f 59 84 24 40 01 00 00                         	mulps  xmm0,XMMWORD PTR [esp+0x140]
  c364a8:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  c364ad:	f3 0f 11 5c 24 24                               	movss  DWORD PTR [esp+0x24],xmm3
  c364b3:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  c364b9:	0f 28 d0                                        	movaps xmm2,xmm0
  c364bc:	0f 58 d1                                        	addps  xmm2,xmm1
  c364bf:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  c364c5:	0f 28 5c 24 20                                  	movaps xmm3,XMMWORD PTR [esp+0x20]
  c364ca:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  c364cf:	0f 29 94 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm2
  c364d7:	f3 0f 10 54 24 40                               	movss  xmm2,DWORD PTR [esp+0x40]
  c364dd:	8b 8f 8c 00 00 00                               	mov    ecx,DWORD PTR [edi+0x8c]
  c364e3:	85 c9                                           	test   ecx,ecx
  c364e5:	0f 5c c8                                        	subps  xmm1,xmm0
  c364e8:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  c364ed:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  c364f3:	0f 29 8c 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm1
  c364fb:	f3 0f 11 94 24 c4 00 00 00                      	movss  DWORD PTR [esp+0xc4],xmm2
  c36504:	0f 28 94 24 c0 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0xc0]
  c3650c:	f3 0f 11 84 24 d4 00 00 00                      	movss  DWORD PTR [esp+0xd4],xmm0
  c36515:	0f 28 84 24 d0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xd0]
  c3651d:	0f 29 94 24 70 01 00 00                         	movaps XMMWORD PTR [esp+0x170],xmm2
  c36525:	0f 29 84 24 a0 01 00 00                         	movaps XMMWORD PTR [esp+0x1a0],xmm0
  c3652d:	0f 84 88 00 00 00                               	je     0xc365bb
  c36533:	d9 ee                                           	fldz
  c36535:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c36537:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  c3653a:	83 ec 0c                                        	sub    esp,0xc
  c3653d:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  c36541:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
  c36545:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  c36549:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
  c3654d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  c36550:	ff d2                                           	call   edx
  c36552:	d8 25 18 81 07 01                               	fsub   DWORD PTR ds:0x1078118
  c36558:	8b 8f 8c 00 00 00                               	mov    ecx,DWORD PTR [edi+0x8c]
  c3655e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c36560:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  c36563:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  c36567:	83 ec 0c                                        	sub    esp,0xc
  c3656a:	d9 ee                                           	fldz
  c3656c:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  c36570:	d9 84 24 80 00 00 00                            	fld    DWORD PTR [esp+0x80]
  c36577:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  c3657b:	d9 44 24 7c                                     	fld    DWORD PTR [esp+0x7c]
  c3657f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  c36582:	ff d2                                           	call   edx
  c36584:	d8 25 18 81 07 01                               	fsub   DWORD PTR ds:0x1078118
  c3658a:	8b 8f 8c 00 00 00                               	mov    ecx,DWORD PTR [edi+0x8c]
  c36590:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c36592:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  c36595:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  c36599:	83 ec 0c                                        	sub    esp,0xc
  c3659c:	d9 ee                                           	fldz
  c3659e:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  c365a2:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  c365a6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  c365aa:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  c365ae:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  c365b1:	ff d2                                           	call   edx
  c365b3:	d8 25 18 81 07 01                               	fsub   DWORD PTR ds:0x1078118
  c365b9:	eb 44                                           	jmp    0xc365ff
  c365bb:	8b 87 90 00 00 00                               	mov    eax,DWORD PTR [edi+0x90]
  c365c1:	50                                              	push   eax
  c365c2:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  c365c6:	51                                              	push   ecx
  c365c7:	56                                              	push   esi
  c365c8:	e8 33 5f 02 00                                  	call   0xc5c500
  c365cd:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  c365d1:	8b 97 90 00 00 00                               	mov    edx,DWORD PTR [edi+0x90]
  c365d7:	52                                              	push   edx
  c365d8:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
  c365df:	50                                              	push   eax
  c365e0:	56                                              	push   esi
  c365e1:	e8 1a 5f 02 00                                  	call   0xc5c500
  c365e6:	d9 5c 24 30                                     	fstp   DWORD PTR [esp+0x30]
  c365ea:	8b 8f 90 00 00 00                               	mov    ecx,DWORD PTR [edi+0x90]
  c365f0:	51                                              	push   ecx
  c365f1:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  c365f5:	52                                              	push   edx
  c365f6:	56                                              	push   esi
  c365f7:	e8 04 5f 02 00                                  	call   0xc5c500
  c365fc:	83 c4 24                                        	add    esp,0x24
  c365ff:	8b 75 10                                        	mov    esi,DWORD PTR [ebp+0x10]
  c36602:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  c36606:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  c3660c:	0f 28 9c 24 60 01 00 00                         	movaps xmm3,XMMWORD PTR [esp+0x160]
  c36614:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  c3661a:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  c36620:	f3 0f 11 86 3c 02 00 00                         	movss  DWORD PTR [esi+0x23c],xmm0
  c36628:	f3 0f 11 86 28 02 00 00                         	movss  DWORD PTR [esi+0x228],xmm0
  c36630:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  c36635:	f3 0f 5c 44 24 44                               	subss  xmm0,DWORD PTR [esp+0x44]
  c3663b:	f3 0f 10 c0                                     	movss  xmm0,xmm0
  c3663f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c36643:	0f 29 84 24 50 01 00 00                         	movaps XMMWORD PTR [esp+0x150],xmm0
  c3664b:	0f 28 84 24 80 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x180]
  c36653:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  c36658:	0f 28 84 24 c0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xc0]
  c36660:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  c36668:	f3 0f 10 84 24 50 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x150]
  c36671:	f3 0f 11 8e 38 02 00 00                         	movss  DWORD PTR [esi+0x238],xmm1
  c36679:	f3 0f 11 8e 2c 02 00 00                         	movss  DWORD PTR [esi+0x22c],xmm1
  c36681:	f3 0f 5c 8c 24 04 01 00 00                      	subss  xmm1,DWORD PTR [esp+0x104]
  c3668a:	f3 0f 11 96 34 02 00 00                         	movss  DWORD PTR [esi+0x234],xmm2
  c36692:	f3 0f 11 96 30 02 00 00                         	movss  DWORD PTR [esi+0x230],xmm2
  c3669a:	f3 0f 5c 54 24 44                               	subss  xmm2,DWORD PTR [esp+0x44]
  c366a0:	f3 0f 10 c9                                     	movss  xmm1,xmm1
  c366a4:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  c366a8:	f3 0f 11 84 24 b4 00 00 00                      	movss  DWORD PTR [esp+0xb4],xmm0
  c366b1:	f3 0f 11 84 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm0
  c366ba:	f3 0f 10 d2                                     	movss  xmm2,xmm2
  c366be:	0f 29 8c 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm1
  c366c6:	f3 0f 10 84 24 00 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x100]
  c366cf:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  c366d3:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  c366d8:	f3 0f 11 84 24 b0 00 00 00                      	movss  DWORD PTR [esp+0xb0],xmm0
  c366e1:	f3 0f 11 84 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm0
  c366ea:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  c366f0:	f3 0f 11 84 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm0
  c366f9:	f3 0f 11 84 24 a8 00 00 00                      	movss  DWORD PTR [esp+0xa8],xmm0
  c36702:	33 db                                           	xor    ebx,ebx
  c36704:	8b ce                                           	mov    ecx,esi
  c36706:	8b 04 9d fc 81 07 01                            	mov    eax,DWORD PTR [ebx*4+0x10781fc]
  c3670d:	c1 e0 04                                        	shl    eax,0x4
  c36710:	0f 28 84 04 60 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+eax*1+0x160]
  c36718:	b8 ab aa aa aa                                  	mov    eax,0xaaaaaaab
  c3671d:	f7 e3                                           	mul    ebx
  c3671f:	d1 ea                                           	shr    edx,1
  c36721:	81 e2 01 00 00 80                               	and    edx,0x80000001
  c36727:	0f 29 01                                        	movaps XMMWORD PTR [ecx],xmm0
  c3672a:	79 05                                           	jns    0xc36731
  c3672c:	4a                                              	dec    edx
  c3672d:	83 ca fe                                        	or     edx,0xfffffffe
  c36730:	42                                              	inc    edx
  c36731:	83 fa 01                                        	cmp    edx,0x1
  c36734:	75 3a                                           	jne    0xc36770
  c36736:	8b 14 9d fc 81 07 01                            	mov    edx,DWORD PTR [ebx*4+0x10781fc]
  c3673d:	0f 28 09                                        	movaps xmm1,XMMWORD PTR [ecx]
  c36740:	f3 0f 10 84 94 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+edx*4+0xa0]
  c36749:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c3674d:	0f 58 c1                                        	addps  xmm0,xmm1
  c36750:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  c36758:	8b 84 24 e4 00 00 00                            	mov    eax,DWORD PTR [esp+0xe4]
  c3675f:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
  c36764:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  c36768:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  c3676d:	0f 29 01                                        	movaps XMMWORD PTR [ecx],xmm0
  c36770:	0f 28 09                                        	movaps xmm1,XMMWORD PTR [ecx]
  c36773:	f3 0f 10 87 88 00 00 00                         	movss  xmm0,DWORD PTR [edi+0x88]
  c3677b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c3677f:	0f 58 c1                                        	addps  xmm0,xmm1
  c36782:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  c3678a:	8b 94 24 84 00 00 00                            	mov    edx,DWORD PTR [esp+0x84]
  c36791:	0f 29 8c 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm1
  c36799:	89 94 24 f4 00 00 00                            	mov    DWORD PTR [esp+0xf4],edx
  c367a0:	0f 28 84 24 f0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xf0]
  c367a8:	0f 29 01                                        	movaps XMMWORD PTR [ecx],xmm0
  c367ab:	83 c3 01                                        	add    ebx,0x1
  c367ae:	83 c1 10                                        	add    ecx,0x10
  c367b1:	83 fb 0c                                        	cmp    ebx,0xc
  c367b4:	0f 8c 4c ff ff ff                               	jl     0xc36706
  c367ba:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  c367be:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  c367c2:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  c367c6:	89 86 e0 01 00 00                               	mov    DWORD PTR [esi+0x1e0],eax
  c367cc:	89 86 1c 02 00 00                               	mov    DWORD PTR [esi+0x21c],eax
  c367d2:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  c367d6:	89 8e e4 01 00 00                               	mov    DWORD PTR [esi+0x1e4],ecx
  c367dc:	89 8e 20 02 00 00                               	mov    DWORD PTR [esi+0x220],ecx
  c367e2:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  c367e6:	89 96 e8 01 00 00                               	mov    DWORD PTR [esi+0x1e8],edx
  c367ec:	89 96 24 02 00 00                               	mov    DWORD PTR [esi+0x224],edx
  c367f2:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
  c367f6:	89 86 f8 01 00 00                               	mov    DWORD PTR [esi+0x1f8],eax
  c367fc:	89 86 04 02 00 00                               	mov    DWORD PTR [esi+0x204],eax
  c36802:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  c36806:	89 8e fc 01 00 00                               	mov    DWORD PTR [esi+0x1fc],ecx
  c3680c:	89 8e 08 02 00 00                               	mov    DWORD PTR [esi+0x208],ecx
  c36812:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  c36816:	89 96 00 02 00 00                               	mov    DWORD PTR [esi+0x200],edx
  c3681c:	89 96 0c 02 00 00                               	mov    DWORD PTR [esi+0x20c],edx
  c36822:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  c36826:	89 86 ec 01 00 00                               	mov    DWORD PTR [esi+0x1ec],eax
  c3682c:	89 86 10 02 00 00                               	mov    DWORD PTR [esi+0x210],eax
  c36832:	89 8e f0 01 00 00                               	mov    DWORD PTR [esi+0x1f0],ecx
  c36838:	89 8e 14 02 00 00                               	mov    DWORD PTR [esi+0x214],ecx
  c3683e:	89 96 f4 01 00 00                               	mov    DWORD PTR [esi+0x1f4],edx
  c36844:	89 96 18 02 00 00                               	mov    DWORD PTR [esi+0x218],edx
  c3684a:	0f 28 47 20                                     	movaps xmm0,XMMWORD PTR [edi+0x20]
  c3684e:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  c36856:	0f 28 47 20                                     	movaps xmm0,XMMWORD PTR [edi+0x20]
  c3685a:	f3 0f 10 8c 24 e8 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xe8]
  c36863:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  c36869:	0f 57 c9                                        	xorps  xmm1,xmm1
  c3686c:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  c36874:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  c3687d:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  c36883:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  c36889:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  c3688f:	0f 28 64 24 20                                  	movaps xmm4,XMMWORD PTR [esp+0x20]
  c36894:	0f 28 c4                                        	movaps xmm0,xmm4
  c36897:	0f 59 c4                                        	mulps  xmm0,xmm4
  c3689a:	0f 28 c8                                        	movaps xmm1,xmm0
  c3689d:	0f c6 c8 02                                     	shufps xmm1,xmm0,0x2
  c368a1:	0f 28 d0                                        	movaps xmm2,xmm0
  c368a4:	0f c6 d0 01                                     	shufps xmm2,xmm0,0x1
  c368a8:	0f 58 ca                                        	addps  xmm1,xmm2
  c368ab:	0f 58 c8                                        	addps  xmm1,xmm0
  c368ae:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  c368b2:	0f 28 e9                                        	movaps xmm5,xmm1
  c368b5:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  c368bd:	0f 52 dd                                        	rsqrtps xmm3,xmm5
  c368c0:	0f 28 f3                                        	movaps xmm6,xmm3
  c368c3:	0f 59 f3                                        	mulps  xmm6,xmm3
  c368c6:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  c368ca:	0f 28 d1                                        	movaps xmm2,xmm1
  c368cd:	0f 59 f5                                        	mulps  xmm6,xmm5
  c368d0:	0f 5c d6                                        	subps  xmm2,xmm6
  c368d3:	0f 28 b4 24 40 01 00 00                         	movaps xmm6,XMMWORD PTR [esp+0x140]
  c368db:	0f 28 fe                                        	movaps xmm7,xmm6
  c368de:	0f 59 fb                                        	mulps  xmm7,xmm3
  c368e1:	0f 59 d7                                        	mulps  xmm2,xmm7
  c368e4:	0f 58 d3                                        	addps  xmm2,xmm3
  c368e7:	0f 28 d8                                        	movaps xmm3,xmm0
  c368ea:	0f c6 d8 02                                     	shufps xmm3,xmm0,0x2
  c368ee:	0f 28 f8                                        	movaps xmm7,xmm0
  c368f1:	0f c6 f8 01                                     	shufps xmm7,xmm0,0x1
  c368f5:	0f 58 df                                        	addps  xmm3,xmm7
  c368f8:	0f 58 d8                                        	addps  xmm3,xmm0
  c368fb:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  c368ff:	0f 51 c3                                        	sqrtps xmm0,xmm3
  c36902:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  c3690a:	0f 28 c2                                        	movaps xmm0,xmm2
  c3690d:	0f 59 c2                                        	mulps  xmm0,xmm2
  c36910:	0f 59 c5                                        	mulps  xmm0,xmm5
  c36913:	0f 5c c8                                        	subps  xmm1,xmm0
  c36916:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  c3691f:	0f 59 f2                                        	mulps  xmm6,xmm2
  c36922:	0f 59 ce                                        	mulps  xmm1,xmm6
  c36925:	0f 58 ca                                        	addps  xmm1,xmm2
  c36928:	0f 59 cc                                        	mulps  xmm1,xmm4
  c3692b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c3692f:	0f 5e c8                                        	divps  xmm1,xmm0
  c36932:	0f 28 47 40                                     	movaps xmm0,XMMWORD PTR [edi+0x40]
  c36936:	0f 28 d1                                        	movaps xmm2,xmm1
  c36939:	0f 59 d0                                        	mulps  xmm2,xmm0
  c3693c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  c36940:	0f 28 c2                                        	movaps xmm0,xmm2
  c36943:	0f c6 c2 02                                     	shufps xmm0,xmm2,0x2
  c36947:	0f 28 da                                        	movaps xmm3,xmm2
  c3694a:	0f c6 da 01                                     	shufps xmm3,xmm2,0x1
  c3694e:	0f 58 c3                                        	addps  xmm0,xmm3
  c36951:	0f 58 c2                                        	addps  xmm0,xmm2
  c36954:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c36958:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  c3695d:	0f 28 47 60                                     	movaps xmm0,XMMWORD PTR [edi+0x60]
  c36961:	8a 58 44                                        	mov    bl,BYTE PTR [eax+0x44]
  c36964:	0f 28 d1                                        	movaps xmm2,xmm1
  c36967:	0f 59 d0                                        	mulps  xmm2,xmm0
  c3696a:	0f 28 c2                                        	movaps xmm0,xmm2
  c3696d:	0f c6 c2 02                                     	shufps xmm0,xmm2,0x2
  c36971:	0f 28 da                                        	movaps xmm3,xmm2
  c36974:	0f c6 da 01                                     	shufps xmm3,xmm2,0x1
  c36978:	0f 58 c3                                        	addps  xmm0,xmm3
  c3697b:	0f 58 c2                                        	addps  xmm0,xmm2
  c3697e:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c36982:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  c3698a:	0f 28 47 50                                     	movaps xmm0,XMMWORD PTR [edi+0x50]
  c3698e:	0f 57 d2                                        	xorps  xmm2,xmm2
  c36991:	0f 5c d1                                        	subps  xmm2,xmm1
  c36994:	0f 28 ca                                        	movaps xmm1,xmm2
  c36997:	0f 59 c8                                        	mulps  xmm1,xmm0
  c3699a:	0f 28 c1                                        	movaps xmm0,xmm1
  c3699d:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  c369a1:	0f 28 d9                                        	movaps xmm3,xmm1
  c369a4:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
  c369a8:	0f 58 c3                                        	addps  xmm0,xmm3
  c369ab:	f3 0f 10 1d 88 d7 06 01                         	movss  xmm3,DWORD PTR ds:0x106d788
  c369b3:	0f 58 c1                                        	addps  xmm0,xmm1
  c369b6:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c369ba:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  c369c2:	0f 28 47 70                                     	movaps xmm0,XMMWORD PTR [edi+0x70]
  c369c6:	0f 59 d0                                        	mulps  xmm2,xmm0
  c369c9:	0f 28 c2                                        	movaps xmm0,xmm2
  c369cc:	0f c6 c2 02                                     	shufps xmm0,xmm2,0x2
  c369d0:	0f 28 ca                                        	movaps xmm1,xmm2
  c369d3:	0f c6 ca 01                                     	shufps xmm1,xmm2,0x1
  c369d7:	0f 58 c1                                        	addps  xmm0,xmm1
  c369da:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  c369e2:	0f 58 c2                                        	addps  xmm0,xmm2
  c369e5:	f3 0f 10 15 54 e5 fa 00                         	movss  xmm2,DWORD PTR ds:0xfae554
  c369ed:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c369f1:	0f 29 84 24 d0 01 00 00                         	movaps XMMWORD PTR [esp+0x1d0],xmm0
  c369f9:	d0 eb                                           	shr    bl,1
  c369fb:	0f 28 c1                                        	movaps xmm0,xmm1
  c369fe:	f3 0f 5c 87 84 00 00 00                         	subss  xmm0,DWORD PTR [edi+0x84]
  c36a06:	80 e3 01                                        	and    bl,0x1
  c36a09:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  c36a0f:	33 c9                                           	xor    ecx,ecx
  c36a11:	84 db                                           	test   bl,bl
  c36a13:	8b 04 8d fc 81 07 01                            	mov    eax,DWORD PTR [ecx*4+0x10781fc]
  c36a1a:	74 2e                                           	je     0xc36a4a
  c36a1c:	83 bf 90 00 00 00 04                            	cmp    DWORD PTR [edi+0x90],0x4
  c36a23:	f3 0f 10 84 84 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+eax*4+0xa0]
  c36a2c:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  c36a30:	f3 0f 11 84 8c 10 01 00 00                      	movss  DWORD PTR [esp+ecx*4+0x110],xmm0
  c36a39:	75 18                                           	jne    0xc36a53
  c36a3b:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  c36a3f:	f3 0f 11 84 8c 10 01 00 00                      	movss  DWORD PTR [esp+ecx*4+0x110],xmm0
  c36a48:	eb 09                                           	jmp    0xc36a53
  c36a4a:	f3 0f 11 8c 8c 10 01 00 00                      	movss  DWORD PTR [esp+ecx*4+0x110],xmm1
  c36a53:	b8 ab aa aa aa                                  	mov    eax,0xaaaaaaab
  c36a58:	f7 e1                                           	mul    ecx
  c36a5a:	d1 ea                                           	shr    edx,1
  c36a5c:	81 e2 01 00 00 80                               	and    edx,0x80000001
  c36a62:	79 05                                           	jns    0xc36a69
  c36a64:	4a                                              	dec    edx
  c36a65:	83 ca fe                                        	or     edx,0xfffffffe
  c36a68:	42                                              	inc    edx
  c36a69:	83 fa 01                                        	cmp    edx,0x1
  c36a6c:	75 2a                                           	jne    0xc36a98
  c36a6e:	8b 04 8d fc 81 07 01                            	mov    eax,DWORD PTR [ecx*4+0x10781fc]
  c36a75:	f3 0f 10 84 84 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+eax*4+0xa0]
  c36a7e:	f3 0f 10 a4 8c 10 01 00 00                      	movss  xmm4,DWORD PTR [esp+ecx*4+0x110]
  c36a87:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  c36a8b:	f3 0f 5c e0                                     	subss  xmm4,xmm0
  c36a8f:	f3 0f 11 a4 8c 10 01 00 00                      	movss  DWORD PTR [esp+ecx*4+0x110],xmm4
  c36a98:	83 c1 01                                        	add    ecx,0x1
  c36a9b:	83 f9 0c                                        	cmp    ecx,0xc
  c36a9e:	0f 8c 6d ff ff ff                               	jl     0xc36a11
  c36aa4:	8d 86 e0 01 00 00                               	lea    eax,[esi+0x1e0]
  c36aaa:	8d be 40 02 00 00                               	lea    edi,[esi+0x240]
  c36ab0:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  c36ab4:	c7 44 24 18 06 00 00 00                         	mov    DWORD PTR [esp+0x18],0x6
  c36abc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  c36ac0:	8b 41 38                                        	mov    eax,DWORD PTR [ecx+0x38]
  c36ac3:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c36ac7:	f3 0f 10 47 e8                                  	movss  xmm0,DWORD PTR [edi-0x18]
  c36acc:	8b 88 28 02 00 00                               	mov    ecx,DWORD PTR [eax+0x228]
  c36ad2:	52                                              	push   edx
  c36ad3:	f3 0f 11 84 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm0
  c36adc:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  c36ae0:	e8 ab a0 e6 ff                                  	call   0xaa0b90
  c36ae5:	d9 9c 24 98 00 00 00                            	fstp   DWORD PTR [esp+0x98]
  c36aec:	84 db                                           	test   bl,bl
  c36aee:	f3 0f 10 8c 24 98 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x98]
  c36af7:	f3 0f 10 1d 54 e5 fa 00                         	movss  xmm3,DWORD PTR ds:0xfae554
  c36aff:	74 1b                                           	je     0xc36b1c
  c36b01:	f3 0f 10 84 24 9c 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x9c]
  c36b0a:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  c36b0e:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  c36b12:	f3 0f 5c 05 9c fd 03 01                         	subss  xmm0,DWORD PTR ds:0x103fd9c
  c36b1a:	eb 08                                           	jmp    0xc36b24
  c36b1c:	f3 0f 10 05 f8 81 07 01                         	movss  xmm0,DWORD PTR ds:0x10781f8
  c36b24:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  c36b28:	f3 0f 10 90 a8 03 00 00                         	movss  xmm2,DWORD PTR [eax+0x3a8]
  c36b30:	83 44 24 10 0c                                  	add    DWORD PTR [esp+0x10],0xc
  c36b35:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  c36b39:	f3 0f 58 15 c0 81 07 01                         	addss  xmm2,DWORD PTR ds:0x10781c0
  c36b41:	f3 0f 11 17                                     	movss  DWORD PTR [edi],xmm2
  c36b45:	f3 0f 11 47 18                                  	movss  DWORD PTR [edi+0x18],xmm0
  c36b4a:	f3 0f 11 47 30                                  	movss  DWORD PTR [edi+0x30],xmm0
  c36b4f:	83 c7 04                                        	add    edi,0x4
  c36b52:	83 6c 24 18 01                                  	sub    DWORD PTR [esp+0x18],0x1
  c36b57:	0f 85 5f ff ff ff                               	jne    0xc36abc
  c36b5d:	0f 28 84 24 60 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x160]
  c36b65:	f3 0f 10 94 24 50 01 00 00                      	movss  xmm2,DWORD PTR [esp+0x150]
  c36b6e:	f3 0f 10 ac 24 00 01 00 00                      	movss  xmm5,DWORD PTR [esp+0x100]
  c36b77:	f3 0f 10 bc 24 14 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x114]
  c36b80:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  c36b88:	0f 29 84 24 40 01 00 00                         	movaps XMMWORD PTR [esp+0x140],xmm0
  c36b90:	0f 28 84 24 c0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xc0]
  c36b98:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  c36b9d:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  c36ba5:	0f 28 84 24 80 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x180]
  c36bad:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  c36bb2:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  c36bb7:	0f 28 84 24 90 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x190]
  c36bbf:	0f 29 84 24 f0 01 00 00                         	movaps XMMWORD PTR [esp+0x1f0],xmm0
  c36bc7:	0f 29 84 24 e0 01 00 00                         	movaps XMMWORD PTR [esp+0x1e0],xmm0
  c36bcf:	0f 28 84 24 d0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xd0]
  c36bd7:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  c36bdb:	f3 0f 59 eb                                     	mulss  xmm5,xmm3
  c36bdf:	0f 29 84 24 c0 01 00 00                         	movaps XMMWORD PTR [esp+0x1c0],xmm0
  c36be7:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  c36bef:	0f 28 84 24 b0 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  c36bf7:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  c36bff:	0f 29 84 24 00 02 00 00                         	movaps XMMWORD PTR [esp+0x200],xmm0
  c36c07:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  c36c0f:	0f 28 c8                                        	movaps xmm1,xmm0
  c36c12:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  c36c16:	0f 28 d0                                        	movaps xmm2,xmm0
  c36c19:	f3 0f 5c d5                                     	subss  xmm2,xmm5
  c36c1d:	f3 0f 10 6c 24 40                               	movss  xmm5,DWORD PTR [esp+0x40]
  c36c23:	f3 0f 59 eb                                     	mulss  xmm5,xmm3
  c36c27:	0f 28 d8                                        	movaps xmm3,xmm0
  c36c2a:	f3 0f 5c dd                                     	subss  xmm3,xmm5
  c36c2e:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  c36c34:	f3 0f 10 ac 24 e0 00 00 00                      	movss  xmm5,DWORD PTR [esp+0xe0]
  c36c3d:	f3 0f 11 9c 24 7c 01 00 00                      	movss  DWORD PTR [esp+0x17c],xmm3
  c36c46:	f3 0f 10 9c 24 10 01 00 00                      	movss  xmm3,DWORD PTR [esp+0x110]
  c36c4f:	f3 0f 11 9e c4 00 00 00                         	movss  DWORD PTR [esi+0xc4],xmm3
  c36c57:	f3 0f 10 5c 24 20                               	movss  xmm3,DWORD PTR [esp+0x20]
  c36c5d:	0f 28 f2                                        	movaps xmm6,xmm2
  c36c60:	f3 0f 11 94 24 84 01 00 00                      	movss  DWORD PTR [esp+0x184],xmm2
  c36c69:	0f 57 d2                                        	xorps  xmm2,xmm2
  c36c6c:	f3 0f 11 96 c0 00 00 00                         	movss  DWORD PTR [esi+0xc0],xmm2
  c36c74:	f3 0f 11 9e f0 00 00 00                         	movss  DWORD PTR [esi+0xf0],xmm3
  c36c7c:	f3 0f 10 1d b4 b5 f9 00                         	movss  xmm3,DWORD PTR ds:0xf9b5b4
  c36c84:	f3 0f 11 86 f4 00 00 00                         	movss  DWORD PTR [esi+0xf4],xmm0
  c36c8c:	f3 0f 11 9e c8 00 00 00                         	movss  DWORD PTR [esi+0xc8],xmm3
  c36c94:	f3 0f 11 be cc 00 00 00                         	movss  DWORD PTR [esi+0xcc],xmm7
  c36c9c:	f3 0f 10 bc 24 18 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x118]
  c36ca5:	f3 0f 11 9e f8 00 00 00                         	movss  DWORD PTR [esi+0xf8],xmm3
  c36cad:	f3 0f 11 86 fc 00 00 00                         	movss  DWORD PTR [esi+0xfc],xmm0
  c36cb5:	f3 0f 11 86 d0 00 00 00                         	movss  DWORD PTR [esi+0xd0],xmm0
  c36cbd:	f3 0f 11 be d4 00 00 00                         	movss  DWORD PTR [esi+0xd4],xmm7
  c36cc5:	f3 0f 10 bc 24 1c 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x11c]
  c36cce:	0f 28 e1                                        	movaps xmm4,xmm1
  c36cd1:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
  c36cd7:	f3 0f 10 8c 24 80 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x80]
  c36ce0:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  c36ce4:	f3 0f 11 8e 00 01 00 00                         	movss  DWORD PTR [esi+0x100],xmm1
  c36cec:	f3 0f 11 86 04 01 00 00                         	movss  DWORD PTR [esi+0x104],xmm0
  c36cf4:	f3 0f 11 86 d8 00 00 00                         	movss  DWORD PTR [esi+0xd8],xmm0
  c36cfc:	f3 0f 11 be dc 00 00 00                         	movss  DWORD PTR [esi+0xdc],xmm7
  c36d04:	f3 0f 10 7c 24 14                               	movss  xmm7,DWORD PTR [esp+0x14]
  c36d0a:	f3 0f 11 8e 08 01 00 00                         	movss  DWORD PTR [esi+0x108],xmm1
  c36d12:	f3 0f 11 be 0c 01 00 00                         	movss  DWORD PTR [esi+0x10c],xmm7
  c36d1a:	f3 0f 10 bc 24 20 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x120]
  c36d23:	f3 0f 11 9e e0 00 00 00                         	movss  DWORD PTR [esi+0xe0],xmm3
  c36d2b:	f3 0f 11 be e4 00 00 00                         	movss  DWORD PTR [esi+0xe4],xmm7
  c36d33:	f3 0f 10 bc 24 24 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x124]
  c36d3c:	f3 0f 11 9e 10 01 00 00                         	movss  DWORD PTR [esi+0x110],xmm3
  c36d44:	f3 0f 11 b6 14 01 00 00                         	movss  DWORD PTR [esi+0x114],xmm6
  c36d4c:	f3 0f 11 96 e8 00 00 00                         	movss  DWORD PTR [esi+0xe8],xmm2
  c36d54:	f3 0f 11 be ec 00 00 00                         	movss  DWORD PTR [esi+0xec],xmm7
  c36d5c:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [esp+0x20]
  c36d62:	f3 0f 11 be 18 01 00 00                         	movss  DWORD PTR [esi+0x118],xmm7
  c36d6a:	f3 0f 10 7c 24 1c                               	movss  xmm7,DWORD PTR [esp+0x1c]
  c36d70:	f3 0f 11 a6 1c 01 00 00                         	movss  DWORD PTR [esi+0x11c],xmm4
  c36d78:	f3 0f 11 be 20 01 00 00                         	movss  DWORD PTR [esi+0x120],xmm7
  c36d80:	f3 0f 10 bc 24 30 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x130]
  c36d89:	f3 0f 11 be 24 01 00 00                         	movss  DWORD PTR [esi+0x124],xmm7
  c36d91:	f3 0f 58 e8                                     	addss  xmm5,xmm0
  c36d95:	f3 0f 11 96 50 01 00 00                         	movss  DWORD PTR [esi+0x150],xmm2
  c36d9d:	f3 0f 11 86 54 01 00 00                         	movss  DWORD PTR [esi+0x154],xmm0
  c36da5:	f3 0f 11 86 28 01 00 00                         	movss  DWORD PTR [esi+0x128],xmm0
  c36dad:	f3 0f 10 bc 24 10 01 00 00                      	movss  xmm7,DWORD PTR [esp+0x110]
  c36db6:	f3 0f 11 be 2c 01 00 00                         	movss  DWORD PTR [esi+0x12c],xmm7
  c36dbe:	f3 0f 11 96 58 01 00 00                         	movss  DWORD PTR [esi+0x158],xmm2
  c36dc6:	f3 0f 11 86 5c 01 00 00                         	movss  DWORD PTR [esi+0x15c],xmm0
  c36dce:	f3 0f 11 86 30 01 00 00                         	movss  DWORD PTR [esi+0x130],xmm0
  c36dd6:	f3 0f 10 84 24 24 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x124]
  c36ddf:	f3 0f 11 86 34 01 00 00                         	movss  DWORD PTR [esi+0x134],xmm0
  c36de7:	f3 0f 11 96 60 01 00 00                         	movss  DWORD PTR [esi+0x160],xmm2
  c36def:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
  c36df5:	f3 0f 11 a6 64 01 00 00                         	movss  DWORD PTR [esi+0x164],xmm4
  c36dfd:	f3 0f 11 86 38 01 00 00                         	movss  DWORD PTR [esi+0x138],xmm0
  c36e05:	f3 0f 10 84 24 34 01 00 00                      	movss  xmm0,DWORD PTR [esp+0x134]
  c36e0e:	f3 0f 11 86 3c 01 00 00                         	movss  DWORD PTR [esi+0x13c],xmm0
  c36e16:	f3 0f 11 96 68 01 00 00                         	movss  DWORD PTR [esi+0x168],xmm2
  c36e1e:	f3 0f 10 94 24 40 01 00 00                      	movss  xmm2,DWORD PTR [esp+0x140]
  c36e27:	0f 28 c4                                        	movaps xmm0,xmm4
  c36e2a:	f3 0f 11 86 6c 01 00 00                         	movss  DWORD PTR [esi+0x16c],xmm0
  c36e32:	f3 0f 11 96 80 01 00 00                         	movss  DWORD PTR [esi+0x180],xmm2
  c36e3a:	f3 0f 10 94 24 f8 00 00 00                      	movss  xmm2,DWORD PTR [esp+0xf8]
  c36e43:	f3 0f 11 96 84 01 00 00                         	movss  DWORD PTR [esi+0x184],xmm2
  c36e4b:	f3 0f 10 54 24 20                               	movss  xmm2,DWORD PTR [esp+0x20]
  c36e51:	f3 0f 11 96 b0 01 00 00                         	movss  DWORD PTR [esi+0x1b0],xmm2
  c36e59:	f3 0f 10 94 24 c0 00 00 00                      	movss  xmm2,DWORD PTR [esp+0xc0]
  c36e62:	f3 0f 11 a6 b4 01 00 00                         	movss  DWORD PTR [esi+0x1b4],xmm4
  c36e6a:	f3 0f 11 96 88 01 00 00                         	movss  DWORD PTR [esi+0x188],xmm2
  c36e72:	f3 0f 10 54 24 78                               	movss  xmm2,DWORD PTR [esp+0x78]
  c36e78:	f3 0f 11 96 8c 01 00 00                         	movss  DWORD PTR [esi+0x18c],xmm2
  c36e80:	f3 0f 10 54 24 60                               	movss  xmm2,DWORD PTR [esp+0x60]
  c36e86:	f3 0f 11 9e b8 01 00 00                         	movss  DWORD PTR [esi+0x1b8],xmm3
  c36e8e:	f3 0f 11 b6 bc 01 00 00                         	movss  DWORD PTR [esi+0x1bc],xmm6
  c36e96:	f3 0f 11 96 90 01 00 00                         	movss  DWORD PTR [esi+0x190],xmm2
  c36e9e:	f3 0f 10 54 24 58                               	movss  xmm2,DWORD PTR [esp+0x58]
  c36ea4:	f3 0f 11 96 94 01 00 00                         	movss  DWORD PTR [esi+0x194],xmm2
  c36eac:	f3 0f 11 8e c0 01 00 00                         	movss  DWORD PTR [esi+0x1c0],xmm1
  c36eb4:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
  c36eba:	f3 0f 11 8e c4 01 00 00                         	movss  DWORD PTR [esi+0x1c4],xmm1
  c36ec2:	f3 0f 10 8c 24 e0 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x1e0]
  c36ecb:	f3 0f 11 8e 98 01 00 00                         	movss  DWORD PTR [esi+0x198],xmm1
  c36ed3:	f3 0f 10 8c 24 f8 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x1f8]
  c36edc:	f3 0f 11 8e 9c 01 00 00                         	movss  DWORD PTR [esi+0x19c],xmm1
  c36ee4:	f3 0f 10 8c 24 7c 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x17c]
  c36eed:	f3 0f 11 ae c8 01 00 00                         	movss  DWORD PTR [esi+0x1c8],xmm5
  c36ef5:	f3 0f 11 8e cc 01 00 00                         	movss  DWORD PTR [esi+0x1cc],xmm1
  c36efd:	f3 0f 10 8c 24 d0 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xd0]
  c36f06:	f3 0f 11 8e a0 01 00 00                         	movss  DWORD PTR [esi+0x1a0],xmm1
  c36f0e:	f3 0f 10 8c 24 c8 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x1c8]
  c36f17:	f3 0f 11 8e a4 01 00 00                         	movss  DWORD PTR [esi+0x1a4],xmm1
  c36f1f:	f3 0f 11 9e d0 01 00 00                         	movss  DWORD PTR [esi+0x1d0],xmm3
  c36f27:	0f 28 ce                                        	movaps xmm1,xmm6
  c36f2a:	f3 0f 11 8e d4 01 00 00                         	movss  DWORD PTR [esi+0x1d4],xmm1
  c36f32:	f3 0f 10 8c 24 00 02 00 00                      	movss  xmm1,DWORD PTR [esp+0x200]
  c36f3b:	f3 0f 11 8e a8 01 00 00                         	movss  DWORD PTR [esi+0x1a8],xmm1
  c36f43:	f3 0f 10 8c 24 a8 00 00 00                      	movss  xmm1,DWORD PTR [esp+0xa8]
  c36f4c:	f3 0f 11 8e ac 01 00 00                         	movss  DWORD PTR [esi+0x1ac],xmm1
  c36f54:	f3 0f 10 8c 24 d0 01 00 00                      	movss  xmm1,DWORD PTR [esp+0x1d0]
  c36f5d:	f3 0f 11 8e d8 01 00 00                         	movss  DWORD PTR [esi+0x1d8],xmm1
  c36f65:	5f                                              	pop    edi
  c36f66:	f3 0f 11 86 dc 01 00 00                         	movss  DWORD PTR [esi+0x1dc],xmm0
  c36f6e:	5e                                              	pop    esi
  c36f6f:	5b                                              	pop    ebx
  c36f70:	8b e5                                           	mov    esp,ebp
  c36f72:	5d                                              	pop    ebp
  c36f73:	c2 0c 00                                        	ret    0xc
