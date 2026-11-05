# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b50 (UserToolUtils_GetDeckProductListByTypeImpl)
Paired Ghidra pseudocode: 102C2B50_UserToolUtils_GetDeckProductListByTypeImpl.c
Window: [0x102c2b50, 0x102c2b60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b50: e9 bb fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b50 <.text+0x2c1b50>:
102c2b50:	e9 bb fe ff ff                                  	jmp    0x102c2a10
102c2b55:	cc                                              	int3
102c2b56:	cc                                              	int3
102c2b57:	cc                                              	int3
102c2b58:	cc                                              	int3
102c2b59:	cc                                              	int3
102c2b5a:	cc                                              	int3
102c2b5b:	cc                                              	int3
102c2b5c:	cc                                              	int3
102c2b5d:	cc                                              	int3
102c2b5e:	cc                                              	int3
102c2b5f:	cc                                              	int3
