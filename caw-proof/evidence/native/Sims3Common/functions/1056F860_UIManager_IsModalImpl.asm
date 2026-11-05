# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f860 (UIManager_IsModalImpl)
Paired Ghidra pseudocode: 1056F860_UIManager_IsModalImpl.c
Window: [0x1056f860, 0x1056f870) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f860: e9 bb da ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f860 <.text+0x56e860>:
1056f860:	e9 bb da ff ff                                  	jmp    0x1056d320
1056f865:	cc                                              	int3
1056f866:	cc                                              	int3
1056f867:	cc                                              	int3
1056f868:	cc                                              	int3
1056f869:	cc                                              	int3
1056f86a:	cc                                              	int3
1056f86b:	cc                                              	int3
1056f86c:	cc                                              	int3
1056f86d:	cc                                              	int3
1056f86e:	cc                                              	int3
1056f86f:	cc                                              	int3
