# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053c2c0 (RouteManager_OnExitBuildBuy)
Paired Ghidra pseudocode: 1053C2C0_RouteManager_OnExitBuildBuy.c
Window: [0x1053c2c0, 0x1053c2e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053c2e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053c2c0: e8 1b e4 0d 00 85 c0 74 07 8b c8 e9 e0 a0 0e 00
1053c2d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053c2c0 <.text+0x53b2c0>:
1053c2c0:	e8 1b e4 0d 00                                  	call   0x1061a6e0
1053c2c5:	85 c0                                           	test   eax,eax
1053c2c7:	74 07                                           	je     0x1053c2d0
1053c2c9:	8b c8                                           	mov    ecx,eax
1053c2cb:	e9 e0 a0 0e 00                                  	jmp    0x106263b0
1053c2d0:	c3                                              	ret
1053c2d1:	cc                                              	int3
1053c2d2:	cc                                              	int3
1053c2d3:	cc                                              	int3
1053c2d4:	cc                                              	int3
1053c2d5:	cc                                              	int3
1053c2d6:	cc                                              	int3
1053c2d7:	cc                                              	int3
1053c2d8:	cc                                              	int3
1053c2d9:	cc                                              	int3
1053c2da:	cc                                              	int3
1053c2db:	cc                                              	int3
1053c2dc:	cc                                              	int3
1053c2dd:	cc                                              	int3
1053c2de:	cc                                              	int3
1053c2df:	cc                                              	int3
