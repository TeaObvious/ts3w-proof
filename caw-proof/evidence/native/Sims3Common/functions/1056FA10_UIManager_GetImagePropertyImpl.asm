# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa10 (UIManager_GetImagePropertyImpl)
Paired Ghidra pseudocode: 1056FA10_UIManager_GetImagePropertyImpl.c
Window: [0x1056fa10, 0x1056fa20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa10: e9 bb e4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa10 <.text+0x56ea10>:
1056fa10:	e9 bb e4 ff ff                                  	jmp    0x1056ded0
1056fa15:	cc                                              	int3
1056fa16:	cc                                              	int3
1056fa17:	cc                                              	int3
1056fa18:	cc                                              	int3
1056fa19:	cc                                              	int3
1056fa1a:	cc                                              	int3
1056fa1b:	cc                                              	int3
1056fa1c:	cc                                              	int3
1056fa1d:	cc                                              	int3
1056fa1e:	cc                                              	int3
1056fa1f:	cc                                              	int3
