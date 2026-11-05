# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e610 (SceneManWrap_Init)
Paired Ghidra pseudocode: 1098E610_SceneManWrap_Init.c
Window: [0x1098e610, 0x1098e670) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e610: 56 8b 74 24 08 8b ce e8 54 b4 b5 ff 84 c0 74 46
1098e620: 8b 46 0c 53 8a 5c 24 10 88 58 19 e8 70 fd b4 ff
1098e630: 3b f0 75 0f e8 67 4b b6 ff 85 c0 74 06 88 98 b9
1098e640: 10 00 00 e8 58 fd b4 ff 3b c6 5b 75 12 e8 0e eb
1098e650: b7 ff 85 c0 74 09 8b 10 8b c8 8b 02 56 ff d0 b8
1098e660: 01 00 00 00 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e610 <.text+0x98d610>:
1098e610:	56                                              	push   esi
1098e611:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098e615:	8b ce                                           	mov    ecx,esi
1098e617:	e8 54 b4 b5 ff                                  	call   0x104e9a70
1098e61c:	84 c0                                           	test   al,al
1098e61e:	74 46                                           	je     0x1098e666
1098e620:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
1098e623:	53                                              	push   ebx
1098e624:	8a 5c 24 10                                     	mov    bl,BYTE PTR [esp+0x10]
1098e628:	88 58 19                                        	mov    BYTE PTR [eax+0x19],bl
1098e62b:	e8 70 fd b4 ff                                  	call   0x104de3a0
1098e630:	3b f0                                           	cmp    esi,eax
1098e632:	75 0f                                           	jne    0x1098e643
1098e634:	e8 67 4b b6 ff                                  	call   0x104f31a0
1098e639:	85 c0                                           	test   eax,eax
1098e63b:	74 06                                           	je     0x1098e643
1098e63d:	88 98 b9 10 00 00                               	mov    BYTE PTR [eax+0x10b9],bl
1098e643:	e8 58 fd b4 ff                                  	call   0x104de3a0
1098e648:	3b c6                                           	cmp    eax,esi
1098e64a:	5b                                              	pop    ebx
1098e64b:	75 12                                           	jne    0x1098e65f
1098e64d:	e8 0e eb b7 ff                                  	call   0x1050d160
1098e652:	85 c0                                           	test   eax,eax
1098e654:	74 09                                           	je     0x1098e65f
1098e656:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098e658:	8b c8                                           	mov    ecx,eax
1098e65a:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098e65c:	56                                              	push   esi
1098e65d:	ff d0                                           	call   eax
1098e65f:	b8 01 00 00 00                                  	mov    eax,0x1
1098e664:	5e                                              	pop    esi
1098e665:	c3                                              	ret
1098e666:	33 c0                                           	xor    eax,eax
1098e668:	5e                                              	pop    esi
1098e669:	c3                                              	ret
1098e66a:	cc                                              	int3
1098e66b:	cc                                              	int3
1098e66c:	cc                                              	int3
1098e66d:	cc                                              	int3
1098e66e:	cc                                              	int3
1098e66f:	cc                                              	int3
