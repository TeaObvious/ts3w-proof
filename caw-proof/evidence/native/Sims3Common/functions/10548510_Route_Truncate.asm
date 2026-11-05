# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548510 (Route_Truncate)
Paired Ghidra pseudocode: 10548510_Route_Truncate.c
Window: [0x10548510, 0x10548520) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548510: e9 fb de ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548510 <.text+0x547510>:
10548510:	e9 fb de ff ff                                  	jmp    0x10546410
10548515:	cc                                              	int3
10548516:	cc                                              	int3
10548517:	cc                                              	int3
10548518:	cc                                              	int3
10548519:	cc                                              	int3
1054851a:	cc                                              	int3
1054851b:	cc                                              	int3
1054851c:	cc                                              	int3
1054851d:	cc                                              	int3
1054851e:	cc                                              	int3
1054851f:	cc                                              	int3
