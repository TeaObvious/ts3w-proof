# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d8410 <.text+0x3d7410>:
  7d8410:	53                   	push   ebx
  7d8411:	56                   	push   esi
  7d8412:	8b f1                	mov    esi,ecx
  7d8414:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d8417:	33 db                	xor    ebx,ebx
  7d8419:	3b cb                	cmp    ecx,ebx
  7d841b:	74 1a                	je     0x7d8437
  7d841d:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d841f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  7d8422:	ff d2                	call   edx
  7d8424:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d8427:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d8429:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7d842c:	ff d2                	call   edx
  7d842e:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  7d8431:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  7d8434:	88 5e 15             	mov    BYTE PTR [esi+0x15],bl
  7d8437:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  7d843b:	3b cb                	cmp    ecx,ebx
  7d843d:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7d8441:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  7d8444:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  7d8447:	89 1e                	mov    DWORD PTR [esi],ebx
  7d8449:	88 5e 15             	mov    BYTE PTR [esi+0x15],bl
  7d844c:	74 1c                	je     0x7d846a
  7d844e:	8b 11                	mov    edx,DWORD PTR [ecx]
  7d8450:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  7d8453:	ff d0                	call   eax
  7d8455:	a8 02                	test   al,0x2
  7d8457:	75 11                	jne    0x7d846a
  7d8459:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d845c:	8b 11                	mov    edx,DWORD PTR [ecx]
  7d845e:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  7d8461:	ff d0                	call   eax
  7d8463:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  7d8466:	c6 46 15 01          	mov    BYTE PTR [esi+0x15],0x1
  7d846a:	5e                   	pop    esi
  7d846b:	5b                   	pop    ebx
  7d846c:	c2 08 00             	ret    0x8
