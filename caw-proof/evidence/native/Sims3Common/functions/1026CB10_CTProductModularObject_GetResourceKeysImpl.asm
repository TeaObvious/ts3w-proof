# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1026cb10 (CTProductModularObject_GetResourceKeysImpl)
Paired Ghidra pseudocode: 1026CB10_CTProductModularObject_GetResourceKeysImpl.c
Window: [0x1026cb10, 0x1026cb20) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1026cb20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1026cb10: e9 cb fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1026cb10 <.text+0x26bb10>:
1026cb10:	e9 cb fe ff ff                                  	jmp    0x1026c9e0
1026cb15:	cc                                              	int3
1026cb16:	cc                                              	int3
1026cb17:	cc                                              	int3
1026cb18:	cc                                              	int3
1026cb19:	cc                                              	int3
1026cb1a:	cc                                              	int3
1026cb1b:	cc                                              	int3
1026cb1c:	cc                                              	int3
1026cb1d:	cc                                              	int3
1026cb1e:	cc                                              	int3
1026cb1f:	cc                                              	int3
