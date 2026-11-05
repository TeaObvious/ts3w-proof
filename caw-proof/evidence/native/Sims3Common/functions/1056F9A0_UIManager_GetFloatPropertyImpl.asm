# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f9a0 (UIManager_GetFloatPropertyImpl)
Paired Ghidra pseudocode: 1056F9A0_UIManager_GetFloatPropertyImpl.c
Window: [0x1056f9a0, 0x1056f9b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f9a0: e9 4b dd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f9a0 <.text+0x56e9a0>:
1056f9a0:	e9 4b dd ff ff                                  	jmp    0x1056d6f0
1056f9a5:	cc                                              	int3
1056f9a6:	cc                                              	int3
1056f9a7:	cc                                              	int3
1056f9a8:	cc                                              	int3
1056f9a9:	cc                                              	int3
1056f9aa:	cc                                              	int3
1056f9ab:	cc                                              	int3
1056f9ac:	cc                                              	int3
1056f9ad:	cc                                              	int3
1056f9ae:	cc                                              	int3
1056f9af:	cc                                              	int3
