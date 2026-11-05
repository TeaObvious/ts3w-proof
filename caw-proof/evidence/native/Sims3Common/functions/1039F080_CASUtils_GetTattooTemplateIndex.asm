# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f080 (CASUtils_GetTattooTemplateIndex)
Paired Ghidra pseudocode: 1039F080_CASUtils_GetTattooTemplateIndex.c
Window: [0x1039f080, 0x1039f090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f080: e9 ab 1d 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f080 <.text+0x39e080>:
1039f080:	e9 ab 1d 05 00                                  	jmp    0x103f0e30
1039f085:	cc                                              	int3
1039f086:	cc                                              	int3
1039f087:	cc                                              	int3
1039f088:	cc                                              	int3
1039f089:	cc                                              	int3
1039f08a:	cc                                              	int3
1039f08b:	cc                                              	int3
1039f08c:	cc                                              	int3
1039f08d:	cc                                              	int3
1039f08e:	cc                                              	int3
1039f08f:	cc                                              	int3
