# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a66330 (GridPoint_CompareLevelThenXZ)
Paired actual Ghidra pseudocode: 00A66330_GridPoint_CompareLevelThenXZ.c
Envelope [0x00a66330,0x00a6637c); 76 bytes; exact owned ranges: [0x00a66330,0x00a6637c)
Owned: 76 original bytes / 29 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00a66330 <original>:
  a66330:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  a66333:	56                                              	push   esi
  a66334:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  a66338:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  a6633b:	3b c2                                           	cmp    eax,edx
  a6633d:	74 0d                                           	je     0xa6634c
  a6633f:	33 c9                                           	xor    ecx,ecx
  a66341:	3b c2                                           	cmp    eax,edx
  a66343:	0f 9c c1                                        	setl   cl
  a66346:	8a c1                                           	mov    al,cl
  a66348:	5e                                              	pop    esi
  a66349:	c2 04 00                                        	ret    0x4
  a6634c:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
  a66350:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [esi]
  a66354:	0f 2e c1                                        	ucomiss xmm0,xmm1
  a66357:	9f                                              	lahf
  a66358:	f6 c4 44                                        	test   ah,0x44
  a6635b:	7b 05                                           	jnp    0xa66362
  a6635d:	0f 2f c8                                        	comiss xmm1,xmm0
  a66360:	eb 09                                           	jmp    0xa6636b
  a66362:	f3 0f 10 46 04                                  	movss  xmm0,DWORD PTR [esi+0x4]
  a66367:	0f 2f 41 04                                     	comiss xmm0,DWORD PTR [ecx+0x4]
  a6636b:	76 09                                           	jbe    0xa66376
  a6636d:	b8 01 00 00 00                                  	mov    eax,0x1
  a66372:	5e                                              	pop    esi
  a66373:	c2 04 00                                        	ret    0x4
  a66376:	33 c0                                           	xor    eax,eax
  a66378:	5e                                              	pop    esi
  a66379:	c2 04 00                                        	ret    0x4
