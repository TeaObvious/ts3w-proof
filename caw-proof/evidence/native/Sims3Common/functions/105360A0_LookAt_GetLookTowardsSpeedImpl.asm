# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105360a0 (LookAt_GetLookTowardsSpeedImpl)
Paired Ghidra pseudocode: 105360A0_LookAt_GetLookTowardsSpeedImpl.c
Window: [0x105360a0, 0x105360b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105360b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105360a0: e9 9b f5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105360a0 <.text+0x5350a0>:
105360a0:	e9 9b f5 ff ff                                  	jmp    0x10535640
105360a5:	cc                                              	int3
105360a6:	cc                                              	int3
105360a7:	cc                                              	int3
105360a8:	cc                                              	int3
105360a9:	cc                                              	int3
105360aa:	cc                                              	int3
105360ab:	cc                                              	int3
105360ac:	cc                                              	int3
105360ad:	cc                                              	int3
105360ae:	cc                                              	int3
105360af:	cc                                              	int3
