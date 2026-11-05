# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f9f0 (UIManager_SetStringPropertyImpl)
Paired Ghidra pseudocode: 1056F9F0_UIManager_SetStringPropertyImpl.c
Window: [0x1056f9f0, 0x1056fa00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f9f0: e9 2b e2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f9f0 <.text+0x56e9f0>:
1056f9f0:	e9 2b e2 ff ff                                  	jmp    0x1056dc20
1056f9f5:	cc                                              	int3
1056f9f6:	cc                                              	int3
1056f9f7:	cc                                              	int3
1056f9f8:	cc                                              	int3
1056f9f9:	cc                                              	int3
1056f9fa:	cc                                              	int3
1056f9fb:	cc                                              	int3
1056f9fc:	cc                                              	int3
1056f9fd:	cc                                              	int3
1056f9fe:	cc                                              	int3
1056f9ff:	cc                                              	int3
