# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f3e0 (CASUtils_SimBuilderSetAgeGenderSpeciesImpl)
Paired Ghidra pseudocode: 1039F3E0_CASUtils_SimBuilderSetAgeGenderSpeciesImpl.c
Window: [0x1039f3e0, 0x1039f420) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f3e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039f3f0: 35 75 22 e8 28 bd 1b 00 8b 10 8b c8 8b 82 cc 00
1039f400: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
1039f410: e8 3b c1 03 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039f3e0 <.text+0x39e3e0>:
1039f3e0:	56                                              	push   esi
1039f3e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039f3e5:	8b c6                                           	mov    eax,esi
1039f3e7:	25 00 00 00 ff                                  	and    eax,0xff000000
1039f3ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039f3f1:	75 22                                           	jne    0x1039f415
1039f3f3:	e8 28 bd 1b 00                                  	call   0x1055b120
1039f3f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039f3fa:	8b c8                                           	mov    ecx,eax
1039f3fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039f402:	56                                              	push   esi
1039f403:	ff d0                                           	call   eax
1039f405:	85 c0                                           	test   eax,eax
1039f407:	74 0c                                           	je     0x1039f415
1039f409:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1039f40d:	51                                              	push   ecx
1039f40e:	8b c8                                           	mov    ecx,eax
1039f410:	e8 3b c1 03 00                                  	call   0x103db550
1039f415:	5e                                              	pop    esi
1039f416:	c3                                              	ret
1039f417:	cc                                              	int3
1039f418:	cc                                              	int3
1039f419:	cc                                              	int3
1039f41a:	cc                                              	int3
1039f41b:	cc                                              	int3
1039f41c:	cc                                              	int3
1039f41d:	cc                                              	int3
1039f41e:	cc                                              	int3
1039f41f:	cc                                              	int3
