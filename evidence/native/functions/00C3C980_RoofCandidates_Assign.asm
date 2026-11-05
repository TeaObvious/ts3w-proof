# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c3c980 (RoofCandidates_Assign)
Paired actual Ghidra pseudocode: 00C3C980_RoofCandidates_Assign.c
Envelope [0x00c3c980,0x00c3c9b9); 57 bytes; exact owned ranges: [0x00c3c980,0x00c3c9b9)
Owned: 57 original bytes / 26 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c3c980 <original>:
  c3c980:	56                                              	push   esi
  c3c981:	57                                              	push   edi
  c3c982:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  c3c986:	8b f1                                           	mov    esi,ecx
  c3c988:	3b f7                                           	cmp    esi,edi
  c3c98a:	74 26                                           	je     0xc3c9b2
  c3c98c:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  c3c98f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  c3c991:	50                                              	push   eax
  c3c992:	51                                              	push   ecx
  c3c993:	8b ce                                           	mov    ecx,esi
  c3c995:	e8 b6 b3 fa ff                                  	call   0xbe7d50
  c3c99a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  c3c99c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c3c9a0:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  c3c9a3:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  c3c9a6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  c3c9a8:	50                                              	push   eax
  c3c9a9:	51                                              	push   ecx
  c3c9aa:	52                                              	push   edx
  c3c9ab:	8b ce                                           	mov    ecx,esi
  c3c9ad:	e8 be e6 ff ff                                  	call   0xc3b070
  c3c9b2:	5f                                              	pop    edi
  c3c9b3:	8b c6                                           	mov    eax,esi
  c3c9b5:	5e                                              	pop    esi
  c3c9b6:	c2 04 00                                        	ret    0x4
