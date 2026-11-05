# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c7a0 (RoadSquareWrap_GetRotation)
Paired Ghidra pseudocode: 1098C7A0_RoadSquareWrap_GetRotation.c
Window: [0x1098c7a0, 0x1098c7b0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c7a0: 8b 44 24 04 d9 40 40 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c7a0 <.text+0x98b7a0>:
1098c7a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098c7a4:	d9 40 40                                        	fld    DWORD PTR [eax+0x40]
1098c7a7:	c3                                              	ret
1098c7a8:	cc                                              	int3
1098c7a9:	cc                                              	int3
1098c7aa:	cc                                              	int3
1098c7ab:	cc                                              	int3
1098c7ac:	cc                                              	int3
1098c7ad:	cc                                              	int3
1098c7ae:	cc                                              	int3
1098c7af:	cc                                              	int3
