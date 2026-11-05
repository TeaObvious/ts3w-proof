# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566940 (SocialFeaturesHost_GetEntitlementName)
Paired Ghidra pseudocode: 10566940_SocialFeaturesHost_GetEntitlementName.c
Window: [0x10566940, 0x10566950) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566940: e9 db d7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566940 <.text+0x565940>:
10566940:	e9 db d7 ff ff                                  	jmp    0x10564120
10566945:	cc                                              	int3
10566946:	cc                                              	int3
10566947:	cc                                              	int3
10566948:	cc                                              	int3
10566949:	cc                                              	int3
1056694a:	cc                                              	int3
1056694b:	cc                                              	int3
1056694c:	cc                                              	int3
1056694d:	cc                                              	int3
1056694e:	cc                                              	int3
1056694f:	cc                                              	int3
