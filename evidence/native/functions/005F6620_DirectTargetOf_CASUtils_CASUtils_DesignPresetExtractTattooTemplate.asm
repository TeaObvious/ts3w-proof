# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f6620 (DirectTargetOf_CASUtils_CASUtils_DesignPresetExtractTattooTemplate)
Paired Ghidra pseudocode: 005F6620_DirectTargetOf_CASUtils_CASUtils_DesignPresetExtractTattooTemplate.c
Window: [0x005f6620, 0x005f67c0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f67c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f6620: 81 ec f4 00 00 00 53 56 57 e8 62 2d 17 00 8b 8c
005f6630: 24 04 01 00 00 8b f8 8b 07 8b 50 58 51 8b cf ff
005f6640: d2 8b 8c 24 08 01 00 00 8b f0 8b 07 8b 50 58 51
005f6650: 8b cf ff d2 85 f6 8b d8 0f 84 53 01 00 00 85 db
005f6660: 0f 84 4b 01 00 00 8d 4c 24 40 e8 51 94 fc ff 56
005f6670: 8d 4c 24 44 e8 e7 99 fc ff 8d 8c 24 a0 00 00 00
005f6680: e8 3b 94 fc ff 53 8d 8c 24 a4 00 00 00 e8 ce 99
005f6690: fc ff 8b 9c 24 0c 01 00 00 8d 44 24 40 50 8d 8c
005f66a0: 24 a4 00 00 00 51 6a 01 53 6a 03 68 0c 70 fe 00
005f66b0: e8 bb fb ff ff 83 c4 18 33 f6 8d 9b 00 00 00 00
005f66c0: 8b 8e 40 8d 15 01 8d 54 24 40 52 8d 84 24 a4 00
005f66d0: 00 00 50 6a 01 53 6a 02 51 e8 92 fb ff ff 83 c6
005f66e0: 04 83 c4 18 83 fe 10 72 d7 b8 54 8e 1c 01 8d 54
005f66f0: 24 10 52 8d 4c 24 44 c7 44 24 20 0c f9 fd 00 89
005f6700: 44 24 14 89 44 24 18 c7 44 24 1c 56 8e 1c 01 e8
005f6710: 0c 96 fc ff 6a 01 6a 10 8d 44 24 18 50 6a 09 6a
005f6720: 13 8d 4c 24 34 c7 44 24 34 6c 88 00 01 66 c7 44
005f6730: 24 3e 13 00 66 c7 44 24 3c 0b 00 e8 80 f2 ef ff
005f6740: 8b 17 8b 52 50 8d 44 24 0c 50 8d 4c 24 24 51 8b
005f6750: cf ff d2 f6 44 24 28 04 8b 74 24 0c c7 44 24 20
005f6760: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 24 e8 ef ef ef
005f6770: ff 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9
005f6780: 02 7e 0d 85 c0 74 09 50 e8 53 dd ee ff 83 c4 04
005f6790: 8d 8c 24 a0 00 00 00 e8 44 95 fc ff 8d 4c 24 40
005f67a0: e8 3b 95 fc ff 5f 8b c6 5e 5b 81 c4 f4 00 00 00
005f67b0: c3 5f 5e 33 c0 5b 81 c4 f4 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
005f6620 <.text+0x1f5620>:
  5f6620:	81 ec f4 00 00 00                               	sub    esp,0xf4
  5f6626:	53                                              	push   ebx
  5f6627:	56                                              	push   esi
  5f6628:	57                                              	push   edi
  5f6629:	e8 62 2d 17 00                                  	call   0x769390
  5f662e:	8b 8c 24 04 01 00 00                            	mov    ecx,DWORD PTR [esp+0x104]
  5f6635:	8b f8                                           	mov    edi,eax
  5f6637:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f6639:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f663c:	51                                              	push   ecx
  5f663d:	8b cf                                           	mov    ecx,edi
  5f663f:	ff d2                                           	call   edx
  5f6641:	8b 8c 24 08 01 00 00                            	mov    ecx,DWORD PTR [esp+0x108]
  5f6648:	8b f0                                           	mov    esi,eax
  5f664a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f664c:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f664f:	51                                              	push   ecx
  5f6650:	8b cf                                           	mov    ecx,edi
  5f6652:	ff d2                                           	call   edx
  5f6654:	85 f6                                           	test   esi,esi
  5f6656:	8b d8                                           	mov    ebx,eax
  5f6658:	0f 84 53 01 00 00                               	je     0x5f67b1
  5f665e:	85 db                                           	test   ebx,ebx
  5f6660:	0f 84 4b 01 00 00                               	je     0x5f67b1
  5f6666:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5f666a:	e8 51 94 fc ff                                  	call   0x5bfac0
  5f666f:	56                                              	push   esi
  5f6670:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f6674:	e8 e7 99 fc ff                                  	call   0x5c0060
  5f6679:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  5f6680:	e8 3b 94 fc ff                                  	call   0x5bfac0
  5f6685:	53                                              	push   ebx
  5f6686:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5f668d:	e8 ce 99 fc ff                                  	call   0x5c0060
  5f6692:	8b 9c 24 0c 01 00 00                            	mov    ebx,DWORD PTR [esp+0x10c]
  5f6699:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  5f669d:	50                                              	push   eax
  5f669e:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  5f66a5:	51                                              	push   ecx
  5f66a6:	6a 01                                           	push   0x1
  5f66a8:	53                                              	push   ebx
  5f66a9:	6a 03                                           	push   0x3
  5f66ab:	68 0c 70 fe 00                                  	push   0xfe700c
  5f66b0:	e8 bb fb ff ff                                  	call   0x5f6270
  5f66b5:	83 c4 18                                        	add    esp,0x18
  5f66b8:	33 f6                                           	xor    esi,esi
  5f66ba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  5f66c0:	8b 8e 40 8d 15 01                               	mov    ecx,DWORD PTR [esi+0x1158d40]
  5f66c6:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  5f66ca:	52                                              	push   edx
  5f66cb:	8d 84 24 a4 00 00 00                            	lea    eax,[esp+0xa4]
  5f66d2:	50                                              	push   eax
  5f66d3:	6a 01                                           	push   0x1
  5f66d5:	53                                              	push   ebx
  5f66d6:	6a 02                                           	push   0x2
  5f66d8:	51                                              	push   ecx
  5f66d9:	e8 92 fb ff ff                                  	call   0x5f6270
  5f66de:	83 c6 04                                        	add    esi,0x4
  5f66e1:	83 c4 18                                        	add    esp,0x18
  5f66e4:	83 fe 10                                        	cmp    esi,0x10
  5f66e7:	72 d7                                           	jb     0x5f66c0
  5f66e9:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5f66ee:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5f66f2:	52                                              	push   edx
  5f66f3:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f66f7:	c7 44 24 20 0c f9 fd 00                         	mov    DWORD PTR [esp+0x20],0xfdf90c
  5f66ff:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5f6703:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5f6707:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  5f670f:	e8 0c 96 fc ff                                  	call   0x5bfd20
  5f6714:	6a 01                                           	push   0x1
  5f6716:	6a 10                                           	push   0x10
  5f6718:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5f671c:	50                                              	push   eax
  5f671d:	6a 09                                           	push   0x9
  5f671f:	6a 13                                           	push   0x13
  5f6721:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  5f6725:	c7 44 24 34 6c 88 00 01                         	mov    DWORD PTR [esp+0x34],0x100886c
  5f672d:	66 c7 44 24 3e 13 00                            	mov    WORD PTR [esp+0x3e],0x13
  5f6734:	66 c7 44 24 3c 0b 00                            	mov    WORD PTR [esp+0x3c],0xb
  5f673b:	e8 80 f2 ef ff                                  	call   0x4f59c0
  5f6740:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5f6742:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5f6745:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5f6749:	50                                              	push   eax
  5f674a:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5f674e:	51                                              	push   ecx
  5f674f:	8b cf                                           	mov    ecx,edi
  5f6751:	ff d2                                           	call   edx
  5f6753:	f6 44 24 28 04                                  	test   BYTE PTR [esp+0x28],0x4
  5f6758:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5f675c:	c7 44 24 20 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x20],0xfba6f4
  5f6764:	74 0b                                           	je     0x5f6771
  5f6766:	6a 00                                           	push   0x0
  5f6768:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5f676c:	e8 ef ef ef ff                                  	call   0x4f5760
  5f6771:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5f6775:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5f6779:	2b c8                                           	sub    ecx,eax
  5f677b:	83 e1 fe                                        	and    ecx,0xfffffffe
  5f677e:	83 f9 02                                        	cmp    ecx,0x2
  5f6781:	7e 0d                                           	jle    0x5f6790
  5f6783:	85 c0                                           	test   eax,eax
  5f6785:	74 09                                           	je     0x5f6790
  5f6787:	50                                              	push   eax
  5f6788:	e8 53 dd ee ff                                  	call   0x4e44e0
  5f678d:	83 c4 04                                        	add    esp,0x4
  5f6790:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  5f6797:	e8 44 95 fc ff                                  	call   0x5bfce0
  5f679c:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5f67a0:	e8 3b 95 fc ff                                  	call   0x5bfce0
  5f67a5:	5f                                              	pop    edi
  5f67a6:	8b c6                                           	mov    eax,esi
  5f67a8:	5e                                              	pop    esi
  5f67a9:	5b                                              	pop    ebx
  5f67aa:	81 c4 f4 00 00 00                               	add    esp,0xf4
  5f67b0:	c3                                              	ret
  5f67b1:	5f                                              	pop    edi
  5f67b2:	5e                                              	pop    esi
  5f67b3:	33 c0                                           	xor    eax,eax
  5f67b5:	5b                                              	pop    ebx
  5f67b6:	81 c4 f4 00 00 00                               	add    esp,0xf4
  5f67bc:	c3                                              	ret
  5f67bd:	cc                                              	int3
  5f67be:	cc                                              	int3
  5f67bf:	cc                                              	int3
