# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105483b0 (Route_GetLastCompletedSegment)
Paired Ghidra pseudocode: 105483B0_Route_GetLastCompletedSegment.c
Window: [0x105483b0, 0x105483c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105483c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105483b0: e9 6b cb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105483b0 <.text+0x5473b0>:
105483b0:	e9 6b cb ff ff                                  	jmp    0x10544f20
105483b5:	cc                                              	int3
105483b6:	cc                                              	int3
105483b7:	cc                                              	int3
105483b8:	cc                                              	int3
105483b9:	cc                                              	int3
105483ba:	cc                                              	int3
105483bb:	cc                                              	int3
105483bc:	cc                                              	int3
105483bd:	cc                                              	int3
105483be:	cc                                              	int3
105483bf:	cc                                              	int3
