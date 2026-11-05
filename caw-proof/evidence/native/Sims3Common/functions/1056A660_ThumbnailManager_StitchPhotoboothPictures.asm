# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a660 (ThumbnailManager_StitchPhotoboothPictures)
Paired Ghidra pseudocode: 1056A660_ThumbnailManager_StitchPhotoboothPictures.c
Window: [0x1056a660, 0x1056a820) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a660: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056a670: 10 e8 aa 0a ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056a680: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 33 01 00 00
1056a690: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056a6a0: 0c e8 3a 00 83 c4 18 85 c0 0f 84 00 01 00 00 8b
1056a6b0: 4c 24 7c 51 53 55 8b c8 e8 33 f6 ff ff 8b f8 85
1056a6c0: ff 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c 24 78
1056a6d0: 8b 54 24 68 57 51 8b 4c 24 74 83 ec 10 8b c4 89
1056a6e0: 10 8b 94 24 88 00 00 00 89 48 04 8b 8c 24 8c 00
1056a6f0: 00 00 89 50 08 8b 54 24 70 89 48 0c 8b 4c 24 74
1056a700: 83 ec 10 8b c4 89 10 8b 94 24 88 00 00 00 89 48
1056a710: 04 8b 8c 24 8c 00 00 00 89 50 08 8b 54 24 70 89
1056a720: 48 0c 8b 4c 24 74 83 ec 10 8b c4 89 10 8b 94 24
1056a730: 88 00 00 00 89 48 04 8b 8c 24 8c 00 00 00 89 50
1056a740: 08 8b 54 24 70 89 48 0c 8b 4c 24 74 83 ec 10 8b
1056a750: c4 89 10 8b 94 24 88 00 00 00 89 48 04 8b 8c 24
1056a760: 8c 00 00 00 89 50 08 89 48 0c 8b 4c 24 58 e8 fd
1056a770: d4 dc ff 84 c0 74 3f 8b 44 24 7c 8b 16 8b 92 20
1056a780: 01 00 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06
1056a790: 8b 90 1c 01 00 00 8b ce ff d2 85 ff 74 71 8b 07
1056a7a0: 8b 50 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33
1056a7b0: ff e9 16 ff ff ff 85 ff 74 09 8b 07 8b 50 08 8b
1056a7c0: cf ff d2 8b 54 24 7c 6a 00 8d 4c 24 18 51 53 bf
1056a7d0: b4 a5 ac 10 89 7c 24 20 c6 44 24 30 00 66 c7 44
1056a7e0: 24 2a 01 00 66 c7 44 24 28 00 00 8b 06 8b 80 30
1056a7f0: 01 00 00 55 52 8b ce ff d0 f6 44 24 1c 04 89 7c
1056a800: 24 14 74 0b 6a 00 8d 4c 24 18 e8 81 e2 3b 00 5f
1056a810: 5e 5d 5b 83 c4 24 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056a660 <.text+0x569660>:
1056a660:	83 ec 24                                        	sub    esp,0x24
1056a663:	53                                              	push   ebx
1056a664:	55                                              	push   ebp
1056a665:	56                                              	push   esi
1056a666:	57                                              	push   edi
1056a667:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a66d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056a671:	e8 aa 0a ff ff                                  	call   0x1055b120
1056a676:	8b f0                                           	mov    esi,eax
1056a678:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a67a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a680:	8b ce                                           	mov    ecx,esi
1056a682:	ff d2                                           	call   edx
1056a684:	85 ff                                           	test   edi,edi
1056a686:	8b e8                                           	mov    ebp,eax
1056a688:	8b da                                           	mov    ebx,edx
1056a68a:	0f 84 33 01 00 00                               	je     0x1056a7c3
1056a690:	6a 00                                           	push   0x0
1056a692:	6a 00                                           	push   0x0
1056a694:	6a 00                                           	push   0x0
1056a696:	6a 00                                           	push   0x0
1056a698:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a69d:	6a 38                                           	push   0x38
1056a69f:	e8 0c e8 3a 00                                  	call   0x10918eb0
1056a6a4:	83 c4 18                                        	add    esp,0x18
1056a6a7:	85 c0                                           	test   eax,eax
1056a6a9:	0f 84 00 01 00 00                               	je     0x1056a7af
1056a6af:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
1056a6b3:	51                                              	push   ecx
1056a6b4:	53                                              	push   ebx
1056a6b5:	55                                              	push   ebp
1056a6b6:	8b c8                                           	mov    ecx,eax
1056a6b8:	e8 33 f6 ff ff                                  	call   0x10569cf0
1056a6bd:	8b f8                                           	mov    edi,eax
1056a6bf:	85 ff                                           	test   edi,edi
1056a6c1:	74 09                                           	je     0x1056a6cc
1056a6c3:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a6c5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a6c8:	8b cf                                           	mov    ecx,edi
1056a6ca:	ff d0                                           	call   eax
1056a6cc:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
1056a6d0:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
1056a6d4:	57                                              	push   edi
1056a6d5:	51                                              	push   ecx
1056a6d6:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056a6da:	83 ec 10                                        	sub    esp,0x10
1056a6dd:	8b c4                                           	mov    eax,esp
1056a6df:	89 10                                           	mov    DWORD PTR [eax],edx
1056a6e1:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
1056a6e8:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1056a6eb:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
1056a6f2:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1056a6f5:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
1056a6f9:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1056a6fc:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056a700:	83 ec 10                                        	sub    esp,0x10
1056a703:	8b c4                                           	mov    eax,esp
1056a705:	89 10                                           	mov    DWORD PTR [eax],edx
1056a707:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
1056a70e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1056a711:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
1056a718:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1056a71b:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
1056a71f:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1056a722:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056a726:	83 ec 10                                        	sub    esp,0x10
1056a729:	8b c4                                           	mov    eax,esp
1056a72b:	89 10                                           	mov    DWORD PTR [eax],edx
1056a72d:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
1056a734:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1056a737:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
1056a73e:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1056a741:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
1056a745:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1056a748:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056a74c:	83 ec 10                                        	sub    esp,0x10
1056a74f:	8b c4                                           	mov    eax,esp
1056a751:	89 10                                           	mov    DWORD PTR [eax],edx
1056a753:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
1056a75a:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1056a75d:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
1056a764:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1056a767:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1056a76a:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
1056a76e:	e8 fd d4 dc ff                                  	call   0x10337c70
1056a773:	84 c0                                           	test   al,al
1056a775:	74 3f                                           	je     0x1056a7b6
1056a777:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
1056a77b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056a77d:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
1056a783:	6a 00                                           	push   0x0
1056a785:	50                                              	push   eax
1056a786:	6a ff                                           	push   0xffffffff
1056a788:	53                                              	push   ebx
1056a789:	55                                              	push   ebp
1056a78a:	8b ce                                           	mov    ecx,esi
1056a78c:	ff d2                                           	call   edx
1056a78e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a790:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a796:	8b ce                                           	mov    ecx,esi
1056a798:	ff d2                                           	call   edx
1056a79a:	85 ff                                           	test   edi,edi
1056a79c:	74 71                                           	je     0x1056a80f
1056a79e:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a7a0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a7a3:	8b cf                                           	mov    ecx,edi
1056a7a5:	ff d2                                           	call   edx
1056a7a7:	5f                                              	pop    edi
1056a7a8:	5e                                              	pop    esi
1056a7a9:	5d                                              	pop    ebp
1056a7aa:	5b                                              	pop    ebx
1056a7ab:	83 c4 24                                        	add    esp,0x24
1056a7ae:	c3                                              	ret
1056a7af:	33 ff                                           	xor    edi,edi
1056a7b1:	e9 16 ff ff ff                                  	jmp    0x1056a6cc
1056a7b6:	85 ff                                           	test   edi,edi
1056a7b8:	74 09                                           	je     0x1056a7c3
1056a7ba:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a7bc:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a7bf:	8b cf                                           	mov    ecx,edi
1056a7c1:	ff d2                                           	call   edx
1056a7c3:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
1056a7c7:	6a 00                                           	push   0x0
1056a7c9:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a7cd:	51                                              	push   ecx
1056a7ce:	53                                              	push   ebx
1056a7cf:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a7d4:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a7d8:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a7dd:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a7e4:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a7eb:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a7ed:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a7f3:	55                                              	push   ebp
1056a7f4:	52                                              	push   edx
1056a7f5:	8b ce                                           	mov    ecx,esi
1056a7f7:	ff d0                                           	call   eax
1056a7f9:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a7fe:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a802:	74 0b                                           	je     0x1056a80f
1056a804:	6a 00                                           	push   0x0
1056a806:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a80a:	e8 81 e2 3b 00                                  	call   0x10928a90
1056a80f:	5f                                              	pop    edi
1056a810:	5e                                              	pop    esi
1056a811:	5d                                              	pop    ebp
1056a812:	5b                                              	pop    ebx
1056a813:	83 c4 24                                        	add    esp,0x24
1056a816:	c3                                              	ret
1056a817:	cc                                              	int3
1056a818:	cc                                              	int3
1056a819:	cc                                              	int3
1056a81a:	cc                                              	int3
1056a81b:	cc                                              	int3
1056a81c:	cc                                              	int3
1056a81d:	cc                                              	int3
1056a81e:	cc                                              	int3
1056a81f:	cc                                              	int3
