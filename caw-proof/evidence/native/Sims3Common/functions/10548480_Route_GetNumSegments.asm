# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548480 (Route_GetNumSegments)
Paired Ghidra pseudocode: 10548480_Route_GetNumSegments.c
Window: [0x10548480, 0x10548490) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548480: e9 9b d5 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548480 <.text+0x547480>:
10548480:	e9 9b d5 ff ff                                  	jmp    0x10545a20
10548485:	cc                                              	int3
10548486:	cc                                              	int3
10548487:	cc                                              	int3
10548488:	cc                                              	int3
10548489:	cc                                              	int3
1054848a:	cc                                              	int3
1054848b:	cc                                              	int3
1054848c:	cc                                              	int3
1054848d:	cc                                              	int3
1054848e:	cc                                              	int3
1054848f:	cc                                              	int3
