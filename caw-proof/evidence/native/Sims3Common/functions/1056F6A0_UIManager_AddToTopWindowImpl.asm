# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f6a0 (UIManager_AddToTopWindowImpl)
Paired Ghidra pseudocode: 1056F6A0_UIManager_AddToTopWindowImpl.c
Window: [0x1056f6a0, 0x1056f6b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f6a0: e9 7b d5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f6a0 <.text+0x56e6a0>:
1056f6a0:	e9 7b d5 ff ff                                  	jmp    0x1056cc20
1056f6a5:	cc                                              	int3
1056f6a6:	cc                                              	int3
1056f6a7:	cc                                              	int3
1056f6a8:	cc                                              	int3
1056f6a9:	cc                                              	int3
1056f6aa:	cc                                              	int3
1056f6ab:	cc                                              	int3
1056f6ac:	cc                                              	int3
1056f6ad:	cc                                              	int3
1056f6ae:	cc                                              	int3
1056f6af:	cc                                              	int3
