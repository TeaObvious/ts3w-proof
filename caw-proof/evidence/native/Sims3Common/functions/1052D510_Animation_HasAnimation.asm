# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d510 (Animation_HasAnimation)
Paired Ghidra pseudocode: 1052D510_Animation_HasAnimation.c
Window: [0x1052d510, 0x1052d5f0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d5f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d510: b8 44 43 00 00 e8 d6 33 56 00 53 56 57 e8 7e cc
1052d520: 1f 00 8b 8c 24 58 43 00 00 8b 94 24 54 43 00 00
1052d530: 51 52 8b c8 e8 77 d6 1f 00 8b f0 85 f6 0f 84 a0
1052d540: 00 00 00 8d 7e 04 8b c7 b9 01 00 00 00 f0 0f c1
1052d550: 08 8b 15 c4 0c c8 10 52 8b ce e8 41 98 1f 00 85
1052d560: c0 74 63 8b 8c 24 5c 43 00 00 51 8b c8 e8 7e 1a
1052d570: 20 00 8b d8 85 db 74 4e 8d 4c 24 10 e8 af c2 e1
1052d580: ff 8b 13 8b 52 0c 8d 44 24 10 50 8b cb ff d2 85
1052d590: c0 8d 4c 24 10 0f 95 c3 e8 53 c2 e1 ff 8b c7 83
1052d5a0: c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87 17
1052d5b0: 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 8a c3 5b 81
1052d5c0: c4 44 43 00 00 c3 8b c7 83 c9 ff f0 0f c1 08 49
1052d5d0: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
1052d5e0: ce ff d2 5f 5e 32 c0 5b 81 c4 44 43 00 00 c3 cc

LINEAR DISASSEMBLY
1052d510 <.text+0x52c510>:
1052d510:	b8 44 43 00 00                                  	mov    eax,0x4344
1052d515:	e8 d6 33 56 00                                  	call   0x10a908f0
1052d51a:	53                                              	push   ebx
1052d51b:	56                                              	push   esi
1052d51c:	57                                              	push   edi
1052d51d:	e8 7e cc 1f 00                                  	call   0x1072a1a0
1052d522:	8b 8c 24 58 43 00 00                            	mov    ecx,DWORD PTR [esp+0x4358]
1052d529:	8b 94 24 54 43 00 00                            	mov    edx,DWORD PTR [esp+0x4354]
1052d530:	51                                              	push   ecx
1052d531:	52                                              	push   edx
1052d532:	8b c8                                           	mov    ecx,eax
1052d534:	e8 77 d6 1f 00                                  	call   0x1072abb0
1052d539:	8b f0                                           	mov    esi,eax
1052d53b:	85 f6                                           	test   esi,esi
1052d53d:	0f 84 a0 00 00 00                               	je     0x1052d5e3
1052d543:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052d546:	8b c7                                           	mov    eax,edi
1052d548:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d54d:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d551:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d557:	52                                              	push   edx
1052d558:	8b ce                                           	mov    ecx,esi
1052d55a:	e8 41 98 1f 00                                  	call   0x10726da0
1052d55f:	85 c0                                           	test   eax,eax
1052d561:	74 63                                           	je     0x1052d5c6
1052d563:	8b 8c 24 5c 43 00 00                            	mov    ecx,DWORD PTR [esp+0x435c]
1052d56a:	51                                              	push   ecx
1052d56b:	8b c8                                           	mov    ecx,eax
1052d56d:	e8 7e 1a 20 00                                  	call   0x1072eff0
1052d572:	8b d8                                           	mov    ebx,eax
1052d574:	85 db                                           	test   ebx,ebx
1052d576:	74 4e                                           	je     0x1052d5c6
1052d578:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052d57c:	e8 af c2 e1 ff                                  	call   0x10349830
1052d581:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1052d583:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1052d586:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1052d58a:	50                                              	push   eax
1052d58b:	8b cb                                           	mov    ecx,ebx
1052d58d:	ff d2                                           	call   edx
1052d58f:	85 c0                                           	test   eax,eax
1052d591:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052d595:	0f 95 c3                                        	setne  bl
1052d598:	e8 53 c2 e1 ff                                  	call   0x103497f0
1052d59d:	8b c7                                           	mov    eax,edi
1052d59f:	83 c9 ff                                        	or     ecx,0xffffffff
1052d5a2:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d5a6:	49                                              	dec    ecx
1052d5a7:	75 11                                           	jne    0x1052d5ba
1052d5a9:	ba 01 00 00 00                                  	mov    edx,0x1
1052d5ae:	87 17                                           	xchg   DWORD PTR [edi],edx
1052d5b0:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052d5b2:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d5b4:	6a 01                                           	push   0x1
1052d5b6:	8b ce                                           	mov    ecx,esi
1052d5b8:	ff d2                                           	call   edx
1052d5ba:	5f                                              	pop    edi
1052d5bb:	5e                                              	pop    esi
1052d5bc:	8a c3                                           	mov    al,bl
1052d5be:	5b                                              	pop    ebx
1052d5bf:	81 c4 44 43 00 00                               	add    esp,0x4344
1052d5c5:	c3                                              	ret
1052d5c6:	8b c7                                           	mov    eax,edi
1052d5c8:	83 c9 ff                                        	or     ecx,0xffffffff
1052d5cb:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d5cf:	49                                              	dec    ecx
1052d5d0:	75 11                                           	jne    0x1052d5e3
1052d5d2:	ba 01 00 00 00                                  	mov    edx,0x1
1052d5d7:	87 17                                           	xchg   DWORD PTR [edi],edx
1052d5d9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052d5db:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d5dd:	6a 01                                           	push   0x1
1052d5df:	8b ce                                           	mov    ecx,esi
1052d5e1:	ff d2                                           	call   edx
1052d5e3:	5f                                              	pop    edi
1052d5e4:	5e                                              	pop    esi
1052d5e5:	32 c0                                           	xor    al,al
1052d5e7:	5b                                              	pop    ebx
1052d5e8:	81 c4 44 43 00 00                               	add    esp,0x4344
1052d5ee:	c3                                              	ret
1052d5ef:	cc                                              	int3
