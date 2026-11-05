# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c63370..00c63403; World_EnsureHeightmapRelatedData
  c63370:	83 ec 08             	sub    esp,0x8
  c63373:	80 b9 52 01 00 00 00 	cmp    BYTE PTR [ecx+0x152],0x0
  c6337a:	74 08                	je     0xc63384
  c6337c:	b0 01                	mov    al,0x1
  c6337e:	83 c4 08             	add    esp,0x8
  c63381:	c2 04 00             	ret    0x4
  c63384:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  c63389:	53                   	push   ebx
  c6338a:	bb 01 00 00 00       	mov    ebx,0x1
  c6338f:	74 06                	je     0xc63397
  c63391:	88 99 52 01 00 00    	mov    BYTE PTR [ecx+0x152],bl
  c63397:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  c6339b:	c6 44 24 08 00       	mov    BYTE PTR [esp+0x8],0x0
  c633a0:	e8 7b 67 93 ff       	call   0x599b20
  c633a5:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  c633ad:	8b 10                	mov    edx,DWORD PTR [eax]
  c633af:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  c633b2:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c633b6:	51                   	push   ecx
  c633b7:	8b c8                	mov    ecx,eax
  c633b9:	ff d2                	call   edx
  c633bb:	84 c0                	test   al,al
  c633bd:	74 2b                	je     0xc633ea
  c633bf:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c633c3:	c7 40 08 90 25 c6 00 	mov    DWORD PTR [eax+0x8],0xc62590
  c633ca:	8d 4c 24 04          	lea    ecx,[esp+0x4]
  c633ce:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c633d1:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c633d5:	89 5a 20             	mov    DWORD PTR [edx+0x20],ebx
  c633d8:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c633dc:	e8 2f 79 93 ff       	call   0x59ad10
  c633e1:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c633e5:	e8 d6 7a 93 ff       	call   0x59aec0
  c633ea:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c633ee:	85 c9                	test   ecx,ecx
  c633f0:	8a 5c 24 08          	mov    bl,BYTE PTR [esp+0x8]
  c633f4:	74 05                	je     0xc633fb
  c633f6:	e8 55 7f 93 ff       	call   0x59b350
  c633fb:	8a c3                	mov    al,bl
  c633fd:	5b                   	pop    ebx
  c633fe:	83 c4 08             	add    esp,0x8
  c63401:	c2 04 00             	ret    0x4
