# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c30d70 (TerrainKey_SelectLayerFallback)
Paired actual Ghidra pseudocode: 00C30D70_TerrainKey_SelectLayerFallback.c
Envelope [0x00c30d70,0x00c30db9); 73 bytes; exact owned ranges: [0x00c30d70,0x00c30db9)
Owned: 73 original bytes / 25 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c30d70 <original>:
  c30d70:	56                                              	push   esi
  c30d71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  c30d75:	57                                              	push   edi
  c30d76:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  c30d7a:	85 ff                                           	test   edi,edi
  c30d7c:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  c30d82:	c7 46 04 00 00 00 00                            	mov    DWORD PTR [esi+0x4],0x0
  c30d89:	c7 46 08 00 00 00 00                            	mov    DWORD PTR [esi+0x8],0x0
  c30d90:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
  c30d97:	74 1b                                           	je     0xc30db4
  c30d99:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  c30d9d:	56                                              	push   esi
  c30d9e:	50                                              	push   eax
  c30d9f:	8b cf                                           	mov    ecx,edi
  c30da1:	e8 2a 7e ff ff                                  	call   0xc28bd0
  c30da6:	84 c0                                           	test   al,al
  c30da8:	75 0a                                           	jne    0xc30db4
  c30daa:	56                                              	push   esi
  c30dab:	6a 00                                           	push   0x0
  c30dad:	8b cf                                           	mov    ecx,edi
  c30daf:	e8 1c 7e ff ff                                  	call   0xc28bd0
  c30db4:	5f                                              	pop    edi
  c30db5:	8b c6                                           	mov    eax,esi
  c30db7:	5e                                              	pop    esi
  c30db8:	c3                                              	ret
