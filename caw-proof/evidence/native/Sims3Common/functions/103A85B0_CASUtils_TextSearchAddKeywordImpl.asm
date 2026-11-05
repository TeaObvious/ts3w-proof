# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a85b0 (CASUtils_TextSearchAddKeywordImpl)
Paired Ghidra pseudocode: 103A85B0_CASUtils_TextSearchAddKeywordImpl.c
Window: [0x103a85b0, 0x103a8630) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a8630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a85b0: 83 ec 10 57 8b 7c 24 18 8b c7 25 00 00 00 ff 3d
103a85c0: 00 00 00 35 75 57 56 e8 54 2b 1b 00 8b f0 8b 16
103a85d0: 8b 82 cc 00 00 00 57 8b ce ff d0 8b f8 85 ff 74
103a85e0: 3b 8b 16 8b 44 24 20 8b 52 58 50 8b ce ff d2 8b
103a85f0: 4c 24 2c 8b 54 24 30 89 4c 24 08 8b 4c 24 28 89
103a8600: 4c 24 14 8d 4c 24 08 51 89 54 24 10 8b 54 24 28
103a8610: 50 8b cf 89 54 24 18 e8 74 fa ff ff 5e 5f 83 c4
103a8620: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a85b0 <.text+0x3a75b0>:
103a85b0:	83 ec 10                                        	sub    esp,0x10
103a85b3:	57                                              	push   edi
103a85b4:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
103a85b8:	8b c7                                           	mov    eax,edi
103a85ba:	25 00 00 00 ff                                  	and    eax,0xff000000
103a85bf:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a85c4:	75 57                                           	jne    0x103a861d
103a85c6:	56                                              	push   esi
103a85c7:	e8 54 2b 1b 00                                  	call   0x1055b120
103a85cc:	8b f0                                           	mov    esi,eax
103a85ce:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a85d0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a85d6:	57                                              	push   edi
103a85d7:	8b ce                                           	mov    ecx,esi
103a85d9:	ff d0                                           	call   eax
103a85db:	8b f8                                           	mov    edi,eax
103a85dd:	85 ff                                           	test   edi,edi
103a85df:	74 3b                                           	je     0x103a861c
103a85e1:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a85e3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a85e7:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
103a85ea:	50                                              	push   eax
103a85eb:	8b ce                                           	mov    ecx,esi
103a85ed:	ff d2                                           	call   edx
103a85ef:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a85f3:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
103a85f7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a85fb:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
103a85ff:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
103a8603:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
103a8607:	51                                              	push   ecx
103a8608:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
103a860c:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a8610:	50                                              	push   eax
103a8611:	8b cf                                           	mov    ecx,edi
103a8613:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
103a8617:	e8 74 fa ff ff                                  	call   0x103a8090
103a861c:	5e                                              	pop    esi
103a861d:	5f                                              	pop    edi
103a861e:	83 c4 10                                        	add    esp,0x10
103a8621:	c3                                              	ret
103a8622:	cc                                              	int3
103a8623:	cc                                              	int3
103a8624:	cc                                              	int3
103a8625:	cc                                              	int3
103a8626:	cc                                              	int3
103a8627:	cc                                              	int3
103a8628:	cc                                              	int3
103a8629:	cc                                              	int3
103a862a:	cc                                              	int3
103a862b:	cc                                              	int3
103a862c:	cc                                              	int3
103a862d:	cc                                              	int3
103a862e:	cc                                              	int3
103a862f:	cc                                              	int3
