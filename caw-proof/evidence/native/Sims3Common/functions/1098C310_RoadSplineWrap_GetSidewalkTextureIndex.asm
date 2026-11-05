# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c310 (RoadSplineWrap_GetSidewalkTextureIndex)
Paired Ghidra pseudocode: 1098C310_RoadSplineWrap_GetSidewalkTextureIndex.c
Window: [0x1098c310, 0x1098c320) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c310: 8b 44 24 04 66 8b 80 a4 01 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098c310 <.text+0x98b310>:
1098c310:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098c314:	66 8b 80 a4 01 00 00                            	mov    ax,WORD PTR [eax+0x1a4]
1098c31b:	c3                                              	ret
1098c31c:	cc                                              	int3
1098c31d:	cc                                              	int3
1098c31e:	cc                                              	int3
1098c31f:	cc                                              	int3
