# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceb400 (ScriptCore.UserToolUtils::UserToolUtils_DeleteBlueprintsOnLotImpl)
Paired Ghidra pseudocode: 00CEB400_ScriptCore_UserToolUtils_UserToolUtils_DeleteBlueprintsOnLotImpl.c
Window: [0x00ceb400, 0x00ceb670) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceb670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceb400: 83 ec 20 56 8b 35 c4 db 1e 01 85 f6 0f 84 4a 02
00ceb410: 00 00 6a 00 8b ce e8 45 41 f7 ff 52 50 8b ce e8
00ceb420: ec 73 f7 ff 85 c0 0f 84 30 02 00 00 8b 0d 34 e0
00ceb430: 1e 01 53 55 89 4c 24 18 57 8b c8 e8 10 28 f8 ff
00ceb440: 6a 00 6a 00 6a 00 6a 00 68 a0 18 08 01 6a 50 8b
00ceb450: f8 e8 aa 90 7f ff 83 c4 18 85 c0 74 77 8b c8 e8
00ceb460: 9c fa 02 00 85 c0 89 44 24 10 74 04 83 40 04 01
00ceb470: 8b 10 8b c8 8b 42 04 ff d0 8b 4f 04 8b 1f 6a 00
00ceb480: 6a 00 6a 00 6a 00 68 74 18 08 01 6a 10 89 4c 24
00ceb490: 2c e8 6a 90 7f ff 8b e8 83 c4 18 85 ed 74 43 8b
00ceb4a0: 77 04 2b 37 8d 54 24 18 52 c1 fe 02 56 8b cd c7
00ceb4b0: 44 24 20 74 18 08 01 e8 74 0e 06 00 85 f6 8b 7d
00ceb4c0: 00 76 06 8b ce 33 c0 f3 ab 8b 45 00 8d 0c b0 89
00ceb4d0: 4d 04 eb 10 c7 44 24 10 00 00 00 00 8b 44 24 10
00ceb4e0: eb 8e 33 ed 3b 5c 24 14 74 78 8d 9b 00 00 00 00
00ceb4f0: 8b 33 85 f6 89 74 24 18 74 5f 8b 56 18 89 54 24
00ceb500: 20 8b 46 1c 89 44 24 24 8b 4e 20 89 4c 24 28 8b
00ceb510: 56 24 8b 4c 24 1c 8d 44 24 20 50 89 54 24 30 e8
00ceb520: 8c 36 fa ff 85 c0 74 31 8b 88 d0 00 00 00 c1 e9
00ceb530: 1c f6 c1 01 74 23 8b 45 04 3b 45 08 73 0e 85 c0
00ceb540: 8d 50 04 89 55 04 74 11 89 30 eb 0d 8d 4c 24 18
00ceb550: 51 50 8b cd e8 c7 6e c9 ff 83 c3 04 3b 5c 24 14
00ceb560: 75 8e 8b 5d 00 8b 6d 04 3b dd 0f 84 99 00 00 00
00ceb570: 8b 3b 6a 00 6a 00 6a 00 6a 00 68 44 18 08 01 68
00ceb580: f0 00 00 00 e8 77 8f 7f ff 83 c4 18 85 c0 74 3c
00ceb590: 8b c8 e8 f9 ca 03 00 8b f0 85 f6 74 04 83 46 04
00ceb5a0: 01 8b 16 8b 42 04 8b ce ff d0 6a 00 6a 00 6a 00
00ceb5b0: 6a 00 56 57 e8 67 22 fe ff 83 c4 18 84 c0 74 10
00ceb5c0: 8b 4c 24 10 56 e8 c6 fb 02 00 eb 16 33 f6 eb d1
00ceb5d0: 8b 16 8b 42 20 8b ce ff d0 8b 16 8b 42 08 8b ce
00ceb5e0: ff d0 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04
00ceb5f0: 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0 83 c3
00ceb600: 04 3b dd 0f 85 67 ff ff ff 8b 74 24 10 8b 4e 1c
00ceb610: 2b 4e 18 5f c1 f9 02 5d 5b 74 1c e8 e0 3e 00 00
00ceb620: 85 c0 74 05 8b 48 28 eb 02 33 c9 85 c9 74 11 56
00ceb630: e8 4b e3 04 00 eb 09 8b 16 8b 42 08 8b ce ff d0
00ceb640: 8b 46 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00
00ceb650: 00 00 8b 16 8b 02 6a 01 8b ce ff d0 5e 83 c4 20
00ceb660: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ceb400 <.text+0x8ea400>:
  ceb400:	83 ec 20                                        	sub    esp,0x20
  ceb403:	56                                              	push   esi
  ceb404:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  ceb40a:	85 f6                                           	test   esi,esi
  ceb40c:	0f 84 4a 02 00 00                               	je     0xceb65c
  ceb412:	6a 00                                           	push   0x0
  ceb414:	8b ce                                           	mov    ecx,esi
  ceb416:	e8 45 41 f7 ff                                  	call   0xc5f560
  ceb41b:	52                                              	push   edx
  ceb41c:	50                                              	push   eax
  ceb41d:	8b ce                                           	mov    ecx,esi
  ceb41f:	e8 ec 73 f7 ff                                  	call   0xc62810
  ceb424:	85 c0                                           	test   eax,eax
  ceb426:	0f 84 30 02 00 00                               	je     0xceb65c
  ceb42c:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceb432:	53                                              	push   ebx
  ceb433:	55                                              	push   ebp
  ceb434:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  ceb438:	57                                              	push   edi
  ceb439:	8b c8                                           	mov    ecx,eax
  ceb43b:	e8 10 28 f8 ff                                  	call   0xc6dc50
  ceb440:	6a 00                                           	push   0x0
  ceb442:	6a 00                                           	push   0x0
  ceb444:	6a 00                                           	push   0x0
  ceb446:	6a 00                                           	push   0x0
  ceb448:	68 a0 18 08 01                                  	push   0x10818a0
  ceb44d:	6a 50                                           	push   0x50
  ceb44f:	8b f8                                           	mov    edi,eax
  ceb451:	e8 aa 90 7f ff                                  	call   0x4e4500
  ceb456:	83 c4 18                                        	add    esp,0x18
  ceb459:	85 c0                                           	test   eax,eax
  ceb45b:	74 77                                           	je     0xceb4d4
  ceb45d:	8b c8                                           	mov    ecx,eax
  ceb45f:	e8 9c fa 02 00                                  	call   0xd1af00
  ceb464:	85 c0                                           	test   eax,eax
  ceb466:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  ceb46a:	74 04                                           	je     0xceb470
  ceb46c:	83 40 04 01                                     	add    DWORD PTR [eax+0x4],0x1
  ceb470:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ceb472:	8b c8                                           	mov    ecx,eax
  ceb474:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ceb477:	ff d0                                           	call   eax
  ceb479:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  ceb47c:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  ceb47e:	6a 00                                           	push   0x0
  ceb480:	6a 00                                           	push   0x0
  ceb482:	6a 00                                           	push   0x0
  ceb484:	6a 00                                           	push   0x0
  ceb486:	68 74 18 08 01                                  	push   0x1081874
  ceb48b:	6a 10                                           	push   0x10
  ceb48d:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  ceb491:	e8 6a 90 7f ff                                  	call   0x4e4500
  ceb496:	8b e8                                           	mov    ebp,eax
  ceb498:	83 c4 18                                        	add    esp,0x18
  ceb49b:	85 ed                                           	test   ebp,ebp
  ceb49d:	74 43                                           	je     0xceb4e2
  ceb49f:	8b 77 04                                        	mov    esi,DWORD PTR [edi+0x4]
  ceb4a2:	2b 37                                           	sub    esi,DWORD PTR [edi]
  ceb4a4:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  ceb4a8:	52                                              	push   edx
  ceb4a9:	c1 fe 02                                        	sar    esi,0x2
  ceb4ac:	56                                              	push   esi
  ceb4ad:	8b cd                                           	mov    ecx,ebp
  ceb4af:	c7 44 24 20 74 18 08 01                         	mov    DWORD PTR [esp+0x20],0x1081874
  ceb4b7:	e8 74 0e 06 00                                  	call   0xd4c330
  ceb4bc:	85 f6                                           	test   esi,esi
  ceb4be:	8b 7d 00                                        	mov    edi,DWORD PTR [ebp+0x0]
  ceb4c1:	76 06                                           	jbe    0xceb4c9
  ceb4c3:	8b ce                                           	mov    ecx,esi
  ceb4c5:	33 c0                                           	xor    eax,eax
  ceb4c7:	f3 ab                                           	rep stos DWORD PTR es:[edi],eax
  ceb4c9:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  ceb4cc:	8d 0c b0                                        	lea    ecx,[eax+esi*4]
  ceb4cf:	89 4d 04                                        	mov    DWORD PTR [ebp+0x4],ecx
  ceb4d2:	eb 10                                           	jmp    0xceb4e4
  ceb4d4:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceb4dc:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceb4e0:	eb 8e                                           	jmp    0xceb470
  ceb4e2:	33 ed                                           	xor    ebp,ebp
  ceb4e4:	3b 5c 24 14                                     	cmp    ebx,DWORD PTR [esp+0x14]
  ceb4e8:	74 78                                           	je     0xceb562
  ceb4ea:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  ceb4f0:	8b 33                                           	mov    esi,DWORD PTR [ebx]
  ceb4f2:	85 f6                                           	test   esi,esi
  ceb4f4:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ceb4f8:	74 5f                                           	je     0xceb559
  ceb4fa:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  ceb4fd:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  ceb501:	8b 46 1c                                        	mov    eax,DWORD PTR [esi+0x1c]
  ceb504:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  ceb508:	8b 4e 20                                        	mov    ecx,DWORD PTR [esi+0x20]
  ceb50b:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  ceb50f:	8b 56 24                                        	mov    edx,DWORD PTR [esi+0x24]
  ceb512:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  ceb516:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  ceb51a:	50                                              	push   eax
  ceb51b:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  ceb51f:	e8 8c 36 fa ff                                  	call   0xc8ebb0
  ceb524:	85 c0                                           	test   eax,eax
  ceb526:	74 31                                           	je     0xceb559
  ceb528:	8b 88 d0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xd0]
  ceb52e:	c1 e9 1c                                        	shr    ecx,0x1c
  ceb531:	f6 c1 01                                        	test   cl,0x1
  ceb534:	74 23                                           	je     0xceb559
  ceb536:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  ceb539:	3b 45 08                                        	cmp    eax,DWORD PTR [ebp+0x8]
  ceb53c:	73 0e                                           	jae    0xceb54c
  ceb53e:	85 c0                                           	test   eax,eax
  ceb540:	8d 50 04                                        	lea    edx,[eax+0x4]
  ceb543:	89 55 04                                        	mov    DWORD PTR [ebp+0x4],edx
  ceb546:	74 11                                           	je     0xceb559
  ceb548:	89 30                                           	mov    DWORD PTR [eax],esi
  ceb54a:	eb 0d                                           	jmp    0xceb559
  ceb54c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ceb550:	51                                              	push   ecx
  ceb551:	50                                              	push   eax
  ceb552:	8b cd                                           	mov    ecx,ebp
  ceb554:	e8 c7 6e c9 ff                                  	call   0x982420
  ceb559:	83 c3 04                                        	add    ebx,0x4
  ceb55c:	3b 5c 24 14                                     	cmp    ebx,DWORD PTR [esp+0x14]
  ceb560:	75 8e                                           	jne    0xceb4f0
  ceb562:	8b 5d 00                                        	mov    ebx,DWORD PTR [ebp+0x0]
  ceb565:	8b 6d 04                                        	mov    ebp,DWORD PTR [ebp+0x4]
  ceb568:	3b dd                                           	cmp    ebx,ebp
  ceb56a:	0f 84 99 00 00 00                               	je     0xceb609
  ceb570:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  ceb572:	6a 00                                           	push   0x0
  ceb574:	6a 00                                           	push   0x0
  ceb576:	6a 00                                           	push   0x0
  ceb578:	6a 00                                           	push   0x0
  ceb57a:	68 44 18 08 01                                  	push   0x1081844
  ceb57f:	68 f0 00 00 00                                  	push   0xf0
  ceb584:	e8 77 8f 7f ff                                  	call   0x4e4500
  ceb589:	83 c4 18                                        	add    esp,0x18
  ceb58c:	85 c0                                           	test   eax,eax
  ceb58e:	74 3c                                           	je     0xceb5cc
  ceb590:	8b c8                                           	mov    ecx,eax
  ceb592:	e8 f9 ca 03 00                                  	call   0xd28090
  ceb597:	8b f0                                           	mov    esi,eax
  ceb599:	85 f6                                           	test   esi,esi
  ceb59b:	74 04                                           	je     0xceb5a1
  ceb59d:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  ceb5a1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb5a3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ceb5a6:	8b ce                                           	mov    ecx,esi
  ceb5a8:	ff d0                                           	call   eax
  ceb5aa:	6a 00                                           	push   0x0
  ceb5ac:	6a 00                                           	push   0x0
  ceb5ae:	6a 00                                           	push   0x0
  ceb5b0:	6a 00                                           	push   0x0
  ceb5b2:	56                                              	push   esi
  ceb5b3:	57                                              	push   edi
  ceb5b4:	e8 67 22 fe ff                                  	call   0xccd820
  ceb5b9:	83 c4 18                                        	add    esp,0x18
  ceb5bc:	84 c0                                           	test   al,al
  ceb5be:	74 10                                           	je     0xceb5d0
  ceb5c0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ceb5c4:	56                                              	push   esi
  ceb5c5:	e8 c6 fb 02 00                                  	call   0xd1b190
  ceb5ca:	eb 16                                           	jmp    0xceb5e2
  ceb5cc:	33 f6                                           	xor    esi,esi
  ceb5ce:	eb d1                                           	jmp    0xceb5a1
  ceb5d0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb5d2:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  ceb5d5:	8b ce                                           	mov    ecx,esi
  ceb5d7:	ff d0                                           	call   eax
  ceb5d9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb5db:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  ceb5de:	8b ce                                           	mov    ecx,esi
  ceb5e0:	ff d0                                           	call   eax
  ceb5e2:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  ceb5e5:	83 c0 ff                                        	add    eax,0xffffffff
  ceb5e8:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  ceb5eb:	75 11                                           	jne    0xceb5fe
  ceb5ed:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  ceb5f4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb5f6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  ceb5f8:	6a 01                                           	push   0x1
  ceb5fa:	8b ce                                           	mov    ecx,esi
  ceb5fc:	ff d0                                           	call   eax
  ceb5fe:	83 c3 04                                        	add    ebx,0x4
  ceb601:	3b dd                                           	cmp    ebx,ebp
  ceb603:	0f 85 67 ff ff ff                               	jne    0xceb570
  ceb609:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  ceb60d:	8b 4e 1c                                        	mov    ecx,DWORD PTR [esi+0x1c]
  ceb610:	2b 4e 18                                        	sub    ecx,DWORD PTR [esi+0x18]
  ceb613:	5f                                              	pop    edi
  ceb614:	c1 f9 02                                        	sar    ecx,0x2
  ceb617:	5d                                              	pop    ebp
  ceb618:	5b                                              	pop    ebx
  ceb619:	74 1c                                           	je     0xceb637
  ceb61b:	e8 e0 3e 00 00                                  	call   0xcef500
  ceb620:	85 c0                                           	test   eax,eax
  ceb622:	74 05                                           	je     0xceb629
  ceb624:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  ceb627:	eb 02                                           	jmp    0xceb62b
  ceb629:	33 c9                                           	xor    ecx,ecx
  ceb62b:	85 c9                                           	test   ecx,ecx
  ceb62d:	74 11                                           	je     0xceb640
  ceb62f:	56                                              	push   esi
  ceb630:	e8 4b e3 04 00                                  	call   0xd39980
  ceb635:	eb 09                                           	jmp    0xceb640
  ceb637:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb639:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  ceb63c:	8b ce                                           	mov    ecx,esi
  ceb63e:	ff d0                                           	call   eax
  ceb640:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  ceb643:	83 c0 ff                                        	add    eax,0xffffffff
  ceb646:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  ceb649:	75 11                                           	jne    0xceb65c
  ceb64b:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  ceb652:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ceb654:	8b 02                                           	mov    eax,DWORD PTR [edx]
  ceb656:	6a 01                                           	push   0x1
  ceb658:	8b ce                                           	mov    ecx,esi
  ceb65a:	ff d0                                           	call   eax
  ceb65c:	5e                                              	pop    esi
  ceb65d:	83 c4 20                                        	add    esp,0x20
  ceb660:	c3                                              	ret
  ceb661:	cc                                              	int3
  ceb662:	cc                                              	int3
  ceb663:	cc                                              	int3
  ceb664:	cc                                              	int3
  ceb665:	cc                                              	int3
  ceb666:	cc                                              	int3
  ceb667:	cc                                              	int3
  ceb668:	cc                                              	int3
  ceb669:	cc                                              	int3
  ceb66a:	cc                                              	int3
  ceb66b:	cc                                              	int3
  ceb66c:	cc                                              	int3
  ceb66d:	cc                                              	int3
  ceb66e:	cc                                              	int3
  ceb66f:	cc                                              	int3
