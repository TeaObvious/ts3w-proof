# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105551e0 (RouteManager_CanTransitionWalkstyle)
Paired Ghidra pseudocode: 105551E0_RouteManager_CanTransitionWalkstyle.c
Window: [0x105551e0, 0x105551f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105551f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105551e0: e9 2b f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105551e0 <.text+0x5541e0>:
105551e0:	e9 2b f3 ff ff                                  	jmp    0x10554510
105551e5:	cc                                              	int3
105551e6:	cc                                              	int3
105551e7:	cc                                              	int3
105551e8:	cc                                              	int3
105551e9:	cc                                              	int3
105551ea:	cc                                              	int3
105551eb:	cc                                              	int3
105551ec:	cc                                              	int3
105551ed:	cc                                              	int3
105551ee:	cc                                              	int3
105551ef:	cc                                              	int3
