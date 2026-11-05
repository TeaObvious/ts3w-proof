# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581780 (World_ObjectSetGhostState)
Paired Ghidra pseudocode: 10581780_World_ObjectSetGhostState.c
Window: [0x10581780, 0x105817d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105817d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581780: e8 1b 8a 1a 00 85 c0 74 38 8b 4c 24 08 8b 54 24
10581790: 04 51 52 8b c8 e8 16 94 1a 00 85 c0 74 23 8b 0d
105817a0: e8 da c8 10 51 8b c8 e8 f4 55 1a 00 85 c0 74 11
105817b0: 8b 54 24 10 8b 4c 24 0c 52 51 8b c8 e8 9f f2 1c
105817c0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581780 <.text+0x580780>:
10581780:	e8 1b 8a 1a 00                                  	call   0x1072a1a0
10581785:	85 c0                                           	test   eax,eax
10581787:	74 38                                           	je     0x105817c1
10581789:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1058178d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10581791:	51                                              	push   ecx
10581792:	52                                              	push   edx
10581793:	8b c8                                           	mov    ecx,eax
10581795:	e8 16 94 1a 00                                  	call   0x1072abb0
1058179a:	85 c0                                           	test   eax,eax
1058179c:	74 23                                           	je     0x105817c1
1058179e:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
105817a4:	51                                              	push   ecx
105817a5:	8b c8                                           	mov    ecx,eax
105817a7:	e8 f4 55 1a 00                                  	call   0x10726da0
105817ac:	85 c0                                           	test   eax,eax
105817ae:	74 11                                           	je     0x105817c1
105817b0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105817b4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105817b8:	52                                              	push   edx
105817b9:	51                                              	push   ecx
105817ba:	8b c8                                           	mov    ecx,eax
105817bc:	e8 9f f2 1c 00                                  	call   0x10750a60
105817c1:	c3                                              	ret
105817c2:	cc                                              	int3
105817c3:	cc                                              	int3
105817c4:	cc                                              	int3
105817c5:	cc                                              	int3
105817c6:	cc                                              	int3
105817c7:	cc                                              	int3
105817c8:	cc                                              	int3
105817c9:	cc                                              	int3
105817ca:	cc                                              	int3
105817cb:	cc                                              	int3
105817cc:	cc                                              	int3
105817cd:	cc                                              	int3
105817ce:	cc                                              	int3
105817cf:	cc                                              	int3
