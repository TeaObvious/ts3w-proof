# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105369b0 (Objects_GetHeightAboveFloor)
Paired Ghidra pseudocode: 105369B0_Objects_GetHeightAboveFloor.c
Window: [0x105369b0, 0x105369f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105369f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105369b0: e8 eb 37 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
105369c0: c8 e8 ea 41 1f 00 85 c0 74 16 8b 0d 08 04 c7 10
105369d0: 51 8b c8 e8 c8 03 1f 00 85 c0 74 04 d9 40 24 c3
105369e0: d9 ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105369b0 <.text+0x5359b0>:
105369b0:	e8 eb 37 1f 00                                  	call   0x1072a1a0
105369b5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105369b9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105369bd:	51                                              	push   ecx
105369be:	52                                              	push   edx
105369bf:	8b c8                                           	mov    ecx,eax
105369c1:	e8 ea 41 1f 00                                  	call   0x1072abb0
105369c6:	85 c0                                           	test   eax,eax
105369c8:	74 16                                           	je     0x105369e0
105369ca:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
105369d0:	51                                              	push   ecx
105369d1:	8b c8                                           	mov    ecx,eax
105369d3:	e8 c8 03 1f 00                                  	call   0x10726da0
105369d8:	85 c0                                           	test   eax,eax
105369da:	74 04                                           	je     0x105369e0
105369dc:	d9 40 24                                        	fld    DWORD PTR [eax+0x24]
105369df:	c3                                              	ret
105369e0:	d9 ee                                           	fldz
105369e2:	c3                                              	ret
105369e3:	cc                                              	int3
105369e4:	cc                                              	int3
105369e5:	cc                                              	int3
105369e6:	cc                                              	int3
105369e7:	cc                                              	int3
105369e8:	cc                                              	int3
105369e9:	cc                                              	int3
105369ea:	cc                                              	int3
105369eb:	cc                                              	int3
105369ec:	cc                                              	int3
105369ed:	cc                                              	int3
105369ee:	cc                                              	int3
105369ef:	cc                                              	int3
