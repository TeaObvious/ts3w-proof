# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d5f0 (Animation_PlayProcedurallyMotionAccumulatedAnimation)
Paired Ghidra pseudocode: 1052D5F0_Animation_PlayProcedurallyMotionAccumulatedAnimation.c
Window: [0x1052d5f0, 0x1052d910) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d5f0: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 57 e8
1052d600: 9c cb 1f 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 9d
1052d610: d5 1f 00 8b f0 33 ff 3b f7 89 74 24 1c 0f 84 dc
1052d620: 02 00 00 8d 46 04 b9 01 00 00 00 f0 0f c1 08 8b
1052d630: 15 c4 0c c8 10 52 8b ce e8 63 97 1f 00 8b d8 3b
1052d640: df 0f 84 98 02 00 00 57 57 57 57 68 34 9a b1 10
1052d650: 68 00 06 00 00 e8 56 b8 3e 00 83 c4 18 3b c7 0f
1052d660: 84 d1 01 00 00 d9 ee 51 8d 4b 08 d9 1c 24 51 8b
1052d670: c8 e8 7a 79 e3 ff 8b f0 3b f7 89 74 24 18 74 04
1052d680: 83 46 04 01 8b 45 20 8b 55 1c 8b 4d 14 89 44 24
1052d690: 24 89 54 24 20 8b 55 18 8d 44 24 20 89 4c 24 28
1052d6a0: 50 8b ce 89 54 24 30 e8 84 8f e3 ff 0f 57 c0 f3
1052d6b0: 0f 11 44 24 3c f3 0f 11 44 24 38 f3 0f 11 44 24
1052d6c0: 34 f3 0f 11 44 24 30 0f 28 4c 24 30 8d 4c 24 50
1052d6d0: 51 0f 29 4c 24 44 f3 0f 10 0d d4 b0 ac 10 8d 54
1052d6e0: 24 44 f3 0f 11 4c 24 40 f3 0f 11 44 24 3c f3 0f
1052d6f0: 11 44 24 38 f3 0f 11 44 24 34 0f 28 44 24 34 52
1052d700: 56 0f 29 44 24 5c e8 55 ce 10 00 dd d8 f3 0f 10
1052d710: 4d 2c f3 0f 10 45 24 f3 0f 10 55 38 f3 0f 11 4c
1052d720: 24 44 f3 0f 10 4d 28 f3 0f 11 44 24 48 f3 0f 11
1052d730: 44 24 3c f3 0f 10 45 30 57 f3 0f 11 4c 24 44 0f
1052d740: 28 4c 24 40 57 f3 0f 11 54 24 4c f3 0f 10 55 34
1052d750: 57 f3 0f 11 44 24 54 f3 0f 11 44 24 48 f3 0f 11
1052d760: 54 24 4c 0f 28 44 24 48 57 0f 29 44 24 7c 68 50
1052d770: 9a b1 10 0f 5c c1 6a 50 0f 29 8c 24 94 00 00 00
1052d780: 0f 29 84 24 a4 00 00 00 e8 23 b7 3e 00 83 c4 24
1052d790: 3b c7 74 20 8d 4c 24 60 51 8d 54 24 74 52 56 8d
1052d7a0: 4b 08 51 8b c8 e8 86 ec e3 ff 8b f8 85 ff 74 04
1052d7b0: 83 47 04 01 0f 28 84 24 80 00 00 00 0f 28 4c 24
1052d7c0: 40 6a 00 0f c6 c0 55 6a 00 0f c6 c9 55 0f 5e c1
1052d7d0: 0f 51 c0 0f 29 44 24 38 f3 0f 10 05 d4 b0 ac 10
1052d7e0: f3 0f 5e 44 24 38 6a 00 6a 00 f3 0f 10 c0 68 14
1052d7f0: 9a b1 10 0f c6 c0 00 6a 38 0f 29 44 24 48 e8 ad
1052d800: b6 3e 00 83 c4 18 85 c0 74 37 d9 44 24 30 51 d9
1052d810: 1c 24 57 8d 53 08 52 8b c8 e8 d2 e3 e3 ff 8b f0
1052d820: 85 f6 74 04 83 46 04 01 a1 b4 86 c7 10 85 c0 74
1052d830: 14 83 c0 04 eb 11 89 7c 24 18 8b f7 e9 43 fe ff
1052d840: ff 33 f6 eb e3 33 c0 85 f6 74 05 8d 4e 0c eb 02
1052d850: 33 c9 6a ff 50 e8 06 52 e3 ff d9 05 84 e1 aa 10
1052d860: 8b 43 08 8b 55 10 8b 40 14 8d 4b 08 bb 01 00 00
1052d870: 00 53 6a 00 6a 00 6a 00 83 ec 08 d9 54 24 04 d9
1052d880: 1c 24 53 56 52 ff d0 85 f6 74 17 8b 46 04 83 c0
1052d890: ff 89 46 04 75 0c 89 5e 04 8b 16 8b 02 53 8b ce
1052d8a0: ff d0 85 ff 74 17 8b 47 04 83 c0 ff 89 47 04 75
1052d8b0: 0c 89 5f 04 8b 17 8b 02 53 8b cf ff d0 8b 4c 24
1052d8c0: 18 85 c9 74 16 8b 41 04 83 c0 ff 89 41 04 75 0b
1052d8d0: 89 59 04 8b 11 8b 02 6a 01 ff d0 8b 74 24 1c 8d
1052d8e0: 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01
1052d8f0: 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0 5f
1052d900: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052d5f0 <.text+0x52c5f0>:
1052d5f0:	55                                              	push   ebp
1052d5f1:	8b ec                                           	mov    ebp,esp
1052d5f3:	83 e4 f0                                        	and    esp,0xfffffff0
1052d5f6:	81 ec 84 00 00 00                               	sub    esp,0x84
1052d5fc:	53                                              	push   ebx
1052d5fd:	56                                              	push   esi
1052d5fe:	57                                              	push   edi
1052d5ff:	e8 9c cb 1f 00                                  	call   0x1072a1a0
1052d604:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1052d607:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1052d60a:	51                                              	push   ecx
1052d60b:	52                                              	push   edx
1052d60c:	8b c8                                           	mov    ecx,eax
1052d60e:	e8 9d d5 1f 00                                  	call   0x1072abb0
1052d613:	8b f0                                           	mov    esi,eax
1052d615:	33 ff                                           	xor    edi,edi
1052d617:	3b f7                                           	cmp    esi,edi
1052d619:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
1052d61d:	0f 84 dc 02 00 00                               	je     0x1052d8ff
1052d623:	8d 46 04                                        	lea    eax,[esi+0x4]
1052d626:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d62b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d62f:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d635:	52                                              	push   edx
1052d636:	8b ce                                           	mov    ecx,esi
1052d638:	e8 63 97 1f 00                                  	call   0x10726da0
1052d63d:	8b d8                                           	mov    ebx,eax
1052d63f:	3b df                                           	cmp    ebx,edi
1052d641:	0f 84 98 02 00 00                               	je     0x1052d8df
1052d647:	57                                              	push   edi
1052d648:	57                                              	push   edi
1052d649:	57                                              	push   edi
1052d64a:	57                                              	push   edi
1052d64b:	68 34 9a b1 10                                  	push   0x10b19a34
1052d650:	68 00 06 00 00                                  	push   0x600
1052d655:	e8 56 b8 3e 00                                  	call   0x10918eb0
1052d65a:	83 c4 18                                        	add    esp,0x18
1052d65d:	3b c7                                           	cmp    eax,edi
1052d65f:	0f 84 d1 01 00 00                               	je     0x1052d836
1052d665:	d9 ee                                           	fldz
1052d667:	51                                              	push   ecx
1052d668:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
1052d66b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d66e:	51                                              	push   ecx
1052d66f:	8b c8                                           	mov    ecx,eax
1052d671:	e8 7a 79 e3 ff                                  	call   0x10364ff0
1052d676:	8b f0                                           	mov    esi,eax
1052d678:	3b f7                                           	cmp    esi,edi
1052d67a:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1052d67e:	74 04                                           	je     0x1052d684
1052d680:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052d684:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
1052d687:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
1052d68a:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
1052d68d:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
1052d691:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
1052d695:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
1052d698:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1052d69c:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
1052d6a0:	50                                              	push   eax
1052d6a1:	8b ce                                           	mov    ecx,esi
1052d6a3:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
1052d6a7:	e8 84 8f e3 ff                                  	call   0x10366630
1052d6ac:	0f 57 c0                                        	xorps  xmm0,xmm0
1052d6af:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1052d6b5:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1052d6bb:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
1052d6c1:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1052d6c7:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
1052d6cc:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1052d6d0:	51                                              	push   ecx
1052d6d1:	0f 29 4c 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm1
1052d6d6:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1052d6de:	8d 54 24 44                                     	lea    edx,[esp+0x44]
1052d6e2:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
1052d6e8:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1052d6ee:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1052d6f4:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
1052d6fa:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
1052d6ff:	52                                              	push   edx
1052d700:	56                                              	push   esi
1052d701:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
1052d706:	e8 55 ce 10 00                                  	call   0x1063a560
1052d70b:	dd d8                                           	fstp   st(0)
1052d70d:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
1052d712:	f3 0f 10 45 24                                  	movss  xmm0,DWORD PTR [ebp+0x24]
1052d717:	f3 0f 10 55 38                                  	movss  xmm2,DWORD PTR [ebp+0x38]
1052d71c:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
1052d722:	f3 0f 10 4d 28                                  	movss  xmm1,DWORD PTR [ebp+0x28]
1052d727:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
1052d72d:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
1052d733:	f3 0f 10 45 30                                  	movss  xmm0,DWORD PTR [ebp+0x30]
1052d738:	57                                              	push   edi
1052d739:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
1052d73f:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
1052d744:	57                                              	push   edi
1052d745:	f3 0f 11 54 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm2
1052d74b:	f3 0f 10 55 34                                  	movss  xmm2,DWORD PTR [ebp+0x34]
1052d750:	57                                              	push   edi
1052d751:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
1052d757:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
1052d75d:	f3 0f 11 54 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm2
1052d763:	0f 28 44 24 48                                  	movaps xmm0,XMMWORD PTR [esp+0x48]
1052d768:	57                                              	push   edi
1052d769:	0f 29 44 24 7c                                  	movaps XMMWORD PTR [esp+0x7c],xmm0
1052d76e:	68 50 9a b1 10                                  	push   0x10b19a50
1052d773:	0f 5c c1                                        	subps  xmm0,xmm1
1052d776:	6a 50                                           	push   0x50
1052d778:	0f 29 8c 24 94 00 00 00                         	movaps XMMWORD PTR [esp+0x94],xmm1
1052d780:	0f 29 84 24 a4 00 00 00                         	movaps XMMWORD PTR [esp+0xa4],xmm0
1052d788:	e8 23 b7 3e 00                                  	call   0x10918eb0
1052d78d:	83 c4 24                                        	add    esp,0x24
1052d790:	3b c7                                           	cmp    eax,edi
1052d792:	74 20                                           	je     0x1052d7b4
1052d794:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1052d798:	51                                              	push   ecx
1052d799:	8d 54 24 74                                     	lea    edx,[esp+0x74]
1052d79d:	52                                              	push   edx
1052d79e:	56                                              	push   esi
1052d79f:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
1052d7a2:	51                                              	push   ecx
1052d7a3:	8b c8                                           	mov    ecx,eax
1052d7a5:	e8 86 ec e3 ff                                  	call   0x1036c430
1052d7aa:	8b f8                                           	mov    edi,eax
1052d7ac:	85 ff                                           	test   edi,edi
1052d7ae:	74 04                                           	je     0x1052d7b4
1052d7b0:	83 47 04 01                                     	add    DWORD PTR [edi+0x4],0x1
1052d7b4:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
1052d7bc:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
1052d7c1:	6a 00                                           	push   0x0
1052d7c3:	0f c6 c0 55                                     	shufps xmm0,xmm0,0x55
1052d7c7:	6a 00                                           	push   0x0
1052d7c9:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
1052d7cd:	0f 5e c1                                        	divps  xmm0,xmm1
1052d7d0:	0f 51 c0                                        	sqrtps xmm0,xmm0
1052d7d3:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
1052d7d8:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1052d7e0:	f3 0f 5e 44 24 38                               	divss  xmm0,DWORD PTR [esp+0x38]
1052d7e6:	6a 00                                           	push   0x0
1052d7e8:	6a 00                                           	push   0x0
1052d7ea:	f3 0f 10 c0                                     	movss  xmm0,xmm0
1052d7ee:	68 14 9a b1 10                                  	push   0x10b19a14
1052d7f3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1052d7f7:	6a 38                                           	push   0x38
1052d7f9:	0f 29 44 24 48                                  	movaps XMMWORD PTR [esp+0x48],xmm0
1052d7fe:	e8 ad b6 3e 00                                  	call   0x10918eb0
1052d803:	83 c4 18                                        	add    esp,0x18
1052d806:	85 c0                                           	test   eax,eax
1052d808:	74 37                                           	je     0x1052d841
1052d80a:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
1052d80e:	51                                              	push   ecx
1052d80f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d812:	57                                              	push   edi
1052d813:	8d 53 08                                        	lea    edx,[ebx+0x8]
1052d816:	52                                              	push   edx
1052d817:	8b c8                                           	mov    ecx,eax
1052d819:	e8 d2 e3 e3 ff                                  	call   0x1036bbf0
1052d81e:	8b f0                                           	mov    esi,eax
1052d820:	85 f6                                           	test   esi,esi
1052d822:	74 04                                           	je     0x1052d828
1052d824:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052d828:	a1 b4 86 c7 10                                  	mov    eax,ds:0x10c786b4
1052d82d:	85 c0                                           	test   eax,eax
1052d82f:	74 14                                           	je     0x1052d845
1052d831:	83 c0 04                                        	add    eax,0x4
1052d834:	eb 11                                           	jmp    0x1052d847
1052d836:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1052d83a:	8b f7                                           	mov    esi,edi
1052d83c:	e9 43 fe ff ff                                  	jmp    0x1052d684
1052d841:	33 f6                                           	xor    esi,esi
1052d843:	eb e3                                           	jmp    0x1052d828
1052d845:	33 c0                                           	xor    eax,eax
1052d847:	85 f6                                           	test   esi,esi
1052d849:	74 05                                           	je     0x1052d850
1052d84b:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
1052d84e:	eb 02                                           	jmp    0x1052d852
1052d850:	33 c9                                           	xor    ecx,ecx
1052d852:	6a ff                                           	push   0xffffffff
1052d854:	50                                              	push   eax
1052d855:	e8 06 52 e3 ff                                  	call   0x10362a60
1052d85a:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1052d860:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
1052d863:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
1052d866:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1052d869:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
1052d86c:	bb 01 00 00 00                                  	mov    ebx,0x1
1052d871:	53                                              	push   ebx
1052d872:	6a 00                                           	push   0x0
1052d874:	6a 00                                           	push   0x0
1052d876:	6a 00                                           	push   0x0
1052d878:	83 ec 08                                        	sub    esp,0x8
1052d87b:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052d87f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052d882:	53                                              	push   ebx
1052d883:	56                                              	push   esi
1052d884:	52                                              	push   edx
1052d885:	ff d0                                           	call   eax
1052d887:	85 f6                                           	test   esi,esi
1052d889:	74 17                                           	je     0x1052d8a2
1052d88b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052d88e:	83 c0 ff                                        	add    eax,0xffffffff
1052d891:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052d894:	75 0c                                           	jne    0x1052d8a2
1052d896:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
1052d899:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d89b:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d89d:	53                                              	push   ebx
1052d89e:	8b ce                                           	mov    ecx,esi
1052d8a0:	ff d0                                           	call   eax
1052d8a2:	85 ff                                           	test   edi,edi
1052d8a4:	74 17                                           	je     0x1052d8bd
1052d8a6:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1052d8a9:	83 c0 ff                                        	add    eax,0xffffffff
1052d8ac:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1052d8af:	75 0c                                           	jne    0x1052d8bd
1052d8b1:	89 5f 04                                        	mov    DWORD PTR [edi+0x4],ebx
1052d8b4:	8b 17                                           	mov    edx,DWORD PTR [edi]
1052d8b6:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d8b8:	53                                              	push   ebx
1052d8b9:	8b cf                                           	mov    ecx,edi
1052d8bb:	ff d0                                           	call   eax
1052d8bd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1052d8c1:	85 c9                                           	test   ecx,ecx
1052d8c3:	74 16                                           	je     0x1052d8db
1052d8c5:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1052d8c8:	83 c0 ff                                        	add    eax,0xffffffff
1052d8cb:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
1052d8ce:	75 0b                                           	jne    0x1052d8db
1052d8d0:	89 59 04                                        	mov    DWORD PTR [ecx+0x4],ebx
1052d8d3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1052d8d5:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d8d7:	6a 01                                           	push   0x1
1052d8d9:	ff d0                                           	call   eax
1052d8db:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1052d8df:	8d 46 04                                        	lea    eax,[esi+0x4]
1052d8e2:	8b c8                                           	mov    ecx,eax
1052d8e4:	83 ca ff                                        	or     edx,0xffffffff
1052d8e7:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052d8eb:	4a                                              	dec    edx
1052d8ec:	75 11                                           	jne    0x1052d8ff
1052d8ee:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d8f3:	87 08                                           	xchg   DWORD PTR [eax],ecx
1052d8f5:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052d8f7:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052d8f9:	6a 01                                           	push   0x1
1052d8fb:	8b ce                                           	mov    ecx,esi
1052d8fd:	ff d0                                           	call   eax
1052d8ff:	5f                                              	pop    edi
1052d900:	5e                                              	pop    esi
1052d901:	5b                                              	pop    ebx
1052d902:	8b e5                                           	mov    esp,ebp
1052d904:	5d                                              	pop    ebp
1052d905:	c3                                              	ret
1052d906:	cc                                              	int3
1052d907:	cc                                              	int3
1052d908:	cc                                              	int3
1052d909:	cc                                              	int3
1052d90a:	cc                                              	int3
1052d90b:	cc                                              	int3
1052d90c:	cc                                              	int3
1052d90d:	cc                                              	int3
1052d90e:	cc                                              	int3
1052d90f:	cc                                              	int3
