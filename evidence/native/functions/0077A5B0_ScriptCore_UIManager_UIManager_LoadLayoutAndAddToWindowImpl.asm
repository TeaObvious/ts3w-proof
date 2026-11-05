# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a5b0 (ScriptCore.UIManager::UIManager_LoadLayoutAndAddToWindowImpl)
Paired Ghidra pseudocode: 0077A5B0_ScriptCore_UIManager_UIManager_LoadLayoutAndAddToWindowImpl.c
Window: [0x0077a5b0, 0x0077a6f0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a5b0: 83 ec 10 53 56 57 e8 d5 ed fe ff 8b d8 8b 44 24
0077a5c0: 30 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f
0077a5d0: 85 0c 01 00 00 8b 13 50 8b 82 cc 00 00 00 8b cb
0077a5e0: ff d0 85 c0 0f 84 f7 00 00 00 8b 10 8b c8 8b 42
0077a5f0: 0c 68 18 82 ee ee ff d0 8b f8 85 ff 0f 84 df 00
0077a600: 00 00 e8 79 58 d3 ff 85 c0 0f 84 d2 00 00 00 8b
0077a610: 4c 24 20 8b 54 24 24 8b 44 24 2c 6a 00 6a 00 6a
0077a620: 00 6a 00 89 4c 24 1c 8b 4c 24 38 68 58 f0 00 01
0077a630: 68 c0 00 00 00 89 54 24 28 89 44 24 2c 89 4c 24
0077a640: 30 e8 ba 9e d6 ff 83 c4 18 85 c0 74 0b 8b c8 e8
0077a650: cc d8 06 00 8b f0 eb 02 33 f6 83 86 a4 00 00 00
0077a660: 01 8b 54 24 0c 8b 4c 24 10 83 ec 10 8b c4 89 10
0077a670: 8b 54 24 24 89 48 04 8b 4c 24 28 89 50 08 89 48
0077a680: 0c 8b ce e8 18 ee 06 00 6a 03 e8 11 fc dc ff 50
0077a690: 8b ce e8 29 f6 dc ff 57 8d 54 24 10 52 8b ce e8
0077a6a0: dc d8 06 00 8b 07 8b 50 1c 8b cf ff d2 3d 00 d5
0077a6b0: 72 03 72 17 8b 07 8b 50 1c 8b cf ff d2 3d 12 d5
0077a6c0: 72 03 77 07 8b ce e8 15 da 06 00 8b 03 8b 90 c8
0077a6d0: 00 00 00 6a 30 56 8b cb ff d2 5f 5e 5b 83 c4 10
0077a6e0: c3 5f 5e 33 c0 5b 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a5b0 <.text+0x3795b0>:
  77a5b0:	83 ec 10                                        	sub    esp,0x10
  77a5b3:	53                                              	push   ebx
  77a5b4:	56                                              	push   esi
  77a5b5:	57                                              	push   edi
  77a5b6:	e8 d5 ed fe ff                                  	call   0x769390
  77a5bb:	8b d8                                           	mov    ebx,eax
  77a5bd:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  77a5c1:	8b c8                                           	mov    ecx,eax
  77a5c3:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77a5c9:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77a5cf:	0f 85 0c 01 00 00                               	jne    0x77a6e1
  77a5d5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77a5d7:	50                                              	push   eax
  77a5d8:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77a5de:	8b cb                                           	mov    ecx,ebx
  77a5e0:	ff d0                                           	call   eax
  77a5e2:	85 c0                                           	test   eax,eax
  77a5e4:	0f 84 f7 00 00 00                               	je     0x77a6e1
  77a5ea:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a5ec:	8b c8                                           	mov    ecx,eax
  77a5ee:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77a5f1:	68 18 82 ee ee                                  	push   0xeeee8218
  77a5f6:	ff d0                                           	call   eax
  77a5f8:	8b f8                                           	mov    edi,eax
  77a5fa:	85 ff                                           	test   edi,edi
  77a5fc:	0f 84 df 00 00 00                               	je     0x77a6e1
  77a602:	e8 79 58 d3 ff                                  	call   0x4afe80
  77a607:	85 c0                                           	test   eax,eax
  77a609:	0f 84 d2 00 00 00                               	je     0x77a6e1
  77a60f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  77a613:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  77a617:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  77a61b:	6a 00                                           	push   0x0
  77a61d:	6a 00                                           	push   0x0
  77a61f:	6a 00                                           	push   0x0
  77a621:	6a 00                                           	push   0x0
  77a623:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  77a627:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77a62b:	68 58 f0 00 01                                  	push   0x100f058
  77a630:	68 c0 00 00 00                                  	push   0xc0
  77a635:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  77a639:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  77a63d:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  77a641:	e8 ba 9e d6 ff                                  	call   0x4e4500
  77a646:	83 c4 18                                        	add    esp,0x18
  77a649:	85 c0                                           	test   eax,eax
  77a64b:	74 0b                                           	je     0x77a658
  77a64d:	8b c8                                           	mov    ecx,eax
  77a64f:	e8 cc d8 06 00                                  	call   0x7e7f20
  77a654:	8b f0                                           	mov    esi,eax
  77a656:	eb 02                                           	jmp    0x77a65a
  77a658:	33 f6                                           	xor    esi,esi
  77a65a:	83 86 a4 00 00 00 01                            	add    DWORD PTR [esi+0xa4],0x1
  77a661:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77a665:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77a669:	83 ec 10                                        	sub    esp,0x10
  77a66c:	8b c4                                           	mov    eax,esp
  77a66e:	89 10                                           	mov    DWORD PTR [eax],edx
  77a670:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  77a674:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  77a677:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  77a67b:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  77a67e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  77a681:	8b ce                                           	mov    ecx,esi
  77a683:	e8 18 ee 06 00                                  	call   0x7e94a0
  77a688:	6a 03                                           	push   0x3
  77a68a:	e8 11 fc dc ff                                  	call   0x54a2a0
  77a68f:	50                                              	push   eax
  77a690:	8b ce                                           	mov    ecx,esi
  77a692:	e8 29 f6 dc ff                                  	call   0x549cc0
  77a697:	57                                              	push   edi
  77a698:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  77a69c:	52                                              	push   edx
  77a69d:	8b ce                                           	mov    ecx,esi
  77a69f:	e8 dc d8 06 00                                  	call   0x7e7f80
  77a6a4:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77a6a6:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  77a6a9:	8b cf                                           	mov    ecx,edi
  77a6ab:	ff d2                                           	call   edx
  77a6ad:	3d 00 d5 72 03                                  	cmp    eax,0x372d500
  77a6b2:	72 17                                           	jb     0x77a6cb
  77a6b4:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77a6b6:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  77a6b9:	8b cf                                           	mov    ecx,edi
  77a6bb:	ff d2                                           	call   edx
  77a6bd:	3d 12 d5 72 03                                  	cmp    eax,0x372d512
  77a6c2:	77 07                                           	ja     0x77a6cb
  77a6c4:	8b ce                                           	mov    ecx,esi
  77a6c6:	e8 15 da 06 00                                  	call   0x7e80e0
  77a6cb:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  77a6cd:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  77a6d3:	6a 30                                           	push   0x30
  77a6d5:	56                                              	push   esi
  77a6d6:	8b cb                                           	mov    ecx,ebx
  77a6d8:	ff d2                                           	call   edx
  77a6da:	5f                                              	pop    edi
  77a6db:	5e                                              	pop    esi
  77a6dc:	5b                                              	pop    ebx
  77a6dd:	83 c4 10                                        	add    esp,0x10
  77a6e0:	c3                                              	ret
  77a6e1:	5f                                              	pop    edi
  77a6e2:	5e                                              	pop    esi
  77a6e3:	33 c0                                           	xor    eax,eax
  77a6e5:	5b                                              	pop    ebx
  77a6e6:	83 c4 10                                        	add    esp,0x10
  77a6e9:	c3                                              	ret
  77a6ea:	cc                                              	int3
  77a6eb:	cc                                              	int3
  77a6ec:	cc                                              	int3
  77a6ed:	cc                                              	int3
  77a6ee:	cc                                              	int3
  77a6ef:	cc                                              	int3
