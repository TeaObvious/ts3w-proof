# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555060 (Route_SubdividePathsWithSelfIntersections)
Paired Ghidra pseudocode: 10555060_Route_SubdividePathsWithSelfIntersections.c
Window: [0x10555060, 0x10555070) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555060: e9 cb e6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555060 <.text+0x554060>:
10555060:	e9 cb e6 ff ff                                  	jmp    0x10553730
10555065:	cc                                              	int3
10555066:	cc                                              	int3
10555067:	cc                                              	int3
10555068:	cc                                              	int3
10555069:	cc                                              	int3
1055506a:	cc                                              	int3
1055506b:	cc                                              	int3
1055506c:	cc                                              	int3
1055506d:	cc                                              	int3
1055506e:	cc                                              	int3
1055506f:	cc                                              	int3
