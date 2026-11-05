# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105890e0 (World_GetWorldFileName)
Paired Ghidra pseudocode: 105890E0_World_GetWorldFileName.c
Window: [0x105890e0, 0x105890f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105890f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105890e0: e9 fb f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105890e0 <.text+0x5880e0>:
105890e0:	e9 fb f1 ff ff                                  	jmp    0x105882e0
105890e5:	cc                                              	int3
105890e6:	cc                                              	int3
105890e7:	cc                                              	int3
105890e8:	cc                                              	int3
105890e9:	cc                                              	int3
105890ea:	cc                                              	int3
105890eb:	cc                                              	int3
105890ec:	cc                                              	int3
105890ed:	cc                                              	int3
105890ee:	cc                                              	int3
105890ef:	cc                                              	int3
