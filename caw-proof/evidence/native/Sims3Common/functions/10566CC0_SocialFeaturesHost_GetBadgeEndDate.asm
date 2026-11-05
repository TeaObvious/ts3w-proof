# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566cc0 (SocialFeaturesHost_GetBadgeEndDate)
Paired Ghidra pseudocode: 10566CC0_SocialFeaturesHost_GetBadgeEndDate.c
Window: [0x10566cc0, 0x10566cd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566cc0: e9 3b f2 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566cc0 <.text+0x565cc0>:
10566cc0:	e9 3b f2 ff ff                                  	jmp    0x10565f00
10566cc5:	cc                                              	int3
10566cc6:	cc                                              	int3
10566cc7:	cc                                              	int3
10566cc8:	cc                                              	int3
10566cc9:	cc                                              	int3
10566cca:	cc                                              	int3
10566ccb:	cc                                              	int3
10566ccc:	cc                                              	int3
10566ccd:	cc                                              	int3
10566cce:	cc                                              	int3
10566ccf:	cc                                              	int3
