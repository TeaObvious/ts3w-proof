# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109975d0 (WorldTerrainWrap_GetRoadTextureSetRoadIntersections)
Paired Ghidra pseudocode: 109975D0_WorldTerrainWrap_GetRoadTextureSetRoadIntersections.c
Window: [0x109975d0, 0x10997680) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109975d0: 8b 44 24 04 8b 15 c4 00 c7 10 83 ec 10 56 50 8d
109975e0: 4c 24 08 51 8b 4a 5c e8 34 fb 7a ff 8b 4c 24 04
109975f0: 8b 44 24 08 3b c8 74 6a 2b c1 c1 f8 02 50 6a 00
10997600: 6a 17 ff 15 e4 b6 aa 10 8b f0 85 f6 74 50 56 ff
10997610: 15 e8 b6 aa 10 85 c0 7c 45 8b 54 24 08 8b 44 24
10997620: 04 3b c2 8b 4e 0c 74 17 57 8d a4 24 00 00 00 00
10997630: 8b 38 89 39 83 c0 04 83 c1 04 3b c2 75 f2 5f 56
10997640: ff 15 ec b6 aa 10 8b 44 24 04 85 c0 74 09 50 e8
10997650: 3c 18 f8 ff 83 c4 04 8b c6 5e 83 c4 10 c3 8b 4c
10997660: 24 04 85 c9 74 09 51 e8 24 18 f8 ff 83 c4 04 33
10997670: c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109975d0 <.text+0x9965d0>:
109975d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109975d4:	8b 15 c4 00 c7 10                               	mov    edx,DWORD PTR ds:0x10c700c4
109975da:	83 ec 10                                        	sub    esp,0x10
109975dd:	56                                              	push   esi
109975de:	50                                              	push   eax
109975df:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109975e3:	51                                              	push   ecx
109975e4:	8b 4a 5c                                        	mov    ecx,DWORD PTR [edx+0x5c]
109975e7:	e8 34 fb 7a ff                                  	call   0x10147120
109975ec:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109975f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109975f4:	3b c8                                           	cmp    ecx,eax
109975f6:	74 6a                                           	je     0x10997662
109975f8:	2b c1                                           	sub    eax,ecx
109975fa:	c1 f8 02                                        	sar    eax,0x2
109975fd:	50                                              	push   eax
109975fe:	6a 00                                           	push   0x0
10997600:	6a 17                                           	push   0x17
10997602:	ff 15 e4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e4
10997608:	8b f0                                           	mov    esi,eax
1099760a:	85 f6                                           	test   esi,esi
1099760c:	74 50                                           	je     0x1099765e
1099760e:	56                                              	push   esi
1099760f:	ff 15 e8 b6 aa 10                               	call   DWORD PTR ds:0x10aab6e8
10997615:	85 c0                                           	test   eax,eax
10997617:	7c 45                                           	jl     0x1099765e
10997619:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099761d:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997621:	3b c2                                           	cmp    eax,edx
10997623:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
10997626:	74 17                                           	je     0x1099763f
10997628:	57                                              	push   edi
10997629:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10997630:	8b 38                                           	mov    edi,DWORD PTR [eax]
10997632:	89 39                                           	mov    DWORD PTR [ecx],edi
10997634:	83 c0 04                                        	add    eax,0x4
10997637:	83 c1 04                                        	add    ecx,0x4
1099763a:	3b c2                                           	cmp    eax,edx
1099763c:	75 f2                                           	jne    0x10997630
1099763e:	5f                                              	pop    edi
1099763f:	56                                              	push   esi
10997640:	ff 15 ec b6 aa 10                               	call   DWORD PTR ds:0x10aab6ec
10997646:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1099764a:	85 c0                                           	test   eax,eax
1099764c:	74 09                                           	je     0x10997657
1099764e:	50                                              	push   eax
1099764f:	e8 3c 18 f8 ff                                  	call   0x10918e90
10997654:	83 c4 04                                        	add    esp,0x4
10997657:	8b c6                                           	mov    eax,esi
10997659:	5e                                              	pop    esi
1099765a:	83 c4 10                                        	add    esp,0x10
1099765d:	c3                                              	ret
1099765e:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997662:	85 c9                                           	test   ecx,ecx
10997664:	74 09                                           	je     0x1099766f
10997666:	51                                              	push   ecx
10997667:	e8 24 18 f8 ff                                  	call   0x10918e90
1099766c:	83 c4 04                                        	add    esp,0x4
1099766f:	33 c0                                           	xor    eax,eax
10997671:	5e                                              	pop    esi
10997672:	83 c4 10                                        	add    esp,0x10
10997675:	c3                                              	ret
10997676:	cc                                              	int3
10997677:	cc                                              	int3
10997678:	cc                                              	int3
10997679:	cc                                              	int3
1099767a:	cc                                              	int3
1099767b:	cc                                              	int3
1099767c:	cc                                              	int3
1099767d:	cc                                              	int3
1099767e:	cc                                              	int3
1099767f:	cc                                              	int3
