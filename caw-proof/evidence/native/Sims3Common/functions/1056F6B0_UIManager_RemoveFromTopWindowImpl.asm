# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f6b0 (UIManager_RemoveFromTopWindowImpl)
Paired Ghidra pseudocode: 1056F6B0_UIManager_RemoveFromTopWindowImpl.c
Window: [0x1056f6b0, 0x1056f6c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f6b0: e9 eb d5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f6b0 <.text+0x56e6b0>:
1056f6b0:	e9 eb d5 ff ff                                  	jmp    0x1056cca0
1056f6b5:	cc                                              	int3
1056f6b6:	cc                                              	int3
1056f6b7:	cc                                              	int3
1056f6b8:	cc                                              	int3
1056f6b9:	cc                                              	int3
1056f6ba:	cc                                              	int3
1056f6bb:	cc                                              	int3
1056f6bc:	cc                                              	int3
1056f6bd:	cc                                              	int3
1056f6be:	cc                                              	int3
1056f6bf:	cc                                              	int3
