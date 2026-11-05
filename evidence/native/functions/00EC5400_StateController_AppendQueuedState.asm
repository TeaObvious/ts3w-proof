# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec5400 (StateController_AppendQueuedState)
Paired actual Ghidra pseudocode: 00EC5400_StateController_AppendQueuedState.c
Envelope [0x00ec5400,0x00ec5461); 97 bytes; exact owned ranges: [0x00ec5400,0x00ec5461)
Owned: 97 original bytes / 39 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec5400 <original>:
  ec5400:	83 ec 08             	sub    esp,0x8
  ec5403:	56                   	push   esi
  ec5404:	57                   	push   edi
  ec5405:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  ec5409:	85 ff                	test   edi,edi
  ec540b:	8b f1                	mov    esi,ecx
  ec540d:	74 08                	je     0xec5417
  ec540f:	8b 07                	mov    eax,DWORD PTR [edi]
  ec5411:	8b 10                	mov    edx,DWORD PTR [eax]
  ec5413:	8b cf                	mov    ecx,edi
  ec5415:	ff d2                	call   edx
  ec5417:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  ec541a:	3b 46 1c             	cmp    eax,DWORD PTR [esi+0x1c]
  ec541d:	8d 4e 14             	lea    ecx,[esi+0x14]
  ec5420:	73 13                	jae    0xec5435
  ec5422:	85 c0                	test   eax,eax
  ec5424:	8d 50 08             	lea    edx,[eax+0x8]
  ec5427:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  ec542a:	74 1e                	je     0xec544a
  ec542c:	33 c9                	xor    ecx,ecx
  ec542e:	89 08                	mov    DWORD PTR [eax],ecx
  ec5430:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  ec5433:	eb 15                	jmp    0xec544a
  ec5435:	33 d2                	xor    edx,edx
  ec5437:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  ec543b:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  ec543f:	8d 54 24 08          	lea    edx,[esp+0x8]
  ec5443:	52                   	push   edx
  ec5444:	50                   	push   eax
  ec5445:	e8 f6 70 54 ff       	call   0x40c540
  ec544a:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  ec544d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  ec5451:	83 e8 08             	sub    eax,0x8
  ec5454:	89 38                	mov    DWORD PTR [eax],edi
  ec5456:	5f                   	pop    edi
  ec5457:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  ec545a:	5e                   	pop    esi
  ec545b:	83 c4 08             	add    esp,0x8
  ec545e:	c2 08 00             	ret    0x8
