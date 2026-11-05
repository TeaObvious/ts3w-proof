# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10520700 (Console_InitCursorImpl)
Paired Ghidra pseudocode: 10520700_Console_InitCursorImpl.c
Window: [0x10520700, 0x10520710) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10520710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10520700: b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10520700 <.text+0x51f700>:
10520700:	b0 01                                           	mov    al,0x1
10520702:	c3                                              	ret
10520703:	cc                                              	int3
10520704:	cc                                              	int3
10520705:	cc                                              	int3
10520706:	cc                                              	int3
10520707:	cc                                              	int3
10520708:	cc                                              	int3
10520709:	cc                                              	int3
1052070a:	cc                                              	int3
1052070b:	cc                                              	int3
1052070c:	cc                                              	int3
1052070d:	cc                                              	int3
1052070e:	cc                                              	int3
1052070f:	cc                                              	int3
