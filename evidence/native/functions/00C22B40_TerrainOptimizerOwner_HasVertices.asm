# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c22b40..00c22b57; TerrainOptimizerOwner_HasVertices
  c22b40:	8b 41 68             	mov    eax,DWORD PTR [ecx+0x68]
  c22b43:	85 c0                	test   eax,eax
  c22b45:	75 03                	jne    0xc22b4a
  c22b47:	32 c0                	xor    al,al
  c22b49:	c3                   	ret
  c22b4a:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
  c22b4e:	74 f7                	je     0xc22b47
  c22b50:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  c22b54:	0f 95 c0             	setne  al
  c22b57:	c3                   	ret
