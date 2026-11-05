# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c170 (RoadObjectWrap_Disconnect)
Paired Ghidra pseudocode: 1098C170_RoadObjectWrap_Disconnect.c
Window: [0x1098c170, 0x1098c180) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c170: e9 8b e2 7a ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c170 <.text+0x98b170>:
1098c170:	e9 8b e2 7a ff                                  	jmp    0x1013a400
1098c175:	cc                                              	int3
1098c176:	cc                                              	int3
1098c177:	cc                                              	int3
1098c178:	cc                                              	int3
1098c179:	cc                                              	int3
1098c17a:	cc                                              	int3
1098c17b:	cc                                              	int3
1098c17c:	cc                                              	int3
1098c17d:	cc                                              	int3
1098c17e:	cc                                              	int3
1098c17f:	cc                                              	int3
