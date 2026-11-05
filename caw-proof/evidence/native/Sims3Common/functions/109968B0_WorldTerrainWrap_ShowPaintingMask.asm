# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109968b0 (WorldTerrainWrap_ShowPaintingMask)
Paired Ghidra pseudocode: 109968B0_WorldTerrainWrap_ShowPaintingMask.c
Window: [0x109968b0, 0x109968d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109968d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109968b0: 83 7c 24 0c 00 0f 95 c0 83 7c 24 08 00 0f 95 c1
109968c0: 50 51 8b 4c 24 0c e8 25 23 8c ff c3 cc cc cc cc

LINEAR DISASSEMBLY
109968b0 <.text+0x9958b0>:
109968b0:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
109968b5:	0f 95 c0                                        	setne  al
109968b8:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
109968bd:	0f 95 c1                                        	setne  cl
109968c0:	50                                              	push   eax
109968c1:	51                                              	push   ecx
109968c2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109968c6:	e8 25 23 8c ff                                  	call   0x10258bf0
109968cb:	c3                                              	ret
109968cc:	cc                                              	int3
109968cd:	cc                                              	int3
109968ce:	cc                                              	int3
109968cf:	cc                                              	int3
