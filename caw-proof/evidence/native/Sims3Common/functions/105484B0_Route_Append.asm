# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105484b0 (Route_Append)
Paired Ghidra pseudocode: 105484B0_Route_Append.c
Window: [0x105484b0, 0x105484c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105484c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105484b0: e9 7b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105484b0 <.text+0x5474b0>:
105484b0:	e9 7b d7 ff ff                                  	jmp    0x10545c30
105484b5:	cc                                              	int3
105484b6:	cc                                              	int3
105484b7:	cc                                              	int3
105484b8:	cc                                              	int3
105484b9:	cc                                              	int3
105484ba:	cc                                              	int3
105484bb:	cc                                              	int3
105484bc:	cc                                              	int3
105484bd:	cc                                              	int3
105484be:	cc                                              	int3
105484bf:	cc                                              	int3
