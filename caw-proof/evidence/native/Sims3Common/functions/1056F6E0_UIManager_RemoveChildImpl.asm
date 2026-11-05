# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f6e0 (UIManager_RemoveChildImpl)
Paired Ghidra pseudocode: 1056F6E0_UIManager_RemoveChildImpl.c
Window: [0x1056f6e0, 0x1056f6f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f6e0: e9 2b d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f6e0 <.text+0x56e6e0>:
1056f6e0:	e9 2b d7 ff ff                                  	jmp    0x1056ce10
1056f6e5:	cc                                              	int3
1056f6e6:	cc                                              	int3
1056f6e7:	cc                                              	int3
1056f6e8:	cc                                              	int3
1056f6e9:	cc                                              	int3
1056f6ea:	cc                                              	int3
1056f6eb:	cc                                              	int3
1056f6ec:	cc                                              	int3
1056f6ed:	cc                                              	int3
1056f6ee:	cc                                              	int3
1056f6ef:	cc                                              	int3
