# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998fd0 (WorldTerrainWrap_UndoLayerPaint)
Paired Ghidra pseudocode: 10998FD0_WorldTerrainWrap_UndoLayerPaint.c
Window: [0x10998fd0, 0x10999000) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998fd0: a1 c4 00 c7 10 85 c0 74 17 8b 48 54 85 c9 74 10
10998fe0: e8 6b da d1 ff 85 c0 74 07 8b c8 e9 50 91 85 ff
10998ff0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998fd0 <.text+0x997fd0>:
10998fd0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10998fd5:	85 c0                                           	test   eax,eax
10998fd7:	74 17                                           	je     0x10998ff0
10998fd9:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998fdc:	85 c9                                           	test   ecx,ecx
10998fde:	74 10                                           	je     0x10998ff0
10998fe0:	e8 6b da d1 ff                                  	call   0x106b6a50
10998fe5:	85 c0                                           	test   eax,eax
10998fe7:	74 07                                           	je     0x10998ff0
10998fe9:	8b c8                                           	mov    ecx,eax
10998feb:	e9 50 91 85 ff                                  	jmp    0x101f2140
10998ff0:	c3                                              	ret
10998ff1:	cc                                              	int3
10998ff2:	cc                                              	int3
10998ff3:	cc                                              	int3
10998ff4:	cc                                              	int3
10998ff5:	cc                                              	int3
10998ff6:	cc                                              	int3
10998ff7:	cc                                              	int3
10998ff8:	cc                                              	int3
10998ff9:	cc                                              	int3
10998ffa:	cc                                              	int3
10998ffb:	cc                                              	int3
10998ffc:	cc                                              	int3
10998ffd:	cc                                              	int3
10998ffe:	cc                                              	int3
10998fff:	cc                                              	int3
