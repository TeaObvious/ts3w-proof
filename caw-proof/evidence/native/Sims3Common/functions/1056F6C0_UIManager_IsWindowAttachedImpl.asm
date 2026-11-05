# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f6c0 (UIManager_IsWindowAttachedImpl)
Paired Ghidra pseudocode: 1056F6C0_UIManager_IsWindowAttachedImpl.c
Window: [0x1056f6c0, 0x1056f6d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f6c0: e9 5b d6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f6c0 <.text+0x56e6c0>:
1056f6c0:	e9 5b d6 ff ff                                  	jmp    0x1056cd20
1056f6c5:	cc                                              	int3
1056f6c6:	cc                                              	int3
1056f6c7:	cc                                              	int3
1056f6c8:	cc                                              	int3
1056f6c9:	cc                                              	int3
1056f6ca:	cc                                              	int3
1056f6cb:	cc                                              	int3
1056f6cc:	cc                                              	int3
1056f6cd:	cc                                              	int3
1056f6ce:	cc                                              	int3
1056f6cf:	cc                                              	int3
