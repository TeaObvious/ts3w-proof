# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d850 (RouteManager_SetRoutingDisplayOption)
Paired Ghidra pseudocode: 1053D850_RouteManager_SetRoutingDisplayOption.c
Window: [0x1053d850, 0x1053d860) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d850: e9 5b eb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d850 <.text+0x53c850>:
1053d850:	e9 5b eb ff ff                                  	jmp    0x1053c3b0
1053d855:	cc                                              	int3
1053d856:	cc                                              	int3
1053d857:	cc                                              	int3
1053d858:	cc                                              	int3
1053d859:	cc                                              	int3
1053d85a:	cc                                              	int3
1053d85b:	cc                                              	int3
1053d85c:	cc                                              	int3
1053d85d:	cc                                              	int3
1053d85e:	cc                                              	int3
1053d85f:	cc                                              	int3
