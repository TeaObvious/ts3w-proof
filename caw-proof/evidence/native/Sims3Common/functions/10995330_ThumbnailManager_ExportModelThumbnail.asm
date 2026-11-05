# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995330 (ThumbnailManager_ExportModelThumbnail)
Paired Ghidra pseudocode: 10995330_ThumbnailManager_ExportModelThumbnail.c
Window: [0x10995330, 0x109954a0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x109954a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995330: 83 ec 14 53 55 56 57 8d 44 24 34 50 8d 4c 24 18
10995340: 51 e8 5a 87 bc ff 83 c4 08 33 db 33 ed c7 44 24
10995350: 10 01 00 00 00 eb 09 8d a4 24 00 00 00 00 8b ff
10995360: 8b 54 24 30 85 54 24 10 0f 84 d3 00 00 00 53 53
10995370: 53 53 68 f8 77 b9 10 6a 30 e8 32 3b f8 ff 8b f0
10995380: 83 c4 18 3b f3 0f 84 d7 00 00 00 8b ce e8 8e 01
10995390: 99 ff c7 46 20 cc f8 aa 10 c7 46 24 d8 e9 aa 10
109953a0: c7 06 34 78 b9 10 c7 46 20 24 78 b9 10 c7 46 24
109953b0: 18 78 b9 10 88 5e 28 88 5e 29 8b 06 8b 50 04 8b
109953c0: ce 8b fe ff d2 53 53 53 53 68 f8 77 b9 10 6a 58
109953d0: e8 db 3a f8 ff 83 c4 18 3b c3 0f 84 89 00 00 00
109953e0: 8b c8 e8 89 7f 9a ff 8b f0 3b f3 74 08 8b 06 8b
109953f0: 10 8b ce ff d2 8b 44 24 2c 8b 4c 24 28 55 57 56
10995400: 50 51 e8 c9 fd ff ff 83 c4 14 84 c0 74 5f 8b 54
10995410: 24 44 52 55 8d 44 24 1c 50 56 57 e8 d0 f8 ff ff
10995420: 83 c4 14 84 c0 74 46 3b f3 74 09 8b 16 8b 42 04
10995430: 8b ce ff d0 3b fb 74 09 8b 17 8b 42 08 8b cf ff
10995440: d0 8b 4c 24 10 83 c5 01 83 fd 04 8d 14 09 89 54
10995450: 24 10 0f 82 08 ff ff ff 5f 5e 5d b0 01 5b 83 c4
10995460: 14 c3 33 ff e9 5c ff ff ff 33 f6 eb 88 3b f3 74
10995470: 09 8b 06 8b 50 04 8b ce ff d2 3b fb 74 09 8b 07
10995480: 8b 50 08 8b cf ff d2 5f 5e 5d 32 c0 5b 83 c4 14
10995490: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995330 <.text+0x994330>:
10995330:	83 ec 14                                        	sub    esp,0x14
10995333:	53                                              	push   ebx
10995334:	55                                              	push   ebp
10995335:	56                                              	push   esi
10995336:	57                                              	push   edi
10995337:	8d 44 24 34                                     	lea    eax,[esp+0x34]
1099533b:	50                                              	push   eax
1099533c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10995340:	51                                              	push   ecx
10995341:	e8 5a 87 bc ff                                  	call   0x1055daa0
10995346:	83 c4 08                                        	add    esp,0x8
10995349:	33 db                                           	xor    ebx,ebx
1099534b:	33 ed                                           	xor    ebp,ebp
1099534d:	c7 44 24 10 01 00 00 00                         	mov    DWORD PTR [esp+0x10],0x1
10995355:	eb 09                                           	jmp    0x10995360
10995357:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
1099535e:	8b ff                                           	mov    edi,edi
10995360:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10995364:	85 54 24 10                                     	test   DWORD PTR [esp+0x10],edx
10995368:	0f 84 d3 00 00 00                               	je     0x10995441
1099536e:	53                                              	push   ebx
1099536f:	53                                              	push   ebx
10995370:	53                                              	push   ebx
10995371:	53                                              	push   ebx
10995372:	68 f8 77 b9 10                                  	push   0x10b977f8
10995377:	6a 30                                           	push   0x30
10995379:	e8 32 3b f8 ff                                  	call   0x10918eb0
1099537e:	8b f0                                           	mov    esi,eax
10995380:	83 c4 18                                        	add    esp,0x18
10995383:	3b f3                                           	cmp    esi,ebx
10995385:	0f 84 d7 00 00 00                               	je     0x10995462
1099538b:	8b ce                                           	mov    ecx,esi
1099538d:	e8 8e 01 99 ff                                  	call   0x10325520
10995392:	c7 46 20 cc f8 aa 10                            	mov    DWORD PTR [esi+0x20],0x10aaf8cc
10995399:	c7 46 24 d8 e9 aa 10                            	mov    DWORD PTR [esi+0x24],0x10aae9d8
109953a0:	c7 06 34 78 b9 10                               	mov    DWORD PTR [esi],0x10b97834
109953a6:	c7 46 20 24 78 b9 10                            	mov    DWORD PTR [esi+0x20],0x10b97824
109953ad:	c7 46 24 18 78 b9 10                            	mov    DWORD PTR [esi+0x24],0x10b97818
109953b4:	88 5e 28                                        	mov    BYTE PTR [esi+0x28],bl
109953b7:	88 5e 29                                        	mov    BYTE PTR [esi+0x29],bl
109953ba:	8b 06                                           	mov    eax,DWORD PTR [esi]
109953bc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109953bf:	8b ce                                           	mov    ecx,esi
109953c1:	8b fe                                           	mov    edi,esi
109953c3:	ff d2                                           	call   edx
109953c5:	53                                              	push   ebx
109953c6:	53                                              	push   ebx
109953c7:	53                                              	push   ebx
109953c8:	53                                              	push   ebx
109953c9:	68 f8 77 b9 10                                  	push   0x10b977f8
109953ce:	6a 58                                           	push   0x58
109953d0:	e8 db 3a f8 ff                                  	call   0x10918eb0
109953d5:	83 c4 18                                        	add    esp,0x18
109953d8:	3b c3                                           	cmp    eax,ebx
109953da:	0f 84 89 00 00 00                               	je     0x10995469
109953e0:	8b c8                                           	mov    ecx,eax
109953e2:	e8 89 7f 9a ff                                  	call   0x1033d370
109953e7:	8b f0                                           	mov    esi,eax
109953e9:	3b f3                                           	cmp    esi,ebx
109953eb:	74 08                                           	je     0x109953f5
109953ed:	8b 06                                           	mov    eax,DWORD PTR [esi]
109953ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
109953f1:	8b ce                                           	mov    ecx,esi
109953f3:	ff d2                                           	call   edx
109953f5:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
109953f9:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109953fd:	55                                              	push   ebp
109953fe:	57                                              	push   edi
109953ff:	56                                              	push   esi
10995400:	50                                              	push   eax
10995401:	51                                              	push   ecx
10995402:	e8 c9 fd ff ff                                  	call   0x109951d0
10995407:	83 c4 14                                        	add    esp,0x14
1099540a:	84 c0                                           	test   al,al
1099540c:	74 5f                                           	je     0x1099546d
1099540e:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
10995412:	52                                              	push   edx
10995413:	55                                              	push   ebp
10995414:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10995418:	50                                              	push   eax
10995419:	56                                              	push   esi
1099541a:	57                                              	push   edi
1099541b:	e8 d0 f8 ff ff                                  	call   0x10994cf0
10995420:	83 c4 14                                        	add    esp,0x14
10995423:	84 c0                                           	test   al,al
10995425:	74 46                                           	je     0x1099546d
10995427:	3b f3                                           	cmp    esi,ebx
10995429:	74 09                                           	je     0x10995434
1099542b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099542d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995430:	8b ce                                           	mov    ecx,esi
10995432:	ff d0                                           	call   eax
10995434:	3b fb                                           	cmp    edi,ebx
10995436:	74 09                                           	je     0x10995441
10995438:	8b 17                                           	mov    edx,DWORD PTR [edi]
1099543a:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1099543d:	8b cf                                           	mov    ecx,edi
1099543f:	ff d0                                           	call   eax
10995441:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10995445:	83 c5 01                                        	add    ebp,0x1
10995448:	83 fd 04                                        	cmp    ebp,0x4
1099544b:	8d 14 09                                        	lea    edx,[ecx+ecx*1]
1099544e:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10995452:	0f 82 08 ff ff ff                               	jb     0x10995360
10995458:	5f                                              	pop    edi
10995459:	5e                                              	pop    esi
1099545a:	5d                                              	pop    ebp
1099545b:	b0 01                                           	mov    al,0x1
1099545d:	5b                                              	pop    ebx
1099545e:	83 c4 14                                        	add    esp,0x14
10995461:	c3                                              	ret
10995462:	33 ff                                           	xor    edi,edi
10995464:	e9 5c ff ff ff                                  	jmp    0x109953c5
10995469:	33 f6                                           	xor    esi,esi
1099546b:	eb 88                                           	jmp    0x109953f5
1099546d:	3b f3                                           	cmp    esi,ebx
1099546f:	74 09                                           	je     0x1099547a
10995471:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995473:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10995476:	8b ce                                           	mov    ecx,esi
10995478:	ff d2                                           	call   edx
1099547a:	3b fb                                           	cmp    edi,ebx
1099547c:	74 09                                           	je     0x10995487
1099547e:	8b 07                                           	mov    eax,DWORD PTR [edi]
10995480:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10995483:	8b cf                                           	mov    ecx,edi
10995485:	ff d2                                           	call   edx
10995487:	5f                                              	pop    edi
10995488:	5e                                              	pop    esi
10995489:	5d                                              	pop    ebp
1099548a:	32 c0                                           	xor    al,al
1099548c:	5b                                              	pop    ebx
1099548d:	83 c4 14                                        	add    esp,0x14
10995490:	c3                                              	ret
10995491:	cc                                              	int3
10995492:	cc                                              	int3
10995493:	cc                                              	int3
10995494:	cc                                              	int3
10995495:	cc                                              	int3
10995496:	cc                                              	int3
10995497:	cc                                              	int3
10995498:	cc                                              	int3
10995499:	cc                                              	int3
1099549a:	cc                                              	int3
1099549b:	cc                                              	int3
1099549c:	cc                                              	int3
1099549d:	cc                                              	int3
1099549e:	cc                                              	int3
1099549f:	cc                                              	int3
