# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c160 (RoadObjectWrap_Connect)
Paired Ghidra pseudocode: 1098C160_RoadObjectWrap_Connect.c
Window: [0x1098c160, 0x1098c170) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c160: e9 3b e2 7a ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c160 <.text+0x98b160>:
1098c160:	e9 3b e2 7a ff                                  	jmp    0x1013a3a0
1098c165:	cc                                              	int3
1098c166:	cc                                              	int3
1098c167:	cc                                              	int3
1098c168:	cc                                              	int3
1098c169:	cc                                              	int3
1098c16a:	cc                                              	int3
1098c16b:	cc                                              	int3
1098c16c:	cc                                              	int3
1098c16d:	cc                                              	int3
1098c16e:	cc                                              	int3
1098c16f:	cc                                              	int3
