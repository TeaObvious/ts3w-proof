# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c23460 (Terrain_AppendLayerTextureParameters)
Paired actual Ghidra pseudocode: 00C23460_Terrain_AppendLayerTextureParameters.c
Envelope [0x00c23460,0x00c235ae); 334 bytes; exact owned ranges: [0x00c23460,0x00c234a5),[0x00c234b0,0x00c2352b),[0x00c23530,0x00c235ae)
Owned: 318 original bytes / 107 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c23460 <original>:
  c23460:	83 ec 14                                        	sub    esp,0x14
  c23463:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  c23467:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  c2346b:	53                                              	push   ebx
  c2346c:	55                                              	push   ebp
  c2346d:	56                                              	push   esi
  c2346e:	57                                              	push   edi
  c2346f:	8b f9                                           	mov    edi,ecx
  c23471:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  c23474:	50                                              	push   eax
  c23475:	52                                              	push   edx
  c23476:	e8 05 5b 00 00                                  	call   0xc28f80
  c2347b:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
  c2347f:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  c23481:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  c23484:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
  c23488:	33 f6                                           	xor    esi,esi
  c2348a:	85 ed                                           	test   ebp,ebp
  c2348c:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  c23490:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  c23494:	76 71                                           	jbe    0xc23507
  c23496:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  c2349a:	2d ec 73 07 01                                  	sub    eax,0x10773ec
  c2349f:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  c234a3:	eb 0f                                           	jmp    0xc234b4
  c234a5:	eb 09                                           	jmp    0xc234b0
  c234a7:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c234ae:	8b ff                                           	mov    edi,edi
  c234b0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  c234b4:	8b 84 b0 ec 73 07 01                            	mov    eax,DWORD PTR [eax+esi*4+0x10773ec]
  c234bb:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  c234be:	6a 00                                           	push   0x0
  c234c0:	50                                              	push   eax
  c234c1:	51                                              	push   ecx
  c234c2:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  c234c6:	52                                              	push   edx
  c234c7:	e8 a4 d8 00 00                                  	call   0xc30d70
  c234cc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c234d0:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  c234d4:	83 c4 10                                        	add    esp,0x10
  c234d7:	6a 00                                           	push   0x0
  c234d9:	83 ec 10                                        	sub    esp,0x10
  c234dc:	8b c4                                           	mov    eax,esp
  c234de:	89 08                                           	mov    DWORD PTR [eax],ecx
  c234e0:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  c234e4:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  c234e7:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  c234eb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  c234ee:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  c234f1:	8b 04 b5 ec 73 07 01                            	mov    eax,DWORD PTR [esi*4+0x10773ec]
  c234f8:	50                                              	push   eax
  c234f9:	8b cb                                           	mov    ecx,ebx
  c234fb:	e8 30 65 b7 ff                                  	call   0x799a30
  c23500:	83 c6 01                                        	add    esi,0x1
  c23503:	3b f5                                           	cmp    esi,ebp
  c23505:	72 a9                                           	jb     0xc234b0
  c23507:	83 c5 03                                        	add    ebp,0x3
  c2350a:	c1 ed 02                                        	shr    ebp,0x2
  c2350d:	be 00 00 00 00                                  	mov    esi,0x0
  c23512:	0f 84 8c 00 00 00                               	je     0xc235a4
  c23518:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  c2351c:	8b 7c 24 34                                     	mov    edi,DWORD PTR [esp+0x34]
  c23520:	2d e4 73 07 01                                  	sub    eax,0x10773e4
  c23525:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  c23529:	eb 09                                           	jmp    0xc23534
  c2352b:	eb 03                                           	jmp    0xc23530
  c2352d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  c23530:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  c23534:	83 7c 24 3c 00                                  	cmp    DWORD PTR [esp+0x3c],0x0
  c23539:	74 1b                                           	je     0xc23556
  c2353b:	8b 8c b0 e4 73 07 01                            	mov    ecx,DWORD PTR [eax+esi*4+0x10773e4]
  c23542:	8b 14 b5 e4 73 07 01                            	mov    edx,DWORD PTR [esi*4+0x10773e4]
  c23549:	6a 00                                           	push   0x0
  c2354b:	51                                              	push   ecx
  c2354c:	52                                              	push   edx
  c2354d:	8b cb                                           	mov    ecx,ebx
  c2354f:	e8 5c 65 b7 ff                                  	call   0x799ab0
  c23554:	eb 47                                           	jmp    0xc2359d
  c23556:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c2355a:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c2355e:	8d 04 3e                                        	lea    eax,[esi+edi*1]
  c23561:	50                                              	push   eax
  c23562:	51                                              	push   ecx
  c23563:	52                                              	push   edx
  c23564:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  c23568:	50                                              	push   eax
  c23569:	e8 62 d7 00 00                                  	call   0xc30cd0
  c2356e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c23570:	83 c4 10                                        	add    esp,0x10
  c23573:	6a 00                                           	push   0x0
  c23575:	83 ec 10                                        	sub    esp,0x10
  c23578:	8b cc                                           	mov    ecx,esp
  c2357a:	89 11                                           	mov    DWORD PTR [ecx],edx
  c2357c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  c2357f:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  c23582:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  c23585:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c23588:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  c2358b:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  c2358e:	8b 0c b5 e4 73 07 01                            	mov    ecx,DWORD PTR [esi*4+0x10773e4]
  c23595:	51                                              	push   ecx
  c23596:	8b cb                                           	mov    ecx,ebx
  c23598:	e8 93 64 b7 ff                                  	call   0x799a30
  c2359d:	83 c6 01                                        	add    esi,0x1
  c235a0:	3b f5                                           	cmp    esi,ebp
  c235a2:	72 8c                                           	jb     0xc23530
  c235a4:	5f                                              	pop    edi
  c235a5:	5e                                              	pop    esi
  c235a6:	5d                                              	pop    ebp
  c235a7:	5b                                              	pop    ebx
  c235a8:	83 c4 14                                        	add    esp,0x14
  c235ab:	c2 1c 00                                        	ret    0x1c
