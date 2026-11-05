# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b440 (ScriptCore.World::World_FindGoodLocationAtCustomDepth)
Paired Ghidra pseudocode: 0078B440_ScriptCore_World_World_FindGoodLocationAtCustomDepth.c
Window: [0x0078b440, 0x0078b6d0) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078b6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b440: 83 ec 14 f3 0f 10 44 24 64 53 f3 0f 11 44 24 0c
0078b450: f3 0f 10 44 24 24 56 f3 0f 11 44 24 14 f3 0f 10
0078b460: 44 24 30 57 f3 0f 11 44 24 1c e8 01 c1 1a 00 8b
0078b470: 4c 24 28 8b 54 24 24 51 52 8b c8 e8 00 cb 1a 00
0078b480: 8b f0 85 f6 89 74 24 10 74 0c 8d 46 04 b9 01 00
0078b490: 00 00 f0 0f c1 08 85 f6 8b 1d c4 db 1e 01 0f 84
0078b4a0: 1b 02 00 00 8b 7c 24 54 85 ff c7 44 24 70 00 00
0078b4b0: 00 00 c7 44 24 0c 00 00 00 00 74 19 e8 cf de fd
0078b4c0: ff 8b 10 8b 52 68 8d 4c 24 70 51 8d 4c 24 10 51
0078b4d0: 57 8b c8 ff d2 80 7c 24 68 00 0f 85 37 01 00 00
0078b4e0: d9 44 24 34 83 ec 08 d9 5c 24 04 8b cb d9 44 24
0078b4f0: 34 d9 1c 24 e8 d7 d2 4d 00 85 c0 d9 44 24 5c 0f
0078b500: 84 85 00 00 00 8b 44 24 70 8b 4c 24 0c 50 8b 44
0078b510: 24 70 51 8b 4c 24 6c 8d 54 24 1c 52 8b 54 24 6c
0078b520: 50 8b 44 24 60 51 8b 4c 24 60 52 8b 54 24 60 83
0078b530: ec 08 d9 5c 24 04 d9 44 24 78 d9 1c 24 50 8b 44
0078b540: 24 68 51 8b 4c 24 68 52 8b 54 24 68 50 8b 44 24
0078b550: 68 51 8b 4c 24 60 52 8b 54 24 68 50 83 ec 0c 8b
0078b560: c4 89 08 8b 4c 24 7c 89 50 04 56 89 48 08 e8 bd
0078b570: 13 38 00 83 c4 4c 8d 4c 24 10 8a d8 e8 5f ad fb
0078b580: ff 8a c3 5f 5e 5b 83 c4 14 c3 8b 54 24 70 8b 44
0078b590: 24 0c 52 8b 54 24 70 50 8b 44 24 58 8d 4c 24 1c
0078b5a0: 51 8b 4c 24 70 52 8b 54 24 70 6a 00 50 8b 44 24
0078b5b0: 64 51 8b 4c 24 64 52 8b 54 24 64 83 ec 08 d9 5c
0078b5c0: 24 04 d9 84 24 80 00 00 00 d9 1c 24 50 8b 44 24
0078b5d0: 6c 51 8b 4c 24 6c 52 8b 54 24 6c 50 51 8b 4c 24
0078b5e0: 68 52 8b 54 24 70 83 ec 0c 8b c4 89 08 8b 8c 24
0078b5f0: 80 00 00 00 89 50 04 56 89 48 08 e8 b0 3c 38 00
0078b600: 83 c4 50 8d 4c 24 10 8a d8 e8 d2 ac fb ff 8a c3
0078b610: 5f 5e 5b 83 c4 14 c3 8b 54 24 70 d9 44 24 5c 8b
0078b620: 44 24 0c 52 8b 54 24 70 50 8b 44 24 58 8d 4c 24
0078b630: 1c 51 8b 4c 24 70 52 8b 54 24 70 6a 01 50 8b 44
0078b640: 24 64 51 8b 4c 24 64 52 8b 54 24 64 83 ec 08 d9
0078b650: 5c 24 04 d9 84 24 80 00 00 00 d9 1c 24 50 8b 44
0078b660: 24 6c 51 8b 4c 24 6c 52 8b 54 24 6c 50 51 8b 4c
0078b670: 24 68 52 8b 54 24 70 83 ec 0c 8b c4 89 08 8b 8c
0078b680: 24 80 00 00 00 89 50 04 56 89 48 08 e8 1f 3c 38
0078b690: 00 8a d8 8d 46 04 83 c4 50 8b d0 83 c9 ff f0 0f
0078b6a0: c1 0a 49 75 11 ba 01 00 00 00 87 10 8b 06 8b 10
0078b6b0: 6a 01 8b ce ff d2 8a c3 5f 5e 5b 83 c4 14 c3 5f
0078b6c0: 5e 32 c0 5b 83 c4 14 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078b440 <.text+0x38a440>:
  78b440:	83 ec 14                                        	sub    esp,0x14
  78b443:	f3 0f 10 44 24 64                               	movss  xmm0,DWORD PTR [esp+0x64]
  78b449:	53                                              	push   ebx
  78b44a:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78b450:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  78b456:	56                                              	push   esi
  78b457:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78b45d:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  78b463:	57                                              	push   edi
  78b464:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  78b46a:	e8 01 c1 1a 00                                  	call   0x937570
  78b46f:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  78b473:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  78b477:	51                                              	push   ecx
  78b478:	52                                              	push   edx
  78b479:	8b c8                                           	mov    ecx,eax
  78b47b:	e8 00 cb 1a 00                                  	call   0x937f80
  78b480:	8b f0                                           	mov    esi,eax
  78b482:	85 f6                                           	test   esi,esi
  78b484:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  78b488:	74 0c                                           	je     0x78b496
  78b48a:	8d 46 04                                        	lea    eax,[esi+0x4]
  78b48d:	b9 01 00 00 00                                  	mov    ecx,0x1
  78b492:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78b496:	85 f6                                           	test   esi,esi
  78b498:	8b 1d c4 db 1e 01                               	mov    ebx,DWORD PTR ds:0x11edbc4
  78b49e:	0f 84 1b 02 00 00                               	je     0x78b6bf
  78b4a4:	8b 7c 24 54                                     	mov    edi,DWORD PTR [esp+0x54]
  78b4a8:	85 ff                                           	test   edi,edi
  78b4aa:	c7 44 24 70 00 00 00 00                         	mov    DWORD PTR [esp+0x70],0x0
  78b4b2:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  78b4ba:	74 19                                           	je     0x78b4d5
  78b4bc:	e8 cf de fd ff                                  	call   0x769390
  78b4c1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78b4c3:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  78b4c6:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  78b4ca:	51                                              	push   ecx
  78b4cb:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78b4cf:	51                                              	push   ecx
  78b4d0:	57                                              	push   edi
  78b4d1:	8b c8                                           	mov    ecx,eax
  78b4d3:	ff d2                                           	call   edx
  78b4d5:	80 7c 24 68 00                                  	cmp    BYTE PTR [esp+0x68],0x0
  78b4da:	0f 85 37 01 00 00                               	jne    0x78b617
  78b4e0:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  78b4e4:	83 ec 08                                        	sub    esp,0x8
  78b4e7:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78b4eb:	8b cb                                           	mov    ecx,ebx
  78b4ed:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  78b4f1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b4f4:	e8 d7 d2 4d 00                                  	call   0xc687d0
  78b4f9:	85 c0                                           	test   eax,eax
  78b4fb:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  78b4ff:	0f 84 85 00 00 00                               	je     0x78b58a
  78b505:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  78b509:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78b50d:	50                                              	push   eax
  78b50e:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  78b512:	51                                              	push   ecx
  78b513:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  78b517:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  78b51b:	52                                              	push   edx
  78b51c:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
  78b520:	50                                              	push   eax
  78b521:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  78b525:	51                                              	push   ecx
  78b526:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  78b52a:	52                                              	push   edx
  78b52b:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  78b52f:	83 ec 08                                        	sub    esp,0x8
  78b532:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78b536:	d9 44 24 78                                     	fld    DWORD PTR [esp+0x78]
  78b53a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b53d:	50                                              	push   eax
  78b53e:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  78b542:	51                                              	push   ecx
  78b543:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  78b547:	52                                              	push   edx
  78b548:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  78b54c:	50                                              	push   eax
  78b54d:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  78b551:	51                                              	push   ecx
  78b552:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  78b556:	52                                              	push   edx
  78b557:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  78b55b:	50                                              	push   eax
  78b55c:	83 ec 0c                                        	sub    esp,0xc
  78b55f:	8b c4                                           	mov    eax,esp
  78b561:	89 08                                           	mov    DWORD PTR [eax],ecx
  78b563:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  78b567:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78b56a:	56                                              	push   esi
  78b56b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78b56e:	e8 bd 13 38 00                                  	call   0xb0c930
  78b573:	83 c4 4c                                        	add    esp,0x4c
  78b576:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78b57a:	8a d8                                           	mov    bl,al
  78b57c:	e8 5f ad fb ff                                  	call   0x7462e0
  78b581:	8a c3                                           	mov    al,bl
  78b583:	5f                                              	pop    edi
  78b584:	5e                                              	pop    esi
  78b585:	5b                                              	pop    ebx
  78b586:	83 c4 14                                        	add    esp,0x14
  78b589:	c3                                              	ret
  78b58a:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b58e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78b592:	52                                              	push   edx
  78b593:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b597:	50                                              	push   eax
  78b598:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  78b59c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78b5a0:	51                                              	push   ecx
  78b5a1:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  78b5a5:	52                                              	push   edx
  78b5a6:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b5aa:	6a 00                                           	push   0x0
  78b5ac:	50                                              	push   eax
  78b5ad:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  78b5b1:	51                                              	push   ecx
  78b5b2:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  78b5b6:	52                                              	push   edx
  78b5b7:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  78b5bb:	83 ec 08                                        	sub    esp,0x8
  78b5be:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78b5c2:	d9 84 24 80 00 00 00                            	fld    DWORD PTR [esp+0x80]
  78b5c9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b5cc:	50                                              	push   eax
  78b5cd:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  78b5d1:	51                                              	push   ecx
  78b5d2:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  78b5d6:	52                                              	push   edx
  78b5d7:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
  78b5db:	50                                              	push   eax
  78b5dc:	51                                              	push   ecx
  78b5dd:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  78b5e1:	52                                              	push   edx
  78b5e2:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b5e6:	83 ec 0c                                        	sub    esp,0xc
  78b5e9:	8b c4                                           	mov    eax,esp
  78b5eb:	89 08                                           	mov    DWORD PTR [eax],ecx
  78b5ed:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
  78b5f4:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78b5f7:	56                                              	push   esi
  78b5f8:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78b5fb:	e8 b0 3c 38 00                                  	call   0xb0f2b0
  78b600:	83 c4 50                                        	add    esp,0x50
  78b603:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78b607:	8a d8                                           	mov    bl,al
  78b609:	e8 d2 ac fb ff                                  	call   0x7462e0
  78b60e:	8a c3                                           	mov    al,bl
  78b610:	5f                                              	pop    edi
  78b611:	5e                                              	pop    esi
  78b612:	5b                                              	pop    ebx
  78b613:	83 c4 14                                        	add    esp,0x14
  78b616:	c3                                              	ret
  78b617:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b61b:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  78b61f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78b623:	52                                              	push   edx
  78b624:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b628:	50                                              	push   eax
  78b629:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  78b62d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78b631:	51                                              	push   ecx
  78b632:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  78b636:	52                                              	push   edx
  78b637:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b63b:	6a 01                                           	push   0x1
  78b63d:	50                                              	push   eax
  78b63e:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  78b642:	51                                              	push   ecx
  78b643:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  78b647:	52                                              	push   edx
  78b648:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  78b64c:	83 ec 08                                        	sub    esp,0x8
  78b64f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78b653:	d9 84 24 80 00 00 00                            	fld    DWORD PTR [esp+0x80]
  78b65a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b65d:	50                                              	push   eax
  78b65e:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  78b662:	51                                              	push   ecx
  78b663:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  78b667:	52                                              	push   edx
  78b668:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
  78b66c:	50                                              	push   eax
  78b66d:	51                                              	push   ecx
  78b66e:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  78b672:	52                                              	push   edx
  78b673:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  78b677:	83 ec 0c                                        	sub    esp,0xc
  78b67a:	8b c4                                           	mov    eax,esp
  78b67c:	89 08                                           	mov    DWORD PTR [eax],ecx
  78b67e:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
  78b685:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78b688:	56                                              	push   esi
  78b689:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78b68c:	e8 1f 3c 38 00                                  	call   0xb0f2b0
  78b691:	8a d8                                           	mov    bl,al
  78b693:	8d 46 04                                        	lea    eax,[esi+0x4]
  78b696:	83 c4 50                                        	add    esp,0x50
  78b699:	8b d0                                           	mov    edx,eax
  78b69b:	83 c9 ff                                        	or     ecx,0xffffffff
  78b69e:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  78b6a2:	49                                              	dec    ecx
  78b6a3:	75 11                                           	jne    0x78b6b6
  78b6a5:	ba 01 00 00 00                                  	mov    edx,0x1
  78b6aa:	87 10                                           	xchg   DWORD PTR [eax],edx
  78b6ac:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78b6ae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78b6b0:	6a 01                                           	push   0x1
  78b6b2:	8b ce                                           	mov    ecx,esi
  78b6b4:	ff d2                                           	call   edx
  78b6b6:	8a c3                                           	mov    al,bl
  78b6b8:	5f                                              	pop    edi
  78b6b9:	5e                                              	pop    esi
  78b6ba:	5b                                              	pop    ebx
  78b6bb:	83 c4 14                                        	add    esp,0x14
  78b6be:	c3                                              	ret
  78b6bf:	5f                                              	pop    edi
  78b6c0:	5e                                              	pop    esi
  78b6c1:	32 c0                                           	xor    al,al
  78b6c3:	5b                                              	pop    ebx
  78b6c4:	83 c4 14                                        	add    esp,0x14
  78b6c7:	c3                                              	ret
  78b6c8:	cc                                              	int3
  78b6c9:	cc                                              	int3
  78b6ca:	cc                                              	int3
  78b6cb:	cc                                              	int3
  78b6cc:	cc                                              	int3
  78b6cd:	cc                                              	int3
  78b6ce:	cc                                              	int3
  78b6cf:	cc                                              	int3
