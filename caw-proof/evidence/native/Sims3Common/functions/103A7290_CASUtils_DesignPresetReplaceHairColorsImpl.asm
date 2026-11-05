# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7290 (CASUtils_DesignPresetReplaceHairColorsImpl)
Paired Ghidra pseudocode: 103A7290_CASUtils_DesignPresetReplaceHairColorsImpl.c
Window: [0x103a7290, 0x103a72a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a72a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7290: e9 0b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7290 <.text+0x3a6290>:
103a7290:	e9 0b f6 ff ff                                  	jmp    0x103a68a0
103a7295:	cc                                              	int3
103a7296:	cc                                              	int3
103a7297:	cc                                              	int3
103a7298:	cc                                              	int3
103a7299:	cc                                              	int3
103a729a:	cc                                              	int3
103a729b:	cc                                              	int3
103a729c:	cc                                              	int3
103a729d:	cc                                              	int3
103a729e:	cc                                              	int3
103a729f:	cc                                              	int3
