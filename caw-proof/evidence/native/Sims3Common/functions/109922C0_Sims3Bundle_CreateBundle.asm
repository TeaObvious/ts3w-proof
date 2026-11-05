# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109922c0 (Sims3Bundle_CreateBundle)
Paired Ghidra pseudocode: 109922C0_Sims3Bundle_CreateBundle.c
Window: [0x109922c0, 0x10992580) (704 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109922c0: 8b 44 24 04 81 ec e8 03 00 00 56 33 f6 3b c6 0f
109922d0: 84 9d 02 00 00 8d 50 02 eb 06 8d 9b 00 00 00 00
109922e0: 66 8b 08 83 c0 02 66 3b ce 75 f5 2b c2 d1 f8 0f
109922f0: 84 7d 02 00 00 53 8b 9c 24 f8 03 00 00 3b de 55
10992300: 8b ac 24 00 04 00 00 7e 10 3b ee 75 0c 5d 5b 32
10992310: c0 5e 81 c4 e8 03 00 00 c3 57 8b bc 24 08 04 00
10992320: 00 3b fe 0f 84 20 01 00 00 8b c7 8d 50 02 8b ff
10992330: 66 8b 08 83 c0 02 66 3b ce 75 f5 2b c2 d1 f8 0f
10992340: 84 04 01 00 00 8d 44 24 10 50 8d 4c 24 28 89 74
10992350: 24 18 89 74 24 1c 89 74 24 20 c7 44 24 24 b4 73
10992360: b9 10 89 74 24 44 89 74 24 48 89 74 24 4c c7 44
10992370: 24 50 8c 73 b9 10 c7 44 24 14 64 73 b9 10 e8 7d
10992380: f2 a8 ff 8b 94 24 0c 04 00 00 8d 4c 24 24 51 8b
10992390: 8c 24 00 04 00 00 52 8d 44 24 1c 50 55 53 51 e8
109923a0: dc fa ff ff 83 c4 18 84 c0 74 7f 8d 8c 24 24 02
109923b0: 00 00 e8 d9 30 e2 ff 6a 01 8d 8c 24 28 02 00 00
109923c0: e8 5b 16 e2 ff 84 c0 0f 84 8f 01 00 00 8b 84 24
109923d0: fc 03 00 00 50 8d 8c 24 28 02 00 00 e8 cf 72 e2
109923e0: ff 84 c0 0f 84 73 01 00 00 8d 8c 24 24 02 00 00
109923f0: 51 8d 4c 24 54 e8 66 5e e2 ff 6a 02 8d 4c 24 54
10992400: e8 1b 16 e2 ff 84 c0 8d 8c 24 24 02 00 00 75 46
10992410: e8 9b 1d e2 ff 8d 4c 24 50 e8 e2 32 e2 ff 8d 8c
10992420: 24 24 02 00 00 e8 d6 32 e2 ff 8b 54 24 30 52 8d
10992430: 4c 24 28 e8 d8 f0 78 ff 8b 44 24 14 3b c6 74 09
10992440: 50 e8 4a 6a f8 ff 83 c4 04 5f 5d 5b 32 c0 5e 81
10992450: c4 e8 03 00 00 c3 e8 55 1d e2 ff 8d 44 24 24 50
10992460: 8d 4c 24 44 51 8b 8c 24 04 04 00 00 8d 54 24 1c
10992470: 52 8d 44 24 5c 50 51 e8 24 f0 ff ff 83 c4 14 84
10992480: c0 75 06 8d 4c 24 50 eb 2e 8b 8c 24 10 04 00 00
10992490: 8d 44 24 24 50 51 8d 54 24 48 52 8d 44 24 20 50
109924a0: 8d 4c 24 60 51 55 53 e8 74 f6 ff ff 83 c4 1c 84
109924b0: c0 8d 4c 24 50 75 42 e8 f4 1c e2 ff 8d 4c 24 50
109924c0: e8 3b 32 e2 ff 8d 8c 24 24 02 00 00 e8 2f 32 e2
109924d0: ff 8b 54 24 30 52 8d 4c 24 28 e8 31 f0 78 ff 8b
109924e0: 44 24 40 3b c6 0f 84 4d ff ff ff 50 e8 9f 69 f8
109924f0: ff 83 c4 04 e9 3f ff ff ff 57 e8 a1 56 e2 ff 8d
10992500: 4c 24 50 8a d8 e8 a6 1c e2 ff 8d 4c 24 50 e8 ed
10992510: 31 e2 ff 8d 8c 24 24 02 00 00 e8 e1 31 e2 ff 8b
10992520: 44 24 30 50 8d 4c 24 28 e8 e3 ef 78 ff 8b 44 24
10992530: 40 3b c6 74 09 50 e8 55 69 f8 ff 83 c4 04 8b 44
10992540: 24 14 3b c6 74 09 50 e8 44 69 f8 ff 83 c4 04 5f
10992550: 5d 8a c3 5b 5e 81 c4 e8 03 00 00 c3 8d 8c 24 24
10992560: 02 00 00 e8 98 31 e2 ff 8b 4c 24 30 51 e9 bd fe
10992570: ff ff 32 c0 5e 81 c4 e8 03 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
109922c0 <.text+0x9912c0>:
109922c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109922c4:	81 ec e8 03 00 00                               	sub    esp,0x3e8
109922ca:	56                                              	push   esi
109922cb:	33 f6                                           	xor    esi,esi
109922cd:	3b c6                                           	cmp    eax,esi
109922cf:	0f 84 9d 02 00 00                               	je     0x10992572
109922d5:	8d 50 02                                        	lea    edx,[eax+0x2]
109922d8:	eb 06                                           	jmp    0x109922e0
109922da:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
109922e0:	66 8b 08                                        	mov    cx,WORD PTR [eax]
109922e3:	83 c0 02                                        	add    eax,0x2
109922e6:	66 3b ce                                        	cmp    cx,si
109922e9:	75 f5                                           	jne    0x109922e0
109922eb:	2b c2                                           	sub    eax,edx
109922ed:	d1 f8                                           	sar    eax,1
109922ef:	0f 84 7d 02 00 00                               	je     0x10992572
109922f5:	53                                              	push   ebx
109922f6:	8b 9c 24 f8 03 00 00                            	mov    ebx,DWORD PTR [esp+0x3f8]
109922fd:	3b de                                           	cmp    ebx,esi
109922ff:	55                                              	push   ebp
10992300:	8b ac 24 00 04 00 00                            	mov    ebp,DWORD PTR [esp+0x400]
10992307:	7e 10                                           	jle    0x10992319
10992309:	3b ee                                           	cmp    ebp,esi
1099230b:	75 0c                                           	jne    0x10992319
1099230d:	5d                                              	pop    ebp
1099230e:	5b                                              	pop    ebx
1099230f:	32 c0                                           	xor    al,al
10992311:	5e                                              	pop    esi
10992312:	81 c4 e8 03 00 00                               	add    esp,0x3e8
10992318:	c3                                              	ret
10992319:	57                                              	push   edi
1099231a:	8b bc 24 08 04 00 00                            	mov    edi,DWORD PTR [esp+0x408]
10992321:	3b fe                                           	cmp    edi,esi
10992323:	0f 84 20 01 00 00                               	je     0x10992449
10992329:	8b c7                                           	mov    eax,edi
1099232b:	8d 50 02                                        	lea    edx,[eax+0x2]
1099232e:	8b ff                                           	mov    edi,edi
10992330:	66 8b 08                                        	mov    cx,WORD PTR [eax]
10992333:	83 c0 02                                        	add    eax,0x2
10992336:	66 3b ce                                        	cmp    cx,si
10992339:	75 f5                                           	jne    0x10992330
1099233b:	2b c2                                           	sub    eax,edx
1099233d:	d1 f8                                           	sar    eax,1
1099233f:	0f 84 04 01 00 00                               	je     0x10992449
10992345:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10992349:	50                                              	push   eax
1099234a:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1099234e:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
10992352:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
10992356:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
1099235a:	c7 44 24 24 b4 73 b9 10                         	mov    DWORD PTR [esp+0x24],0x10b973b4
10992362:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
10992366:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
1099236a:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
1099236e:	c7 44 24 50 8c 73 b9 10                         	mov    DWORD PTR [esp+0x50],0x10b9738c
10992376:	c7 44 24 14 64 73 b9 10                         	mov    DWORD PTR [esp+0x14],0x10b97364
1099237e:	e8 7d f2 a8 ff                                  	call   0x10421600
10992383:	8b 94 24 0c 04 00 00                            	mov    edx,DWORD PTR [esp+0x40c]
1099238a:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1099238e:	51                                              	push   ecx
1099238f:	8b 8c 24 00 04 00 00                            	mov    ecx,DWORD PTR [esp+0x400]
10992396:	52                                              	push   edx
10992397:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1099239b:	50                                              	push   eax
1099239c:	55                                              	push   ebp
1099239d:	53                                              	push   ebx
1099239e:	51                                              	push   ecx
1099239f:	e8 dc fa ff ff                                  	call   0x10991e80
109923a4:	83 c4 18                                        	add    esp,0x18
109923a7:	84 c0                                           	test   al,al
109923a9:	74 7f                                           	je     0x1099242a
109923ab:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
109923b2:	e8 d9 30 e2 ff                                  	call   0x107b5490
109923b7:	6a 01                                           	push   0x1
109923b9:	8d 8c 24 28 02 00 00                            	lea    ecx,[esp+0x228]
109923c0:	e8 5b 16 e2 ff                                  	call   0x107b3a20
109923c5:	84 c0                                           	test   al,al
109923c7:	0f 84 8f 01 00 00                               	je     0x1099255c
109923cd:	8b 84 24 fc 03 00 00                            	mov    eax,DWORD PTR [esp+0x3fc]
109923d4:	50                                              	push   eax
109923d5:	8d 8c 24 28 02 00 00                            	lea    ecx,[esp+0x228]
109923dc:	e8 cf 72 e2 ff                                  	call   0x107b96b0
109923e1:	84 c0                                           	test   al,al
109923e3:	0f 84 73 01 00 00                               	je     0x1099255c
109923e9:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
109923f0:	51                                              	push   ecx
109923f1:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109923f5:	e8 66 5e e2 ff                                  	call   0x107b8260
109923fa:	6a 02                                           	push   0x2
109923fc:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10992400:	e8 1b 16 e2 ff                                  	call   0x107b3a20
10992405:	84 c0                                           	test   al,al
10992407:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
1099240e:	75 46                                           	jne    0x10992456
10992410:	e8 9b 1d e2 ff                                  	call   0x107b41b0
10992415:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10992419:	e8 e2 32 e2 ff                                  	call   0x107b5700
1099241e:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
10992425:	e8 d6 32 e2 ff                                  	call   0x107b5700
1099242a:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1099242e:	52                                              	push   edx
1099242f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10992433:	e8 d8 f0 78 ff                                  	call   0x10121510
10992438:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1099243c:	3b c6                                           	cmp    eax,esi
1099243e:	74 09                                           	je     0x10992449
10992440:	50                                              	push   eax
10992441:	e8 4a 6a f8 ff                                  	call   0x10918e90
10992446:	83 c4 04                                        	add    esp,0x4
10992449:	5f                                              	pop    edi
1099244a:	5d                                              	pop    ebp
1099244b:	5b                                              	pop    ebx
1099244c:	32 c0                                           	xor    al,al
1099244e:	5e                                              	pop    esi
1099244f:	81 c4 e8 03 00 00                               	add    esp,0x3e8
10992455:	c3                                              	ret
10992456:	e8 55 1d e2 ff                                  	call   0x107b41b0
1099245b:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1099245f:	50                                              	push   eax
10992460:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
10992464:	51                                              	push   ecx
10992465:	8b 8c 24 04 04 00 00                            	mov    ecx,DWORD PTR [esp+0x404]
1099246c:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10992470:	52                                              	push   edx
10992471:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
10992475:	50                                              	push   eax
10992476:	51                                              	push   ecx
10992477:	e8 24 f0 ff ff                                  	call   0x109914a0
1099247c:	83 c4 14                                        	add    esp,0x14
1099247f:	84 c0                                           	test   al,al
10992481:	75 06                                           	jne    0x10992489
10992483:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10992487:	eb 2e                                           	jmp    0x109924b7
10992489:	8b 8c 24 10 04 00 00                            	mov    ecx,DWORD PTR [esp+0x410]
10992490:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10992494:	50                                              	push   eax
10992495:	51                                              	push   ecx
10992496:	8d 54 24 48                                     	lea    edx,[esp+0x48]
1099249a:	52                                              	push   edx
1099249b:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1099249f:	50                                              	push   eax
109924a0:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
109924a4:	51                                              	push   ecx
109924a5:	55                                              	push   ebp
109924a6:	53                                              	push   ebx
109924a7:	e8 74 f6 ff ff                                  	call   0x10991b20
109924ac:	83 c4 1c                                        	add    esp,0x1c
109924af:	84 c0                                           	test   al,al
109924b1:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
109924b5:	75 42                                           	jne    0x109924f9
109924b7:	e8 f4 1c e2 ff                                  	call   0x107b41b0
109924bc:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
109924c0:	e8 3b 32 e2 ff                                  	call   0x107b5700
109924c5:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
109924cc:	e8 2f 32 e2 ff                                  	call   0x107b5700
109924d1:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
109924d5:	52                                              	push   edx
109924d6:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109924da:	e8 31 f0 78 ff                                  	call   0x10121510
109924df:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
109924e3:	3b c6                                           	cmp    eax,esi
109924e5:	0f 84 4d ff ff ff                               	je     0x10992438
109924eb:	50                                              	push   eax
109924ec:	e8 9f 69 f8 ff                                  	call   0x10918e90
109924f1:	83 c4 04                                        	add    esp,0x4
109924f4:	e9 3f ff ff ff                                  	jmp    0x10992438
109924f9:	57                                              	push   edi
109924fa:	e8 a1 56 e2 ff                                  	call   0x107b7ba0
109924ff:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10992503:	8a d8                                           	mov    bl,al
10992505:	e8 a6 1c e2 ff                                  	call   0x107b41b0
1099250a:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1099250e:	e8 ed 31 e2 ff                                  	call   0x107b5700
10992513:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
1099251a:	e8 e1 31 e2 ff                                  	call   0x107b5700
1099251f:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10992523:	50                                              	push   eax
10992524:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10992528:	e8 e3 ef 78 ff                                  	call   0x10121510
1099252d:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10992531:	3b c6                                           	cmp    eax,esi
10992533:	74 09                                           	je     0x1099253e
10992535:	50                                              	push   eax
10992536:	e8 55 69 f8 ff                                  	call   0x10918e90
1099253b:	83 c4 04                                        	add    esp,0x4
1099253e:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10992542:	3b c6                                           	cmp    eax,esi
10992544:	74 09                                           	je     0x1099254f
10992546:	50                                              	push   eax
10992547:	e8 44 69 f8 ff                                  	call   0x10918e90
1099254c:	83 c4 04                                        	add    esp,0x4
1099254f:	5f                                              	pop    edi
10992550:	5d                                              	pop    ebp
10992551:	8a c3                                           	mov    al,bl
10992553:	5b                                              	pop    ebx
10992554:	5e                                              	pop    esi
10992555:	81 c4 e8 03 00 00                               	add    esp,0x3e8
1099255b:	c3                                              	ret
1099255c:	8d 8c 24 24 02 00 00                            	lea    ecx,[esp+0x224]
10992563:	e8 98 31 e2 ff                                  	call   0x107b5700
10992568:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1099256c:	51                                              	push   ecx
1099256d:	e9 bd fe ff ff                                  	jmp    0x1099242f
10992572:	32 c0                                           	xor    al,al
10992574:	5e                                              	pop    esi
10992575:	81 c4 e8 03 00 00                               	add    esp,0x3e8
1099257b:	c3                                              	ret
1099257c:	cc                                              	int3
1099257d:	cc                                              	int3
1099257e:	cc                                              	int3
1099257f:	cc                                              	int3
