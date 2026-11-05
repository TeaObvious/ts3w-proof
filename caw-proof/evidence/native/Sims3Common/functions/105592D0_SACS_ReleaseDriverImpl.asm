# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105592d0 (SACS_ReleaseDriverImpl)
Paired Ghidra pseudocode: 105592D0_SACS_ReleaseDriverImpl.c
Window: [0x105592d0, 0x105592e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105592e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105592d0: e9 3b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105592d0 <.text+0x5582d0>:
105592d0:	e9 3b fd ff ff                                  	jmp    0x10559010
105592d5:	cc                                              	int3
105592d6:	cc                                              	int3
105592d7:	cc                                              	int3
105592d8:	cc                                              	int3
105592d9:	cc                                              	int3
105592da:	cc                                              	int3
105592db:	cc                                              	int3
105592dc:	cc                                              	int3
105592dd:	cc                                              	int3
105592de:	cc                                              	int3
105592df:	cc                                              	int3
