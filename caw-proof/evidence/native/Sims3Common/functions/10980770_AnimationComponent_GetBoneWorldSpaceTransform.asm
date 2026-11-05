# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980770 (AnimationComponent_GetBoneWorldSpaceTransform)
Paired Ghidra pseudocode: 10980770_AnimationComponent_GetBoneWorldSpaceTransform.c
Window: [0x10980770, 0x109807e0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109807e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980770: 55 8b ec 83 e4 f0 8b 4d 0c 81 ec 88 00 00 00 85
10980780: c9 56 57 74 38 8b 55 10 8d 44 24 10 50 52 e8 cd
10980790: f3 da ff 84 c0 74 26 8d 44 24 10 50 8d 4c 24 54
109807a0: 51 e8 7a f8 ff ff 8b f0 8b 45 08 b9 10 00 00 00
109807b0: 8b f8 83 c4 08 f3 a5 5f 5e 8b e5 5d c3 8b 45 08
109807c0: be 50 63 b9 10 b9 10 00 00 00 8b f8 f3 a5 5f 5e
109807d0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980770 <.text+0x97f770>:
10980770:	55                                              	push   ebp
10980771:	8b ec                                           	mov    ebp,esp
10980773:	83 e4 f0                                        	and    esp,0xfffffff0
10980776:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10980779:	81 ec 88 00 00 00                               	sub    esp,0x88
1098077f:	85 c9                                           	test   ecx,ecx
10980781:	56                                              	push   esi
10980782:	57                                              	push   edi
10980783:	74 38                                           	je     0x109807bd
10980785:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10980788:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098078c:	50                                              	push   eax
1098078d:	52                                              	push   edx
1098078e:	e8 cd f3 da ff                                  	call   0x1072fb60
10980793:	84 c0                                           	test   al,al
10980795:	74 26                                           	je     0x109807bd
10980797:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098079b:	50                                              	push   eax
1098079c:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109807a0:	51                                              	push   ecx
109807a1:	e8 7a f8 ff ff                                  	call   0x10980020
109807a6:	8b f0                                           	mov    esi,eax
109807a8:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109807ab:	b9 10 00 00 00                                  	mov    ecx,0x10
109807b0:	8b f8                                           	mov    edi,eax
109807b2:	83 c4 08                                        	add    esp,0x8
109807b5:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
109807b7:	5f                                              	pop    edi
109807b8:	5e                                              	pop    esi
109807b9:	8b e5                                           	mov    esp,ebp
109807bb:	5d                                              	pop    ebp
109807bc:	c3                                              	ret
109807bd:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109807c0:	be 50 63 b9 10                                  	mov    esi,0x10b96350
109807c5:	b9 10 00 00 00                                  	mov    ecx,0x10
109807ca:	8b f8                                           	mov    edi,eax
109807cc:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
109807ce:	5f                                              	pop    edi
109807cf:	5e                                              	pop    esi
109807d0:	8b e5                                           	mov    esp,ebp
109807d2:	5d                                              	pop    ebp
109807d3:	c3                                              	ret
109807d4:	cc                                              	int3
109807d5:	cc                                              	int3
109807d6:	cc                                              	int3
109807d7:	cc                                              	int3
109807d8:	cc                                              	int3
109807d9:	cc                                              	int3
109807da:	cc                                              	int3
109807db:	cc                                              	int3
109807dc:	cc                                              	int3
109807dd:	cc                                              	int3
109807de:	cc                                              	int3
109807df:	cc                                              	int3
