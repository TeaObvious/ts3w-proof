# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b1d0 (World_ObjectDesigner_SetNewCompositorImpl)
Paired Ghidra pseudocode: 1057B1D0_World_ObjectDesigner_SetNewCompositorImpl.c
Window: [0x1057b1d0, 0x1057b1e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b1d0: e9 db dd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b1d0 <.text+0x57a1d0>:
1057b1d0:	e9 db dd ff ff                                  	jmp    0x10578fb0
1057b1d5:	cc                                              	int3
1057b1d6:	cc                                              	int3
1057b1d7:	cc                                              	int3
1057b1d8:	cc                                              	int3
1057b1d9:	cc                                              	int3
1057b1da:	cc                                              	int3
1057b1db:	cc                                              	int3
1057b1dc:	cc                                              	int3
1057b1dd:	cc                                              	int3
1057b1de:	cc                                              	int3
1057b1df:	cc                                              	int3
