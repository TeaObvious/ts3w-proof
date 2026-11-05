# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581300 (World_PickFloorAtWindowPoint)
Paired Ghidra pseudocode: 10581300_World_PickFloorAtWindowPoint.c
Window: [0x10581300, 0x10581310) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581300: e9 ab d1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581300 <.text+0x580300>:
10581300:	e9 ab d1 ff ff                                  	jmp    0x1057e4b0
10581305:	cc                                              	int3
10581306:	cc                                              	int3
10581307:	cc                                              	int3
10581308:	cc                                              	int3
10581309:	cc                                              	int3
1058130a:	cc                                              	int3
1058130b:	cc                                              	int3
1058130c:	cc                                              	int3
1058130d:	cc                                              	int3
1058130e:	cc                                              	int3
1058130f:	cc                                              	int3
