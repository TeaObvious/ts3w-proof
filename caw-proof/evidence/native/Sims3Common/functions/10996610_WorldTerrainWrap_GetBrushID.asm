# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996610 (WorldTerrainWrap_GetBrushID)
Paired Ghidra pseudocode: 10996610_WorldTerrainWrap_GetBrushID.c
Window: [0x10996610, 0x10996620) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996610: e9 9b 39 6d ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996610 <.text+0x995610>:
10996610:	e9 9b 39 6d ff                                  	jmp    0x10069fb0
10996615:	cc                                              	int3
10996616:	cc                                              	int3
10996617:	cc                                              	int3
10996618:	cc                                              	int3
10996619:	cc                                              	int3
1099661a:	cc                                              	int3
1099661b:	cc                                              	int3
1099661c:	cc                                              	int3
1099661d:	cc                                              	int3
1099661e:	cc                                              	int3
1099661f:	cc                                              	int3
