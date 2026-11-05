# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10534560 (LoadSaveManager_GetCurrentSaveGameInfo_Impl)
Paired Ghidra pseudocode: 10534560_LoadSaveManager_GetCurrentSaveGameInfo_Impl.c
Window: [0x10534560, 0x105345a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105345a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10534560: 56 e8 ba 6b 02 00 8b f0 85 f6 75 04 33 c0 5e c3
10534570: e8 eb a8 b3 ff 85 c0 74 f3 8b c8 e8 00 6e 1d 00
10534580: 85 c0 74 e8 83 40 04 01 8b 16 6a 40 50 8b 82 c8
10534590: 00 00 00 8b ce ff d0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10534560 <.text+0x533560>:
10534560:	56                                              	push   esi
10534561:	e8 ba 6b 02 00                                  	call   0x1055b120
10534566:	8b f0                                           	mov    esi,eax
10534568:	85 f6                                           	test   esi,esi
1053456a:	75 04                                           	jne    0x10534570
1053456c:	33 c0                                           	xor    eax,eax
1053456e:	5e                                              	pop    esi
1053456f:	c3                                              	ret
10534570:	e8 eb a8 b3 ff                                  	call   0x1006ee60
10534575:	85 c0                                           	test   eax,eax
10534577:	74 f3                                           	je     0x1053456c
10534579:	8b c8                                           	mov    ecx,eax
1053457b:	e8 00 6e 1d 00                                  	call   0x1070b380
10534580:	85 c0                                           	test   eax,eax
10534582:	74 e8                                           	je     0x1053456c
10534584:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
10534588:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053458a:	6a 40                                           	push   0x40
1053458c:	50                                              	push   eax
1053458d:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
10534593:	8b ce                                           	mov    ecx,esi
10534595:	ff d0                                           	call   eax
10534597:	5e                                              	pop    esi
10534598:	c3                                              	ret
10534599:	cc                                              	int3
1053459a:	cc                                              	int3
1053459b:	cc                                              	int3
1053459c:	cc                                              	int3
1053459d:	cc                                              	int3
1053459e:	cc                                              	int3
1053459f:	cc                                              	int3
