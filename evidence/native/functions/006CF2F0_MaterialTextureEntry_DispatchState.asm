# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006cf2f0 (MaterialTextureEntry_DispatchState)
Paired actual Ghidra pseudocode: 006CF2F0_MaterialTextureEntry_DispatchState.c
Envelope [0x006cf2f0,0x006cf325); 53 bytes; exact owned ranges: [0x006cf2f0,0x006cf325)
Owned: 53 original bytes / 23 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006cf2f0 <original>:
  6cf2f0:	53                                              	push   ebx
  6cf2f1:	56                                              	push   esi
  6cf2f2:	57                                              	push   edi
  6cf2f3:	8d 71 44                                        	lea    esi,[ecx+0x44]
  6cf2f6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6cf2f8:	85 d2                                           	test   edx,edx
  6cf2fa:	75 11                                           	jne    0x6cf30d
  6cf2fc:	bf 01 00 00 00                                  	mov    edi,0x1
  6cf301:	8b de                                           	mov    ebx,esi
  6cf303:	33 c0                                           	xor    eax,eax
  6cf305:	f0 0f b1 3b                                     	lock cmpxchg DWORD PTR [ebx],edi
  6cf309:	85 c0                                           	test   eax,eax
  6cf30b:	75 e9                                           	jne    0x6cf2f6
  6cf30d:	83 ea 02                                        	sub    edx,0x2
  6cf310:	5f                                              	pop    edi
  6cf311:	5e                                              	pop    esi
  6cf312:	5b                                              	pop    ebx
  6cf313:	74 0a                                           	je     0x6cf31f
  6cf315:	83 ea 01                                        	sub    edx,0x1
  6cf318:	75 0a                                           	jne    0x6cf324
  6cf31a:	e9 a1 00 00 00                                  	jmp    0x6cf3c0
  6cf31f:	e9 2c fc ff ff                                  	jmp    0x6cef50
  6cf324:	c3                                              	ret
