# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfb30 (UserToolUtils_GetFeaturedItemsListImpl)
Paired Ghidra pseudocode: 102BFB30_UserToolUtils_GetFeaturedItemsListImpl.c
Window: [0x102bfb30, 0x102bfb40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfb40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfb30: e9 6b f1 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfb30 <.text+0x2beb30>:
102bfb30:	e9 6b f1 ff ff                                  	jmp    0x102beca0
102bfb35:	cc                                              	int3
102bfb36:	cc                                              	int3
102bfb37:	cc                                              	int3
102bfb38:	cc                                              	int3
102bfb39:	cc                                              	int3
102bfb3a:	cc                                              	int3
102bfb3b:	cc                                              	int3
102bfb3c:	cc                                              	int3
102bfb3d:	cc                                              	int3
102bfb3e:	cc                                              	int3
102bfb3f:	cc                                              	int3
