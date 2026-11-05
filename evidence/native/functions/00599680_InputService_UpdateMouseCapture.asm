# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00599680, 0x00599947).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00599680 <.text+0x198680>:
  599680:	83 ec 48             	sub    esp,0x48
  599683:	56                   	push   esi
  599684:	57                   	push   edi
  599685:	8b f1                	mov    esi,ecx
  599687:	e8 04 19 f7 ff       	call   0x50af90
  59968c:	8b f8                	mov    edi,eax
  59968e:	85 ff                	test   edi,edi
  599690:	0f 84 a9 02 00 00    	je     0x59993f
  599696:	e8 85 c2 f6 ff       	call   0x505920
  59969b:	85 c0                	test   eax,eax
  59969d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  5996a1:	0f 84 98 02 00 00    	je     0x59993f
  5996a7:	55                   	push   ebp
  5996a8:	8b 2d d0 eb 1c 01    	mov    ebp,DWORD PTR ds:0x11cebd0
  5996ae:	85 ed                	test   ebp,ebp
  5996b0:	0f 84 88 02 00 00    	je     0x59993e
  5996b6:	53                   	push   ebx
  5996b7:	e8 54 52 07 00       	call   0x60e910
  5996bc:	8b c8                	mov    ecx,eax
  5996be:	e8 8d 57 07 00       	call   0x60ee50
  5996c3:	84 c0                	test   al,al
  5996c5:	0f 94 c3             	sete   bl
  5996c8:	80 7c 24 5c 00       	cmp    BYTE PTR [esp+0x5c],0x0
  5996cd:	0f 84 9d 01 00 00    	je     0x599870
  5996d3:	80 7c 24 60 00       	cmp    BYTE PTR [esp+0x60],0x0
  5996d8:	c7 44 24 14 01 10 00 	mov    DWORD PTR [esp+0x14],0x1001
  5996df:	00
  5996e0:	74 4b                	je     0x59972d
  5996e2:	8b 07                	mov    eax,DWORD PTR [edi]
  5996e4:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  5996e7:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  5996eb:	51                   	push   ecx
  5996ec:	8b cf                	mov    ecx,edi
  5996ee:	ff d2                	call   edx
  5996f0:	d9 00                	fld    DWORD PTR [eax]
  5996f2:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
  5996f6:	83 ec 08             	sub    esp,0x8
  5996f9:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  5996fc:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  599700:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  599704:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  599708:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  59970c:	d9 1c 24             	fstp   DWORD PTR [esp]
  59970f:	50                   	push   eax
  599710:	51                   	push   ecx
  599711:	e8 ea fb ff ff       	call   0x599300
  599716:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  59971a:	83 c4 10             	add    esp,0x10
  59971d:	b8 00 d3 ae 05       	mov    eax,0x5aed300
  599722:	50                   	push   eax
  599723:	e8 b8 c2 f6 ff       	call   0x5059e0
  599728:	e9 9f 01 00 00       	jmp    0x5998cc
  59972d:	8b 17                	mov    edx,DWORD PTR [edi]
  59972f:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
  599732:	8d 44 24 20          	lea    eax,[esp+0x20]
  599736:	50                   	push   eax
  599737:	8b cf                	mov    ecx,edi
  599739:	ff d2                	call   edx
  59973b:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  59973f:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  599742:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  599748:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  59974d:	8d 44 24 38          	lea    eax,[esp+0x38]
  599751:	50                   	push   eax
  599752:	8b 82 9c 00 00 00    	mov    eax,DWORD PTR [edx+0x9c]
  599758:	8b cd                	mov    ecx,ebp
  59975a:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  599760:	ff d0                	call   eax
  599762:	50                   	push   eax
  599763:	ff 15 18 69 f9 00    	call   DWORD PTR ds:0xf96918
  599769:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  59976d:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  599771:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  599778:	00
  599779:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  59977d:	03 d1                	add    edx,ecx
  59977f:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  599783:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  599787:	f3 0f 59 c8          	mulss  xmm1,xmm0
  59978b:	03 c8                	add    ecx,eax
  59978d:	84 db                	test   bl,bl
  59978f:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  599795:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  599799:	f3 0f 59 c8          	mulss  xmm1,xmm0
  59979d:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  5997a3:	75 3a                	jne    0x5997df
  5997a5:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  5997a8:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
  5997ab:	8d 44 24 20          	lea    eax,[esp+0x20]
  5997af:	50                   	push   eax
  5997b0:	8b cd                	mov    ecx,ebp
  5997b2:	ff d2                	call   edx
  5997b4:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  5997b8:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  5997bc:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  5997c0:	89 4c 24 4c          	mov    DWORD PTR [esp+0x4c],ecx
  5997c4:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  5997c8:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  5997cc:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  5997d0:	51                   	push   ecx
  5997d1:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
  5997d5:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  5997d9:	ff 15 0c 68 f9 00    	call   DWORD PTR ds:0xf9680c
  5997df:	e8 9c f9 ff ff       	call   0x599180
  5997e4:	85 c0                	test   eax,eax
  5997e6:	74 3d                	je     0x599825
  5997e8:	8b 1d d0 eb 1c 01    	mov    ebx,DWORD PTR ds:0x11cebd0
  5997ee:	85 db                	test   ebx,ebx
  5997f0:	74 33                	je     0x599825
  5997f2:	e8 99 17 f7 ff       	call   0x50af90
  5997f7:	85 c0                	test   eax,eax
  5997f9:	74 0e                	je     0x599809
  5997fb:	8b 10                	mov    edx,DWORD PTR [eax]
  5997fd:	8b c8                	mov    ecx,eax
  5997ff:	8b 82 94 00 00 00    	mov    eax,DWORD PTR [edx+0x94]
  599805:	6a 01                	push   0x1
  599807:	ff d0                	call   eax
  599809:	8b 13                	mov    edx,DWORD PTR [ebx]
  59980b:	8b 82 9c 00 00 00    	mov    eax,DWORD PTR [edx+0x9c]
  599811:	6a 01                	push   0x1
  599813:	6a 00                	push   0x0
  599815:	68 02 05 00 00       	push   0x502
  59981a:	8b cb                	mov    ecx,ebx
  59981c:	ff d0                	call   eax
  59981e:	50                   	push   eax
  59981f:	ff 15 d8 68 f9 00    	call   DWORD PTR ds:0xf968d8
  599825:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  599829:	83 ec 08             	sub    esp,0x8
  59982c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  599830:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  599834:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  599838:	8d 54 24 28          	lea    edx,[esp+0x28]
  59983c:	d9 1c 24             	fstp   DWORD PTR [esp]
  59983f:	51                   	push   ecx
  599840:	52                   	push   edx
  599841:	e8 ba fa ff ff       	call   0x599300
  599846:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  59984a:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  59984d:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  599851:	8b 80 84 00 00 00    	mov    eax,DWORD PTR [eax+0x84]
  599857:	83 c4 10             	add    esp,0x10
  59985a:	51                   	push   ecx
  59985b:	52                   	push   edx
  59985c:	8b cd                	mov    ecx,ebp
  59985e:	ff d0                	call   eax
  599860:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  599864:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  599868:	50                   	push   eax
  599869:	e8 72 c1 f6 ff       	call   0x5059e0
  59986e:	eb 5c                	jmp    0x5998cc
  599870:	80 7e 60 00          	cmp    BYTE PTR [esi+0x60],0x0
  599874:	74 56                	je     0x5998cc
  599876:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  59987a:	6a 00                	push   0x0
  59987c:	e8 5f c1 f6 ff       	call   0x5059e0
  599881:	80 7e 61 00          	cmp    BYTE PTR [esi+0x61],0x0
  599885:	74 45                	je     0x5998cc
  599887:	d9 46 5c             	fld    DWORD PTR [esi+0x5c]
  59988a:	83 ec 08             	sub    esp,0x8
  59988d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  599891:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  599895:	d9 46 58             	fld    DWORD PTR [esi+0x58]
  599898:	8d 54 24 28          	lea    edx,[esp+0x28]
  59989c:	d9 1c 24             	fstp   DWORD PTR [esp]
  59989f:	51                   	push   ecx
  5998a0:	52                   	push   edx
  5998a1:	e8 5a fa ff ff       	call   0x599300
  5998a6:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  5998aa:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  5998ad:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  5998b1:	8b 80 84 00 00 00    	mov    eax,DWORD PTR [eax+0x84]
  5998b7:	83 c4 10             	add    esp,0x10
  5998ba:	51                   	push   ecx
  5998bb:	52                   	push   edx
  5998bc:	8b cd                	mov    ecx,ebp
  5998be:	ff d0                	call   eax
  5998c0:	84 db                	test   bl,bl
  5998c2:	75 08                	jne    0x5998cc
  5998c4:	6a 00                	push   0x0
  5998c6:	ff 15 0c 68 f9 00    	call   DWORD PTR ds:0xf9680c
  5998cc:	8d 6e 18             	lea    ebp,[esi+0x18]
  5998cf:	68 dc a6 fd 00       	push   0xfda6dc
  5998d4:	8b cd                	mov    ecx,ebp
  5998d6:	e8 25 83 f4 ff       	call   0x4e1c00
  5998db:	8a 44 24 5c          	mov    al,BYTE PTR [esp+0x5c]
  5998df:	88 46 60             	mov    BYTE PTR [esi+0x60],al
  5998e2:	8b 17                	mov    edx,DWORD PTR [edi]
  5998e4:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
  5998e7:	84 c0                	test   al,al
  5998e9:	0f 94 c0             	sete   al
  5998ec:	8b cf                	mov    ecx,edi
  5998ee:	50                   	push   eax
  5998ef:	ff d2                	call   edx
  5998f1:	80 7c 24 60 00       	cmp    BYTE PTR [esp+0x60],0x0
  5998f6:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  5998fc:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  599900:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  599904:	0f 94 c0             	sete   al
  599907:	88 46 61             	mov    BYTE PTR [esi+0x61],al
  59990a:	f3 0f 11 46 48       	movss  DWORD PTR [esi+0x48],xmm0
  59990f:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  599915:	f3 0f 11 46 4c       	movss  DWORD PTR [esi+0x4c],xmm0
  59991a:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  599920:	89 4e 50             	mov    DWORD PTR [esi+0x50],ecx
  599923:	89 56 54             	mov    DWORD PTR [esi+0x54],edx
  599926:	f3 0f 11 46 58       	movss  DWORD PTR [esi+0x58],xmm0
  59992b:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  599931:	8b cd                	mov    ecx,ebp
  599933:	f3 0f 11 46 5c       	movss  DWORD PTR [esi+0x5c],xmm0
  599938:	e8 83 83 f4 ff       	call   0x4e1cc0
  59993d:	5b                   	pop    ebx
  59993e:	5d                   	pop    ebp
  59993f:	5f                   	pop    edi
  599940:	5e                   	pop    esi
  599941:	83 c4 48             	add    esp,0x48
  599944:	c2 08 00             	ret    0x8
