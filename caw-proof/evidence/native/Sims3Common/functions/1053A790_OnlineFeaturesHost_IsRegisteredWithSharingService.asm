# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a790 (OnlineFeaturesHost_IsRegisteredWithSharingService)
Paired Ghidra pseudocode: 1053A790_OnlineFeaturesHost_IsRegisteredWithSharingService.c
Window: [0x1053a790, 0x1053a7a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a790: e9 ab fe ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a790 <.text+0x539790>:
1053a790:	e9 ab fe ff ff                                  	jmp    0x1053a640
1053a795:	cc                                              	int3
1053a796:	cc                                              	int3
1053a797:	cc                                              	int3
1053a798:	cc                                              	int3
1053a799:	cc                                              	int3
1053a79a:	cc                                              	int3
1053a79b:	cc                                              	int3
1053a79c:	cc                                              	int3
1053a79d:	cc                                              	int3
1053a79e:	cc                                              	int3
1053a79f:	cc                                              	int3
