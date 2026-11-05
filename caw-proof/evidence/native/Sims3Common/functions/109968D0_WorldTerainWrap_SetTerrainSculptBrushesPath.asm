# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109968d0 (WorldTerainWrap_SetTerrainSculptBrushesPath)
Paired Ghidra pseudocode: 109968D0_WorldTerainWrap_SetTerrainSculptBrushesPath.c
Window: [0x109968d0, 0x109968f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109968f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109968d0: 8b 44 24 04 85 c0 74 09 89 44 24 04 e9 8f 59 6d
109968e0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109968d0 <.text+0x9958d0>:
109968d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109968d4:	85 c0                                           	test   eax,eax
109968d6:	74 09                                           	je     0x109968e1
109968d8:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
109968dc:	e9 8f 59 6d ff                                  	jmp    0x1006c270
109968e1:	c3                                              	ret
109968e2:	cc                                              	int3
109968e3:	cc                                              	int3
109968e4:	cc                                              	int3
109968e5:	cc                                              	int3
109968e6:	cc                                              	int3
109968e7:	cc                                              	int3
109968e8:	cc                                              	int3
109968e9:	cc                                              	int3
109968ea:	cc                                              	int3
109968eb:	cc                                              	int3
109968ec:	cc                                              	int3
109968ed:	cc                                              	int3
109968ee:	cc                                              	int3
109968ef:	cc                                              	int3
