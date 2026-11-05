# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555070 (Route_InsertCustomPathAtIndex)
Paired Ghidra pseudocode: 10555070_Route_InsertCustomPathAtIndex.c
Window: [0x10555070, 0x10555080) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555070: e9 7b ec ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555070 <.text+0x554070>:
10555070:	e9 7b ec ff ff                                  	jmp    0x10553cf0
10555075:	cc                                              	int3
10555076:	cc                                              	int3
10555077:	cc                                              	int3
10555078:	cc                                              	int3
10555079:	cc                                              	int3
1055507a:	cc                                              	int3
1055507b:	cc                                              	int3
1055507c:	cc                                              	int3
1055507d:	cc                                              	int3
1055507e:	cc                                              	int3
1055507f:	cc                                              	int3
