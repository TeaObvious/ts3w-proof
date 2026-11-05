# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa00 (UIManager_SetImagePropertyImpl)
Paired Ghidra pseudocode: 1056FA00_UIManager_SetImagePropertyImpl.c
Window: [0x1056fa00, 0x1056fa10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa00: e9 7b e3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa00 <.text+0x56ea00>:
1056fa00:	e9 7b e3 ff ff                                  	jmp    0x1056dd80
1056fa05:	cc                                              	int3
1056fa06:	cc                                              	int3
1056fa07:	cc                                              	int3
1056fa08:	cc                                              	int3
1056fa09:	cc                                              	int3
1056fa0a:	cc                                              	int3
1056fa0b:	cc                                              	int3
1056fa0c:	cc                                              	int3
1056fa0d:	cc                                              	int3
1056fa0e:	cc                                              	int3
1056fa0f:	cc                                              	int3
