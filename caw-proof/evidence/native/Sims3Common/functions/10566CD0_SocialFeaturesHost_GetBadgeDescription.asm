# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566cd0 (SocialFeaturesHost_GetBadgeDescription)
Paired Ghidra pseudocode: 10566CD0_SocialFeaturesHost_GetBadgeDescription.c
Window: [0x10566cd0, 0x10566ce0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566cd0: e9 8b f3 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566cd0 <.text+0x565cd0>:
10566cd0:	e9 8b f3 ff ff                                  	jmp    0x10566060
10566cd5:	cc                                              	int3
10566cd6:	cc                                              	int3
10566cd7:	cc                                              	int3
10566cd8:	cc                                              	int3
10566cd9:	cc                                              	int3
10566cda:	cc                                              	int3
10566cdb:	cc                                              	int3
10566cdc:	cc                                              	int3
10566cdd:	cc                                              	int3
10566cde:	cc                                              	int3
10566cdf:	cc                                              	int3
