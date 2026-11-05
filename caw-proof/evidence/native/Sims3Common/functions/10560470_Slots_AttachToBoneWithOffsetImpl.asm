# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10560470 (Slots_AttachToBoneWithOffsetImpl)
Paired Ghidra pseudocode: 10560470_Slots_AttachToBoneWithOffsetImpl.c
Window: [0x10560470, 0x105607c0) (848 bytes; stop exclusive)
Next defined Ghidra entry: 0x105607c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10560470: 55 8b ec 83 e4 f0 81 ec 34 01 00 00 8b 45 28 f3
10560480: 0f 10 48 08 f3 0f 11 4c 24 0c f3 0f 10 48 04 f3
10560490: 0f 11 4c 24 08 f3 0f 10 4d 2c 0f c6 c9 00 0f 29
105604a0: 4c 24 24 d9 44 24 24 f3 0f 10 00 d9 fe f3 0f 11
105604b0: 44 24 10 f3 0f 11 44 24 04 0f 28 44 24 04 0f 29
105604c0: 84 24 84 00 00 00 0f 29 4c 24 24 f3 0f 10 0d d4
105604d0: b0 ac 10 0f c6 c9 00 53 56 57 d9 5c 24 2c d9 44
105604e0: 24 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c
105604f0: 24 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f
10560500: 28 f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef
10560510: 0f 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6
10560520: c9 aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa
10560530: 0f 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60
10560540: 0f 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00
10560550: 0f 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7
10560560: 0f 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28
10560570: c7 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29
10560580: 84 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58
10560590: 44 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50
105605a0: 0f 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58
105605b0: 44 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59
105605c0: c4 0f 59 ea 0f 58 c6 0f 5c ef 0f 59 da 0f 29 84
105605d0: 24 b0 00 00 00 0f 29 ac 24 f0 00 00 00 0f 28 44
105605e0: 24 50 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44
105605f0: 24 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7
10560600: 0f 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24
10560610: 1c f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10
10560620: 44 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f
10560630: 58 de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11
10560640: 44 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00
10560650: f3 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84
10560660: 24 d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24
10560670: b0 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0
10560680: 00 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29
10560690: 84 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3
105606a0: 0f 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f
105606b0: 11 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11
105606c0: 44 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44
105606d0: 24 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3
105606e0: 0f 10 05 d4 b0 ac 10 f3 0f 11 44 24 1c f3 0f 10
105606f0: 40 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11
10560700: 44 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44
10560710: 24 10 0f 29 84 24 30 01 00 00 e8 81 9a 1c 00 8b
10560720: 4d 08 8b f8 8b 45 0c 50 51 8b cf e8 80 a4 1c 00
10560730: 8b f0 85 f6 74 14 8b 15 98 d9 c8 10 52 8b ce e8
10560740: 5c 66 1c 00 8b d8 85 db 75 0c b8 e9 03 00 00 5f
10560750: 5e 5b 8b e5 5d c3 8b 45 14 8b 4d 10 50 51 8b cf
10560760: e8 4b a4 1c 00 8b f8 85 ff 75 0c b8 ea 03 00 00
10560770: 5f 5e 5b 8b e5 5d c3 80 7d 20 00 74 19 8b 15 c4
10560780: 0c c8 10 52 8b ce e8 15 66 1c 00 85 c0 74 07 8b
10560790: c8 e8 aa e8 1c 00 8b 45 1c 8b 55 18 50 8d 8c 24
105607a0: 04 01 00 00 51 52 57 8b cb e8 e2 bf 1e 00 5f 5e
105607b0: 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10560470 <.text+0x55f470>:
10560470:	55                                              	push   ebp
10560471:	8b ec                                           	mov    ebp,esp
10560473:	83 e4 f0                                        	and    esp,0xfffffff0
10560476:	81 ec 34 01 00 00                               	sub    esp,0x134
1056047c:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
1056047f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10560484:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1056048a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1056048f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10560495:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
1056049a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
1056049e:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
105604a3:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
105604a7:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
105604ab:	d9 fe                                           	fsin
105604ad:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105604b3:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105604b9:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
105604be:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
105604c6:	0f 29 4c 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm1
105604cb:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
105604d3:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105604d7:	53                                              	push   ebx
105604d8:	56                                              	push   esi
105604d9:	57                                              	push   edi
105604da:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
105604de:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
105604e2:	d9 ff                                           	fcos
105604e4:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
105604ea:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105604ee:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
105604f2:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
105604f8:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
105604fc:	0f 5c ce                                        	subps  xmm1,xmm6
105604ff:	0f 28 f9                                        	movaps xmm7,xmm1
10560502:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
1056050a:	0f 28 df                                        	movaps xmm3,xmm7
1056050d:	0f 28 ef                                        	movaps xmm5,xmm7
10560510:	0f 28 d1                                        	movaps xmm2,xmm1
10560513:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
10560517:	0f 28 e1                                        	movaps xmm4,xmm1
1056051a:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
1056051e:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
10560522:	0f 59 f9                                        	mulps  xmm7,xmm1
10560525:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
1056052a:	0f 28 f8                                        	movaps xmm7,xmm0
1056052d:	0f 59 fa                                        	mulps  xmm7,xmm2
10560530:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
10560535:	0f 28 f8                                        	movaps xmm7,xmm0
10560538:	0f 59 c1                                        	mulps  xmm0,xmm1
1056053b:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
10560540:	0f 57 c0                                        	xorps  xmm0,xmm0
10560543:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10560548:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
10560550:	0f 59 fc                                        	mulps  xmm7,xmm4
10560553:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
10560558:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
1056055d:	0f 28 c7                                        	movaps xmm0,xmm7
10560560:	0f 59 c1                                        	mulps  xmm0,xmm1
10560563:	0f 58 c6                                        	addps  xmm0,xmm6
10560566:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
1056056e:	0f 28 c7                                        	movaps xmm0,xmm7
10560571:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
10560576:	0f 59 c4                                        	mulps  xmm0,xmm4
10560579:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
1056057e:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
10560586:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1056058b:	0f 59 c2                                        	mulps  xmm0,xmm2
1056058e:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
10560593:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
1056059b:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
105605a0:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
105605a5:	0f 59 ec                                        	mulps  xmm5,xmm4
105605a8:	0f 28 c5                                        	movaps xmm0,xmm5
105605ab:	0f 59 c1                                        	mulps  xmm0,xmm1
105605ae:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
105605b3:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
105605bb:	0f 28 c5                                        	movaps xmm0,xmm5
105605be:	0f 59 c4                                        	mulps  xmm0,xmm4
105605c1:	0f 59 ea                                        	mulps  xmm5,xmm2
105605c4:	0f 58 c6                                        	addps  xmm0,xmm6
105605c7:	0f 5c ef                                        	subps  xmm5,xmm7
105605ca:	0f 59 da                                        	mulps  xmm3,xmm2
105605cd:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
105605d5:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
105605dd:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
105605e2:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
105605e7:	0f 28 c3                                        	movaps xmm0,xmm3
105605ea:	0f 59 c1                                        	mulps  xmm0,xmm1
105605ed:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
105605f2:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
105605f7:	0f 28 c3                                        	movaps xmm0,xmm3
105605fa:	0f 59 c4                                        	mulps  xmm0,xmm4
105605fd:	0f 58 c7                                        	addps  xmm0,xmm7
10560600:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
10560605:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
1056060b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10560611:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
10560617:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1056061d:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
10560623:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560629:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
1056062c:	0f 59 da                                        	mulps  xmm3,xmm2
1056062f:	0f 58 de                                        	addps  xmm3,xmm6
10560632:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
10560637:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
1056063d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560643:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560648:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
10560650:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
10560656:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1056065c:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
10560665:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1056066b:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
10560674:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1056067a:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
10560683:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10560689:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1056068e:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
10560696:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
1056069f:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105606a5:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
105606ae:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
105606b4:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
105606bd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105606c3:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
105606cc:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105606d2:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105606d7:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
105606df:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
105606e7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105606ed:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
105606f2:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
105606f8:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
105606fd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10560703:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10560707:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1056070d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10560712:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
1056071a:	e8 81 9a 1c 00                                  	call   0x1072a1a0
1056071f:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10560722:	8b f8                                           	mov    edi,eax
10560724:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10560727:	50                                              	push   eax
10560728:	51                                              	push   ecx
10560729:	8b cf                                           	mov    ecx,edi
1056072b:	e8 80 a4 1c 00                                  	call   0x1072abb0
10560730:	8b f0                                           	mov    esi,eax
10560732:	85 f6                                           	test   esi,esi
10560734:	74 14                                           	je     0x1056074a
10560736:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
1056073c:	52                                              	push   edx
1056073d:	8b ce                                           	mov    ecx,esi
1056073f:	e8 5c 66 1c 00                                  	call   0x10726da0
10560744:	8b d8                                           	mov    ebx,eax
10560746:	85 db                                           	test   ebx,ebx
10560748:	75 0c                                           	jne    0x10560756
1056074a:	b8 e9 03 00 00                                  	mov    eax,0x3e9
1056074f:	5f                                              	pop    edi
10560750:	5e                                              	pop    esi
10560751:	5b                                              	pop    ebx
10560752:	8b e5                                           	mov    esp,ebp
10560754:	5d                                              	pop    ebp
10560755:	c3                                              	ret
10560756:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10560759:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1056075c:	50                                              	push   eax
1056075d:	51                                              	push   ecx
1056075e:	8b cf                                           	mov    ecx,edi
10560760:	e8 4b a4 1c 00                                  	call   0x1072abb0
10560765:	8b f8                                           	mov    edi,eax
10560767:	85 ff                                           	test   edi,edi
10560769:	75 0c                                           	jne    0x10560777
1056076b:	b8 ea 03 00 00                                  	mov    eax,0x3ea
10560770:	5f                                              	pop    edi
10560771:	5e                                              	pop    esi
10560772:	5b                                              	pop    ebx
10560773:	8b e5                                           	mov    esp,ebp
10560775:	5d                                              	pop    ebp
10560776:	c3                                              	ret
10560777:	80 7d 20 00                                     	cmp    BYTE PTR [ebp+0x20],0x0
1056077b:	74 19                                           	je     0x10560796
1056077d:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
10560783:	52                                              	push   edx
10560784:	8b ce                                           	mov    ecx,esi
10560786:	e8 15 66 1c 00                                  	call   0x10726da0
1056078b:	85 c0                                           	test   eax,eax
1056078d:	74 07                                           	je     0x10560796
1056078f:	8b c8                                           	mov    ecx,eax
10560791:	e8 aa e8 1c 00                                  	call   0x1072f040
10560796:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
10560799:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
1056079c:	50                                              	push   eax
1056079d:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
105607a4:	51                                              	push   ecx
105607a5:	52                                              	push   edx
105607a6:	57                                              	push   edi
105607a7:	8b cb                                           	mov    ecx,ebx
105607a9:	e8 e2 bf 1e 00                                  	call   0x1074c790
105607ae:	5f                                              	pop    edi
105607af:	5e                                              	pop    esi
105607b0:	5b                                              	pop    ebx
105607b1:	8b e5                                           	mov    esp,ebp
105607b3:	5d                                              	pop    ebp
105607b4:	c3                                              	ret
105607b5:	cc                                              	int3
105607b6:	cc                                              	int3
105607b7:	cc                                              	int3
105607b8:	cc                                              	int3
105607b9:	cc                                              	int3
105607ba:	cc                                              	int3
105607bb:	cc                                              	int3
105607bc:	cc                                              	int3
105607bd:	cc                                              	int3
105607be:	cc                                              	int3
105607bf:	cc                                              	int3
