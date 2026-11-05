# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f7a0 (World_ObjectResetParentVisibilityFlags)
Paired Ghidra pseudocode: 1057F7A0_World_ObjectResetParentVisibilityFlags.c
Window: [0x1057f7a0, 0x1057f7e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f7a0: e8 fb a9 1a 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
1057f7b0: 04 51 52 8b c8 e8 f6 b3 1a 00 85 c0 74 19 8b 0d
1057f7c0: e8 da c8 10 51 8b c8 e8 d4 75 1a 00 85 c0 74 07
1057f7d0: 8b c8 e9 89 28 1d 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057f7a0 <.text+0x57e7a0>:
1057f7a0:	e8 fb a9 1a 00                                  	call   0x1072a1a0
1057f7a5:	85 c0                                           	test   eax,eax
1057f7a7:	74 2e                                           	je     0x1057f7d7
1057f7a9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f7ad:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f7b1:	51                                              	push   ecx
1057f7b2:	52                                              	push   edx
1057f7b3:	8b c8                                           	mov    ecx,eax
1057f7b5:	e8 f6 b3 1a 00                                  	call   0x1072abb0
1057f7ba:	85 c0                                           	test   eax,eax
1057f7bc:	74 19                                           	je     0x1057f7d7
1057f7be:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1057f7c4:	51                                              	push   ecx
1057f7c5:	8b c8                                           	mov    ecx,eax
1057f7c7:	e8 d4 75 1a 00                                  	call   0x10726da0
1057f7cc:	85 c0                                           	test   eax,eax
1057f7ce:	74 07                                           	je     0x1057f7d7
1057f7d0:	8b c8                                           	mov    ecx,eax
1057f7d2:	e9 89 28 1d 00                                  	jmp    0x10752060
1057f7d7:	c3                                              	ret
1057f7d8:	cc                                              	int3
1057f7d9:	cc                                              	int3
1057f7da:	cc                                              	int3
1057f7db:	cc                                              	int3
1057f7dc:	cc                                              	int3
1057f7dd:	cc                                              	int3
1057f7de:	cc                                              	int3
1057f7df:	cc                                              	int3
