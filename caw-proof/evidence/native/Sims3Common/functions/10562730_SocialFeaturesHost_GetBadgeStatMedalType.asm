# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562730 (SocialFeaturesHost_GetBadgeStatMedalType)
Paired Ghidra pseudocode: 10562730_SocialFeaturesHost_GetBadgeStatMedalType.c
Window: [0x10562730, 0x10562740) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562730: e9 1b d0 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562730 <.text+0x561730>:
10562730:	e9 1b d0 2a 00                                  	jmp    0x1080f750
10562735:	cc                                              	int3
10562736:	cc                                              	int3
10562737:	cc                                              	int3
10562738:	cc                                              	int3
10562739:	cc                                              	int3
1056273a:	cc                                              	int3
1056273b:	cc                                              	int3
1056273c:	cc                                              	int3
1056273d:	cc                                              	int3
1056273e:	cc                                              	int3
1056273f:	cc                                              	int3
