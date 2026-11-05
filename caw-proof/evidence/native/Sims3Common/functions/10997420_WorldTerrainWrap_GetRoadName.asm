# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997420 (WorldTerrainWrap_GetRoadName)
Paired Ghidra pseudocode: 10997420_WorldTerrainWrap_GetRoadName.c
Window: [0x10997420, 0x10997440) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997420: a1 c4 00 c7 10 8b 54 24 04 8b 48 5c 52 e8 ae aa
10997430: 7a ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997420 <.text+0x996420>:
10997420:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10997425:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10997429:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
1099742c:	52                                              	push   edx
1099742d:	e8 ae aa 7a ff                                  	call   0x10141ee0
10997432:	c3                                              	ret
10997433:	cc                                              	int3
10997434:	cc                                              	int3
10997435:	cc                                              	int3
10997436:	cc                                              	int3
10997437:	cc                                              	int3
10997438:	cc                                              	int3
10997439:	cc                                              	int3
1099743a:	cc                                              	int3
1099743b:	cc                                              	int3
1099743c:	cc                                              	int3
1099743d:	cc                                              	int3
1099743e:	cc                                              	int3
1099743f:	cc                                              	int3
