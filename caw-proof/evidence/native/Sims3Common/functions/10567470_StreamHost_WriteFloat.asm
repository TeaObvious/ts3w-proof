# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567470 (StreamHost_WriteFloat)
Paired Ghidra pseudocode: 10567470_StreamHost_WriteFloat.c
Window: [0x10567470, 0x105674f0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x105674f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567470: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 07 a1 a8 b0
10567480: c7 10 eb 33 8b c6 25 00 00 00 ff 3d 00 00 00 60
10567490: 74 04 33 c0 eb 21 e8 85 3c ff ff 8b 10 8b c8 8b
105674a0: 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0 c7
105674b0: 10 89 35 a4 b0 c7 10 85 c0 5e 75 06 b8 fe ff ff
105674c0: ff c3 f3 0f 10 44 24 08 f3 0f 11 44 24 04 8b 10
105674d0: 8b 52 38 6a 04 8d 4c 24 08 51 8b c8 ff d2 f6 d8
105674e0: 1b c0 83 e0 03 83 c0 fd c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567470 <.text+0x566470>:
10567470:	56                                              	push   esi
10567471:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567475:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056747b:	75 07                                           	jne    0x10567484
1056747d:	a1 a8 b0 c7 10                                  	mov    eax,ds:0x10c7b0a8
10567482:	eb 33                                           	jmp    0x105674b7
10567484:	8b c6                                           	mov    eax,esi
10567486:	25 00 00 00 ff                                  	and    eax,0xff000000
1056748b:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567490:	74 04                                           	je     0x10567496
10567492:	33 c0                                           	xor    eax,eax
10567494:	eb 21                                           	jmp    0x105674b7
10567496:	e8 85 3c ff ff                                  	call   0x1055b120
1056749b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056749d:	8b c8                                           	mov    ecx,eax
1056749f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105674a5:	56                                              	push   esi
105674a6:	ff d0                                           	call   eax
105674a8:	85 c0                                           	test   eax,eax
105674aa:	74 0b                                           	je     0x105674b7
105674ac:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
105674b1:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
105674b7:	85 c0                                           	test   eax,eax
105674b9:	5e                                              	pop    esi
105674ba:	75 06                                           	jne    0x105674c2
105674bc:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
105674c1:	c3                                              	ret
105674c2:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
105674c8:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105674ce:	8b 10                                           	mov    edx,DWORD PTR [eax]
105674d0:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
105674d3:	6a 04                                           	push   0x4
105674d5:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
105674d9:	51                                              	push   ecx
105674da:	8b c8                                           	mov    ecx,eax
105674dc:	ff d2                                           	call   edx
105674de:	f6 d8                                           	neg    al
105674e0:	1b c0                                           	sbb    eax,eax
105674e2:	83 e0 03                                        	and    eax,0x3
105674e5:	83 c0 fd                                        	add    eax,0xfffffffd
105674e8:	c3                                              	ret
105674e9:	cc                                              	int3
105674ea:	cc                                              	int3
105674eb:	cc                                              	int3
105674ec:	cc                                              	int3
105674ed:	cc                                              	int3
105674ee:	cc                                              	int3
105674ef:	cc                                              	int3
