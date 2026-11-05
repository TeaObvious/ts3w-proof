# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996ee0 (WorldTerrainWrap_SetRoadTextureIdx)
Paired Ghidra pseudocode: 10996EE0_WorldTerrainWrap_SetRoadTextureIdx.c
Window: [0x10996ee0, 0x10996f00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996ee0: 0f b7 44 24 04 8b 0d c4 00 c7 10 8b 49 5c 50 e8
10996ef0: 9c b2 7a ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996ee0 <.text+0x995ee0>:
10996ee0:	0f b7 44 24 04                                  	movzx  eax,WORD PTR [esp+0x4]
10996ee5:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10996eeb:	8b 49 5c                                        	mov    ecx,DWORD PTR [ecx+0x5c]
10996eee:	50                                              	push   eax
10996eef:	e8 9c b2 7a ff                                  	call   0x10142190
10996ef4:	c3                                              	ret
10996ef5:	cc                                              	int3
10996ef6:	cc                                              	int3
10996ef7:	cc                                              	int3
10996ef8:	cc                                              	int3
10996ef9:	cc                                              	int3
10996efa:	cc                                              	int3
10996efb:	cc                                              	int3
10996efc:	cc                                              	int3
10996efd:	cc                                              	int3
10996efe:	cc                                              	int3
10996eff:	cc                                              	int3
