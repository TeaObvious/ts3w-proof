# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c23220 (Terrain_WriteBlendMaskTexture)
Paired actual Ghidra pseudocode: 00C23220_Terrain_WriteBlendMaskTexture.c
Envelope [0x00c23220,0x00c23451); 561 bytes; exact owned ranges: [0x00c23220,0x00c23378),[0x00c23380,0x00c23418),[0x00c23420,0x00c23451)
Owned: 545 original bytes / 193 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c23220 <original>:
  c23220:	83 ec 40                                        	sub    esp,0x40
  c23223:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  c23227:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  c2322b:	53                                              	push   ebx
  c2322c:	57                                              	push   edi
  c2322d:	50                                              	push   eax
  c2322e:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  c23232:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  c23235:	52                                              	push   edx
  c23236:	e8 45 5d 00 00                                  	call   0xc28f80
  c2323b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  c2323d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  c23240:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  c23243:	8b 5c 24 5c                                     	mov    ebx,DWORD PTR [esp+0x5c]
  c23247:	83 fb 04                                        	cmp    ebx,0x4
  c2324a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c2324d:	89 4c 24 50                                     	mov    DWORD PTR [esp+0x50],ecx
  c23251:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  c23255:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  c23259:	7e 0a                                           	jle    0xc23265
  c2325b:	5f                                              	pop    edi
  c2325c:	32 c0                                           	xor    al,al
  c2325e:	5b                                              	pop    ebx
  c2325f:	83 c4 40                                        	add    esp,0x40
  c23262:	c2 14 00                                        	ret    0x14
  c23265:	83 fb 02                                        	cmp    ebx,0x2
  c23268:	56                                              	push   esi
  c23269:	be 22 00 00 00                                  	mov    esi,0x22
  c2326e:	7f 05                                           	jg     0xc23275
  c23270:	be 28 00 00 00                                  	mov    esi,0x28
  c23275:	55                                              	push   ebp
  c23276:	8b 6c 24 54                                     	mov    ebp,DWORD PTR [esp+0x54]
  c2327a:	39 7d 14                                        	cmp    DWORD PTR [ebp+0x14],edi
  c2327d:	75 0a                                           	jne    0xc23289
  c2327f:	39 45 18                                        	cmp    DWORD PTR [ebp+0x18],eax
  c23282:	75 05                                           	jne    0xc23289
  c23284:	39 75 28                                        	cmp    DWORD PTR [ebp+0x28],esi
  c23287:	74 22                                           	je     0xc232ab
  c23289:	8b cd                                           	mov    ecx,ebp
  c2328b:	e8 40 6f 9f ff                                  	call   0x61a1d0
  c23290:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  c23294:	68 d4 73 07 01                                  	push   0x10773d4
  c23299:	6a 02                                           	push   0x2
  c2329b:	56                                              	push   esi
  c2329c:	6a 01                                           	push   0x1
  c2329e:	50                                              	push   eax
  c2329f:	57                                              	push   edi
  c232a0:	8b cd                                           	mov    ecx,ebp
  c232a2:	e8 b9 70 9f ff                                  	call   0x61a360
  c232a7:	84 c0                                           	test   al,al
  c232a9:	74 17                                           	je     0xc232c2
  c232ab:	6a 00                                           	push   0x0
  c232ad:	6a 00                                           	push   0x0
  c232af:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  c232b3:	51                                              	push   ecx
  c232b4:	8b cd                                           	mov    ecx,ebp
  c232b6:	e8 75 62 9f ff                                  	call   0x619530
  c232bb:	83 7c 24 28 00                                  	cmp    DWORD PTR [esp+0x28],0x0
  c232c0:	75 0c                                           	jne    0xc232ce
  c232c2:	5d                                              	pop    ebp
  c232c3:	5e                                              	pop    esi
  c232c4:	5f                                              	pop    edi
  c232c5:	32 c0                                           	xor    al,al
  c232c7:	5b                                              	pop    ebx
  c232c8:	83 c4 40                                        	add    esp,0x40
  c232cb:	c2 14 00                                        	ret    0x14
  c232ce:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c232d2:	8b 4a 08                                        	mov    ecx,DWORD PTR [edx+0x8]
  c232d5:	e8 96 f9 c9 ff                                  	call   0x8c2c70
  c232da:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  c232de:	8b e8                                           	mov    ebp,eax
  c232e0:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  c232e4:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  c232e8:	03 c7                                           	add    eax,edi
  c232ea:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  c232ee:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  c232f2:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  c232f6:	03 c8                                           	add    ecx,eax
  c232f8:	83 fe 28                                        	cmp    esi,0x28
  c232fb:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  c232ff:	0f 85 96 00 00 00                               	jne    0xc2339b
  c23305:	83 fb 02                                        	cmp    ebx,0x2
  c23308:	7d 19                                           	jge    0xc23323
  c2330a:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  c2330e:	50                                              	push   eax
  c2330f:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  c23313:	8d 14 3f                                        	lea    edx,[edi+edi*1]
  c23316:	52                                              	push   edx
  c23317:	6a 00                                           	push   0x0
  c23319:	50                                              	push   eax
  c2331a:	51                                              	push   ecx
  c2331b:	e8 e0 fd ba ff                                  	call   0x7d3100
  c23320:	83 c4 14                                        	add    esp,0x14
  c23323:	33 f6                                           	xor    esi,esi
  c23325:	85 db                                           	test   ebx,ebx
  c23327:	7e 32                                           	jle    0xc2335b
  c23329:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c23330:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  c23334:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  c23338:	6a 02                                           	push   0x2
  c2333a:	52                                              	push   edx
  c2333b:	8d 0c 06                                        	lea    ecx,[esi+eax*1]
  c2333e:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  c23342:	51                                              	push   ecx
  c23343:	0f b6 0c b0                                     	movzx  ecx,BYTE PTR [eax+esi*4]
  c23347:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  c2334b:	52                                              	push   edx
  c2334c:	51                                              	push   ecx
  c2334d:	8b cd                                           	mov    ecx,ebp
  c2334f:	e8 7c d9 ff ff                                  	call   0xc20cd0
  c23354:	83 c6 01                                        	add    esi,0x1
  c23357:	3b f3                                           	cmp    esi,ebx
  c23359:	7c d5                                           	jl     0xc23330
  c2335b:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  c2335f:	85 c0                                           	test   eax,eax
  c23361:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  c23365:	0f 86 cc 00 00 00                               	jbe    0xc23437
  c2336b:	8b d0                                           	mov    edx,eax
  c2336d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  c23370:	33 c0                                           	xor    eax,eax
  c23372:	85 ff                                           	test   edi,edi
  c23374:	76 17                                           	jbe    0xc2338d
  c23376:	eb 08                                           	jmp    0xc23380
  c23378:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c2337f:	90                                              	nop
  c23380:	66 81 34 41 80 80                               	xor    WORD PTR [ecx+eax*2],0x8080
  c23386:	83 c0 01                                        	add    eax,0x1
  c23389:	3b c7                                           	cmp    eax,edi
  c2338b:	72 f3                                           	jb     0xc23380
  c2338d:	03 4c 24 2c                                     	add    ecx,DWORD PTR [esp+0x2c]
  c23391:	83 ea 01                                        	sub    edx,0x1
  c23394:	75 da                                           	jne    0xc23370
  c23396:	e9 9c 00 00 00                                  	jmp    0xc23437
  c2339b:	83 fe 22                                        	cmp    esi,0x22
  c2339e:	0f 85 93 00 00 00                               	jne    0xc23437
  c233a4:	83 fb 04                                        	cmp    ebx,0x4
  c233a7:	7d 1d                                           	jge    0xc233c6
  c233a9:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  c233ad:	50                                              	push   eax
  c233ae:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  c233b2:	8d 14 bd 00 00 00 00                            	lea    edx,[edi*4+0x0]
  c233b9:	52                                              	push   edx
  c233ba:	6a 00                                           	push   0x0
  c233bc:	50                                              	push   eax
  c233bd:	51                                              	push   ecx
  c233be:	e8 3d fd ba ff                                  	call   0x7d3100
  c233c3:	83 c4 14                                        	add    esp,0x14
  c233c6:	33 f6                                           	xor    esi,esi
  c233c8:	85 db                                           	test   ebx,ebx
  c233ca:	7e 2f                                           	jle    0xc233fb
  c233cc:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  c233d0:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  c233d4:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  c233d8:	6a 04                                           	push   0x4
  c233da:	52                                              	push   edx
  c233db:	8d 0c 06                                        	lea    ecx,[esi+eax*1]
  c233de:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  c233e2:	51                                              	push   ecx
  c233e3:	0f b6 0c b0                                     	movzx  ecx,BYTE PTR [eax+esi*4]
  c233e7:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  c233eb:	52                                              	push   edx
  c233ec:	51                                              	push   ecx
  c233ed:	8b cd                                           	mov    ecx,ebp
  c233ef:	e8 dc d8 ff ff                                  	call   0xc20cd0
  c233f4:	83 c6 01                                        	add    esi,0x1
  c233f7:	3b f3                                           	cmp    esi,ebx
  c233f9:	7c d5                                           	jl     0xc233d0
  c233fb:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  c233ff:	85 c0                                           	test   eax,eax
  c23401:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  c23405:	76 30                                           	jbe    0xc23437
  c23407:	8b d0                                           	mov    edx,eax
  c23409:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c23410:	33 c0                                           	xor    eax,eax
  c23412:	85 ff                                           	test   edi,edi
  c23414:	76 18                                           	jbe    0xc2342e
  c23416:	eb 08                                           	jmp    0xc23420
  c23418:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c2341f:	90                                              	nop
  c23420:	81 34 81 80 80 80 80                            	xor    DWORD PTR [ecx+eax*4],0x80808080
  c23427:	83 c0 01                                        	add    eax,0x1
  c2342a:	3b c7                                           	cmp    eax,edi
  c2342c:	72 f2                                           	jb     0xc23420
  c2342e:	03 4c 24 2c                                     	add    ecx,DWORD PTR [esp+0x2c]
  c23432:	83 ea 01                                        	sub    edx,0x1
  c23435:	75 d9                                           	jne    0xc23410
  c23437:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  c2343b:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  c2343f:	52                                              	push   edx
  c23440:	e8 5b 64 9f ff                                  	call   0x6198a0
  c23445:	5d                                              	pop    ebp
  c23446:	5e                                              	pop    esi
  c23447:	5f                                              	pop    edi
  c23448:	b0 01                                           	mov    al,0x1
  c2344a:	5b                                              	pop    ebx
  c2344b:	83 c4 40                                        	add    esp,0x40
  c2344e:	c2 14 00                                        	ret    0x14
