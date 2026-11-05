# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109969f0 (WorldTerrainWrap_GetPaintingLayersCount)
Paired Ghidra pseudocode: 109969F0_WorldTerrainWrap_GetPaintingLayersCount.c
Window: [0x109969f0, 0x10996a10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109969f0: 8b 44 24 04 85 c0 74 0c 8b 48 64 85 c9 74 05 e9
10996a00: 2c 3b 86 ff 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109969f0 <.text+0x9959f0>:
109969f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109969f4:	85 c0                                           	test   eax,eax
109969f6:	74 0c                                           	je     0x10996a04
109969f8:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
109969fb:	85 c9                                           	test   ecx,ecx
109969fd:	74 05                                           	je     0x10996a04
109969ff:	e9 2c 3b 86 ff                                  	jmp    0x101fa530
10996a04:	33 c0                                           	xor    eax,eax
10996a06:	c3                                              	ret
10996a07:	cc                                              	int3
10996a08:	cc                                              	int3
10996a09:	cc                                              	int3
10996a0a:	cc                                              	int3
10996a0b:	cc                                              	int3
10996a0c:	cc                                              	int3
10996a0d:	cc                                              	int3
10996a0e:	cc                                              	int3
10996a0f:	cc                                              	int3
