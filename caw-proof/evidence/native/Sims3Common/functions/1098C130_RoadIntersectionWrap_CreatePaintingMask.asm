# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c130 (RoadIntersectionWrap_CreatePaintingMask)
Paired Ghidra pseudocode: 1098C130_RoadIntersectionWrap_CreatePaintingMask.c
Window: [0x1098c130, 0x1098c140) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c130: e9 fb 90 7c ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c130 <.text+0x98b130>:
1098c130:	e9 fb 90 7c ff                                  	jmp    0x10155230
1098c135:	cc                                              	int3
1098c136:	cc                                              	int3
1098c137:	cc                                              	int3
1098c138:	cc                                              	int3
1098c139:	cc                                              	int3
1098c13a:	cc                                              	int3
1098c13b:	cc                                              	int3
1098c13c:	cc                                              	int3
1098c13d:	cc                                              	int3
1098c13e:	cc                                              	int3
1098c13f:	cc                                              	int3
