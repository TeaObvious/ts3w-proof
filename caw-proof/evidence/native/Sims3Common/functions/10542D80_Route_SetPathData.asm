# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542d80 (Route_SetPathData)
Paired Ghidra pseudocode: 10542D80_Route_SetPathData.c
Window: [0x10542d80, 0x10542d90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542d80: e9 fb eb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542d80 <.text+0x541d80>:
10542d80:	e9 fb eb ff ff                                  	jmp    0x10541980
10542d85:	cc                                              	int3
10542d86:	cc                                              	int3
10542d87:	cc                                              	int3
10542d88:	cc                                              	int3
10542d89:	cc                                              	int3
10542d8a:	cc                                              	int3
10542d8b:	cc                                              	int3
10542d8c:	cc                                              	int3
10542d8d:	cc                                              	int3
10542d8e:	cc                                              	int3
10542d8f:	cc                                              	int3
