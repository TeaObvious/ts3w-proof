# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a290 (OnlineFeaturesHost_RegisterPromptForCredentialsCallback)
Paired Ghidra pseudocode: 1053A290_OnlineFeaturesHost_RegisterPromptForCredentialsCallback.c
Window: [0x1053a290, 0x1053a2b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a2b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a290: 8b 44 24 04 a3 70 88 c7 10 c7 44 24 04 30 a1 53
1053a2a0: 10 e9 5a 96 12 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a290 <.text+0x539290>:
1053a290:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053a294:	a3 70 88 c7 10                                  	mov    ds:0x10c78870,eax
1053a299:	c7 44 24 04 30 a1 53 10                         	mov    DWORD PTR [esp+0x4],0x1053a130
1053a2a1:	e9 5a 96 12 00                                  	jmp    0x10663900
1053a2a6:	cc                                              	int3
1053a2a7:	cc                                              	int3
1053a2a8:	cc                                              	int3
1053a2a9:	cc                                              	int3
1053a2aa:	cc                                              	int3
1053a2ab:	cc                                              	int3
1053a2ac:	cc                                              	int3
1053a2ad:	cc                                              	int3
1053a2ae:	cc                                              	int3
1053a2af:	cc                                              	int3
