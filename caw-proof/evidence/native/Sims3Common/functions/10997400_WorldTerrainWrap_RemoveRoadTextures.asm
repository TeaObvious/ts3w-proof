# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997400 (WorldTerrainWrap_RemoveRoadTextures)
Paired Ghidra pseudocode: 10997400_WorldTerrainWrap_RemoveRoadTextures.c
Window: [0x10997400, 0x10997420) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997400: a1 c4 00 c7 10 8b 54 24 04 8b 48 5c 52 e8 9e 1f
10997410: 7b ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997400 <.text+0x996400>:
10997400:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10997405:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10997409:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
1099740c:	52                                              	push   edx
1099740d:	e8 9e 1f 7b ff                                  	call   0x101493b0
10997412:	c3                                              	ret
10997413:	cc                                              	int3
10997414:	cc                                              	int3
10997415:	cc                                              	int3
10997416:	cc                                              	int3
10997417:	cc                                              	int3
10997418:	cc                                              	int3
10997419:	cc                                              	int3
1099741a:	cc                                              	int3
1099741b:	cc                                              	int3
1099741c:	cc                                              	int3
1099741d:	cc                                              	int3
1099741e:	cc                                              	int3
1099741f:	cc                                              	int3
