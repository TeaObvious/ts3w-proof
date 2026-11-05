# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077f580 (ScriptCore.UIManager::UIManager_ToggleDebugLayoutNamesVisibleImpl)
Paired Ghidra pseudocode: 0077F580_ScriptCore_UIManager_UIManager_ToggleDebugLayoutNamesVisibleImpl.c
Window: [0x0077f580, 0x0077f630) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077f630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077f580: e8 0b ba d8 ff 85 c0 0f 84 9c 00 00 00 80 3d 90
0077f590: 79 1d 01 00 8b 0d 88 79 1d 01 0f 94 05 90 79 1d
0077f5a0: 01 8b 41 0c 56 8b 30 85 f6 75 11 83 c0 04 39 30
0077f5b0: 75 08 83 c0 04 83 38 00 74 f8 8b 30 8b 51 10 8b
0077f5c0: 49 0c 53 55 8b 2c 91 3b f5 8b d8 74 59 57 8b ff
0077f5d0: 80 3d 90 79 1d 01 00 74 11 8b 56 04 8b 06 52 50
0077f5e0: e8 2b fe ff ff 83 c4 08 eb 26 8b 3e 8b 17 8b 82
0077f5f0: f4 00 00 00 6a 00 68 30 d3 12 08 8b cf ff d0 85
0077f600: c0 74 0d 8b 17 50 8b 82 e0 00 00 00 8b cf ff d0
0077f610: 8b 76 14 85 f6 75 0a 8b 73 04 83 c3 04 85 f6 74
0077f620: f6 3b f5 75 ab 5f 5d 5b 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077f580 <.text+0x37e580>:
  77f580:	e8 0b ba d8 ff                                  	call   0x50af90
  77f585:	85 c0                                           	test   eax,eax
  77f587:	0f 84 9c 00 00 00                               	je     0x77f629
  77f58d:	80 3d 90 79 1d 01 00                            	cmp    BYTE PTR ds:0x11d7990,0x0
  77f594:	8b 0d 88 79 1d 01                               	mov    ecx,DWORD PTR ds:0x11d7988
  77f59a:	0f 94 05 90 79 1d 01                            	sete   BYTE PTR ds:0x11d7990
  77f5a1:	8b 41 0c                                        	mov    eax,DWORD PTR [ecx+0xc]
  77f5a4:	56                                              	push   esi
  77f5a5:	8b 30                                           	mov    esi,DWORD PTR [eax]
  77f5a7:	85 f6                                           	test   esi,esi
  77f5a9:	75 11                                           	jne    0x77f5bc
  77f5ab:	83 c0 04                                        	add    eax,0x4
  77f5ae:	39 30                                           	cmp    DWORD PTR [eax],esi
  77f5b0:	75 08                                           	jne    0x77f5ba
  77f5b2:	83 c0 04                                        	add    eax,0x4
  77f5b5:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
  77f5b8:	74 f8                                           	je     0x77f5b2
  77f5ba:	8b 30                                           	mov    esi,DWORD PTR [eax]
  77f5bc:	8b 51 10                                        	mov    edx,DWORD PTR [ecx+0x10]
  77f5bf:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
  77f5c2:	53                                              	push   ebx
  77f5c3:	55                                              	push   ebp
  77f5c4:	8b 2c 91                                        	mov    ebp,DWORD PTR [ecx+edx*4]
  77f5c7:	3b f5                                           	cmp    esi,ebp
  77f5c9:	8b d8                                           	mov    ebx,eax
  77f5cb:	74 59                                           	je     0x77f626
  77f5cd:	57                                              	push   edi
  77f5ce:	8b ff                                           	mov    edi,edi
  77f5d0:	80 3d 90 79 1d 01 00                            	cmp    BYTE PTR ds:0x11d7990,0x0
  77f5d7:	74 11                                           	je     0x77f5ea
  77f5d9:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  77f5dc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77f5de:	52                                              	push   edx
  77f5df:	50                                              	push   eax
  77f5e0:	e8 2b fe ff ff                                  	call   0x77f410
  77f5e5:	83 c4 08                                        	add    esp,0x8
  77f5e8:	eb 26                                           	jmp    0x77f610
  77f5ea:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  77f5ec:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77f5ee:	8b 82 f4 00 00 00                               	mov    eax,DWORD PTR [edx+0xf4]
  77f5f4:	6a 00                                           	push   0x0
  77f5f6:	68 30 d3 12 08                                  	push   0x812d330
  77f5fb:	8b cf                                           	mov    ecx,edi
  77f5fd:	ff d0                                           	call   eax
  77f5ff:	85 c0                                           	test   eax,eax
  77f601:	74 0d                                           	je     0x77f610
  77f603:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77f605:	50                                              	push   eax
  77f606:	8b 82 e0 00 00 00                               	mov    eax,DWORD PTR [edx+0xe0]
  77f60c:	8b cf                                           	mov    ecx,edi
  77f60e:	ff d0                                           	call   eax
  77f610:	8b 76 14                                        	mov    esi,DWORD PTR [esi+0x14]
  77f613:	85 f6                                           	test   esi,esi
  77f615:	75 0a                                           	jne    0x77f621
  77f617:	8b 73 04                                        	mov    esi,DWORD PTR [ebx+0x4]
  77f61a:	83 c3 04                                        	add    ebx,0x4
  77f61d:	85 f6                                           	test   esi,esi
  77f61f:	74 f6                                           	je     0x77f617
  77f621:	3b f5                                           	cmp    esi,ebp
  77f623:	75 ab                                           	jne    0x77f5d0
  77f625:	5f                                              	pop    edi
  77f626:	5d                                              	pop    ebp
  77f627:	5b                                              	pop    ebx
  77f628:	5e                                              	pop    esi
  77f629:	c3                                              	ret
  77f62a:	cc                                              	int3
  77f62b:	cc                                              	int3
  77f62c:	cc                                              	int3
  77f62d:	cc                                              	int3
  77f62e:	cc                                              	int3
  77f62f:	cc                                              	int3
