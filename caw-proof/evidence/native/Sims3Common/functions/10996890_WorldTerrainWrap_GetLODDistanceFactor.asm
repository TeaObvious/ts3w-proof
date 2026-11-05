# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996890 (WorldTerrainWrap_GetLODDistanceFactor)
Paired Ghidra pseudocode: 10996890_WorldTerrainWrap_GetLODDistanceFactor.c
Window: [0x10996890, 0x109968b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109968b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996890: 8b 44 24 04 85 c0 75 06 b8 01 00 00 00 c3 8b 80
109968a0: f8 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996890 <.text+0x995890>:
10996890:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996894:	85 c0                                           	test   eax,eax
10996896:	75 06                                           	jne    0x1099689e
10996898:	b8 01 00 00 00                                  	mov    eax,0x1
1099689d:	c3                                              	ret
1099689e:	8b 80 f8 00 00 00                               	mov    eax,DWORD PTR [eax+0xf8]
109968a4:	c3                                              	ret
109968a5:	cc                                              	int3
109968a6:	cc                                              	int3
109968a7:	cc                                              	int3
109968a8:	cc                                              	int3
109968a9:	cc                                              	int3
109968aa:	cc                                              	int3
109968ab:	cc                                              	int3
109968ac:	cc                                              	int3
109968ad:	cc                                              	int3
109968ae:	cc                                              	int3
109968af:	cc                                              	int3
