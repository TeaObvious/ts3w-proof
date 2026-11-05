# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105484f0 (Route_Replace)
Paired Ghidra pseudocode: 105484F0_Route_Replace.c
Window: [0x105484f0, 0x10548500) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105484f0: e9 fb d9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105484f0 <.text+0x5474f0>:
105484f0:	e9 fb d9 ff ff                                  	jmp    0x10545ef0
105484f5:	cc                                              	int3
105484f6:	cc                                              	int3
105484f7:	cc                                              	int3
105484f8:	cc                                              	int3
105484f9:	cc                                              	int3
105484fa:	cc                                              	int3
105484fb:	cc                                              	int3
105484fc:	cc                                              	int3
105484fd:	cc                                              	int3
105484fe:	cc                                              	int3
105484ff:	cc                                              	int3
