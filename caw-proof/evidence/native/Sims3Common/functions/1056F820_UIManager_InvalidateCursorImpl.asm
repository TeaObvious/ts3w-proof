# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f820 (UIManager_InvalidateCursorImpl)
Paired Ghidra pseudocode: 1056F820_UIManager_InvalidateCursorImpl.c
Window: [0x1056f820, 0x1056f830) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f820: e9 3b d9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f820 <.text+0x56e820>:
1056f820:	e9 3b d9 ff ff                                  	jmp    0x1056d160
1056f825:	cc                                              	int3
1056f826:	cc                                              	int3
1056f827:	cc                                              	int3
1056f828:	cc                                              	int3
1056f829:	cc                                              	int3
1056f82a:	cc                                              	int3
1056f82b:	cc                                              	int3
1056f82c:	cc                                              	int3
1056f82d:	cc                                              	int3
1056f82e:	cc                                              	int3
1056f82f:	cc                                              	int3
