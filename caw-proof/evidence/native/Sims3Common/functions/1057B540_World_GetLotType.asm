# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b540 (World_GetLotType)
Paired Ghidra pseudocode: 1057B540_World_GetLotType.c
Window: [0x1057b540, 0x1057b570) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b540: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b550: 24 04 6a 00 50 52 e8 b5 ba cb ff 85 c0 74 07 8b
1057b560: 80 08 04 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b540 <.text+0x57a540>:
1057b540:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b546:	85 c9                                           	test   ecx,ecx
1057b548:	74 1c                                           	je     0x1057b566
1057b54a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b54e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b552:	6a 00                                           	push   0x0
1057b554:	50                                              	push   eax
1057b555:	52                                              	push   edx
1057b556:	e8 b5 ba cb ff                                  	call   0x10237010
1057b55b:	85 c0                                           	test   eax,eax
1057b55d:	74 07                                           	je     0x1057b566
1057b55f:	8b 80 08 04 00 00                               	mov    eax,DWORD PTR [eax+0x408]
1057b565:	c3                                              	ret
1057b566:	33 c0                                           	xor    eax,eax
1057b568:	c3                                              	ret
1057b569:	cc                                              	int3
1057b56a:	cc                                              	int3
1057b56b:	cc                                              	int3
1057b56c:	cc                                              	int3
1057b56d:	cc                                              	int3
1057b56e:	cc                                              	int3
1057b56f:	cc                                              	int3
