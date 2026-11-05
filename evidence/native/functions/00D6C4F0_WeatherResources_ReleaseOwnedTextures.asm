# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d6c4f0 WeatherResources_ReleaseOwnedTextures
# Complete actual Ghidra owned ranges: 00d6c4f0..00d6cd24; 725 instructions/2101 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D6C4F0_WeatherResources_ReleaseOwnedTextures.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6c4f0 <.text+0x96b4f0>:
  d6c4f0:	56                                              	push   esi
  d6c4f1:	57                                              	push   edi
  d6c4f2:	8b f9                                           	mov    edi,ecx
  d6c4f4:	8b 8f c0 01 00 00                               	mov    ecx,DWORD PTR [edi+0x1c0]
  d6c4fa:	85 c9                                           	test   ecx,ecx
  d6c4fc:	74 07                                           	je     0xd6c505
  d6c4fe:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c500:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d6c503:	ff d2                                           	call   edx
  d6c505:	8b 87 bc 01 00 00                               	mov    eax,DWORD PTR [edi+0x1bc]
  d6c50b:	85 c0                                           	test   eax,eax
  d6c50d:	8d b7 bc 01 00 00                               	lea    esi,[edi+0x1bc]
  d6c513:	74 33                                           	je     0xd6c548
  d6c515:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c51b:	85 c9                                           	test   ecx,ecx
  d6c51d:	74 0d                                           	je     0xd6c52c
  d6c51f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c521:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c524:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c529:	56                                              	push   esi
  d6c52a:	ff d0                                           	call   eax
  d6c52c:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c52e:	85 c9                                           	test   ecx,ecx
  d6c530:	74 16                                           	je     0xd6c548
  d6c532:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c534:	f6 c2 03                                        	test   dl,0x3
  d6c537:	75 0f                                           	jne    0xd6c548
  d6c539:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c53b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c53d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c540:	ff d2                                           	call   edx
  d6c542:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c548:	8b 87 b8 01 00 00                               	mov    eax,DWORD PTR [edi+0x1b8]
  d6c54e:	85 c0                                           	test   eax,eax
  d6c550:	8d b7 b8 01 00 00                               	lea    esi,[edi+0x1b8]
  d6c556:	74 33                                           	je     0xd6c58b
  d6c558:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c55e:	85 c9                                           	test   ecx,ecx
  d6c560:	74 0d                                           	je     0xd6c56f
  d6c562:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c564:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c567:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c56c:	56                                              	push   esi
  d6c56d:	ff d0                                           	call   eax
  d6c56f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c571:	85 c9                                           	test   ecx,ecx
  d6c573:	74 16                                           	je     0xd6c58b
  d6c575:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c577:	f6 c2 03                                        	test   dl,0x3
  d6c57a:	75 0f                                           	jne    0xd6c58b
  d6c57c:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c57e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c580:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c583:	ff d2                                           	call   edx
  d6c585:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c58b:	8b 87 b4 01 00 00                               	mov    eax,DWORD PTR [edi+0x1b4]
  d6c591:	85 c0                                           	test   eax,eax
  d6c593:	8d b7 b4 01 00 00                               	lea    esi,[edi+0x1b4]
  d6c599:	74 33                                           	je     0xd6c5ce
  d6c59b:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c5a1:	85 c9                                           	test   ecx,ecx
  d6c5a3:	74 0d                                           	je     0xd6c5b2
  d6c5a5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c5a7:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c5aa:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c5af:	56                                              	push   esi
  d6c5b0:	ff d0                                           	call   eax
  d6c5b2:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c5b4:	85 c9                                           	test   ecx,ecx
  d6c5b6:	74 16                                           	je     0xd6c5ce
  d6c5b8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c5ba:	f6 c2 03                                        	test   dl,0x3
  d6c5bd:	75 0f                                           	jne    0xd6c5ce
  d6c5bf:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c5c1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c5c3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c5c6:	ff d2                                           	call   edx
  d6c5c8:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c5ce:	8b 87 b0 01 00 00                               	mov    eax,DWORD PTR [edi+0x1b0]
  d6c5d4:	85 c0                                           	test   eax,eax
  d6c5d6:	8d b7 b0 01 00 00                               	lea    esi,[edi+0x1b0]
  d6c5dc:	74 33                                           	je     0xd6c611
  d6c5de:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c5e4:	85 c9                                           	test   ecx,ecx
  d6c5e6:	74 0d                                           	je     0xd6c5f5
  d6c5e8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c5ea:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c5ed:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c5f2:	56                                              	push   esi
  d6c5f3:	ff d0                                           	call   eax
  d6c5f5:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c5f7:	85 c9                                           	test   ecx,ecx
  d6c5f9:	74 16                                           	je     0xd6c611
  d6c5fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c5fd:	f6 c2 03                                        	test   dl,0x3
  d6c600:	75 0f                                           	jne    0xd6c611
  d6c602:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c604:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c606:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c609:	ff d2                                           	call   edx
  d6c60b:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c611:	8b 87 ac 01 00 00                               	mov    eax,DWORD PTR [edi+0x1ac]
  d6c617:	85 c0                                           	test   eax,eax
  d6c619:	8d b7 ac 01 00 00                               	lea    esi,[edi+0x1ac]
  d6c61f:	74 33                                           	je     0xd6c654
  d6c621:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c627:	85 c9                                           	test   ecx,ecx
  d6c629:	74 0d                                           	je     0xd6c638
  d6c62b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c62d:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c630:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c635:	56                                              	push   esi
  d6c636:	ff d0                                           	call   eax
  d6c638:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c63a:	85 c9                                           	test   ecx,ecx
  d6c63c:	74 16                                           	je     0xd6c654
  d6c63e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c640:	f6 c2 03                                        	test   dl,0x3
  d6c643:	75 0f                                           	jne    0xd6c654
  d6c645:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c647:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c649:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c64c:	ff d2                                           	call   edx
  d6c64e:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c654:	8b 87 a8 01 00 00                               	mov    eax,DWORD PTR [edi+0x1a8]
  d6c65a:	85 c0                                           	test   eax,eax
  d6c65c:	8d b7 a8 01 00 00                               	lea    esi,[edi+0x1a8]
  d6c662:	74 33                                           	je     0xd6c697
  d6c664:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c66a:	85 c9                                           	test   ecx,ecx
  d6c66c:	74 0d                                           	je     0xd6c67b
  d6c66e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c670:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c673:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c678:	56                                              	push   esi
  d6c679:	ff d0                                           	call   eax
  d6c67b:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c67d:	85 c9                                           	test   ecx,ecx
  d6c67f:	74 16                                           	je     0xd6c697
  d6c681:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c683:	f6 c2 03                                        	test   dl,0x3
  d6c686:	75 0f                                           	jne    0xd6c697
  d6c688:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c68a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c68c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c68f:	ff d2                                           	call   edx
  d6c691:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c697:	8b 87 a4 01 00 00                               	mov    eax,DWORD PTR [edi+0x1a4]
  d6c69d:	85 c0                                           	test   eax,eax
  d6c69f:	8d b7 a4 01 00 00                               	lea    esi,[edi+0x1a4]
  d6c6a5:	74 33                                           	je     0xd6c6da
  d6c6a7:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c6ad:	85 c9                                           	test   ecx,ecx
  d6c6af:	74 0d                                           	je     0xd6c6be
  d6c6b1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c6b3:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c6b6:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c6bb:	56                                              	push   esi
  d6c6bc:	ff d0                                           	call   eax
  d6c6be:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c6c0:	85 c9                                           	test   ecx,ecx
  d6c6c2:	74 16                                           	je     0xd6c6da
  d6c6c4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c6c6:	f6 c2 03                                        	test   dl,0x3
  d6c6c9:	75 0f                                           	jne    0xd6c6da
  d6c6cb:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c6cd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c6cf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c6d2:	ff d2                                           	call   edx
  d6c6d4:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c6da:	8b 87 a0 01 00 00                               	mov    eax,DWORD PTR [edi+0x1a0]
  d6c6e0:	85 c0                                           	test   eax,eax
  d6c6e2:	8d b7 a0 01 00 00                               	lea    esi,[edi+0x1a0]
  d6c6e8:	74 33                                           	je     0xd6c71d
  d6c6ea:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c6f0:	85 c9                                           	test   ecx,ecx
  d6c6f2:	74 0d                                           	je     0xd6c701
  d6c6f4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c6f6:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c6f9:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c6fe:	56                                              	push   esi
  d6c6ff:	ff d0                                           	call   eax
  d6c701:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c703:	85 c9                                           	test   ecx,ecx
  d6c705:	74 16                                           	je     0xd6c71d
  d6c707:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c709:	f6 c2 03                                        	test   dl,0x3
  d6c70c:	75 0f                                           	jne    0xd6c71d
  d6c70e:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c710:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c712:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c715:	ff d2                                           	call   edx
  d6c717:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c71d:	8b 87 9c 01 00 00                               	mov    eax,DWORD PTR [edi+0x19c]
  d6c723:	85 c0                                           	test   eax,eax
  d6c725:	8d b7 9c 01 00 00                               	lea    esi,[edi+0x19c]
  d6c72b:	74 33                                           	je     0xd6c760
  d6c72d:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c733:	85 c9                                           	test   ecx,ecx
  d6c735:	74 0d                                           	je     0xd6c744
  d6c737:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c739:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c73c:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c741:	56                                              	push   esi
  d6c742:	ff d0                                           	call   eax
  d6c744:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c746:	85 c9                                           	test   ecx,ecx
  d6c748:	74 16                                           	je     0xd6c760
  d6c74a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c74c:	f6 c2 03                                        	test   dl,0x3
  d6c74f:	75 0f                                           	jne    0xd6c760
  d6c751:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c753:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c755:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c758:	ff d2                                           	call   edx
  d6c75a:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c760:	8b 87 98 01 00 00                               	mov    eax,DWORD PTR [edi+0x198]
  d6c766:	85 c0                                           	test   eax,eax
  d6c768:	8d b7 98 01 00 00                               	lea    esi,[edi+0x198]
  d6c76e:	74 33                                           	je     0xd6c7a3
  d6c770:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c776:	85 c9                                           	test   ecx,ecx
  d6c778:	74 0d                                           	je     0xd6c787
  d6c77a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c77c:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c77f:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c784:	56                                              	push   esi
  d6c785:	ff d0                                           	call   eax
  d6c787:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c789:	85 c9                                           	test   ecx,ecx
  d6c78b:	74 16                                           	je     0xd6c7a3
  d6c78d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c78f:	f6 c2 03                                        	test   dl,0x3
  d6c792:	75 0f                                           	jne    0xd6c7a3
  d6c794:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c796:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c798:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c79b:	ff d2                                           	call   edx
  d6c79d:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c7a3:	8b 87 94 01 00 00                               	mov    eax,DWORD PTR [edi+0x194]
  d6c7a9:	85 c0                                           	test   eax,eax
  d6c7ab:	8d b7 94 01 00 00                               	lea    esi,[edi+0x194]
  d6c7b1:	74 33                                           	je     0xd6c7e6
  d6c7b3:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c7b9:	85 c9                                           	test   ecx,ecx
  d6c7bb:	74 0d                                           	je     0xd6c7ca
  d6c7bd:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c7bf:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c7c2:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c7c7:	56                                              	push   esi
  d6c7c8:	ff d0                                           	call   eax
  d6c7ca:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c7cc:	85 c9                                           	test   ecx,ecx
  d6c7ce:	74 16                                           	je     0xd6c7e6
  d6c7d0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c7d2:	f6 c2 03                                        	test   dl,0x3
  d6c7d5:	75 0f                                           	jne    0xd6c7e6
  d6c7d7:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c7d9:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c7db:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c7de:	ff d2                                           	call   edx
  d6c7e0:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c7e6:	8b 87 90 01 00 00                               	mov    eax,DWORD PTR [edi+0x190]
  d6c7ec:	85 c0                                           	test   eax,eax
  d6c7ee:	8d b7 90 01 00 00                               	lea    esi,[edi+0x190]
  d6c7f4:	74 33                                           	je     0xd6c829
  d6c7f6:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c7fc:	85 c9                                           	test   ecx,ecx
  d6c7fe:	74 0d                                           	je     0xd6c80d
  d6c800:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c802:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c805:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c80a:	56                                              	push   esi
  d6c80b:	ff d0                                           	call   eax
  d6c80d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c80f:	85 c9                                           	test   ecx,ecx
  d6c811:	74 16                                           	je     0xd6c829
  d6c813:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c815:	f6 c2 03                                        	test   dl,0x3
  d6c818:	75 0f                                           	jne    0xd6c829
  d6c81a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c81c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c81e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c821:	ff d2                                           	call   edx
  d6c823:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c829:	8b 87 8c 01 00 00                               	mov    eax,DWORD PTR [edi+0x18c]
  d6c82f:	85 c0                                           	test   eax,eax
  d6c831:	8d b7 8c 01 00 00                               	lea    esi,[edi+0x18c]
  d6c837:	74 33                                           	je     0xd6c86c
  d6c839:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c83f:	85 c9                                           	test   ecx,ecx
  d6c841:	74 0d                                           	je     0xd6c850
  d6c843:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c845:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c848:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c84d:	56                                              	push   esi
  d6c84e:	ff d0                                           	call   eax
  d6c850:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c852:	85 c9                                           	test   ecx,ecx
  d6c854:	74 16                                           	je     0xd6c86c
  d6c856:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c858:	f6 c2 03                                        	test   dl,0x3
  d6c85b:	75 0f                                           	jne    0xd6c86c
  d6c85d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c85f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c861:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c864:	ff d2                                           	call   edx
  d6c866:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c86c:	8b 87 88 01 00 00                               	mov    eax,DWORD PTR [edi+0x188]
  d6c872:	85 c0                                           	test   eax,eax
  d6c874:	8d b7 88 01 00 00                               	lea    esi,[edi+0x188]
  d6c87a:	74 33                                           	je     0xd6c8af
  d6c87c:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c882:	85 c9                                           	test   ecx,ecx
  d6c884:	74 0d                                           	je     0xd6c893
  d6c886:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c888:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c88b:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c890:	56                                              	push   esi
  d6c891:	ff d0                                           	call   eax
  d6c893:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c895:	85 c9                                           	test   ecx,ecx
  d6c897:	74 16                                           	je     0xd6c8af
  d6c899:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c89b:	f6 c2 03                                        	test   dl,0x3
  d6c89e:	75 0f                                           	jne    0xd6c8af
  d6c8a0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c8a2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c8a4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c8a7:	ff d2                                           	call   edx
  d6c8a9:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c8af:	8b 87 84 01 00 00                               	mov    eax,DWORD PTR [edi+0x184]
  d6c8b5:	85 c0                                           	test   eax,eax
  d6c8b7:	8d b7 84 01 00 00                               	lea    esi,[edi+0x184]
  d6c8bd:	74 33                                           	je     0xd6c8f2
  d6c8bf:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c8c5:	85 c9                                           	test   ecx,ecx
  d6c8c7:	74 0d                                           	je     0xd6c8d6
  d6c8c9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c8cb:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c8ce:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c8d3:	56                                              	push   esi
  d6c8d4:	ff d0                                           	call   eax
  d6c8d6:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c8d8:	85 c9                                           	test   ecx,ecx
  d6c8da:	74 16                                           	je     0xd6c8f2
  d6c8dc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c8de:	f6 c2 03                                        	test   dl,0x3
  d6c8e1:	75 0f                                           	jne    0xd6c8f2
  d6c8e3:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c8e5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c8e7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c8ea:	ff d2                                           	call   edx
  d6c8ec:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c8f2:	8b 87 80 01 00 00                               	mov    eax,DWORD PTR [edi+0x180]
  d6c8f8:	85 c0                                           	test   eax,eax
  d6c8fa:	8d b7 80 01 00 00                               	lea    esi,[edi+0x180]
  d6c900:	74 33                                           	je     0xd6c935
  d6c902:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c908:	85 c9                                           	test   ecx,ecx
  d6c90a:	74 0d                                           	je     0xd6c919
  d6c90c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c90e:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c911:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c916:	56                                              	push   esi
  d6c917:	ff d0                                           	call   eax
  d6c919:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c91b:	85 c9                                           	test   ecx,ecx
  d6c91d:	74 16                                           	je     0xd6c935
  d6c91f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c921:	f6 c2 03                                        	test   dl,0x3
  d6c924:	75 0f                                           	jne    0xd6c935
  d6c926:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c928:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c92a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c92d:	ff d2                                           	call   edx
  d6c92f:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c935:	8b 87 7c 01 00 00                               	mov    eax,DWORD PTR [edi+0x17c]
  d6c93b:	85 c0                                           	test   eax,eax
  d6c93d:	8d b7 7c 01 00 00                               	lea    esi,[edi+0x17c]
  d6c943:	74 33                                           	je     0xd6c978
  d6c945:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c94b:	85 c9                                           	test   ecx,ecx
  d6c94d:	74 0d                                           	je     0xd6c95c
  d6c94f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c951:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c954:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c959:	56                                              	push   esi
  d6c95a:	ff d0                                           	call   eax
  d6c95c:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c95e:	85 c9                                           	test   ecx,ecx
  d6c960:	74 16                                           	je     0xd6c978
  d6c962:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c964:	f6 c2 03                                        	test   dl,0x3
  d6c967:	75 0f                                           	jne    0xd6c978
  d6c969:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c96b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c96d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c970:	ff d2                                           	call   edx
  d6c972:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c978:	8b 87 78 01 00 00                               	mov    eax,DWORD PTR [edi+0x178]
  d6c97e:	85 c0                                           	test   eax,eax
  d6c980:	8d b7 78 01 00 00                               	lea    esi,[edi+0x178]
  d6c986:	74 33                                           	je     0xd6c9bb
  d6c988:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c98e:	85 c9                                           	test   ecx,ecx
  d6c990:	74 0d                                           	je     0xd6c99f
  d6c992:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c994:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c997:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c99c:	56                                              	push   esi
  d6c99d:	ff d0                                           	call   eax
  d6c99f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c9a1:	85 c9                                           	test   ecx,ecx
  d6c9a3:	74 16                                           	je     0xd6c9bb
  d6c9a5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c9a7:	f6 c2 03                                        	test   dl,0x3
  d6c9aa:	75 0f                                           	jne    0xd6c9bb
  d6c9ac:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c9ae:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c9b0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c9b3:	ff d2                                           	call   edx
  d6c9b5:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c9bb:	8b 87 74 01 00 00                               	mov    eax,DWORD PTR [edi+0x174]
  d6c9c1:	85 c0                                           	test   eax,eax
  d6c9c3:	8d b7 74 01 00 00                               	lea    esi,[edi+0x174]
  d6c9c9:	74 33                                           	je     0xd6c9fe
  d6c9cb:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6c9d1:	85 c9                                           	test   ecx,ecx
  d6c9d3:	74 0d                                           	je     0xd6c9e2
  d6c9d5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6c9d7:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6c9da:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6c9df:	56                                              	push   esi
  d6c9e0:	ff d0                                           	call   eax
  d6c9e2:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c9e4:	85 c9                                           	test   ecx,ecx
  d6c9e6:	74 16                                           	je     0xd6c9fe
  d6c9e8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6c9ea:	f6 c2 03                                        	test   dl,0x3
  d6c9ed:	75 0f                                           	jne    0xd6c9fe
  d6c9ef:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6c9f1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6c9f3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6c9f6:	ff d2                                           	call   edx
  d6c9f8:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6c9fe:	8b 87 70 01 00 00                               	mov    eax,DWORD PTR [edi+0x170]
  d6ca04:	85 c0                                           	test   eax,eax
  d6ca06:	8d b7 70 01 00 00                               	lea    esi,[edi+0x170]
  d6ca0c:	74 33                                           	je     0xd6ca41
  d6ca0e:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ca14:	85 c9                                           	test   ecx,ecx
  d6ca16:	74 0d                                           	je     0xd6ca25
  d6ca18:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ca1a:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ca1d:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ca22:	56                                              	push   esi
  d6ca23:	ff d0                                           	call   eax
  d6ca25:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ca27:	85 c9                                           	test   ecx,ecx
  d6ca29:	74 16                                           	je     0xd6ca41
  d6ca2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6ca2d:	f6 c2 03                                        	test   dl,0x3
  d6ca30:	75 0f                                           	jne    0xd6ca41
  d6ca32:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ca34:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ca36:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6ca39:	ff d2                                           	call   edx
  d6ca3b:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6ca41:	8b 87 6c 01 00 00                               	mov    eax,DWORD PTR [edi+0x16c]
  d6ca47:	85 c0                                           	test   eax,eax
  d6ca49:	8d b7 6c 01 00 00                               	lea    esi,[edi+0x16c]
  d6ca4f:	74 33                                           	je     0xd6ca84
  d6ca51:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ca57:	85 c9                                           	test   ecx,ecx
  d6ca59:	74 0d                                           	je     0xd6ca68
  d6ca5b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ca5d:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ca60:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ca65:	56                                              	push   esi
  d6ca66:	ff d0                                           	call   eax
  d6ca68:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ca6a:	85 c9                                           	test   ecx,ecx
  d6ca6c:	74 16                                           	je     0xd6ca84
  d6ca6e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6ca70:	f6 c2 03                                        	test   dl,0x3
  d6ca73:	75 0f                                           	jne    0xd6ca84
  d6ca75:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ca77:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ca79:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6ca7c:	ff d2                                           	call   edx
  d6ca7e:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6ca84:	8b 87 68 01 00 00                               	mov    eax,DWORD PTR [edi+0x168]
  d6ca8a:	85 c0                                           	test   eax,eax
  d6ca8c:	8d b7 68 01 00 00                               	lea    esi,[edi+0x168]
  d6ca92:	74 33                                           	je     0xd6cac7
  d6ca94:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ca9a:	85 c9                                           	test   ecx,ecx
  d6ca9c:	74 0d                                           	je     0xd6caab
  d6ca9e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6caa0:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6caa3:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6caa8:	56                                              	push   esi
  d6caa9:	ff d0                                           	call   eax
  d6caab:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6caad:	85 c9                                           	test   ecx,ecx
  d6caaf:	74 16                                           	je     0xd6cac7
  d6cab1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cab3:	f6 c2 03                                        	test   dl,0x3
  d6cab6:	75 0f                                           	jne    0xd6cac7
  d6cab8:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6caba:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cabc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cabf:	ff d2                                           	call   edx
  d6cac1:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cac7:	8b 87 64 01 00 00                               	mov    eax,DWORD PTR [edi+0x164]
  d6cacd:	85 c0                                           	test   eax,eax
  d6cacf:	8d b7 64 01 00 00                               	lea    esi,[edi+0x164]
  d6cad5:	74 33                                           	je     0xd6cb0a
  d6cad7:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cadd:	85 c9                                           	test   ecx,ecx
  d6cadf:	74 0d                                           	je     0xd6caee
  d6cae1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cae3:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cae6:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6caeb:	56                                              	push   esi
  d6caec:	ff d0                                           	call   eax
  d6caee:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6caf0:	85 c9                                           	test   ecx,ecx
  d6caf2:	74 16                                           	je     0xd6cb0a
  d6caf4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6caf6:	f6 c2 03                                        	test   dl,0x3
  d6caf9:	75 0f                                           	jne    0xd6cb0a
  d6cafb:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cafd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6caff:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cb02:	ff d2                                           	call   edx
  d6cb04:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cb0a:	8b 87 60 01 00 00                               	mov    eax,DWORD PTR [edi+0x160]
  d6cb10:	85 c0                                           	test   eax,eax
  d6cb12:	8d b7 60 01 00 00                               	lea    esi,[edi+0x160]
  d6cb18:	74 33                                           	je     0xd6cb4d
  d6cb1a:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cb20:	85 c9                                           	test   ecx,ecx
  d6cb22:	74 0d                                           	je     0xd6cb31
  d6cb24:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cb26:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cb29:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cb2e:	56                                              	push   esi
  d6cb2f:	ff d0                                           	call   eax
  d6cb31:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cb33:	85 c9                                           	test   ecx,ecx
  d6cb35:	74 16                                           	je     0xd6cb4d
  d6cb37:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cb39:	f6 c2 03                                        	test   dl,0x3
  d6cb3c:	75 0f                                           	jne    0xd6cb4d
  d6cb3e:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cb40:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cb42:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cb45:	ff d2                                           	call   edx
  d6cb47:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cb4d:	8b 87 5c 01 00 00                               	mov    eax,DWORD PTR [edi+0x15c]
  d6cb53:	85 c0                                           	test   eax,eax
  d6cb55:	8d b7 5c 01 00 00                               	lea    esi,[edi+0x15c]
  d6cb5b:	74 33                                           	je     0xd6cb90
  d6cb5d:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cb63:	85 c9                                           	test   ecx,ecx
  d6cb65:	74 0d                                           	je     0xd6cb74
  d6cb67:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cb69:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cb6c:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cb71:	56                                              	push   esi
  d6cb72:	ff d0                                           	call   eax
  d6cb74:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cb76:	85 c9                                           	test   ecx,ecx
  d6cb78:	74 16                                           	je     0xd6cb90
  d6cb7a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cb7c:	f6 c2 03                                        	test   dl,0x3
  d6cb7f:	75 0f                                           	jne    0xd6cb90
  d6cb81:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cb83:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cb85:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cb88:	ff d2                                           	call   edx
  d6cb8a:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cb90:	8b 87 58 01 00 00                               	mov    eax,DWORD PTR [edi+0x158]
  d6cb96:	85 c0                                           	test   eax,eax
  d6cb98:	8d b7 58 01 00 00                               	lea    esi,[edi+0x158]
  d6cb9e:	74 33                                           	je     0xd6cbd3
  d6cba0:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cba6:	85 c9                                           	test   ecx,ecx
  d6cba8:	74 0d                                           	je     0xd6cbb7
  d6cbaa:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cbac:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cbaf:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cbb4:	56                                              	push   esi
  d6cbb5:	ff d0                                           	call   eax
  d6cbb7:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cbb9:	85 c9                                           	test   ecx,ecx
  d6cbbb:	74 16                                           	je     0xd6cbd3
  d6cbbd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cbbf:	f6 c2 03                                        	test   dl,0x3
  d6cbc2:	75 0f                                           	jne    0xd6cbd3
  d6cbc4:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cbc6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cbc8:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cbcb:	ff d2                                           	call   edx
  d6cbcd:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cbd3:	8b 87 54 01 00 00                               	mov    eax,DWORD PTR [edi+0x154]
  d6cbd9:	85 c0                                           	test   eax,eax
  d6cbdb:	8d b7 54 01 00 00                               	lea    esi,[edi+0x154]
  d6cbe1:	74 33                                           	je     0xd6cc16
  d6cbe3:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cbe9:	85 c9                                           	test   ecx,ecx
  d6cbeb:	74 0d                                           	je     0xd6cbfa
  d6cbed:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cbef:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cbf2:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cbf7:	56                                              	push   esi
  d6cbf8:	ff d0                                           	call   eax
  d6cbfa:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cbfc:	85 c9                                           	test   ecx,ecx
  d6cbfe:	74 16                                           	je     0xd6cc16
  d6cc00:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cc02:	f6 c2 03                                        	test   dl,0x3
  d6cc05:	75 0f                                           	jne    0xd6cc16
  d6cc07:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cc09:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cc0b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cc0e:	ff d2                                           	call   edx
  d6cc10:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cc16:	8b 87 50 01 00 00                               	mov    eax,DWORD PTR [edi+0x150]
  d6cc1c:	85 c0                                           	test   eax,eax
  d6cc1e:	8d b7 50 01 00 00                               	lea    esi,[edi+0x150]
  d6cc24:	74 33                                           	je     0xd6cc59
  d6cc26:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cc2c:	85 c9                                           	test   ecx,ecx
  d6cc2e:	74 0d                                           	je     0xd6cc3d
  d6cc30:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cc32:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cc35:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cc3a:	56                                              	push   esi
  d6cc3b:	ff d0                                           	call   eax
  d6cc3d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cc3f:	85 c9                                           	test   ecx,ecx
  d6cc41:	74 16                                           	je     0xd6cc59
  d6cc43:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cc45:	f6 c2 03                                        	test   dl,0x3
  d6cc48:	75 0f                                           	jne    0xd6cc59
  d6cc4a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cc4c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cc4e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cc51:	ff d2                                           	call   edx
  d6cc53:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cc59:	8b 87 4c 01 00 00                               	mov    eax,DWORD PTR [edi+0x14c]
  d6cc5f:	85 c0                                           	test   eax,eax
  d6cc61:	8d b7 4c 01 00 00                               	lea    esi,[edi+0x14c]
  d6cc67:	74 33                                           	je     0xd6cc9c
  d6cc69:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6cc6f:	85 c9                                           	test   ecx,ecx
  d6cc71:	74 0d                                           	je     0xd6cc80
  d6cc73:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6cc75:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6cc78:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cc7d:	56                                              	push   esi
  d6cc7e:	ff d0                                           	call   eax
  d6cc80:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cc82:	85 c9                                           	test   ecx,ecx
  d6cc84:	74 16                                           	je     0xd6cc9c
  d6cc86:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cc88:	f6 c2 03                                        	test   dl,0x3
  d6cc8b:	75 0f                                           	jne    0xd6cc9c
  d6cc8d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cc8f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cc91:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cc94:	ff d2                                           	call   edx
  d6cc96:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cc9c:	8b 87 48 01 00 00                               	mov    eax,DWORD PTR [edi+0x148]
  d6cca2:	85 c0                                           	test   eax,eax
  d6cca4:	8d b7 48 01 00 00                               	lea    esi,[edi+0x148]
  d6ccaa:	74 33                                           	je     0xd6ccdf
  d6ccac:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ccb2:	85 c9                                           	test   ecx,ecx
  d6ccb4:	74 0d                                           	je     0xd6ccc3
  d6ccb6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ccb8:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ccbb:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ccc0:	56                                              	push   esi
  d6ccc1:	ff d0                                           	call   eax
  d6ccc3:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ccc5:	85 c9                                           	test   ecx,ecx
  d6ccc7:	74 16                                           	je     0xd6ccdf
  d6ccc9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cccb:	f6 c2 03                                        	test   dl,0x3
  d6ccce:	75 0f                                           	jne    0xd6ccdf
  d6ccd0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ccd2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ccd4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6ccd7:	ff d2                                           	call   edx
  d6ccd9:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6ccdf:	8b 87 44 01 00 00                               	mov    eax,DWORD PTR [edi+0x144]
  d6cce5:	85 c0                                           	test   eax,eax
  d6cce7:	8d b7 44 01 00 00                               	lea    esi,[edi+0x144]
  d6cced:	74 33                                           	je     0xd6cd22
  d6ccef:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ccf5:	85 c9                                           	test   ecx,ecx
  d6ccf7:	74 0d                                           	je     0xd6cd06
  d6ccf9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ccfb:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ccfe:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6cd03:	56                                              	push   esi
  d6cd04:	ff d0                                           	call   eax
  d6cd06:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cd08:	85 c9                                           	test   ecx,ecx
  d6cd0a:	74 16                                           	je     0xd6cd22
  d6cd0c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6cd0e:	f6 c2 03                                        	test   dl,0x3
  d6cd11:	75 0f                                           	jne    0xd6cd22
  d6cd13:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6cd15:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6cd17:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6cd1a:	ff d2                                           	call   edx
  d6cd1c:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  d6cd22:	5f                                              	pop    edi
  d6cd23:	5e                                              	pop    esi
  d6cd24:	c3                                              	ret
