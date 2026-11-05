# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053c280 (RouteManager_FootprintHasLockKey)
Paired Ghidra pseudocode: 1053C280_RouteManager_FootprintHasLockKey.c
Window: [0x1053c280, 0x1053c2c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053c2c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053c280: e8 5b e4 0d 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
1053c290: 04 6a 00 51 52 8b c8 e8 e4 04 0e 00 85 c0 74 17
1053c2a0: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
1053c2b0: c8 e8 7a c4 1f 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053c280 <.text+0x53b280>:
1053c280:	e8 5b e4 0d 00                                  	call   0x1061a6e0
1053c285:	85 c0                                           	test   eax,eax
1053c287:	74 2e                                           	je     0x1053c2b7
1053c289:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053c28d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053c291:	6a 00                                           	push   0x0
1053c293:	51                                              	push   ecx
1053c294:	52                                              	push   edx
1053c295:	8b c8                                           	mov    ecx,eax
1053c297:	e8 e4 04 0e 00                                  	call   0x1061c780
1053c29c:	85 c0                                           	test   eax,eax
1053c29e:	74 17                                           	je     0x1053c2b7
1053c2a0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053c2a4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1053c2a8:	51                                              	push   ecx
1053c2a9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1053c2ad:	52                                              	push   edx
1053c2ae:	51                                              	push   ecx
1053c2af:	8b c8                                           	mov    ecx,eax
1053c2b1:	e8 7a c4 1f 00                                  	call   0x10738730
1053c2b6:	c3                                              	ret
1053c2b7:	32 c0                                           	xor    al,al
1053c2b9:	c3                                              	ret
1053c2ba:	cc                                              	int3
1053c2bb:	cc                                              	int3
1053c2bc:	cc                                              	int3
1053c2bd:	cc                                              	int3
1053c2be:	cc                                              	int3
1053c2bf:	cc                                              	int3
