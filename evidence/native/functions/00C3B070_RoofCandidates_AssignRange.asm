# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c3b070 (RoofCandidates_AssignRange)
Paired actual Ghidra pseudocode: 00C3B070_RoofCandidates_AssignRange.c
Envelope [0x00c3b070,0x00c3b12e); 190 bytes; exact owned ranges: [0x00c3b070,0x00c3b12e)
Owned: 190 original bytes / 84 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c3b070 <original>:
  c3b070:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c3b074:	53                                              	push   ebx
  c3b075:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  c3b079:	56                                              	push   esi
  c3b07a:	8b f1                                           	mov    esi,ecx
  c3b07c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  c3b07e:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c3b081:	57                                              	push   edi
  c3b082:	8b fb                                           	mov    edi,ebx
  c3b084:	2b f8                                           	sub    edi,eax
  c3b086:	2b ca                                           	sub    ecx,edx
  c3b088:	c1 ff 02                                        	sar    edi,0x2
  c3b08b:	c1 f9 02                                        	sar    ecx,0x2
  c3b08e:	3b f9                                           	cmp    edi,ecx
  c3b090:	76 3f                                           	jbe    0xc3b0d1
  c3b092:	53                                              	push   ebx
  c3b093:	50                                              	push   eax
  c3b094:	57                                              	push   edi
  c3b095:	8b ce                                           	mov    ecx,esi
  c3b097:	e8 64 f6 ff ff                                  	call   0xc3a700
  c3b09c:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  c3b09f:	8b d8                                           	mov    ebx,eax
  c3b0a1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  c3b0a3:	52                                              	push   edx
  c3b0a4:	50                                              	push   eax
  c3b0a5:	8b ce                                           	mov    ecx,esi
  c3b0a7:	e8 a4 cc fa ff                                  	call   0xbe7d50
  c3b0ac:	8b 06                                           	mov    eax,DWORD PTR [esi]
  c3b0ae:	85 c0                                           	test   eax,eax
  c3b0b0:	74 0e                                           	je     0xc3b0c0
  c3b0b2:	3b 46 10                                        	cmp    eax,DWORD PTR [esi+0x10]
  c3b0b5:	74 09                                           	je     0xc3b0c0
  c3b0b7:	50                                              	push   eax
  c3b0b8:	e8 23 94 8a ff                                  	call   0x4e44e0
  c3b0bd:	83 c4 04                                        	add    esp,0x4
  c3b0c0:	8d 04 bb                                        	lea    eax,[ebx+edi*4]
  c3b0c3:	5f                                              	pop    edi
  c3b0c4:	89 1e                                           	mov    DWORD PTR [esi],ebx
  c3b0c6:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  c3b0c9:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  c3b0cc:	5e                                              	pop    esi
  c3b0cd:	5b                                              	pop    ebx
  c3b0ce:	c2 0c 00                                        	ret    0xc
  c3b0d1:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  c3b0d4:	2b ca                                           	sub    ecx,edx
  c3b0d6:	c1 f9 02                                        	sar    ecx,0x2
  c3b0d9:	3b f9                                           	cmp    edi,ecx
  c3b0db:	52                                              	push   edx
  c3b0dc:	77 21                                           	ja     0xc3b0ff
  c3b0de:	53                                              	push   ebx
  c3b0df:	50                                              	push   eax
  c3b0e0:	e8 8b e7 ff ff                                  	call   0xc39870
  c3b0e5:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  c3b0e8:	83 c4 0c                                        	add    esp,0xc
  c3b0eb:	51                                              	push   ecx
  c3b0ec:	8b f8                                           	mov    edi,eax
  c3b0ee:	57                                              	push   edi
  c3b0ef:	8b ce                                           	mov    ecx,esi
  c3b0f1:	e8 5a cc fa ff                                  	call   0xbe7d50
  c3b0f6:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  c3b0f9:	5f                                              	pop    edi
  c3b0fa:	5e                                              	pop    esi
  c3b0fb:	5b                                              	pop    ebx
  c3b0fc:	c2 0c 00                                        	ret    0xc
  c3b0ff:	8d 3c 88                                        	lea    edi,[eax+ecx*4]
  c3b102:	57                                              	push   edi
  c3b103:	50                                              	push   eax
  c3b104:	e8 67 e7 ff ff                                  	call   0xc39870
  c3b109:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  c3b10d:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  c3b110:	52                                              	push   edx
  c3b111:	50                                              	push   eax
  c3b112:	53                                              	push   ebx
  c3b113:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  c3b117:	57                                              	push   edi
  c3b118:	50                                              	push   eax
  c3b119:	e8 82 c0 fa ff                                  	call   0xbe71a0
  c3b11e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  c3b122:	83 c4 20                                        	add    esp,0x20
  c3b125:	5f                                              	pop    edi
  c3b126:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  c3b129:	5e                                              	pop    esi
  c3b12a:	5b                                              	pop    ebx
  c3b12b:	c2 0c 00                                        	ret    0xc
