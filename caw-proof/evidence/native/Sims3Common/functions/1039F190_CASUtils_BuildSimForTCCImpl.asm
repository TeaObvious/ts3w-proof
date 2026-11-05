# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039f190 (CASUtils_BuildSimForTCCImpl)
Paired Ghidra pseudocode: 1039F190_CASUtils_BuildSimForTCCImpl.c
Window: [0x1039f190, 0x1039f1d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039f1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039f190: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039f1a0: 35 75 29 e8 78 bf 1b 00 8b 10 8b c8 8b 82 cc 00
1039f1b0: 00 00 56 ff d0 8b f0 85 f6 74 11 e8 20 6e 04 00
1039f1c0: 85 c0 74 08 56 8b c8 e8 04 a1 04 00 5e c3 cc cc

LINEAR DISASSEMBLY
1039f190 <.text+0x39e190>:
1039f190:	56                                              	push   esi
1039f191:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039f195:	8b c6                                           	mov    eax,esi
1039f197:	25 00 00 00 ff                                  	and    eax,0xff000000
1039f19c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039f1a1:	75 29                                           	jne    0x1039f1cc
1039f1a3:	e8 78 bf 1b 00                                  	call   0x1055b120
1039f1a8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039f1aa:	8b c8                                           	mov    ecx,eax
1039f1ac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039f1b2:	56                                              	push   esi
1039f1b3:	ff d0                                           	call   eax
1039f1b5:	8b f0                                           	mov    esi,eax
1039f1b7:	85 f6                                           	test   esi,esi
1039f1b9:	74 11                                           	je     0x1039f1cc
1039f1bb:	e8 20 6e 04 00                                  	call   0x103e5fe0
1039f1c0:	85 c0                                           	test   eax,eax
1039f1c2:	74 08                                           	je     0x1039f1cc
1039f1c4:	56                                              	push   esi
1039f1c5:	8b c8                                           	mov    ecx,eax
1039f1c7:	e8 04 a1 04 00                                  	call   0x103e92d0
1039f1cc:	5e                                              	pop    esi
1039f1cd:	c3                                              	ret
1039f1ce:	cc                                              	int3
1039f1cf:	cc                                              	int3
