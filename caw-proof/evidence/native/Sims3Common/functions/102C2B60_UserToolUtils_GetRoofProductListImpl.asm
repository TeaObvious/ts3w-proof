# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b60 (UserToolUtils_GetRoofProductListImpl)
Paired Ghidra pseudocode: 102C2B60_UserToolUtils_GetRoofProductListImpl.c
Window: [0x102c2b60, 0x102c2b70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b60: e9 3b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b60 <.text+0x2c1b60>:
102c2b60:	e9 3b fd ff ff                                  	jmp    0x102c28a0
102c2b65:	cc                                              	int3
102c2b66:	cc                                              	int3
102c2b67:	cc                                              	int3
102c2b68:	cc                                              	int3
102c2b69:	cc                                              	int3
102c2b6a:	cc                                              	int3
102c2b6b:	cc                                              	int3
102c2b6c:	cc                                              	int3
102c2b6d:	cc                                              	int3
102c2b6e:	cc                                              	int3
102c2b6f:	cc                                              	int3
