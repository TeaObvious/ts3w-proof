# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b5d0 (ResourceMgr_OpenDirectory)
Paired Ghidra pseudocode: 1098B5D0_ResourceMgr_OpenDirectory.c
Window: [0x1098b5d0, 0x1098b940) (880 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b5d0: 83 ec 30 55 e8 f7 9a f5 ff 8b e8 85 ed 89 6c 24
1098b5e0: 08 75 08 83 c8 ff 5d 83 c4 30 c3 8b 44 24 3c 56
1098b5f0: 57 50 e8 b9 f5 ff ff 8b 35 78 80 cb 10 83 c4 04
1098b600: 8d 4c 24 0c 51 8d 54 24 20 8b f8 52 8b ce 89 7c
1098b610: 24 14 e8 f9 cd d1 ff 8b 4e 08 8b 56 04 8b 44 24
1098b620: 1c 3b 04 8a 74 25 8b 48 04 8b 01 8b 50 20 ff d2
1098b630: f7 d0 85 44 24 48 74 0a 5f 5e 83 c8 ff 5d 83 c4
1098b640: 30 c3 8b c7 5f 5e 5d 83 c4 30 c3 53 e8 df 71 d9
1098b650: ff 33 c9 89 4c 24 2c 89 4c 24 30 89 44 24 34 8d
1098b660: 44 24 2c 89 4c 24 38 8b c8 89 4c 24 30 c7 44 24
1098b670: 3c 68 6f b9 10 89 44 24 2c 8b 55 00 8b 52 48 6a
1098b680: 00 50 8b cd ff d2 8b 7c 24 2c 8d 44 24 2c 3b f8
1098b690: 74 2f 8b 1d 24 b6 aa 10 8b 77 08 8b 16 8b 42 28
1098b6a0: 8b ce ff d0 8b 4c 24 44 50 51 ff d3 83 c4 08 85
1098b6b0: c0 0f 84 0e 01 00 00 8b 3f 8d 54 24 2c 3b fa 75
1098b6c0: d7 6a 00 6a 00 6a 00 6a 00 68 94 6f b9 10 68 b0
1098b6d0: 00 00 00 e8 88 d9 f8 ff 83 c4 18 85 c0 0f 84 3f
1098b6e0: 01 00 00 6a 00 6a 00 8b c8 e8 72 fe f4 ff 8b f8
1098b6f0: 85 ff 74 0a 8b 47 04 8b 10 8d 4f 04 ff d2 e8 bd
1098b700: 62 b9 ff 85 c0 74 69 8b 10 8b c8 8b 42 2c ff d0
1098b710: 8b d8 85 db 74 5a 83 7b 0c 00 74 54 8d 4c 24 20
1098b720: 51 8b cb e8 88 9e 99 ff 8b 53 08 8b 43 04 8b 74
1098b730: 24 20 3b 34 90 74 39 8b 6c 24 24 eb 03 8d 49 00
1098b740: 8b 46 04 8b 0e 8b 17 8b 52 50 50 51 8b cf ff d2
1098b750: 8b 76 08 85 f6 75 0a 8b 75 04 83 c5 04 85 f6 74
1098b760: f6 8b 43 08 8b 4b 04 3b 34 81 75 d4 8b 6c 24 14
1098b770: 8b 17 8b 74 24 44 8b 42 2c 56 8b cf ff d0 84 c0
1098b780: 0f 85 a3 00 00 00 8b 57 04 8b 42 04 8d 4f 04 ff
1098b790: d0 8b 74 24 2c 8d 4c 24 2c 3b f1 74 1d 8d 49 00
1098b7a0: 8b 4c 24 34 8b 11 8b c6 8b 36 6a 0c 50 8b 42 0c
1098b7b0: ff d0 8d 4c 24 2c 3b f1 75 e6 5b 5f 5e 83 c8 ff
1098b7c0: 5d 83 c4 30 c3 8b 06 8b 50 20 8b ce ff d2 f7 d0
1098b7d0: 85 44 24 4c 0f 85 d3 00 00 00 8b 46 04 8b 10 8d
1098b7e0: 4e 04 ff d2 8b 7c 24 10 c6 44 24 10 00 8b 44 24
1098b7f0: 10 50 8d 4c 24 18 51 8b 0d 78 80 cb 10 8d 54 24
1098b800: 28 52 89 7c 24 20 89 74 24 24 e8 71 b7 c3 ff 8d
1098b810: 4c 24 2c e8 18 2d 10 00 5b 8b c7 5f 5e 5d 83 c4
1098b820: 30 c3 33 ff e9 d5 fe ff ff 8b 17 8b 42 04 8b cf
1098b830: ff d0 84 c0 75 3f 8b 57 04 8b 42 04 8d 4f 04 ff
1098b840: d0 8b 74 24 2c 8d 4c 24 2c 3b f1 74 1d 8d 49 00
1098b850: 8b 4c 24 34 8b 11 8b c6 8b 36 6a 0c 50 8b 42 0c
1098b860: ff d0 8d 4c 24 2c 3b f1 75 e6 5b 5f 5e 83 c8 ff
1098b870: 5d 83 c4 30 c3 8b 4c 24 4c f6 c1 02 b8 03 00 00
1098b880: 00 74 05 b8 02 00 00 00 8b 17 6a 00 50 8b 42 18
1098b890: 51 8b cf ff d0 84 c0 75 28 8b 17 8b 42 08 8b cf
1098b8a0: ff d0 8b 57 04 8b 42 04 8d 4f 04 ff d0 8d 4c 24
1098b8b0: 2c e8 7a 2c 10 00 5b 5f 5e 83 c8 ff 5d 83 c4 30
1098b8c0: c3 f6 44 24 50 01 74 21 e8 f3 60 b9 ff 85 c0 74
1098b8d0: 18 8b 10 8b c8 8b 42 20 56 ff d0 85 c0 74 0a 6a
1098b8e0: 01 57 8b c8 e8 f7 f0 f4 ff 8b 74 24 10 c6 44 24
1098b8f0: 14 00 8b 4c 24 14 51 8b 0d 78 80 cb 10 8d 54 24
1098b900: 24 52 8d 44 24 1c 50 89 74 24 2c 89 7c 24 30 e8
1098b910: 6c b6 c3 ff 8b 44 24 54 8b 55 00 8b 52 34 50 57
1098b920: 6a 01 8b cd ff d2 8d 4c 24 2c e8 01 2c 10 00 5b
1098b930: 5f 8b c6 5e 5d 83 c4 30 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b5d0 <.text+0x98a5d0>:
1098b5d0:	83 ec 30                                        	sub    esp,0x30
1098b5d3:	55                                              	push   ebp
1098b5d4:	e8 f7 9a f5 ff                                  	call   0x108e50d0
1098b5d9:	8b e8                                           	mov    ebp,eax
1098b5db:	85 ed                                           	test   ebp,ebp
1098b5dd:	89 6c 24 08                                     	mov    DWORD PTR [esp+0x8],ebp
1098b5e1:	75 08                                           	jne    0x1098b5eb
1098b5e3:	83 c8 ff                                        	or     eax,0xffffffff
1098b5e6:	5d                                              	pop    ebp
1098b5e7:	83 c4 30                                        	add    esp,0x30
1098b5ea:	c3                                              	ret
1098b5eb:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
1098b5ef:	56                                              	push   esi
1098b5f0:	57                                              	push   edi
1098b5f1:	50                                              	push   eax
1098b5f2:	e8 b9 f5 ff ff                                  	call   0x1098abb0
1098b5f7:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098b5fd:	83 c4 04                                        	add    esp,0x4
1098b600:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098b604:	51                                              	push   ecx
1098b605:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1098b609:	8b f8                                           	mov    edi,eax
1098b60b:	52                                              	push   edx
1098b60c:	8b ce                                           	mov    ecx,esi
1098b60e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1098b612:	e8 f9 cd d1 ff                                  	call   0x106a8410
1098b617:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098b61a:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098b61d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098b621:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
1098b624:	74 25                                           	je     0x1098b64b
1098b626:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1098b629:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098b62b:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098b62e:	ff d2                                           	call   edx
1098b630:	f7 d0                                           	not    eax
1098b632:	85 44 24 48                                     	test   DWORD PTR [esp+0x48],eax
1098b636:	74 0a                                           	je     0x1098b642
1098b638:	5f                                              	pop    edi
1098b639:	5e                                              	pop    esi
1098b63a:	83 c8 ff                                        	or     eax,0xffffffff
1098b63d:	5d                                              	pop    ebp
1098b63e:	83 c4 30                                        	add    esp,0x30
1098b641:	c3                                              	ret
1098b642:	8b c7                                           	mov    eax,edi
1098b644:	5f                                              	pop    edi
1098b645:	5e                                              	pop    esi
1098b646:	5d                                              	pop    ebp
1098b647:	83 c4 30                                        	add    esp,0x30
1098b64a:	c3                                              	ret
1098b64b:	53                                              	push   ebx
1098b64c:	e8 df 71 d9 ff                                  	call   0x10722830
1098b651:	33 c9                                           	xor    ecx,ecx
1098b653:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
1098b657:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1098b65b:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
1098b65f:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098b663:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
1098b667:	8b c8                                           	mov    ecx,eax
1098b669:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1098b66d:	c7 44 24 3c 68 6f b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96f68
1098b675:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
1098b679:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1098b67c:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
1098b67f:	6a 00                                           	push   0x0
1098b681:	50                                              	push   eax
1098b682:	8b cd                                           	mov    ecx,ebp
1098b684:	ff d2                                           	call   edx
1098b686:	8b 7c 24 2c                                     	mov    edi,DWORD PTR [esp+0x2c]
1098b68a:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098b68e:	3b f8                                           	cmp    edi,eax
1098b690:	74 2f                                           	je     0x1098b6c1
1098b692:	8b 1d 24 b6 aa 10                               	mov    ebx,DWORD PTR ds:0x10aab624
1098b698:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
1098b69b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b69d:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b6a0:	8b ce                                           	mov    ecx,esi
1098b6a2:	ff d0                                           	call   eax
1098b6a4:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1098b6a8:	50                                              	push   eax
1098b6a9:	51                                              	push   ecx
1098b6aa:	ff d3                                           	call   ebx
1098b6ac:	83 c4 08                                        	add    esp,0x8
1098b6af:	85 c0                                           	test   eax,eax
1098b6b1:	0f 84 0e 01 00 00                               	je     0x1098b7c5
1098b6b7:	8b 3f                                           	mov    edi,DWORD PTR [edi]
1098b6b9:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
1098b6bd:	3b fa                                           	cmp    edi,edx
1098b6bf:	75 d7                                           	jne    0x1098b698
1098b6c1:	6a 00                                           	push   0x0
1098b6c3:	6a 00                                           	push   0x0
1098b6c5:	6a 00                                           	push   0x0
1098b6c7:	6a 00                                           	push   0x0
1098b6c9:	68 94 6f b9 10                                  	push   0x10b96f94
1098b6ce:	68 b0 00 00 00                                  	push   0xb0
1098b6d3:	e8 88 d9 f8 ff                                  	call   0x10919060
1098b6d8:	83 c4 18                                        	add    esp,0x18
1098b6db:	85 c0                                           	test   eax,eax
1098b6dd:	0f 84 3f 01 00 00                               	je     0x1098b822
1098b6e3:	6a 00                                           	push   0x0
1098b6e5:	6a 00                                           	push   0x0
1098b6e7:	8b c8                                           	mov    ecx,eax
1098b6e9:	e8 72 fe f4 ff                                  	call   0x108db560
1098b6ee:	8b f8                                           	mov    edi,eax
1098b6f0:	85 ff                                           	test   edi,edi
1098b6f2:	74 0a                                           	je     0x1098b6fe
1098b6f4:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1098b6f7:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b6f9:	8d 4f 04                                        	lea    ecx,[edi+0x4]
1098b6fc:	ff d2                                           	call   edx
1098b6fe:	e8 bd 62 b9 ff                                  	call   0x105219c0
1098b703:	85 c0                                           	test   eax,eax
1098b705:	74 69                                           	je     0x1098b770
1098b707:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b709:	8b c8                                           	mov    ecx,eax
1098b70b:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
1098b70e:	ff d0                                           	call   eax
1098b710:	8b d8                                           	mov    ebx,eax
1098b712:	85 db                                           	test   ebx,ebx
1098b714:	74 5a                                           	je     0x1098b770
1098b716:	83 7b 0c 00                                     	cmp    DWORD PTR [ebx+0xc],0x0
1098b71a:	74 54                                           	je     0x1098b770
1098b71c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098b720:	51                                              	push   ecx
1098b721:	8b cb                                           	mov    ecx,ebx
1098b723:	e8 88 9e 99 ff                                  	call   0x103255b0
1098b728:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
1098b72b:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
1098b72e:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098b732:	3b 34 90                                        	cmp    esi,DWORD PTR [eax+edx*4]
1098b735:	74 39                                           	je     0x1098b770
1098b737:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
1098b73b:	eb 03                                           	jmp    0x1098b740
1098b73d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098b740:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b743:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
1098b745:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098b747:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1098b74a:	50                                              	push   eax
1098b74b:	51                                              	push   ecx
1098b74c:	8b cf                                           	mov    ecx,edi
1098b74e:	ff d2                                           	call   edx
1098b750:	8b 76 08                                        	mov    esi,DWORD PTR [esi+0x8]
1098b753:	85 f6                                           	test   esi,esi
1098b755:	75 0a                                           	jne    0x1098b761
1098b757:	8b 75 04                                        	mov    esi,DWORD PTR [ebp+0x4]
1098b75a:	83 c5 04                                        	add    ebp,0x4
1098b75d:	85 f6                                           	test   esi,esi
1098b75f:	74 f6                                           	je     0x1098b757
1098b761:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
1098b764:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
1098b767:	3b 34 81                                        	cmp    esi,DWORD PTR [ecx+eax*4]
1098b76a:	75 d4                                           	jne    0x1098b740
1098b76c:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
1098b770:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098b772:	8b 74 24 44                                     	mov    esi,DWORD PTR [esp+0x44]
1098b776:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
1098b779:	56                                              	push   esi
1098b77a:	8b cf                                           	mov    ecx,edi
1098b77c:	ff d0                                           	call   eax
1098b77e:	84 c0                                           	test   al,al
1098b780:	0f 85 a3 00 00 00                               	jne    0x1098b829
1098b786:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1098b789:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b78c:	8d 4f 04                                        	lea    ecx,[edi+0x4]
1098b78f:	ff d0                                           	call   eax
1098b791:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
1098b795:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b799:	3b f1                                           	cmp    esi,ecx
1098b79b:	74 1d                                           	je     0x1098b7ba
1098b79d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098b7a0:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1098b7a4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098b7a6:	8b c6                                           	mov    eax,esi
1098b7a8:	8b 36                                           	mov    esi,DWORD PTR [esi]
1098b7aa:	6a 0c                                           	push   0xc
1098b7ac:	50                                              	push   eax
1098b7ad:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098b7b0:	ff d0                                           	call   eax
1098b7b2:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b7b6:	3b f1                                           	cmp    esi,ecx
1098b7b8:	75 e6                                           	jne    0x1098b7a0
1098b7ba:	5b                                              	pop    ebx
1098b7bb:	5f                                              	pop    edi
1098b7bc:	5e                                              	pop    esi
1098b7bd:	83 c8 ff                                        	or     eax,0xffffffff
1098b7c0:	5d                                              	pop    ebp
1098b7c1:	83 c4 30                                        	add    esp,0x30
1098b7c4:	c3                                              	ret
1098b7c5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098b7c7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098b7ca:	8b ce                                           	mov    ecx,esi
1098b7cc:	ff d2                                           	call   edx
1098b7ce:	f7 d0                                           	not    eax
1098b7d0:	85 44 24 4c                                     	test   DWORD PTR [esp+0x4c],eax
1098b7d4:	0f 85 d3 00 00 00                               	jne    0x1098b8ad
1098b7da:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b7dd:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b7df:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b7e2:	ff d2                                           	call   edx
1098b7e4:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098b7e8:	c6 44 24 10 00                                  	mov    BYTE PTR [esp+0x10],0x0
1098b7ed:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098b7f1:	50                                              	push   eax
1098b7f2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098b7f6:	51                                              	push   ecx
1098b7f7:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b7fd:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1098b801:	52                                              	push   edx
1098b802:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1098b806:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1098b80a:	e8 71 b7 c3 ff                                  	call   0x105c6f80
1098b80f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b813:	e8 18 2d 10 00                                  	call   0x10a8e530
1098b818:	5b                                              	pop    ebx
1098b819:	8b c7                                           	mov    eax,edi
1098b81b:	5f                                              	pop    edi
1098b81c:	5e                                              	pop    esi
1098b81d:	5d                                              	pop    ebp
1098b81e:	83 c4 30                                        	add    esp,0x30
1098b821:	c3                                              	ret
1098b822:	33 ff                                           	xor    edi,edi
1098b824:	e9 d5 fe ff ff                                  	jmp    0x1098b6fe
1098b829:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098b82b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b82e:	8b cf                                           	mov    ecx,edi
1098b830:	ff d0                                           	call   eax
1098b832:	84 c0                                           	test   al,al
1098b834:	75 3f                                           	jne    0x1098b875
1098b836:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1098b839:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b83c:	8d 4f 04                                        	lea    ecx,[edi+0x4]
1098b83f:	ff d0                                           	call   eax
1098b841:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
1098b845:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b849:	3b f1                                           	cmp    esi,ecx
1098b84b:	74 1d                                           	je     0x1098b86a
1098b84d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098b850:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1098b854:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098b856:	8b c6                                           	mov    eax,esi
1098b858:	8b 36                                           	mov    esi,DWORD PTR [esi]
1098b85a:	6a 0c                                           	push   0xc
1098b85c:	50                                              	push   eax
1098b85d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098b860:	ff d0                                           	call   eax
1098b862:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b866:	3b f1                                           	cmp    esi,ecx
1098b868:	75 e6                                           	jne    0x1098b850
1098b86a:	5b                                              	pop    ebx
1098b86b:	5f                                              	pop    edi
1098b86c:	5e                                              	pop    esi
1098b86d:	83 c8 ff                                        	or     eax,0xffffffff
1098b870:	5d                                              	pop    ebp
1098b871:	83 c4 30                                        	add    esp,0x30
1098b874:	c3                                              	ret
1098b875:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1098b879:	f6 c1 02                                        	test   cl,0x2
1098b87c:	b8 03 00 00 00                                  	mov    eax,0x3
1098b881:	74 05                                           	je     0x1098b888
1098b883:	b8 02 00 00 00                                  	mov    eax,0x2
1098b888:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098b88a:	6a 00                                           	push   0x0
1098b88c:	50                                              	push   eax
1098b88d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1098b890:	51                                              	push   ecx
1098b891:	8b cf                                           	mov    ecx,edi
1098b893:	ff d0                                           	call   eax
1098b895:	84 c0                                           	test   al,al
1098b897:	75 28                                           	jne    0x1098b8c1
1098b899:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098b89b:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098b89e:	8b cf                                           	mov    ecx,edi
1098b8a0:	ff d0                                           	call   eax
1098b8a2:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1098b8a5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b8a8:	8d 4f 04                                        	lea    ecx,[edi+0x4]
1098b8ab:	ff d0                                           	call   eax
1098b8ad:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b8b1:	e8 7a 2c 10 00                                  	call   0x10a8e530
1098b8b6:	5b                                              	pop    ebx
1098b8b7:	5f                                              	pop    edi
1098b8b8:	5e                                              	pop    esi
1098b8b9:	83 c8 ff                                        	or     eax,0xffffffff
1098b8bc:	5d                                              	pop    ebp
1098b8bd:	83 c4 30                                        	add    esp,0x30
1098b8c0:	c3                                              	ret
1098b8c1:	f6 44 24 50 01                                  	test   BYTE PTR [esp+0x50],0x1
1098b8c6:	74 21                                           	je     0x1098b8e9
1098b8c8:	e8 f3 60 b9 ff                                  	call   0x105219c0
1098b8cd:	85 c0                                           	test   eax,eax
1098b8cf:	74 18                                           	je     0x1098b8e9
1098b8d1:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b8d3:	8b c8                                           	mov    ecx,eax
1098b8d5:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
1098b8d8:	56                                              	push   esi
1098b8d9:	ff d0                                           	call   eax
1098b8db:	85 c0                                           	test   eax,eax
1098b8dd:	74 0a                                           	je     0x1098b8e9
1098b8df:	6a 01                                           	push   0x1
1098b8e1:	57                                              	push   edi
1098b8e2:	8b c8                                           	mov    ecx,eax
1098b8e4:	e8 f7 f0 f4 ff                                  	call   0x108da9e0
1098b8e9:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
1098b8ed:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
1098b8f2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098b8f6:	51                                              	push   ecx
1098b8f7:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b8fd:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098b901:	52                                              	push   edx
1098b902:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1098b906:	50                                              	push   eax
1098b907:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1098b90b:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1098b90f:	e8 6c b6 c3 ff                                  	call   0x105c6f80
1098b914:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1098b918:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1098b91b:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1098b91e:	50                                              	push   eax
1098b91f:	57                                              	push   edi
1098b920:	6a 01                                           	push   0x1
1098b922:	8b cd                                           	mov    ecx,ebp
1098b924:	ff d2                                           	call   edx
1098b926:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1098b92a:	e8 01 2c 10 00                                  	call   0x10a8e530
1098b92f:	5b                                              	pop    ebx
1098b930:	5f                                              	pop    edi
1098b931:	8b c6                                           	mov    eax,esi
1098b933:	5e                                              	pop    esi
1098b934:	5d                                              	pop    ebp
1098b935:	83 c4 30                                        	add    esp,0x30
1098b938:	c3                                              	ret
1098b939:	cc                                              	int3
1098b93a:	cc                                              	int3
1098b93b:	cc                                              	int3
1098b93c:	cc                                              	int3
1098b93d:	cc                                              	int3
1098b93e:	cc                                              	int3
1098b93f:	cc                                              	int3
