# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d690 (RouteManager_FootprintClearLockKeys)
Paired Ghidra pseudocode: 1053D690_RouteManager_FootprintClearLockKeys.c
Window: [0x1053d690, 0x1053d6c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d690: e8 4b d0 0d 00 85 c0 74 1e 8b 4c 24 08 8b 54 24
1053d6a0: 04 6a 00 51 52 8b c8 e8 d4 f0 0d 00 85 c0 74 07
1053d6b0: 8b c8 e9 19 af 1f 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d690 <.text+0x53c690>:
1053d690:	e8 4b d0 0d 00                                  	call   0x1061a6e0
1053d695:	85 c0                                           	test   eax,eax
1053d697:	74 1e                                           	je     0x1053d6b7
1053d699:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d69d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053d6a1:	6a 00                                           	push   0x0
1053d6a3:	51                                              	push   ecx
1053d6a4:	52                                              	push   edx
1053d6a5:	8b c8                                           	mov    ecx,eax
1053d6a7:	e8 d4 f0 0d 00                                  	call   0x1061c780
1053d6ac:	85 c0                                           	test   eax,eax
1053d6ae:	74 07                                           	je     0x1053d6b7
1053d6b0:	8b c8                                           	mov    ecx,eax
1053d6b2:	e9 19 af 1f 00                                  	jmp    0x107385d0
1053d6b7:	c3                                              	ret
1053d6b8:	cc                                              	int3
1053d6b9:	cc                                              	int3
1053d6ba:	cc                                              	int3
1053d6bb:	cc                                              	int3
1053d6bc:	cc                                              	int3
1053d6bd:	cc                                              	int3
1053d6be:	cc                                              	int3
1053d6bf:	cc                                              	int3
