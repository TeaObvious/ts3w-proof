# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4e00 (CASUtils_InitSceneImpl)
Paired Ghidra pseudocode: 103A4E00_CASUtils_InitSceneImpl.c
Window: [0x103a4e00, 0x103a4e10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4e00: e9 0b fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4e00 <.text+0x3a3e00>:
103a4e00:	e9 0b fb ff ff                                  	jmp    0x103a4910
103a4e05:	cc                                              	int3
103a4e06:	cc                                              	int3
103a4e07:	cc                                              	int3
103a4e08:	cc                                              	int3
103a4e09:	cc                                              	int3
103a4e0a:	cc                                              	int3
103a4e0b:	cc                                              	int3
103a4e0c:	cc                                              	int3
103a4e0d:	cc                                              	int3
103a4e0e:	cc                                              	int3
103a4e0f:	cc                                              	int3
