# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053a2b0 (OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback)
Paired Ghidra pseudocode: 1053A2B0_OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback.c
Window: [0x1053a2b0, 0x1053a2d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053a2d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053a2b0: 8b 44 24 04 a3 74 88 c7 10 c7 44 24 04 50 a1 53
1053a2c0: 10 e9 8a 96 12 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053a2b0 <.text+0x5392b0>:
1053a2b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053a2b4:	a3 74 88 c7 10                                  	mov    ds:0x10c78874,eax
1053a2b9:	c7 44 24 04 50 a1 53 10                         	mov    DWORD PTR [esp+0x4],0x1053a150
1053a2c1:	e9 8a 96 12 00                                  	jmp    0x10663950
1053a2c6:	cc                                              	int3
1053a2c7:	cc                                              	int3
1053a2c8:	cc                                              	int3
1053a2c9:	cc                                              	int3
1053a2ca:	cc                                              	int3
1053a2cb:	cc                                              	int3
1053a2cc:	cc                                              	int3
1053a2cd:	cc                                              	int3
1053a2ce:	cc                                              	int3
1053a2cf:	cc                                              	int3
