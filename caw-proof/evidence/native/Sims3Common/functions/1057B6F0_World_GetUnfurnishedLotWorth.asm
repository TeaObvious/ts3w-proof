# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b6f0 (World_GetUnfurnishedLotWorth)
Paired Ghidra pseudocode: 1057B6F0_World_GetUnfurnishedLotWorth.c
Window: [0x1057b6f0, 0x1057b720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b6f0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b700: 24 04 6a 00 50 52 e8 05 b9 cb ff 85 c0 74 07 8b
1057b710: c8 e9 2a 58 b1 ff 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b6f0 <.text+0x57a6f0>:
1057b6f0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b6f6:	85 c9                                           	test   ecx,ecx
1057b6f8:	74 1c                                           	je     0x1057b716
1057b6fa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b6fe:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b702:	6a 00                                           	push   0x0
1057b704:	50                                              	push   eax
1057b705:	52                                              	push   edx
1057b706:	e8 05 b9 cb ff                                  	call   0x10237010
1057b70b:	85 c0                                           	test   eax,eax
1057b70d:	74 07                                           	je     0x1057b716
1057b70f:	8b c8                                           	mov    ecx,eax
1057b711:	e9 2a 58 b1 ff                                  	jmp    0x10090f40
1057b716:	33 c0                                           	xor    eax,eax
1057b718:	c3                                              	ret
1057b719:	cc                                              	int3
1057b71a:	cc                                              	int3
1057b71b:	cc                                              	int3
1057b71c:	cc                                              	int3
1057b71d:	cc                                              	int3
1057b71e:	cc                                              	int3
1057b71f:	cc                                              	int3
