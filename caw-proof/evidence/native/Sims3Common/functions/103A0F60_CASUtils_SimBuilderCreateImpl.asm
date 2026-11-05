# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0f60 (CASUtils_SimBuilderCreateImpl)
Paired Ghidra pseudocode: 103A0F60_CASUtils_SimBuilderCreateImpl.c
Window: [0x103a0f60, 0x103a0f70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0f60: e9 1b e4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0f60 <.text+0x39ff60>:
103a0f60:	e9 1b e4 ff ff                                  	jmp    0x1039f380
103a0f65:	cc                                              	int3
103a0f66:	cc                                              	int3
103a0f67:	cc                                              	int3
103a0f68:	cc                                              	int3
103a0f69:	cc                                              	int3
103a0f6a:	cc                                              	int3
103a0f6b:	cc                                              	int3
103a0f6c:	cc                                              	int3
103a0f6d:	cc                                              	int3
103a0f6e:	cc                                              	int3
103a0f6f:	cc                                              	int3
