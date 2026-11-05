# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548350 (Route_GetSegmentEndDirection)
Paired Ghidra pseudocode: 10548350_Route_GetSegmentEndDirection.c
Window: [0x10548350, 0x105483a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105483a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548350: 8b 0d 44 89 c7 10 85 c9 56 74 3b 8b 44 24 08 50
10548360: e8 8b 3d ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
10548370: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
10548380: ce e8 5a c7 ff ff 8a d8 8b 06 8b 50 14 8b ce ff
10548390: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548350 <.text+0x547350>:
10548350:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10548356:	85 c9                                           	test   ecx,ecx
10548358:	56                                              	push   esi
10548359:	74 3b                                           	je     0x10548396
1054835b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054835f:	50                                              	push   eax
10548360:	e8 8b 3d ff ff                                  	call   0x1053c0f0
10548365:	8b f0                                           	mov    esi,eax
10548367:	85 f6                                           	test   esi,esi
10548369:	74 2b                                           	je     0x10548396
1054836b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054836d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10548370:	53                                              	push   ebx
10548371:	8b ce                                           	mov    ecx,esi
10548373:	ff d0                                           	call   eax
10548375:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10548379:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054837d:	51                                              	push   ecx
1054837e:	52                                              	push   edx
1054837f:	8b ce                                           	mov    ecx,esi
10548381:	e8 5a c7 ff ff                                  	call   0x10544ae0
10548386:	8a d8                                           	mov    bl,al
10548388:	8b 06                                           	mov    eax,DWORD PTR [esi]
1054838a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1054838d:	8b ce                                           	mov    ecx,esi
1054838f:	ff d2                                           	call   edx
10548391:	8a c3                                           	mov    al,bl
10548393:	5b                                              	pop    ebx
10548394:	5e                                              	pop    esi
10548395:	c3                                              	ret
10548396:	32 c0                                           	xor    al,al
10548398:	5e                                              	pop    esi
10548399:	c3                                              	ret
1054839a:	cc                                              	int3
1054839b:	cc                                              	int3
1054839c:	cc                                              	int3
1054839d:	cc                                              	int3
1054839e:	cc                                              	int3
1054839f:	cc                                              	int3
