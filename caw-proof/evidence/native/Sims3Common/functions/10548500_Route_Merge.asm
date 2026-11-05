# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548500 (Route_Merge)
Paired Ghidra pseudocode: 10548500_Route_Merge.c
Window: [0x10548500, 0x10548510) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548500: e9 5b de ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548500 <.text+0x547500>:
10548500:	e9 5b de ff ff                                  	jmp    0x10546360
10548505:	cc                                              	int3
10548506:	cc                                              	int3
10548507:	cc                                              	int3
10548508:	cc                                              	int3
10548509:	cc                                              	int3
1054850a:	cc                                              	int3
1054850b:	cc                                              	int3
1054850c:	cc                                              	int3
1054850d:	cc                                              	int3
1054850e:	cc                                              	int3
1054850f:	cc                                              	int3
