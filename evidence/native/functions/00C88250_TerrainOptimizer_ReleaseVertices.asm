# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c88250..00c8827f; TerrainOptimizer_ReleaseVertices
  c88250:	53                   	push   ebx
  c88251:	56                   	push   esi
  c88252:	8b f1                	mov    esi,ecx
  c88254:	8b 06                	mov    eax,DWORD PTR [esi]
  c88256:	33 db                	xor    ebx,ebx
  c88258:	3b c3                	cmp    eax,ebx
  c8825a:	74 21                	je     0xc8827d
  c8825c:	8b 00                	mov    eax,DWORD PTR [eax]
  c8825e:	50                   	push   eax
  c8825f:	e8 7c c2 85 ff       	call   0x4e44e0
  c88264:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c88266:	51                   	push   ecx
  c88267:	e8 74 c2 85 ff       	call   0x4e44e0
  c8826c:	83 c4 08             	add    esp,0x8
  c8826f:	89 1e                	mov    DWORD PTR [esi],ebx
  c88271:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  c88274:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  c88277:	88 5e 34             	mov    BYTE PTR [esi+0x34],bl
  c8827a:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  c8827d:	5e                   	pop    esi
  c8827e:	5b                   	pop    ebx
  c8827f:	c3                   	ret
