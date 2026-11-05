# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105789a0 (World_HasPagodaRoofsImpl)
Paired Ghidra pseudocode: 105789A0_World_HasPagodaRoofsImpl.c
Window: [0x105789a0, 0x105789b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105789b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105789a0: e9 ab af b4 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105789a0 <.text+0x5779a0>:
105789a0:	e9 ab af b4 ff                                  	jmp    0x100c3950
105789a5:	cc                                              	int3
105789a6:	cc                                              	int3
105789a7:	cc                                              	int3
105789a8:	cc                                              	int3
105789a9:	cc                                              	int3
105789aa:	cc                                              	int3
105789ab:	cc                                              	int3
105789ac:	cc                                              	int3
105789ad:	cc                                              	int3
105789ae:	cc                                              	int3
105789af:	cc                                              	int3
