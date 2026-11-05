# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996620 (WorldTerrainWrap_GetBrushName)
Paired Ghidra pseudocode: 10996620_WorldTerrainWrap_GetBrushName.c
Window: [0x10996620, 0x10996630) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996620: e9 bb 39 6d ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996620 <.text+0x995620>:
10996620:	e9 bb 39 6d ff                                  	jmp    0x10069fe0
10996625:	cc                                              	int3
10996626:	cc                                              	int3
10996627:	cc                                              	int3
10996628:	cc                                              	int3
10996629:	cc                                              	int3
1099662a:	cc                                              	int3
1099662b:	cc                                              	int3
1099662c:	cc                                              	int3
1099662d:	cc                                              	int3
1099662e:	cc                                              	int3
1099662f:	cc                                              	int3
