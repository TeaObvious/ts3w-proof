# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f0f0 (CASUtils_ExtractTattooDimensions)
Paired Ghidra pseudocode: 1039F0F0_CASUtils_ExtractTattooDimensions.c
Window: [0x1039f0f0, 0x1039f100) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f0f0: e9 3b 26 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f0f0 <.text+0x39e0f0>:
1039f0f0:	e9 3b 26 05 00                                  	jmp    0x103f1730
1039f0f5:	cc                                              	int3
1039f0f6:	cc                                              	int3
1039f0f7:	cc                                              	int3
1039f0f8:	cc                                              	int3
1039f0f9:	cc                                              	int3
1039f0fa:	cc                                              	int3
1039f0fb:	cc                                              	int3
1039f0fc:	cc                                              	int3
1039f0fd:	cc                                              	int3
1039f0fe:	cc                                              	int3
1039f0ff:	cc                                              	int3
