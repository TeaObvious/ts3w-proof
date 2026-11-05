# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5cf0 (CASUtils_KeySearchFreeSearchImpl)
Paired Ghidra pseudocode: 103A5CF0_CASUtils_KeySearchFreeSearchImpl.c
Window: [0x103a5cf0, 0x103a5d00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5cf0: e9 fb fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5cf0 <.text+0x3a4cf0>:
103a5cf0:	e9 fb fd ff ff                                  	jmp    0x103a5af0
103a5cf5:	cc                                              	int3
103a5cf6:	cc                                              	int3
103a5cf7:	cc                                              	int3
103a5cf8:	cc                                              	int3
103a5cf9:	cc                                              	int3
103a5cfa:	cc                                              	int3
103a5cfb:	cc                                              	int3
103a5cfc:	cc                                              	int3
103a5cfd:	cc                                              	int3
103a5cfe:	cc                                              	int3
103a5cff:	cc                                              	int3
