# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548580 (Route_GetNumInterestPoints)
Paired Ghidra pseudocode: 10548580_Route_GetNumInterestPoints.c
Window: [0x10548580, 0x10548590) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548580: e9 8b e1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548580 <.text+0x547580>:
10548580:	e9 8b e1 ff ff                                  	jmp    0x10546710
10548585:	cc                                              	int3
10548586:	cc                                              	int3
10548587:	cc                                              	int3
10548588:	cc                                              	int3
10548589:	cc                                              	int3
1054858a:	cc                                              	int3
1054858b:	cc                                              	int3
1054858c:	cc                                              	int3
1054858d:	cc                                              	int3
1054858e:	cc                                              	int3
1054858f:	cc                                              	int3
