# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053c1b0 (RouteManager_AddStairPortals)
Paired Ghidra pseudocode: 1053C1B0_RouteManager_AddStairPortals.c
Window: [0x1053c1b0, 0x1053c1e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053c1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053c1b0: 56 33 f6 e8 28 e5 0d 00 85 c0 74 13 8b 4c 24 0c
1053c1c0: 8b 54 24 08 51 52 8b c8 e8 33 48 0e 00 8b f0 85
1053c1d0: f6 0f 97 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053c1b0 <.text+0x53b1b0>:
1053c1b0:	56                                              	push   esi
1053c1b1:	33 f6                                           	xor    esi,esi
1053c1b3:	e8 28 e5 0d 00                                  	call   0x1061a6e0
1053c1b8:	85 c0                                           	test   eax,eax
1053c1ba:	74 13                                           	je     0x1053c1cf
1053c1bc:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053c1c0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053c1c4:	51                                              	push   ecx
1053c1c5:	52                                              	push   edx
1053c1c6:	8b c8                                           	mov    ecx,eax
1053c1c8:	e8 33 48 0e 00                                  	call   0x10620a00
1053c1cd:	8b f0                                           	mov    esi,eax
1053c1cf:	85 f6                                           	test   esi,esi
1053c1d1:	0f 97 c0                                        	seta   al
1053c1d4:	5e                                              	pop    esi
1053c1d5:	c3                                              	ret
1053c1d6:	cc                                              	int3
1053c1d7:	cc                                              	int3
1053c1d8:	cc                                              	int3
1053c1d9:	cc                                              	int3
1053c1da:	cc                                              	int3
1053c1db:	cc                                              	int3
1053c1dc:	cc                                              	int3
1053c1dd:	cc                                              	int3
1053c1de:	cc                                              	int3
1053c1df:	cc                                              	int3
