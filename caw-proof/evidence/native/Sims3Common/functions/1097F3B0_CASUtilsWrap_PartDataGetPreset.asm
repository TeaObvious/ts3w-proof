# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f3b0 (CASUtilsWrap_PartDataGetPreset)
Paired Ghidra pseudocode: 1097F3B0_CASUtilsWrap_PartDataGetPreset.c
Window: [0x1097f3b0, 0x1097f4c0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f4c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f3b0: 83 ec 24 e8 18 5d f6 ff 8b 4c 24 30 8b 54 24 34
1097f3c0: 6a 00 89 4c 24 18 8b 4c 24 2c 6a 00 89 4c 24 24
1097f3d0: 6a 00 89 54 24 24 8b 54 24 38 6a 00 8d 4c 24 10
1097f3e0: 51 89 54 24 34 8b 10 8b 52 0c 8d 4c 24 28 51 8b
1097f3f0: c8 ff d2 84 c0 75 06 33 c0 83 c4 24 c3 8b 0c 24
1097f400: 85 c9 56 74 16 8b 01 8b 50 0c 68 7b 77 4c 03 ff
1097f410: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
1097f420: ff d2 33 c0 5e 83 c4 24 c3 8b 4c 24 3c b8 44 82
1097f430: ca 10 89 44 24 08 89 44 24 0c 8d 44 24 08 50 51
1097f440: 8b ce c7 44 24 1c 78 a8 af 10 c7 44 24 18 46 82
1097f450: ca 10 e8 79 bb a2 ff 8b 16 84 c0 8b 42 04 8b ce
1097f460: 75 28 ff d0 8b 4c 24 10 8b 44 24 08 2b c8 83 e1
1097f470: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 10 9a f9 ff
1097f480: 83 c4 04 33 c0 5e 83 c4 24 c3 ff d0 8b 4c 24 08
1097f490: 51 ff 15 c4 b6 aa 10 8b 54 24 10 8b f0 8b 44 24
1097f4a0: 08 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50
1097f4b0: e8 db 99 f9 ff 83 c4 04 8b c6 5e 83 c4 24 c3 cc

LINEAR DISASSEMBLY
1097f3b0 <.text+0x97e3b0>:
1097f3b0:	83 ec 24                                        	sub    esp,0x24
1097f3b3:	e8 18 5d f6 ff                                  	call   0x108e50d0
1097f3b8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1097f3bc:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1097f3c0:	6a 00                                           	push   0x0
1097f3c2:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1097f3c6:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1097f3ca:	6a 00                                           	push   0x0
1097f3cc:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1097f3d0:	6a 00                                           	push   0x0
1097f3d2:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1097f3d6:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
1097f3da:	6a 00                                           	push   0x0
1097f3dc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097f3e0:	51                                              	push   ecx
1097f3e1:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
1097f3e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097f3e7:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1097f3ea:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1097f3ee:	51                                              	push   ecx
1097f3ef:	8b c8                                           	mov    ecx,eax
1097f3f1:	ff d2                                           	call   edx
1097f3f3:	84 c0                                           	test   al,al
1097f3f5:	75 06                                           	jne    0x1097f3fd
1097f3f7:	33 c0                                           	xor    eax,eax
1097f3f9:	83 c4 24                                        	add    esp,0x24
1097f3fc:	c3                                              	ret
1097f3fd:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1097f400:	85 c9                                           	test   ecx,ecx
1097f402:	56                                              	push   esi
1097f403:	74 16                                           	je     0x1097f41b
1097f405:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f407:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097f40a:	68 7b 77 4c 03                                  	push   0x34c777b
1097f40f:	ff d2                                           	call   edx
1097f411:	8b f0                                           	mov    esi,eax
1097f413:	85 f6                                           	test   esi,esi
1097f415:	75 12                                           	jne    0x1097f429
1097f417:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f41b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f41d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f420:	ff d2                                           	call   edx
1097f422:	33 c0                                           	xor    eax,eax
1097f424:	5e                                              	pop    esi
1097f425:	83 c4 24                                        	add    esp,0x24
1097f428:	c3                                              	ret
1097f429:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1097f42d:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097f432:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1097f436:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097f43a:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1097f43e:	50                                              	push   eax
1097f43f:	51                                              	push   ecx
1097f440:	8b ce                                           	mov    ecx,esi
1097f442:	c7 44 24 1c 78 a8 af 10                         	mov    DWORD PTR [esp+0x1c],0x10afa878
1097f44a:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1097f452:	e8 79 bb a2 ff                                  	call   0x103aafd0
1097f457:	8b 16                                           	mov    edx,DWORD PTR [esi]
1097f459:	84 c0                                           	test   al,al
1097f45b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1097f45e:	8b ce                                           	mov    ecx,esi
1097f460:	75 28                                           	jne    0x1097f48a
1097f462:	ff d0                                           	call   eax
1097f464:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1097f468:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f46c:	2b c8                                           	sub    ecx,eax
1097f46e:	83 e1 fe                                        	and    ecx,0xfffffffe
1097f471:	83 f9 02                                        	cmp    ecx,0x2
1097f474:	7e 0d                                           	jle    0x1097f483
1097f476:	85 c0                                           	test   eax,eax
1097f478:	74 09                                           	je     0x1097f483
1097f47a:	50                                              	push   eax
1097f47b:	e8 10 9a f9 ff                                  	call   0x10918e90
1097f480:	83 c4 04                                        	add    esp,0x4
1097f483:	33 c0                                           	xor    eax,eax
1097f485:	5e                                              	pop    esi
1097f486:	83 c4 24                                        	add    esp,0x24
1097f489:	c3                                              	ret
1097f48a:	ff d0                                           	call   eax
1097f48c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097f490:	51                                              	push   ecx
1097f491:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f497:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1097f49b:	8b f0                                           	mov    esi,eax
1097f49d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f4a1:	2b d0                                           	sub    edx,eax
1097f4a3:	83 e2 fe                                        	and    edx,0xfffffffe
1097f4a6:	83 fa 02                                        	cmp    edx,0x2
1097f4a9:	7e 0d                                           	jle    0x1097f4b8
1097f4ab:	85 c0                                           	test   eax,eax
1097f4ad:	74 09                                           	je     0x1097f4b8
1097f4af:	50                                              	push   eax
1097f4b0:	e8 db 99 f9 ff                                  	call   0x10918e90
1097f4b5:	83 c4 04                                        	add    esp,0x4
1097f4b8:	8b c6                                           	mov    eax,esi
1097f4ba:	5e                                              	pop    esi
1097f4bb:	83 c4 24                                        	add    esp,0x24
1097f4be:	c3                                              	ret
1097f4bf:	cc                                              	int3
