# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10554f50 (Route_Clone)
Paired Ghidra pseudocode: 10554F50_Route_Clone.c
Window: [0x10554f50, 0x10554f60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10554f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10554f50: e9 6b e0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10554f50 <.text+0x553f50>:
10554f50:	e9 6b e0 ff ff                                  	jmp    0x10552fc0
10554f55:	cc                                              	int3
10554f56:	cc                                              	int3
10554f57:	cc                                              	int3
10554f58:	cc                                              	int3
10554f59:	cc                                              	int3
10554f5a:	cc                                              	int3
10554f5b:	cc                                              	int3
10554f5c:	cc                                              	int3
10554f5d:	cc                                              	int3
10554f5e:	cc                                              	int3
10554f5f:	cc                                              	int3
