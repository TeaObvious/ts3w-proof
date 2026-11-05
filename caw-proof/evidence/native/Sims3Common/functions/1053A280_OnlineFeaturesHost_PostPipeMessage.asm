# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a280 (OnlineFeaturesHost_PostPipeMessage)
Paired Ghidra pseudocode: 1053A280_OnlineFeaturesHost_PostPipeMessage.c
Window: [0x1053a280, 0x1053a290) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a280: e9 eb f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a280 <.text+0x539280>:
1053a280:	e9 eb f8 ff ff                                  	jmp    0x10539b70
1053a285:	cc                                              	int3
1053a286:	cc                                              	int3
1053a287:	cc                                              	int3
1053a288:	cc                                              	int3
1053a289:	cc                                              	int3
1053a28a:	cc                                              	int3
1053a28b:	cc                                              	int3
1053a28c:	cc                                              	int3
1053a28d:	cc                                              	int3
1053a28e:	cc                                              	int3
1053a28f:	cc                                              	int3
