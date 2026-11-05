# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b6c0 (World_GetLotWorth)
Paired Ghidra pseudocode: 1057B6C0_World_GetLotWorth.c
Window: [0x1057b6c0, 0x1057b6f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b6c0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b6d0: 24 04 6a 00 50 52 e8 35 b9 cb ff 85 c0 74 07 8b
1057b6e0: c8 e9 da 4b b1 ff 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b6c0 <.text+0x57a6c0>:
1057b6c0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b6c6:	85 c9                                           	test   ecx,ecx
1057b6c8:	74 1c                                           	je     0x1057b6e6
1057b6ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b6ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b6d2:	6a 00                                           	push   0x0
1057b6d4:	50                                              	push   eax
1057b6d5:	52                                              	push   edx
1057b6d6:	e8 35 b9 cb ff                                  	call   0x10237010
1057b6db:	85 c0                                           	test   eax,eax
1057b6dd:	74 07                                           	je     0x1057b6e6
1057b6df:	8b c8                                           	mov    ecx,eax
1057b6e1:	e9 da 4b b1 ff                                  	jmp    0x100902c0
1057b6e6:	33 c0                                           	xor    eax,eax
1057b6e8:	c3                                              	ret
1057b6e9:	cc                                              	int3
1057b6ea:	cc                                              	int3
1057b6eb:	cc                                              	int3
1057b6ec:	cc                                              	int3
1057b6ed:	cc                                              	int3
1057b6ee:	cc                                              	int3
1057b6ef:	cc                                              	int3
