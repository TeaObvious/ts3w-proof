# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567570 (StreamHost_WriteDecimal)
Paired Ghidra pseudocode: 10567570_StreamHost_WriteDecimal.c
Window: [0x10567570, 0x10567610) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567570: 83 ec 10 56 8b 74 24 18 3b 35 a4 b0 c7 10 75 07
10567580: a1 a8 b0 c7 10 eb 33 8b c6 25 00 00 00 ff 3d 00
10567590: 00 00 60 74 04 33 c0 eb 21 e8 82 3b ff ff 8b 10
105675a0: 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3
105675b0: a8 b0 c7 10 89 35 a4 b0 c7 10 85 c0 5e 75 09 b8
105675c0: fe ff ff ff 83 c4 10 c3 8b 4c 24 20 8b 54 24 24
105675d0: 89 0c 24 8b 4c 24 1c 89 54 24 04 8b 54 24 18 89
105675e0: 4c 24 08 89 54 24 0c 8b 10 8b 52 38 6a 10 8d 4c
105675f0: 24 04 51 8b c8 ff d2 f6 d8 1b c0 83 e0 03 83 c0
10567600: fd 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567570 <.text+0x566570>:
10567570:	83 ec 10                                        	sub    esp,0x10
10567573:	56                                              	push   esi
10567574:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10567578:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056757e:	75 07                                           	jne    0x10567587
10567580:	a1 a8 b0 c7 10                                  	mov    eax,ds:0x10c7b0a8
10567585:	eb 33                                           	jmp    0x105675ba
10567587:	8b c6                                           	mov    eax,esi
10567589:	25 00 00 00 ff                                  	and    eax,0xff000000
1056758e:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567593:	74 04                                           	je     0x10567599
10567595:	33 c0                                           	xor    eax,eax
10567597:	eb 21                                           	jmp    0x105675ba
10567599:	e8 82 3b ff ff                                  	call   0x1055b120
1056759e:	8b 10                                           	mov    edx,DWORD PTR [eax]
105675a0:	8b c8                                           	mov    ecx,eax
105675a2:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105675a8:	56                                              	push   esi
105675a9:	ff d0                                           	call   eax
105675ab:	85 c0                                           	test   eax,eax
105675ad:	74 0b                                           	je     0x105675ba
105675af:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
105675b4:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
105675ba:	85 c0                                           	test   eax,eax
105675bc:	5e                                              	pop    esi
105675bd:	75 09                                           	jne    0x105675c8
105675bf:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
105675c4:	83 c4 10                                        	add    esp,0x10
105675c7:	c3                                              	ret
105675c8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105675cc:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
105675d0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
105675d3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105675d7:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
105675db:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105675df:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
105675e3:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
105675e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
105675e9:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
105675ec:	6a 10                                           	push   0x10
105675ee:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
105675f2:	51                                              	push   ecx
105675f3:	8b c8                                           	mov    ecx,eax
105675f5:	ff d2                                           	call   edx
105675f7:	f6 d8                                           	neg    al
105675f9:	1b c0                                           	sbb    eax,eax
105675fb:	83 e0 03                                        	and    eax,0x3
105675fe:	83 c0 fd                                        	add    eax,0xfffffffd
10567601:	83 c4 10                                        	add    esp,0x10
10567604:	c3                                              	ret
10567605:	cc                                              	int3
10567606:	cc                                              	int3
10567607:	cc                                              	int3
10567608:	cc                                              	int3
10567609:	cc                                              	int3
1056760a:	cc                                              	int3
1056760b:	cc                                              	int3
1056760c:	cc                                              	int3
1056760d:	cc                                              	int3
1056760e:	cc                                              	int3
1056760f:	cc                                              	int3
