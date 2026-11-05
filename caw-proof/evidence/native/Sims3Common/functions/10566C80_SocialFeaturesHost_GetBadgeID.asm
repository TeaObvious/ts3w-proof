# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c80 (SocialFeaturesHost_GetBadgeID)
Paired Ghidra pseudocode: 10566C80_SocialFeaturesHost_GetBadgeID.c
Window: [0x10566c80, 0x10566c90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c80: e9 2b ec ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c80 <.text+0x565c80>:
10566c80:	e9 2b ec ff ff                                  	jmp    0x105658b0
10566c85:	cc                                              	int3
10566c86:	cc                                              	int3
10566c87:	cc                                              	int3
10566c88:	cc                                              	int3
10566c89:	cc                                              	int3
10566c8a:	cc                                              	int3
10566c8b:	cc                                              	int3
10566c8c:	cc                                              	int3
10566c8d:	cc                                              	int3
10566c8e:	cc                                              	int3
10566c8f:	cc                                              	int3
