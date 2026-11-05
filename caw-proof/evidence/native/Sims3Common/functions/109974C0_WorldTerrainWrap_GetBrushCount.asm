# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109974c0 (WorldTerrainWrap_GetBrushCount)
Paired Ghidra pseudocode: 109974C0_WorldTerrainWrap_GetBrushCount.c
Window: [0x109974c0, 0x109974d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109974d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109974c0: a1 14 e5 c0 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109974c0 <.text+0x9964c0>:
109974c0:	a1 14 e5 c0 10                                  	mov    eax,ds:0x10c0e514
109974c5:	c3                                              	ret
109974c6:	cc                                              	int3
109974c7:	cc                                              	int3
109974c8:	cc                                              	int3
109974c9:	cc                                              	int3
109974ca:	cc                                              	int3
109974cb:	cc                                              	int3
109974cc:	cc                                              	int3
109974cd:	cc                                              	int3
109974ce:	cc                                              	int3
109974cf:	cc                                              	int3
