# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a400 (ThumbnailManager_GenerateThumbnailForSimsUsingObject)
Paired Ghidra pseudocode: 1056A400_ThumbnailManager_GenerateThumbnailForSimsUsingObject.c
Window: [0x1056a400, 0x1056a530) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a400: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056a410: 10 e8 0a 0d ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056a420: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 9e 00 00 00
1056a430: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056a440: 6c ea 3a 00 83 c4 18 85 c0 74 72 8b 4c 24 44 51
1056a450: 53 55 8b c8 e8 97 f8 ff ff 8b f8 85 ff 74 09 8b
1056a460: 17 8b 42 04 8b cf ff d0 8b 4c 24 40 8b 54 24 3c
1056a470: 8b 44 24 38 57 51 8b 4c 24 18 52 50 e8 6f d3 dc
1056a480: ff 84 c0 74 3c 8b 44 24 44 8b 16 8b 92 20 01 00
1056a490: 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90
1056a4a0: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
1056a4b0: 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33 ff eb
1056a4c0: a7 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
1056a4d0: 24 44 6a 00 8d 4c 24 18 51 53 bf b4 a5 ac 10 89
1056a4e0: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
1056a4f0: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
1056a500: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
1056a510: 00 8d 4c 24 18 e8 76 e5 3b 00 5f 5e 5d 5b 83 c4
1056a520: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056a400 <.text+0x569400>:
1056a400:	83 ec 24                                        	sub    esp,0x24
1056a403:	53                                              	push   ebx
1056a404:	55                                              	push   ebp
1056a405:	56                                              	push   esi
1056a406:	57                                              	push   edi
1056a407:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a40d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056a411:	e8 0a 0d ff ff                                  	call   0x1055b120
1056a416:	8b f0                                           	mov    esi,eax
1056a418:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a41a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a420:	8b ce                                           	mov    ecx,esi
1056a422:	ff d2                                           	call   edx
1056a424:	85 ff                                           	test   edi,edi
1056a426:	8b e8                                           	mov    ebp,eax
1056a428:	8b da                                           	mov    ebx,edx
1056a42a:	0f 84 9e 00 00 00                               	je     0x1056a4ce
1056a430:	6a 00                                           	push   0x0
1056a432:	6a 00                                           	push   0x0
1056a434:	6a 00                                           	push   0x0
1056a436:	6a 00                                           	push   0x0
1056a438:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a43d:	6a 38                                           	push   0x38
1056a43f:	e8 6c ea 3a 00                                  	call   0x10918eb0
1056a444:	83 c4 18                                        	add    esp,0x18
1056a447:	85 c0                                           	test   eax,eax
1056a449:	74 72                                           	je     0x1056a4bd
1056a44b:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a44f:	51                                              	push   ecx
1056a450:	53                                              	push   ebx
1056a451:	55                                              	push   ebp
1056a452:	8b c8                                           	mov    ecx,eax
1056a454:	e8 97 f8 ff ff                                  	call   0x10569cf0
1056a459:	8b f8                                           	mov    edi,eax
1056a45b:	85 ff                                           	test   edi,edi
1056a45d:	74 09                                           	je     0x1056a468
1056a45f:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a461:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a464:	8b cf                                           	mov    ecx,edi
1056a466:	ff d0                                           	call   eax
1056a468:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1056a46c:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1056a470:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1056a474:	57                                              	push   edi
1056a475:	51                                              	push   ecx
1056a476:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1056a47a:	52                                              	push   edx
1056a47b:	50                                              	push   eax
1056a47c:	e8 6f d3 dc ff                                  	call   0x103377f0
1056a481:	84 c0                                           	test   al,al
1056a483:	74 3c                                           	je     0x1056a4c1
1056a485:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1056a489:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056a48b:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
1056a491:	6a 00                                           	push   0x0
1056a493:	50                                              	push   eax
1056a494:	6a ff                                           	push   0xffffffff
1056a496:	53                                              	push   ebx
1056a497:	55                                              	push   ebp
1056a498:	8b ce                                           	mov    ecx,esi
1056a49a:	ff d2                                           	call   edx
1056a49c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a49e:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a4a4:	8b ce                                           	mov    ecx,esi
1056a4a6:	ff d2                                           	call   edx
1056a4a8:	85 ff                                           	test   edi,edi
1056a4aa:	74 6e                                           	je     0x1056a51a
1056a4ac:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a4ae:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a4b1:	8b cf                                           	mov    ecx,edi
1056a4b3:	ff d2                                           	call   edx
1056a4b5:	5f                                              	pop    edi
1056a4b6:	5e                                              	pop    esi
1056a4b7:	5d                                              	pop    ebp
1056a4b8:	5b                                              	pop    ebx
1056a4b9:	83 c4 24                                        	add    esp,0x24
1056a4bc:	c3                                              	ret
1056a4bd:	33 ff                                           	xor    edi,edi
1056a4bf:	eb a7                                           	jmp    0x1056a468
1056a4c1:	85 ff                                           	test   edi,edi
1056a4c3:	74 09                                           	je     0x1056a4ce
1056a4c5:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a4c7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a4ca:	8b cf                                           	mov    ecx,edi
1056a4cc:	ff d2                                           	call   edx
1056a4ce:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a4d2:	6a 00                                           	push   0x0
1056a4d4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a4d8:	51                                              	push   ecx
1056a4d9:	53                                              	push   ebx
1056a4da:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a4df:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a4e3:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a4e8:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a4ef:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a4f6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a4f8:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a4fe:	55                                              	push   ebp
1056a4ff:	52                                              	push   edx
1056a500:	8b ce                                           	mov    ecx,esi
1056a502:	ff d0                                           	call   eax
1056a504:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a509:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a50d:	74 0b                                           	je     0x1056a51a
1056a50f:	6a 00                                           	push   0x0
1056a511:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a515:	e8 76 e5 3b 00                                  	call   0x10928a90
1056a51a:	5f                                              	pop    edi
1056a51b:	5e                                              	pop    esi
1056a51c:	5d                                              	pop    ebp
1056a51d:	5b                                              	pop    ebx
1056a51e:	83 c4 24                                        	add    esp,0x24
1056a521:	c3                                              	ret
1056a522:	cc                                              	int3
1056a523:	cc                                              	int3
1056a524:	cc                                              	int3
1056a525:	cc                                              	int3
1056a526:	cc                                              	int3
1056a527:	cc                                              	int3
1056a528:	cc                                              	int3
1056a529:	cc                                              	int3
1056a52a:	cc                                              	int3
1056a52b:	cc                                              	int3
1056a52c:	cc                                              	int3
1056a52d:	cc                                              	int3
1056a52e:	cc                                              	int3
1056a52f:	cc                                              	int3
