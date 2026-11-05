# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566c90 (SocialFeaturesHost_GetBadgeName)
Paired Ghidra pseudocode: 10566C90_SocialFeaturesHost_GetBadgeName.c
Window: [0x10566c90, 0x10566ca0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566c90: e9 4b ee ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566c90 <.text+0x565c90>:
10566c90:	e9 4b ee ff ff                                  	jmp    0x10565ae0
10566c95:	cc                                              	int3
10566c96:	cc                                              	int3
10566c97:	cc                                              	int3
10566c98:	cc                                              	int3
10566c99:	cc                                              	int3
10566c9a:	cc                                              	int3
10566c9b:	cc                                              	int3
10566c9c:	cc                                              	int3
10566c9d:	cc                                              	int3
10566c9e:	cc                                              	int3
10566c9f:	cc                                              	int3
