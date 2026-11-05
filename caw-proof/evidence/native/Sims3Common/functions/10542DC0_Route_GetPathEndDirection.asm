# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542dc0 (Route_GetPathEndDirection)
Paired Ghidra pseudocode: 10542DC0_Route_GetPathEndDirection.c
Window: [0x10542dc0, 0x10542dd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542dc0: e9 fb ee ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542dc0 <.text+0x541dc0>:
10542dc0:	e9 fb ee ff ff                                  	jmp    0x10541cc0
10542dc5:	cc                                              	int3
10542dc6:	cc                                              	int3
10542dc7:	cc                                              	int3
10542dc8:	cc                                              	int3
10542dc9:	cc                                              	int3
10542dca:	cc                                              	int3
10542dcb:	cc                                              	int3
10542dcc:	cc                                              	int3
10542dcd:	cc                                              	int3
10542dce:	cc                                              	int3
10542dcf:	cc                                              	int3
