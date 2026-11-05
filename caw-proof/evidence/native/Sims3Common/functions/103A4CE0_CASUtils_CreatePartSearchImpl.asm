# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4ce0 (CASUtils_CreatePartSearchImpl)
Paired Ghidra pseudocode: 103A4CE0_CASUtils_CreatePartSearchImpl.c
Window: [0x103a4ce0, 0x103a4cf0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4ce0: e9 eb f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4ce0 <.text+0x3a3ce0>:
103a4ce0:	e9 eb f4 ff ff                                  	jmp    0x103a41d0
103a4ce5:	cc                                              	int3
103a4ce6:	cc                                              	int3
103a4ce7:	cc                                              	int3
103a4ce8:	cc                                              	int3
103a4ce9:	cc                                              	int3
103a4cea:	cc                                              	int3
103a4ceb:	cc                                              	int3
103a4cec:	cc                                              	int3
103a4ced:	cc                                              	int3
103a4cee:	cc                                              	int3
103a4cef:	cc                                              	int3
