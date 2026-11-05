# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4cf0 (CASUtils_CreateKeySearchImpl)
Paired Ghidra pseudocode: 103A4CF0_CASUtils_CreateKeySearchImpl.c
Window: [0x103a4cf0, 0x103a4d00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4cf0: e9 3b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4cf0 <.text+0x3a3cf0>:
103a4cf0:	e9 3b f5 ff ff                                  	jmp    0x103a4230
103a4cf5:	cc                                              	int3
103a4cf6:	cc                                              	int3
103a4cf7:	cc                                              	int3
103a4cf8:	cc                                              	int3
103a4cf9:	cc                                              	int3
103a4cfa:	cc                                              	int3
103a4cfb:	cc                                              	int3
103a4cfc:	cc                                              	int3
103a4cfd:	cc                                              	int3
103a4cfe:	cc                                              	int3
103a4cff:	cc                                              	int3
