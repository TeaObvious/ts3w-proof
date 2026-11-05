# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105304a0 (Camera_GetDistanceFromTargetToObject)
Paired Ghidra pseudocode: 105304A0_Camera_GetDistanceFromTargetToObject.c
Window: [0x105304a0, 0x105306b0) (528 bytes; stop exclusive)
Next defined Ghidra entry: 0x105306b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105304a0: 55 8b ec 83 e4 f0 83 ec 48 0f 57 c0 56 57 f3 0f
105304b0: 11 44 24 08 e8 77 c1 22 00 85 c0 0f 84 e3 01 00
105304c0: 00 8b c8 e8 b8 75 40 00 85 c0 0f 84 d4 01 00 00
105304d0: 8b c8 e8 79 c4 22 00 85 c0 0f 84 c5 01 00 00 8b
105304e0: 40 0c 0f 28 40 60 f3 0f 10 1d 8c e1 aa 10 0f 29
105304f0: 44 24 40 0f 28 50 50 0f 57 c9 0f 28 c1 0f 5c c2
10530500: 0f 28 d0 0f c6 d0 55 f3 0f 11 54 24 20 f3 0f 10
10530510: 64 24 20 0f c6 db 00 f3 0f 11 5c 24 30 0f 2f 64
10530520: 24 30 0f 29 44 24 10 76 19 0f 5c ca 0f 28 d1 0f
10530530: 28 c8 0f c6 ca 00 0f c6 c8 e8 0f 28 c1 0f 29 44
10530540: 24 10 f3 0f 10 0d 80 9d b1 10 f3 0f 11 4c 24 08
10530550: 0f 28 c8 0f c6 c8 55 0f c2 cb 00 0f 50 c1 83 f8
10530560: 0f 0f 84 3d 01 00 00 e8 34 9c 1f 00 8b 4d 0c 8b
10530570: 55 08 51 52 8b c8 e8 35 a6 1f 00 8b f0 85 f6 0f
10530580: 84 1f 01 00 00 8d 7e 04 8b c7 b9 01 00 00 00 f0
10530590: 0f c1 08 8b 15 98 d9 c8 10 52 8b ce e8 ff 67 1f
105305a0: 00 85 c0 0f 84 de 00 00 00 8d 4c 24 30 51 8b c8
105305b0: e8 fb 9c 21 00 0f 28 4c 24 30 0f 28 54 24 40 0f
105305c0: 28 74 24 20 0f 28 da 0f c6 da 55 0f 28 c1 0f c6
105305d0: c1 55 0f 5c c3 0f 28 5c 24 10 0f 28 e3 0f c6 e3
105305e0: 55 0f 5e c4 0f 29 44 24 30 f3 0f 10 64 24 30 0f
105305f0: 28 ea 0f c6 ea 00 0f 28 c3 0f c6 c3 00 0f c6 d2
10530600: aa 0f c6 e4 00 0f 59 c4 0f 58 e8 0f c6 db aa 0f
10530610: 59 dc 0f 58 d3 0f 28 c6 0f c6 c5 05 0f c6 c6 e2
10530620: 0f 28 d8 0f c6 da 0f 0f c6 c3 24 0f 28 d8 0f c6
10530630: d8 00 0f 28 d1 0f c6 d1 00 0f 5c d3 0f 29 54 24
10530640: 20 0f c6 c0 aa 0f 28 d1 0f c6 d1 aa f3 0f 10 4c
10530650: 24 20 0f 5c d0 0f 29 54 24 30 f3 0f 10 44 24 30
10530660: f3 0f 59 c0 0f 28 d1 f3 0f 59 d1 f3 0f 58 c2 0f
10530670: c6 c0 00 0f 51 c0 0f 29 44 24 30 f3 0f 10 44 24
10530680: 30 f3 0f 11 44 24 08 8b d7 83 c8 ff f0 0f c1 02
10530690: 48 75 11 b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01
105306a0: 8b ce ff d0 d9 44 24 08 5f 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
105304a0 <.text+0x52f4a0>:
105304a0:	55                                              	push   ebp
105304a1:	8b ec                                           	mov    ebp,esp
105304a3:	83 e4 f0                                        	and    esp,0xfffffff0
105304a6:	83 ec 48                                        	sub    esp,0x48
105304a9:	0f 57 c0                                        	xorps  xmm0,xmm0
105304ac:	56                                              	push   esi
105304ad:	57                                              	push   edi
105304ae:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
105304b4:	e8 77 c1 22 00                                  	call   0x1075c630
105304b9:	85 c0                                           	test   eax,eax
105304bb:	0f 84 e3 01 00 00                               	je     0x105306a4
105304c1:	8b c8                                           	mov    ecx,eax
105304c3:	e8 b8 75 40 00                                  	call   0x10937a80
105304c8:	85 c0                                           	test   eax,eax
105304ca:	0f 84 d4 01 00 00                               	je     0x105306a4
105304d0:	8b c8                                           	mov    ecx,eax
105304d2:	e8 79 c4 22 00                                  	call   0x1075c950
105304d7:	85 c0                                           	test   eax,eax
105304d9:	0f 84 c5 01 00 00                               	je     0x105306a4
105304df:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
105304e2:	0f 28 40 60                                     	movaps xmm0,XMMWORD PTR [eax+0x60]
105304e6:	f3 0f 10 1d 8c e1 aa 10                         	movss  xmm3,DWORD PTR ds:0x10aae18c
105304ee:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
105304f3:	0f 28 50 50                                     	movaps xmm2,XMMWORD PTR [eax+0x50]
105304f7:	0f 57 c9                                        	xorps  xmm1,xmm1
105304fa:	0f 28 c1                                        	movaps xmm0,xmm1
105304fd:	0f 5c c2                                        	subps  xmm0,xmm2
10530500:	0f 28 d0                                        	movaps xmm2,xmm0
10530503:	0f c6 d0 55                                     	shufps xmm2,xmm0,0x55
10530507:	f3 0f 11 54 24 20                               	movss  DWORD PTR [esp+0x20],xmm2
1053050d:	f3 0f 10 64 24 20                               	movss  xmm4,DWORD PTR [esp+0x20]
10530513:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
10530517:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [esp+0x30],xmm3
1053051d:	0f 2f 64 24 30                                  	comiss xmm4,DWORD PTR [esp+0x30]
10530522:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10530527:	76 19                                           	jbe    0x10530542
10530529:	0f 5c ca                                        	subps  xmm1,xmm2
1053052c:	0f 28 d1                                        	movaps xmm2,xmm1
1053052f:	0f 28 c8                                        	movaps xmm1,xmm0
10530532:	0f c6 ca 00                                     	shufps xmm1,xmm2,0x0
10530536:	0f c6 c8 e8                                     	shufps xmm1,xmm0,0xe8
1053053a:	0f 28 c1                                        	movaps xmm0,xmm1
1053053d:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10530542:	f3 0f 10 0d 80 9d b1 10                         	movss  xmm1,DWORD PTR ds:0x10b19d80
1053054a:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10530550:	0f 28 c8                                        	movaps xmm1,xmm0
10530553:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
10530557:	0f c2 cb 00                                     	cmpeqps xmm1,xmm3
1053055b:	0f 50 c1                                        	movmskps eax,xmm1
1053055e:	83 f8 0f                                        	cmp    eax,0xf
10530561:	0f 84 3d 01 00 00                               	je     0x105306a4
10530567:	e8 34 9c 1f 00                                  	call   0x1072a1a0
1053056c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1053056f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10530572:	51                                              	push   ecx
10530573:	52                                              	push   edx
10530574:	8b c8                                           	mov    ecx,eax
10530576:	e8 35 a6 1f 00                                  	call   0x1072abb0
1053057b:	8b f0                                           	mov    esi,eax
1053057d:	85 f6                                           	test   esi,esi
1053057f:	0f 84 1f 01 00 00                               	je     0x105306a4
10530585:	8d 7e 04                                        	lea    edi,[esi+0x4]
10530588:	8b c7                                           	mov    eax,edi
1053058a:	b9 01 00 00 00                                  	mov    ecx,0x1
1053058f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10530593:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
10530599:	52                                              	push   edx
1053059a:	8b ce                                           	mov    ecx,esi
1053059c:	e8 ff 67 1f 00                                  	call   0x10726da0
105305a1:	85 c0                                           	test   eax,eax
105305a3:	0f 84 de 00 00 00                               	je     0x10530687
105305a9:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
105305ad:	51                                              	push   ecx
105305ae:	8b c8                                           	mov    ecx,eax
105305b0:	e8 fb 9c 21 00                                  	call   0x1074a2b0
105305b5:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
105305ba:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
105305bf:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [esp+0x20]
105305c4:	0f 28 da                                        	movaps xmm3,xmm2
105305c7:	0f c6 da 55                                     	shufps xmm3,xmm2,0x55
105305cb:	0f 28 c1                                        	movaps xmm0,xmm1
105305ce:	0f c6 c1 55                                     	shufps xmm0,xmm1,0x55
105305d2:	0f 5c c3                                        	subps  xmm0,xmm3
105305d5:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
105305da:	0f 28 e3                                        	movaps xmm4,xmm3
105305dd:	0f c6 e3 55                                     	shufps xmm4,xmm3,0x55
105305e1:	0f 5e c4                                        	divps  xmm0,xmm4
105305e4:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
105305e9:	f3 0f 10 64 24 30                               	movss  xmm4,DWORD PTR [esp+0x30]
105305ef:	0f 28 ea                                        	movaps xmm5,xmm2
105305f2:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
105305f6:	0f 28 c3                                        	movaps xmm0,xmm3
105305f9:	0f c6 c3 00                                     	shufps xmm0,xmm3,0x0
105305fd:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
10530601:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
10530605:	0f 59 c4                                        	mulps  xmm0,xmm4
10530608:	0f 58 e8                                        	addps  xmm5,xmm0
1053060b:	0f c6 db aa                                     	shufps xmm3,xmm3,0xaa
1053060f:	0f 59 dc                                        	mulps  xmm3,xmm4
10530612:	0f 58 d3                                        	addps  xmm2,xmm3
10530615:	0f 28 c6                                        	movaps xmm0,xmm6
10530618:	0f c6 c5 05                                     	shufps xmm0,xmm5,0x5
1053061c:	0f c6 c6 e2                                     	shufps xmm0,xmm6,0xe2
10530620:	0f 28 d8                                        	movaps xmm3,xmm0
10530623:	0f c6 da 0f                                     	shufps xmm3,xmm2,0xf
10530627:	0f c6 c3 24                                     	shufps xmm0,xmm3,0x24
1053062b:	0f 28 d8                                        	movaps xmm3,xmm0
1053062e:	0f c6 d8 00                                     	shufps xmm3,xmm0,0x0
10530632:	0f 28 d1                                        	movaps xmm2,xmm1
10530635:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
10530639:	0f 5c d3                                        	subps  xmm2,xmm3
1053063c:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
10530641:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
10530645:	0f 28 d1                                        	movaps xmm2,xmm1
10530648:	0f c6 d1 aa                                     	shufps xmm2,xmm1,0xaa
1053064c:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
10530652:	0f 5c d0                                        	subps  xmm2,xmm0
10530655:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
1053065a:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10530660:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
10530664:	0f 28 d1                                        	movaps xmm2,xmm1
10530667:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
1053066b:	f3 0f 58 c2                                     	addss  xmm0,xmm2
1053066f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10530673:	0f 51 c0                                        	sqrtps xmm0,xmm0
10530676:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
1053067b:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10530681:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10530687:	8b d7                                           	mov    edx,edi
10530689:	83 c8 ff                                        	or     eax,0xffffffff
1053068c:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
10530690:	48                                              	dec    eax
10530691:	75 11                                           	jne    0x105306a4
10530693:	b9 01 00 00 00                                  	mov    ecx,0x1
10530698:	87 0f                                           	xchg   DWORD PTR [edi],ecx
1053069a:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053069c:	8b 02                                           	mov    eax,DWORD PTR [edx]
1053069e:	6a 01                                           	push   0x1
105306a0:	8b ce                                           	mov    ecx,esi
105306a2:	ff d0                                           	call   eax
105306a4:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
105306a8:	5f                                              	pop    edi
105306a9:	5e                                              	pop    esi
105306aa:	8b e5                                           	mov    esp,ebp
105306ac:	5d                                              	pop    ebp
105306ad:	c3                                              	ret
105306ae:	cc                                              	int3
105306af:	cc                                              	int3
