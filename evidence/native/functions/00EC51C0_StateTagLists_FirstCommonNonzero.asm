# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec51c0 (StateTagLists_FirstCommonNonzero)
Paired actual Ghidra pseudocode: 00EC51C0_StateTagLists_FirstCommonNonzero.c
Envelope [0x00ec51c0,0x00ec51fd); 61 bytes; exact owned ranges: [0x00ec51c0,0x00ec51fd)
Owned: 61 original bytes / 30 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec51c0 <original>:
  ec51c0:	53                   	push   ebx
  ec51c1:	56                   	push   esi
  ec51c2:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  ec51c6:	8b 06                	mov    eax,DWORD PTR [esi]
  ec51c8:	83 c6 04             	add    esi,0x4
  ec51cb:	85 c0                	test   eax,eax
  ec51cd:	57                   	push   edi
  ec51ce:	74 27                	je     0xec51f7
  ec51d0:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  ec51d4:	8b 3b                	mov    edi,DWORD PTR [ebx]
  ec51d6:	85 ff                	test   edi,edi
  ec51d8:	8b d3                	mov    edx,ebx
  ec51da:	74 12                	je     0xec51ee
  ec51dc:	8b cf                	mov    ecx,edi
  ec51de:	8b ff                	mov    edi,edi
  ec51e0:	3b c8                	cmp    ecx,eax
  ec51e2:	74 15                	je     0xec51f9
  ec51e4:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  ec51e7:	83 c2 04             	add    edx,0x4
  ec51ea:	85 c9                	test   ecx,ecx
  ec51ec:	75 f2                	jne    0xec51e0
  ec51ee:	8b 06                	mov    eax,DWORD PTR [esi]
  ec51f0:	83 c6 04             	add    esi,0x4
  ec51f3:	85 c0                	test   eax,eax
  ec51f5:	75 df                	jne    0xec51d6
  ec51f7:	33 c0                	xor    eax,eax
  ec51f9:	5f                   	pop    edi
  ec51fa:	5e                   	pop    esi
  ec51fb:	5b                   	pop    ebx
  ec51fc:	c3                   	ret
