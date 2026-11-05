# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1360 (CASUtils_SimBuilderGetMorphWeightBImpl)
Paired Ghidra pseudocode: 103A1360_CASUtils_SimBuilderGetMorphWeightBImpl.c
Window: [0x103a1360, 0x103a13b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a13b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1360: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1370: 35 75 27 e8 a8 9d 1b 00 8b 10 8b c8 8b 82 cc 00
103a1380: 00 00 56 ff d0 85 c0 74 11 f3 0f 10 40 54 f3 0f
103a1390: 11 44 24 08 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11
103a13a0: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1360 <.text+0x3a0360>:
103a1360:	56                                              	push   esi
103a1361:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1365:	8b c6                                           	mov    eax,esi
103a1367:	25 00 00 00 ff                                  	and    eax,0xff000000
103a136c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1371:	75 27                                           	jne    0x103a139a
103a1373:	e8 a8 9d 1b 00                                  	call   0x1055b120
103a1378:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a137a:	8b c8                                           	mov    ecx,eax
103a137c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1382:	56                                              	push   esi
103a1383:	ff d0                                           	call   eax
103a1385:	85 c0                                           	test   eax,eax
103a1387:	74 11                                           	je     0x103a139a
103a1389:	f3 0f 10 40 54                                  	movss  xmm0,DWORD PTR [eax+0x54]
103a138e:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1394:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1398:	5e                                              	pop    esi
103a1399:	c3                                              	ret
103a139a:	0f 57 c0                                        	xorps  xmm0,xmm0
103a139d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a13a3:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a13a7:	5e                                              	pop    esi
103a13a8:	c3                                              	ret
103a13a9:	cc                                              	int3
103a13aa:	cc                                              	int3
103a13ab:	cc                                              	int3
103a13ac:	cc                                              	int3
103a13ad:	cc                                              	int3
103a13ae:	cc                                              	int3
103a13af:	cc                                              	int3
