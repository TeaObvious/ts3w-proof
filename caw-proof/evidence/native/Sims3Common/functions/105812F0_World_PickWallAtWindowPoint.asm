# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105812f0 (World_PickWallAtWindowPoint)
Paired Ghidra pseudocode: 105812F0_World_PickWallAtWindowPoint.c
Window: [0x105812f0, 0x10581300) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105812f0: e9 eb cf ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105812f0 <.text+0x5802f0>:
105812f0:	e9 eb cf ff ff                                  	jmp    0x1057e2e0
105812f5:	cc                                              	int3
105812f6:	cc                                              	int3
105812f7:	cc                                              	int3
105812f8:	cc                                              	int3
105812f9:	cc                                              	int3
105812fa:	cc                                              	int3
105812fb:	cc                                              	int3
105812fc:	cc                                              	int3
105812fd:	cc                                              	int3
105812fe:	cc                                              	int3
105812ff:	cc                                              	int3
