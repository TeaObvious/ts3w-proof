# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f060 (CASUtils_CompareCompositeTattooPresets)
Paired Ghidra pseudocode: 1039F060_CASUtils_CompareCompositeTattooPresets.c
Window: [0x1039f060, 0x1039f070) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f060: e9 fb 27 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f060 <.text+0x39e060>:
1039f060:	e9 fb 27 05 00                                  	jmp    0x103f1860
1039f065:	cc                                              	int3
1039f066:	cc                                              	int3
1039f067:	cc                                              	int3
1039f068:	cc                                              	int3
1039f069:	cc                                              	int3
1039f06a:	cc                                              	int3
1039f06b:	cc                                              	int3
1039f06c:	cc                                              	int3
1039f06d:	cc                                              	int3
1039f06e:	cc                                              	int3
1039f06f:	cc                                              	int3
