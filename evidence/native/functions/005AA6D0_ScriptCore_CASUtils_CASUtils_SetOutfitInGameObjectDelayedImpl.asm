# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa6d0 (ScriptCore.CASUtils::CASUtils_SetOutfitInGameObjectDelayedImpl)
Paired Ghidra pseudocode: 005AA6D0_ScriptCore_CASUtils_CASUtils_SetOutfitInGameObjectDelayedImpl.c
Window: [0x005aa6d0, 0x005aa7e0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa6d0: 83 ec 10 8b 44 24 1c 8b 4c 24 20 8b 54 24 14 89
005aa6e0: 04 24 8b 44 24 18 89 4c 24 04 89 54 24 08 89 44
005aa6f0: 24 0c e8 c9 13 04 00 85 c0 0f 84 cc 00 00 00 80
005aa700: b8 38 01 00 00 00 0f 84 bf 00 00 00 53 55 56 57
005aa710: e8 7b ec 1b 00 8b 74 24 3c 85 f6 8b 6c 24 38 8b
005aa720: d8 0f 84 a8 00 00 00 6a 00 6a 00 6a 00 6a 00 68
005aa730: b8 f8 fd 00 6a 18 e8 c5 9d f3 ff 83 c4 18 85 c0
005aa740: 0f 84 89 00 00 00 8b 4c 24 34 56 55 51 8b c8 e8
005aa750: ec fc ff ff 8b f8 85 ff 74 08 8b 17 8b 02 8b cf
005aa760: ff d0 6a 30 e8 b7 06 1c 00 8b f0 83 c4 04 85 f6
005aa770: 74 61 8b 4c 24 34 8b 03 57 55 51 8d 54 24 1c 52
005aa780: 8b 90 18 01 00 00 8b cb ff d2 52 50 8b ce e8 9d
005aa790: fb ff ff 8b f0 85 f6 74 09 8b 06 8b 50 04 8b ce
005aa7a0: ff d2 6a 00 56 e8 06 3e 00 00 83 c4 08 85 f6 74
005aa7b0: 09 8b 06 8b 50 08 8b ce ff d2 85 ff 74 09 8b 07
005aa7c0: 8b 50 04 8b cf ff d2 5f 5e 5d 5b 83 c4 10 c3 33
005aa7d0: ff eb 8f 33 f6 eb cb cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa6d0 <.text+0x1a96d0>:
  5aa6d0:	83 ec 10                                        	sub    esp,0x10
  5aa6d3:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  5aa6d7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5aa6db:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5aa6df:	89 04 24                                        	mov    DWORD PTR [esp],eax
  5aa6e2:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5aa6e6:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5aa6ea:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  5aa6ee:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5aa6f2:	e8 c9 13 04 00                                  	call   0x5ebac0
  5aa6f7:	85 c0                                           	test   eax,eax
  5aa6f9:	0f 84 cc 00 00 00                               	je     0x5aa7cb
  5aa6ff:	80 b8 38 01 00 00 00                            	cmp    BYTE PTR [eax+0x138],0x0
  5aa706:	0f 84 bf 00 00 00                               	je     0x5aa7cb
  5aa70c:	53                                              	push   ebx
  5aa70d:	55                                              	push   ebp
  5aa70e:	56                                              	push   esi
  5aa70f:	57                                              	push   edi
  5aa710:	e8 7b ec 1b 00                                  	call   0x769390
  5aa715:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  5aa719:	85 f6                                           	test   esi,esi
  5aa71b:	8b 6c 24 38                                     	mov    ebp,DWORD PTR [esp+0x38]
  5aa71f:	8b d8                                           	mov    ebx,eax
  5aa721:	0f 84 a8 00 00 00                               	je     0x5aa7cf
  5aa727:	6a 00                                           	push   0x0
  5aa729:	6a 00                                           	push   0x0
  5aa72b:	6a 00                                           	push   0x0
  5aa72d:	6a 00                                           	push   0x0
  5aa72f:	68 b8 f8 fd 00                                  	push   0xfdf8b8
  5aa734:	6a 18                                           	push   0x18
  5aa736:	e8 c5 9d f3 ff                                  	call   0x4e4500
  5aa73b:	83 c4 18                                        	add    esp,0x18
  5aa73e:	85 c0                                           	test   eax,eax
  5aa740:	0f 84 89 00 00 00                               	je     0x5aa7cf
  5aa746:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  5aa74a:	56                                              	push   esi
  5aa74b:	55                                              	push   ebp
  5aa74c:	51                                              	push   ecx
  5aa74d:	8b c8                                           	mov    ecx,eax
  5aa74f:	e8 ec fc ff ff                                  	call   0x5aa440
  5aa754:	8b f8                                           	mov    edi,eax
  5aa756:	85 ff                                           	test   edi,edi
  5aa758:	74 08                                           	je     0x5aa762
  5aa75a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5aa75c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa75e:	8b cf                                           	mov    ecx,edi
  5aa760:	ff d0                                           	call   eax
  5aa762:	6a 30                                           	push   0x30
  5aa764:	e8 b7 06 1c 00                                  	call   0x76ae20
  5aa769:	8b f0                                           	mov    esi,eax
  5aa76b:	83 c4 04                                        	add    esp,0x4
  5aa76e:	85 f6                                           	test   esi,esi
  5aa770:	74 61                                           	je     0x5aa7d3
  5aa772:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  5aa776:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5aa778:	57                                              	push   edi
  5aa779:	55                                              	push   ebp
  5aa77a:	51                                              	push   ecx
  5aa77b:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5aa77f:	52                                              	push   edx
  5aa780:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5aa786:	8b cb                                           	mov    ecx,ebx
  5aa788:	ff d2                                           	call   edx
  5aa78a:	52                                              	push   edx
  5aa78b:	50                                              	push   eax
  5aa78c:	8b ce                                           	mov    ecx,esi
  5aa78e:	e8 9d fb ff ff                                  	call   0x5aa330
  5aa793:	8b f0                                           	mov    esi,eax
  5aa795:	85 f6                                           	test   esi,esi
  5aa797:	74 09                                           	je     0x5aa7a2
  5aa799:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5aa79b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa79e:	8b ce                                           	mov    ecx,esi
  5aa7a0:	ff d2                                           	call   edx
  5aa7a2:	6a 00                                           	push   0x0
  5aa7a4:	56                                              	push   esi
  5aa7a5:	e8 06 3e 00 00                                  	call   0x5ae5b0
  5aa7aa:	83 c4 08                                        	add    esp,0x8
  5aa7ad:	85 f6                                           	test   esi,esi
  5aa7af:	74 09                                           	je     0x5aa7ba
  5aa7b1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5aa7b3:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5aa7b6:	8b ce                                           	mov    ecx,esi
  5aa7b8:	ff d2                                           	call   edx
  5aa7ba:	85 ff                                           	test   edi,edi
  5aa7bc:	74 09                                           	je     0x5aa7c7
  5aa7be:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aa7c0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa7c3:	8b cf                                           	mov    ecx,edi
  5aa7c5:	ff d2                                           	call   edx
  5aa7c7:	5f                                              	pop    edi
  5aa7c8:	5e                                              	pop    esi
  5aa7c9:	5d                                              	pop    ebp
  5aa7ca:	5b                                              	pop    ebx
  5aa7cb:	83 c4 10                                        	add    esp,0x10
  5aa7ce:	c3                                              	ret
  5aa7cf:	33 ff                                           	xor    edi,edi
  5aa7d1:	eb 8f                                           	jmp    0x5aa762
  5aa7d3:	33 f6                                           	xor    esi,esi
  5aa7d5:	eb cb                                           	jmp    0x5aa7a2
  5aa7d7:	cc                                              	int3
  5aa7d8:	cc                                              	int3
  5aa7d9:	cc                                              	int3
  5aa7da:	cc                                              	int3
  5aa7db:	cc                                              	int3
  5aa7dc:	cc                                              	int3
  5aa7dd:	cc                                              	int3
  5aa7de:	cc                                              	int3
  5aa7df:	cc                                              	int3
