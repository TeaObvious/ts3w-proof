# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996a10 (WorldTerrainWrap_GetPaintingLayerTextureFilePath)
Paired Ghidra pseudocode: 10996A10_WorldTerrainWrap_GetPaintingLayerTextureFilePath.c
Window: [0x10996a10, 0x10996a30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996a10: 8b 44 24 04 85 c0 74 13 8b 48 64 85 c9 74 0c 0f
10996a20: b6 44 24 08 50 e8 56 3b 86 ff c3 33 c0 c3 cc cc

LINEAR DISASSEMBLY
10996a10 <.text+0x995a10>:
10996a10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996a14:	85 c0                                           	test   eax,eax
10996a16:	74 13                                           	je     0x10996a2b
10996a18:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10996a1b:	85 c9                                           	test   ecx,ecx
10996a1d:	74 0c                                           	je     0x10996a2b
10996a1f:	0f b6 44 24 08                                  	movzx  eax,BYTE PTR [esp+0x8]
10996a24:	50                                              	push   eax
10996a25:	e8 56 3b 86 ff                                  	call   0x101fa580
10996a2a:	c3                                              	ret
10996a2b:	33 c0                                           	xor    eax,eax
10996a2d:	c3                                              	ret
10996a2e:	cc                                              	int3
10996a2f:	cc                                              	int3
