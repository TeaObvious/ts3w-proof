# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007b9690 (SptMaps_DestroyStringViews)
Complete body envelope: 0x007b9690..0x007b98c2 (exclusive end)
Body ranges: [[007b9690, 007b98c1]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007b9690 <.text+0x3b8690>:
  7b9690:	55                   	push   ebp
  7b9691:	56                   	push   esi
  7b9692:	8b f1                	mov    esi,ecx
  7b9694:	8b 06                	mov    eax,DWORD PTR [esi]
  7b9696:	33 ed                	xor    ebp,ebp
  7b9698:	3b c5                	cmp    eax,ebp
  7b969a:	74 3b                	je     0x7b96d7
  7b969c:	83 c0 fc             	add    eax,0xfffffffc
  7b969f:	3b c5                	cmp    eax,ebp
  7b96a1:	74 34                	je     0x7b96d7
  7b96a3:	8b 08                	mov    ecx,DWORD PTR [eax]
  7b96a5:	03 c9                	add    ecx,ecx
  7b96a7:	03 c9                	add    ecx,ecx
  7b96a9:	ba fc ff ff ff       	mov    edx,0xfffffffc
  7b96ae:	2b d1                	sub    edx,ecx
  7b96b0:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b96b6:	01 15 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,edx
  7b96bc:	3b cd                	cmp    ecx,ebp
  7b96be:	50                   	push   eax
  7b96bf:	74 09                	je     0x7b96ca
  7b96c1:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b96c3:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b96c6:	ff d0                	call   eax
  7b96c8:	eb 0b                	jmp    0x7b96d5
  7b96ca:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b96d0:	e8 9b c7 d2 ff       	call   0x4e5e70
  7b96d5:	89 2e                	mov    DWORD PTR [esi],ebp
  7b96d7:	39 6e 08             	cmp    DWORD PTR [esi+0x8],ebp
  7b96da:	53                   	push   ebx
  7b96db:	57                   	push   edi
  7b96dc:	0f 84 a1 00 00 00    	je     0x7b9783
  7b96e2:	33 db                	xor    ebx,ebx
  7b96e4:	39 6e 04             	cmp    DWORD PTR [esi+0x4],ebp
  7b96e7:	76 57                	jbe    0x7b9740
  7b96e9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7b96f0:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7b96f3:	8b 04 99             	mov    eax,DWORD PTR [ecx+ebx*4]
  7b96f6:	3b c5                	cmp    eax,ebp
  7b96f8:	8d 3c 99             	lea    edi,[ecx+ebx*4]
  7b96fb:	74 3b                	je     0x7b9738
  7b96fd:	83 c0 fc             	add    eax,0xfffffffc
  7b9700:	3b c5                	cmp    eax,ebp
  7b9702:	74 34                	je     0x7b9738
  7b9704:	8b 10                	mov    edx,DWORD PTR [eax]
  7b9706:	03 d2                	add    edx,edx
  7b9708:	03 d2                	add    edx,edx
  7b970a:	b9 fc ff ff ff       	mov    ecx,0xfffffffc
  7b970f:	2b ca                	sub    ecx,edx
  7b9711:	01 0d 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,ecx
  7b9717:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b971d:	3b cd                	cmp    ecx,ebp
  7b971f:	50                   	push   eax
  7b9720:	74 09                	je     0x7b972b
  7b9722:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9724:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b9727:	ff d0                	call   eax
  7b9729:	eb 0b                	jmp    0x7b9736
  7b972b:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9731:	e8 3a c7 d2 ff       	call   0x4e5e70
  7b9736:	89 2f                	mov    DWORD PTR [edi],ebp
  7b9738:	83 c3 01             	add    ebx,0x1
  7b973b:	3b 5e 04             	cmp    ebx,DWORD PTR [esi+0x4]
  7b973e:	72 b0                	jb     0x7b96f0
  7b9740:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  7b9743:	3b c5                	cmp    eax,ebp
  7b9745:	74 3c                	je     0x7b9783
  7b9747:	83 c0 fc             	add    eax,0xfffffffc
  7b974a:	3b c5                	cmp    eax,ebp
  7b974c:	74 35                	je     0x7b9783
  7b974e:	8b 08                	mov    ecx,DWORD PTR [eax]
  7b9750:	03 c9                	add    ecx,ecx
  7b9752:	03 c9                	add    ecx,ecx
  7b9754:	ba fc ff ff ff       	mov    edx,0xfffffffc
  7b9759:	2b d1                	sub    edx,ecx
  7b975b:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9761:	01 15 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,edx
  7b9767:	3b cd                	cmp    ecx,ebp
  7b9769:	50                   	push   eax
  7b976a:	74 09                	je     0x7b9775
  7b976c:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b976e:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b9771:	ff d0                	call   eax
  7b9773:	eb 0b                	jmp    0x7b9780
  7b9775:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b977b:	e8 f0 c6 d2 ff       	call   0x4e5e70
  7b9780:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  7b9783:	39 6e 10             	cmp    DWORD PTR [esi+0x10],ebp
  7b9786:	0f 84 9a 00 00 00    	je     0x7b9826
  7b978c:	33 db                	xor    ebx,ebx
  7b978e:	39 6e 0c             	cmp    DWORD PTR [esi+0xc],ebp
  7b9791:	76 50                	jbe    0x7b97e3
  7b9793:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7b9796:	8b 04 99             	mov    eax,DWORD PTR [ecx+ebx*4]
  7b9799:	3b c5                	cmp    eax,ebp
  7b979b:	8d 3c 99             	lea    edi,[ecx+ebx*4]
  7b979e:	74 3b                	je     0x7b97db
  7b97a0:	83 c0 fc             	add    eax,0xfffffffc
  7b97a3:	3b c5                	cmp    eax,ebp
  7b97a5:	74 34                	je     0x7b97db
  7b97a7:	8b 10                	mov    edx,DWORD PTR [eax]
  7b97a9:	03 d2                	add    edx,edx
  7b97ab:	03 d2                	add    edx,edx
  7b97ad:	b9 fc ff ff ff       	mov    ecx,0xfffffffc
  7b97b2:	2b ca                	sub    ecx,edx
  7b97b4:	01 0d 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,ecx
  7b97ba:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b97c0:	3b cd                	cmp    ecx,ebp
  7b97c2:	50                   	push   eax
  7b97c3:	74 09                	je     0x7b97ce
  7b97c5:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b97c7:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b97ca:	ff d0                	call   eax
  7b97cc:	eb 0b                	jmp    0x7b97d9
  7b97ce:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b97d4:	e8 97 c6 d2 ff       	call   0x4e5e70
  7b97d9:	89 2f                	mov    DWORD PTR [edi],ebp
  7b97db:	83 c3 01             	add    ebx,0x1
  7b97de:	3b 5e 0c             	cmp    ebx,DWORD PTR [esi+0xc]
  7b97e1:	72 b0                	jb     0x7b9793
  7b97e3:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7b97e6:	3b c5                	cmp    eax,ebp
  7b97e8:	74 3c                	je     0x7b9826
  7b97ea:	83 c0 fc             	add    eax,0xfffffffc
  7b97ed:	3b c5                	cmp    eax,ebp
  7b97ef:	74 35                	je     0x7b9826
  7b97f1:	8b 08                	mov    ecx,DWORD PTR [eax]
  7b97f3:	03 c9                	add    ecx,ecx
  7b97f5:	03 c9                	add    ecx,ecx
  7b97f7:	ba fc ff ff ff       	mov    edx,0xfffffffc
  7b97fc:	2b d1                	sub    edx,ecx
  7b97fe:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9804:	01 15 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,edx
  7b980a:	3b cd                	cmp    ecx,ebp
  7b980c:	50                   	push   eax
  7b980d:	74 09                	je     0x7b9818
  7b980f:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9811:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b9814:	ff d0                	call   eax
  7b9816:	eb 0b                	jmp    0x7b9823
  7b9818:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b981e:	e8 4d c6 d2 ff       	call   0x4e5e70
  7b9823:	89 6e 10             	mov    DWORD PTR [esi+0x10],ebp
  7b9826:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  7b9829:	3b c5                	cmp    eax,ebp
  7b982b:	5f                   	pop    edi
  7b982c:	5b                   	pop    ebx
  7b982d:	74 3c                	je     0x7b986b
  7b982f:	83 c0 fc             	add    eax,0xfffffffc
  7b9832:	3b c5                	cmp    eax,ebp
  7b9834:	74 35                	je     0x7b986b
  7b9836:	8b 08                	mov    ecx,DWORD PTR [eax]
  7b9838:	03 c9                	add    ecx,ecx
  7b983a:	03 c9                	add    ecx,ecx
  7b983c:	ba fc ff ff ff       	mov    edx,0xfffffffc
  7b9841:	2b d1                	sub    edx,ecx
  7b9843:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9849:	01 15 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,edx
  7b984f:	3b cd                	cmp    ecx,ebp
  7b9851:	50                   	push   eax
  7b9852:	74 09                	je     0x7b985d
  7b9854:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9856:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b9859:	ff d0                	call   eax
  7b985b:	eb 0b                	jmp    0x7b9868
  7b985d:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9863:	e8 08 c6 d2 ff       	call   0x4e5e70
  7b9868:	89 6e 14             	mov    DWORD PTR [esi+0x14],ebp
  7b986b:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  7b986e:	3b c5                	cmp    eax,ebp
  7b9870:	74 3c                	je     0x7b98ae
  7b9872:	83 c0 fc             	add    eax,0xfffffffc
  7b9875:	3b c5                	cmp    eax,ebp
  7b9877:	74 35                	je     0x7b98ae
  7b9879:	8b 08                	mov    ecx,DWORD PTR [eax]
  7b987b:	03 c9                	add    ecx,ecx
  7b987d:	03 c9                	add    ecx,ecx
  7b987f:	ba fc ff ff ff       	mov    edx,0xfffffffc
  7b9884:	2b d1                	sub    edx,ecx
  7b9886:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b988c:	01 15 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,edx
  7b9892:	3b cd                	cmp    ecx,ebp
  7b9894:	50                   	push   eax
  7b9895:	74 09                	je     0x7b98a0
  7b9897:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9899:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7b989c:	ff d0                	call   eax
  7b989e:	eb 0b                	jmp    0x7b98ab
  7b98a0:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b98a6:	e8 c5 c5 d2 ff       	call   0x4e5e70
  7b98ab:	89 6e 18             	mov    DWORD PTR [esi+0x18],ebp
  7b98ae:	89 2e                	mov    DWORD PTR [esi],ebp
  7b98b0:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  7b98b3:	89 6e 10             	mov    DWORD PTR [esi+0x10],ebp
  7b98b6:	89 6e 14             	mov    DWORD PTR [esi+0x14],ebp
  7b98b9:	89 6e 18             	mov    DWORD PTR [esi+0x18],ebp
  7b98bc:	89 6e 1c             	mov    DWORD PTR [esi+0x1c],ebp
  7b98bf:	5e                   	pop    esi
  7b98c0:	5d                   	pop    ebp
  7b98c1:	c3                   	ret
