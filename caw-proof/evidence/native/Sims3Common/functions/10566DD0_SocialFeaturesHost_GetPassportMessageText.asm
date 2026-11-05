# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566dd0 (SocialFeaturesHost_GetPassportMessageText)
Paired Ghidra pseudocode: 10566DD0_SocialFeaturesHost_GetPassportMessageText.c
Window: [0x10566dd0, 0x10566df0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566df0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566dd0: e9 6b fa ff ff cc cc cc cc cc cc cc cc cc cc cc
10566de0: b8 78 01 b2 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566dd0 <.text+0x565dd0>:
10566dd0:	e9 6b fa ff ff                                  	jmp    0x10566840
10566dd5:	cc                                              	int3
10566dd6:	cc                                              	int3
10566dd7:	cc                                              	int3
10566dd8:	cc                                              	int3
10566dd9:	cc                                              	int3
10566dda:	cc                                              	int3
10566ddb:	cc                                              	int3
10566ddc:	cc                                              	int3
10566ddd:	cc                                              	int3
10566dde:	cc                                              	int3
10566ddf:	cc                                              	int3
10566de0:	b8 78 01 b2 10                                  	mov    eax,0x10b20178
10566de5:	c3                                              	ret
10566de6:	cc                                              	int3
10566de7:	cc                                              	int3
10566de8:	cc                                              	int3
10566de9:	cc                                              	int3
10566dea:	cc                                              	int3
10566deb:	cc                                              	int3
10566dec:	cc                                              	int3
10566ded:	cc                                              	int3
10566dee:	cc                                              	int3
10566def:	cc                                              	int3
