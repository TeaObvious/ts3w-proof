# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c30d20 (TerrainKey_MakeAuxiliary)
Paired actual Ghidra pseudocode: 00C30D20_TerrainKey_MakeAuxiliary.c
Envelope [0x00c30d20,0x00c30d64); 68 bytes; exact owned ranges: [0x00c30d20,0x00c30d64)
Owned: 68 original bytes / 25 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c30d20 <original>:
  c30d20:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c30d24:	c1 e0 10                                        	shl    eax,0x10
  c30d27:	03 44 24 08                                     	add    eax,DWORD PTR [esp+0x8]
  c30d2b:	56                                              	push   esi
  c30d2c:	57                                              	push   edi
  c30d2d:	8b f0                                           	mov    esi,eax
  c30d2f:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  c30d33:	68 00 00 01 00                                  	push   0x10000
  c30d38:	83 c0 02                                        	add    eax,0x2
  c30d3b:	99                                              	cdq
  c30d3c:	33 ff                                           	xor    edi,edi
  c30d3e:	57                                              	push   edi
  c30d3f:	52                                              	push   edx
  c30d40:	50                                              	push   eax
  c30d41:	e8 da e7 34 00                                  	call   0xf7f520
  c30d46:	03 f0                                           	add    esi,eax
  c30d48:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c30d4c:	13 fa                                           	adc    edi,edx
  c30d4e:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
  c30d51:	5f                                              	pop    edi
  c30d52:	89 30                                           	mov    DWORD PTR [eax],esi
  c30d54:	c7 40 08 82 d8 b2 00                            	mov    DWORD PTR [eax+0x8],0xb2d882
  c30d5b:	c7 40 0c 01 00 00 00                            	mov    DWORD PTR [eax+0xc],0x1
  c30d62:	5e                                              	pop    esi
  c30d63:	c3                                              	ret
