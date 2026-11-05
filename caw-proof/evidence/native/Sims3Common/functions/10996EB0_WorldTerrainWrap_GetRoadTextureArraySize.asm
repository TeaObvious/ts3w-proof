# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996eb0 (WorldTerrainWrap_GetRoadTextureArraySize)
Paired Ghidra pseudocode: 10996EB0_WorldTerrainWrap_GetRoadTextureArraySize.c
Window: [0x10996eb0, 0x10996ee0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996eb0: a1 c4 00 c7 10 8b 40 5c 8b 88 18 01 00 00 2b 88
10996ec0: 14 01 00 00 05 14 01 00 00 b8 a7 c8 67 dd f7 e9
10996ed0: 03 d1 c1 fa 09 8b c2 c1 e8 1f 03 c2 c3 cc cc cc

LINEAR DISASSEMBLY
10996eb0 <.text+0x995eb0>:
10996eb0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996eb5:	8b 40 5c                                        	mov    eax,DWORD PTR [eax+0x5c]
10996eb8:	8b 88 18 01 00 00                               	mov    ecx,DWORD PTR [eax+0x118]
10996ebe:	2b 88 14 01 00 00                               	sub    ecx,DWORD PTR [eax+0x114]
10996ec4:	05 14 01 00 00                                  	add    eax,0x114
10996ec9:	b8 a7 c8 67 dd                                  	mov    eax,0xdd67c8a7
10996ece:	f7 e9                                           	imul   ecx
10996ed0:	03 d1                                           	add    edx,ecx
10996ed2:	c1 fa 09                                        	sar    edx,0x9
10996ed5:	8b c2                                           	mov    eax,edx
10996ed7:	c1 e8 1f                                        	shr    eax,0x1f
10996eda:	03 c2                                           	add    eax,edx
10996edc:	c3                                              	ret
10996edd:	cc                                              	int3
10996ede:	cc                                              	int3
10996edf:	cc                                              	int3
