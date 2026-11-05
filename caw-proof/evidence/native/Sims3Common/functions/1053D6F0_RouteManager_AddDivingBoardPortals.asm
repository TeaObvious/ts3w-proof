# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d6f0 (RouteManager_AddDivingBoardPortals)
Paired Ghidra pseudocode: 1053D6F0_RouteManager_AddDivingBoardPortals.c
Window: [0x1053d6f0, 0x1053d720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d6f0: 56 33 f6 e8 e8 cf 0d 00 85 c0 74 13 8b 4c 24 0c
1053d700: 8b 54 24 08 51 52 8b c8 e8 93 32 0e 00 8b f0 85
1053d710: f6 0f 97 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d6f0 <.text+0x53c6f0>:
1053d6f0:	56                                              	push   esi
1053d6f1:	33 f6                                           	xor    esi,esi
1053d6f3:	e8 e8 cf 0d 00                                  	call   0x1061a6e0
1053d6f8:	85 c0                                           	test   eax,eax
1053d6fa:	74 13                                           	je     0x1053d70f
1053d6fc:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d700:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053d704:	51                                              	push   ecx
1053d705:	52                                              	push   edx
1053d706:	8b c8                                           	mov    ecx,eax
1053d708:	e8 93 32 0e 00                                  	call   0x106209a0
1053d70d:	8b f0                                           	mov    esi,eax
1053d70f:	85 f6                                           	test   esi,esi
1053d711:	0f 97 c0                                        	seta   al
1053d714:	5e                                              	pop    esi
1053d715:	c3                                              	ret
1053d716:	cc                                              	int3
1053d717:	cc                                              	int3
1053d718:	cc                                              	int3
1053d719:	cc                                              	int3
1053d71a:	cc                                              	int3
1053d71b:	cc                                              	int3
1053d71c:	cc                                              	int3
1053d71d:	cc                                              	int3
1053d71e:	cc                                              	int3
1053d71f:	cc                                              	int3
