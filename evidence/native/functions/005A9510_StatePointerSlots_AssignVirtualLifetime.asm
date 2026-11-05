# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x005a9510 (StatePointerSlots_AssignVirtualLifetime)
Paired actual Ghidra pseudocode: 005A9510_StatePointerSlots_AssignVirtualLifetime.c
Envelope [0x005a9510,0x005a9544); 52 bytes; exact owned ranges: [0x005a9510,0x005a9544)
Owned: 52 original bytes / 27 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
005a9510 <original>:
  5a9510:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  5a9514:	53                   	push   ebx
  5a9515:	56                   	push   esi
  5a9516:	8b 30                	mov    esi,DWORD PTR [eax]
  5a9518:	57                   	push   edi
  5a9519:	8b f9                	mov    edi,ecx
  5a951b:	8b 1f                	mov    ebx,DWORD PTR [edi]
  5a951d:	3b f3                	cmp    esi,ebx
  5a951f:	74 1b                	je     0x5a953c
  5a9521:	85 f6                	test   esi,esi
  5a9523:	74 08                	je     0x5a952d
  5a9525:	8b 16                	mov    edx,DWORD PTR [esi]
  5a9527:	8b 02                	mov    eax,DWORD PTR [edx]
  5a9529:	8b ce                	mov    ecx,esi
  5a952b:	ff d0                	call   eax
  5a952d:	85 db                	test   ebx,ebx
  5a952f:	89 37                	mov    DWORD PTR [edi],esi
  5a9531:	74 09                	je     0x5a953c
  5a9533:	8b 13                	mov    edx,DWORD PTR [ebx]
  5a9535:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  5a9538:	8b cb                	mov    ecx,ebx
  5a953a:	ff d0                	call   eax
  5a953c:	8b c7                	mov    eax,edi
  5a953e:	5f                   	pop    edi
  5a953f:	5e                   	pop    esi
  5a9540:	5b                   	pop    ebx
  5a9541:	c2 04 00             	ret    0x4
