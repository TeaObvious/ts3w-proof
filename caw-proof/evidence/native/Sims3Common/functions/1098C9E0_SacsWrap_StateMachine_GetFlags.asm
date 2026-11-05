# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c9e0 (SacsWrap_StateMachine_GetFlags)
Paired Ghidra pseudocode: 1098C9E0_SacsWrap_StateMachine_GetFlags.c
Window: [0x1098c9e0, 0x1098ca00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c9e0: 8b 44 24 04 85 c0 74 04 8b 40 3c c3 b8 01 00 00
1098c9f0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c9e0 <.text+0x98b9e0>:
1098c9e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098c9e4:	85 c0                                           	test   eax,eax
1098c9e6:	74 04                                           	je     0x1098c9ec
1098c9e8:	8b 40 3c                                        	mov    eax,DWORD PTR [eax+0x3c]
1098c9eb:	c3                                              	ret
1098c9ec:	b8 01 00 00 00                                  	mov    eax,0x1
1098c9f1:	c3                                              	ret
1098c9f2:	cc                                              	int3
1098c9f3:	cc                                              	int3
1098c9f4:	cc                                              	int3
1098c9f5:	cc                                              	int3
1098c9f6:	cc                                              	int3
1098c9f7:	cc                                              	int3
1098c9f8:	cc                                              	int3
1098c9f9:	cc                                              	int3
1098c9fa:	cc                                              	int3
1098c9fb:	cc                                              	int3
1098c9fc:	cc                                              	int3
1098c9fd:	cc                                              	int3
1098c9fe:	cc                                              	int3
1098c9ff:	cc                                              	int3
