# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bfba0 (UserToolUtils_GetFeaturedMainMenuItemsListImpl)
Paired Ghidra pseudocode: 102BFBA0_UserToolUtils_GetFeaturedMainMenuItemsListImpl.c
Window: [0x102bfba0, 0x102bfbb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bfbb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bfba0: e9 cb ef ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bfba0 <.text+0x2beba0>:
102bfba0:	e9 cb ef ff ff                                  	jmp    0x102beb70
102bfba5:	cc                                              	int3
102bfba6:	cc                                              	int3
102bfba7:	cc                                              	int3
102bfba8:	cc                                              	int3
102bfba9:	cc                                              	int3
102bfbaa:	cc                                              	int3
102bfbab:	cc                                              	int3
102bfbac:	cc                                              	int3
102bfbad:	cc                                              	int3
102bfbae:	cc                                              	int3
102bfbaf:	cc                                              	int3
