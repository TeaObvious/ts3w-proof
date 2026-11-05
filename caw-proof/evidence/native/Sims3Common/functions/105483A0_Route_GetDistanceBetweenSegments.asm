# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105483a0 (Route_GetDistanceBetweenSegments)
Paired Ghidra pseudocode: 105483A0_Route_GetDistanceBetweenSegments.c
Window: [0x105483a0, 0x105483b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105483b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105483a0: e9 bb ca ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105483a0 <.text+0x5473a0>:
105483a0:	e9 bb ca ff ff                                  	jmp    0x10544e60
105483a5:	cc                                              	int3
105483a6:	cc                                              	int3
105483a7:	cc                                              	int3
105483a8:	cc                                              	int3
105483a9:	cc                                              	int3
105483aa:	cc                                              	int3
105483ab:	cc                                              	int3
105483ac:	cc                                              	int3
105483ad:	cc                                              	int3
105483ae:	cc                                              	int3
105483af:	cc                                              	int3
