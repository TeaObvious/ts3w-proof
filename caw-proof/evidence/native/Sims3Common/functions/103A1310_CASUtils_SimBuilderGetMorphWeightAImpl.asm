# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1310 (CASUtils_SimBuilderGetMorphWeightAImpl)
Paired Ghidra pseudocode: 103A1310_CASUtils_SimBuilderGetMorphWeightAImpl.c
Window: [0x103a1310, 0x103a1360) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1310: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1320: 35 75 27 e8 f8 9d 1b 00 8b 10 8b c8 8b 82 cc 00
103a1330: 00 00 56 ff d0 85 c0 74 11 f3 0f 10 40 50 f3 0f
103a1340: 11 44 24 08 d9 44 24 08 5e c3 0f 57 c0 f3 0f 11
103a1350: 44 24 08 d9 44 24 08 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1310 <.text+0x3a0310>:
103a1310:	56                                              	push   esi
103a1311:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1315:	8b c6                                           	mov    eax,esi
103a1317:	25 00 00 00 ff                                  	and    eax,0xff000000
103a131c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1321:	75 27                                           	jne    0x103a134a
103a1323:	e8 f8 9d 1b 00                                  	call   0x1055b120
103a1328:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a132a:	8b c8                                           	mov    ecx,eax
103a132c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1332:	56                                              	push   esi
103a1333:	ff d0                                           	call   eax
103a1335:	85 c0                                           	test   eax,eax
103a1337:	74 11                                           	je     0x103a134a
103a1339:	f3 0f 10 40 50                                  	movss  xmm0,DWORD PTR [eax+0x50]
103a133e:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1344:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1348:	5e                                              	pop    esi
103a1349:	c3                                              	ret
103a134a:	0f 57 c0                                        	xorps  xmm0,xmm0
103a134d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
103a1353:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
103a1357:	5e                                              	pop    esi
103a1358:	c3                                              	ret
103a1359:	cc                                              	int3
103a135a:	cc                                              	int3
103a135b:	cc                                              	int3
103a135c:	cc                                              	int3
103a135d:	cc                                              	int3
103a135e:	cc                                              	int3
103a135f:	cc                                              	int3
