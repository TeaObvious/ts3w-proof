# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a34b0 (CASUtils_SimOutfitGetNumPartsImpl)
Paired Ghidra pseudocode: 103A34B0_CASUtils_SimOutfitGetNumPartsImpl.c
Window: [0x103a34b0, 0x103a3500) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a34b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a34c0: 35 74 04 33 c0 5e c3 e8 54 7c 1b 00 8b 10 8b c8
103a34d0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 88 9c
103a34e0: 00 00 00 2b 88 98 00 00 00 b8 4f ec c4 4e f7 e9
103a34f0: c1 fa 05 8b c2 c1 e8 1f 03 c2 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
103a34b0 <.text+0x3a24b0>:
103a34b0:	56                                              	push   esi
103a34b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a34b5:	8b c6                                           	mov    eax,esi
103a34b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a34bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a34c1:	74 04                                           	je     0x103a34c7
103a34c3:	33 c0                                           	xor    eax,eax
103a34c5:	5e                                              	pop    esi
103a34c6:	c3                                              	ret
103a34c7:	e8 54 7c 1b 00                                  	call   0x1055b120
103a34cc:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a34ce:	8b c8                                           	mov    ecx,eax
103a34d0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a34d6:	56                                              	push   esi
103a34d7:	ff d0                                           	call   eax
103a34d9:	85 c0                                           	test   eax,eax
103a34db:	74 e6                                           	je     0x103a34c3
103a34dd:	8b 88 9c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x9c]
103a34e3:	2b 88 98 00 00 00                               	sub    ecx,DWORD PTR [eax+0x98]
103a34e9:	b8 4f ec c4 4e                                  	mov    eax,0x4ec4ec4f
103a34ee:	f7 e9                                           	imul   ecx
103a34f0:	c1 fa 05                                        	sar    edx,0x5
103a34f3:	8b c2                                           	mov    eax,edx
103a34f5:	c1 e8 1f                                        	shr    eax,0x1f
103a34f8:	03 c2                                           	add    eax,edx
103a34fa:	5e                                              	pop    esi
103a34fb:	c3                                              	ret
103a34fc:	cc                                              	int3
103a34fd:	cc                                              	int3
103a34fe:	cc                                              	int3
103a34ff:	cc                                              	int3
