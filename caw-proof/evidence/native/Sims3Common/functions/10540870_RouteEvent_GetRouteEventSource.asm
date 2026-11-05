# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540870 (RouteEvent_GetRouteEventSource)
Paired Ghidra pseudocode: 10540870_RouteEvent_GetRouteEventSource.c
Window: [0x10540870, 0x10540880) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540870: e9 8b e0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540870 <.text+0x53f870>:
10540870:	e9 8b e0 ff ff                                  	jmp    0x1053e900
10540875:	cc                                              	int3
10540876:	cc                                              	int3
10540877:	cc                                              	int3
10540878:	cc                                              	int3
10540879:	cc                                              	int3
1054087a:	cc                                              	int3
1054087b:	cc                                              	int3
1054087c:	cc                                              	int3
1054087d:	cc                                              	int3
1054087e:	cc                                              	int3
1054087f:	cc                                              	int3
