# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c28630..00c28656; TerrainData_ReleaseHeightMap
  c28630:	56                   	push   esi
  c28631:	8b f1                	mov    esi,ecx
  c28633:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c28636:	85 c9                	test   ecx,ecx
  c28638:	74 0f                	je     0xc28649
  c2863a:	8b 01                	mov    eax,DWORD PTR [ecx]
  c2863c:	8b 10                	mov    edx,DWORD PTR [eax]
  c2863e:	6a 01                	push   0x1
  c28640:	ff d2                	call   edx
  c28642:	c7 46 08 00 00 00 00 	mov    DWORD PTR [esi+0x8],0x0
  c28649:	c6 46 1c 01          	mov    BYTE PTR [esi+0x1c],0x1
  c2864d:	c6 46 1d 00          	mov    BYTE PTR [esi+0x1d],0x0
  c28651:	c6 46 20 00          	mov    BYTE PTR [esi+0x20],0x0
  c28655:	5e                   	pop    esi
  c28656:	c3                   	ret
