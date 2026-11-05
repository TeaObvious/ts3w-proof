# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109966c0 (WorldTerrainWrap_RedoHeightData)
Paired Ghidra pseudocode: 109966C0_WorldTerrainWrap_RedoHeightData.c
Window: [0x109966c0, 0x109966f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109966f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109966c0: 56 8b 74 24 08 85 f6 74 17 8b 46 64 8b 48 08 85
109966d0: c9 74 0d e8 18 27 6d ff 8b ce 5e e9 60 46 8c ff
109966e0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109966c0 <.text+0x9956c0>:
109966c0:	56                                              	push   esi
109966c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
109966c5:	85 f6                                           	test   esi,esi
109966c7:	74 17                                           	je     0x109966e0
109966c9:	8b 46 64                                        	mov    eax,DWORD PTR [esi+0x64]
109966cc:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
109966cf:	85 c9                                           	test   ecx,ecx
109966d1:	74 0d                                           	je     0x109966e0
109966d3:	e8 18 27 6d ff                                  	call   0x10068df0
109966d8:	8b ce                                           	mov    ecx,esi
109966da:	5e                                              	pop    esi
109966db:	e9 60 46 8c ff                                  	jmp    0x1025ad40
109966e0:	5e                                              	pop    esi
109966e1:	c3                                              	ret
109966e2:	cc                                              	int3
109966e3:	cc                                              	int3
109966e4:	cc                                              	int3
109966e5:	cc                                              	int3
109966e6:	cc                                              	int3
109966e7:	cc                                              	int3
109966e8:	cc                                              	int3
109966e9:	cc                                              	int3
109966ea:	cc                                              	int3
109966eb:	cc                                              	int3
109966ec:	cc                                              	int3
109966ed:	cc                                              	int3
109966ee:	cc                                              	int3
109966ef:	cc                                              	int3
