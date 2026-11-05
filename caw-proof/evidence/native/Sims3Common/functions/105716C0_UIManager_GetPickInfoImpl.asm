# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105716c0 (UIManager_GetPickInfoImpl)
Paired Ghidra pseudocode: 105716C0_UIManager_GetPickInfoImpl.c
Window: [0x105716c0, 0x105716d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105716d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105716c0: e9 5b e7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105716c0 <.text+0x5706c0>:
105716c0:	e9 5b e7 ff ff                                  	jmp    0x1056fe20
105716c5:	cc                                              	int3
105716c6:	cc                                              	int3
105716c7:	cc                                              	int3
105716c8:	cc                                              	int3
105716c9:	cc                                              	int3
105716ca:	cc                                              	int3
105716cb:	cc                                              	int3
105716cc:	cc                                              	int3
105716cd:	cc                                              	int3
105716ce:	cc                                              	int3
105716cf:	cc                                              	int3
