# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109764f0 (EATrace_AssertImpl)
Paired Ghidra pseudocode: 109764F0_EATrace_AssertImpl.c
Window: [0x109764f0, 0x109766a0) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x109766a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109764f0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
10976500: 83 7c 24 04 01 75 35 33 d2 3b ca 74 05 8d 41 04
10976510: eb 02 33 c0 39 44 24 08 74 22 39 91 2c 03 00 00
10976520: 74 1a 8b 41 04 89 91 2c 03 00 00 89 91 30 03 00
10976530: 00 8b 90 90 00 00 00 83 c1 04 ff d2 32 c0 c2 08
10976540: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10976550: 8d 81 0c 01 00 00 c3 cc cc cc cc cc cc cc cc cc
10976560: 8b 44 24 04 8d 04 80 8b 84 81 ec 00 00 00 c2 04
10976570: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10976580: 8b c1 8b 4c 24 04 81 f9 2b fc 2a d0 74 18 81 f9
10976590: 6e 51 3f ee 74 10 33 d2 81 f9 82 83 c5 ee 0f 95
109765a0: c2 83 ea 01 23 c2 c2 04 00 cc cc cc cc cc cc cc
109765b0: b8 43 51 2c 70 c3 cc cc cc cc cc cc cc cc cc cc
109765c0: 8b 41 18 85 c0 74 11 8b 48 28 d1 e9 f6 c1 01 74
109765d0: 0a 8b 40 18 85 c0 75 ef b0 01 c3 32 c0 c3 cc cc
109765e0: b8 44 7c 2c f0 c3 cc cc cc cc cc cc cc cc cc cc
109765f0: 8b 44 24 04 f3 0f 10 05 40 f7 aa 10 f3 0f 11 40
10976600: 04 f3 0f 11 00 b0 01 c2 0c 00 cc cc cc cc cc cc
10976610: 8b 44 24 04 85 c0 74 0d 83 7c 24 08 00 74 06 c7
10976620: 00 4b ff 2a f0 b8 01 00 00 00 c2 08 00 cc cc cc
10976630: b8 f8 4f b9 10 c2 04 00 cc cc cc cc cc cc cc cc
10976640: 8b 44 24 04 85 c0 74 0d 83 7c 24 08 00 74 06 c7
10976650: 00 43 51 2c 70 b8 01 00 00 00 c2 08 00 cc cc cc
10976660: b8 14 50 b9 10 c2 04 00 cc cc cc cc cc cc cc cc
10976670: 8b 44 24 04 85 c0 74 0d 83 7c 24 08 00 74 06 c7
10976680: 00 44 7c 2c f0 b8 01 00 00 00 c2 08 00 cc cc cc
10976690: b8 30 50 b9 10 c2 04 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109764f0 <.text+0x9754f0>:
109764f0:	33 c0                                           	xor    eax,eax
109764f2:	c3                                              	ret
109764f3:	cc                                              	int3
109764f4:	cc                                              	int3
109764f5:	cc                                              	int3
109764f6:	cc                                              	int3
109764f7:	cc                                              	int3
109764f8:	cc                                              	int3
109764f9:	cc                                              	int3
109764fa:	cc                                              	int3
109764fb:	cc                                              	int3
109764fc:	cc                                              	int3
109764fd:	cc                                              	int3
109764fe:	cc                                              	int3
109764ff:	cc                                              	int3
10976500:	83 7c 24 04 01                                  	cmp    DWORD PTR [esp+0x4],0x1
10976505:	75 35                                           	jne    0x1097653c
10976507:	33 d2                                           	xor    edx,edx
10976509:	3b ca                                           	cmp    ecx,edx
1097650b:	74 05                                           	je     0x10976512
1097650d:	8d 41 04                                        	lea    eax,[ecx+0x4]
10976510:	eb 02                                           	jmp    0x10976514
10976512:	33 c0                                           	xor    eax,eax
10976514:	39 44 24 08                                     	cmp    DWORD PTR [esp+0x8],eax
10976518:	74 22                                           	je     0x1097653c
1097651a:	39 91 2c 03 00 00                               	cmp    DWORD PTR [ecx+0x32c],edx
10976520:	74 1a                                           	je     0x1097653c
10976522:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
10976525:	89 91 2c 03 00 00                               	mov    DWORD PTR [ecx+0x32c],edx
1097652b:	89 91 30 03 00 00                               	mov    DWORD PTR [ecx+0x330],edx
10976531:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
10976537:	83 c1 04                                        	add    ecx,0x4
1097653a:	ff d2                                           	call   edx
1097653c:	32 c0                                           	xor    al,al
1097653e:	c2 08 00                                        	ret    0x8
10976541:	cc                                              	int3
10976542:	cc                                              	int3
10976543:	cc                                              	int3
10976544:	cc                                              	int3
10976545:	cc                                              	int3
10976546:	cc                                              	int3
10976547:	cc                                              	int3
10976548:	cc                                              	int3
10976549:	cc                                              	int3
1097654a:	cc                                              	int3
1097654b:	cc                                              	int3
1097654c:	cc                                              	int3
1097654d:	cc                                              	int3
1097654e:	cc                                              	int3
1097654f:	cc                                              	int3
10976550:	8d 81 0c 01 00 00                               	lea    eax,[ecx+0x10c]
10976556:	c3                                              	ret
10976557:	cc                                              	int3
10976558:	cc                                              	int3
10976559:	cc                                              	int3
1097655a:	cc                                              	int3
1097655b:	cc                                              	int3
1097655c:	cc                                              	int3
1097655d:	cc                                              	int3
1097655e:	cc                                              	int3
1097655f:	cc                                              	int3
10976560:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10976564:	8d 04 80                                        	lea    eax,[eax+eax*4]
10976567:	8b 84 81 ec 00 00 00                            	mov    eax,DWORD PTR [ecx+eax*4+0xec]
1097656e:	c2 04 00                                        	ret    0x4
10976571:	cc                                              	int3
10976572:	cc                                              	int3
10976573:	cc                                              	int3
10976574:	cc                                              	int3
10976575:	cc                                              	int3
10976576:	cc                                              	int3
10976577:	cc                                              	int3
10976578:	cc                                              	int3
10976579:	cc                                              	int3
1097657a:	cc                                              	int3
1097657b:	cc                                              	int3
1097657c:	cc                                              	int3
1097657d:	cc                                              	int3
1097657e:	cc                                              	int3
1097657f:	cc                                              	int3
10976580:	8b c1                                           	mov    eax,ecx
10976582:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10976586:	81 f9 2b fc 2a d0                               	cmp    ecx,0xd02afc2b
1097658c:	74 18                                           	je     0x109765a6
1097658e:	81 f9 6e 51 3f ee                               	cmp    ecx,0xee3f516e
10976594:	74 10                                           	je     0x109765a6
10976596:	33 d2                                           	xor    edx,edx
10976598:	81 f9 82 83 c5 ee                               	cmp    ecx,0xeec58382
1097659e:	0f 95 c2                                        	setne  dl
109765a1:	83 ea 01                                        	sub    edx,0x1
109765a4:	23 c2                                           	and    eax,edx
109765a6:	c2 04 00                                        	ret    0x4
109765a9:	cc                                              	int3
109765aa:	cc                                              	int3
109765ab:	cc                                              	int3
109765ac:	cc                                              	int3
109765ad:	cc                                              	int3
109765ae:	cc                                              	int3
109765af:	cc                                              	int3
109765b0:	b8 43 51 2c 70                                  	mov    eax,0x702c5143
109765b5:	c3                                              	ret
109765b6:	cc                                              	int3
109765b7:	cc                                              	int3
109765b8:	cc                                              	int3
109765b9:	cc                                              	int3
109765ba:	cc                                              	int3
109765bb:	cc                                              	int3
109765bc:	cc                                              	int3
109765bd:	cc                                              	int3
109765be:	cc                                              	int3
109765bf:	cc                                              	int3
109765c0:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
109765c3:	85 c0                                           	test   eax,eax
109765c5:	74 11                                           	je     0x109765d8
109765c7:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
109765ca:	d1 e9                                           	shr    ecx,1
109765cc:	f6 c1 01                                        	test   cl,0x1
109765cf:	74 0a                                           	je     0x109765db
109765d1:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
109765d4:	85 c0                                           	test   eax,eax
109765d6:	75 ef                                           	jne    0x109765c7
109765d8:	b0 01                                           	mov    al,0x1
109765da:	c3                                              	ret
109765db:	32 c0                                           	xor    al,al
109765dd:	c3                                              	ret
109765de:	cc                                              	int3
109765df:	cc                                              	int3
109765e0:	b8 44 7c 2c f0                                  	mov    eax,0xf02c7c44
109765e5:	c3                                              	ret
109765e6:	cc                                              	int3
109765e7:	cc                                              	int3
109765e8:	cc                                              	int3
109765e9:	cc                                              	int3
109765ea:	cc                                              	int3
109765eb:	cc                                              	int3
109765ec:	cc                                              	int3
109765ed:	cc                                              	int3
109765ee:	cc                                              	int3
109765ef:	cc                                              	int3
109765f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109765f4:	f3 0f 10 05 40 f7 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aaf740
109765fc:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10976601:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10976605:	b0 01                                           	mov    al,0x1
10976607:	c2 0c 00                                        	ret    0xc
1097660a:	cc                                              	int3
1097660b:	cc                                              	int3
1097660c:	cc                                              	int3
1097660d:	cc                                              	int3
1097660e:	cc                                              	int3
1097660f:	cc                                              	int3
10976610:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10976614:	85 c0                                           	test   eax,eax
10976616:	74 0d                                           	je     0x10976625
10976618:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1097661d:	74 06                                           	je     0x10976625
1097661f:	c7 00 4b ff 2a f0                               	mov    DWORD PTR [eax],0xf02aff4b
10976625:	b8 01 00 00 00                                  	mov    eax,0x1
1097662a:	c2 08 00                                        	ret    0x8
1097662d:	cc                                              	int3
1097662e:	cc                                              	int3
1097662f:	cc                                              	int3
10976630:	b8 f8 4f b9 10                                  	mov    eax,0x10b94ff8
10976635:	c2 04 00                                        	ret    0x4
10976638:	cc                                              	int3
10976639:	cc                                              	int3
1097663a:	cc                                              	int3
1097663b:	cc                                              	int3
1097663c:	cc                                              	int3
1097663d:	cc                                              	int3
1097663e:	cc                                              	int3
1097663f:	cc                                              	int3
10976640:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10976644:	85 c0                                           	test   eax,eax
10976646:	74 0d                                           	je     0x10976655
10976648:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1097664d:	74 06                                           	je     0x10976655
1097664f:	c7 00 43 51 2c 70                               	mov    DWORD PTR [eax],0x702c5143
10976655:	b8 01 00 00 00                                  	mov    eax,0x1
1097665a:	c2 08 00                                        	ret    0x8
1097665d:	cc                                              	int3
1097665e:	cc                                              	int3
1097665f:	cc                                              	int3
10976660:	b8 14 50 b9 10                                  	mov    eax,0x10b95014
10976665:	c2 04 00                                        	ret    0x4
10976668:	cc                                              	int3
10976669:	cc                                              	int3
1097666a:	cc                                              	int3
1097666b:	cc                                              	int3
1097666c:	cc                                              	int3
1097666d:	cc                                              	int3
1097666e:	cc                                              	int3
1097666f:	cc                                              	int3
10976670:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10976674:	85 c0                                           	test   eax,eax
10976676:	74 0d                                           	je     0x10976685
10976678:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1097667d:	74 06                                           	je     0x10976685
1097667f:	c7 00 44 7c 2c f0                               	mov    DWORD PTR [eax],0xf02c7c44
10976685:	b8 01 00 00 00                                  	mov    eax,0x1
1097668a:	c2 08 00                                        	ret    0x8
1097668d:	cc                                              	int3
1097668e:	cc                                              	int3
1097668f:	cc                                              	int3
10976690:	b8 30 50 b9 10                                  	mov    eax,0x10b95030
10976695:	c2 04 00                                        	ret    0x4
10976698:	cc                                              	int3
10976699:	cc                                              	int3
1097669a:	cc                                              	int3
1097669b:	cc                                              	int3
1097669c:	cc                                              	int3
1097669d:	cc                                              	int3
1097669e:	cc                                              	int3
1097669f:	cc                                              	int3
