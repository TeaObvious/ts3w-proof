# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c31a0 (UserToolUtils_GetProductSetImpl)
Paired Ghidra pseudocode: 102C31A0_UserToolUtils_GetProductSetImpl.c
Window: [0x102c31a0, 0x102c31b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c31b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c31a0: e9 1b fa ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c31a0 <.text+0x2c21a0>:
102c31a0:	e9 1b fa ff ff                                  	jmp    0x102c2bc0
102c31a5:	cc                                              	int3
102c31a6:	cc                                              	int3
102c31a7:	cc                                              	int3
102c31a8:	cc                                              	int3
102c31a9:	cc                                              	int3
102c31aa:	cc                                              	int3
102c31ab:	cc                                              	int3
102c31ac:	cc                                              	int3
102c31ad:	cc                                              	int3
102c31ae:	cc                                              	int3
102c31af:	cc                                              	int3
