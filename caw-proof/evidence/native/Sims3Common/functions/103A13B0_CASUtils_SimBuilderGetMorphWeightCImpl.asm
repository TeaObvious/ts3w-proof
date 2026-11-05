# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a13b0 (CASUtils_SimBuilderGetMorphWeightCImpl)
Paired Ghidra pseudocode: 103A13B0_CASUtils_SimBuilderGetMorphWeightCImpl.c
Window: [0x103a13b0, 0x103a1400) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a13b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a13c0: 35 75 27 e8 58 9d 1b 00 8b 10 8b c8 8b 82 cc 00
103a13d0: 00 00 56 ff d0 85 c0 74 11 f3 0f 10 40 58 f3 0f
103a13e0: 11 44 24 08 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11
103a13f0: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a13b0 <.text+0x3a03b0>:
103a13b0:	56                                              	push   esi
103a13b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a13b5:	8b c6                                           	mov    eax,esi
103a13b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a13bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a13c1:	75 27                                           	jne    0x103a13ea
103a13c3:	e8 58 9d 1b 00                                  	call   0x1055b120
103a13c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a13ca:	8b c8                                           	mov    ecx,eax
103a13cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a13d2:	56                                              	push   esi
103a13d3:	ff d0                                           	call   eax
103a13d5:	85 c0                                           	test   eax,eax
103a13d7:	74 11                                           	je     0x103a13ea
103a13d9:	f3 0f 10 40 58                                  	movss  xmm0,DWORD PTR [eax+0x58]
103a13de:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a13e4:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a13e8:	5e                                              	pop    esi
103a13e9:	c3                                              	ret
103a13ea:	0f 57 c0                                        	xorps  xmm0,xmm0
103a13ed:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a13f3:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a13f7:	5e                                              	pop    esi
103a13f8:	c3                                              	ret
103a13f9:	cc                                              	int3
103a13fa:	cc                                              	int3
103a13fb:	cc                                              	int3
103a13fc:	cc                                              	int3
103a13fd:	cc                                              	int3
103a13fe:	cc                                              	int3
103a13ff:	cc                                              	int3
