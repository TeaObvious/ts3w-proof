# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e550 (SacsWrap_SelectOnDestinationNode_Create)
Paired Ghidra pseudocode: 1098E550_SacsWrap_SelectOnDestinationNode_Create.c
Window: [0x1098e550, 0x1098e590) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e550: 56 6a 00 6a 00 6a 00 6a 00 68 6c 71 b9 10 6a 50
1098e560: e8 4b a9 f8 ff 8b f0 83 c4 18 85 f6 74 11 8b ce
1098e570: e8 cb 2e c6 ff c7 06 b0 05 b3 10 8b c6 5e c3 33
1098e580: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e550 <.text+0x98d550>:
1098e550:	56                                              	push   esi
1098e551:	6a 00                                           	push   0x0
1098e553:	6a 00                                           	push   0x0
1098e555:	6a 00                                           	push   0x0
1098e557:	6a 00                                           	push   0x0
1098e559:	68 6c 71 b9 10                                  	push   0x10b9716c
1098e55e:	6a 50                                           	push   0x50
1098e560:	e8 4b a9 f8 ff                                  	call   0x10918eb0
1098e565:	8b f0                                           	mov    esi,eax
1098e567:	83 c4 18                                        	add    esp,0x18
1098e56a:	85 f6                                           	test   esi,esi
1098e56c:	74 11                                           	je     0x1098e57f
1098e56e:	8b ce                                           	mov    ecx,esi
1098e570:	e8 cb 2e c6 ff                                  	call   0x105f1440
1098e575:	c7 06 b0 05 b3 10                               	mov    DWORD PTR [esi],0x10b305b0
1098e57b:	8b c6                                           	mov    eax,esi
1098e57d:	5e                                              	pop    esi
1098e57e:	c3                                              	ret
1098e57f:	33 c0                                           	xor    eax,eax
1098e581:	5e                                              	pop    esi
1098e582:	c3                                              	ret
1098e583:	cc                                              	int3
1098e584:	cc                                              	int3
1098e585:	cc                                              	int3
1098e586:	cc                                              	int3
1098e587:	cc                                              	int3
1098e588:	cc                                              	int3
1098e589:	cc                                              	int3
1098e58a:	cc                                              	int3
1098e58b:	cc                                              	int3
1098e58c:	cc                                              	int3
1098e58d:	cc                                              	int3
1098e58e:	cc                                              	int3
1098e58f:	cc                                              	int3
