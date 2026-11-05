# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d650 (RouteManager_FootprintRemoveLockKey)
Paired Ghidra pseudocode: 1053D650_RouteManager_FootprintRemoveLockKey.c
Window: [0x1053d650, 0x1053d690) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d650: e8 8b d0 0d 00 85 c0 74 2d 8b 4c 24 08 8b 54 24
1053d660: 04 6a 00 51 52 8b c8 e8 14 f1 0d 00 85 c0 74 16
1053d670: 8b 4c 24 0c 8b 54 24 14 51 8b 4c 24 14 52 51 8b
1053d680: c8 e8 7a b2 1f 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d650 <.text+0x53c650>:
1053d650:	e8 8b d0 0d 00                                  	call   0x1061a6e0
1053d655:	85 c0                                           	test   eax,eax
1053d657:	74 2d                                           	je     0x1053d686
1053d659:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d65d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053d661:	6a 00                                           	push   0x0
1053d663:	51                                              	push   ecx
1053d664:	52                                              	push   edx
1053d665:	8b c8                                           	mov    ecx,eax
1053d667:	e8 14 f1 0d 00                                  	call   0x1061c780
1053d66c:	85 c0                                           	test   eax,eax
1053d66e:	74 16                                           	je     0x1053d686
1053d670:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d674:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1053d678:	51                                              	push   ecx
1053d679:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1053d67d:	52                                              	push   edx
1053d67e:	51                                              	push   ecx
1053d67f:	8b c8                                           	mov    ecx,eax
1053d681:	e8 7a b2 1f 00                                  	call   0x10738900
1053d686:	c3                                              	ret
1053d687:	cc                                              	int3
1053d688:	cc                                              	int3
1053d689:	cc                                              	int3
1053d68a:	cc                                              	int3
1053d68b:	cc                                              	int3
1053d68c:	cc                                              	int3
1053d68d:	cc                                              	int3
1053d68e:	cc                                              	int3
1053d68f:	cc                                              	int3
