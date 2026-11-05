# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d860 (RouteManager_GetRoutingDisplayOption)
Paired Ghidra pseudocode: 1053D860_RouteManager_GetRoutingDisplayOption.c
Window: [0x1053d860, 0x1053d870) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d860: e9 3b ec ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d860 <.text+0x53c860>:
1053d860:	e9 3b ec ff ff                                  	jmp    0x1053c4a0
1053d865:	cc                                              	int3
1053d866:	cc                                              	int3
1053d867:	cc                                              	int3
1053d868:	cc                                              	int3
1053d869:	cc                                              	int3
1053d86a:	cc                                              	int3
1053d86b:	cc                                              	int3
1053d86c:	cc                                              	int3
1053d86d:	cc                                              	int3
1053d86e:	cc                                              	int3
1053d86f:	cc                                              	int3
