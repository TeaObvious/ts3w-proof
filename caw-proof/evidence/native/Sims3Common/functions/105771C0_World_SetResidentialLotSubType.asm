# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105771c0 (World_SetResidentialLotSubType)
Paired Ghidra pseudocode: 105771C0_World_SetResidentialLotSubType.c
Window: [0x105771c0, 0x10577200) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105771c0: 8b 0d c4 00 c7 10 85 c9 74 28 8b 44 24 08 8b 54
105771d0: 24 04 6a 00 50 52 e8 35 fe cb ff 85 c0 74 13 83
105771e0: b8 08 04 00 00 00 75 0a 8b 4c 24 0c 89 88 0c 04
105771f0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105771c0 <.text+0x5761c0>:
105771c0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105771c6:	85 c9                                           	test   ecx,ecx
105771c8:	74 28                                           	je     0x105771f2
105771ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105771ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105771d2:	6a 00                                           	push   0x0
105771d4:	50                                              	push   eax
105771d5:	52                                              	push   edx
105771d6:	e8 35 fe cb ff                                  	call   0x10237010
105771db:	85 c0                                           	test   eax,eax
105771dd:	74 13                                           	je     0x105771f2
105771df:	83 b8 08 04 00 00 00                            	cmp    DWORD PTR [eax+0x408],0x0
105771e6:	75 0a                                           	jne    0x105771f2
105771e8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105771ec:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
105771f2:	c3                                              	ret
105771f3:	cc                                              	int3
105771f4:	cc                                              	int3
105771f5:	cc                                              	int3
105771f6:	cc                                              	int3
105771f7:	cc                                              	int3
105771f8:	cc                                              	int3
105771f9:	cc                                              	int3
105771fa:	cc                                              	int3
105771fb:	cc                                              	int3
105771fc:	cc                                              	int3
105771fd:	cc                                              	int3
105771fe:	cc                                              	int3
105771ff:	cc                                              	int3
