# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f7a0 (CASUtils_SimBuilderSetMorphWeightAImpl)
Paired Ghidra pseudocode: 1039F7A0_CASUtils_SimBuilderSetMorphWeightAImpl.c
Window: [0x1039f7a0, 0x1039f7e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f7a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039f7b0: 35 75 25 e8 68 b9 1b 00 8b 10 8b c8 8b 82 cc 00
1039f7c0: 00 00 56 ff d0 85 c0 74 0f f3 0f 10 44 24 0c 83
1039f7d0: 48 1c 10 f3 0f 11 40 50 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f7a0 <.text+0x39e7a0>:
1039f7a0:	56                                              	push   esi
1039f7a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039f7a5:	8b c6                                           	mov    eax,esi
1039f7a7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039f7ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039f7b1:	75 25                                           	jne    0x1039f7d8
1039f7b3:	e8 68 b9 1b 00                                  	call   0x1055b120
1039f7b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039f7ba:	8b c8                                           	mov    ecx,eax
1039f7bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039f7c2:	56                                              	push   esi
1039f7c3:	ff d0                                           	call   eax
1039f7c5:	85 c0                                           	test   eax,eax
1039f7c7:	74 0f                                           	je     0x1039f7d8
1039f7c9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039f7cf:	83 48 1c 10                                     	or     DWORD PTR [eax+0x1c],0x10
1039f7d3:	f3 0f 11 40 50                                  	movss  DWORD PTR [eax+0x50],xmm0
1039f7d8:	5e                                              	pop    esi
1039f7d9:	c3                                              	ret
1039f7da:	cc                                              	int3
1039f7db:	cc                                              	int3
1039f7dc:	cc                                              	int3
1039f7dd:	cc                                              	int3
1039f7de:	cc                                              	int3
1039f7df:	cc                                              	int3
