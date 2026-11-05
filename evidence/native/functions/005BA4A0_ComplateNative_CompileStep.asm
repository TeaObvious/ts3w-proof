# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; actual annotated Ghidra C: 005BA4A0_ComplateNative_CompileStep.c.
# Ghidra body ranges: [[005ba4a0, 005ba92d]]; interior alignment bytes retained.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005ba4a0 <.text+0x1b94a0>:
  5ba4a0:	81 ec 28 02 00 00                               	sub    esp,0x228
  5ba4a6:	53                                              	push   ebx
  5ba4a7:	55                                              	push   ebp
  5ba4a8:	8b ac 24 38 02 00 00                            	mov    ebp,DWORD PTR [esp+0x238]
  5ba4af:	56                                              	push   esi
  5ba4b0:	57                                              	push   edi
  5ba4b1:	8b f1                                           	mov    esi,ecx
  5ba4b3:	8d 7e 18                                        	lea    edi,[esi+0x18]
  5ba4b6:	57                                              	push   edi
  5ba4b7:	6a 07                                           	push   0x7
  5ba4b9:	68 a6 20 77 68                                  	push   0x687720a6
  5ba4be:	8b cd                                           	mov    ecx,ebp
  5ba4c0:	e8 8b c2 04 00                                  	call   0x606750
  5ba4c5:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5ba4c7:	3d 9d 26 d1 9c                                  	cmp    eax,0x9cd1269d
  5ba4cc:	0f 87 f7 02 00 00                               	ja     0x5ba7c9
  5ba4d2:	0f 84 89 02 00 00                               	je     0x5ba761
  5ba4d8:	3d e3 54 b5 43                                  	cmp    eax,0x43b554e3
  5ba4dd:	0f 87 68 01 00 00                               	ja     0x5ba64b
  5ba4e3:	0f 84 48 02 00 00                               	je     0x5ba731
  5ba4e9:	3d a5 10 42 03                                  	cmp    eax,0x34210a5
  5ba4ee:	0f 84 92 00 00 00                               	je     0x5ba586
  5ba4f4:	3d 9b 3b 36 1e                                  	cmp    eax,0x1e363b9b
  5ba4f9:	0f 85 89 03 00 00                               	jne    0x5ba888
  5ba4ff:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5ba507:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba50e:	55                                              	push   ebp
  5ba50f:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5ba515:	0f 57 c0                                        	xorps  xmm0,xmm0
  5ba518:	57                                              	push   edi
  5ba519:	8b ce                                           	mov    ecx,esi
  5ba51b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  5ba521:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  5ba527:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  5ba52d:	e8 7e fb ff ff                                  	call   0x5ba0b0
  5ba532:	84 c0                                           	test   al,al
  5ba534:	74 2b                                           	je     0x5ba561
  5ba536:	55                                              	push   ebp
  5ba537:	57                                              	push   edi
  5ba538:	8b ce                                           	mov    ecx,esi
  5ba53a:	e8 61 fc ff ff                                  	call   0x5ba1a0
  5ba53f:	84 c0                                           	test   al,al
  5ba541:	74 1e                                           	je     0x5ba561
  5ba543:	55                                              	push   ebp
  5ba544:	57                                              	push   edi
  5ba545:	8b ce                                           	mov    ecx,esi
  5ba547:	e8 a4 fd ff ff                                  	call   0x5ba2f0
  5ba54c:	84 c0                                           	test   al,al
  5ba54e:	74 11                                           	je     0x5ba561
  5ba550:	55                                              	push   ebp
  5ba551:	57                                              	push   edi
  5ba552:	8b ce                                           	mov    ecx,esi
  5ba554:	e8 67 fe ff ff                                  	call   0x5ba3c0
  5ba559:	84 c0                                           	test   al,al
  5ba55b:	74 04                                           	je     0x5ba561
  5ba55d:	b3 01                                           	mov    bl,0x1
  5ba55f:	eb 02                                           	jmp    0x5ba563
  5ba561:	32 db                                           	xor    bl,bl
  5ba563:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5ba567:	50                                              	push   eax
  5ba568:	68 b5 91 63 55                                  	push   0x556391b5
  5ba56d:	57                                              	push   edi
  5ba56e:	8b ce                                           	mov    ecx,esi
  5ba570:	e8 db f4 ff ff                                  	call   0x5b9a50
  5ba575:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ba579:	51                                              	push   ecx
  5ba57a:	6a 0b                                           	push   0xb
  5ba57c:	68 02 90 e6 d0                                  	push   0xd0e69002
  5ba581:	e9 92 03 00 00                                  	jmp    0x5ba918
  5ba586:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba58d:	55                                              	push   ebp
  5ba58e:	57                                              	push   edi
  5ba58f:	8b ce                                           	mov    ecx,esi
  5ba591:	e8 1a fb ff ff                                  	call   0x5ba0b0
  5ba596:	84 c0                                           	test   al,al
  5ba598:	74 1e                                           	je     0x5ba5b8
  5ba59a:	55                                              	push   ebp
  5ba59b:	57                                              	push   edi
  5ba59c:	8b ce                                           	mov    ecx,esi
  5ba59e:	e8 fd fb ff ff                                  	call   0x5ba1a0
  5ba5a3:	84 c0                                           	test   al,al
  5ba5a5:	74 11                                           	je     0x5ba5b8
  5ba5a7:	55                                              	push   ebp
  5ba5a8:	57                                              	push   edi
  5ba5a9:	8b ce                                           	mov    ecx,esi
  5ba5ab:	e8 40 fd ff ff                                  	call   0x5ba2f0
  5ba5b0:	84 c0                                           	test   al,al
  5ba5b2:	74 04                                           	je     0x5ba5b8
  5ba5b4:	b3 01                                           	mov    bl,0x1
  5ba5b6:	eb 02                                           	jmp    0x5ba5ba
  5ba5b8:	32 db                                           	xor    bl,bl
  5ba5ba:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ba5bc:	33 c0                                           	xor    eax,eax
  5ba5be:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5ba5c2:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5ba5c6:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  5ba5ca:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  5ba5ce:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5ba5d1:	68 e5 fb d9 d4                                  	push   0xd4d9fbe5
  5ba5d6:	8b ce                                           	mov    ecx,esi
  5ba5d8:	ff d0                                           	call   eax
  5ba5da:	50                                              	push   eax
  5ba5db:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5ba5df:	e8 fc de ff ff                                  	call   0x5b84e0
  5ba5e4:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5ba5e8:	51                                              	push   ecx
  5ba5e9:	8b cf                                           	mov    ecx,edi
  5ba5eb:	e8 b0 ec ff ff                                  	call   0x5b92a0
  5ba5f0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5ba5f4:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5ba5f8:	2b c1                                           	sub    eax,ecx
  5ba5fa:	50                                              	push   eax
  5ba5fb:	51                                              	push   ecx
  5ba5fc:	e8 4f 58 21 00                                  	call   0x7cfe50
  5ba601:	83 c4 08                                        	add    esp,0x8
  5ba604:	84 db                                           	test   bl,bl
  5ba606:	0f 84 ae 01 00 00                               	je     0x5ba7ba
  5ba60c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5ba610:	52                                              	push   edx
  5ba611:	50                                              	push   eax
  5ba612:	8b cf                                           	mov    ecx,edi
  5ba614:	e8 d7 dc ff ff                                  	call   0x5b82f0
  5ba619:	84 c0                                           	test   al,al
  5ba61b:	0f 84 99 01 00 00                               	je     0x5ba7ba
  5ba621:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5ba625:	50                                              	push   eax
  5ba626:	6a 0c                                           	push   0xc
  5ba628:	68 7b 6d ff dc                                  	push   0xdcff6d7b
  5ba62d:	8b cd                                           	mov    ecx,ebp
  5ba62f:	e8 9c c3 04 00                                  	call   0x6069d0
  5ba634:	84 c0                                           	test   al,al
  5ba636:	0f 84 7e 01 00 00                               	je     0x5ba7ba
  5ba63c:	5f                                              	pop    edi
  5ba63d:	5e                                              	pop    esi
  5ba63e:	5d                                              	pop    ebp
  5ba63f:	b0 01                                           	mov    al,0x1
  5ba641:	5b                                              	pop    ebx
  5ba642:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba648:	c2 08 00                                        	ret    0x8
  5ba64b:	3d d4 85 7c 5d                                  	cmp    eax,0x5d7c85d4
  5ba650:	0f 84 db 00 00 00                               	je     0x5ba731
  5ba656:	3d db 05 08 89                                  	cmp    eax,0x890805db
  5ba65b:	0f 85 27 02 00 00                               	jne    0x5ba888
  5ba661:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5ba669:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba670:	55                                              	push   ebp
  5ba671:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5ba677:	0f 57 c0                                        	xorps  xmm0,xmm0
  5ba67a:	57                                              	push   edi
  5ba67b:	8b ce                                           	mov    ecx,esi
  5ba67d:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  5ba683:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  5ba689:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  5ba68f:	e8 1c fa ff ff                                  	call   0x5ba0b0
  5ba694:	84 c0                                           	test   al,al
  5ba696:	74 2b                                           	je     0x5ba6c3
  5ba698:	55                                              	push   ebp
  5ba699:	57                                              	push   edi
  5ba69a:	8b ce                                           	mov    ecx,esi
  5ba69c:	e8 ff fa ff ff                                  	call   0x5ba1a0
  5ba6a1:	84 c0                                           	test   al,al
  5ba6a3:	74 1e                                           	je     0x5ba6c3
  5ba6a5:	55                                              	push   ebp
  5ba6a6:	57                                              	push   edi
  5ba6a7:	8b ce                                           	mov    ecx,esi
  5ba6a9:	e8 42 fc ff ff                                  	call   0x5ba2f0
  5ba6ae:	84 c0                                           	test   al,al
  5ba6b0:	74 11                                           	je     0x5ba6c3
  5ba6b2:	55                                              	push   ebp
  5ba6b3:	57                                              	push   edi
  5ba6b4:	8b ce                                           	mov    ecx,esi
  5ba6b6:	e8 05 fd ff ff                                  	call   0x5ba3c0
  5ba6bb:	84 c0                                           	test   al,al
  5ba6bd:	74 04                                           	je     0x5ba6c3
  5ba6bf:	b3 01                                           	mov    bl,0x1
  5ba6c1:	eb 02                                           	jmp    0x5ba6c5
  5ba6c3:	32 db                                           	xor    bl,bl
  5ba6c5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ba6c9:	51                                              	push   ecx
  5ba6ca:	68 b5 91 63 55                                  	push   0x556391b5
  5ba6cf:	57                                              	push   edi
  5ba6d0:	8b ce                                           	mov    ecx,esi
  5ba6d2:	e8 79 f3 ff ff                                  	call   0x5b9a50
  5ba6d7:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5ba6db:	52                                              	push   edx
  5ba6dc:	6a 0b                                           	push   0xb
  5ba6de:	68 02 90 e6 d0                                  	push   0xd0e69002
  5ba6e3:	8b cd                                           	mov    ecx,ebp
  5ba6e5:	e8 76 c2 04 00                                  	call   0x606960
  5ba6ea:	6a 00                                           	push   0x0
  5ba6ec:	68 79 88 9e d4                                  	push   0xd49e8879
  5ba6f1:	57                                              	push   edi
  5ba6f2:	8b ce                                           	mov    ecx,esi
  5ba6f4:	22 d8                                           	and    bl,al
  5ba6f6:	e8 75 f1 ff ff                                  	call   0x5b9870
  5ba6fb:	84 db                                           	test   bl,bl
  5ba6fd:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
  5ba701:	0f 84 b3 00 00 00                               	je     0x5ba7ba
  5ba707:	8d 44 24 13                                     	lea    eax,[esp+0x13]
  5ba70b:	50                                              	push   eax
  5ba70c:	6a 00                                           	push   0x0
  5ba70e:	68 79 88 9e d4                                  	push   0xd49e8879
  5ba713:	8b cd                                           	mov    ecx,ebp
  5ba715:	e8 16 bd 04 00                                  	call   0x606430
  5ba71a:	84 c0                                           	test   al,al
  5ba71c:	0f 84 98 00 00 00                               	je     0x5ba7ba
  5ba722:	5f                                              	pop    edi
  5ba723:	5e                                              	pop    esi
  5ba724:	5d                                              	pop    ebp
  5ba725:	b0 01                                           	mov    al,0x1
  5ba727:	5b                                              	pop    ebx
  5ba728:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba72e:	c2 08 00                                        	ret    0x8
  5ba731:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba738:	55                                              	push   ebp
  5ba739:	57                                              	push   edi
  5ba73a:	8b ce                                           	mov    ecx,esi
  5ba73c:	e8 6f f9 ff ff                                  	call   0x5ba0b0
  5ba741:	84 c0                                           	test   al,al
  5ba743:	74 75                                           	je     0x5ba7ba
  5ba745:	55                                              	push   ebp
  5ba746:	57                                              	push   edi
  5ba747:	8b ce                                           	mov    ecx,esi
  5ba749:	e8 52 fa ff ff                                  	call   0x5ba1a0
  5ba74e:	84 c0                                           	test   al,al
  5ba750:	74 68                                           	je     0x5ba7ba
  5ba752:	5f                                              	pop    edi
  5ba753:	5e                                              	pop    esi
  5ba754:	5d                                              	pop    ebp
  5ba755:	b0 01                                           	mov    al,0x1
  5ba757:	5b                                              	pop    ebx
  5ba758:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba75e:	c2 08 00                                        	ret    0x8
  5ba761:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba768:	55                                              	push   ebp
  5ba769:	57                                              	push   edi
  5ba76a:	8b ce                                           	mov    ecx,esi
  5ba76c:	e8 3f f9 ff ff                                  	call   0x5ba0b0
  5ba771:	84 c0                                           	test   al,al
  5ba773:	74 11                                           	je     0x5ba786
  5ba775:	55                                              	push   ebp
  5ba776:	57                                              	push   edi
  5ba777:	8b ce                                           	mov    ecx,esi
  5ba779:	e8 22 fa ff ff                                  	call   0x5ba1a0
  5ba77e:	84 c0                                           	test   al,al
  5ba780:	74 04                                           	je     0x5ba786
  5ba782:	b3 01                                           	mov    bl,0x1
  5ba784:	eb 02                                           	jmp    0x5ba788
  5ba786:	32 db                                           	xor    bl,bl
  5ba788:	6a 00                                           	push   0x0
  5ba78a:	68 da 48 17 b0                                  	push   0xb01748da
  5ba78f:	57                                              	push   edi
  5ba790:	8b ce                                           	mov    ecx,esi
  5ba792:	e8 39 f7 ff ff                                  	call   0x5b9ed0
  5ba797:	84 db                                           	test   bl,bl
  5ba799:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5ba79d:	74 1b                                           	je     0x5ba7ba
  5ba79f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5ba7a3:	51                                              	push   ecx
  5ba7a4:	6a 07                                           	push   0x7
  5ba7a6:	68 da 48 17 b0                                  	push   0xb01748da
  5ba7ab:	8b cd                                           	mov    ecx,ebp
  5ba7ad:	e8 9e bf 04 00                                  	call   0x606750
  5ba7b2:	84 c0                                           	test   al,al
  5ba7b4:	0f 85 ce 00 00 00                               	jne    0x5ba888
  5ba7ba:	5f                                              	pop    edi
  5ba7bb:	5e                                              	pop    esi
  5ba7bc:	5d                                              	pop    ebp
  5ba7bd:	32 c0                                           	xor    al,al
  5ba7bf:	5b                                              	pop    ebx
  5ba7c0:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba7c6:	c2 08 00                                        	ret    0x8
  5ba7c9:	3d 95 86 bd d6                                  	cmp    eax,0xd6bd8695
  5ba7ce:	0f 87 c3 00 00 00                               	ja     0x5ba897
  5ba7d4:	74 7f                                           	je     0x5ba855
  5ba7d6:	3d b1 00 52 a1                                  	cmp    eax,0xa15200b1
  5ba7db:	74 48                                           	je     0x5ba825
  5ba7dd:	3d 1f ac b6 c6                                  	cmp    eax,0xc6b6ac1f
  5ba7e2:	0f 85 a0 00 00 00                               	jne    0x5ba888
  5ba7e8:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba7ef:	55                                              	push   ebp
  5ba7f0:	57                                              	push   edi
  5ba7f1:	8b ce                                           	mov    ecx,esi
  5ba7f3:	e8 b8 f8 ff ff                                  	call   0x5ba0b0
  5ba7f8:	84 c0                                           	test   al,al
  5ba7fa:	74 be                                           	je     0x5ba7ba
  5ba7fc:	55                                              	push   ebp
  5ba7fd:	57                                              	push   edi
  5ba7fe:	8b ce                                           	mov    ecx,esi
  5ba800:	e8 9b f9 ff ff                                  	call   0x5ba1a0
  5ba805:	84 c0                                           	test   al,al
  5ba807:	74 b1                                           	je     0x5ba7ba
  5ba809:	55                                              	push   ebp
  5ba80a:	57                                              	push   edi
  5ba80b:	8b ce                                           	mov    ecx,esi
  5ba80d:	e8 ae fb ff ff                                  	call   0x5ba3c0
  5ba812:	84 c0                                           	test   al,al
  5ba814:	74 a4                                           	je     0x5ba7ba
  5ba816:	5f                                              	pop    edi
  5ba817:	5e                                              	pop    esi
  5ba818:	5d                                              	pop    ebp
  5ba819:	b0 01                                           	mov    al,0x1
  5ba81b:	5b                                              	pop    ebx
  5ba81c:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba822:	c2 08 00                                        	ret    0x8
  5ba825:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba82c:	55                                              	push   ebp
  5ba82d:	57                                              	push   edi
  5ba82e:	8b ce                                           	mov    ecx,esi
  5ba830:	e8 7b f8 ff ff                                  	call   0x5ba0b0
  5ba835:	84 c0                                           	test   al,al
  5ba837:	74 81                                           	je     0x5ba7ba
  5ba839:	55                                              	push   ebp
  5ba83a:	57                                              	push   edi
  5ba83b:	8b ce                                           	mov    ecx,esi
  5ba83d:	e8 5e f9 ff ff                                  	call   0x5ba1a0
  5ba842:	84 c0                                           	test   al,al
  5ba844:	0f 84 70 ff ff ff                               	je     0x5ba7ba
  5ba84a:	55                                              	push   ebp
  5ba84b:	57                                              	push   edi
  5ba84c:	8b ce                                           	mov    ecx,esi
  5ba84e:	e8 9d fa ff ff                                  	call   0x5ba2f0
  5ba853:	eb b0                                           	jmp    0x5ba805
  5ba855:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ba857:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5ba85a:	68 32 13 c9 a2                                  	push   0xa2c91332
  5ba85f:	8b ce                                           	mov    ecx,esi
  5ba861:	ff d0                                           	call   eax
  5ba863:	8b f8                                           	mov    edi,eax
  5ba865:	be 4c 35 fe 00                                  	mov    esi,0xfe354c
  5ba86a:	b9 0f 00 00 00                                  	mov    ecx,0xf
  5ba86f:	33 d2                                           	xor    edx,edx
  5ba871:	f3 a6                                           	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
  5ba873:	75 13                                           	jne    0x5ba888
  5ba875:	68 4c 33 fe 00                                  	push   0xfe334c
  5ba87a:	6a 07                                           	push   0x7
  5ba87c:	68 32 13 c9 a2                                  	push   0xa2c91332
  5ba881:	8b cd                                           	mov    ecx,ebp
  5ba883:	e8 c8 be 04 00                                  	call   0x606750
  5ba888:	5f                                              	pop    edi
  5ba889:	5e                                              	pop    esi
  5ba88a:	5d                                              	pop    ebp
  5ba88b:	b0 01                                           	mov    al,0x1
  5ba88d:	5b                                              	pop    ebx
  5ba88e:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba894:	c2 08 00                                        	ret    0x8
  5ba897:	3d b9 84 09 dc                                  	cmp    eax,0xdc0984b9
  5ba89c:	75 ea                                           	jne    0x5ba888
  5ba89e:	0f 57 c0                                        	xorps  xmm0,xmm0
  5ba8a1:	8b bc 24 3c 02 00 00                            	mov    edi,DWORD PTR [esp+0x23c]
  5ba8a8:	55                                              	push   ebp
  5ba8a9:	57                                              	push   edi
  5ba8aa:	8b ce                                           	mov    ecx,esi
  5ba8ac:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5ba8b2:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  5ba8b8:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  5ba8be:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  5ba8c4:	e8 e7 f7 ff ff                                  	call   0x5ba0b0
  5ba8c9:	84 c0                                           	test   al,al
  5ba8cb:	74 2b                                           	je     0x5ba8f8
  5ba8cd:	55                                              	push   ebp
  5ba8ce:	57                                              	push   edi
  5ba8cf:	8b ce                                           	mov    ecx,esi
  5ba8d1:	e8 ca f8 ff ff                                  	call   0x5ba1a0
  5ba8d6:	84 c0                                           	test   al,al
  5ba8d8:	74 1e                                           	je     0x5ba8f8
  5ba8da:	55                                              	push   ebp
  5ba8db:	57                                              	push   edi
  5ba8dc:	8b ce                                           	mov    ecx,esi
  5ba8de:	e8 0d fa ff ff                                  	call   0x5ba2f0
  5ba8e3:	84 c0                                           	test   al,al
  5ba8e5:	74 11                                           	je     0x5ba8f8
  5ba8e7:	55                                              	push   ebp
  5ba8e8:	57                                              	push   edi
  5ba8e9:	8b ce                                           	mov    ecx,esi
  5ba8eb:	e8 d0 fa ff ff                                  	call   0x5ba3c0
  5ba8f0:	84 c0                                           	test   al,al
  5ba8f2:	74 04                                           	je     0x5ba8f8
  5ba8f4:	b3 01                                           	mov    bl,0x1
  5ba8f6:	eb 02                                           	jmp    0x5ba8fa
  5ba8f8:	32 db                                           	xor    bl,bl
  5ba8fa:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5ba8fe:	50                                              	push   eax
  5ba8ff:	68 f8 2e 7c b6                                  	push   0xb67c2ef8
  5ba904:	57                                              	push   edi
  5ba905:	8b ce                                           	mov    ecx,esi
  5ba907:	e8 44 f1 ff ff                                  	call   0x5b9a50
  5ba90c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ba910:	51                                              	push   ecx
  5ba911:	6a 0b                                           	push   0xb
  5ba913:	68 f8 2e 7c b6                                  	push   0xb67c2ef8
  5ba918:	8b cd                                           	mov    ecx,ebp
  5ba91a:	e8 41 c0 04 00                                  	call   0x606960
  5ba91f:	5f                                              	pop    edi
  5ba920:	5e                                              	pop    esi
  5ba921:	5d                                              	pop    ebp
  5ba922:	22 c3                                           	and    al,bl
  5ba924:	5b                                              	pop    ebx
  5ba925:	81 c4 28 02 00 00                               	add    esp,0x228
  5ba92b:	c2 08 00                                        	ret    0x8
