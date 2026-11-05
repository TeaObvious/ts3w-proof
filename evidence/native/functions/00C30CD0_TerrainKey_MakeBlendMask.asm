# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c30cd0 (TerrainKey_MakeBlendMask)
Paired actual Ghidra pseudocode: 00C30CD0_TerrainKey_MakeBlendMask.c
Envelope [0x00c30cd0,0x00c30d15); 69 bytes; exact owned ranges: [0x00c30cd0,0x00c30d15)
Owned: 69 original bytes / 26 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c30cd0 <original>:
  c30cd0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c30cd4:	c1 e0 10                                        	shl    eax,0x10
  c30cd7:	03 44 24 08                                     	add    eax,DWORD PTR [esp+0x8]
  c30cdb:	56                                              	push   esi
  c30cdc:	8b f0                                           	mov    esi,eax
  c30cde:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  c30ce2:	57                                              	push   edi
  c30ce3:	99                                              	cdq
  c30ce4:	33 ff                                           	xor    edi,edi
  c30ce6:	6a 01                                           	push   0x1
  c30ce8:	05 00 00 10 00                                  	add    eax,0x100000
  c30ced:	57                                              	push   edi
  c30cee:	13 d7                                           	adc    edx,edi
  c30cf0:	52                                              	push   edx
  c30cf1:	50                                              	push   eax
  c30cf2:	e8 29 e8 34 00                                  	call   0xf7f520
  c30cf7:	03 f0                                           	add    esi,eax
  c30cf9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c30cfd:	13 fa                                           	adc    edi,edx
  c30cff:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
  c30d02:	5f                                              	pop    edi
  c30d03:	89 30                                           	mov    DWORD PTR [eax],esi
  c30d05:	c7 40 08 82 d8 b2 00                            	mov    DWORD PTR [eax+0x8],0xb2d882
  c30d0c:	c7 40 0c 01 00 00 00                            	mov    DWORD PTR [eax+0xc],0x1
  c30d13:	5e                                              	pop    esi
  c30d14:	c3                                              	ret
