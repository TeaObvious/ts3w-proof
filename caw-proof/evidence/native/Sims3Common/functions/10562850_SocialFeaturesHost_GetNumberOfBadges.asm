# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562850 (SocialFeaturesHost_GetNumberOfBadges)
Paired Ghidra pseudocode: 10562850_SocialFeaturesHost_GetNumberOfBadges.c
Window: [0x10562850, 0x10562860) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562850: e9 9b cf 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562850 <.text+0x561850>:
10562850:	e9 9b cf 2a 00                                  	jmp    0x1080f7f0
10562855:	cc                                              	int3
10562856:	cc                                              	int3
10562857:	cc                                              	int3
10562858:	cc                                              	int3
10562859:	cc                                              	int3
1056285a:	cc                                              	int3
1056285b:	cc                                              	int3
1056285c:	cc                                              	int3
1056285d:	cc                                              	int3
1056285e:	cc                                              	int3
1056285f:	cc                                              	int3
