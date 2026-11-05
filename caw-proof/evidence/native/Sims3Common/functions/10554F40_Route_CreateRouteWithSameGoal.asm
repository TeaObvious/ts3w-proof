# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10554f40 (Route_CreateRouteWithSameGoal)
Paired Ghidra pseudocode: 10554F40_Route_CreateRouteWithSameGoal.c
Window: [0x10554f40, 0x10554f50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10554f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10554f40: e9 db df ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10554f40 <.text+0x553f40>:
10554f40:	e9 db df ff ff                                  	jmp    0x10552f20
10554f45:	cc                                              	int3
10554f46:	cc                                              	int3
10554f47:	cc                                              	int3
10554f48:	cc                                              	int3
10554f49:	cc                                              	int3
10554f4a:	cc                                              	int3
10554f4b:	cc                                              	int3
10554f4c:	cc                                              	int3
10554f4d:	cc                                              	int3
10554f4e:	cc                                              	int3
10554f4f:	cc                                              	int3
