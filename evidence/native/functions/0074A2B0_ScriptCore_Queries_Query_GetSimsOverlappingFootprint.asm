# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074a2b0, 0x0074a958); analyst name Query_GetSimsOverlappingFootprint.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074a2b0 <.text+0x3492b0>:
  74a2b0:	55                   	push   ebp
  74a2b1:	8b ec                	mov    ebp,esp
  74a2b3:	83 e4 f0             	and    esp,0xfffffff0
  74a2b6:	81 ec 44 01 00 00    	sub    esp,0x144
  74a2bc:	53                   	push   ebx
  74a2bd:	56                   	push   esi
  74a2be:	57                   	push   edi
  74a2bf:	e8 ac d2 1e 00       	call   0x937570
  74a2c4:	8b f0                	mov    esi,eax
  74a2c6:	89 b4 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],esi
  74a2cd:	e8 8e cb f3 ff       	call   0x686e60
  74a2d2:	33 db                	xor    ebx,ebx
  74a2d4:	3b f3                	cmp    esi,ebx
  74a2d6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  74a2da:	0f 84 06 02 00 00    	je     0x74a4e6
  74a2e0:	3b c3                	cmp    eax,ebx
  74a2e2:	0f 84 fe 01 00 00    	je     0x74a4e6
  74a2e8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  74a2eb:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  74a2ee:	50                   	push   eax
  74a2ef:	51                   	push   ecx
  74a2f0:	8b ce                	mov    ecx,esi
  74a2f2:	e8 89 dc 1e 00       	call   0x937f80
  74a2f7:	8b f8                	mov    edi,eax
  74a2f9:	3b fb                	cmp    edi,ebx
  74a2fb:	0f 84 e5 01 00 00    	je     0x74a4e6
  74a301:	8b 15 a8 9f 1e 01    	mov    edx,DWORD PTR ds:0x11e9fa8
  74a307:	52                   	push   edx
  74a308:	8b cf                	mov    ecx,edi
  74a30a:	e8 51 9f 1e 00       	call   0x934260
  74a30f:	8b f0                	mov    esi,eax
  74a311:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  74a316:	50                   	push   eax
  74a317:	8b cf                	mov    ecx,edi
  74a319:	e8 42 9f 1e 00       	call   0x934260
  74a31e:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  74a324:	51                   	push   ecx
  74a325:	8b cf                	mov    ecx,edi
  74a327:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  74a32b:	e8 30 9f 1e 00       	call   0x934260
  74a330:	3b f3                	cmp    esi,ebx
  74a332:	8b f8                	mov    edi,eax
  74a334:	0f 84 ac 01 00 00    	je     0x74a4e6
  74a33a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  74a33e:	3b cb                	cmp    ecx,ebx
  74a340:	0f 84 a0 01 00 00    	je     0x74a4e6
  74a346:	3b fb                	cmp    edi,ebx
  74a348:	0f 84 98 01 00 00    	je     0x74a4e6
  74a34e:	8d 94 24 c0 00 00 00 	lea    edx,[esp+0xc0]
  74a355:	52                   	push   edx
  74a356:	e8 b5 d5 20 00       	call   0x957910
  74a35b:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  74a35e:	8d 44 24 17          	lea    eax,[esp+0x17]
  74a362:	50                   	push   eax
  74a363:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  74a367:	51                   	push   ecx
  74a368:	52                   	push   edx
  74a369:	8b ce                	mov    ecx,esi
  74a36b:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
  74a36f:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  74a373:	89 5c 24 74          	mov    DWORD PTR [esp+0x74],ebx
  74a377:	c7 44 24 78 a8 4e 00 01 	mov    DWORD PTR [esp+0x78],0x1004ea8
  74a37f:	e8 5c cd 1f 00       	call   0x9470e0
  74a384:	8b 4f 18             	mov    ecx,DWORD PTR [edi+0x18]
  74a387:	f3 0f 10 05 bc 4d 00 01 	movss  xmm0,DWORD PTR ds:0x1004dbc
  74a38f:	8b c1                	mov    eax,ecx
  74a391:	2d ff ff ff 7f       	sub    eax,0x7fffffff
  74a396:	f7 d8                	neg    eax
  74a398:	1b c0                	sbb    eax,eax
  74a39a:	23 c1                	and    eax,ecx
  74a39c:	0f be 4c 24 17       	movsx  ecx,BYTE PTR [esp+0x17]
  74a3a1:	03 c8                	add    ecx,eax
  74a3a3:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  74a3a7:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  74a3ad:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  74a3b3:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  74a3b9:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74a3bf:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  74a3c4:	8b f8                	mov    edi,eax
  74a3c6:	2b 44 24 60          	sub    eax,DWORD PTR [esp+0x60]
  74a3ca:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  74a3cf:	f3 0f 10 05 b8 4d 00 01 	movss  xmm0,DWORD PTR ds:0x1004db8
  74a3d7:	c1 f8 06             	sar    eax,0x6
  74a3da:	89 8c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ecx
  74a3e1:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  74a3e7:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  74a3ed:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  74a3f3:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74a3f9:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  74a3fe:	50                   	push   eax
  74a3ff:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  74a403:	0f 29 44 24 54       	movaps XMMWORD PTR [esp+0x54],xmm0
  74a408:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  74a40c:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  74a410:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  74a414:	c7 44 24 50 84 4e 00 01 	mov    DWORD PTR [esp+0x50],0x1004e84
  74a41c:	e8 4f 1c 43 00       	call   0xb7c070
  74a421:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  74a425:	3b c7                	cmp    eax,edi
  74a427:	0f 84 9d 00 00 00    	je     0x74a4ca
  74a42d:	8d 70 20             	lea    esi,[eax+0x20]
  74a430:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  74a433:	3b 46 14             	cmp    eax,DWORD PTR [esi+0x14]
  74a436:	0f 84 80 00 00 00    	je     0x74a4bc
  74a43c:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  74a440:	f3 0f 10 4e 04       	movss  xmm1,DWORD PTR [esi+0x4]
  74a445:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  74a44b:	0f 28 4c 24 70       	movaps xmm1,XMMWORD PTR [esp+0x70]
  74a450:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  74a456:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  74a45c:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74a462:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  74a467:	0f 5d c8             	minps  xmm1,xmm0
  74a46a:	f3 0f 10 46 08       	movss  xmm0,DWORD PTR [esi+0x8]
  74a46f:	0f 29 4c 24 70       	movaps XMMWORD PTR [esp+0x70],xmm1
  74a474:	f3 0f 10 4e 0c       	movss  xmm1,DWORD PTR [esi+0xc]
  74a479:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  74a47f:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  74a484:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  74a48a:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  74a490:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  74a496:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  74a49b:	0f 5f c8             	maxps  xmm1,xmm0
  74a49e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  74a4a2:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  74a4a7:	e8 94 fd ff ff       	call   0x74a240
  74a4ac:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  74a4b0:	8d 46 10             	lea    eax,[esi+0x10]
  74a4b3:	50                   	push   eax
  74a4b4:	83 c1 f0             	add    ecx,0xfffffff0
  74a4b7:	e8 f4 f5 ed ff       	call   0x629ab0
  74a4bc:	83 c6 40             	add    esi,0x40
  74a4bf:	8d 4e e0             	lea    ecx,[esi-0x20]
  74a4c2:	3b cf                	cmp    ecx,edi
  74a4c4:	0f 85 66 ff ff ff    	jne    0x74a430
  74a4ca:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  74a4ce:	3b 54 24 44          	cmp    edx,DWORD PTR [esp+0x44]
  74a4d2:	75 1b                	jne    0x74a4ef
  74a4d4:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  74a4d8:	e8 53 f2 ed ff       	call   0x629730
  74a4dd:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  74a4e1:	e8 fa f4 ff ff       	call   0x7499e0
  74a4e6:	33 c0                	xor    eax,eax
  74a4e8:	5f                   	pop    edi
  74a4e9:	5e                   	pop    esi
  74a4ea:	5b                   	pop    ebx
  74a4eb:	8b e5                	mov    esp,ebp
  74a4ed:	5d                   	pop    ebp
  74a4ee:	c3                   	ret
  74a4ef:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  74a4f4:	0f 28 5c 24 70       	movaps xmm3,XMMWORD PTR [esp+0x70]
  74a4f9:	f3 0f 10 15 b4 b5 f9 00 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  74a501:	0f 28 c1             	movaps xmm0,xmm1
  74a504:	0f 58 c3             	addps  xmm0,xmm3
  74a507:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  74a50b:	0f 59 c2             	mulps  xmm0,xmm2
  74a50e:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  74a513:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  74a518:	f3 0f 10 44 24 70    	movss  xmm0,DWORD PTR [esp+0x70]
  74a51e:	0f 5c cb             	subps  xmm1,xmm3
  74a521:	0f 28 9c 24 c0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xc0]
  74a529:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  74a52f:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  74a535:	0f 59 ca             	mulps  xmm1,xmm2
  74a538:	f3 0f 10 54 24 54    	movss  xmm2,DWORD PTR [esp+0x54]
  74a53e:	f3 0f 11 54 24 38    	movss  DWORD PTR [esp+0x38],xmm2
  74a544:	0f 57 d2             	xorps  xmm2,xmm2
  74a547:	f3 0f 11 54 24 34    	movss  DWORD PTR [esp+0x34],xmm2
  74a54d:	0f 28 54 24 30       	movaps xmm2,XMMWORD PTR [esp+0x30]
  74a552:	0f 28 e3             	movaps xmm4,xmm3
  74a555:	0f c6 e3 09          	shufps xmm4,xmm3,0x9
  74a559:	0f 28 eb             	movaps xmm5,xmm3
  74a55c:	0f c6 eb 12          	shufps xmm5,xmm3,0x12
  74a560:	0f 28 f2             	movaps xmm6,xmm2
  74a563:	0f c6 f2 09          	shufps xmm6,xmm2,0x9
  74a567:	0f 59 f5             	mulps  xmm6,xmm5
  74a56a:	0f 28 c2             	movaps xmm0,xmm2
  74a56d:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  74a571:	0f 59 c4             	mulps  xmm0,xmm4
  74a574:	0f 5c c6             	subps  xmm0,xmm6
  74a577:	0f 28 f3             	movaps xmm6,xmm3
  74a57a:	0f c6 f3 ff          	shufps xmm6,xmm3,0xff
  74a57e:	f3 0f 10 1d 88 fd 03 01 	movss  xmm3,DWORD PTR ds:0x103fd88
  74a586:	0f 59 f2             	mulps  xmm6,xmm2
  74a589:	0f 58 c6             	addps  xmm0,xmm6
  74a58c:	0f 28 f0             	movaps xmm6,xmm0
  74a58f:	0f c6 f0 09          	shufps xmm6,xmm0,0x9
  74a593:	0f 59 f5             	mulps  xmm6,xmm5
  74a596:	0f 28 e8             	movaps xmm5,xmm0
  74a599:	0f c6 e8 12          	shufps xmm5,xmm0,0x12
  74a59d:	0f 28 84 24 d0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xd0]
  74a5a5:	0f 59 ec             	mulps  xmm5,xmm4
  74a5a8:	0f 5c ee             	subps  xmm5,xmm6
  74a5ab:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  74a5af:	0f 59 eb             	mulps  xmm5,xmm3
  74a5b2:	0f 59 c9             	mulps  xmm1,xmm1
  74a5b5:	0f 58 ea             	addps  xmm5,xmm2
  74a5b8:	0f 58 e8             	addps  xmm5,xmm0
  74a5bb:	53                   	push   ebx
  74a5bc:	0f 28 c1             	movaps xmm0,xmm1
  74a5bf:	0f c6 c1 55          	shufps xmm0,xmm1,0x55
  74a5c3:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  74a5ca:	50                   	push   eax
  74a5cb:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  74a5cf:	0f 58 c1             	addps  xmm0,xmm1
  74a5d2:	0f 51 c0             	sqrtps xmm0,xmm0
  74a5d5:	6a 06                	push   0x6
  74a5d7:	51                   	push   ecx
  74a5d8:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  74a5dd:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  74a5e1:	8d 8c 24 00 01 00 00 	lea    ecx,[esp+0x100]
  74a5e8:	d9 1c 24             	fstp   DWORD PTR [esp]
  74a5eb:	51                   	push   ecx
  74a5ec:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  74a5f0:	0f 29 9c 24 84 00 00 00 	movaps XMMWORD PTR [esp+0x84],xmm3
  74a5f8:	0f 29 ac 24 04 01 00 00 	movaps XMMWORD PTR [esp+0x104],xmm5
  74a600:	89 9c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ebx
  74a607:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  74a60e:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  74a615:	c7 84 24 a0 00 00 00 ec 4d 00 01 	mov    DWORD PTR [esp+0xa0],0x1004dec
  74a620:	e8 0b ca f3 ff       	call   0x687030
  74a625:	8b b4 24 84 00 00 00 	mov    esi,DWORD PTR [esp+0x84]
  74a62c:	8b bc 24 80 00 00 00 	mov    edi,DWORD PTR [esp+0x80]
  74a633:	b8 f0 d0 fe 00       	mov    eax,0xfed0f0
  74a638:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  74a63c:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  74a643:	89 9c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ebx
  74a64a:	89 9c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ebx
  74a651:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  74a658:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
  74a65f:	3b fe                	cmp    edi,esi
  74a661:	0f 28 94 24 c0 00 00 00 	movaps xmm2,XMMWORD PTR [esp+0xc0]
  74a669:	0f 28 6c 24 70       	movaps xmm5,XMMWORD PTR [esp+0x70]
  74a66e:	0f 28 c2             	movaps xmm0,xmm2
  74a671:	0f 59 c2             	mulps  xmm0,xmm2
  74a674:	0f 28 c8             	movaps xmm1,xmm0
  74a677:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  74a67b:	0f 58 c8             	addps  xmm1,xmm0
  74a67e:	0f 28 c1             	movaps xmm0,xmm1
  74a681:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  74a685:	0f 58 c1             	addps  xmm0,xmm1
  74a688:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74a68c:	0f 53 d8             	rcpps  xmm3,xmm0
  74a68f:	0f 28 e3             	movaps xmm4,xmm3
  74a692:	0f 59 e0             	mulps  xmm4,xmm0
  74a695:	0f 28 cd             	movaps xmm1,xmm5
  74a698:	0f 5c cc             	subps  xmm1,xmm4
  74a69b:	0f 59 cb             	mulps  xmm1,xmm3
  74a69e:	0f 28 d9             	movaps xmm3,xmm1
  74a6a1:	0f 59 d8             	mulps  xmm3,xmm0
  74a6a4:	0f 28 c5             	movaps xmm0,xmm5
  74a6a7:	0f 5c c3             	subps  xmm0,xmm3
  74a6aa:	0f 59 c1             	mulps  xmm0,xmm1
  74a6ad:	0f 57 c9             	xorps  xmm1,xmm1
  74a6b0:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  74a6b6:	c7 44 24 1c 00 00 00 80 	mov    DWORD PTR [esp+0x1c],0x80000000
  74a6be:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  74a6c4:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  74a6ca:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  74a6d0:	f3 0f 11 4c 24 30    	movss  DWORD PTR [esp+0x30],xmm1
  74a6d6:	0f 28 4c 24 30       	movaps xmm1,XMMWORD PTR [esp+0x30]
  74a6db:	0f 57 ca             	xorps  xmm1,xmm2
  74a6de:	0f 28 94 24 d0 00 00 00 	movaps xmm2,XMMWORD PTR [esp+0xd0]
  74a6e6:	0f 59 c1             	mulps  xmm0,xmm1
  74a6e9:	0f 28 d8             	movaps xmm3,xmm0
  74a6ec:	0f c6 d8 12          	shufps xmm3,xmm0,0x12
  74a6f0:	0f 28 e0             	movaps xmm4,xmm0
  74a6f3:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  74a6f7:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  74a6fb:	0f 28 ca             	movaps xmm1,xmm2
  74a6fe:	0f c6 ca 12          	shufps xmm1,xmm2,0x12
  74a702:	0f 28 f2             	movaps xmm6,xmm2
  74a705:	0f c6 f2 09          	shufps xmm6,xmm2,0x9
  74a709:	0f 59 f3             	mulps  xmm6,xmm3
  74a70c:	0f 59 cc             	mulps  xmm1,xmm4
  74a70f:	0f 5c ce             	subps  xmm1,xmm6
  74a712:	0f 29 84 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  74a71a:	0f 28 f2             	movaps xmm6,xmm2
  74a71d:	0f 59 f0             	mulps  xmm6,xmm0
  74a720:	0f 58 ce             	addps  xmm1,xmm6
  74a723:	0f 28 f1             	movaps xmm6,xmm1
  74a726:	0f c6 f1 12          	shufps xmm6,xmm1,0x12
  74a72a:	0f 59 f4             	mulps  xmm6,xmm4
  74a72d:	0f 28 c1             	movaps xmm0,xmm1
  74a730:	0f c6 c1 09          	shufps xmm0,xmm1,0x9
  74a734:	0f 59 c3             	mulps  xmm0,xmm3
  74a737:	0f 5c f0             	subps  xmm6,xmm0
  74a73a:	0f 59 f5             	mulps  xmm6,xmm5
  74a73d:	0f 58 f2             	addps  xmm6,xmm2
  74a740:	0f 57 c0             	xorps  xmm0,xmm0
  74a743:	0f 5c c6             	subps  xmm0,xmm6
  74a746:	89 9c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ebx
  74a74d:	89 9c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ebx
  74a754:	89 84 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],eax
  74a75b:	0f 29 5c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm3
  74a760:	0f 29 64 24 50       	movaps XMMWORD PTR [esp+0x50],xmm4
  74a765:	0f 29 84 24 40 01 00 00 	movaps XMMWORD PTR [esp+0x140],xmm0
  74a76d:	0f 84 6e 01 00 00    	je     0x74a8e1
  74a773:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  74a776:	8b 07                	mov    eax,DWORD PTR [edi]
  74a778:	51                   	push   ecx
  74a779:	8b 8c 24 98 00 00 00 	mov    ecx,DWORD PTR [esp+0x98]
  74a780:	50                   	push   eax
  74a781:	e8 fa d7 1e 00       	call   0x937f80
  74a786:	8b f0                	mov    esi,eax
  74a788:	3b f3                	cmp    esi,ebx
  74a78a:	0f 84 2f 01 00 00    	je     0x74a8bf
  74a790:	8b 15 58 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea158
  74a796:	52                   	push   edx
  74a797:	8b ce                	mov    ecx,esi
  74a799:	e8 c2 9a 1e 00       	call   0x934260
  74a79e:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  74a7a2:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  74a7a7:	50                   	push   eax
  74a7a8:	8b ce                	mov    ecx,esi
  74a7aa:	e8 b1 9a 1e 00       	call   0x934260
  74a7af:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  74a7b3:	3b cb                	cmp    ecx,ebx
  74a7b5:	0f 84 04 01 00 00    	je     0x74a8bf
  74a7bb:	3b c3                	cmp    eax,ebx
  74a7bd:	0f 84 fc 00 00 00    	je     0x74a8bf
  74a7c3:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  74a7c6:	8b c2                	mov    eax,edx
  74a7c8:	2d ff ff ff 7f       	sub    eax,0x7fffffff
  74a7cd:	f7 d8                	neg    eax
  74a7cf:	1b c0                	sbb    eax,eax
  74a7d1:	23 c2                	and    eax,edx
  74a7d3:	3b 84 24 90 00 00 00 	cmp    eax,DWORD PTR [esp+0x90]
  74a7da:	0f 85 df 00 00 00    	jne    0x74a8bf
  74a7e0:	8d 94 24 20 01 00 00 	lea    edx,[esp+0x120]
  74a7e7:	52                   	push   edx
  74a7e8:	e8 43 d2 20 00       	call   0x957a30
  74a7ed:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  74a7f0:	0f 28 64 24 50       	movaps xmm4,XMMWORD PTR [esp+0x50]
  74a7f5:	0f 28 5c 24 30       	movaps xmm3,XMMWORD PTR [esp+0x30]
  74a7fa:	0f 28 c2             	movaps xmm0,xmm2
  74a7fd:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  74a801:	0f 59 c4             	mulps  xmm0,xmm4
  74a804:	0f 28 ca             	movaps xmm1,xmm2
  74a807:	0f c6 ca 09          	shufps xmm1,xmm2,0x9
  74a80b:	0f 59 cb             	mulps  xmm1,xmm3
  74a80e:	0f 5c c1             	subps  xmm0,xmm1
  74a811:	0f 28 ca             	movaps xmm1,xmm2
  74a814:	0f 59 8c 24 e0 00 00 00 	mulps  xmm1,XMMWORD PTR [esp+0xe0]
  74a81c:	0f 58 c1             	addps  xmm0,xmm1
  74a81f:	0f 28 c8             	movaps xmm1,xmm0
  74a822:	0f c6 c8 12          	shufps xmm1,xmm0,0x12
  74a826:	0f 59 cc             	mulps  xmm1,xmm4
  74a829:	0f 28 e0             	movaps xmm4,xmm0
  74a82c:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  74a830:	0f 59 e3             	mulps  xmm4,xmm3
  74a833:	0f 5c cc             	subps  xmm1,xmm4
  74a836:	0f 59 4c 24 70       	mulps  xmm1,XMMWORD PTR [esp+0x70]
  74a83b:	0f 58 ca             	addps  xmm1,xmm2
  74a83e:	0f 58 8c 24 40 01 00 00 	addps  xmm1,XMMWORD PTR [esp+0x140]
  74a846:	0f 29 8c 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm1
  74a84e:	f3 0f 10 84 24 10 01 00 00 	movss  xmm0,DWORD PTR [esp+0x110]
  74a857:	0f 29 8c 24 00 01 00 00 	movaps XMMWORD PTR [esp+0x100],xmm1
  74a85f:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74a865:	f3 0f 10 84 24 08 01 00 00 	movss  xmm0,DWORD PTR [esp+0x108]
  74a86e:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  74a874:	0f 57 c0             	xorps  xmm0,xmm0
  74a877:	0f 2f 45 18          	comiss xmm0,DWORD PTR [ebp+0x18]
  74a87b:	72 18                	jb     0x74a895
  74a87d:	8d 44 24 20          	lea    eax,[esp+0x20]
  74a881:	50                   	push   eax
  74a882:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  74a886:	51                   	push   ecx
  74a887:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  74a88e:	e8 ad cc f2 ff       	call   0x677540
  74a893:	eb 1d                	jmp    0x74a8b2
  74a895:	d9 45 18             	fld    DWORD PTR [ebp+0x18]
  74a898:	51                   	push   ecx
  74a899:	d9 1c 24             	fstp   DWORD PTR [esp]
  74a89c:	8d 54 24 24          	lea    edx,[esp+0x24]
  74a8a0:	52                   	push   edx
  74a8a1:	8d 44 24 48          	lea    eax,[esp+0x48]
  74a8a5:	50                   	push   eax
  74a8a6:	8d 8c 24 ac 00 00 00 	lea    ecx,[esp+0xac]
  74a8ad:	e8 fe 09 f3 ff       	call   0x67b2b0
  74a8b2:	3a c3                	cmp    al,bl
  74a8b4:	74 09                	je     0x74a8bf
  74a8b6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  74a8ba:	83 c7 08             	add    edi,0x8
  74a8bd:	eb 16                	jmp    0x74a8d5
  74a8bf:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  74a8c3:	8b 48 f8             	mov    ecx,DWORD PTR [eax-0x8]
  74a8c6:	83 e8 08             	sub    eax,0x8
  74a8c9:	89 0f                	mov    DWORD PTR [edi],ecx
  74a8cb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  74a8ce:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  74a8d2:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  74a8d5:	3b f8                	cmp    edi,eax
  74a8d7:	0f 85 96 fe ff ff    	jne    0x74a773
  74a8dd:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  74a8e1:	e8 aa ea 01 00       	call   0x769390
  74a8e6:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  74a8ed:	2b f1                	sub    esi,ecx
  74a8ef:	c1 fe 03             	sar    esi,0x3
  74a8f2:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  74a8f9:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  74a900:	75 07                	jne    0x74a909
  74a902:	8d 8c 24 98 00 00 00 	lea    ecx,[esp+0x98]
  74a909:	8b 10                	mov    edx,DWORD PTR [eax]
  74a90b:	8b 92 c0 00 00 00    	mov    edx,DWORD PTR [edx+0xc0]
  74a911:	56                   	push   esi
  74a912:	51                   	push   ecx
  74a913:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  74a916:	51                   	push   ecx
  74a917:	8b c8                	mov    ecx,eax
  74a919:	ff d2                	call   edx
  74a91b:	8d 8c 24 a0 00 00 00 	lea    ecx,[esp+0xa0]
  74a922:	8b f0                	mov    esi,eax
  74a924:	e8 87 ed 04 00       	call   0x7996b0
  74a929:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  74a930:	3b c3                	cmp    eax,ebx
  74a932:	74 09                	je     0x74a93d
  74a934:	50                   	push   eax
  74a935:	e8 a6 9b d9 ff       	call   0x4e44e0
  74a93a:	83 c4 04             	add    esp,0x4
  74a93d:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  74a941:	e8 ea ed ed ff       	call   0x629730
  74a946:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  74a94a:	e8 91 f0 ff ff       	call   0x7499e0
  74a94f:	5f                   	pop    edi
  74a950:	8b c6                	mov    eax,esi
  74a952:	5e                   	pop    esi
  74a953:	5b                   	pop    ebx
  74a954:	8b e5                	mov    esp,ebp
  74a956:	5d                   	pop    ebp
  74a957:	c3                   	ret
