# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562d30 (SocialFeaturesHost_Logout)
Paired Ghidra pseudocode: 10562D30_SocialFeaturesHost_Logout.c
Window: [0x10562d30, 0x10562d40) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562d30: e9 ab ff ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562d30 <.text+0x561d30>:
10562d30:	e9 ab ff ff ff                                  	jmp    0x10562ce0
10562d35:	cc                                              	int3
10562d36:	cc                                              	int3
10562d37:	cc                                              	int3
10562d38:	cc                                              	int3
10562d39:	cc                                              	int3
10562d3a:	cc                                              	int3
10562d3b:	cc                                              	int3
10562d3c:	cc                                              	int3
10562d3d:	cc                                              	int3
10562d3e:	cc                                              	int3
10562d3f:	cc                                              	int3
