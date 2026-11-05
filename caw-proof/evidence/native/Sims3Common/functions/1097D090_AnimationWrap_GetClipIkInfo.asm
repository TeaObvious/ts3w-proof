# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d090 (AnimationWrap_GetClipIkInfo)
Paired Ghidra pseudocode: 1097D090_AnimationWrap_GetClipIkInfo.c
Window: [0x1097d090, 0x1097d0e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d090: 57 8b 7c 24 08 85 ff 74 3e 56 6a 00 6a 00 6a 00
1097d0a0: 6a 00 68 a0 5e b9 10 68 e0 00 00 00 e8 ff bd f9
1097d0b0: ff 83 c4 18 85 c0 74 0b 8b c8 e8 41 81 9f ff 8b
1097d0c0: f0 eb 02 33 f6 8b 47 4c 6a 0a 50 8b ce e8 1e 87
1097d0d0: 9f ff 8b c6 5e 5f c3 33 c0 5f c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097d090 <.text+0x97c090>:
1097d090:	57                                              	push   edi
1097d091:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
1097d095:	85 ff                                           	test   edi,edi
1097d097:	74 3e                                           	je     0x1097d0d7
1097d099:	56                                              	push   esi
1097d09a:	6a 00                                           	push   0x0
1097d09c:	6a 00                                           	push   0x0
1097d09e:	6a 00                                           	push   0x0
1097d0a0:	6a 00                                           	push   0x0
1097d0a2:	68 a0 5e b9 10                                  	push   0x10b95ea0
1097d0a7:	68 e0 00 00 00                                  	push   0xe0
1097d0ac:	e8 ff bd f9 ff                                  	call   0x10918eb0
1097d0b1:	83 c4 18                                        	add    esp,0x18
1097d0b4:	85 c0                                           	test   eax,eax
1097d0b6:	74 0b                                           	je     0x1097d0c3
1097d0b8:	8b c8                                           	mov    ecx,eax
1097d0ba:	e8 41 81 9f ff                                  	call   0x10375200
1097d0bf:	8b f0                                           	mov    esi,eax
1097d0c1:	eb 02                                           	jmp    0x1097d0c5
1097d0c3:	33 f6                                           	xor    esi,esi
1097d0c5:	8b 47 4c                                        	mov    eax,DWORD PTR [edi+0x4c]
1097d0c8:	6a 0a                                           	push   0xa
1097d0ca:	50                                              	push   eax
1097d0cb:	8b ce                                           	mov    ecx,esi
1097d0cd:	e8 1e 87 9f ff                                  	call   0x103757f0
1097d0d2:	8b c6                                           	mov    eax,esi
1097d0d4:	5e                                              	pop    esi
1097d0d5:	5f                                              	pop    edi
1097d0d6:	c3                                              	ret
1097d0d7:	33 c0                                           	xor    eax,eax
1097d0d9:	5f                                              	pop    edi
1097d0da:	c3                                              	ret
1097d0db:	cc                                              	int3
1097d0dc:	cc                                              	int3
1097d0dd:	cc                                              	int3
1097d0de:	cc                                              	int3
1097d0df:	cc                                              	int3
