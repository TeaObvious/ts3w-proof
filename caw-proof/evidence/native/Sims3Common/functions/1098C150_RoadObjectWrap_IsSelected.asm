# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c150 (RoadObjectWrap_IsSelected)
Paired Ghidra pseudocode: 1098C150_RoadObjectWrap_IsSelected.c
Window: [0x1098c150, 0x1098c160) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c150: 8b 4c 24 04 33 c0 38 41 04 0f 95 c0 c3 cc cc cc

LINEAR DISASSEMBLY
1098c150 <.text+0x98b150>:
1098c150:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c154:	33 c0                                           	xor    eax,eax
1098c156:	38 41 04                                        	cmp    BYTE PTR [ecx+0x4],al
1098c159:	0f 95 c0                                        	setne  al
1098c15c:	c3                                              	ret
1098c15d:	cc                                              	int3
1098c15e:	cc                                              	int3
1098c15f:	cc                                              	int3
