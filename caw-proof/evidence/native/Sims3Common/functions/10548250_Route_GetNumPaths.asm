# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548250 (Route_GetNumPaths)
Paired Ghidra pseudocode: 10548250_Route_GetNumPaths.c
Window: [0x10548250, 0x10548260) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548250: e9 fb ce ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548250 <.text+0x547250>:
10548250:	e9 fb ce ff ff                                  	jmp    0x10545150
10548255:	cc                                              	int3
10548256:	cc                                              	int3
10548257:	cc                                              	int3
10548258:	cc                                              	int3
10548259:	cc                                              	int3
1054825a:	cc                                              	int3
1054825b:	cc                                              	int3
1054825c:	cc                                              	int3
1054825d:	cc                                              	int3
1054825e:	cc                                              	int3
1054825f:	cc                                              	int3
