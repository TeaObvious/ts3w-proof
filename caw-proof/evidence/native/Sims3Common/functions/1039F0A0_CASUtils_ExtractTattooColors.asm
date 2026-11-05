# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f0a0 (CASUtils_ExtractTattooColors)
Paired Ghidra pseudocode: 1039F0A0_CASUtils_ExtractTattooColors.c
Window: [0x1039f0a0, 0x1039f0b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f0b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f0a0: e9 cb 20 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f0a0 <.text+0x39e0a0>:
1039f0a0:	e9 cb 20 05 00                                  	jmp    0x103f1170
1039f0a5:	cc                                              	int3
1039f0a6:	cc                                              	int3
1039f0a7:	cc                                              	int3
1039f0a8:	cc                                              	int3
1039f0a9:	cc                                              	int3
1039f0aa:	cc                                              	int3
1039f0ab:	cc                                              	int3
1039f0ac:	cc                                              	int3
1039f0ad:	cc                                              	int3
1039f0ae:	cc                                              	int3
1039f0af:	cc                                              	int3
