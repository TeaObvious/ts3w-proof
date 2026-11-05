# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a6f0 (ScriptCore.UIManager::UIManager_LoadLayoutAndAddToWindowByIDImpl)
Paired Ghidra pseudocode: 0077A6F0_ScriptCore_UIManager_UIManager_LoadLayoutAndAddToWindowByIDImpl.c
Window: [0x0077a6f0, 0x0077a820) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a6f0: 83 ec 10 53 56 57 e8 95 ec fe ff 8b d8 e8 8e 08
0077a700: d9 ff 85 c0 0f 84 05 01 00 00 8b 10 8b c8 8b 42
0077a710: 04 ff d0 8b 4c 24 30 8b 10 8b 92 f4 00 00 00 6a
0077a720: 01 51 8b c8 ff d2 8b f8 85 ff 0f 84 df 00 00 00
0077a730: e8 4b 57 d3 ff 85 c0 0f 84 d2 00 00 00 8b 44 24
0077a740: 20 8b 4c 24 24 8b 54 24 2c 6a 00 6a 00 6a 00 6a
0077a750: 00 89 44 24 1c 8b 44 24 38 68 58 f0 00 01 68 c0
0077a760: 00 00 00 89 4c 24 28 89 54 24 2c 89 44 24 30 e8
0077a770: 8c 9d d6 ff 83 c4 18 85 c0 74 0b 8b c8 e8 9e d7
0077a780: 06 00 8b f0 eb 02 33 f6 83 86 a4 00 00 00 01 8b
0077a790: 4c 24 0c 8b 54 24 10 83 ec 10 8b c4 89 08 8b 4c
0077a7a0: 24 24 89 50 04 8b 54 24 28 89 48 08 8b ce 89 50
0077a7b0: 0c e8 ea ec 06 00 6a 03 e8 e3 fa dc ff 50 8b ce
0077a7c0: e8 fb f4 dc ff 57 8d 44 24 10 50 8b ce e8 ae d7
0077a7d0: 06 00 8b 17 8b 42 1c 8b cf ff d0 3d 00 d5 72 03
0077a7e0: 72 17 8b 17 8b 42 1c 8b cf ff d0 3d 12 d5 72 03
0077a7f0: 77 07 8b ce e8 e7 d8 06 00 8b 13 8b 82 c8 00 00
0077a800: 00 6a 30 56 8b cb ff d0 5f 5e 5b 83 c4 10 c3 5f
0077a810: 5e 33 c0 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a6f0 <.text+0x3796f0>:
  77a6f0:	83 ec 10                                        	sub    esp,0x10
  77a6f3:	53                                              	push   ebx
  77a6f4:	56                                              	push   esi
  77a6f5:	57                                              	push   edi
  77a6f6:	e8 95 ec fe ff                                  	call   0x769390
  77a6fb:	8b d8                                           	mov    ebx,eax
  77a6fd:	e8 8e 08 d9 ff                                  	call   0x50af90
  77a702:	85 c0                                           	test   eax,eax
  77a704:	0f 84 05 01 00 00                               	je     0x77a80f
  77a70a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a70c:	8b c8                                           	mov    ecx,eax
  77a70e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77a711:	ff d0                                           	call   eax
  77a713:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  77a717:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a719:	8b 92 f4 00 00 00                               	mov    edx,DWORD PTR [edx+0xf4]
  77a71f:	6a 01                                           	push   0x1
  77a721:	51                                              	push   ecx
  77a722:	8b c8                                           	mov    ecx,eax
  77a724:	ff d2                                           	call   edx
  77a726:	8b f8                                           	mov    edi,eax
  77a728:	85 ff                                           	test   edi,edi
  77a72a:	0f 84 df 00 00 00                               	je     0x77a80f
  77a730:	e8 4b 57 d3 ff                                  	call   0x4afe80
  77a735:	85 c0                                           	test   eax,eax
  77a737:	0f 84 d2 00 00 00                               	je     0x77a80f
  77a73d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77a741:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  77a745:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  77a749:	6a 00                                           	push   0x0
  77a74b:	6a 00                                           	push   0x0
  77a74d:	6a 00                                           	push   0x0
  77a74f:	6a 00                                           	push   0x0
  77a751:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  77a755:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  77a759:	68 58 f0 00 01                                  	push   0x100f058
  77a75e:	68 c0 00 00 00                                  	push   0xc0
  77a763:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  77a767:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  77a76b:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  77a76f:	e8 8c 9d d6 ff                                  	call   0x4e4500
  77a774:	83 c4 18                                        	add    esp,0x18
  77a777:	85 c0                                           	test   eax,eax
  77a779:	74 0b                                           	je     0x77a786
  77a77b:	8b c8                                           	mov    ecx,eax
  77a77d:	e8 9e d7 06 00                                  	call   0x7e7f20
  77a782:	8b f0                                           	mov    esi,eax
  77a784:	eb 02                                           	jmp    0x77a788
  77a786:	33 f6                                           	xor    esi,esi
  77a788:	83 86 a4 00 00 00 01                            	add    DWORD PTR [esi+0xa4],0x1
  77a78f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77a793:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77a797:	83 ec 10                                        	sub    esp,0x10
  77a79a:	8b c4                                           	mov    eax,esp
  77a79c:	89 08                                           	mov    DWORD PTR [eax],ecx
  77a79e:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  77a7a2:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  77a7a5:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  77a7a9:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  77a7ac:	8b ce                                           	mov    ecx,esi
  77a7ae:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  77a7b1:	e8 ea ec 06 00                                  	call   0x7e94a0
  77a7b6:	6a 03                                           	push   0x3
  77a7b8:	e8 e3 fa dc ff                                  	call   0x54a2a0
  77a7bd:	50                                              	push   eax
  77a7be:	8b ce                                           	mov    ecx,esi
  77a7c0:	e8 fb f4 dc ff                                  	call   0x549cc0
  77a7c5:	57                                              	push   edi
  77a7c6:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  77a7ca:	50                                              	push   eax
  77a7cb:	8b ce                                           	mov    ecx,esi
  77a7cd:	e8 ae d7 06 00                                  	call   0x7e7f80
  77a7d2:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77a7d4:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  77a7d7:	8b cf                                           	mov    ecx,edi
  77a7d9:	ff d0                                           	call   eax
  77a7db:	3d 00 d5 72 03                                  	cmp    eax,0x372d500
  77a7e0:	72 17                                           	jb     0x77a7f9
  77a7e2:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77a7e4:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  77a7e7:	8b cf                                           	mov    ecx,edi
  77a7e9:	ff d0                                           	call   eax
  77a7eb:	3d 12 d5 72 03                                  	cmp    eax,0x372d512
  77a7f0:	77 07                                           	ja     0x77a7f9
  77a7f2:	8b ce                                           	mov    ecx,esi
  77a7f4:	e8 e7 d8 06 00                                  	call   0x7e80e0
  77a7f9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77a7fb:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  77a801:	6a 30                                           	push   0x30
  77a803:	56                                              	push   esi
  77a804:	8b cb                                           	mov    ecx,ebx
  77a806:	ff d0                                           	call   eax
  77a808:	5f                                              	pop    edi
  77a809:	5e                                              	pop    esi
  77a80a:	5b                                              	pop    ebx
  77a80b:	83 c4 10                                        	add    esp,0x10
  77a80e:	c3                                              	ret
  77a80f:	5f                                              	pop    edi
  77a810:	5e                                              	pop    esi
  77a811:	33 c0                                           	xor    eax,eax
  77a813:	5b                                              	pop    ebx
  77a814:	83 c4 10                                        	add    esp,0x10
  77a817:	c3                                              	ret
  77a818:	cc                                              	int3
  77a819:	cc                                              	int3
  77a81a:	cc                                              	int3
  77a81b:	cc                                              	int3
  77a81c:	cc                                              	int3
  77a81d:	cc                                              	int3
  77a81e:	cc                                              	int3
  77a81f:	cc                                              	int3
