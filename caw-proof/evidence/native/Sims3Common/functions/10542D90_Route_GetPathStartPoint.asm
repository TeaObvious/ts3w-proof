# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542d90 (Route_GetPathStartPoint)
Paired Ghidra pseudocode: 10542D90_Route_GetPathStartPoint.c
Window: [0x10542d90, 0x10542da0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542d90: e9 1b ed ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542d90 <.text+0x541d90>:
10542d90:	e9 1b ed ff ff                                  	jmp    0x10541ab0
10542d95:	cc                                              	int3
10542d96:	cc                                              	int3
10542d97:	cc                                              	int3
10542d98:	cc                                              	int3
10542d99:	cc                                              	int3
10542d9a:	cc                                              	int3
10542d9b:	cc                                              	int3
10542d9c:	cc                                              	int3
10542d9d:	cc                                              	int3
10542d9e:	cc                                              	int3
10542d9f:	cc                                              	int3
