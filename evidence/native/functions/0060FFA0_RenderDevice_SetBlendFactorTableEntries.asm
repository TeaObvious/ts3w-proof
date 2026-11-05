# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x0060ffa0 (RenderDevice_SetBlendFactorTableEntries)
Paired actual Ghidra pseudocode: 0060FFA0_RenderDevice_SetBlendFactorTableEntries.c
Envelope [0x0060ffa0,0x0060ffd1); 49 bytes; exact owned ranges: [0x0060ffa0,0x0060ffd1)
Owned: 49 original bytes / 16 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
0060ffa0 <original>:
  60ffa0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  60ffa4:	56                                              	push   esi
  60ffa5:	8b f1                                           	mov    esi,ecx
  60ffa7:	8b 0c 85 28 8a fe 00                            	mov    ecx,DWORD PTR [eax*4+0xfe8a28]
  60ffae:	51                                              	push   ecx
  60ffaf:	6a 13                                           	push   0x13
  60ffb1:	8b ce                                           	mov    ecx,esi
  60ffb3:	e8 f8 ee ff ff                                  	call   0x60eeb0
  60ffb8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  60ffbc:	8b 04 95 28 8a fe 00                            	mov    eax,DWORD PTR [edx*4+0xfe8a28]
  60ffc3:	50                                              	push   eax
  60ffc4:	6a 14                                           	push   0x14
  60ffc6:	8b ce                                           	mov    ecx,esi
  60ffc8:	e8 e3 ee ff ff                                  	call   0x60eeb0
  60ffcd:	5e                                              	pop    esi
  60ffce:	c2 08 00                                        	ret    0x8
