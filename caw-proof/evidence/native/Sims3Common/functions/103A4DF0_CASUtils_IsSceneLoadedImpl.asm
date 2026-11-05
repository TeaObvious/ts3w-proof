# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4df0 (CASUtils_IsSceneLoadedImpl)
Paired Ghidra pseudocode: 103A4DF0_CASUtils_IsSceneLoadedImpl.c
Window: [0x103a4df0, 0x103a4e00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4df0: e9 6b fa ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4df0 <.text+0x3a3df0>:
103a4df0:	e9 6b fa ff ff                                  	jmp    0x103a4860
103a4df5:	cc                                              	int3
103a4df6:	cc                                              	int3
103a4df7:	cc                                              	int3
103a4df8:	cc                                              	int3
103a4df9:	cc                                              	int3
103a4dfa:	cc                                              	int3
103a4dfb:	cc                                              	int3
103a4dfc:	cc                                              	int3
103a4dfd:	cc                                              	int3
103a4dfe:	cc                                              	int3
103a4dff:	cc                                              	int3
