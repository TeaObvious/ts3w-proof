# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f850 (World_ObjectEnableFootprint)
Paired Ghidra pseudocode: 1057F850_World_ObjectEnableFootprint.c
Window: [0x1057f850, 0x1057f8a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f850: e8 4b a9 1a 00 85 c0 74 3b 8b 4c 24 08 8b 54 24
1057f860: 04 51 52 8b c8 e8 46 b3 1a 00 85 c0 74 26 8b 0d
1057f870: e8 d7 c8 10 51 8b c8 e8 24 75 1a 00 85 c0 74 14
1057f880: 8b 54 24 10 8b 4c 24 0c 52 51 8b c8 e8 7f 88 1b
1057f890: 00 b0 01 c3 32 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057f850 <.text+0x57e850>:
1057f850:	e8 4b a9 1a 00                                  	call   0x1072a1a0
1057f855:	85 c0                                           	test   eax,eax
1057f857:	74 3b                                           	je     0x1057f894
1057f859:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f85d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f861:	51                                              	push   ecx
1057f862:	52                                              	push   edx
1057f863:	8b c8                                           	mov    ecx,eax
1057f865:	e8 46 b3 1a 00                                  	call   0x1072abb0
1057f86a:	85 c0                                           	test   eax,eax
1057f86c:	74 26                                           	je     0x1057f894
1057f86e:	8b 0d e8 d7 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d7e8
1057f874:	51                                              	push   ecx
1057f875:	8b c8                                           	mov    ecx,eax
1057f877:	e8 24 75 1a 00                                  	call   0x10726da0
1057f87c:	85 c0                                           	test   eax,eax
1057f87e:	74 14                                           	je     0x1057f894
1057f880:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057f884:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057f888:	52                                              	push   edx
1057f889:	51                                              	push   ecx
1057f88a:	8b c8                                           	mov    ecx,eax
1057f88c:	e8 7f 88 1b 00                                  	call   0x10738110
1057f891:	b0 01                                           	mov    al,0x1
1057f893:	c3                                              	ret
1057f894:	32 c0                                           	xor    al,al
1057f896:	c3                                              	ret
1057f897:	cc                                              	int3
1057f898:	cc                                              	int3
1057f899:	cc                                              	int3
1057f89a:	cc                                              	int3
1057f89b:	cc                                              	int3
1057f89c:	cc                                              	int3
1057f89d:	cc                                              	int3
1057f89e:	cc                                              	int3
1057f89f:	cc                                              	int3
