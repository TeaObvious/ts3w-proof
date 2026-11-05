# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580ca0 (World_GetTerrainTypeImpl)
Paired Ghidra pseudocode: 10580CA0_World_GetTerrainTypeImpl.c
Window: [0x10580ca0, 0x10580cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580ca0: 8b 44 24 0c d9 44 24 08 50 83 ec 08 d9 5c 24 04
10580cb0: d9 44 24 10 d9 1c 24 e8 54 b0 ff ff 83 c4 0c c3

LINEAR DISASSEMBLY
10580ca0 <.text+0x57fca0>:
10580ca0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10580ca4:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10580ca8:	50                                              	push   eax
10580ca9:	83 ec 08                                        	sub    esp,0x8
10580cac:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10580cb0:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10580cb4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10580cb7:	e8 54 b0 ff ff                                  	call   0x1057bd10
10580cbc:	83 c4 0c                                        	add    esp,0xc
10580cbf:	c3                                              	ret
