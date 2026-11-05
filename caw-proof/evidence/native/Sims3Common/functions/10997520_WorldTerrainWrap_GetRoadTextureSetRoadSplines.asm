# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997520 (WorldTerrainWrap_GetRoadTextureSetRoadSplines)
Paired Ghidra pseudocode: 10997520_WorldTerrainWrap_GetRoadTextureSetRoadSplines.c
Window: [0x10997520, 0x109975d0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x109975d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997520: 8b 44 24 04 8b 15 c4 00 c7 10 83 ec 10 56 50 8d
10997530: 4c 24 08 51 8b 4a 5c e8 04 fb 7a ff 8b 4c 24 04
10997540: 8b 44 24 08 3b c8 74 6a 2b c1 c1 f8 02 50 6a 00
10997550: 6a 17 ff 15 e4 b6 aa 10 8b f0 85 f6 74 50 56 ff
10997560: 15 e8 b6 aa 10 85 c0 7c 45 8b 54 24 08 8b 44 24
10997570: 04 3b c2 8b 4e 0c 74 17 57 8d a4 24 00 00 00 00
10997580: 8b 38 89 39 83 c0 04 83 c1 04 3b c2 75 f2 5f 56
10997590: ff 15 ec b6 aa 10 8b 44 24 04 85 c0 74 09 50 e8
109975a0: ec 18 f8 ff 83 c4 04 8b c6 5e 83 c4 10 c3 8b 4c
109975b0: 24 04 85 c9 74 09 51 e8 d4 18 f8 ff 83 c4 04 33
109975c0: c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997520 <.text+0x996520>:
10997520:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997524:	8b 15 c4 00 c7 10                               	mov    edx,DWORD PTR ds:0x10c700c4
1099752a:	83 ec 10                                        	sub    esp,0x10
1099752d:	56                                              	push   esi
1099752e:	50                                              	push   eax
1099752f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10997533:	51                                              	push   ecx
10997534:	8b 4a 5c                                        	mov    ecx,DWORD PTR [edx+0x5c]
10997537:	e8 04 fb 7a ff                                  	call   0x10147040
1099753c:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997540:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997544:	3b c8                                           	cmp    ecx,eax
10997546:	74 6a                                           	je     0x109975b2
10997548:	2b c1                                           	sub    eax,ecx
1099754a:	c1 f8 02                                        	sar    eax,0x2
1099754d:	50                                              	push   eax
1099754e:	6a 00                                           	push   0x0
10997550:	6a 17                                           	push   0x17
10997552:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
10997558:	8b f0                                           	mov    esi,eax
1099755a:	85 f6                                           	test   esi,esi
1099755c:	74 50                                           	je     0x109975ae
1099755e:	56                                              	push   esi
1099755f:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10997565:	85 c0                                           	test   eax,eax
10997567:	7c 45                                           	jl     0x109975ae
10997569:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099756d:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997571:	3b c2                                           	cmp    eax,edx
10997573:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10997576:	74 17                                           	je     0x1099758f
10997578:	57                                              	push   edi
10997579:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10997580:	8b 38                                           	mov    edi,DWORD PTR [eax]
10997582:	89 39                                           	mov    DWORD PTR [ecx],edi
10997584:	83 c0 04                                        	add    eax,0x4
10997587:	83 c1 04                                        	add    ecx,0x4
1099758a:	3b c2                                           	cmp    eax,edx
1099758c:	75 f2                                           	jne    0x10997580
1099758e:	5f                                              	pop    edi
1099758f:	56                                              	push   esi
10997590:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10997596:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1099759a:	85 c0                                           	test   eax,eax
1099759c:	74 09                                           	je     0x109975a7
1099759e:	50                                              	push   eax
1099759f:	e8 ec 18 f8 ff                                  	call   0x10918e90
109975a4:	83 c4 04                                        	add    esp,0x4
109975a7:	8b c6                                           	mov    eax,esi
109975a9:	5e                                              	pop    esi
109975aa:	83 c4 10                                        	add    esp,0x10
109975ad:	c3                                              	ret
109975ae:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109975b2:	85 c9                                           	test   ecx,ecx
109975b4:	74 09                                           	je     0x109975bf
109975b6:	51                                              	push   ecx
109975b7:	e8 d4 18 f8 ff                                  	call   0x10918e90
109975bc:	83 c4 04                                        	add    esp,0x4
109975bf:	33 c0                                           	xor    eax,eax
109975c1:	5e                                              	pop    esi
109975c2:	83 c4 10                                        	add    esp,0x10
109975c5:	c3                                              	ret
109975c6:	cc                                              	int3
109975c7:	cc                                              	int3
109975c8:	cc                                              	int3
109975c9:	cc                                              	int3
109975ca:	cc                                              	int3
109975cb:	cc                                              	int3
109975cc:	cc                                              	int3
109975cd:	cc                                              	int3
109975ce:	cc                                              	int3
109975cf:	cc                                              	int3
