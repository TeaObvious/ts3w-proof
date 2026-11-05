# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540880 (RouteEvent_GetRouteEventDirection)
Paired Ghidra pseudocode: 10540880_RouteEvent_GetRouteEventDirection.c
Window: [0x10540880, 0x10540890) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540880: e9 0b e1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540880 <.text+0x53f880>:
10540880:	e9 0b e1 ff ff                                  	jmp    0x1053e990
10540885:	cc                                              	int3
10540886:	cc                                              	int3
10540887:	cc                                              	int3
10540888:	cc                                              	int3
10540889:	cc                                              	int3
1054088a:	cc                                              	int3
1054088b:	cc                                              	int3
1054088c:	cc                                              	int3
1054088d:	cc                                              	int3
1054088e:	cc                                              	int3
1054088f:	cc                                              	int3
