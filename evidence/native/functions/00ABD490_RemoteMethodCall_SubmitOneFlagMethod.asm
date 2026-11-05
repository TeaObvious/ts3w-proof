# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00abd490..00abd50b; RemoteMethodCall_SubmitOneFlagMethod
  abd490:	53                   	push   ebx
  abd491:	56                   	push   esi
  abd492:	6a 00                	push   0x0
  abd494:	6a 00                	push   0x0
  abd496:	6a 00                	push   0x0
  abd498:	6a 00                	push   0x0
  abd49a:	68 cc 58 fe 00       	push   0xfe58cc
  abd49f:	6a 20                	push   0x20
  abd4a1:	e8 5a 70 a2 ff       	call   0x4e4500
  abd4a6:	83 c4 18             	add    esp,0x18
  abd4a9:	85 c0                	test   eax,eax
  abd4ab:	74 5b                	je     0xabd508
  abd4ad:	c7 00 00 58 fe 00    	mov    DWORD PTR [eax],0xfe5800
  abd4b3:	33 c9                	xor    ecx,ecx
  abd4b5:	8d 50 04             	lea    edx,[eax+0x4]
  abd4b8:	87 0a                	xchg   DWORD PTR [edx],ecx
  abd4ba:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  abd4be:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  abd4c2:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  abd4c5:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  abd4c9:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  abd4cc:	8a 54 24 1c          	mov    dl,BYTE PTR [esp+0x1c]
  abd4d0:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  abd4d3:	c7 00 10 61 06 01    	mov    DWORD PTR [eax],0x1066110
  abd4d9:	88 50 18             	mov    BYTE PTR [eax+0x18],dl
  abd4dc:	8b 10                	mov    edx,DWORD PTR [eax]
  abd4de:	8b f0                	mov    esi,eax
  abd4e0:	8b c8                	mov    ecx,eax
  abd4e2:	8b 02                	mov    eax,DWORD PTR [edx]
  abd4e4:	ff d0                	call   eax
  abd4e6:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  abd4ea:	6a 01                	push   0x1
  abd4ec:	51                   	push   ecx
  abd4ed:	8b ce                	mov    ecx,esi
  abd4ef:	e8 1c c6 d1 ff       	call   0x7d9b10
  abd4f4:	85 f6                	test   esi,esi
  abd4f6:	8a d8                	mov    bl,al
  abd4f8:	74 09                	je     0xabd503
  abd4fa:	8b 16                	mov    edx,DWORD PTR [esi]
  abd4fc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  abd4ff:	8b ce                	mov    ecx,esi
  abd501:	ff d0                	call   eax
  abd503:	5e                   	pop    esi
  abd504:	8a c3                	mov    al,bl
  abd506:	5b                   	pop    ebx
  abd507:	c3                   	ret
  abd508:	33 f6                	xor    esi,esi
  abd50a:	eb da                	jmp    0xabd4e6
