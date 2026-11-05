# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c62590..00c626b2; World_LoadHeightmapJobCallback
  c62590:	83 ec 18             	sub    esp,0x18
  c62593:	83 7c 24 24 04       	cmp    DWORD PTR [esp+0x24],0x4
  c62598:	0f 85 0f 01 00 00    	jne    0xc626ad
  c6259e:	55                   	push   ebp
  c6259f:	8b 2d 30 25 1d 01    	mov    ebp,DWORD PTR ds:0x11d2530
  c625a5:	56                   	push   esi
  c625a6:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  c625aa:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  c625ae:	50                   	push   eax
  c625af:	56                   	push   esi
  c625b0:	8b cd                	mov    ecx,ebp
  c625b2:	c7 44 24 34 00 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
  c625ba:	e8 51 0a a8 ff       	call   0x6e3010
  c625bf:	84 c0                	test   al,al
  c625c1:	75 11                	jne    0xc625d4
  c625c3:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  c625c7:	51                   	push   ecx
  c625c8:	8b ce                	mov    ecx,esi
  c625ca:	e8 61 8c 93 ff       	call   0x59b230
  c625cf:	e9 ca 00 00 00       	jmp    0xc6269e
  c625d4:	53                   	push   ebx
  c625d5:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  c625d9:	8b 33                	mov    esi,DWORD PTR [ebx]
  c625db:	85 f6                	test   esi,esi
  c625dd:	0f 84 b3 00 00 00    	je     0xc62696
  c625e3:	57                   	push   edi
  c625e4:	8b 7e 54             	mov    edi,DWORD PTR [esi+0x54]
  c625e7:	85 ff                	test   edi,edi
  c625e9:	0f 84 a6 00 00 00    	je     0xc62695
  c625ef:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
  c625f3:	75 1f                	jne    0xc62614
  c625f5:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  c625fb:	33 c0                	xor    eax,eax
  c625fd:	38 46 43             	cmp    BYTE PTR [esi+0x43],al
  c62600:	6a 01                	push   0x1
  c62602:	0f 94 c0             	sete   al
  c62605:	50                   	push   eax
  c62606:	51                   	push   ecx
  c62607:	8b cf                	mov    ecx,edi
  c62609:	e8 92 67 fc ff       	call   0xc28da0
  c6260e:	84 c0                	test   al,al
  c62610:	74 79                	je     0xc6268b
  c62612:	eb 13                	jmp    0xc62627
  c62614:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  c62617:	8b 4a 68             	mov    ecx,DWORD PTR [edx+0x68]
  c6261a:	85 c9                	test   ecx,ecx
  c6261c:	74 6d                	je     0xc6268b
  c6261e:	e8 1d 05 fc ff       	call   0xc22b40
  c62623:	84 c0                	test   al,al
  c62625:	75 64                	jne    0xc6268b
  c62627:	8b cf                	mov    ecx,edi
  c62629:	e8 32 60 fc ff       	call   0xc28660
  c6262e:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  c62634:	33 c0                	xor    eax,eax
  c62636:	38 46 43             	cmp    BYTE PTR [esi+0x43],al
  c62639:	0f 94 c0             	sete   al
  c6263c:	50                   	push   eax
  c6263d:	51                   	push   ecx
  c6263e:	8b cf                	mov    ecx,edi
  c62640:	e8 cb 61 fc ff       	call   0xc28810
  c62645:	84 c0                	test   al,al
  c62647:	74 2e                	je     0xc62677
  c62649:	8b 8e 80 00 00 00    	mov    ecx,DWORD PTR [esi+0x80]
  c6264f:	33 c0                	xor    eax,eax
  c62651:	38 46 43             	cmp    BYTE PTR [esi+0x43],al
  c62654:	0f 94 c0             	sete   al
  c62657:	50                   	push   eax
  c62658:	51                   	push   ecx
  c62659:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  c6265d:	e8 be 52 b7 ff       	call   0x7d7920
  c62662:	8d 54 24 10          	lea    edx,[esp+0x10]
  c62666:	52                   	push   edx
  c62667:	8b cf                	mov    ecx,edi
  c62669:	e8 d2 60 fc ff       	call   0xc28740
  c6266e:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c62672:	e8 19 53 b7 ff       	call   0x7d7990
  c62677:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  c6267a:	8b 70 68             	mov    esi,DWORD PTR [eax+0x68]
  c6267d:	8b ce                	mov    ecx,esi
  c6267f:	e8 6c 05 fc ff       	call   0xc22bf0
  c62684:	8b ce                	mov    ecx,esi
  c62686:	e8 75 06 fc ff       	call   0xc22d00
  c6268b:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
  c6268f:	0f 95 c1             	setne  cl
  c62692:	88 4b 04             	mov    BYTE PTR [ebx+0x4],cl
  c62695:	5f                   	pop    edi
  c62696:	8b cd                	mov    ecx,ebp
  c62698:	e8 a3 f6 a7 ff       	call   0x6e1d40
  c6269d:	5b                   	pop    ebx
  c6269e:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  c626a2:	85 c9                	test   ecx,ecx
  c626a4:	74 05                	je     0xc626ab
  c626a6:	e8 a5 8c 93 ff       	call   0x59b350
  c626ab:	5e                   	pop    esi
  c626ac:	5d                   	pop    ebp
  c626ad:	b0 01                	mov    al,0x1
  c626af:	83 c4 18             	add    esp,0x18
  c626b2:	c3                   	ret
