# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a7a0 (OnlineFeaturesHost_IsSharingServiceEnabled)
Paired Ghidra pseudocode: 1053A7A0_OnlineFeaturesHost_IsSharingServiceEnabled.c
Window: [0x1053a7a0, 0x1053a7b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a7a0: e9 3b ff ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a7a0 <.text+0x5397a0>:
1053a7a0:	e9 3b ff ff ff                                  	jmp    0x1053a6e0
1053a7a5:	cc                                              	int3
1053a7a6:	cc                                              	int3
1053a7a7:	cc                                              	int3
1053a7a8:	cc                                              	int3
1053a7a9:	cc                                              	int3
1053a7aa:	cc                                              	int3
1053a7ab:	cc                                              	int3
1053a7ac:	cc                                              	int3
1053a7ad:	cc                                              	int3
1053a7ae:	cc                                              	int3
1053a7af:	cc                                              	int3
