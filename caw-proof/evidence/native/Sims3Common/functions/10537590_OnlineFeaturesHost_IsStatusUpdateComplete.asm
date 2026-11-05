# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537590 (OnlineFeaturesHost_IsStatusUpdateComplete)
Paired Ghidra pseudocode: 10537590_OnlineFeaturesHost_IsStatusUpdateComplete.c
Window: [0x10537590, 0x105375a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105375a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537590: 33 c0 38 05 7c 88 c7 10 0f 94 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10537590 <.text+0x536590>:
10537590:	33 c0                                           	xor    eax,eax
10537592:	38 05 7c 88 c7 10                               	cmp    BYTE PTR ds:0x10c7887c,al
10537598:	0f 94 c0                                        	sete   al
1053759b:	c3                                              	ret
1053759c:	cc                                              	int3
1053759d:	cc                                              	int3
1053759e:	cc                                              	int3
1053759f:	cc                                              	int3
