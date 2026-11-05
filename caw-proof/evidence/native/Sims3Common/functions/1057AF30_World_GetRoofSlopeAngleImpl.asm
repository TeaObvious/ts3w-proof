# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057af30 (World_GetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 1057AF30_World_GetRoofSlopeAngleImpl.c
Window: [0x1057af30, 0x1057af40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057af40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057af30: e9 5b ea b4 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057af30 <.text+0x579f30>:
1057af30:	e9 5b ea b4 ff                                  	jmp    0x100c9990
1057af35:	cc                                              	int3
1057af36:	cc                                              	int3
1057af37:	cc                                              	int3
1057af38:	cc                                              	int3
1057af39:	cc                                              	int3
1057af3a:	cc                                              	int3
1057af3b:	cc                                              	int3
1057af3c:	cc                                              	int3
1057af3d:	cc                                              	int3
1057af3e:	cc                                              	int3
1057af3f:	cc                                              	int3
