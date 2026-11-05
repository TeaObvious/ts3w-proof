# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f9b0 (UIManager_SetRectFloatPropertyImpl)
Paired Ghidra pseudocode: 1056F9B0_UIManager_SetRectFloatPropertyImpl.c
Window: [0x1056f9b0, 0x1056f9c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f9b0: e9 2b de ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f9b0 <.text+0x56e9b0>:
1056f9b0:	e9 2b de ff ff                                  	jmp    0x1056d7e0
1056f9b5:	cc                                              	int3
1056f9b6:	cc                                              	int3
1056f9b7:	cc                                              	int3
1056f9b8:	cc                                              	int3
1056f9b9:	cc                                              	int3
1056f9ba:	cc                                              	int3
1056f9bb:	cc                                              	int3
1056f9bc:	cc                                              	int3
1056f9bd:	cc                                              	int3
1056f9be:	cc                                              	int3
1056f9bf:	cc                                              	int3
