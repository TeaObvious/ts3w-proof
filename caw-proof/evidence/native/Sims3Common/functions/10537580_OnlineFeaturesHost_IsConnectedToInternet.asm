# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537580 (OnlineFeaturesHost_IsConnectedToInternet)
Paired Ghidra pseudocode: 10537580_OnlineFeaturesHost_IsConnectedToInternet.c
Window: [0x10537580, 0x10537590) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537580: e9 1b 74 2a 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537580 <.text+0x536580>:
10537580:	e9 1b 74 2a 00                                  	jmp    0x107de9a0
10537585:	cc                                              	int3
10537586:	cc                                              	int3
10537587:	cc                                              	int3
10537588:	cc                                              	int3
10537589:	cc                                              	int3
1053758a:	cc                                              	int3
1053758b:	cc                                              	int3
1053758c:	cc                                              	int3
1053758d:	cc                                              	int3
1053758e:	cc                                              	int3
1053758f:	cc                                              	int3
