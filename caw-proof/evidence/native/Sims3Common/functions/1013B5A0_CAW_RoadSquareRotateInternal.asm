# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1013b5a0 (CAW_RoadSquareRotateInternal)
Paired Ghidra pseudocode: 1013B5A0_CAW_RoadSquareRotateInternal.c
Window: [0x1013b5a0, 0x1013b600) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1013b600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1013b5a0: 56 8b f1 80 7e 24 00 75 4c 80 7e 0c 00 a1 c4 00
1013b5b0: c7 10 57 8b 78 5c 75 0b 8d 4e 10 51 8b cf e8 2d
1013b5c0: 5a 00 00 8b 16 f3 0f 10 44 24 0c f3 0f 58 46 40
1013b5d0: 8b 42 44 53 8a 5c 24 14 8b ce 88 5e 0c f3 0f 11
1013b5e0: 46 40 ff d0 84 db 5b 75 0b 83 c6 10 56 8b cf e8
1013b5f0: fc 59 00 00 5f 5e c2 08 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1013b5a0 <.text+0x13a5a0>:
1013b5a0:	56                                              	push   esi
1013b5a1:	8b f1                                           	mov    esi,ecx
1013b5a3:	80 7e 24 00                                     	cmp    BYTE PTR [esi+0x24],0x0
1013b5a7:	75 4c                                           	jne    0x1013b5f5
1013b5a9:	80 7e 0c 00                                     	cmp    BYTE PTR [esi+0xc],0x0
1013b5ad:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
1013b5b2:	57                                              	push   edi
1013b5b3:	8b 78 5c                                        	mov    edi,DWORD PTR [eax+0x5c]
1013b5b6:	75 0b                                           	jne    0x1013b5c3
1013b5b8:	8d 4e 10                                        	lea    ecx,[esi+0x10]
1013b5bb:	51                                              	push   ecx
1013b5bc:	8b cf                                           	mov    ecx,edi
1013b5be:	e8 2d 5a 00 00                                  	call   0x10140ff0
1013b5c3:	8b 16                                           	mov    edx,DWORD PTR [esi]
1013b5c5:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1013b5cb:	f3 0f 58 46 40                                  	addss  xmm0,DWORD PTR [esi+0x40]
1013b5d0:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
1013b5d3:	53                                              	push   ebx
1013b5d4:	8a 5c 24 14                                     	mov    bl,BYTE PTR [esp+0x14]
1013b5d8:	8b ce                                           	mov    ecx,esi
1013b5da:	88 5e 0c                                        	mov    BYTE PTR [esi+0xc],bl
1013b5dd:	f3 0f 11 46 40                                  	movss  DWORD PTR [esi+0x40],xmm0
1013b5e2:	ff d0                                           	call   eax
1013b5e4:	84 db                                           	test   bl,bl
1013b5e6:	5b                                              	pop    ebx
1013b5e7:	75 0b                                           	jne    0x1013b5f4
1013b5e9:	83 c6 10                                        	add    esi,0x10
1013b5ec:	56                                              	push   esi
1013b5ed:	8b cf                                           	mov    ecx,edi
1013b5ef:	e8 fc 59 00 00                                  	call   0x10140ff0
1013b5f4:	5f                                              	pop    edi
1013b5f5:	5e                                              	pop    esi
1013b5f6:	c2 08 00                                        	ret    0x8
1013b5f9:	cc                                              	int3
1013b5fa:	cc                                              	int3
1013b5fb:	cc                                              	int3
1013b5fc:	cc                                              	int3
1013b5fd:	cc                                              	int3
1013b5fe:	cc                                              	int3
1013b5ff:	cc                                              	int3
