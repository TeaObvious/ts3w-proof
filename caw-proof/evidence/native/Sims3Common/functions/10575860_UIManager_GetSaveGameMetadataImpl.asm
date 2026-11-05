# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575860 (UIManager_GetSaveGameMetadataImpl)
Paired Ghidra pseudocode: 10575860_UIManager_GetSaveGameMetadataImpl.c
Window: [0x10575860, 0x10575870) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575860: e9 cb f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575860 <.text+0x574860>:
10575860:	e9 cb f8 ff ff                                  	jmp    0x10575130
10575865:	cc                                              	int3
10575866:	cc                                              	int3
10575867:	cc                                              	int3
10575868:	cc                                              	int3
10575869:	cc                                              	int3
1057586a:	cc                                              	int3
1057586b:	cc                                              	int3
1057586c:	cc                                              	int3
1057586d:	cc                                              	int3
1057586e:	cc                                              	int3
1057586f:	cc                                              	int3
