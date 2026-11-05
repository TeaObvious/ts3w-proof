# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a290 (ThumbnailManager_GenerateHouseholdThumbnail)
Paired Ghidra pseudocode: 1056A290_ThumbnailManager_GenerateHouseholdThumbnail.c
Window: [0x1056a290, 0x1056a400) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a290: 83 ec 24 83 7c 24 3c 00 57 8b 3d 50 11 c7 10 89
1056a2a0: 7c 24 04 75 2f 85 ff 0f 84 40 01 00 00 8b 44 24
1056a2b0: 3c 8b 4c 24 38 8b 54 24 34 6a 00 50 8b 44 24 38
1056a2c0: 51 8b 4c 24 38 52 50 51 8b cf e8 51 fd dc ff 5f
1056a2d0: 83 c4 24 c3 53 55 56 e8 44 0e ff ff 8b f0 8b 16
1056a2e0: 8b 82 18 01 00 00 8b ce ff d0 85 ff 8b e8 8b da
1056a2f0: 0f 84 a8 00 00 00 6a 00 6a 00 6a 00 6a 00 68 5c
1056a300: 0a b2 10 6a 38 e8 a6 eb 3a 00 83 c4 18 85 c0 74
1056a310: 7c 8b 4c 24 4c 51 53 55 8b c8 e8 d1 f9 ff ff 8b
1056a320: f8 85 ff 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c
1056a330: 24 48 8b 54 24 44 8b 44 24 40 57 51 8b 4c 24 44
1056a340: 52 8b 54 24 44 50 51 8b 4c 24 24 52 e8 cf fc dc
1056a350: ff 84 c0 74 3c 8b 4c 24 4c 8b 06 8b 90 20 01 00
1056a360: 00 6a 00 51 6a ff 53 55 8b ce ff d2 8b 06 8b 90
1056a370: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
1056a380: 08 8b cf ff d2 5e 5d 5b 5f 83 c4 24 c3 33 ff eb
1056a390: 9d 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
1056a3a0: 24 4c 6a 00 8d 4c 24 18 51 53 bf b4 a5 ac 10 89
1056a3b0: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
1056a3c0: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
1056a3d0: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
1056a3e0: 00 8d 4c 24 18 e8 a6 e6 3b 00 5e 5d 5b 5f 83 c4
1056a3f0: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056a290 <.text+0x569290>:
1056a290:	83 ec 24                                        	sub    esp,0x24
1056a293:	83 7c 24 3c 00                                  	cmp    DWORD PTR [esp+0x3c],0x0
1056a298:	57                                              	push   edi
1056a299:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a29f:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
1056a2a3:	75 2f                                           	jne    0x1056a2d4
1056a2a5:	85 ff                                           	test   edi,edi
1056a2a7:	0f 84 40 01 00 00                               	je     0x1056a3ed
1056a2ad:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1056a2b1:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1056a2b5:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1056a2b9:	6a 00                                           	push   0x0
1056a2bb:	50                                              	push   eax
1056a2bc:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1056a2c0:	51                                              	push   ecx
1056a2c1:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1056a2c5:	52                                              	push   edx
1056a2c6:	50                                              	push   eax
1056a2c7:	51                                              	push   ecx
1056a2c8:	8b cf                                           	mov    ecx,edi
1056a2ca:	e8 51 fd dc ff                                  	call   0x1033a020
1056a2cf:	5f                                              	pop    edi
1056a2d0:	83 c4 24                                        	add    esp,0x24
1056a2d3:	c3                                              	ret
1056a2d4:	53                                              	push   ebx
1056a2d5:	55                                              	push   ebp
1056a2d6:	56                                              	push   esi
1056a2d7:	e8 44 0e ff ff                                  	call   0x1055b120
1056a2dc:	8b f0                                           	mov    esi,eax
1056a2de:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056a2e0:	8b 82 18 01 00 00                               	mov    eax,DWORD PTR [edx+0x118]
1056a2e6:	8b ce                                           	mov    ecx,esi
1056a2e8:	ff d0                                           	call   eax
1056a2ea:	85 ff                                           	test   edi,edi
1056a2ec:	8b e8                                           	mov    ebp,eax
1056a2ee:	8b da                                           	mov    ebx,edx
1056a2f0:	0f 84 a8 00 00 00                               	je     0x1056a39e
1056a2f6:	6a 00                                           	push   0x0
1056a2f8:	6a 00                                           	push   0x0
1056a2fa:	6a 00                                           	push   0x0
1056a2fc:	6a 00                                           	push   0x0
1056a2fe:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a303:	6a 38                                           	push   0x38
1056a305:	e8 a6 eb 3a 00                                  	call   0x10918eb0
1056a30a:	83 c4 18                                        	add    esp,0x18
1056a30d:	85 c0                                           	test   eax,eax
1056a30f:	74 7c                                           	je     0x1056a38d
1056a311:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a315:	51                                              	push   ecx
1056a316:	53                                              	push   ebx
1056a317:	55                                              	push   ebp
1056a318:	8b c8                                           	mov    ecx,eax
1056a31a:	e8 d1 f9 ff ff                                  	call   0x10569cf0
1056a31f:	8b f8                                           	mov    edi,eax
1056a321:	85 ff                                           	test   edi,edi
1056a323:	74 09                                           	je     0x1056a32e
1056a325:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a327:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a32a:	8b cf                                           	mov    ecx,edi
1056a32c:	ff d0                                           	call   eax
1056a32e:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a332:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a336:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a33a:	57                                              	push   edi
1056a33b:	51                                              	push   ecx
1056a33c:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a340:	52                                              	push   edx
1056a341:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a345:	50                                              	push   eax
1056a346:	51                                              	push   ecx
1056a347:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a34b:	52                                              	push   edx
1056a34c:	e8 cf fc dc ff                                  	call   0x1033a020
1056a351:	84 c0                                           	test   al,al
1056a353:	74 3c                                           	je     0x1056a391
1056a355:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a359:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a35b:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056a361:	6a 00                                           	push   0x0
1056a363:	51                                              	push   ecx
1056a364:	6a ff                                           	push   0xffffffff
1056a366:	53                                              	push   ebx
1056a367:	55                                              	push   ebp
1056a368:	8b ce                                           	mov    ecx,esi
1056a36a:	ff d2                                           	call   edx
1056a36c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a36e:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a374:	8b ce                                           	mov    ecx,esi
1056a376:	ff d2                                           	call   edx
1056a378:	85 ff                                           	test   edi,edi
1056a37a:	74 6e                                           	je     0x1056a3ea
1056a37c:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a37e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a381:	8b cf                                           	mov    ecx,edi
1056a383:	ff d2                                           	call   edx
1056a385:	5e                                              	pop    esi
1056a386:	5d                                              	pop    ebp
1056a387:	5b                                              	pop    ebx
1056a388:	5f                                              	pop    edi
1056a389:	83 c4 24                                        	add    esp,0x24
1056a38c:	c3                                              	ret
1056a38d:	33 ff                                           	xor    edi,edi
1056a38f:	eb 9d                                           	jmp    0x1056a32e
1056a391:	85 ff                                           	test   edi,edi
1056a393:	74 09                                           	je     0x1056a39e
1056a395:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a397:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a39a:	8b cf                                           	mov    ecx,edi
1056a39c:	ff d2                                           	call   edx
1056a39e:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1056a3a2:	6a 00                                           	push   0x0
1056a3a4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a3a8:	51                                              	push   ecx
1056a3a9:	53                                              	push   ebx
1056a3aa:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a3af:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a3b3:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a3b8:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a3bf:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a3c6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a3c8:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a3ce:	55                                              	push   ebp
1056a3cf:	52                                              	push   edx
1056a3d0:	8b ce                                           	mov    ecx,esi
1056a3d2:	ff d0                                           	call   eax
1056a3d4:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a3d9:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a3dd:	74 0b                                           	je     0x1056a3ea
1056a3df:	6a 00                                           	push   0x0
1056a3e1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a3e5:	e8 a6 e6 3b 00                                  	call   0x10928a90
1056a3ea:	5e                                              	pop    esi
1056a3eb:	5d                                              	pop    ebp
1056a3ec:	5b                                              	pop    ebx
1056a3ed:	5f                                              	pop    edi
1056a3ee:	83 c4 24                                        	add    esp,0x24
1056a3f1:	c3                                              	ret
1056a3f2:	cc                                              	int3
1056a3f3:	cc                                              	int3
1056a3f4:	cc                                              	int3
1056a3f5:	cc                                              	int3
1056a3f6:	cc                                              	int3
1056a3f7:	cc                                              	int3
1056a3f8:	cc                                              	int3
1056a3f9:	cc                                              	int3
1056a3fa:	cc                                              	int3
1056a3fb:	cc                                              	int3
1056a3fc:	cc                                              	int3
1056a3fd:	cc                                              	int3
1056a3fe:	cc                                              	int3
1056a3ff:	cc                                              	int3
