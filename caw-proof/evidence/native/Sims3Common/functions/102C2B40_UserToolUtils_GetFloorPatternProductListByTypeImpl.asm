# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b40 (UserToolUtils_GetFloorPatternProductListByTypeImpl)
Paired Ghidra pseudocode: 102C2B40_UserToolUtils_GetFloorPatternProductListByTypeImpl.c
Window: [0x102c2b40, 0x102c2b50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b40: e9 eb fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b40 <.text+0x2c1b40>:
102c2b40:	e9 eb fc ff ff                                  	jmp    0x102c2830
102c2b45:	cc                                              	int3
102c2b46:	cc                                              	int3
102c2b47:	cc                                              	int3
102c2b48:	cc                                              	int3
102c2b49:	cc                                              	int3
102c2b4a:	cc                                              	int3
102c2b4b:	cc                                              	int3
102c2b4c:	cc                                              	int3
102c2b4d:	cc                                              	int3
102c2b4e:	cc                                              	int3
102c2b4f:	cc                                              	int3
