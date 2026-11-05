# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a56a0 (CASUtils_CompoundBlendGetNumBlendsImpl)
Paired Ghidra pseudocode: 103A56A0_CASUtils_CompoundBlendGetNumBlendsImpl.c
Window: [0x103a56a0, 0x103a56b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a56b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a56a0: e9 ab fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a56a0 <.text+0x3a46a0>:
103a56a0:	e9 ab fd ff ff                                  	jmp    0x103a5450
103a56a5:	cc                                              	int3
103a56a6:	cc                                              	int3
103a56a7:	cc                                              	int3
103a56a8:	cc                                              	int3
103a56a9:	cc                                              	int3
103a56aa:	cc                                              	int3
103a56ab:	cc                                              	int3
103a56ac:	cc                                              	int3
103a56ad:	cc                                              	int3
103a56ae:	cc                                              	int3
103a56af:	cc                                              	int3
