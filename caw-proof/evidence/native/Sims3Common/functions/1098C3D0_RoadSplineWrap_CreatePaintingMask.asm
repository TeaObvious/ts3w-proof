# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c3d0 (RoadSplineWrap_CreatePaintingMask)
Paired Ghidra pseudocode: 1098C3D0_RoadSplineWrap_CreatePaintingMask.c
Window: [0x1098c3d0, 0x1098c3e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c3e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c3d0: e9 7b 9c 7c ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c3d0 <.text+0x98b3d0>:
1098c3d0:	e9 7b 9c 7c ff                                  	jmp    0x10156050
1098c3d5:	cc                                              	int3
1098c3d6:	cc                                              	int3
1098c3d7:	cc                                              	int3
1098c3d8:	cc                                              	int3
1098c3d9:	cc                                              	int3
1098c3da:	cc                                              	int3
1098c3db:	cc                                              	int3
1098c3dc:	cc                                              	int3
1098c3dd:	cc                                              	int3
1098c3de:	cc                                              	int3
1098c3df:	cc                                              	int3
