# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109966f0 (WorldTerrainWrap_SetUndoStackLimit)
Paired Ghidra pseudocode: 109966F0_WorldTerrainWrap_SetUndoStackLimit.c
Window: [0x109966f0, 0x10996720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109966f0: 8b 44 24 04 85 c0 74 23 8b 48 64 85 c9 74 1c 8b
10996700: 41 08 85 c0 56 8b 74 24 0c 74 03 89 70 3c e8 3d
10996710: 03 d2 ff 85 c0 74 03 89 70 70 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
109966f0 <.text+0x9956f0>:
109966f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109966f4:	85 c0                                           	test   eax,eax
109966f6:	74 23                                           	je     0x1099671b
109966f8:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
109966fb:	85 c9                                           	test   ecx,ecx
109966fd:	74 1c                                           	je     0x1099671b
109966ff:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
10996702:	85 c0                                           	test   eax,eax
10996704:	56                                              	push   esi
10996705:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10996709:	74 03                                           	je     0x1099670e
1099670b:	89 70 3c                                        	mov    DWORD PTR [eax+0x3c],esi
1099670e:	e8 3d 03 d2 ff                                  	call   0x106b6a50
10996713:	85 c0                                           	test   eax,eax
10996715:	74 03                                           	je     0x1099671a
10996717:	89 70 70                                        	mov    DWORD PTR [eax+0x70],esi
1099671a:	5e                                              	pop    esi
1099671b:	c3                                              	ret
1099671c:	cc                                              	int3
1099671d:	cc                                              	int3
1099671e:	cc                                              	int3
1099671f:	cc                                              	int3
