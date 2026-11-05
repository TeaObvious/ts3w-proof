# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3930 (CASUtils_KeySearchMoveNextImpl)
Paired Ghidra pseudocode: 103A3930_CASUtils_KeySearchMoveNextImpl.c
Window: [0x103a3930, 0x103a3940) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3930: e9 0b ee ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3930 <.text+0x3a2930>:
103a3930:	e9 0b ee ff ff                                  	jmp    0x103a2740
103a3935:	cc                                              	int3
103a3936:	cc                                              	int3
103a3937:	cc                                              	int3
103a3938:	cc                                              	int3
103a3939:	cc                                              	int3
103a393a:	cc                                              	int3
103a393b:	cc                                              	int3
103a393c:	cc                                              	int3
103a393d:	cc                                              	int3
103a393e:	cc                                              	int3
103a393f:	cc                                              	int3
