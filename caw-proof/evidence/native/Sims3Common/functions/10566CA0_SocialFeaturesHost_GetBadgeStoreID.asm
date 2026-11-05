# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ca0 (SocialFeaturesHost_GetBadgeStoreID)
Paired Ghidra pseudocode: 10566CA0_SocialFeaturesHost_GetBadgeStoreID.c
Window: [0x10566ca0, 0x10566cb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ca0: e9 9b ef ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566ca0 <.text+0x565ca0>:
10566ca0:	e9 9b ef ff ff                                  	jmp    0x10565c40
10566ca5:	cc                                              	int3
10566ca6:	cc                                              	int3
10566ca7:	cc                                              	int3
10566ca8:	cc                                              	int3
10566ca9:	cc                                              	int3
10566caa:	cc                                              	int3
10566cab:	cc                                              	int3
10566cac:	cc                                              	int3
10566cad:	cc                                              	int3
10566cae:	cc                                              	int3
10566caf:	cc                                              	int3
