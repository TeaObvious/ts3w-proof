# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7450 (CASUtils_TextSearchStartSearchImpl)
Paired Ghidra pseudocode: 103A7450_CASUtils_TextSearchStartSearchImpl.c
Window: [0x103a7450, 0x103a74b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a74b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7450: 57 8b 7c 24 08 8b c7 25 00 00 00 ff 3d 00 00 00
103a7460: 35 74 04 33 c0 5f c3 56 e8 b3 3c 1b 00 8b f0 8b
103a7470: 16 8b 82 cc 00 00 00 57 8b ce ff d0 8b f8 85 ff
103a7480: 75 03 5e 5f c3 8b 16 8b 44 24 14 8b 52 58 50 8b
103a7490: ce ff d2 50 8b 44 24 14 50 8b cf e8 60 fe ff ff
103a74a0: 5e 5f c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7450 <.text+0x3a6450>:
103a7450:	57                                              	push   edi
103a7451:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
103a7455:	8b c7                                           	mov    eax,edi
103a7457:	25 00 00 00 ff                                  	and    eax,0xff000000
103a745c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a7461:	74 04                                           	je     0x103a7467
103a7463:	33 c0                                           	xor    eax,eax
103a7465:	5f                                              	pop    edi
103a7466:	c3                                              	ret
103a7467:	56                                              	push   esi
103a7468:	e8 b3 3c 1b 00                                  	call   0x1055b120
103a746d:	8b f0                                           	mov    esi,eax
103a746f:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a7471:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a7477:	57                                              	push   edi
103a7478:	8b ce                                           	mov    ecx,esi
103a747a:	ff d0                                           	call   eax
103a747c:	8b f8                                           	mov    edi,eax
103a747e:	85 ff                                           	test   edi,edi
103a7480:	75 03                                           	jne    0x103a7485
103a7482:	5e                                              	pop    esi
103a7483:	5f                                              	pop    edi
103a7484:	c3                                              	ret
103a7485:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a7487:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a748b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
103a748e:	50                                              	push   eax
103a748f:	8b ce                                           	mov    ecx,esi
103a7491:	ff d2                                           	call   edx
103a7493:	50                                              	push   eax
103a7494:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a7498:	50                                              	push   eax
103a7499:	8b cf                                           	mov    ecx,edi
103a749b:	e8 60 fe ff ff                                  	call   0x103a7300
103a74a0:	5e                                              	pop    esi
103a74a1:	5f                                              	pop    edi
103a74a2:	c3                                              	ret
103a74a3:	cc                                              	int3
103a74a4:	cc                                              	int3
103a74a5:	cc                                              	int3
103a74a6:	cc                                              	int3
103a74a7:	cc                                              	int3
103a74a8:	cc                                              	int3
103a74a9:	cc                                              	int3
103a74aa:	cc                                              	int3
103a74ab:	cc                                              	int3
103a74ac:	cc                                              	int3
103a74ad:	cc                                              	int3
103a74ae:	cc                                              	int3
103a74af:	cc                                              	int3
