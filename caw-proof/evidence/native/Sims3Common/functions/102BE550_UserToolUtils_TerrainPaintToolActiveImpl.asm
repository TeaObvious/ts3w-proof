# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be550 (UserToolUtils_TerrainPaintToolActiveImpl)
Paired Ghidra pseudocode: 102BE550_UserToolUtils_TerrainPaintToolActiveImpl.c
Window: [0x102be550, 0x102be580) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be550: e8 5b 8d 00 00 85 c0 74 1e 83 78 30 12 75 18 8b
102be560: 40 2c 85 c0 74 11 83 c0 d8 74 0c 80 b8 8c 00 00
102be570: 00 00 74 03 b0 01 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be550 <.text+0x2bd550>:
102be550:	e8 5b 8d 00 00                                  	call   0x102c72b0
102be555:	85 c0                                           	test   eax,eax
102be557:	74 1e                                           	je     0x102be577
102be559:	83 78 30 12                                     	cmp    DWORD PTR [eax+0x30],0x12
102be55d:	75 18                                           	jne    0x102be577
102be55f:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
102be562:	85 c0                                           	test   eax,eax
102be564:	74 11                                           	je     0x102be577
102be566:	83 c0 d8                                        	add    eax,0xffffffd8
102be569:	74 0c                                           	je     0x102be577
102be56b:	80 b8 8c 00 00 00 00                            	cmp    BYTE PTR [eax+0x8c],0x0
102be572:	74 03                                           	je     0x102be577
102be574:	b0 01                                           	mov    al,0x1
102be576:	c3                                              	ret
102be577:	32 c0                                           	xor    al,al
102be579:	c3                                              	ret
102be57a:	cc                                              	int3
102be57b:	cc                                              	int3
102be57c:	cc                                              	int3
102be57d:	cc                                              	int3
102be57e:	cc                                              	int3
102be57f:	cc                                              	int3
