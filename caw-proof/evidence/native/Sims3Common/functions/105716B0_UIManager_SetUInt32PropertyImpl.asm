# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105716b0 (UIManager_SetUInt32PropertyImpl)
Paired Ghidra pseudocode: 105716B0_UIManager_SetUInt32PropertyImpl.c
Window: [0x105716b0, 0x105716c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105716c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105716b0: e9 6b e5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105716b0 <.text+0x5706b0>:
105716b0:	e9 6b e5 ff ff                                  	jmp    0x1056fc20
105716b5:	cc                                              	int3
105716b6:	cc                                              	int3
105716b7:	cc                                              	int3
105716b8:	cc                                              	int3
105716b9:	cc                                              	int3
105716ba:	cc                                              	int3
105716bb:	cc                                              	int3
105716bc:	cc                                              	int3
105716bd:	cc                                              	int3
105716be:	cc                                              	int3
105716bf:	cc                                              	int3
