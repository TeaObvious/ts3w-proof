# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540860 (RouteEvent_GetRouteEventPosition)
Paired Ghidra pseudocode: 10540860_RouteEvent_GetRouteEventPosition.c
Window: [0x10540860, 0x10540870) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540860: e9 0b e0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540860 <.text+0x53f860>:
10540860:	e9 0b e0 ff ff                                  	jmp    0x1053e870
10540865:	cc                                              	int3
10540866:	cc                                              	int3
10540867:	cc                                              	int3
10540868:	cc                                              	int3
10540869:	cc                                              	int3
1054086a:	cc                                              	int3
1054086b:	cc                                              	int3
1054086c:	cc                                              	int3
1054086d:	cc                                              	int3
1054086e:	cc                                              	int3
1054086f:	cc                                              	int3
