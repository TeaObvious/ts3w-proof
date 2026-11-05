# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfb40 (UserToolUtils_GetFeaturedCASItemsListFilteredImpl)
Paired Ghidra pseudocode: 102BFB40_UserToolUtils_GetFeaturedCASItemsListFilteredImpl.c
Window: [0x102bfb40, 0x102bfb50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfb40: e9 0b ed ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfb40 <.text+0x2beb40>:
102bfb40:	e9 0b ed ff ff                                  	jmp    0x102be850
102bfb45:	cc                                              	int3
102bfb46:	cc                                              	int3
102bfb47:	cc                                              	int3
102bfb48:	cc                                              	int3
102bfb49:	cc                                              	int3
102bfb4a:	cc                                              	int3
102bfb4b:	cc                                              	int3
102bfb4c:	cc                                              	int3
102bfb4d:	cc                                              	int3
102bfb4e:	cc                                              	int3
102bfb4f:	cc                                              	int3
