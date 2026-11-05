# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e5d0 (App3D_GetWorldBuilderCompatibilityVersionFromGame)
Paired Ghidra pseudocode: 1097E5D0_App3D_GetWorldBuilderCompatibilityVersionFromGame.c
Window: [0x1097e5d0, 0x1097e7c0) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e7c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e5d0: 8b 44 24 04 81 ec 54 06 00 00 85 c0 56 0f 84 cb
1097e5e0: 01 00 00 50 8d 4c 24 18 e8 63 3b 6f ff a1 30 9b
1097e5f0: c5 10 be a0 42 ab 10 50 8d 8c 24 f4 00 00 00 89
1097e600: 74 24 2c e8 48 3b 6f ff 8d 8c 24 f0 00 00 00 51
1097e610: 8d 54 24 18 52 89 b4 24 0c 01 00 00 e8 8f 6e f9
1097e620: ff 8b 44 24 1c 83 c4 08 6a 00 6a 00 50 8d 8c 24
1097e630: d8 01 00 00 e8 c7 6a fa ff 8b 15 38 9b c5 10 b8
1097e640: 44 82 ca 10 8d 4c 24 04 51 89 44 24 08 89 44 24
1097e650: 0c a1 34 9b c5 10 52 50 8d 8c 24 d8 01 00 00 c7
1097e660: 44 24 1c 88 61 b9 10 c7 44 24 18 46 82 ca 10 e8
1097e670: 9c 52 fa ff 85 c0 0f 8e a7 00 00 00 8b 4c 24 04
1097e680: 51 ff 15 4c b6 aa 10 8b 54 24 10 8b f0 8b 44 24
1097e690: 08 2b d0 83 e2 fe 83 c4 04 83 fa 02 7e 0d 85 c0
1097e6a0: 74 09 50 e8 e8 a7 f9 ff 83 c4 04 57 8d 8c 24 d0
1097e6b0: 01 00 00 e8 f8 5a fa ff 8b 84 24 fc 00 00 00 8b
1097e6c0: 94 24 f4 00 00 00 2b c2 d1 f8 83 f8 01 7e 1f 85
1097e6d0: d2 74 1b 3b 94 24 0c 01 00 00 74 12 8b 8c 24 00
1097e6e0: 01 00 00 8b 39 03 c0 50 52 8b 57 0c ff d2 8b 44
1097e6f0: 24 20 8b 54 24 18 2b c2 d1 f8 83 f8 01 7e 19 85
1097e700: d2 74 15 3b 54 24 30 74 0f 8b 4c 24 24 8b 39 03
1097e710: c0 50 52 8b 57 0c ff d2 5f 8b c6 5e 81 c4 54 06
1097e720: 00 00 c3 8b 4c 24 0c 8b 44 24 04 2b c8 83 e1 fe
1097e730: 83 f9 02 7e 0d 85 c0 74 09 50 e8 51 a7 f9 ff 83
1097e740: c4 04 8d 8c 24 cc 01 00 00 e8 62 5a fa ff 8b 84
1097e750: 24 f8 00 00 00 8b 94 24 f0 00 00 00 2b c2 d1 f8
1097e760: 83 f8 01 7e 1f 85 d2 74 1b 3b 94 24 08 01 00 00
1097e770: 74 12 8b 8c 24 fc 00 00 00 8b 31 03 c0 50 52 8b
1097e780: 56 0c ff d2 8b 44 24 1c 8b 54 24 14 2b c2 d1 f8
1097e790: 83 f8 01 7e 19 85 d2 74 15 3b 54 24 2c 74 0f 8b
1097e7a0: 4c 24 20 8b 31 03 c0 50 52 8b 56 0c ff d2 83 c8
1097e7b0: ff 5e 81 c4 54 06 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097e5d0 <.text+0x97d5d0>:
1097e5d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097e5d4:	81 ec 54 06 00 00                               	sub    esp,0x654
1097e5da:	85 c0                                           	test   eax,eax
1097e5dc:	56                                              	push   esi
1097e5dd:	0f 84 cb 01 00 00                               	je     0x1097e7ae
1097e5e3:	50                                              	push   eax
1097e5e4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1097e5e8:	e8 63 3b 6f ff                                  	call   0x10072150
1097e5ed:	a1 30 9b c5 10                                  	mov    eax,ds:0x10c59b30
1097e5f2:	be a0 42 ab 10                                  	mov    esi,0x10ab42a0
1097e5f7:	50                                              	push   eax
1097e5f8:	8d 8c 24 f4 00 00 00                            	lea    ecx,[esp+0xf4]
1097e5ff:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1097e603:	e8 48 3b 6f ff                                  	call   0x10072150
1097e608:	8d 8c 24 f0 00 00 00                            	lea    ecx,[esp+0xf0]
1097e60f:	51                                              	push   ecx
1097e610:	8d 54 24 18                                     	lea    edx,[esp+0x18]
1097e614:	52                                              	push   edx
1097e615:	89 b4 24 0c 01 00 00                            	mov    DWORD PTR [esp+0x10c],esi
1097e61c:	e8 8f 6e f9 ff                                  	call   0x109154b0
1097e621:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1097e625:	83 c4 08                                        	add    esp,0x8
1097e628:	6a 00                                           	push   0x0
1097e62a:	6a 00                                           	push   0x0
1097e62c:	50                                              	push   eax
1097e62d:	8d 8c 24 d8 01 00 00                            	lea    ecx,[esp+0x1d8]
1097e634:	e8 c7 6a fa ff                                  	call   0x10925100
1097e639:	8b 15 38 9b c5 10                               	mov    edx,DWORD PTR ds:0x10c59b38
1097e63f:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097e644:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1097e648:	51                                              	push   ecx
1097e649:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1097e64d:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097e651:	a1 34 9b c5 10                                  	mov    eax,ds:0x10c59b34
1097e656:	52                                              	push   edx
1097e657:	50                                              	push   eax
1097e658:	8d 8c 24 d8 01 00 00                            	lea    ecx,[esp+0x1d8]
1097e65f:	c7 44 24 1c 88 61 b9 10                         	mov    DWORD PTR [esp+0x1c],0x10b96188
1097e667:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1097e66f:	e8 9c 52 fa ff                                  	call   0x10923910
1097e674:	85 c0                                           	test   eax,eax
1097e676:	0f 8e a7 00 00 00                               	jle    0x1097e723
1097e67c:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097e680:	51                                              	push   ecx
1097e681:	ff 15 4c b6 aa 10                               	call   DWORD PTR ds:0x10aab64c
1097e687:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1097e68b:	8b f0                                           	mov    esi,eax
1097e68d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097e691:	2b d0                                           	sub    edx,eax
1097e693:	83 e2 fe                                        	and    edx,0xfffffffe
1097e696:	83 c4 04                                        	add    esp,0x4
1097e699:	83 fa 02                                        	cmp    edx,0x2
1097e69c:	7e 0d                                           	jle    0x1097e6ab
1097e69e:	85 c0                                           	test   eax,eax
1097e6a0:	74 09                                           	je     0x1097e6ab
1097e6a2:	50                                              	push   eax
1097e6a3:	e8 e8 a7 f9 ff                                  	call   0x10918e90
1097e6a8:	83 c4 04                                        	add    esp,0x4
1097e6ab:	57                                              	push   edi
1097e6ac:	8d 8c 24 d0 01 00 00                            	lea    ecx,[esp+0x1d0]
1097e6b3:	e8 f8 5a fa ff                                  	call   0x109241b0
1097e6b8:	8b 84 24 fc 00 00 00                            	mov    eax,DWORD PTR [esp+0xfc]
1097e6bf:	8b 94 24 f4 00 00 00                            	mov    edx,DWORD PTR [esp+0xf4]
1097e6c6:	2b c2                                           	sub    eax,edx
1097e6c8:	d1 f8                                           	sar    eax,1
1097e6ca:	83 f8 01                                        	cmp    eax,0x1
1097e6cd:	7e 1f                                           	jle    0x1097e6ee
1097e6cf:	85 d2                                           	test   edx,edx
1097e6d1:	74 1b                                           	je     0x1097e6ee
1097e6d3:	3b 94 24 0c 01 00 00                            	cmp    edx,DWORD PTR [esp+0x10c]
1097e6da:	74 12                                           	je     0x1097e6ee
1097e6dc:	8b 8c 24 00 01 00 00                            	mov    ecx,DWORD PTR [esp+0x100]
1097e6e3:	8b 39                                           	mov    edi,DWORD PTR [ecx]
1097e6e5:	03 c0                                           	add    eax,eax
1097e6e7:	50                                              	push   eax
1097e6e8:	52                                              	push   edx
1097e6e9:	8b 57 0c                                        	mov    edx,DWORD PTR [edi+0xc]
1097e6ec:	ff d2                                           	call   edx
1097e6ee:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1097e6f2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1097e6f6:	2b c2                                           	sub    eax,edx
1097e6f8:	d1 f8                                           	sar    eax,1
1097e6fa:	83 f8 01                                        	cmp    eax,0x1
1097e6fd:	7e 19                                           	jle    0x1097e718
1097e6ff:	85 d2                                           	test   edx,edx
1097e701:	74 15                                           	je     0x1097e718
1097e703:	3b 54 24 30                                     	cmp    edx,DWORD PTR [esp+0x30]
1097e707:	74 0f                                           	je     0x1097e718
1097e709:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1097e70d:	8b 39                                           	mov    edi,DWORD PTR [ecx]
1097e70f:	03 c0                                           	add    eax,eax
1097e711:	50                                              	push   eax
1097e712:	52                                              	push   edx
1097e713:	8b 57 0c                                        	mov    edx,DWORD PTR [edi+0xc]
1097e716:	ff d2                                           	call   edx
1097e718:	5f                                              	pop    edi
1097e719:	8b c6                                           	mov    eax,esi
1097e71b:	5e                                              	pop    esi
1097e71c:	81 c4 54 06 00 00                               	add    esp,0x654
1097e722:	c3                                              	ret
1097e723:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097e727:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097e72b:	2b c8                                           	sub    ecx,eax
1097e72d:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e730:	83 f9 02                                        	cmp    ecx,0x2
1097e733:	7e 0d                                           	jle    0x1097e742
1097e735:	85 c0                                           	test   eax,eax
1097e737:	74 09                                           	je     0x1097e742
1097e739:	50                                              	push   eax
1097e73a:	e8 51 a7 f9 ff                                  	call   0x10918e90
1097e73f:	83 c4 04                                        	add    esp,0x4
1097e742:	8d 8c 24 cc 01 00 00                            	lea    ecx,[esp+0x1cc]
1097e749:	e8 62 5a fa ff                                  	call   0x109241b0
1097e74e:	8b 84 24 f8 00 00 00                            	mov    eax,DWORD PTR [esp+0xf8]
1097e755:	8b 94 24 f0 00 00 00                            	mov    edx,DWORD PTR [esp+0xf0]
1097e75c:	2b c2                                           	sub    eax,edx
1097e75e:	d1 f8                                           	sar    eax,1
1097e760:	83 f8 01                                        	cmp    eax,0x1
1097e763:	7e 1f                                           	jle    0x1097e784
1097e765:	85 d2                                           	test   edx,edx
1097e767:	74 1b                                           	je     0x1097e784
1097e769:	3b 94 24 08 01 00 00                            	cmp    edx,DWORD PTR [esp+0x108]
1097e770:	74 12                                           	je     0x1097e784
1097e772:	8b 8c 24 fc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xfc]
1097e779:	8b 31                                           	mov    esi,DWORD PTR [ecx]
1097e77b:	03 c0                                           	add    eax,eax
1097e77d:	50                                              	push   eax
1097e77e:	52                                              	push   edx
1097e77f:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
1097e782:	ff d2                                           	call   edx
1097e784:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1097e788:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1097e78c:	2b c2                                           	sub    eax,edx
1097e78e:	d1 f8                                           	sar    eax,1
1097e790:	83 f8 01                                        	cmp    eax,0x1
1097e793:	7e 19                                           	jle    0x1097e7ae
1097e795:	85 d2                                           	test   edx,edx
1097e797:	74 15                                           	je     0x1097e7ae
1097e799:	3b 54 24 2c                                     	cmp    edx,DWORD PTR [esp+0x2c]
1097e79d:	74 0f                                           	je     0x1097e7ae
1097e79f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1097e7a3:	8b 31                                           	mov    esi,DWORD PTR [ecx]
1097e7a5:	03 c0                                           	add    eax,eax
1097e7a7:	50                                              	push   eax
1097e7a8:	52                                              	push   edx
1097e7a9:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
1097e7ac:	ff d2                                           	call   edx
1097e7ae:	83 c8 ff                                        	or     eax,0xffffffff
1097e7b1:	5e                                              	pop    esi
1097e7b2:	81 c4 54 06 00 00                               	add    esp,0x654
1097e7b8:	c3                                              	ret
1097e7b9:	cc                                              	int3
1097e7ba:	cc                                              	int3
1097e7bb:	cc                                              	int3
1097e7bc:	cc                                              	int3
1097e7bd:	cc                                              	int3
1097e7be:	cc                                              	int3
1097e7bf:	cc                                              	int3
