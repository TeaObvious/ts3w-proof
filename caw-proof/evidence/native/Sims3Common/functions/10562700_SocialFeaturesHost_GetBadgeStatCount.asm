# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562700 (SocialFeaturesHost_GetBadgeStatCount)
Paired Ghidra pseudocode: 10562700_SocialFeaturesHost_GetBadgeStatCount.c
Window: [0x10562700, 0x10562710) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562700: e9 ab cf 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562700 <.text+0x561700>:
10562700:	e9 ab cf 2a 00                                  	jmp    0x1080f6b0
10562705:	cc                                              	int3
10562706:	cc                                              	int3
10562707:	cc                                              	int3
10562708:	cc                                              	int3
10562709:	cc                                              	int3
1056270a:	cc                                              	int3
1056270b:	cc                                              	int3
1056270c:	cc                                              	int3
1056270d:	cc                                              	int3
1056270e:	cc                                              	int3
1056270f:	cc                                              	int3
