# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989a80 (PondWrap_GetWaterLevel)
Paired Ghidra pseudocode: 10989A80_PondWrap_GetWaterLevel.c
Window: [0x10989a80, 0x10989a90) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989a80: 8b 44 24 04 d9 80 18 02 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10989a80 <.text+0x988a80>:
10989a80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989a84:	d9 80 18 02 00 00                               	fld    DWORD PTR [eax+0x218]
10989a8a:	c3                                              	ret
10989a8b:	cc                                              	int3
10989a8c:	cc                                              	int3
10989a8d:	cc                                              	int3
10989a8e:	cc                                              	int3
10989a8f:	cc                                              	int3
