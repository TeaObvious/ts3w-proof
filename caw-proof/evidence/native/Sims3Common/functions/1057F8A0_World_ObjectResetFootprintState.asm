# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f8a0 (World_ObjectResetFootprintState)
Paired Ghidra pseudocode: 1057F8A0_World_ObjectResetFootprintState.c
Window: [0x1057f8a0, 0x1057f8e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f8e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f8a0: e8 fb a8 1a 00 85 c0 74 31 8b 4c 24 08 8b 54 24
1057f8b0: 04 51 52 8b c8 e8 f6 b2 1a 00 85 c0 74 1c 8b 0d
1057f8c0: e8 d7 c8 10 51 8b c8 e8 d4 74 1a 00 85 c0 74 0a
1057f8d0: 8b c8 e8 39 8a 1b 00 b0 01 c3 32 c0 c3 cc cc cc

LINEAR DISASSEMBLY
1057f8a0 <.text+0x57e8a0>:
1057f8a0:	e8 fb a8 1a 00                                  	call   0x1072a1a0
1057f8a5:	85 c0                                           	test   eax,eax
1057f8a7:	74 31                                           	je     0x1057f8da
1057f8a9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f8ad:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f8b1:	51                                              	push   ecx
1057f8b2:	52                                              	push   edx
1057f8b3:	8b c8                                           	mov    ecx,eax
1057f8b5:	e8 f6 b2 1a 00                                  	call   0x1072abb0
1057f8ba:	85 c0                                           	test   eax,eax
1057f8bc:	74 1c                                           	je     0x1057f8da
1057f8be:	8b 0d e8 d7 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d7e8
1057f8c4:	51                                              	push   ecx
1057f8c5:	8b c8                                           	mov    ecx,eax
1057f8c7:	e8 d4 74 1a 00                                  	call   0x10726da0
1057f8cc:	85 c0                                           	test   eax,eax
1057f8ce:	74 0a                                           	je     0x1057f8da
1057f8d0:	8b c8                                           	mov    ecx,eax
1057f8d2:	e8 39 8a 1b 00                                  	call   0x10738310
1057f8d7:	b0 01                                           	mov    al,0x1
1057f8d9:	c3                                              	ret
1057f8da:	32 c0                                           	xor    al,al
1057f8dc:	c3                                              	ret
1057f8dd:	cc                                              	int3
1057f8de:	cc                                              	int3
1057f8df:	cc                                              	int3
