# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b20 (UserToolUtils_GetTerrainProductListByCategoryImpl)
Paired Ghidra pseudocode: 102C2B20_UserToolUtils_GetTerrainProductListByCategoryImpl.c
Window: [0x102c2b20, 0x102c2b30) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b20: e9 2b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b20 <.text+0x2c1b20>:
102c2b20:	e9 2b fc ff ff                                  	jmp    0x102c2750
102c2b25:	cc                                              	int3
102c2b26:	cc                                              	int3
102c2b27:	cc                                              	int3
102c2b28:	cc                                              	int3
102c2b29:	cc                                              	int3
102c2b2a:	cc                                              	int3
102c2b2b:	cc                                              	int3
102c2b2c:	cc                                              	int3
102c2b2d:	cc                                              	int3
102c2b2e:	cc                                              	int3
102c2b2f:	cc                                              	int3
