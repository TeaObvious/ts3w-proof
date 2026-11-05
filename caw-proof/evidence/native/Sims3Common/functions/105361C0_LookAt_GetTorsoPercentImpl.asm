# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105361c0 (LookAt_GetTorsoPercentImpl)
Paired Ghidra pseudocode: 105361C0_LookAt_GetTorsoPercentImpl.c
Window: [0x105361c0, 0x105361d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105361d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105361c0: e9 5b fa ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105361c0 <.text+0x5351c0>:
105361c0:	e9 5b fa ff ff                                  	jmp    0x10535c20
105361c5:	cc                                              	int3
105361c6:	cc                                              	int3
105361c7:	cc                                              	int3
105361c8:	cc                                              	int3
105361c9:	cc                                              	int3
105361ca:	cc                                              	int3
105361cb:	cc                                              	int3
105361cc:	cc                                              	int3
105361cd:	cc                                              	int3
105361ce:	cc                                              	int3
105361cf:	cc                                              	int3
