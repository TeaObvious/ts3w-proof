# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c63410..00c634a5; World_ReleaseHeightmapRelatedData
  c63410:	83 ec 08             	sub    esp,0x8
  c63413:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  c63418:	74 7b                	je     0xc63495
  c6341a:	c6 81 52 01 00 00 00 	mov    BYTE PTR [ecx+0x152],0x0
  c63421:	89 0c 24             	mov    DWORD PTR [esp],ecx
  c63424:	c6 44 24 04 00       	mov    BYTE PTR [esp+0x4],0x0
  c63429:	e8 f2 66 93 ff       	call   0x599b20
  c6342e:	c7 44 24 0c 00 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  c63436:	8b 10                	mov    edx,DWORD PTR [eax]
  c63438:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  c6343b:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c6343f:	51                   	push   ecx
  c63440:	8b c8                	mov    ecx,eax
  c63442:	ff d2                	call   edx
  c63444:	84 c0                	test   al,al
  c63446:	74 2e                	je     0xc63476
  c63448:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  c6344c:	c7 40 08 c0 26 c6 00 	mov    DWORD PTR [eax+0x8],0xc626c0
  c63453:	8d 0c 24             	lea    ecx,[esp]
  c63456:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c63459:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  c6345d:	c7 42 20 01 00 00 00 	mov    DWORD PTR [edx+0x20],0x1
  c63464:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  c63468:	e8 a3 78 93 ff       	call   0x59ad10
  c6346d:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  c63471:	e8 4a 7a 93 ff       	call   0x59aec0
  c63476:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
  c6347b:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  c6347f:	53                   	push   ebx
  c63480:	0f 94 c3             	sete   bl
  c63483:	85 c9                	test   ecx,ecx
  c63485:	74 05                	je     0xc6348c
  c63487:	e8 c4 7e 93 ff       	call   0x59b350
  c6348c:	8a c3                	mov    al,bl
  c6348e:	5b                   	pop    ebx
  c6348f:	83 c4 08             	add    esp,0x8
  c63492:	c2 04 00             	ret    0x4
  c63495:	80 b9 52 01 00 00 00 	cmp    BYTE PTR [ecx+0x152],0x0
  c6349c:	74 83                	je     0xc63421
  c6349e:	b0 01                	mov    al,0x1
  c634a0:	83 c4 08             	add    esp,0x8
  c634a3:	c2 04 00             	ret    0x4
