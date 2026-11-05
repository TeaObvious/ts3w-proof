# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c410 (RoadBridgeWrap_UpdateSlotPositions)
Paired Ghidra pseudocode: 1098C410_RoadBridgeWrap_UpdateSlotPositions.c
Window: [0x1098c410, 0x1098c420) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c410: 8b 4c 24 04 e9 b7 5e 96 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c410 <.text+0x98b410>:
1098c410:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c414:	e9 b7 5e 96 ff                                  	jmp    0x102f22d0
1098c419:	cc                                              	int3
1098c41a:	cc                                              	int3
1098c41b:	cc                                              	int3
1098c41c:	cc                                              	int3
1098c41d:	cc                                              	int3
1098c41e:	cc                                              	int3
1098c41f:	cc                                              	int3
