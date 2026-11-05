# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3ae0 (CASUtils_SimBuilderProcessModelImpl)
Paired Ghidra pseudocode: 103A3AE0_CASUtils_SimBuilderProcessModelImpl.c
Window: [0x103a3ae0, 0x103a3af0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3ae0: e9 8b f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3ae0 <.text+0x3a2ae0>:
103a3ae0:	e9 8b f1 ff ff                                  	jmp    0x103a2c70
103a3ae5:	cc                                              	int3
103a3ae6:	cc                                              	int3
103a3ae7:	cc                                              	int3
103a3ae8:	cc                                              	int3
103a3ae9:	cc                                              	int3
103a3aea:	cc                                              	int3
103a3aeb:	cc                                              	int3
103a3aec:	cc                                              	int3
103a3aed:	cc                                              	int3
103a3aee:	cc                                              	int3
103a3aef:	cc                                              	int3
