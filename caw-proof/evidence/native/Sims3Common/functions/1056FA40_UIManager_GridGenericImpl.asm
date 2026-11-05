# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa40 (UIManager_GridGenericImpl)
Paired Ghidra pseudocode: 1056FA40_UIManager_GridGenericImpl.c
Window: [0x1056fa40, 0x1056fa50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa40: e9 2b e7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa40 <.text+0x56ea40>:
1056fa40:	e9 2b e7 ff ff                                  	jmp    0x1056e170
1056fa45:	cc                                              	int3
1056fa46:	cc                                              	int3
1056fa47:	cc                                              	int3
1056fa48:	cc                                              	int3
1056fa49:	cc                                              	int3
1056fa4a:	cc                                              	int3
1056fa4b:	cc                                              	int3
1056fa4c:	cc                                              	int3
1056fa4d:	cc                                              	int3
1056fa4e:	cc                                              	int3
1056fa4f:	cc                                              	int3
