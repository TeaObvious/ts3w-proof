# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577180 (World_GetResidentialLotSubType)
Paired Ghidra pseudocode: 10577180_World_GetResidentialLotSubType.c
Window: [0x10577180, 0x105771c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105771c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577180: 8b 0d c4 00 c7 10 85 c9 74 13 8b 44 24 08 8b 54
10577190: 24 04 6a 00 50 52 e8 75 fe cb ff eb 02 33 c0 33
105771a0: c9 85 c0 74 12 39 88 08 04 00 00 75 07 8b 80 0c
105771b0: 04 00 00 c3 33 c0 c3 8b c1 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577180 <.text+0x576180>:
10577180:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577186:	85 c9                                           	test   ecx,ecx
10577188:	74 13                                           	je     0x1057719d
1057718a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057718e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577192:	6a 00                                           	push   0x0
10577194:	50                                              	push   eax
10577195:	52                                              	push   edx
10577196:	e8 75 fe cb ff                                  	call   0x10237010
1057719b:	eb 02                                           	jmp    0x1057719f
1057719d:	33 c0                                           	xor    eax,eax
1057719f:	33 c9                                           	xor    ecx,ecx
105771a1:	85 c0                                           	test   eax,eax
105771a3:	74 12                                           	je     0x105771b7
105771a5:	39 88 08 04 00 00                               	cmp    DWORD PTR [eax+0x408],ecx
105771ab:	75 07                                           	jne    0x105771b4
105771ad:	8b 80 0c 04 00 00                               	mov    eax,DWORD PTR [eax+0x40c]
105771b3:	c3                                              	ret
105771b4:	33 c0                                           	xor    eax,eax
105771b6:	c3                                              	ret
105771b7:	8b c1                                           	mov    eax,ecx
105771b9:	c3                                              	ret
105771ba:	cc                                              	int3
105771bb:	cc                                              	int3
105771bc:	cc                                              	int3
105771bd:	cc                                              	int3
105771be:	cc                                              	int3
105771bf:	cc                                              	int3
