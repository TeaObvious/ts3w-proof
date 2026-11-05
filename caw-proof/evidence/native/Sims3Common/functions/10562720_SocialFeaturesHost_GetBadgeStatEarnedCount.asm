# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562720 (SocialFeaturesHost_GetBadgeStatEarnedCount)
Paired Ghidra pseudocode: 10562720_SocialFeaturesHost_GetBadgeStatEarnedCount.c
Window: [0x10562720, 0x10562730) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562720: e9 fb cf 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562720 <.text+0x561720>:
10562720:	e9 fb cf 2a 00                                  	jmp    0x1080f720
10562725:	cc                                              	int3
10562726:	cc                                              	int3
10562727:	cc                                              	int3
10562728:	cc                                              	int3
10562729:	cc                                              	int3
1056272a:	cc                                              	int3
1056272b:	cc                                              	int3
1056272c:	cc                                              	int3
1056272d:	cc                                              	int3
1056272e:	cc                                              	int3
1056272f:	cc                                              	int3
