# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec5240 (StateController_SetPending)
Paired actual Ghidra pseudocode: 00EC5240_StateController_SetPending.c
Envelope [0x00ec5240,0x00ec5293); 83 bytes; exact owned ranges: [0x00ec5240,0x00ec5293)
Owned: 83 original bytes / 39 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec5240 <original>:
  ec5240:	53                   	push   ebx
  ec5241:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  ec5245:	56                   	push   esi
  ec5246:	8b f1                	mov    esi,ecx
  ec5248:	57                   	push   edi
  ec5249:	8b 7e 2c             	mov    edi,DWORD PTR [esi+0x2c]
  ec524c:	3b df                	cmp    ebx,edi
  ec524e:	74 36                	je     0xec5286
  ec5250:	85 db                	test   ebx,ebx
  ec5252:	74 08                	je     0xec525c
  ec5254:	8b 03                	mov    eax,DWORD PTR [ebx]
  ec5256:	8b 10                	mov    edx,DWORD PTR [eax]
  ec5258:	8b cb                	mov    ecx,ebx
  ec525a:	ff d2                	call   edx
  ec525c:	85 ff                	test   edi,edi
  ec525e:	89 5e 2c             	mov    DWORD PTR [esi+0x2c],ebx
  ec5261:	74 16                	je     0xec5279
  ec5263:	8b 07                	mov    eax,DWORD PTR [edi]
  ec5265:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec5268:	8b cf                	mov    ecx,edi
  ec526a:	ff d2                	call   edx
  ec526c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ec5270:	5f                   	pop    edi
  ec5271:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  ec5274:	5e                   	pop    esi
  ec5275:	5b                   	pop    ebx
  ec5276:	c2 08 00             	ret    0x8
  ec5279:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  ec527d:	5f                   	pop    edi
  ec527e:	89 4e 30             	mov    DWORD PTR [esi+0x30],ecx
  ec5281:	5e                   	pop    esi
  ec5282:	5b                   	pop    ebx
  ec5283:	c2 08 00             	ret    0x8
  ec5286:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  ec528a:	5f                   	pop    edi
  ec528b:	89 56 30             	mov    DWORD PTR [esi+0x30],edx
  ec528e:	5e                   	pop    esi
  ec528f:	5b                   	pop    ebx
  ec5290:	c2 08 00             	ret    0x8
