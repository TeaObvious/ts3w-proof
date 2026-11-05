# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536470 (Objects_SetTransform)
Paired Ghidra pseudocode: 10536470_Objects_SetTransform.c
Window: [0x10536470, 0x10536590) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536470: 55 8b ec 83 e4 f0 81 ec 94 00 00 00 53 56 57 e8
10536480: 1c 3d 1f 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 1d
10536490: 47 1f 00 8b f0 85 f6 0f 84 e0 00 00 00 a1 98 d9
105364a0: c8 10 50 8b ce e8 f6 08 1f 00 85 c0 89 44 24 18
105364b0: 0f 84 c7 00 00 00 8d 8c 24 90 00 00 00 51 8d 4d
105364c0: 40 e8 9a 76 02 00 8d 54 24 60 52 8d 4d 30 8b f8
105364d0: e8 8b 76 02 00 8b d8 8d 84 24 80 00 00 00 50 8d
105364e0: 4d 20 e8 79 76 02 00 8d 4c 24 70 51 8d 4d 10 89
105364f0: 44 24 20 e8 68 76 02 00 0f 28 00 8b 54 24 1c a1
10536500: 08 04 c7 10 0f 29 44 24 20 0f 28 02 0f 29 44 24
10536510: 30 0f 28 03 0f 29 44 24 40 0f 28 07 50 8b ce 0f
10536520: 29 44 24 54 e8 77 08 1f 00 85 c0 74 07 81 60 2c
10536530: 7f ff ff ff 8d 4c 24 20 51 8b 4c 24 1c e8 9e 4a
10536540: 21 00 8b 15 c4 0c c8 10 52 8b ce e8 50 08 1f 00
10536550: 85 c0 74 11 8d 48 08 8b 01 8b 50 28 ff d2 5f 5e
10536560: 5b 8b e5 5d c3 a1 98 d9 c8 10 50 8b ce e8 2e 08
10536570: 1f 00 85 c0 74 07 8b c8 e8 d3 21 21 00 5f 5e 5b
10536580: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536470 <.text+0x535470>:
10536470:	55                                              	push   ebp
10536471:	8b ec                                           	mov    ebp,esp
10536473:	83 e4 f0                                        	and    esp,0xfffffff0
10536476:	81 ec 94 00 00 00                               	sub    esp,0x94
1053647c:	53                                              	push   ebx
1053647d:	56                                              	push   esi
1053647e:	57                                              	push   edi
1053647f:	e8 1c 3d 1f 00                                  	call   0x1072a1a0
10536484:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10536487:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1053648a:	51                                              	push   ecx
1053648b:	52                                              	push   edx
1053648c:	8b c8                                           	mov    ecx,eax
1053648e:	e8 1d 47 1f 00                                  	call   0x1072abb0
10536493:	8b f0                                           	mov    esi,eax
10536495:	85 f6                                           	test   esi,esi
10536497:	0f 84 e0 00 00 00                               	je     0x1053657d
1053649d:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
105364a2:	50                                              	push   eax
105364a3:	8b ce                                           	mov    ecx,esi
105364a5:	e8 f6 08 1f 00                                  	call   0x10726da0
105364aa:	85 c0                                           	test   eax,eax
105364ac:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
105364b0:	0f 84 c7 00 00 00                               	je     0x1053657d
105364b6:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
105364bd:	51                                              	push   ecx
105364be:	8d 4d 40                                        	lea    ecx,[ebp+0x40]
105364c1:	e8 9a 76 02 00                                  	call   0x1055db60
105364c6:	8d 54 24 60                                     	lea    edx,[esp+0x60]
105364ca:	52                                              	push   edx
105364cb:	8d 4d 30                                        	lea    ecx,[ebp+0x30]
105364ce:	8b f8                                           	mov    edi,eax
105364d0:	e8 8b 76 02 00                                  	call   0x1055db60
105364d5:	8b d8                                           	mov    ebx,eax
105364d7:	8d 84 24 80 00 00 00                            	lea    eax,[esp+0x80]
105364de:	50                                              	push   eax
105364df:	8d 4d 20                                        	lea    ecx,[ebp+0x20]
105364e2:	e8 79 76 02 00                                  	call   0x1055db60
105364e7:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
105364eb:	51                                              	push   ecx
105364ec:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
105364ef:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
105364f3:	e8 68 76 02 00                                  	call   0x1055db60
105364f8:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
105364fb:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105364ff:	a1 08 04 c7 10                                  	mov    eax,ds:0x10c70408
10536504:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10536509:	0f 28 02                                        	movaps xmm0,XMMWORD PTR [edx]
1053650c:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
10536511:	0f 28 03                                        	movaps xmm0,XMMWORD PTR [ebx]
10536514:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
10536519:	0f 28 07                                        	movaps xmm0,XMMWORD PTR [edi]
1053651c:	50                                              	push   eax
1053651d:	8b ce                                           	mov    ecx,esi
1053651f:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
10536524:	e8 77 08 1f 00                                  	call   0x10726da0
10536529:	85 c0                                           	test   eax,eax
1053652b:	74 07                                           	je     0x10536534
1053652d:	81 60 2c 7f ff ff ff                            	and    DWORD PTR [eax+0x2c],0xffffff7f
10536534:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10536538:	51                                              	push   ecx
10536539:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053653d:	e8 9e 4a 21 00                                  	call   0x1074afe0
10536542:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
10536548:	52                                              	push   edx
10536549:	8b ce                                           	mov    ecx,esi
1053654b:	e8 50 08 1f 00                                  	call   0x10726da0
10536550:	85 c0                                           	test   eax,eax
10536552:	74 11                                           	je     0x10536565
10536554:	8d 48 08                                        	lea    ecx,[eax+0x8]
10536557:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10536559:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
1053655c:	ff d2                                           	call   edx
1053655e:	5f                                              	pop    edi
1053655f:	5e                                              	pop    esi
10536560:	5b                                              	pop    ebx
10536561:	8b e5                                           	mov    esp,ebp
10536563:	5d                                              	pop    ebp
10536564:	c3                                              	ret
10536565:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
1053656a:	50                                              	push   eax
1053656b:	8b ce                                           	mov    ecx,esi
1053656d:	e8 2e 08 1f 00                                  	call   0x10726da0
10536572:	85 c0                                           	test   eax,eax
10536574:	74 07                                           	je     0x1053657d
10536576:	8b c8                                           	mov    ecx,eax
10536578:	e8 d3 21 21 00                                  	call   0x10748750
1053657d:	5f                                              	pop    edi
1053657e:	5e                                              	pop    esi
1053657f:	5b                                              	pop    ebx
10536580:	8b e5                                           	mov    esp,ebp
10536582:	5d                                              	pop    ebp
10536583:	c3                                              	ret
10536584:	cc                                              	int3
10536585:	cc                                              	int3
10536586:	cc                                              	int3
10536587:	cc                                              	int3
10536588:	cc                                              	int3
10536589:	cc                                              	int3
1053658a:	cc                                              	int3
1053658b:	cc                                              	int3
1053658c:	cc                                              	int3
1053658d:	cc                                              	int3
1053658e:	cc                                              	int3
1053658f:	cc                                              	int3
