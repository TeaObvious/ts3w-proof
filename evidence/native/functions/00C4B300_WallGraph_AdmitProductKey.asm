# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c4b300 (WallGraph_AdmitProductKey)
Paired actual Ghidra pseudocode: 00C4B300_WallGraph_AdmitProductKey.c
Envelope [0x00c4b300,0x00c4b369); 105 bytes; exact owned ranges: [0x00c4b300,0x00c4b369)
Owned: 105 original bytes / 42 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c4b300 <original>:
  c4b300:	53                                              	push   ebx
  c4b301:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  c4b305:	56                                              	push   esi
  c4b306:	57                                              	push   edi
  c4b307:	53                                              	push   ebx
  c4b308:	8b f9                                           	mov    edi,ecx
  c4b30a:	e8 f1 02 01 00                                  	call   0xc5b600
  c4b30f:	8b f0                                           	mov    esi,eax
  c4b311:	83 c4 04                                        	add    esp,0x4
  c4b314:	85 f6                                           	test   esi,esi
  c4b316:	74 49                                           	je     0xc4b361
  c4b318:	8b 86 90 00 00 00                               	mov    eax,DWORD PTR [esi+0x90]
  c4b31e:	c1 e8 0b                                        	shr    eax,0xb
  c4b321:	a8 01                                           	test   al,0x1
  c4b323:	74 3c                                           	je     0xc4b361
  c4b325:	53                                              	push   ebx
  c4b326:	e8 c5 03 01 00                                  	call   0xc5b6f0
  c4b32b:	83 c4 04                                        	add    esp,0x4
  c4b32e:	84 c0                                           	test   al,al
  c4b330:	75 0d                                           	jne    0xc4b33f
  c4b332:	53                                              	push   ebx
  c4b333:	e8 f8 04 01 00                                  	call   0xc5b830
  c4b338:	83 c4 04                                        	add    esp,0x4
  c4b33b:	84 c0                                           	test   al,al
  c4b33d:	74 22                                           	je     0xc4b361
  c4b33f:	56                                              	push   esi
  c4b340:	e8 9b fb ff ff                                  	call   0xc4aee0
  c4b345:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  c4b349:	83 c4 04                                        	add    esp,0x4
  c4b34c:	51                                              	push   ecx
  c4b34d:	8b 8c 87 70 02 00 00                            	mov    ecx,DWORD PTR [edi+eax*4+0x270]
  c4b354:	e8 b7 96 ff ff                                  	call   0xc44a10
  c4b359:	5f                                              	pop    edi
  c4b35a:	5e                                              	pop    esi
  c4b35b:	b0 01                                           	mov    al,0x1
  c4b35d:	5b                                              	pop    ebx
  c4b35e:	c2 08 00                                        	ret    0x8
  c4b361:	5f                                              	pop    edi
  c4b362:	5e                                              	pop    esi
  c4b363:	32 c0                                           	xor    al,al
  c4b365:	5b                                              	pop    ebx
  c4b366:	c2 08 00                                        	ret    0x8
