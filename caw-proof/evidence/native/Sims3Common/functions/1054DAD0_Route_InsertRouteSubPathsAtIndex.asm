# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054dad0 (Route_InsertRouteSubPathsAtIndex)
Paired Ghidra pseudocode: 1054DAD0_Route_InsertRouteSubPathsAtIndex.c
Window: [0x1054dad0, 0x1054dae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054dae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054dad0: e9 cb c8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054dad0 <.text+0x54cad0>:
1054dad0:	e9 cb c8 ff ff                                  	jmp    0x1054a3a0
1054dad5:	cc                                              	int3
1054dad6:	cc                                              	int3
1054dad7:	cc                                              	int3
1054dad8:	cc                                              	int3
1054dad9:	cc                                              	int3
1054dada:	cc                                              	int3
1054dadb:	cc                                              	int3
1054dadc:	cc                                              	int3
1054dadd:	cc                                              	int3
1054dade:	cc                                              	int3
1054dadf:	cc                                              	int3
