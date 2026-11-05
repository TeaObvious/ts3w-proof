# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c28660..00c2867a; TerrainData_ReleaseBlendMap
  c28660:	56                   	push   esi
  c28661:	8b f1                	mov    esi,ecx
  c28663:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c28666:	85 c9                	test   ecx,ecx
  c28668:	74 0f                	je     0xc28679
  c2866a:	8b 01                	mov    eax,DWORD PTR [ecx]
  c2866c:	8b 10                	mov    edx,DWORD PTR [eax]
  c2866e:	6a 01                	push   0x1
  c28670:	ff d2                	call   edx
  c28672:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  c28679:	5e                   	pop    esi
  c2867a:	c3                   	ret
