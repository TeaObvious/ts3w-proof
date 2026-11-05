# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2b10 (UserToolUtils_GetProductListImpl)
Paired Ghidra pseudocode: 102C2B10_UserToolUtils_GetProductListImpl.c
Window: [0x102c2b10, 0x102c2b20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2b10: e9 3b fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c2b10 <.text+0x2c1b10>:
102c2b10:	e9 3b fb ff ff                                  	jmp    0x102c2650
102c2b15:	cc                                              	int3
102c2b16:	cc                                              	int3
102c2b17:	cc                                              	int3
102c2b18:	cc                                              	int3
102c2b19:	cc                                              	int3
102c2b1a:	cc                                              	int3
102c2b1b:	cc                                              	int3
102c2b1c:	cc                                              	int3
102c2b1d:	cc                                              	int3
102c2b1e:	cc                                              	int3
102c2b1f:	cc                                              	int3
