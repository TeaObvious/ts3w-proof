# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a07b0 (CASUtils_SimOutfitSetMorphWeightCImpl)
Paired Ghidra pseudocode: 103A07B0_CASUtils_SimOutfitSetMorphWeightCImpl.c
Window: [0x103a07b0, 0x103a07f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a07f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a07b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a07c0: 35 75 21 e8 58 a9 1b 00 8b 10 8b c8 8b 82 cc 00
103a07d0: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
103a07e0: 0f 11 40 70 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a07b0 <.text+0x39f7b0>:
103a07b0:	56                                              	push   esi
103a07b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a07b5:	8b c6                                           	mov    eax,esi
103a07b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a07bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a07c1:	75 21                                           	jne    0x103a07e4
103a07c3:	e8 58 a9 1b 00                                  	call   0x1055b120
103a07c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a07ca:	8b c8                                           	mov    ecx,eax
103a07cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a07d2:	56                                              	push   esi
103a07d3:	ff d0                                           	call   eax
103a07d5:	85 c0                                           	test   eax,eax
103a07d7:	74 0b                                           	je     0x103a07e4
103a07d9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
103a07df:	f3 0f 11 40 70                                  	movss  DWORD PTR [eax+0x70],xmm0
103a07e4:	5e                                              	pop    esi
103a07e5:	c3                                              	ret
103a07e6:	cc                                              	int3
103a07e7:	cc                                              	int3
103a07e8:	cc                                              	int3
103a07e9:	cc                                              	int3
103a07ea:	cc                                              	int3
103a07eb:	cc                                              	int3
103a07ec:	cc                                              	int3
103a07ed:	cc                                              	int3
103a07ee:	cc                                              	int3
103a07ef:	cc                                              	int3
