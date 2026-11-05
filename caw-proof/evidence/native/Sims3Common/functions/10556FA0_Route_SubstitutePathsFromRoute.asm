# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10556fa0 (Route_SubstitutePathsFromRoute)
Paired Ghidra pseudocode: 10556FA0_Route_SubstitutePathsFromRoute.c
Window: [0x10556fa0, 0x10556fb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10556fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10556fa0: e9 bb f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10556fa0 <.text+0x555fa0>:
10556fa0:	e9 bb f3 ff ff                                  	jmp    0x10556360
10556fa5:	cc                                              	int3
10556fa6:	cc                                              	int3
10556fa7:	cc                                              	int3
10556fa8:	cc                                              	int3
10556fa9:	cc                                              	int3
10556faa:	cc                                              	int3
10556fab:	cc                                              	int3
10556fac:	cc                                              	int3
10556fad:	cc                                              	int3
10556fae:	cc                                              	int3
10556faf:	cc                                              	int3
