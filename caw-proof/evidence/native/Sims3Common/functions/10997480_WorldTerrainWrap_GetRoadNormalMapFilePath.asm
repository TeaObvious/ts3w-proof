# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997480 (WorldTerrainWrap_GetRoadNormalMapFilePath)
Paired Ghidra pseudocode: 10997480_WorldTerrainWrap_GetRoadNormalMapFilePath.c
Window: [0x10997480, 0x109974a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109974a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997480: a1 c4 00 c7 10 8b 54 24 08 8b 48 5c 8b 44 24 04
10997490: 52 50 e8 29 c5 7a ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997480 <.text+0x996480>:
10997480:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10997485:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10997489:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
1099748c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997490:	52                                              	push   edx
10997491:	50                                              	push   eax
10997492:	e8 29 c5 7a ff                                  	call   0x101439c0
10997497:	c3                                              	ret
10997498:	cc                                              	int3
10997499:	cc                                              	int3
1099749a:	cc                                              	int3
1099749b:	cc                                              	int3
1099749c:	cc                                              	int3
1099749d:	cc                                              	int3
1099749e:	cc                                              	int3
1099749f:	cc                                              	int3
