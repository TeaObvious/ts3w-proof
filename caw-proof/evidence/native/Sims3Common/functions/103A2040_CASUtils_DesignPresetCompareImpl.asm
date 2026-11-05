# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2040 (CASUtils_DesignPresetCompareImpl)
Paired Ghidra pseudocode: 103A2040_CASUtils_DesignPresetCompareImpl.c
Window: [0x103a2040, 0x103a2050) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2040: e9 fb e8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a2040 <.text+0x3a1040>:
103a2040:	e9 fb e8 ff ff                                  	jmp    0x103a0940
103a2045:	cc                                              	int3
103a2046:	cc                                              	int3
103a2047:	cc                                              	int3
103a2048:	cc                                              	int3
103a2049:	cc                                              	int3
103a204a:	cc                                              	int3
103a204b:	cc                                              	int3
103a204c:	cc                                              	int3
103a204d:	cc                                              	int3
103a204e:	cc                                              	int3
103a204f:	cc                                              	int3
