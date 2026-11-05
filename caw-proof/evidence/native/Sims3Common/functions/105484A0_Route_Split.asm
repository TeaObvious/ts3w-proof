# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105484a0 (Route_Split)
Paired Ghidra pseudocode: 105484A0_Route_Split.c
Window: [0x105484a0, 0x105484b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105484b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105484a0: e9 db d6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105484a0 <.text+0x5474a0>:
105484a0:	e9 db d6 ff ff                                  	jmp    0x10545b80
105484a5:	cc                                              	int3
105484a6:	cc                                              	int3
105484a7:	cc                                              	int3
105484a8:	cc                                              	int3
105484a9:	cc                                              	int3
105484aa:	cc                                              	int3
105484ab:	cc                                              	int3
105484ac:	cc                                              	int3
105484ad:	cc                                              	int3
105484ae:	cc                                              	int3
105484af:	cc                                              	int3
