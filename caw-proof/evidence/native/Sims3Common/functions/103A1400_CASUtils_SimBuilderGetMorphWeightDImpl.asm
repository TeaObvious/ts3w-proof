# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1400 (CASUtils_SimBuilderGetMorphWeightDImpl)
Paired Ghidra pseudocode: 103A1400_CASUtils_SimBuilderGetMorphWeightDImpl.c
Window: [0x103a1400, 0x103a1450) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1400: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1410: 35 75 27 e8 08 9d 1b 00 8b 10 8b c8 8b 82 cc 00
103a1420: 00 00 56 ff d0 85 c0 74 11 f3 0f 10 40 5c f3 0f
103a1430: 11 44 24 08 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11
103a1440: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1400 <.text+0x3a0400>:
103a1400:	56                                              	push   esi
103a1401:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1405:	8b c6                                           	mov    eax,esi
103a1407:	25 00 00 00 ff                                  	and    eax,0xff000000
103a140c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1411:	75 27                                           	jne    0x103a143a
103a1413:	e8 08 9d 1b 00                                  	call   0x1055b120
103a1418:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a141a:	8b c8                                           	mov    ecx,eax
103a141c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1422:	56                                              	push   esi
103a1423:	ff d0                                           	call   eax
103a1425:	85 c0                                           	test   eax,eax
103a1427:	74 11                                           	je     0x103a143a
103a1429:	f3 0f 10 40 5c                                  	movss  xmm0,DWORD PTR [eax+0x5c]
103a142e:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1434:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1438:	5e                                              	pop    esi
103a1439:	c3                                              	ret
103a143a:	0f 57 c0                                        	xorps  xmm0,xmm0
103a143d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1443:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1447:	5e                                              	pop    esi
103a1448:	c3                                              	ret
103a1449:	cc                                              	int3
103a144a:	cc                                              	int3
103a144b:	cc                                              	int3
103a144c:	cc                                              	int3
103a144d:	cc                                              	int3
103a144e:	cc                                              	int3
103a144f:	cc                                              	int3
