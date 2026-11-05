# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f7e0 (CASUtils_SimBuilderSetMorphWeightDImpl)
Paired Ghidra pseudocode: 1039F7E0_CASUtils_SimBuilderSetMorphWeightDImpl.c
Window: [0x1039f7e0, 0x1039f820) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f7e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039f7f0: 35 75 28 e8 28 b9 1b 00 8b 10 8b c8 8b 82 cc 00
1039f800: 00 00 56 ff d0 85 c0 74 12 f3 0f 10 44 24 0c 81
1039f810: 48 1c 80 00 00 00 f3 0f 11 40 5c 5e c3 cc cc cc

LINEAR DISASSEMBLY
1039f7e0 <.text+0x39e7e0>:
1039f7e0:	56                                              	push   esi
1039f7e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039f7e5:	8b c6                                           	mov    eax,esi
1039f7e7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039f7ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039f7f1:	75 28                                           	jne    0x1039f81b
1039f7f3:	e8 28 b9 1b 00                                  	call   0x1055b120
1039f7f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039f7fa:	8b c8                                           	mov    ecx,eax
1039f7fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039f802:	56                                              	push   esi
1039f803:	ff d0                                           	call   eax
1039f805:	85 c0                                           	test   eax,eax
1039f807:	74 12                                           	je     0x1039f81b
1039f809:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039f80f:	81 48 1c 80 00 00 00                            	or     DWORD PTR [eax+0x1c],0x80
1039f816:	f3 0f 11 40 5c                                  	movss  DWORD PTR [eax+0x5c],xmm0
1039f81b:	5e                                              	pop    esi
1039f81c:	c3                                              	ret
1039f81d:	cc                                              	int3
1039f81e:	cc                                              	int3
1039f81f:	cc                                              	int3
