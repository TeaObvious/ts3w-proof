# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10543390 (RouteEvent_CreateRouteEvent)
Paired Ghidra pseudocode: 10543390_RouteEvent_CreateRouteEvent.c
Window: [0x10543390, 0x105433a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105433a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10543390: e9 6b f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10543390 <.text+0x542390>:
10543390:	e9 6b f0 ff ff                                  	jmp    0x10542400
10543395:	cc                                              	int3
10543396:	cc                                              	int3
10543397:	cc                                              	int3
10543398:	cc                                              	int3
10543399:	cc                                              	int3
1054339a:	cc                                              	int3
1054339b:	cc                                              	int3
1054339c:	cc                                              	int3
1054339d:	cc                                              	int3
1054339e:	cc                                              	int3
1054339f:	cc                                              	int3
