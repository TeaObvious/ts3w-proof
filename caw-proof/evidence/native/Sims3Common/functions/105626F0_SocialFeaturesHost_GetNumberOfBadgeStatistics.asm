# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105626f0 (SocialFeaturesHost_GetNumberOfBadgeStatistics)
Paired Ghidra pseudocode: 105626F0_SocialFeaturesHost_GetNumberOfBadgeStatistics.c
Window: [0x105626f0, 0x10562700) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105626f0: e9 8b cf 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105626f0 <.text+0x5616f0>:
105626f0:	e9 8b cf 2a 00                                  	jmp    0x1080f680
105626f5:	cc                                              	int3
105626f6:	cc                                              	int3
105626f7:	cc                                              	int3
105626f8:	cc                                              	int3
105626f9:	cc                                              	int3
105626fa:	cc                                              	int3
105626fb:	cc                                              	int3
105626fc:	cc                                              	int3
105626fd:	cc                                              	int3
105626fe:	cc                                              	int3
105626ff:	cc                                              	int3
