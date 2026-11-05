# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be2c0 (UserToolUtils_GetProductCategoryImpl)
Paired Ghidra pseudocode: 102BE2C0_UserToolUtils_GetProductCategoryImpl.c
Window: [0x102be2c0, 0x102be2d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be2c0: e9 4b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be2c0 <.text+0x2bd2c0>:
102be2c0:	e9 4b f6 ff ff                                  	jmp    0x102bd910
102be2c5:	cc                                              	int3
102be2c6:	cc                                              	int3
102be2c7:	cc                                              	int3
102be2c8:	cc                                              	int3
102be2c9:	cc                                              	int3
102be2ca:	cc                                              	int3
102be2cb:	cc                                              	int3
102be2cc:	cc                                              	int3
102be2cd:	cc                                              	int3
102be2ce:	cc                                              	int3
102be2cf:	cc                                              	int3
