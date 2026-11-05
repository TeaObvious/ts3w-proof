# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d5d0 (RouteManager_SetMinimumDistanceForCarTravel)
Paired Ghidra pseudocode: 1053D5D0_RouteManager_SetMinimumDistanceForCarTravel.c
Window: [0x1053d5d0, 0x1053d5f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d5f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d5d0: e8 0b d1 0d 00 85 c0 74 0f d9 44 24 04 51 8b c8
1053d5e0: d9 1c 24 e8 f8 e1 0d 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d5d0 <.text+0x53c5d0>:
1053d5d0:	e8 0b d1 0d 00                                  	call   0x1061a6e0
1053d5d5:	85 c0                                           	test   eax,eax
1053d5d7:	74 0f                                           	je     0x1053d5e8
1053d5d9:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1053d5dd:	51                                              	push   ecx
1053d5de:	8b c8                                           	mov    ecx,eax
1053d5e0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053d5e3:	e8 f8 e1 0d 00                                  	call   0x1061b7e0
1053d5e8:	c3                                              	ret
1053d5e9:	cc                                              	int3
1053d5ea:	cc                                              	int3
1053d5eb:	cc                                              	int3
1053d5ec:	cc                                              	int3
1053d5ed:	cc                                              	int3
1053d5ee:	cc                                              	int3
1053d5ef:	cc                                              	int3
