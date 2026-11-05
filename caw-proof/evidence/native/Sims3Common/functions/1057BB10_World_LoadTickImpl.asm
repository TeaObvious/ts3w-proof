# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057bb10 (World_LoadTickImpl)
Paired Ghidra pseudocode: 1057BB10_World_LoadTickImpl.c
Window: [0x1057bb10, 0x1057bb20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057bb20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057bb10: e9 6b 7c cb ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057bb10 <.text+0x57ab10>:
1057bb10:	e9 6b 7c cb ff                                  	jmp    0x10233780
1057bb15:	cc                                              	int3
1057bb16:	cc                                              	int3
1057bb17:	cc                                              	int3
1057bb18:	cc                                              	int3
1057bb19:	cc                                              	int3
1057bb1a:	cc                                              	int3
1057bb1b:	cc                                              	int3
1057bb1c:	cc                                              	int3
1057bb1d:	cc                                              	int3
1057bb1e:	cc                                              	int3
1057bb1f:	cc                                              	int3
