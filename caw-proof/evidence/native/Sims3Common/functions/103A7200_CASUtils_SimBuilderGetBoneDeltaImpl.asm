# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7200 (CASUtils_SimBuilderGetBoneDeltaImpl)
Paired Ghidra pseudocode: 103A7200_CASUtils_SimBuilderGetBoneDeltaImpl.c
Window: [0x103a7200, 0x103a7210) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7200: e9 1b f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7200 <.text+0x3a6200>:
103a7200:	e9 1b f1 ff ff                                  	jmp    0x103a6320
103a7205:	cc                                              	int3
103a7206:	cc                                              	int3
103a7207:	cc                                              	int3
103a7208:	cc                                              	int3
103a7209:	cc                                              	int3
103a720a:	cc                                              	int3
103a720b:	cc                                              	int3
103a720c:	cc                                              	int3
103a720d:	cc                                              	int3
103a720e:	cc                                              	int3
103a720f:	cc                                              	int3
