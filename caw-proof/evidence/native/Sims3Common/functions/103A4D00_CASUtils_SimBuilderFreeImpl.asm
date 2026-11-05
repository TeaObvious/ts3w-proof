# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4d00 (CASUtils_SimBuilderFreeImpl)
Paired Ghidra pseudocode: 103A4D00_CASUtils_SimBuilderFreeImpl.c
Window: [0x103a4d00, 0x103a4d10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4d10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4d00: e9 8b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4d00 <.text+0x3a3d00>:
103a4d00:	e9 8b f5 ff ff                                  	jmp    0x103a4290
103a4d05:	cc                                              	int3
103a4d06:	cc                                              	int3
103a4d07:	cc                                              	int3
103a4d08:	cc                                              	int3
103a4d09:	cc                                              	int3
103a4d0a:	cc                                              	int3
103a4d0b:	cc                                              	int3
103a4d0c:	cc                                              	int3
103a4d0d:	cc                                              	int3
103a4d0e:	cc                                              	int3
103a4d0f:	cc                                              	int3
