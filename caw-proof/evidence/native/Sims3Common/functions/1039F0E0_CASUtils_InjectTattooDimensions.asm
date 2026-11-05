# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f0e0 (CASUtils_InjectTattooDimensions)
Paired Ghidra pseudocode: 1039F0E0_CASUtils_InjectTattooDimensions.c
Window: [0x1039f0e0, 0x1039f0f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f0f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f0e0: e9 db 24 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f0e0 <.text+0x39e0e0>:
1039f0e0:	e9 db 24 05 00                                  	jmp    0x103f15c0
1039f0e5:	cc                                              	int3
1039f0e6:	cc                                              	int3
1039f0e7:	cc                                              	int3
1039f0e8:	cc                                              	int3
1039f0e9:	cc                                              	int3
1039f0ea:	cc                                              	int3
1039f0eb:	cc                                              	int3
1039f0ec:	cc                                              	int3
1039f0ed:	cc                                              	int3
1039f0ee:	cc                                              	int3
1039f0ef:	cc                                              	int3
