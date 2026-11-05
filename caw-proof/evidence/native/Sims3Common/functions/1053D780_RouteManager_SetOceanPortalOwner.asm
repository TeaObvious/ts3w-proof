# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d780 (RouteManager_SetOceanPortalOwner)
Paired Ghidra pseudocode: 1053D780_RouteManager_SetOceanPortalOwner.c
Window: [0x1053d780, 0x1053d7a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d780: e8 5b cf 0d 00 85 c0 74 11 8b 4c 24 08 8b 54 24
1053d790: 04 51 52 8b c8 e8 86 d1 0d 00 b0 01 c3 cc cc cc

LINEAR DISASSEMBLY
1053d780 <.text+0x53c780>:
1053d780:	e8 5b cf 0d 00                                  	call   0x1061a6e0
1053d785:	85 c0                                           	test   eax,eax
1053d787:	74 11                                           	je     0x1053d79a
1053d789:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d78d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053d791:	51                                              	push   ecx
1053d792:	52                                              	push   edx
1053d793:	8b c8                                           	mov    ecx,eax
1053d795:	e8 86 d1 0d 00                                  	call   0x1061a920
1053d79a:	b0 01                                           	mov    al,0x1
1053d79c:	c3                                              	ret
1053d79d:	cc                                              	int3
1053d79e:	cc                                              	int3
1053d79f:	cc                                              	int3
