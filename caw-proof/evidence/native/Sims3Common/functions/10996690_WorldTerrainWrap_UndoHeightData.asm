# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996690 (WorldTerrainWrap_UndoHeightData)
Paired Ghidra pseudocode: 10996690_WorldTerrainWrap_UndoHeightData.c
Window: [0x10996690, 0x109966c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109966c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996690: 56 8b 74 24 08 85 f6 74 17 8b 46 64 8b 48 08 85
109966a0: c9 74 0d e8 b8 26 6d ff 8b ce 5e e9 90 46 8c ff
109966b0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996690 <.text+0x995690>:
10996690:	56                                              	push   esi
10996691:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10996695:	85 f6                                           	test   esi,esi
10996697:	74 17                                           	je     0x109966b0
10996699:	8b 46 64                                        	mov    eax,DWORD PTR [esi+0x64]
1099669c:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1099669f:	85 c9                                           	test   ecx,ecx
109966a1:	74 0d                                           	je     0x109966b0
109966a3:	e8 b8 26 6d ff                                  	call   0x10068d60
109966a8:	8b ce                                           	mov    ecx,esi
109966aa:	5e                                              	pop    esi
109966ab:	e9 90 46 8c ff                                  	jmp    0x1025ad40
109966b0:	5e                                              	pop    esi
109966b1:	c3                                              	ret
109966b2:	cc                                              	int3
109966b3:	cc                                              	int3
109966b4:	cc                                              	int3
109966b5:	cc                                              	int3
109966b6:	cc                                              	int3
109966b7:	cc                                              	int3
109966b8:	cc                                              	int3
109966b9:	cc                                              	int3
109966ba:	cc                                              	int3
109966bb:	cc                                              	int3
109966bc:	cc                                              	int3
109966bd:	cc                                              	int3
109966be:	cc                                              	int3
109966bf:	cc                                              	int3
