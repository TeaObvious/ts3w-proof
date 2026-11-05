# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b0e0 (World_HandToolGetObjectHeld)
Paired Ghidra pseudocode: 1057B0E0_World_HandToolGetObjectHeld.c
Window: [0x1057b0e0, 0x1057b100) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b0e0: e8 4b ad d5 ff 85 c0 74 09 8b 48 08 8b 50 0c 8b
1057b0f0: c1 c3 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b0e0 <.text+0x57a0e0>:
1057b0e0:	e8 4b ad d5 ff                                  	call   0x102d5e30
1057b0e5:	85 c0                                           	test   eax,eax
1057b0e7:	74 09                                           	je     0x1057b0f2
1057b0e9:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1057b0ec:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1057b0ef:	8b c1                                           	mov    eax,ecx
1057b0f1:	c3                                              	ret
1057b0f2:	33 c0                                           	xor    eax,eax
1057b0f4:	33 d2                                           	xor    edx,edx
1057b0f6:	c3                                              	ret
1057b0f7:	cc                                              	int3
1057b0f8:	cc                                              	int3
1057b0f9:	cc                                              	int3
1057b0fa:	cc                                              	int3
1057b0fb:	cc                                              	int3
1057b0fc:	cc                                              	int3
1057b0fd:	cc                                              	int3
1057b0fe:	cc                                              	int3
1057b0ff:	cc                                              	int3
