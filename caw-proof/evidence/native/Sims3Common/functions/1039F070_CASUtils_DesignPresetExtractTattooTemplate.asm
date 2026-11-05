# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f070 (CASUtils_DesignPresetExtractTattooTemplate)
Paired Ghidra pseudocode: 1039F070_CASUtils_DesignPresetExtractTattooTemplate.c
Window: [0x1039f070, 0x1039f080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f070: e9 db 18 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f070 <.text+0x39e070>:
1039f070:	e9 db 18 05 00                                  	jmp    0x103f0950
1039f075:	cc                                              	int3
1039f076:	cc                                              	int3
1039f077:	cc                                              	int3
1039f078:	cc                                              	int3
1039f079:	cc                                              	int3
1039f07a:	cc                                              	int3
1039f07b:	cc                                              	int3
1039f07c:	cc                                              	int3
1039f07d:	cc                                              	int3
1039f07e:	cc                                              	int3
1039f07f:	cc                                              	int3
