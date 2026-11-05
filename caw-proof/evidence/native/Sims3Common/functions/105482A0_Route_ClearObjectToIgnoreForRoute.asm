# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105482a0 (Route_ClearObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 105482A0_Route_ClearObjectToIgnoreForRoute.c
Window: [0x105482a0, 0x105482b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105482b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105482a0: e9 6b d5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105482a0 <.text+0x5472a0>:
105482a0:	e9 6b d5 ff ff                                  	jmp    0x10545810
105482a5:	cc                                              	int3
105482a6:	cc                                              	int3
105482a7:	cc                                              	int3
105482a8:	cc                                              	int3
105482a9:	cc                                              	int3
105482aa:	cc                                              	int3
105482ab:	cc                                              	int3
105482ac:	cc                                              	int3
105482ad:	cc                                              	int3
105482ae:	cc                                              	int3
105482af:	cc                                              	int3
