# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c320 (RoadSplineWrap_SetSidewalkTextureIndex)
Paired Ghidra pseudocode: 1098C320_RoadSplineWrap_SetSidewalkTextureIndex.c
Window: [0x1098c320, 0x1098c340) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c320: 66 8b 44 24 08 8b 4c 24 04 66 89 81 a4 01 00 00
1098c330: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c320 <.text+0x98b320>:
1098c320:	66 8b 44 24 08                                  	mov    ax,WORD PTR [esp+0x8]
1098c325:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c329:	66 89 81 a4 01 00 00                            	mov    WORD PTR [ecx+0x1a4],ax
1098c330:	c3                                              	ret
1098c331:	cc                                              	int3
1098c332:	cc                                              	int3
1098c333:	cc                                              	int3
1098c334:	cc                                              	int3
1098c335:	cc                                              	int3
1098c336:	cc                                              	int3
1098c337:	cc                                              	int3
1098c338:	cc                                              	int3
1098c339:	cc                                              	int3
1098c33a:	cc                                              	int3
1098c33b:	cc                                              	int3
1098c33c:	cc                                              	int3
1098c33d:	cc                                              	int3
1098c33e:	cc                                              	int3
1098c33f:	cc                                              	int3
