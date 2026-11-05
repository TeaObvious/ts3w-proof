# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f050 (CASUtils_DesignPresetMergeTattooTemplates)
Paired Ghidra pseudocode: 1039F050_CASUtils_DesignPresetMergeTattooTemplates.c
Window: [0x1039f050, 0x1039f060) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f050: e9 9b 1a 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f050 <.text+0x39e050>:
1039f050:	e9 9b 1a 05 00                                  	jmp    0x103f0af0
1039f055:	cc                                              	int3
1039f056:	cc                                              	int3
1039f057:	cc                                              	int3
1039f058:	cc                                              	int3
1039f059:	cc                                              	int3
1039f05a:	cc                                              	int3
1039f05b:	cc                                              	int3
1039f05c:	cc                                              	int3
1039f05d:	cc                                              	int3
1039f05e:	cc                                              	int3
1039f05f:	cc                                              	int3
