# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548490 (Route_GetSegmentIdAtIndex)
Paired Ghidra pseudocode: 10548490_Route_GetSegmentIdAtIndex.c
Window: [0x10548490, 0x105484a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105484a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548490: e9 2b d6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548490 <.text+0x547490>:
10548490:	e9 2b d6 ff ff                                  	jmp    0x10545ac0
10548495:	cc                                              	int3
10548496:	cc                                              	int3
10548497:	cc                                              	int3
10548498:	cc                                              	int3
10548499:	cc                                              	int3
1054849a:	cc                                              	int3
1054849b:	cc                                              	int3
1054849c:	cc                                              	int3
1054849d:	cc                                              	int3
1054849e:	cc                                              	int3
1054849f:	cc                                              	int3
