# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d610 (RouteManager_FootprintAddLockKey)
Paired Ghidra pseudocode: 1053D610_RouteManager_FootprintAddLockKey.c
Window: [0x1053d610, 0x1053d650) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d610: e8 cb d0 0d 00 85 c0 74 2d 8b 4c 24 08 8b 54 24
1053d620: 04 6a 01 51 52 8b c8 e8 54 f1 0d 00 85 c0 74 16
1053d630: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
1053d640: c8 e8 3a b9 1f 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d610 <.text+0x53c610>:
1053d610:	e8 cb d0 0d 00                                  	call   0x1061a6e0
1053d615:	85 c0                                           	test   eax,eax
1053d617:	74 2d                                           	je     0x1053d646
1053d619:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d61d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053d621:	6a 01                                           	push   0x1
1053d623:	51                                              	push   ecx
1053d624:	52                                              	push   edx
1053d625:	8b c8                                           	mov    ecx,eax
1053d627:	e8 54 f1 0d 00                                  	call   0x1061c780
1053d62c:	85 c0                                           	test   eax,eax
1053d62e:	74 16                                           	je     0x1053d646
1053d630:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d634:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1053d638:	51                                              	push   ecx
1053d639:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1053d63d:	52                                              	push   edx
1053d63e:	51                                              	push   ecx
1053d63f:	8b c8                                           	mov    ecx,eax
1053d641:	e8 3a b9 1f 00                                  	call   0x10738f80
1053d646:	c3                                              	ret
1053d647:	cc                                              	int3
1053d648:	cc                                              	int3
1053d649:	cc                                              	int3
1053d64a:	cc                                              	int3
1053d64b:	cc                                              	int3
1053d64c:	cc                                              	int3
1053d64d:	cc                                              	int3
1053d64e:	cc                                              	int3
1053d64f:	cc                                              	int3
