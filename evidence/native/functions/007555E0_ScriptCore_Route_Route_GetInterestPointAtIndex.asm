# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007555e0 (ScriptCore.Route::Route_GetInterestPointAtIndex)
Paired Ghidra pseudocode: 007555E0_ScriptCore_Route_Route_GetInterestPointAtIndex.c
Window: [0x007555e0, 0x00755790) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x00755790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007555e0: 81 ec 88 00 00 00 8b 84 24 90 00 00 00 8b 0d c4
007555f0: 50 1d 01 53 55 56 57 50 e8 b3 5e ff ff 8b f8 85
00755600: ff 89 7c 24 10 0f 84 a4 00 00 00 8b 17 8b 42 10
00755610: 8b cf ff d0 80 bf f4 00 00 00 00 74 08 8b 9f ec
00755620: 00 00 00 eb 13 8d 87 e0 00 00 00 39 00 0f 84 7c
00755630: 00 00 00 8b 08 8b 59 08 85 db 74 73 8d 6b 04 8b
00755640: d5 b8 01 00 00 00 f0 0f c1 02 8b 13 8b 82 5c 01
00755650: 00 00 8b cb ff d0 8b 30 8b ce 33 d2 3b c8 74 31
00755660: 8b 09 83 c2 01 3b c8 75 f7 8b bc 24 a4 00 00 00
00755670: 3b fa 73 19 8b ce 33 d2 3b c8 74 11 8d 64 24 00
00755680: 3b d7 74 68 8b 09 83 c2 01 3b c8 75 f3 8b 7c 24
00755690: 10 8b cd 83 ca ff f0 0f c1 11 4a 75 12 b8 01 00
007556a0: 00 00 87 45 00 8b 13 8b 02 6a 01 8b cb ff d0 6a
007556b0: 40 8d 4c 24 5c 6a 00 51 e8 db 9b 82 00 83 c4 0c
007556c0: 85 ff 74 09 8b 17 8b cf 8b 42 14 ff d0 8b 84 24
007556d0: 9c 00 00 00 b9 10 00 00 00 8b f8 8d 74 24 58 f3
007556e0: a5 5f 5e 5d 5b 81 c4 88 00 00 00 c3 8b 71 08 85
007556f0: f6 74 9a 8b 4e 08 8d 56 10 52 8d 44 24 20 50 89
00755700: 4c 24 20 e8 48 6a 01 00 8d 4e 20 51 8d 54 24 34
00755710: 52 e8 3a 6a 01 00 8d 46 30 50 8d 4c 24 48 51 e8
00755720: 2c 6a 01 00 8b 56 40 8b 46 44 8b 4e 50 f3 0f 10
00755730: 46 60 89 54 24 58 8b 56 54 89 44 24 5c 8b 46 58
00755740: 89 4c 24 60 89 54 24 64 b9 10 00 00 00 8d 74 24
00755750: 30 8d 7c 24 70 89 44 24 68 f3 0f 11 44 24 6c f3
00755760: a5 83 c4 18 8b cd 83 ca ff f0 0f c1 11 4a 75 12
00755770: b8 01 00 00 00 87 45 00 8b 13 8b 02 6a 01 8b cb
00755780: ff d0 8b 4c 24 10 8b 11 e9 3b ff ff ff cc cc cc

LINEAR DISASSEMBLY
007555e0 <.text+0x3545e0>:
  7555e0:	81 ec 88 00 00 00                               	sub    esp,0x88
  7555e6:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
  7555ed:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7555f3:	53                                              	push   ebx
  7555f4:	55                                              	push   ebp
  7555f5:	56                                              	push   esi
  7555f6:	57                                              	push   edi
  7555f7:	50                                              	push   eax
  7555f8:	e8 b3 5e ff ff                                  	call   0x74b4b0
  7555fd:	8b f8                                           	mov    edi,eax
  7555ff:	85 ff                                           	test   edi,edi
  755601:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  755605:	0f 84 a4 00 00 00                               	je     0x7556af
  75560b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75560d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  755610:	8b cf                                           	mov    ecx,edi
  755612:	ff d0                                           	call   eax
  755614:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  75561b:	74 08                                           	je     0x755625
  75561d:	8b 9f ec 00 00 00                               	mov    ebx,DWORD PTR [edi+0xec]
  755623:	eb 13                                           	jmp    0x755638
  755625:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  75562b:	39 00                                           	cmp    DWORD PTR [eax],eax
  75562d:	0f 84 7c 00 00 00                               	je     0x7556af
  755633:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  755635:	8b 59 08                                        	mov    ebx,DWORD PTR [ecx+0x8]
  755638:	85 db                                           	test   ebx,ebx
  75563a:	74 73                                           	je     0x7556af
  75563c:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
  75563f:	8b d5                                           	mov    edx,ebp
  755641:	b8 01 00 00 00                                  	mov    eax,0x1
  755646:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  75564a:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75564c:	8b 82 5c 01 00 00                               	mov    eax,DWORD PTR [edx+0x15c]
  755652:	8b cb                                           	mov    ecx,ebx
  755654:	ff d0                                           	call   eax
  755656:	8b 30                                           	mov    esi,DWORD PTR [eax]
  755658:	8b ce                                           	mov    ecx,esi
  75565a:	33 d2                                           	xor    edx,edx
  75565c:	3b c8                                           	cmp    ecx,eax
  75565e:	74 31                                           	je     0x755691
  755660:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  755662:	83 c2 01                                        	add    edx,0x1
  755665:	3b c8                                           	cmp    ecx,eax
  755667:	75 f7                                           	jne    0x755660
  755669:	8b bc 24 a4 00 00 00                            	mov    edi,DWORD PTR [esp+0xa4]
  755670:	3b fa                                           	cmp    edi,edx
  755672:	73 19                                           	jae    0x75568d
  755674:	8b ce                                           	mov    ecx,esi
  755676:	33 d2                                           	xor    edx,edx
  755678:	3b c8                                           	cmp    ecx,eax
  75567a:	74 11                                           	je     0x75568d
  75567c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  755680:	3b d7                                           	cmp    edx,edi
  755682:	74 68                                           	je     0x7556ec
  755684:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  755686:	83 c2 01                                        	add    edx,0x1
  755689:	3b c8                                           	cmp    ecx,eax
  75568b:	75 f3                                           	jne    0x755680
  75568d:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  755691:	8b cd                                           	mov    ecx,ebp
  755693:	83 ca ff                                        	or     edx,0xffffffff
  755696:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75569a:	4a                                              	dec    edx
  75569b:	75 12                                           	jne    0x7556af
  75569d:	b8 01 00 00 00                                  	mov    eax,0x1
  7556a2:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
  7556a5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7556a7:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7556a9:	6a 01                                           	push   0x1
  7556ab:	8b cb                                           	mov    ecx,ebx
  7556ad:	ff d0                                           	call   eax
  7556af:	6a 40                                           	push   0x40
  7556b1:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  7556b5:	6a 00                                           	push   0x0
  7556b7:	51                                              	push   ecx
  7556b8:	e8 db 9b 82 00                                  	call   0xf7f298
  7556bd:	83 c4 0c                                        	add    esp,0xc
  7556c0:	85 ff                                           	test   edi,edi
  7556c2:	74 09                                           	je     0x7556cd
  7556c4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7556c6:	8b cf                                           	mov    ecx,edi
  7556c8:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7556cb:	ff d0                                           	call   eax
  7556cd:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
  7556d4:	b9 10 00 00 00                                  	mov    ecx,0x10
  7556d9:	8b f8                                           	mov    edi,eax
  7556db:	8d 74 24 58                                     	lea    esi,[esp+0x58]
  7556df:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7556e1:	5f                                              	pop    edi
  7556e2:	5e                                              	pop    esi
  7556e3:	5d                                              	pop    ebp
  7556e4:	5b                                              	pop    ebx
  7556e5:	81 c4 88 00 00 00                               	add    esp,0x88
  7556eb:	c3                                              	ret
  7556ec:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  7556ef:	85 f6                                           	test   esi,esi
  7556f1:	74 9a                                           	je     0x75568d
  7556f3:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  7556f6:	8d 56 10                                        	lea    edx,[esi+0x10]
  7556f9:	52                                              	push   edx
  7556fa:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  7556fe:	50                                              	push   eax
  7556ff:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  755703:	e8 48 6a 01 00                                  	call   0x76c150
  755708:	8d 4e 20                                        	lea    ecx,[esi+0x20]
  75570b:	51                                              	push   ecx
  75570c:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  755710:	52                                              	push   edx
  755711:	e8 3a 6a 01 00                                  	call   0x76c150
  755716:	8d 46 30                                        	lea    eax,[esi+0x30]
  755719:	50                                              	push   eax
  75571a:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  75571e:	51                                              	push   ecx
  75571f:	e8 2c 6a 01 00                                  	call   0x76c150
  755724:	8b 56 40                                        	mov    edx,DWORD PTR [esi+0x40]
  755727:	8b 46 44                                        	mov    eax,DWORD PTR [esi+0x44]
  75572a:	8b 4e 50                                        	mov    ecx,DWORD PTR [esi+0x50]
  75572d:	f3 0f 10 46 60                                  	movss  xmm0,DWORD PTR [esi+0x60]
  755732:	89 54 24 58                                     	mov    DWORD PTR [esp+0x58],edx
  755736:	8b 56 54                                        	mov    edx,DWORD PTR [esi+0x54]
  755739:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  75573d:	8b 46 58                                        	mov    eax,DWORD PTR [esi+0x58]
  755740:	89 4c 24 60                                     	mov    DWORD PTR [esp+0x60],ecx
  755744:	89 54 24 64                                     	mov    DWORD PTR [esp+0x64],edx
  755748:	b9 10 00 00 00                                  	mov    ecx,0x10
  75574d:	8d 74 24 30                                     	lea    esi,[esp+0x30]
  755751:	8d 7c 24 70                                     	lea    edi,[esp+0x70]
  755755:	89 44 24 68                                     	mov    DWORD PTR [esp+0x68],eax
  755759:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
  75575f:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  755761:	83 c4 18                                        	add    esp,0x18
  755764:	8b cd                                           	mov    ecx,ebp
  755766:	83 ca ff                                        	or     edx,0xffffffff
  755769:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75576d:	4a                                              	dec    edx
  75576e:	75 12                                           	jne    0x755782
  755770:	b8 01 00 00 00                                  	mov    eax,0x1
  755775:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
  755778:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75577a:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75577c:	6a 01                                           	push   0x1
  75577e:	8b cb                                           	mov    ecx,ebx
  755780:	ff d0                                           	call   eax
  755782:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  755786:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  755788:	e9 3b ff ff ff                                  	jmp    0x7556c8
  75578d:	cc                                              	int3
  75578e:	cc                                              	int3
  75578f:	cc                                              	int3
