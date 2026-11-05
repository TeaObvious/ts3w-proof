# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007785e0 (ScriptCore.ThumbnailManager::ThumbnailManager_StitchPhotoboothPictures)
Paired Ghidra pseudocode: 007785E0_ScriptCore_ThumbnailManager_ThumbnailManager_StitchPhotoboothPictures.c
Window: [0x007785e0, 0x007787a0) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x007787a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007785e0: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
007785f0: 10 e8 9a 0d ff ff 8b f0 8b 06 8b 90 18 01 00 00
00778600: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 33 01 00 00
00778610: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
00778620: dc be d6 ff 83 c4 18 85 c0 0f 84 00 01 00 00 8b
00778630: 4c 24 7c 51 53 55 8b c8 e8 33 f6 ff ff 8b f8 85
00778640: ff 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c 24 78
00778650: 8b 54 24 68 57 51 8b 4c 24 74 83 ec 10 8b c4 89
00778660: 10 8b 94 24 88 00 00 00 89 48 04 8b 8c 24 8c 00
00778670: 00 00 89 50 08 8b 54 24 70 89 48 0c 8b 4c 24 74
00778680: 83 ec 10 8b c4 89 10 8b 94 24 88 00 00 00 89 48
00778690: 04 8b 8c 24 8c 00 00 00 89 50 08 8b 54 24 70 89
007786a0: 48 0c 8b 4c 24 74 83 ec 10 8b c4 89 10 8b 94 24
007786b0: 88 00 00 00 89 48 04 8b 8c 24 8c 00 00 00 89 50
007786c0: 08 8b 54 24 70 89 48 0c 8b 4c 24 74 83 ec 10 8b
007786d0: c4 89 10 8b 94 24 88 00 00 00 89 48 04 8b 8c 24
007786e0: 8c 00 00 00 89 50 08 89 48 0c 8b 4c 24 58 e8 4d
007786f0: 6a 5e 00 84 c0 74 3f 8b 44 24 7c 8b 16 8b 92 20
00778700: 01 00 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06
00778710: 8b 90 1c 01 00 00 8b ce ff d2 85 ff 74 71 8b 07
00778720: 8b 50 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33
00778730: ff e9 16 ff ff ff 85 ff 74 09 8b 07 8b 50 08 8b
00778740: cf ff d2 8b 54 24 7c 6a 00 8d 4c 24 18 51 53 bf
00778750: f4 a6 fb 00 89 7c 24 20 c6 44 24 30 00 66 c7 44
00778760: 24 2a 01 00 66 c7 44 24 28 00 00 8b 06 8b 80 30
00778770: 01 00 00 55 52 8b ce ff d0 f6 44 24 1c 04 89 7c
00778780: 24 14 74 0b 6a 00 8d 4c 24 18 e8 d1 cf d7 ff 5f
00778790: 5e 5d 5b 83 c4 24 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007785e0 <.text+0x3775e0>:
  7785e0:	83 ec 24                                        	sub    esp,0x24
  7785e3:	53                                              	push   ebx
  7785e4:	55                                              	push   ebp
  7785e5:	56                                              	push   esi
  7785e6:	57                                              	push   edi
  7785e7:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  7785ed:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7785f1:	e8 9a 0d ff ff                                  	call   0x769390
  7785f6:	8b f0                                           	mov    esi,eax
  7785f8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7785fa:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  778600:	8b ce                                           	mov    ecx,esi
  778602:	ff d2                                           	call   edx
  778604:	85 ff                                           	test   edi,edi
  778606:	8b e8                                           	mov    ebp,eax
  778608:	8b da                                           	mov    ebx,edx
  77860a:	0f 84 33 01 00 00                               	je     0x778743
  778610:	6a 00                                           	push   0x0
  778612:	6a 00                                           	push   0x0
  778614:	6a 00                                           	push   0x0
  778616:	6a 00                                           	push   0x0
  778618:	68 44 e2 00 01                                  	push   0x100e244
  77861d:	6a 38                                           	push   0x38
  77861f:	e8 dc be d6 ff                                  	call   0x4e4500
  778624:	83 c4 18                                        	add    esp,0x18
  778627:	85 c0                                           	test   eax,eax
  778629:	0f 84 00 01 00 00                               	je     0x77872f
  77862f:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  778633:	51                                              	push   ecx
  778634:	53                                              	push   ebx
  778635:	55                                              	push   ebp
  778636:	8b c8                                           	mov    ecx,eax
  778638:	e8 33 f6 ff ff                                  	call   0x777c70
  77863d:	8b f8                                           	mov    edi,eax
  77863f:	85 ff                                           	test   edi,edi
  778641:	74 09                                           	je     0x77864c
  778643:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778645:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778648:	8b cf                                           	mov    ecx,edi
  77864a:	ff d0                                           	call   eax
  77864c:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  778650:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  778654:	57                                              	push   edi
  778655:	51                                              	push   ecx
  778656:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  77865a:	83 ec 10                                        	sub    esp,0x10
  77865d:	8b c4                                           	mov    eax,esp
  77865f:	89 10                                           	mov    DWORD PTR [eax],edx
  778661:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
  778668:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  77866b:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
  778672:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  778675:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  778679:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  77867c:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  778680:	83 ec 10                                        	sub    esp,0x10
  778683:	8b c4                                           	mov    eax,esp
  778685:	89 10                                           	mov    DWORD PTR [eax],edx
  778687:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
  77868e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  778691:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
  778698:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  77869b:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  77869f:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  7786a2:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  7786a6:	83 ec 10                                        	sub    esp,0x10
  7786a9:	8b c4                                           	mov    eax,esp
  7786ab:	89 10                                           	mov    DWORD PTR [eax],edx
  7786ad:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
  7786b4:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  7786b7:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
  7786be:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  7786c1:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  7786c5:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  7786c8:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  7786cc:	83 ec 10                                        	sub    esp,0x10
  7786cf:	8b c4                                           	mov    eax,esp
  7786d1:	89 10                                           	mov    DWORD PTR [eax],edx
  7786d3:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [esp+0x88]
  7786da:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  7786dd:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
  7786e4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  7786e7:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  7786ea:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  7786ee:	e8 4d 6a 5e 00                                  	call   0xd5f140
  7786f3:	84 c0                                           	test   al,al
  7786f5:	74 3f                                           	je     0x778736
  7786f7:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
  7786fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7786fd:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  778703:	6a 00                                           	push   0x0
  778705:	50                                              	push   eax
  778706:	6a ff                                           	push   0xffffffff
  778708:	53                                              	push   ebx
  778709:	55                                              	push   ebp
  77870a:	8b ce                                           	mov    ecx,esi
  77870c:	ff d2                                           	call   edx
  77870e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778710:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  778716:	8b ce                                           	mov    ecx,esi
  778718:	ff d2                                           	call   edx
  77871a:	85 ff                                           	test   edi,edi
  77871c:	74 71                                           	je     0x77878f
  77871e:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778720:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778723:	8b cf                                           	mov    ecx,edi
  778725:	ff d2                                           	call   edx
  778727:	5f                                              	pop    edi
  778728:	5e                                              	pop    esi
  778729:	5d                                              	pop    ebp
  77872a:	5b                                              	pop    ebx
  77872b:	83 c4 24                                        	add    esp,0x24
  77872e:	c3                                              	ret
  77872f:	33 ff                                           	xor    edi,edi
  778731:	e9 16 ff ff ff                                  	jmp    0x77864c
  778736:	85 ff                                           	test   edi,edi
  778738:	74 09                                           	je     0x778743
  77873a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77873c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77873f:	8b cf                                           	mov    ecx,edi
  778741:	ff d2                                           	call   edx
  778743:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
  778747:	6a 00                                           	push   0x0
  778749:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77874d:	51                                              	push   ecx
  77874e:	53                                              	push   ebx
  77874f:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  778754:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  778758:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  77875d:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  778764:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  77876b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77876d:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  778773:	55                                              	push   ebp
  778774:	52                                              	push   edx
  778775:	8b ce                                           	mov    ecx,esi
  778777:	ff d0                                           	call   eax
  778779:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  77877e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  778782:	74 0b                                           	je     0x77878f
  778784:	6a 00                                           	push   0x0
  778786:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77878a:	e8 d1 cf d7 ff                                  	call   0x4f5760
  77878f:	5f                                              	pop    edi
  778790:	5e                                              	pop    esi
  778791:	5d                                              	pop    ebp
  778792:	5b                                              	pop    ebx
  778793:	83 c4 24                                        	add    esp,0x24
  778796:	c3                                              	ret
  778797:	cc                                              	int3
  778798:	cc                                              	int3
  778799:	cc                                              	int3
  77879a:	cc                                              	int3
  77879b:	cc                                              	int3
  77879c:	cc                                              	int3
  77879d:	cc                                              	int3
  77879e:	cc                                              	int3
  77879f:	cc                                              	int3
