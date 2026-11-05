# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540840 (Route_GetObjectsToIgnoreForRoute)
Paired Ghidra pseudocode: 10540840_Route_GetObjectsToIgnoreForRoute.c
Window: [0x10540840, 0x10540850) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540840: e9 bb d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540840 <.text+0x53f840>:
10540840:	e9 bb d7 ff ff                                  	jmp    0x1053e000
10540845:	cc                                              	int3
10540846:	cc                                              	int3
10540847:	cc                                              	int3
10540848:	cc                                              	int3
10540849:	cc                                              	int3
1054084a:	cc                                              	int3
1054084b:	cc                                              	int3
1054084c:	cc                                              	int3
1054084d:	cc                                              	int3
1054084e:	cc                                              	int3
1054084f:	cc                                              	int3
