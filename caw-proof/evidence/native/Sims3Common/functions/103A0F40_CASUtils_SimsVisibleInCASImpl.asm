# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0f40 (CASUtils_SimsVisibleInCASImpl)
Paired Ghidra pseudocode: 103A0F40_CASUtils_SimsVisibleInCASImpl.c
Window: [0x103a0f40, 0x103a0f50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0f40: e9 2b e3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0f40 <.text+0x39ff40>:
103a0f40:	e9 2b e3 ff ff                                  	jmp    0x1039f270
103a0f45:	cc                                              	int3
103a0f46:	cc                                              	int3
103a0f47:	cc                                              	int3
103a0f48:	cc                                              	int3
103a0f49:	cc                                              	int3
103a0f4a:	cc                                              	int3
103a0f4b:	cc                                              	int3
103a0f4c:	cc                                              	int3
103a0f4d:	cc                                              	int3
103a0f4e:	cc                                              	int3
103a0f4f:	cc                                              	int3
