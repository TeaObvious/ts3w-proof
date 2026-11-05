# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555050 (Route_SmoothenSubPathConnections)
Paired Ghidra pseudocode: 10555050_Route_SmoothenSubPathConnections.c
Window: [0x10555050, 0x10555060) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555050: e9 4b e2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555050 <.text+0x554050>:
10555050:	e9 4b e2 ff ff                                  	jmp    0x105532a0
10555055:	cc                                              	int3
10555056:	cc                                              	int3
10555057:	cc                                              	int3
10555058:	cc                                              	int3
10555059:	cc                                              	int3
1055505a:	cc                                              	int3
1055505b:	cc                                              	int3
1055505c:	cc                                              	int3
1055505d:	cc                                              	int3
1055505e:	cc                                              	int3
1055505f:	cc                                              	int3
