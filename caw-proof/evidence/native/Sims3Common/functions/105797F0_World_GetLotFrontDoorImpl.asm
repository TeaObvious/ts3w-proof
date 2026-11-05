# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105797f0 (World_GetLotFrontDoorImpl)
Paired Ghidra pseudocode: 105797F0_World_GetLotFrontDoorImpl.c
Window: [0x105797f0, 0x10579830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105797f0: e8 eb 0e 0a 00 85 c0 74 0b 8b c8 e8 10 16 0a 00
10579800: 8b c8 eb 02 33 c9 33 c0 33 d2 85 c9 74 15 8b 44
10579810: 24 0c 52 8b 54 24 0c 50 8b 44 24 0c 52 50 e8 3d
10579820: 00 eb ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105797f0 <.text+0x5787f0>:
105797f0:	e8 eb 0e 0a 00                                  	call   0x1061a6e0
105797f5:	85 c0                                           	test   eax,eax
105797f7:	74 0b                                           	je     0x10579804
105797f9:	8b c8                                           	mov    ecx,eax
105797fb:	e8 10 16 0a 00                                  	call   0x1061ae10
10579800:	8b c8                                           	mov    ecx,eax
10579802:	eb 02                                           	jmp    0x10579806
10579804:	33 c9                                           	xor    ecx,ecx
10579806:	33 c0                                           	xor    eax,eax
10579808:	33 d2                                           	xor    edx,edx
1057980a:	85 c9                                           	test   ecx,ecx
1057980c:	74 15                                           	je     0x10579823
1057980e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10579812:	52                                              	push   edx
10579813:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10579817:	50                                              	push   eax
10579818:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057981c:	52                                              	push   edx
1057981d:	50                                              	push   eax
1057981e:	e8 3d 00 eb ff                                  	call   0x10429860
10579823:	c3                                              	ret
10579824:	cc                                              	int3
10579825:	cc                                              	int3
10579826:	cc                                              	int3
10579827:	cc                                              	int3
10579828:	cc                                              	int3
10579829:	cc                                              	int3
1057982a:	cc                                              	int3
1057982b:	cc                                              	int3
1057982c:	cc                                              	int3
1057982d:	cc                                              	int3
1057982e:	cc                                              	int3
1057982f:	cc                                              	int3
