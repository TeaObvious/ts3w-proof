# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f9e0 (UIManager_GetVector2FloatPropertyImpl)
Paired Ghidra pseudocode: 1056F9E0_UIManager_GetVector2FloatPropertyImpl.c
Window: [0x1056f9e0, 0x1056f9f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f9f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f9e0: e9 5b e1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f9e0 <.text+0x56e9e0>:
1056f9e0:	e9 5b e1 ff ff                                  	jmp    0x1056db40
1056f9e5:	cc                                              	int3
1056f9e6:	cc                                              	int3
1056f9e7:	cc                                              	int3
1056f9e8:	cc                                              	int3
1056f9e9:	cc                                              	int3
1056f9ea:	cc                                              	int3
1056f9eb:	cc                                              	int3
1056f9ec:	cc                                              	int3
1056f9ed:	cc                                              	int3
1056f9ee:	cc                                              	int3
1056f9ef:	cc                                              	int3
