# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548260 (Route_SelfIntersectionTest)
Paired Ghidra pseudocode: 10548260_Route_SelfIntersectionTest.c
Window: [0x10548260, 0x10548270) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548260: e9 4b cf ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548260 <.text+0x547260>:
10548260:	e9 4b cf ff ff                                  	jmp    0x105451b0
10548265:	cc                                              	int3
10548266:	cc                                              	int3
10548267:	cc                                              	int3
10548268:	cc                                              	int3
10548269:	cc                                              	int3
1054826a:	cc                                              	int3
1054826b:	cc                                              	int3
1054826c:	cc                                              	int3
1054826d:	cc                                              	int3
1054826e:	cc                                              	int3
1054826f:	cc                                              	int3
