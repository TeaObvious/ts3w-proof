# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105673e0 (StreamHost_WriteInt64)
Paired Ghidra pseudocode: 105673E0_StreamHost_WriteInt64.c
Window: [0x105673e0, 0x10567470) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105673e0: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 07
105673f0: a1 a8 b0 c7 10 eb 33 8b c6 25 00 00 00 ff 3d 00
10567400: 00 00 60 74 04 33 c0 eb 21 e8 12 3d ff ff 8b 10
10567410: 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3
10567420: a8 b0 c7 10 89 35 a4 b0 c7 10 85 c0 5e 75 09 b8
10567430: fe ff ff ff 83 c4 08 c3 8b 4c 24 10 8b 54 24 14
10567440: 89 0c 24 89 54 24 04 8b 10 8b 52 38 6a 08 8d 4c
10567450: 24 04 51 8b c8 ff d2 f6 d8 1b c0 83 e0 03 83 c0
10567460: fd 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105673e0 <.text+0x5663e0>:
105673e0:	83 ec 08                                        	sub    esp,0x8
105673e3:	56                                              	push   esi
105673e4:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
105673e8:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
105673ee:	75 07                                           	jne    0x105673f7
105673f0:	a1 a8 b0 c7 10                                  	mov    eax,ds:0x10c7b0a8
105673f5:	eb 33                                           	jmp    0x1056742a
105673f7:	8b c6                                           	mov    eax,esi
105673f9:	25 00 00 00 ff                                  	and    eax,0xff000000
105673fe:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567403:	74 04                                           	je     0x10567409
10567405:	33 c0                                           	xor    eax,eax
10567407:	eb 21                                           	jmp    0x1056742a
10567409:	e8 12 3d ff ff                                  	call   0x1055b120
1056740e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567410:	8b c8                                           	mov    ecx,eax
10567412:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567418:	56                                              	push   esi
10567419:	ff d0                                           	call   eax
1056741b:	85 c0                                           	test   eax,eax
1056741d:	74 0b                                           	je     0x1056742a
1056741f:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567424:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
1056742a:	85 c0                                           	test   eax,eax
1056742c:	5e                                              	pop    esi
1056742d:	75 09                                           	jne    0x10567438
1056742f:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
10567434:	83 c4 08                                        	add    esp,0x8
10567437:	c3                                              	ret
10567438:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1056743c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10567440:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10567443:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10567447:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567449:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
1056744c:	6a 08                                           	push   0x8
1056744e:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10567452:	51                                              	push   ecx
10567453:	8b c8                                           	mov    ecx,eax
10567455:	ff d2                                           	call   edx
10567457:	f6 d8                                           	neg    al
10567459:	1b c0                                           	sbb    eax,eax
1056745b:	83 e0 03                                        	and    eax,0x3
1056745e:	83 c0 fd                                        	add    eax,0xfffffffd
10567461:	83 c4 08                                        	add    esp,0x8
10567464:	c3                                              	ret
10567465:	cc                                              	int3
10567466:	cc                                              	int3
10567467:	cc                                              	int3
10567468:	cc                                              	int3
10567469:	cc                                              	int3
1056746a:	cc                                              	int3
1056746b:	cc                                              	int3
1056746c:	cc                                              	int3
1056746d:	cc                                              	int3
1056746e:	cc                                              	int3
1056746f:	cc                                              	int3
