# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fa30 (UIManager_GridSetCellTextValueImpl)
Paired Ghidra pseudocode: 1056FA30_UIManager_GridSetCellTextValueImpl.c
Window: [0x1056fa30, 0x1056fa40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fa40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fa30: e9 bb e6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056fa30 <.text+0x56ea30>:
1056fa30:	e9 bb e6 ff ff                                  	jmp    0x1056e0f0
1056fa35:	cc                                              	int3
1056fa36:	cc                                              	int3
1056fa37:	cc                                              	int3
1056fa38:	cc                                              	int3
1056fa39:	cc                                              	int3
1056fa3a:	cc                                              	int3
1056fa3b:	cc                                              	int3
1056fa3c:	cc                                              	int3
1056fa3d:	cc                                              	int3
1056fa3e:	cc                                              	int3
1056fa3f:	cc                                              	int3
