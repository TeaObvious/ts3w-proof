# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109980a0 (WorldWrap_StartRoutableSurfacePaint)
Paired Ghidra pseudocode: 109980A0_WorldWrap_StartRoutableSurfacePaint.c
Window: [0x109980a0, 0x109980b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109980b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109980a0: e9 7b bb 86 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109980a0 <.text+0x9970a0>:
109980a0:	e9 7b bb 86 ff                                  	jmp    0x10203c20
109980a5:	cc                                              	int3
109980a6:	cc                                              	int3
109980a7:	cc                                              	int3
109980a8:	cc                                              	int3
109980a9:	cc                                              	int3
109980aa:	cc                                              	int3
109980ab:	cc                                              	int3
109980ac:	cc                                              	int3
109980ad:	cc                                              	int3
109980ae:	cc                                              	int3
109980af:	cc                                              	int3
