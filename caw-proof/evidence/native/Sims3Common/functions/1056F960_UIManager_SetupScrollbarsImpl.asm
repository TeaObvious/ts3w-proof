# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f960 (UIManager_SetupScrollbarsImpl)
Paired Ghidra pseudocode: 1056F960_UIManager_SetupScrollbarsImpl.c
Window: [0x1056f960, 0x1056f970) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f960: e9 1b da ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f960 <.text+0x56e960>:
1056f960:	e9 1b da ff ff                                  	jmp    0x1056d380
1056f965:	cc                                              	int3
1056f966:	cc                                              	int3
1056f967:	cc                                              	int3
1056f968:	cc                                              	int3
1056f969:	cc                                              	int3
1056f96a:	cc                                              	int3
1056f96b:	cc                                              	int3
1056f96c:	cc                                              	int3
1056f96d:	cc                                              	int3
1056f96e:	cc                                              	int3
1056f96f:	cc                                              	int3
