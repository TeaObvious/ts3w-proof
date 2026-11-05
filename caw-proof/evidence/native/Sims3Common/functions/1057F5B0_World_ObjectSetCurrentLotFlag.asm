# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f5b0 (World_ObjectSetCurrentLotFlag)
Paired Ghidra pseudocode: 1057F5B0_World_ObjectSetCurrentLotFlag.c
Window: [0x1057f5b0, 0x1057f5f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f5f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f5b0: e8 eb ab 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
1057f5c0: 04 51 52 8b c8 e8 e6 b5 1a 00 85 c0 74 1e 8b 0d
1057f5d0: e8 da c8 10 51 8b c8 e8 c4 77 1a 00 85 c0 74 0c
1057f5e0: 8b 54 24 0c 52 8b c8 e8 e4 2c 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
1057f5b0 <.text+0x57e5b0>:
1057f5b0:	e8 eb ab 1a 00                                  	call   0x1072a1a0
1057f5b5:	85 c0                                           	test   eax,eax
1057f5b7:	74 33                                           	je     0x1057f5ec
1057f5b9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f5bd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f5c1:	51                                              	push   ecx
1057f5c2:	52                                              	push   edx
1057f5c3:	8b c8                                           	mov    ecx,eax
1057f5c5:	e8 e6 b5 1a 00                                  	call   0x1072abb0
1057f5ca:	85 c0                                           	test   eax,eax
1057f5cc:	74 1e                                           	je     0x1057f5ec
1057f5ce:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1057f5d4:	51                                              	push   ecx
1057f5d5:	8b c8                                           	mov    ecx,eax
1057f5d7:	e8 c4 77 1a 00                                  	call   0x10726da0
1057f5dc:	85 c0                                           	test   eax,eax
1057f5de:	74 0c                                           	je     0x1057f5ec
1057f5e0:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057f5e4:	52                                              	push   edx
1057f5e5:	8b c8                                           	mov    ecx,eax
1057f5e7:	e8 e4 2c 1d 00                                  	call   0x107522d0
1057f5ec:	c3                                              	ret
1057f5ed:	cc                                              	int3
1057f5ee:	cc                                              	int3
1057f5ef:	cc                                              	int3
