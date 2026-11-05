# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053c1e0 (RouteManager_SetMinimumDistanceForBoatTravel)
Paired Ghidra pseudocode: 1053C1E0_RouteManager_SetMinimumDistanceForBoatTravel.c
Window: [0x1053c1e0, 0x1053c200) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053c200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053c1e0: e8 fb e4 0d 00 85 c0 74 0e f3 0f 10 44 24 04 f3
1053c1f0: 0f 11 80 6c 09 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053c1e0 <.text+0x53b1e0>:
1053c1e0:	e8 fb e4 0d 00                                  	call   0x1061a6e0
1053c1e5:	85 c0                                           	test   eax,eax
1053c1e7:	74 0e                                           	je     0x1053c1f7
1053c1e9:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
1053c1ef:	f3 0f 11 80 6c 09 00 00                         	movss  DWORD PTR [eax+0x96c],xmm0
1053c1f7:	c3                                              	ret
1053c1f8:	cc                                              	int3
1053c1f9:	cc                                              	int3
1053c1fa:	cc                                              	int3
1053c1fb:	cc                                              	int3
1053c1fc:	cc                                              	int3
1053c1fd:	cc                                              	int3
1053c1fe:	cc                                              	int3
1053c1ff:	cc                                              	int3
