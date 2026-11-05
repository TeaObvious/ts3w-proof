# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfbb0 (UserToolUtils_GetTNSFeatureItemImpl)
Paired Ghidra pseudocode: 102BFBB0_UserToolUtils_GetTNSFeatureItemImpl.c
Window: [0x102bfbb0, 0x102bfbc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfbb0: e9 1b f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfbb0 <.text+0x2bebb0>:
102bfbb0:	e9 1b f2 ff ff                                  	jmp    0x102bedd0
102bfbb5:	cc                                              	int3
102bfbb6:	cc                                              	int3
102bfbb7:	cc                                              	int3
102bfbb8:	cc                                              	int3
102bfbb9:	cc                                              	int3
102bfbba:	cc                                              	int3
102bfbbb:	cc                                              	int3
102bfbbc:	cc                                              	int3
102bfbbd:	cc                                              	int3
102bfbbe:	cc                                              	int3
102bfbbf:	cc                                              	int3
