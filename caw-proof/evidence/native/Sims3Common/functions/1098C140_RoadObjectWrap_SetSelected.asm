# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c140 (RoadObjectWrap_SetSelected)
Paired Ghidra pseudocode: 1098C140_RoadObjectWrap_SetSelected.c
Window: [0x1098c140, 0x1098c150) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c140: 83 7c 24 08 00 8b 4c 24 04 0f 95 c0 88 41 04 c3

LINEAR DISASSEMBLY
1098c140 <.text+0x98b140>:
1098c140:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098c145:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c149:	0f 95 c0                                        	setne  al
1098c14c:	88 41 04                                        	mov    BYTE PTR [ecx+0x4],al
1098c14f:	c3                                              	ret
