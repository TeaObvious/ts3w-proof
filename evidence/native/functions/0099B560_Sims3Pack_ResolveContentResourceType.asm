# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0099b560 (Sims3Pack_ResolveContentResourceType)
Full Ghidra function-body envelope: 0x0099b560..0x0099b93d (exclusive end)
Ghidra body ranges: [[0099b560, 0099b93c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0099b560 <.text+0x59a560>:
  99b560:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  99b564:	83 ec 20                                        	sub    esp,0x20
  99b567:	85 c0                                           	test   eax,eax
  99b569:	75 04                                           	jne    0x99b56f
  99b56b:	83 c4 20                                        	add    esp,0x20
  99b56e:	c3                                              	ret
  99b56f:	56                                              	push   esi
  99b570:	57                                              	push   edi
  99b571:	6a 00                                           	push   0x0
  99b573:	6a ff                                           	push   0xffffffff
  99b575:	50                                              	push   eax
  99b576:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  99b57a:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  99b57f:	be 56 8e 1c 01                                  	mov    esi,0x11c8e56
  99b584:	50                                              	push   eax
  99b585:	c7 44 24 24 60 b7 04 01                         	mov    DWORD PTR [esp+0x24],0x104b760
  99b58d:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  99b591:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  99b595:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  99b599:	e8 b2 85 b5 ff                                  	call   0x4f3b50
  99b59e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  99b5a2:	83 c4 10                                        	add    esp,0x10
  99b5a5:	3b c1                                           	cmp    eax,ecx
  99b5a7:	74 14                                           	je     0x99b5bd
  99b5a9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  99b5ac:	8b 00                                           	mov    eax,DWORD PTR [eax]
  99b5ae:	52                                              	push   edx
  99b5af:	50                                              	push   eax
  99b5b0:	e8 ab d7 a6 ff                                  	call   0x408d60
  99b5b5:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  99b5b9:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  99b5bd:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  99b5c1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  99b5c5:	2b c8                                           	sub    ecx,eax
  99b5c7:	83 e1 fe                                        	and    ecx,0xfffffffe
  99b5ca:	83 f9 02                                        	cmp    ecx,0x2
  99b5cd:	7e 0d                                           	jle    0x99b5dc
  99b5cf:	85 c0                                           	test   eax,eax
  99b5d1:	74 09                                           	je     0x99b5dc
  99b5d3:	50                                              	push   eax
  99b5d4:	e8 07 8f b4 ff                                  	call   0x4e44e0
  99b5d9:	83 c4 04                                        	add    esp,0x4
  99b5dc:	8b 15 10 18 18 01                               	mov    edx,DWORD PTR ds:0x1181810
  99b5e2:	52                                              	push   edx
  99b5e3:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b5e7:	50                                              	push   eax
  99b5e8:	e8 53 26 b5 ff                                  	call   0x4edc40
  99b5ed:	83 c4 08                                        	add    esp,0x8
  99b5f0:	84 c0                                           	test   al,al
  99b5f2:	74 22                                           	je     0x99b616
  99b5f4:	2b f7                                           	sub    esi,edi
  99b5f6:	83 e6 fe                                        	and    esi,0xfffffffe
  99b5f9:	83 fe 02                                        	cmp    esi,0x2
  99b5fc:	7e 0d                                           	jle    0x99b60b
  99b5fe:	85 ff                                           	test   edi,edi
  99b600:	74 09                                           	je     0x99b60b
  99b602:	57                                              	push   edi
  99b603:	e8 d8 8e b4 ff                                  	call   0x4e44e0
  99b608:	83 c4 04                                        	add    esp,0x4
  99b60b:	5f                                              	pop    edi
  99b60c:	b8 64 89 f8 04                                  	mov    eax,0x4f88964
  99b611:	5e                                              	pop    esi
  99b612:	83 c4 20                                        	add    esp,0x20
  99b615:	c3                                              	ret
  99b616:	8b 0d 18 18 18 01                               	mov    ecx,DWORD PTR ds:0x1181818
  99b61c:	51                                              	push   ecx
  99b61d:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b621:	52                                              	push   edx
  99b622:	e8 19 26 b5 ff                                  	call   0x4edc40
  99b627:	83 c4 08                                        	add    esp,0x8
  99b62a:	84 c0                                           	test   al,al
  99b62c:	74 22                                           	je     0x99b650
  99b62e:	2b f7                                           	sub    esi,edi
  99b630:	83 e6 fe                                        	and    esi,0xfffffffe
  99b633:	83 fe 02                                        	cmp    esi,0x2
  99b636:	7e 0d                                           	jle    0x99b645
  99b638:	85 ff                                           	test   edi,edi
  99b63a:	74 09                                           	je     0x99b645
  99b63c:	57                                              	push   edi
  99b63d:	e8 9e 8e b4 ff                                  	call   0x4e44e0
  99b642:	83 c4 04                                        	add    esp,0x4
  99b645:	5f                                              	pop    edi
  99b646:	b8 5e 41 3a 0b                                  	mov    eax,0xb3a415e
  99b64b:	5e                                              	pop    esi
  99b64c:	83 c4 20                                        	add    esp,0x20
  99b64f:	c3                                              	ret
  99b650:	a1 14 18 18 01                                  	mov    eax,ds:0x1181814
  99b655:	50                                              	push   eax
  99b656:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  99b65a:	51                                              	push   ecx
  99b65b:	e8 e0 25 b5 ff                                  	call   0x4edc40
  99b660:	83 c4 08                                        	add    esp,0x8
  99b663:	84 c0                                           	test   al,al
  99b665:	74 22                                           	je     0x99b689
  99b667:	2b f7                                           	sub    esi,edi
  99b669:	83 e6 fe                                        	and    esi,0xfffffffe
  99b66c:	83 fe 02                                        	cmp    esi,0x2
  99b66f:	7e 0d                                           	jle    0x99b67e
  99b671:	85 ff                                           	test   edi,edi
  99b673:	74 09                                           	je     0x99b67e
  99b675:	57                                              	push   edi
  99b676:	e8 65 8e b4 ff                                  	call   0x4e44e0
  99b67b:	83 c4 04                                        	add    esp,0x4
  99b67e:	5f                                              	pop    edi
  99b67f:	b8 4c ee 6f 43                                  	mov    eax,0x436fee4c
  99b684:	5e                                              	pop    esi
  99b685:	83 c4 20                                        	add    esp,0x20
  99b688:	c3                                              	ret
  99b689:	8b 15 1c 18 18 01                               	mov    edx,DWORD PTR ds:0x118181c
  99b68f:	52                                              	push   edx
  99b690:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b694:	50                                              	push   eax
  99b695:	e8 a6 25 b5 ff                                  	call   0x4edc40
  99b69a:	83 c4 08                                        	add    esp,0x8
  99b69d:	84 c0                                           	test   al,al
  99b69f:	74 14                                           	je     0x99b6b5
  99b6a1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b6a5:	e8 46 42 b5 ff                                  	call   0x4ef8f0
  99b6aa:	5f                                              	pop    edi
  99b6ab:	b8 cb ee 4a 03                                  	mov    eax,0x34aeecb
  99b6b0:	5e                                              	pop    esi
  99b6b1:	83 c4 20                                        	add    esp,0x20
  99b6b4:	c3                                              	ret
  99b6b5:	8b 0d 20 18 18 01                               	mov    ecx,DWORD PTR ds:0x1181820
  99b6bb:	51                                              	push   ecx
  99b6bc:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b6c0:	52                                              	push   edx
  99b6c1:	e8 7a 25 b5 ff                                  	call   0x4edc40
  99b6c6:	83 c4 08                                        	add    esp,0x8
  99b6c9:	84 c0                                           	test   al,al
  99b6cb:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b6cf:	74 10                                           	je     0x99b6e1
  99b6d1:	e8 1a 42 b5 ff                                  	call   0x4ef8f0
  99b6d6:	5f                                              	pop    edi
  99b6d7:	b8 d9 f5 f8 05                                  	mov    eax,0x5f8f5d9
  99b6dc:	5e                                              	pop    esi
  99b6dd:	83 c4 20                                        	add    esp,0x20
  99b6e0:	c3                                              	ret
  99b6e1:	a1 24 18 18 01                                  	mov    eax,ds:0x1181824
  99b6e6:	50                                              	push   eax
  99b6e7:	51                                              	push   ecx
  99b6e8:	e8 53 25 b5 ff                                  	call   0x4edc40
  99b6ed:	83 c4 08                                        	add    esp,0x8
  99b6f0:	84 c0                                           	test   al,al
  99b6f2:	74 14                                           	je     0x99b708
  99b6f4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b6f8:	e8 f3 41 b5 ff                                  	call   0x4ef8f0
  99b6fd:	5f                                              	pop    edi
  99b6fe:	b8 c9 ac 41 03                                  	mov    eax,0x341acc9
  99b703:	5e                                              	pop    esi
  99b704:	83 c4 20                                        	add    esp,0x20
  99b707:	c3                                              	ret
  99b708:	8b 15 28 18 18 01                               	mov    edx,DWORD PTR ds:0x1181828
  99b70e:	52                                              	push   edx
  99b70f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b713:	50                                              	push   eax
  99b714:	e8 27 25 b5 ff                                  	call   0x4edc40
  99b719:	83 c4 08                                        	add    esp,0x8
  99b71c:	84 c0                                           	test   al,al
  99b71e:	74 14                                           	je     0x99b734
  99b720:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b724:	e8 c7 41 b5 ff                                  	call   0x4ef8f0
  99b729:	5f                                              	pop    edi
  99b72a:	b8 da 61 32 06                                  	mov    eax,0x63261da
  99b72f:	5e                                              	pop    esi
  99b730:	83 c4 20                                        	add    esp,0x20
  99b733:	c3                                              	ret
  99b734:	8b 0d 2c 18 18 01                               	mov    ecx,DWORD PTR ds:0x118182c
  99b73a:	51                                              	push   ecx
  99b73b:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b73f:	52                                              	push   edx
  99b740:	e8 fb 24 b5 ff                                  	call   0x4edc40
  99b745:	83 c4 08                                        	add    esp,0x8
  99b748:	84 c0                                           	test   al,al
  99b74a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b74e:	74 10                                           	je     0x99b760
  99b750:	e8 9b 41 b5 ff                                  	call   0x4ef8f0
  99b755:	5f                                              	pop    edi
  99b756:	b8 13 62 32 06                                  	mov    eax,0x6326213
  99b75b:	5e                                              	pop    esi
  99b75c:	83 c4 20                                        	add    esp,0x20
  99b75f:	c3                                              	ret
  99b760:	a1 30 18 18 01                                  	mov    eax,ds:0x1181830
  99b765:	50                                              	push   eax
  99b766:	51                                              	push   ecx
  99b767:	e8 d4 24 b5 ff                                  	call   0x4edc40
  99b76c:	83 c4 08                                        	add    esp,0x8
  99b76f:	84 c0                                           	test   al,al
  99b771:	74 14                                           	je     0x99b787
  99b773:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b777:	e8 74 41 b5 ff                                  	call   0x4ef8f0
  99b77c:	5f                                              	pop    edi
  99b77d:	b8 f0 61 32 06                                  	mov    eax,0x63261f0
  99b782:	5e                                              	pop    esi
  99b783:	83 c4 20                                        	add    esp,0x20
  99b786:	c3                                              	ret
  99b787:	8b 15 34 18 18 01                               	mov    edx,DWORD PTR ds:0x1181834
  99b78d:	52                                              	push   edx
  99b78e:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b792:	50                                              	push   eax
  99b793:	e8 a8 24 b5 ff                                  	call   0x4edc40
  99b798:	83 c4 08                                        	add    esp,0x8
  99b79b:	84 c0                                           	test   al,al
  99b79d:	74 14                                           	je     0x99b7b3
  99b79f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b7a3:	e8 48 41 b5 ff                                  	call   0x4ef8f0
  99b7a8:	5f                                              	pop    edi
  99b7a9:	b8 29 af 65 3a                                  	mov    eax,0x3a65af29
  99b7ae:	5e                                              	pop    esi
  99b7af:	83 c4 20                                        	add    esp,0x20
  99b7b2:	c3                                              	ret
  99b7b3:	8b 0d 38 18 18 01                               	mov    ecx,DWORD PTR ds:0x1181838
  99b7b9:	51                                              	push   ecx
  99b7ba:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b7be:	52                                              	push   edx
  99b7bf:	e8 7c 24 b5 ff                                  	call   0x4edc40
  99b7c4:	83 c4 08                                        	add    esp,0x8
  99b7c7:	84 c0                                           	test   al,al
  99b7c9:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b7cd:	74 10                                           	je     0x99b7df
  99b7cf:	e8 1c 41 b5 ff                                  	call   0x4ef8f0
  99b7d4:	5f                                              	pop    edi
  99b7d5:	b8 10 e1 4a 04                                  	mov    eax,0x44ae110
  99b7da:	5e                                              	pop    esi
  99b7db:	83 c4 20                                        	add    esp,0x20
  99b7de:	c3                                              	ret
  99b7df:	a1 3c 18 18 01                                  	mov    eax,ds:0x118183c
  99b7e4:	50                                              	push   eax
  99b7e5:	51                                              	push   ecx
  99b7e6:	e8 55 24 b5 ff                                  	call   0x4edc40
  99b7eb:	83 c4 08                                        	add    esp,0x8
  99b7ee:	84 c0                                           	test   al,al
  99b7f0:	74 14                                           	je     0x99b806
  99b7f2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b7f6:	e8 f5 40 b5 ff                                  	call   0x4ef8f0
  99b7fb:	5f                                              	pop    edi
  99b7fc:	b8 f6 1a cc b1                                  	mov    eax,0xb1cc1af6
  99b801:	5e                                              	pop    esi
  99b802:	83 c4 20                                        	add    esp,0x20
  99b805:	c3                                              	ret
  99b806:	8b 15 40 18 18 01                               	mov    edx,DWORD PTR ds:0x1181840
  99b80c:	52                                              	push   edx
  99b80d:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b811:	50                                              	push   eax
  99b812:	e8 29 24 b5 ff                                  	call   0x4edc40
  99b817:	83 c4 08                                        	add    esp,0x8
  99b81a:	84 c0                                           	test   al,al
  99b81c:	74 14                                           	je     0x99b832
  99b81e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b822:	e8 c9 40 b5 ff                                  	call   0x4ef8f0
  99b827:	5f                                              	pop    edi
  99b828:	b8 04 00 7d 2f                                  	mov    eax,0x2f7d0004
  99b82d:	5e                                              	pop    esi
  99b82e:	83 c4 20                                        	add    esp,0x20
  99b831:	c3                                              	ret
  99b832:	8b 0d 44 18 18 01                               	mov    ecx,DWORD PTR ds:0x1181844
  99b838:	51                                              	push   ecx
  99b839:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b83d:	52                                              	push   edx
  99b83e:	e8 fd 23 b5 ff                                  	call   0x4edc40
  99b843:	83 c4 08                                        	add    esp,0x8
  99b846:	84 c0                                           	test   al,al
  99b848:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b84c:	74 10                                           	je     0x99b85e
  99b84e:	e8 9d 40 b5 ff                                  	call   0x4ef8f0
  99b853:	5f                                              	pop    edi
  99b854:	b8 92 1f bc 06                                  	mov    eax,0x6bc1f92
  99b859:	5e                                              	pop    esi
  99b85a:	83 c4 20                                        	add    esp,0x20
  99b85d:	c3                                              	ret
  99b85e:	a1 48 18 18 01                                  	mov    eax,ds:0x1181848
  99b863:	50                                              	push   eax
  99b864:	51                                              	push   ecx
  99b865:	e8 d6 23 b5 ff                                  	call   0x4edc40
  99b86a:	83 c4 08                                        	add    esp,0x8
  99b86d:	84 c0                                           	test   al,al
  99b86f:	74 14                                           	je     0x99b885
  99b871:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b875:	e8 76 40 b5 ff                                  	call   0x4ef8f0
  99b87a:	5f                                              	pop    edi
  99b87b:	b8 6a 79 54 03                                  	mov    eax,0x354796a
  99b880:	5e                                              	pop    esi
  99b881:	83 c4 20                                        	add    esp,0x20
  99b884:	c3                                              	ret
  99b885:	8b 15 50 18 18 01                               	mov    edx,DWORD PTR ds:0x1181850
  99b88b:	52                                              	push   edx
  99b88c:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b890:	50                                              	push   eax
  99b891:	e8 aa 23 b5 ff                                  	call   0x4edc40
  99b896:	83 c4 08                                        	add    esp,0x8
  99b899:	84 c0                                           	test   al,al
  99b89b:	74 14                                           	je     0x99b8b1
  99b89d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b8a1:	e8 4a 40 b5 ff                                  	call   0x4ef8f0
  99b8a6:	5f                                              	pop    edi
  99b8a7:	b8 f1 b4 4f 0c                                  	mov    eax,0xc4fb4f1
  99b8ac:	5e                                              	pop    esi
  99b8ad:	83 c4 20                                        	add    esp,0x20
  99b8b0:	c3                                              	ret
  99b8b1:	8b 0d 54 18 18 01                               	mov    ecx,DWORD PTR ds:0x1181854
  99b8b7:	51                                              	push   ecx
  99b8b8:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  99b8bc:	52                                              	push   edx
  99b8bd:	e8 7e 23 b5 ff                                  	call   0x4edc40
  99b8c2:	83 c4 08                                        	add    esp,0x8
  99b8c5:	84 c0                                           	test   al,al
  99b8c7:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b8cb:	74 10                                           	je     0x99b8dd
  99b8cd:	e8 1e 40 b5 ff                                  	call   0x4ef8f0
  99b8d2:	5f                                              	pop    edi
  99b8d3:	b8 f9 b4 4f 0c                                  	mov    eax,0xc4fb4f9
  99b8d8:	5e                                              	pop    esi
  99b8d9:	83 c4 20                                        	add    esp,0x20
  99b8dc:	c3                                              	ret
  99b8dd:	a1 4c 18 18 01                                  	mov    eax,ds:0x118184c
  99b8e2:	50                                              	push   eax
  99b8e3:	51                                              	push   ecx
  99b8e4:	e8 57 23 b5 ff                                  	call   0x4edc40
  99b8e9:	83 c4 08                                        	add    esp,0x8
  99b8ec:	84 c0                                           	test   al,al
  99b8ee:	74 14                                           	je     0x99b904
  99b8f0:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b8f4:	e8 f7 3f b5 ff                                  	call   0x4ef8f0
  99b8f9:	5f                                              	pop    edi
  99b8fa:	b8 f4 d6 5e 02                                  	mov    eax,0x25ed6f4
  99b8ff:	5e                                              	pop    esi
  99b900:	83 c4 20                                        	add    esp,0x20
  99b903:	c3                                              	ret
  99b904:	8b 15 58 18 18 01                               	mov    edx,DWORD PTR ds:0x1181858
  99b90a:	52                                              	push   edx
  99b90b:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  99b90f:	50                                              	push   eax
  99b910:	e8 2b 23 b5 ff                                  	call   0x4edc40
  99b915:	83 c4 08                                        	add    esp,0x8
  99b918:	84 c0                                           	test   al,al
  99b91a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  99b91e:	74 10                                           	je     0x99b930
  99b920:	e8 cb 3f b5 ff                                  	call   0x4ef8f0
  99b925:	5f                                              	pop    edi
  99b926:	b8 1c 95 a2 de                                  	mov    eax,0xdea2951c
  99b92b:	5e                                              	pop    esi
  99b92c:	83 c4 20                                        	add    esp,0x20
  99b92f:	c3                                              	ret
  99b930:	e8 bb 3f b5 ff                                  	call   0x4ef8f0
  99b935:	5f                                              	pop    edi
  99b936:	33 c0                                           	xor    eax,eax
  99b938:	5e                                              	pop    esi
  99b939:	83 c4 20                                        	add    esp,0x20
  99b93c:	c3                                              	ret
