# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b240 (World_ObjectDesigner_SetNewPatternImpl)
Paired Ghidra pseudocode: 1057B240_World_ObjectDesigner_SetNewPatternImpl.c
Window: [0x1057b240, 0x1057b250) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b240: e9 cb dd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b240 <.text+0x57a240>:
1057b240:	e9 cb dd ff ff                                  	jmp    0x10579010
1057b245:	cc                                              	int3
1057b246:	cc                                              	int3
1057b247:	cc                                              	int3
1057b248:	cc                                              	int3
1057b249:	cc                                              	int3
1057b24a:	cc                                              	int3
1057b24b:	cc                                              	int3
1057b24c:	cc                                              	int3
1057b24d:	cc                                              	int3
1057b24e:	cc                                              	int3
1057b24f:	cc                                              	int3
