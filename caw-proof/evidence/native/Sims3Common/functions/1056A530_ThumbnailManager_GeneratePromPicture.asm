# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a530 (ThumbnailManager_GeneratePromPicture)
Paired Ghidra pseudocode: 1056A530_ThumbnailManager_GeneratePromPicture.c
Window: [0x1056a530, 0x1056a660) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a530: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056a540: 10 e8 da 0b ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056a550: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
1056a560: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056a570: 3c e9 3a 00 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
1056a580: 53 55 8b c8 e8 67 f7 ff ff 8b f8 85 ff 74 09 8b
1056a590: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
1056a5a0: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
1056a5b0: 51 8b 4c 24 24 52 e8 b5 cd dc ff 84 c0 74 3c 8b
1056a5c0: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
1056a5d0: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
1056a5e0: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
1056a5f0: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
1056a600: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
1056a610: 24 18 51 53 bf b4 a5 ac 10 89 7c 24 20 c6 44 24
1056a620: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
1056a630: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
1056a640: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
1056a650: 3c e4 3b 00 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
1056a530 <.text+0x569530>:
1056a530:	83 ec 24                                        	sub    esp,0x24
1056a533:	53                                              	push   ebx
1056a534:	55                                              	push   ebp
1056a535:	56                                              	push   esi
1056a536:	57                                              	push   edi
1056a537:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a53d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056a541:	e8 da 0b ff ff                                  	call   0x1055b120
1056a546:	8b f0                                           	mov    esi,eax
1056a548:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a54a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a550:	8b ce                                           	mov    ecx,esi
1056a552:	ff d2                                           	call   edx
1056a554:	85 ff                                           	test   edi,edi
1056a556:	8b e8                                           	mov    ebp,eax
1056a558:	8b da                                           	mov    ebx,edx
1056a55a:	0f 84 a8 00 00 00                               	je     0x1056a608
1056a560:	6a 00                                           	push   0x0
1056a562:	6a 00                                           	push   0x0
1056a564:	6a 00                                           	push   0x0
1056a566:	6a 00                                           	push   0x0
1056a568:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a56d:	6a 38                                           	push   0x38
1056a56f:	e8 3c e9 3a 00                                  	call   0x10918eb0
1056a574:	83 c4 18                                        	add    esp,0x18
1056a577:	85 c0                                           	test   eax,eax
1056a579:	74 7c                                           	je     0x1056a5f7
1056a57b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a57f:	51                                              	push   ecx
1056a580:	53                                              	push   ebx
1056a581:	55                                              	push   ebp
1056a582:	8b c8                                           	mov    ecx,eax
1056a584:	e8 67 f7 ff ff                                  	call   0x10569cf0
1056a589:	8b f8                                           	mov    edi,eax
1056a58b:	85 ff                                           	test   edi,edi
1056a58d:	74 09                                           	je     0x1056a598
1056a58f:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a591:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a594:	8b cf                                           	mov    ecx,edi
1056a596:	ff d0                                           	call   eax
1056a598:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a59c:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a5a0:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a5a4:	57                                              	push   edi
1056a5a5:	51                                              	push   ecx
1056a5a6:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a5aa:	52                                              	push   edx
1056a5ab:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a5af:	50                                              	push   eax
1056a5b0:	51                                              	push   ecx
1056a5b1:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a5b5:	52                                              	push   edx
1056a5b6:	e8 b5 cd dc ff                                  	call   0x10337370
1056a5bb:	84 c0                                           	test   al,al
1056a5bd:	74 3c                                           	je     0x1056a5fb
1056a5bf:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a5c3:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a5c5:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056a5cb:	6a 00                                           	push   0x0
1056a5cd:	51                                              	push   ecx
1056a5ce:	6a ff                                           	push   0xffffffff
1056a5d0:	53                                              	push   ebx
1056a5d1:	55                                              	push   ebp
1056a5d2:	8b ce                                           	mov    ecx,esi
1056a5d4:	ff d2                                           	call   edx
1056a5d6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a5d8:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a5de:	8b ce                                           	mov    ecx,esi
1056a5e0:	ff d2                                           	call   edx
1056a5e2:	85 ff                                           	test   edi,edi
1056a5e4:	74 6e                                           	je     0x1056a654
1056a5e6:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a5e8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a5eb:	8b cf                                           	mov    ecx,edi
1056a5ed:	ff d2                                           	call   edx
1056a5ef:	5f                                              	pop    edi
1056a5f0:	5e                                              	pop    esi
1056a5f1:	5d                                              	pop    ebp
1056a5f2:	5b                                              	pop    ebx
1056a5f3:	83 c4 24                                        	add    esp,0x24
1056a5f6:	c3                                              	ret
1056a5f7:	33 ff                                           	xor    edi,edi
1056a5f9:	eb 9d                                           	jmp    0x1056a598
1056a5fb:	85 ff                                           	test   edi,edi
1056a5fd:	74 09                                           	je     0x1056a608
1056a5ff:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a601:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a604:	8b cf                                           	mov    ecx,edi
1056a606:	ff d2                                           	call   edx
1056a608:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1056a60c:	6a 00                                           	push   0x0
1056a60e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a612:	51                                              	push   ecx
1056a613:	53                                              	push   ebx
1056a614:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a619:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a61d:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a622:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a629:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a630:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a632:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a638:	55                                              	push   ebp
1056a639:	52                                              	push   edx
1056a63a:	8b ce                                           	mov    ecx,esi
1056a63c:	ff d0                                           	call   eax
1056a63e:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a643:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a647:	74 0b                                           	je     0x1056a654
1056a649:	6a 00                                           	push   0x0
1056a64b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a64f:	e8 3c e4 3b 00                                  	call   0x10928a90
1056a654:	5f                                              	pop    edi
1056a655:	5e                                              	pop    esi
1056a656:	5d                                              	pop    ebp
1056a657:	5b                                              	pop    ebx
1056a658:	83 c4 24                                        	add    esp,0x24
1056a65b:	c3                                              	ret
1056a65c:	cc                                              	int3
1056a65d:	cc                                              	int3
1056a65e:	cc                                              	int3
1056a65f:	cc                                              	int3
