# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548300 (Route_GetSegmentStartDirection)
Paired Ghidra pseudocode: 10548300_Route_GetSegmentStartDirection.c
Window: [0x10548300, 0x10548350) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548300: 8b 0d 44 89 c7 10 85 c9 56 74 3b 8b 44 24 08 50
10548310: e8 db 3d ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
10548320: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
10548330: ce e8 ca c6 ff ff 8a d8 8b 06 8b 50 14 8b ce ff
10548340: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548300 <.text+0x547300>:
10548300:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10548306:	85 c9                                           	test   ecx,ecx
10548308:	56                                              	push   esi
10548309:	74 3b                                           	je     0x10548346
1054830b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054830f:	50                                              	push   eax
10548310:	e8 db 3d ff ff                                  	call   0x1053c0f0
10548315:	8b f0                                           	mov    esi,eax
10548317:	85 f6                                           	test   esi,esi
10548319:	74 2b                                           	je     0x10548346
1054831b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054831d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10548320:	53                                              	push   ebx
10548321:	8b ce                                           	mov    ecx,esi
10548323:	ff d0                                           	call   eax
10548325:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10548329:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054832d:	51                                              	push   ecx
1054832e:	52                                              	push   edx
1054832f:	8b ce                                           	mov    ecx,esi
10548331:	e8 ca c6 ff ff                                  	call   0x10544a00
10548336:	8a d8                                           	mov    bl,al
10548338:	8b 06                                           	mov    eax,DWORD PTR [esi]
1054833a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1054833d:	8b ce                                           	mov    ecx,esi
1054833f:	ff d2                                           	call   edx
10548341:	8a c3                                           	mov    al,bl
10548343:	5b                                              	pop    ebx
10548344:	5e                                              	pop    esi
10548345:	c3                                              	ret
10548346:	32 c0                                           	xor    al,al
10548348:	5e                                              	pop    esi
10548349:	c3                                              	ret
1054834a:	cc                                              	int3
1054834b:	cc                                              	int3
1054834c:	cc                                              	int3
1054834d:	cc                                              	int3
1054834e:	cc                                              	int3
1054834f:	cc                                              	int3
