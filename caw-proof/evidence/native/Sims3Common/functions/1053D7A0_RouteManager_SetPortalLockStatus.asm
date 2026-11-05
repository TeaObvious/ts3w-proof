# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d7a0 (RouteManager_SetPortalLockStatus)
Paired Ghidra pseudocode: 1053D7A0_RouteManager_SetPortalLockStatus.c
Window: [0x1053d7a0, 0x1053d7e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d7a0: e8 3b cf 0d 00 85 c0 74 2d 8b c8 e8 60 d6 0d 00
1053d7b0: 85 c0 74 22 8b 4c 24 08 8b 54 24 04 51 52 8b c8
1053d7c0: e8 fb a3 ee ff 85 c0 74 0d 8a 4c 24 0c 88 88 8f
1053d7d0: 00 00 00 b0 01 c3 32 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d7a0 <.text+0x53c7a0>:
1053d7a0:	e8 3b cf 0d 00                                  	call   0x1061a6e0
1053d7a5:	85 c0                                           	test   eax,eax
1053d7a7:	74 2d                                           	je     0x1053d7d6
1053d7a9:	8b c8                                           	mov    ecx,eax
1053d7ab:	e8 60 d6 0d 00                                  	call   0x1061ae10
1053d7b0:	85 c0                                           	test   eax,eax
1053d7b2:	74 22                                           	je     0x1053d7d6
1053d7b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d7b8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053d7bc:	51                                              	push   ecx
1053d7bd:	52                                              	push   edx
1053d7be:	8b c8                                           	mov    ecx,eax
1053d7c0:	e8 fb a3 ee ff                                  	call   0x10427bc0
1053d7c5:	85 c0                                           	test   eax,eax
1053d7c7:	74 0d                                           	je     0x1053d7d6
1053d7c9:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
1053d7cd:	88 88 8f 00 00 00                               	mov    BYTE PTR [eax+0x8f],cl
1053d7d3:	b0 01                                           	mov    al,0x1
1053d7d5:	c3                                              	ret
1053d7d6:	32 c0                                           	xor    al,al
1053d7d8:	c3                                              	ret
1053d7d9:	cc                                              	int3
1053d7da:	cc                                              	int3
1053d7db:	cc                                              	int3
1053d7dc:	cc                                              	int3
1053d7dd:	cc                                              	int3
1053d7de:	cc                                              	int3
1053d7df:	cc                                              	int3
