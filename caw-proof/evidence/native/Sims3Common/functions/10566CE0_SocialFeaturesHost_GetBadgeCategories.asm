# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ce0 (SocialFeaturesHost_GetBadgeCategories)
Paired Ghidra pseudocode: 10566CE0_SocialFeaturesHost_GetBadgeCategories.c
Window: [0x10566ce0, 0x10566cf0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ce0: e9 9b ec ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566ce0 <.text+0x565ce0>:
10566ce0:	e9 9b ec ff ff                                  	jmp    0x10565980
10566ce5:	cc                                              	int3
10566ce6:	cc                                              	int3
10566ce7:	cc                                              	int3
10566ce8:	cc                                              	int3
10566ce9:	cc                                              	int3
10566cea:	cc                                              	int3
10566ceb:	cc                                              	int3
10566cec:	cc                                              	int3
10566ced:	cc                                              	int3
10566cee:	cc                                              	int3
10566cef:	cc                                              	int3
