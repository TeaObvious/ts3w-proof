# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996870 (WorldTerrainWrap_SetLODDistanceFactor)
Paired Ghidra pseudocode: 10996870_WorldTerrainWrap_SetLODDistanceFactor.c
Window: [0x10996870, 0x10996890) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996870: 8b 4c 24 04 85 c9 74 11 8b 44 24 08 6a 01 89 81
10996880: f8 00 00 00 e8 77 21 8c ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996870 <.text+0x995870>:
10996870:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996874:	85 c9                                           	test   ecx,ecx
10996876:	74 11                                           	je     0x10996889
10996878:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099687c:	6a 01                                           	push   0x1
1099687e:	89 81 f8 00 00 00                               	mov    DWORD PTR [ecx+0xf8],eax
10996884:	e8 77 21 8c ff                                  	call   0x10258a00
10996889:	c3                                              	ret
1099688a:	cc                                              	int3
1099688b:	cc                                              	int3
1099688c:	cc                                              	int3
1099688d:	cc                                              	int3
1099688e:	cc                                              	int3
1099688f:	cc                                              	int3
