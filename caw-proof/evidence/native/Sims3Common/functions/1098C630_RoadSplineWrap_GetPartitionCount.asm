# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c630 (RoadSplineWrap_GetPartitionCount)
Paired Ghidra pseudocode: 1098C630_RoadSplineWrap_GetPartitionCount.c
Window: [0x1098c630, 0x1098c650) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c630: 8b 4c 24 04 8b 81 88 01 00 00 2b 81 84 01 00 00
1098c640: c1 f8 06 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c630 <.text+0x98b630>:
1098c630:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c634:	8b 81 88 01 00 00                               	mov    eax,DWORD PTR [ecx+0x188]
1098c63a:	2b 81 84 01 00 00                               	sub    eax,DWORD PTR [ecx+0x184]
1098c640:	c1 f8 06                                        	sar    eax,0x6
1098c643:	c3                                              	ret
1098c644:	cc                                              	int3
1098c645:	cc                                              	int3
1098c646:	cc                                              	int3
1098c647:	cc                                              	int3
1098c648:	cc                                              	int3
1098c649:	cc                                              	int3
1098c64a:	cc                                              	int3
1098c64b:	cc                                              	int3
1098c64c:	cc                                              	int3
1098c64d:	cc                                              	int3
1098c64e:	cc                                              	int3
1098c64f:	cc                                              	int3
