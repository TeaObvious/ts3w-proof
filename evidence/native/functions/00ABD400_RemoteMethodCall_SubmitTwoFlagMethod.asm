# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00abd400..00abd482; RemoteMethodCall_SubmitTwoFlagMethod
  abd400:	53                   	push   ebx
  abd401:	56                   	push   esi
  abd402:	6a 00                	push   0x0
  abd404:	6a 00                	push   0x0
  abd406:	6a 00                	push   0x0
  abd408:	6a 00                	push   0x0
  abd40a:	68 cc 58 fe 00       	push   0xfe58cc
  abd40f:	6a 20                	push   0x20
  abd411:	e8 ea 70 a2 ff       	call   0x4e4500
  abd416:	83 c4 18             	add    esp,0x18
  abd419:	85 c0                	test   eax,eax
  abd41b:	74 62                	je     0xabd47f
  abd41d:	c7 00 00 58 fe 00    	mov    DWORD PTR [eax],0xfe5800
  abd423:	33 c9                	xor    ecx,ecx
  abd425:	8d 50 04             	lea    edx,[eax+0x4]
  abd428:	87 0a                	xchg   DWORD PTR [edx],ecx
  abd42a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  abd42e:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  abd432:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  abd435:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  abd439:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  abd43c:	8a 4c 24 20          	mov    cl,BYTE PTR [esp+0x20]
  abd440:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  abd443:	8a 54 24 1c          	mov    dl,BYTE PTR [esp+0x1c]
  abd447:	88 48 19             	mov    BYTE PTR [eax+0x19],cl
  abd44a:	c7 00 fc 60 06 01    	mov    DWORD PTR [eax],0x10660fc
  abd450:	88 50 18             	mov    BYTE PTR [eax+0x18],dl
  abd453:	8b 10                	mov    edx,DWORD PTR [eax]
  abd455:	8b f0                	mov    esi,eax
  abd457:	8b c8                	mov    ecx,eax
  abd459:	8b 02                	mov    eax,DWORD PTR [edx]
  abd45b:	ff d0                	call   eax
  abd45d:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  abd461:	6a 01                	push   0x1
  abd463:	51                   	push   ecx
  abd464:	8b ce                	mov    ecx,esi
  abd466:	e8 a5 c6 d1 ff       	call   0x7d9b10
  abd46b:	85 f6                	test   esi,esi
  abd46d:	8a d8                	mov    bl,al
  abd46f:	74 09                	je     0xabd47a
  abd471:	8b 16                	mov    edx,DWORD PTR [esi]
  abd473:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  abd476:	8b ce                	mov    ecx,esi
  abd478:	ff d0                	call   eax
  abd47a:	5e                   	pop    esi
  abd47b:	8a c3                	mov    al,bl
  abd47d:	5b                   	pop    ebx
  abd47e:	c3                   	ret
  abd47f:	33 f6                	xor    esi,esi
  abd481:	eb da                	jmp    0xabd45d
