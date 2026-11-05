# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566cb0 (SocialFeaturesHost_GetBadgeStartDate)
Paired Ghidra pseudocode: 10566CB0_SocialFeaturesHost_GetBadgeStartDate.c
Window: [0x10566cb0, 0x10566cc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566cb0: e9 eb f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566cb0 <.text+0x565cb0>:
10566cb0:	e9 eb f0 ff ff                                  	jmp    0x10565da0
10566cb5:	cc                                              	int3
10566cb6:	cc                                              	int3
10566cb7:	cc                                              	int3
10566cb8:	cc                                              	int3
10566cb9:	cc                                              	int3
10566cba:	cc                                              	int3
10566cbb:	cc                                              	int3
10566cbc:	cc                                              	int3
10566cbd:	cc                                              	int3
10566cbe:	cc                                              	int3
10566cbf:	cc                                              	int3
