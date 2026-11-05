# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d720 (RouteManager_AddWaterSlidePortals)
Paired Ghidra pseudocode: 1053D720_RouteManager_AddWaterSlidePortals.c
Window: [0x1053d720, 0x1053d750) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d720: 56 33 f6 e8 b8 cf 0d 00 85 c0 74 13 8b 4c 24 0c
1053d730: 8b 54 24 08 51 52 8b c8 e8 83 32 0e 00 8b f0 85
1053d740: f6 0f 97 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d720 <.text+0x53c720>:
1053d720:	56                                              	push   esi
1053d721:	33 f6                                           	xor    esi,esi
1053d723:	e8 b8 cf 0d 00                                  	call   0x1061a6e0
1053d728:	85 c0                                           	test   eax,eax
1053d72a:	74 13                                           	je     0x1053d73f
1053d72c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d730:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053d734:	51                                              	push   ecx
1053d735:	52                                              	push   edx
1053d736:	8b c8                                           	mov    ecx,eax
1053d738:	e8 83 32 0e 00                                  	call   0x106209c0
1053d73d:	8b f0                                           	mov    esi,eax
1053d73f:	85 f6                                           	test   esi,esi
1053d741:	0f 97 c0                                        	seta   al
1053d744:	5e                                              	pop    esi
1053d745:	c3                                              	ret
1053d746:	cc                                              	int3
1053d747:	cc                                              	int3
1053d748:	cc                                              	int3
1053d749:	cc                                              	int3
1053d74a:	cc                                              	int3
1053d74b:	cc                                              	int3
1053d74c:	cc                                              	int3
1053d74d:	cc                                              	int3
1053d74e:	cc                                              	int3
1053d74f:	cc                                              	int3
