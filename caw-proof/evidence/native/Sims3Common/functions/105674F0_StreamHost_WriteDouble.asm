# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105674f0 (StreamHost_WriteDouble)
Paired Ghidra pseudocode: 105674F0_StreamHost_WriteDouble.c
Window: [0x105674f0, 0x10567570) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105674f0: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 07
10567500: a1 a8 b0 c7 10 eb 33 8b c6 25 00 00 00 ff 3d 00
10567510: 00 00 60 74 04 33 c0 eb 21 e8 02 3c ff ff 8b 10
10567520: 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3
10567530: a8 b0 c7 10 89 35 a4 b0 c7 10 85 c0 5e 75 09 b8
10567540: fe ff ff ff 83 c4 08 c3 dd 44 24 10 6a 08 dd 5c
10567550: 24 04 8b 10 8b 52 38 8d 4c 24 04 51 8b c8 ff d2
10567560: f6 d8 1b c0 83 e0 03 83 c0 fd 83 c4 08 c3 cc cc

LINEAR DISASSEMBLY
105674f0 <.text+0x5664f0>:
105674f0:	83 ec 08                                        	sub    esp,0x8
105674f3:	56                                              	push   esi
105674f4:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
105674f8:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
105674fe:	75 07                                           	jne    0x10567507
10567500:	a1 a8 b0 c7 10                                  	mov    eax,ds:0x10c7b0a8
10567505:	eb 33                                           	jmp    0x1056753a
10567507:	8b c6                                           	mov    eax,esi
10567509:	25 00 00 00 ff                                  	and    eax,0xff000000
1056750e:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567513:	74 04                                           	je     0x10567519
10567515:	33 c0                                           	xor    eax,eax
10567517:	eb 21                                           	jmp    0x1056753a
10567519:	e8 02 3c ff ff                                  	call   0x1055b120
1056751e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567520:	8b c8                                           	mov    ecx,eax
10567522:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567528:	56                                              	push   esi
10567529:	ff d0                                           	call   eax
1056752b:	85 c0                                           	test   eax,eax
1056752d:	74 0b                                           	je     0x1056753a
1056752f:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567534:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
1056753a:	85 c0                                           	test   eax,eax
1056753c:	5e                                              	pop    esi
1056753d:	75 09                                           	jne    0x10567548
1056753f:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
10567544:	83 c4 08                                        	add    esp,0x8
10567547:	c3                                              	ret
10567548:	dd 44 24 10                                     	fld    QWORD PTR [esp+0x10]
1056754c:	6a 08                                           	push   0x8
1056754e:	dd 5c 24 04                                     	fstp   QWORD PTR [esp+0x4]
10567552:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567554:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
10567557:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1056755b:	51                                              	push   ecx
1056755c:	8b c8                                           	mov    ecx,eax
1056755e:	ff d2                                           	call   edx
10567560:	f6 d8                                           	neg    al
10567562:	1b c0                                           	sbb    eax,eax
10567564:	83 e0 03                                        	and    eax,0x3
10567567:	83 c0 fd                                        	add    eax,0xfffffffd
1056756a:	83 c4 08                                        	add    esp,0x8
1056756d:	c3                                              	ret
1056756e:	cc                                              	int3
1056756f:	cc                                              	int3
