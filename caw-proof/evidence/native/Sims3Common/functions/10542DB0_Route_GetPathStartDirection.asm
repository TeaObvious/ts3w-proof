# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542db0 (Route_GetPathStartDirection)
Paired Ghidra pseudocode: 10542DB0_Route_GetPathStartDirection.c
Window: [0x10542db0, 0x10542dc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542db0: e9 5b ee ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542db0 <.text+0x541db0>:
10542db0:	e9 5b ee ff ff                                  	jmp    0x10541c10
10542db5:	cc                                              	int3
10542db6:	cc                                              	int3
10542db7:	cc                                              	int3
10542db8:	cc                                              	int3
10542db9:	cc                                              	int3
10542dba:	cc                                              	int3
10542dbb:	cc                                              	int3
10542dbc:	cc                                              	int3
10542dbd:	cc                                              	int3
10542dbe:	cc                                              	int3
10542dbf:	cc                                              	int3
