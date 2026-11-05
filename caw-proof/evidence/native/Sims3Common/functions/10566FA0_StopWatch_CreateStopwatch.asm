# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566fa0 (StopWatch_CreateStopwatch)
Paired Ghidra pseudocode: 10566FA0_StopWatch_CreateStopwatch.c
Window: [0x10566fa0, 0x10566fb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566fa0: e9 4b fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566fa0 <.text+0x565fa0>:
10566fa0:	e9 4b fe ff ff                                  	jmp    0x10566df0
10566fa5:	cc                                              	int3
10566fa6:	cc                                              	int3
10566fa7:	cc                                              	int3
10566fa8:	cc                                              	int3
10566fa9:	cc                                              	int3
10566faa:	cc                                              	int3
10566fab:	cc                                              	int3
10566fac:	cc                                              	int3
10566fad:	cc                                              	int3
10566fae:	cc                                              	int3
10566faf:	cc                                              	int3
