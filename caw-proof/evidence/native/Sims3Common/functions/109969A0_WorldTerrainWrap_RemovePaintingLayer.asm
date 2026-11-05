# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109969a0 (WorldTerrainWrap_RemovePaintingLayer)
Paired Ghidra pseudocode: 109969A0_WorldTerrainWrap_RemovePaintingLayer.c
Window: [0x109969a0, 0x109969f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x109969f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109969a0: 8b 44 24 04 85 c0 74 3f 57 8b 78 64 85 ff 74 36
109969b0: 56 8b cf e8 98 00 d2 ff 8b f0 85 f6 74 27 53 8b
109969c0: 5c 24 14 53 8b ce e8 25 b7 85 ff 84 c0 74 15 0f
109969d0: b6 c3 50 8b cf e8 d6 5d 86 ff 5b 8b ce 5e 5f e9
109969e0: 4c 9b 85 ff 5b 5e 5f c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109969a0 <.text+0x9959a0>:
109969a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109969a4:	85 c0                                           	test   eax,eax
109969a6:	74 3f                                           	je     0x109969e7
109969a8:	57                                              	push   edi
109969a9:	8b 78 64                                        	mov    edi,DWORD PTR [eax+0x64]
109969ac:	85 ff                                           	test   edi,edi
109969ae:	74 36                                           	je     0x109969e6
109969b0:	56                                              	push   esi
109969b1:	8b cf                                           	mov    ecx,edi
109969b3:	e8 98 00 d2 ff                                  	call   0x106b6a50
109969b8:	8b f0                                           	mov    esi,eax
109969ba:	85 f6                                           	test   esi,esi
109969bc:	74 27                                           	je     0x109969e5
109969be:	53                                              	push   ebx
109969bf:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
109969c3:	53                                              	push   ebx
109969c4:	8b ce                                           	mov    ecx,esi
109969c6:	e8 25 b7 85 ff                                  	call   0x101f20f0
109969cb:	84 c0                                           	test   al,al
109969cd:	74 15                                           	je     0x109969e4
109969cf:	0f b6 c3                                        	movzx  eax,bl
109969d2:	50                                              	push   eax
109969d3:	8b cf                                           	mov    ecx,edi
109969d5:	e8 d6 5d 86 ff                                  	call   0x101fc7b0
109969da:	5b                                              	pop    ebx
109969db:	8b ce                                           	mov    ecx,esi
109969dd:	5e                                              	pop    esi
109969de:	5f                                              	pop    edi
109969df:	e9 4c 9b 85 ff                                  	jmp    0x101f0530
109969e4:	5b                                              	pop    ebx
109969e5:	5e                                              	pop    esi
109969e6:	5f                                              	pop    edi
109969e7:	c3                                              	ret
109969e8:	cc                                              	int3
109969e9:	cc                                              	int3
109969ea:	cc                                              	int3
109969eb:	cc                                              	int3
109969ec:	cc                                              	int3
109969ed:	cc                                              	int3
109969ee:	cc                                              	int3
109969ef:	cc                                              	int3
