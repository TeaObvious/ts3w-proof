# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109990d0 (WorldWrap_ShowBrushVisual)
Paired Ghidra pseudocode: 109990D0_WorldWrap_ShowBrushVisual.c
Window: [0x109990d0, 0x109990f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109990f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109990d0: 8b 4c 24 04 56 8b 71 70 85 f6 74 12 8b 44 24 0c
109990e0: 50 e8 fa 0e a7 ff 50 8b ce e8 d2 af 85 ff 5e c3

LINEAR DISASSEMBLY
109990d0 <.text+0x9980d0>:
109990d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109990d4:	56                                              	push   esi
109990d5:	8b 71 70                                        	mov    esi,DWORD PTR [ecx+0x70]
109990d8:	85 f6                                           	test   esi,esi
109990da:	74 12                                           	je     0x109990ee
109990dc:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109990e0:	50                                              	push   eax
109990e1:	e8 fa 0e a7 ff                                  	call   0x10409fe0
109990e6:	50                                              	push   eax
109990e7:	8b ce                                           	mov    ecx,esi
109990e9:	e8 d2 af 85 ff                                  	call   0x101f40c0
109990ee:	5e                                              	pop    esi
109990ef:	c3                                              	ret
