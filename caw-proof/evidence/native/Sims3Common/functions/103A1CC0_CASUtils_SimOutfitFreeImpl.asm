# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1cc0 (CASUtils_SimOutfitFreeImpl)
Paired Ghidra pseudocode: 103A1CC0_CASUtils_SimOutfitFreeImpl.c
Window: [0x103a1cc0, 0x103a1cd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1cc0: e9 7b e7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1cc0 <.text+0x3a0cc0>:
103a1cc0:	e9 7b e7 ff ff                                  	jmp    0x103a0440
103a1cc5:	cc                                              	int3
103a1cc6:	cc                                              	int3
103a1cc7:	cc                                              	int3
103a1cc8:	cc                                              	int3
103a1cc9:	cc                                              	int3
103a1cca:	cc                                              	int3
103a1ccb:	cc                                              	int3
103a1ccc:	cc                                              	int3
103a1ccd:	cc                                              	int3
103a1cce:	cc                                              	int3
103a1ccf:	cc                                              	int3
