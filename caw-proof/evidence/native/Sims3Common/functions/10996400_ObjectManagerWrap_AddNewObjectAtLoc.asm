# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996400 (ObjectManagerWrap_AddNewObjectAtLoc)
Paired Ghidra pseudocode: 10996400_ObjectManagerWrap_AddNewObjectAtLoc.c
Window: [0x10996400, 0x10996550) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996400: 83 ec 40 56 8b 74 24 48 85 f6 75 07 33 c0 5e 83
10996410: c4 40 c3 8b 44 24 4c 53 57 50 8d 4c 24 40 51 e8
10996420: 7c 76 bc ff 8b 54 24 68 52 8d 44 24 38 50 e8 6d
10996430: 76 bc ff 8b 4c 24 6c bb 44 82 ca 10 83 c4 10 bf
10996440: 45 82 ca 10 33 c0 85 c9 c7 44 24 18 f0 79 b9 10
10996450: 89 5c 24 0c 89 5c 24 10 89 7c 24 14 74 4f 50 6a
10996460: ff 51 8d 4c 24 28 51 e8 b4 0a f9 ff 8d 54 24 1c
10996470: 83 c4 10 3b c2 74 18 8b 48 04 8b 10 51 52 8d 4c
10996480: 24 14 e8 19 84 67 ff 8b 7c 24 14 8b 5c 24 0c 8b
10996490: 4c 24 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0
109964a0: 74 09 50 e8 e8 29 f8 ff 83 c4 04 8b c3 8b 4c 24
109964b0: 6c d9 44 24 68 8b 16 8b 52 38 51 83 ec 08 d9 5c
109964c0: 24 04 8d 4c 24 38 d9 44 24 70 c7 44 24 5c 00 00
109964d0: 00 00 d9 1c 24 51 50 8b 44 24 6c 50 8d 4c 24 54
109964e0: 51 8b ce ff d2 50 8d 4c 24 54 e8 81 d2 cd ff 8b
109964f0: 74 24 50 85 f6 74 2d 6a 00 56 6a 0b e8 ef 1d d9
10996500: ff 8d 46 04 83 c4 0c 8b c8 83 ca ff f0 0f c1 11
10996510: 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01
10996520: 8b ce ff d0 2b fb 83 ff 01 7e 0d 85 db 74 09 53
10996530: e8 5b 29 f8 ff 83 c4 04 5f 5b 8b c6 5e 83 c4 40
10996540: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996400 <.text+0x995400>:
10996400:	83 ec 40                                        	sub    esp,0x40
10996403:	56                                              	push   esi
10996404:	8b 74 24 48                                     	mov    esi,DWORD PTR [esp+0x48]
10996408:	85 f6                                           	test   esi,esi
1099640a:	75 07                                           	jne    0x10996413
1099640c:	33 c0                                           	xor    eax,eax
1099640e:	5e                                              	pop    esi
1099640f:	83 c4 40                                        	add    esp,0x40
10996412:	c3                                              	ret
10996413:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10996417:	53                                              	push   ebx
10996418:	57                                              	push   edi
10996419:	50                                              	push   eax
1099641a:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1099641e:	51                                              	push   ecx
1099641f:	e8 7c 76 bc ff                                  	call   0x1055daa0
10996424:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
10996428:	52                                              	push   edx
10996429:	8d 44 24 38                                     	lea    eax,[esp+0x38]
1099642d:	50                                              	push   eax
1099642e:	e8 6d 76 bc ff                                  	call   0x1055daa0
10996433:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10996437:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
1099643c:	83 c4 10                                        	add    esp,0x10
1099643f:	bf 45 82 ca 10                                  	mov    edi,0x10ca8245
10996444:	33 c0                                           	xor    eax,eax
10996446:	85 c9                                           	test   ecx,ecx
10996448:	c7 44 24 18 f0 79 b9 10                         	mov    DWORD PTR [esp+0x18],0x10b979f0
10996450:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
10996454:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
10996458:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1099645c:	74 4f                                           	je     0x109964ad
1099645e:	50                                              	push   eax
1099645f:	6a ff                                           	push   0xffffffff
10996461:	51                                              	push   ecx
10996462:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10996466:	51                                              	push   ecx
10996467:	e8 b4 0a f9 ff                                  	call   0x10926f20
1099646c:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10996470:	83 c4 10                                        	add    esp,0x10
10996473:	3b c2                                           	cmp    eax,edx
10996475:	74 18                                           	je     0x1099648f
10996477:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1099647a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1099647c:	51                                              	push   ecx
1099647d:	52                                              	push   edx
1099647e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10996482:	e8 19 84 67 ff                                  	call   0x1000e8a0
10996487:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1099648b:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
1099648f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10996493:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10996497:	2b c8                                           	sub    ecx,eax
10996499:	83 f9 01                                        	cmp    ecx,0x1
1099649c:	7e 0d                                           	jle    0x109964ab
1099649e:	85 c0                                           	test   eax,eax
109964a0:	74 09                                           	je     0x109964ab
109964a2:	50                                              	push   eax
109964a3:	e8 e8 29 f8 ff                                  	call   0x10918e90
109964a8:	83 c4 04                                        	add    esp,0x4
109964ab:	8b c3                                           	mov    eax,ebx
109964ad:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
109964b1:	d9 44 24 68                                     	fld    DWORD PTR [esp+0x68]
109964b5:	8b 16                                           	mov    edx,DWORD PTR [esi]
109964b7:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
109964ba:	51                                              	push   ecx
109964bb:	83 ec 08                                        	sub    esp,0x8
109964be:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
109964c2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
109964c6:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
109964ca:	c7 44 24 5c 00 00 00 00                         	mov    DWORD PTR [esp+0x5c],0x0
109964d2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109964d5:	51                                              	push   ecx
109964d6:	50                                              	push   eax
109964d7:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
109964db:	50                                              	push   eax
109964dc:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109964e0:	51                                              	push   ecx
109964e1:	8b ce                                           	mov    ecx,esi
109964e3:	ff d2                                           	call   edx
109964e5:	50                                              	push   eax
109964e6:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109964ea:	e8 81 d2 cd ff                                  	call   0x10673770
109964ef:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
109964f3:	85 f6                                           	test   esi,esi
109964f5:	74 2d                                           	je     0x10996524
109964f7:	6a 00                                           	push   0x0
109964f9:	56                                              	push   esi
109964fa:	6a 0b                                           	push   0xb
109964fc:	e8 ef 1d d9 ff                                  	call   0x107282f0
10996501:	8d 46 04                                        	lea    eax,[esi+0x4]
10996504:	83 c4 0c                                        	add    esp,0xc
10996507:	8b c8                                           	mov    ecx,eax
10996509:	83 ca ff                                        	or     edx,0xffffffff
1099650c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
10996510:	4a                                              	dec    edx
10996511:	75 11                                           	jne    0x10996524
10996513:	b9 01 00 00 00                                  	mov    ecx,0x1
10996518:	87 08                                           	xchg   DWORD PTR [eax],ecx
1099651a:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099651c:	8b 02                                           	mov    eax,DWORD PTR [edx]
1099651e:	6a 01                                           	push   0x1
10996520:	8b ce                                           	mov    ecx,esi
10996522:	ff d0                                           	call   eax
10996524:	2b fb                                           	sub    edi,ebx
10996526:	83 ff 01                                        	cmp    edi,0x1
10996529:	7e 0d                                           	jle    0x10996538
1099652b:	85 db                                           	test   ebx,ebx
1099652d:	74 09                                           	je     0x10996538
1099652f:	53                                              	push   ebx
10996530:	e8 5b 29 f8 ff                                  	call   0x10918e90
10996535:	83 c4 04                                        	add    esp,0x4
10996538:	5f                                              	pop    edi
10996539:	5b                                              	pop    ebx
1099653a:	8b c6                                           	mov    eax,esi
1099653c:	5e                                              	pop    esi
1099653d:	83 c4 40                                        	add    esp,0x40
10996540:	c3                                              	ret
10996541:	cc                                              	int3
10996542:	cc                                              	int3
10996543:	cc                                              	int3
10996544:	cc                                              	int3
10996545:	cc                                              	int3
10996546:	cc                                              	int3
10996547:	cc                                              	int3
10996548:	cc                                              	int3
10996549:	cc                                              	int3
1099654a:	cc                                              	int3
1099654b:	cc                                              	int3
1099654c:	cc                                              	int3
1099654d:	cc                                              	int3
1099654e:	cc                                              	int3
1099654f:	cc                                              	int3
