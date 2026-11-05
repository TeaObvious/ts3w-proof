# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa20 (UIManager_GetDrawablePropertyImpl)
Paired Ghidra pseudocode: 1056FA20_UIManager_GetDrawablePropertyImpl.c
Window: [0x1056fa20, 0x1056fa30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa20: e9 bb e5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa20 <.text+0x56ea20>:
1056fa20:	e9 bb e5 ff ff                                  	jmp    0x1056dfe0
1056fa25:	cc                                              	int3
1056fa26:	cc                                              	int3
1056fa27:	cc                                              	int3
1056fa28:	cc                                              	int3
1056fa29:	cc                                              	int3
1056fa2a:	cc                                              	int3
1056fa2b:	cc                                              	int3
1056fa2c:	cc                                              	int3
1056fa2d:	cc                                              	int3
1056fa2e:	cc                                              	int3
1056fa2f:	cc                                              	int3
