# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996750 (WorldTerrainWrap_ReadTerrainEditIniIfModified)
Paired Ghidra pseudocode: 10996750_WorldTerrainWrap_ReadTerrainEditIniIfModified.c
Window: [0x10996750, 0x10996760) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996750: e8 fb 5a 6d ff f6 d8 1b c0 f7 d8 c3 cc cc cc cc

LINEAR DISASSEMBLY
10996750 <.text+0x995750>:
10996750:	e8 fb 5a 6d ff                                  	call   0x1006c250
10996755:	f6 d8                                           	neg    al
10996757:	1b c0                                           	sbb    eax,eax
10996759:	f7 d8                                           	neg    eax
1099675b:	c3                                              	ret
1099675c:	cc                                              	int3
1099675d:	cc                                              	int3
1099675e:	cc                                              	int3
1099675f:	cc                                              	int3
