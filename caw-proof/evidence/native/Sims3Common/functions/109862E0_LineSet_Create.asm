# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109862e0 (LineSet_Create)
Paired Ghidra pseudocode: 109862E0_LineSet_Create.c
Window: [0x109862e0, 0x10986310) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109862e0: 6a 00 6a 00 6a 00 6a 00 68 c4 69 b9 10 6a 1c e8
109862f0: bc 2b f9 ff 83 c4 18 85 c0 74 07 8b c8 e9 4e 8c
10986300: b3 ff 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109862e0 <.text+0x9852e0>:
109862e0:	6a 00                                           	push   0x0
109862e2:	6a 00                                           	push   0x0
109862e4:	6a 00                                           	push   0x0
109862e6:	6a 00                                           	push   0x0
109862e8:	68 c4 69 b9 10                                  	push   0x10b969c4
109862ed:	6a 1c                                           	push   0x1c
109862ef:	e8 bc 2b f9 ff                                  	call   0x10918eb0
109862f4:	83 c4 18                                        	add    esp,0x18
109862f7:	85 c0                                           	test   eax,eax
109862f9:	74 07                                           	je     0x10986302
109862fb:	8b c8                                           	mov    ecx,eax
109862fd:	e9 4e 8c b3 ff                                  	jmp    0x104bef50
10986302:	33 c0                                           	xor    eax,eax
10986304:	c3                                              	ret
10986305:	cc                                              	int3
10986306:	cc                                              	int3
10986307:	cc                                              	int3
10986308:	cc                                              	int3
10986309:	cc                                              	int3
1098630a:	cc                                              	int3
1098630b:	cc                                              	int3
1098630c:	cc                                              	int3
1098630d:	cc                                              	int3
1098630e:	cc                                              	int3
1098630f:	cc                                              	int3
