# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007715a0 (ScriptCore.SocialFeatures::SocialFeaturesHost_SendGiftPost)
Paired Ghidra pseudocode: 007715A0_ScriptCore_SocialFeatures_SocialFeaturesHost_SendGiftPost.c
Window: [0x007715a0, 0x007718b0) (784 bytes; stop exclusive)
Next defined Ghidra entry: 0x007718b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007715a0: 83 ec 64 56 e8 e7 7d ff ff 8b f0 85 f6 0f 84 ea
007715b0: 02 00 00 8b 4c 24 78 8b 06 8b 50 58 53 55 57 51
007715c0: 8b ce ff d2 6a 00 6a ff 50 8d 44 24 60 bf 54 8e
007715d0: 1c 01 bd bc 9c 00 01 bb 55 8e 1c 01 50 89 6c 24
007715e0: 40 89 7c 24 34 89 7c 24 38 89 5c 24 3c e8 ce 26
007715f0: d8 ff 8d 4c 24 34 83 c4 10 3b c1 74 0c 8b 50 04
00771600: 8b 00 52 50 e8 07 43 c9 ff 8b 4c 24 5c 8b 44 24
00771610: 54 2b c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 be 2e
00771620: d7 ff 83 c4 04 8b 16 8b 84 24 88 00 00 00 8b 52
00771630: 58 50 8b ce ff d2 6a 00 6a ff 50 8d 44 24 60 50
00771640: 89 6c 24 30 89 7c 24 24 89 7c 24 28 89 5c 24 2c
00771650: e8 6b 26 d8 ff 8d 4c 24 24 83 c4 10 3b c1 74 0c
00771660: 8b 50 04 8b 00 52 50 e8 a4 42 c9 ff 8b 4c 24 5c
00771670: 8b 44 24 54 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00771680: e8 5b 2e d7 ff 83 c4 04 8b 16 8b 84 24 8c 00 00
00771690: 00 8b 52 58 50 8b ce ff d2 6a 00 6a ff 50 8d 44
007716a0: 24 50 50 89 6c 24 70 89 7c 24 64 89 7c 24 68 89
007716b0: 5c 24 6c e8 08 26 d8 ff 8d 4c 24 64 83 c4 10 3b
007716c0: c1 74 0c 8b 50 04 8b 00 52 50 e8 41 42 c9 ff 8b
007716d0: 4c 24 4c 8b 44 24 44 2b c8 83 f9 01 7e 0d 85 c0
007716e0: 74 09 50 e8 f8 2d d7 ff 83 c4 04 8b 16 8b 84 24
007716f0: 80 00 00 00 8b 52 58 50 8b ce ff d2 6a 00 6a ff
00771700: 50 8d 44 24 40 8b df 50 89 6c 24 60 89 5c 24 54
00771710: 89 7c 24 58 c7 44 24 5c 55 8e 1c 01 e8 9f 25 d8
00771720: ff 8d 4c 24 54 83 c4 10 3b c1 74 10 8b 50 04 8b
00771730: 00 52 50 e8 d8 41 c9 ff 8b 5c 24 44 8b 4c 24 3c
00771740: 8b 44 24 34 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00771750: e8 8b 2d d7 ff 83 c4 04 8b 16 8b 84 24 90 00 00
00771760: 00 8b 52 58 50 8b ce ff d2 6a 00 6a ff 50 8d 44
00771770: 24 70 be 55 8e 1c 01 50 89 6c 24 50 89 7c 24 44
00771780: 89 7c 24 48 89 74 24 4c e8 33 25 d8 ff 8d 4c 24
00771790: 44 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50 e8
007717a0: 6c 41 c9 ff 8b 74 24 3c 8b 7c 24 34 8b 4c 24 6c
007717b0: 8b 44 24 64 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
007717c0: e8 1b 2d d7 ff 83 c4 04 8b 94 24 a0 00 00 00 8b
007717d0: 84 24 9c 00 00 00 8b 8c 24 98 00 00 00 8b 6c 24
007717e0: 54 52 8b 94 24 98 00 00 00 50 8b 44 24 1c 51 8b
007717f0: 4c 24 30 52 8b 94 24 8c 00 00 00 57 55 50 8b 84
00771800: 24 94 00 00 00 51 53 52 50 e8 f2 21 2b 00 2b f7
00771810: 83 c4 2c 83 fe 01 89 44 24 10 7e 0d 85 ff 74 09
00771820: 57 e8 ba 2c d7 ff 83 c4 04 8b 44 24 4c 2b c3 83
00771830: f8 01 7e 0d 85 db 74 09 53 e8 a2 2c d7 ff 83 c4
00771840: 04 8b 44 24 5c 2b c5 83 f8 01 7e 0d 85 ed 74 09
00771850: 55 e8 8a 2c d7 ff 83 c4 04 8b 44 24 1c 8b 4c 24
00771860: 14 5f 2b c1 83 f8 01 5d 5b 7e 0d 85 c9 74 09 51
00771870: e8 6b 2c d7 ff 83 c4 04 8b 44 24 20 8b 4c 24 18
00771880: 2b c1 83 f8 01 7e 0d 85 c9 74 09 51 e8 4f 2c d7
00771890: ff 83 c4 04 8b 44 24 04 5e 83 c4 64 c3 33 c0 5e
007718a0: 83 c4 64 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007715a0 <.text+0x3705a0>:
  7715a0:	83 ec 64                                        	sub    esp,0x64
  7715a3:	56                                              	push   esi
  7715a4:	e8 e7 7d ff ff                                  	call   0x769390
  7715a9:	8b f0                                           	mov    esi,eax
  7715ab:	85 f6                                           	test   esi,esi
  7715ad:	0f 84 ea 02 00 00                               	je     0x77189d
  7715b3:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  7715b7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7715b9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7715bc:	53                                              	push   ebx
  7715bd:	55                                              	push   ebp
  7715be:	57                                              	push   edi
  7715bf:	51                                              	push   ecx
  7715c0:	8b ce                                           	mov    ecx,esi
  7715c2:	ff d2                                           	call   edx
  7715c4:	6a 00                                           	push   0x0
  7715c6:	6a ff                                           	push   0xffffffff
  7715c8:	50                                              	push   eax
  7715c9:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  7715cd:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7715d2:	bd bc 9c 00 01                                  	mov    ebp,0x1009cbc
  7715d7:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  7715dc:	50                                              	push   eax
  7715dd:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
  7715e1:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  7715e5:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  7715e9:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
  7715ed:	e8 ce 26 d8 ff                                  	call   0x4f3cc0
  7715f2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7715f6:	83 c4 10                                        	add    esp,0x10
  7715f9:	3b c1                                           	cmp    eax,ecx
  7715fb:	74 0c                                           	je     0x771609
  7715fd:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771600:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771602:	52                                              	push   edx
  771603:	50                                              	push   eax
  771604:	e8 07 43 c9 ff                                  	call   0x405910
  771609:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  77160d:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  771611:	2b c8                                           	sub    ecx,eax
  771613:	83 f9 01                                        	cmp    ecx,0x1
  771616:	7e 0d                                           	jle    0x771625
  771618:	85 c0                                           	test   eax,eax
  77161a:	74 09                                           	je     0x771625
  77161c:	50                                              	push   eax
  77161d:	e8 be 2e d7 ff                                  	call   0x4e44e0
  771622:	83 c4 04                                        	add    esp,0x4
  771625:	8b 16                                           	mov    edx,DWORD PTR [esi]
  771627:	8b 84 24 88 00 00 00                            	mov    eax,DWORD PTR [esp+0x88]
  77162e:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771631:	50                                              	push   eax
  771632:	8b ce                                           	mov    ecx,esi
  771634:	ff d2                                           	call   edx
  771636:	6a 00                                           	push   0x0
  771638:	6a ff                                           	push   0xffffffff
  77163a:	50                                              	push   eax
  77163b:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  77163f:	50                                              	push   eax
  771640:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  771644:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  771648:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  77164c:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  771650:	e8 6b 26 d8 ff                                  	call   0x4f3cc0
  771655:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  771659:	83 c4 10                                        	add    esp,0x10
  77165c:	3b c1                                           	cmp    eax,ecx
  77165e:	74 0c                                           	je     0x77166c
  771660:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771663:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771665:	52                                              	push   edx
  771666:	50                                              	push   eax
  771667:	e8 a4 42 c9 ff                                  	call   0x405910
  77166c:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  771670:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  771674:	2b c8                                           	sub    ecx,eax
  771676:	83 f9 01                                        	cmp    ecx,0x1
  771679:	7e 0d                                           	jle    0x771688
  77167b:	85 c0                                           	test   eax,eax
  77167d:	74 09                                           	je     0x771688
  77167f:	50                                              	push   eax
  771680:	e8 5b 2e d7 ff                                  	call   0x4e44e0
  771685:	83 c4 04                                        	add    esp,0x4
  771688:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77168a:	8b 84 24 8c 00 00 00                            	mov    eax,DWORD PTR [esp+0x8c]
  771691:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771694:	50                                              	push   eax
  771695:	8b ce                                           	mov    ecx,esi
  771697:	ff d2                                           	call   edx
  771699:	6a 00                                           	push   0x0
  77169b:	6a ff                                           	push   0xffffffff
  77169d:	50                                              	push   eax
  77169e:	8d 44 24 50                                     	lea    eax,[esp+0x50]
  7716a2:	50                                              	push   eax
  7716a3:	89 6c 24 70                                     	mov    DWORD PTR [esp+0x70],ebp
  7716a7:	89 7c 24 64                                     	mov    DWORD PTR [esp+0x64],edi
  7716ab:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  7716af:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
  7716b3:	e8 08 26 d8 ff                                  	call   0x4f3cc0
  7716b8:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  7716bc:	83 c4 10                                        	add    esp,0x10
  7716bf:	3b c1                                           	cmp    eax,ecx
  7716c1:	74 0c                                           	je     0x7716cf
  7716c3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7716c6:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7716c8:	52                                              	push   edx
  7716c9:	50                                              	push   eax
  7716ca:	e8 41 42 c9 ff                                  	call   0x405910
  7716cf:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7716d3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7716d7:	2b c8                                           	sub    ecx,eax
  7716d9:	83 f9 01                                        	cmp    ecx,0x1
  7716dc:	7e 0d                                           	jle    0x7716eb
  7716de:	85 c0                                           	test   eax,eax
  7716e0:	74 09                                           	je     0x7716eb
  7716e2:	50                                              	push   eax
  7716e3:	e8 f8 2d d7 ff                                  	call   0x4e44e0
  7716e8:	83 c4 04                                        	add    esp,0x4
  7716eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7716ed:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
  7716f4:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7716f7:	50                                              	push   eax
  7716f8:	8b ce                                           	mov    ecx,esi
  7716fa:	ff d2                                           	call   edx
  7716fc:	6a 00                                           	push   0x0
  7716fe:	6a ff                                           	push   0xffffffff
  771700:	50                                              	push   eax
  771701:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  771705:	8b df                                           	mov    ebx,edi
  771707:	50                                              	push   eax
  771708:	89 6c 24 60                                     	mov    DWORD PTR [esp+0x60],ebp
  77170c:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
  771710:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
  771714:	c7 44 24 5c 55 8e 1c 01                         	mov    DWORD PTR [esp+0x5c],0x11c8e55
  77171c:	e8 9f 25 d8 ff                                  	call   0x4f3cc0
  771721:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  771725:	83 c4 10                                        	add    esp,0x10
  771728:	3b c1                                           	cmp    eax,ecx
  77172a:	74 10                                           	je     0x77173c
  77172c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77172f:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771731:	52                                              	push   edx
  771732:	50                                              	push   eax
  771733:	e8 d8 41 c9 ff                                  	call   0x405910
  771738:	8b 5c 24 44                                     	mov    ebx,DWORD PTR [esp+0x44]
  77173c:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  771740:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  771744:	2b c8                                           	sub    ecx,eax
  771746:	83 f9 01                                        	cmp    ecx,0x1
  771749:	7e 0d                                           	jle    0x771758
  77174b:	85 c0                                           	test   eax,eax
  77174d:	74 09                                           	je     0x771758
  77174f:	50                                              	push   eax
  771750:	e8 8b 2d d7 ff                                  	call   0x4e44e0
  771755:	83 c4 04                                        	add    esp,0x4
  771758:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77175a:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [esp+0x90]
  771761:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771764:	50                                              	push   eax
  771765:	8b ce                                           	mov    ecx,esi
  771767:	ff d2                                           	call   edx
  771769:	6a 00                                           	push   0x0
  77176b:	6a ff                                           	push   0xffffffff
  77176d:	50                                              	push   eax
  77176e:	8d 44 24 70                                     	lea    eax,[esp+0x70]
  771772:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771777:	50                                              	push   eax
  771778:	89 6c 24 50                                     	mov    DWORD PTR [esp+0x50],ebp
  77177c:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  771780:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  771784:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
  771788:	e8 33 25 d8 ff                                  	call   0x4f3cc0
  77178d:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  771791:	83 c4 10                                        	add    esp,0x10
  771794:	3b c1                                           	cmp    eax,ecx
  771796:	74 14                                           	je     0x7717ac
  771798:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77179b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77179d:	52                                              	push   edx
  77179e:	50                                              	push   eax
  77179f:	e8 6c 41 c9 ff                                  	call   0x405910
  7717a4:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  7717a8:	8b 7c 24 34                                     	mov    edi,DWORD PTR [esp+0x34]
  7717ac:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  7717b0:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  7717b4:	2b c8                                           	sub    ecx,eax
  7717b6:	83 f9 01                                        	cmp    ecx,0x1
  7717b9:	7e 0d                                           	jle    0x7717c8
  7717bb:	85 c0                                           	test   eax,eax
  7717bd:	74 09                                           	je     0x7717c8
  7717bf:	50                                              	push   eax
  7717c0:	e8 1b 2d d7 ff                                  	call   0x4e44e0
  7717c5:	83 c4 04                                        	add    esp,0x4
  7717c8:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  7717cf:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
  7717d6:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
  7717dd:	8b 6c 24 54                                     	mov    ebp,DWORD PTR [esp+0x54]
  7717e1:	52                                              	push   edx
  7717e2:	8b 94 24 98 00 00 00                            	mov    edx,DWORD PTR [esp+0x98]
  7717e9:	50                                              	push   eax
  7717ea:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7717ee:	51                                              	push   ecx
  7717ef:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7717f3:	52                                              	push   edx
  7717f4:	8b 94 24 8c 00 00 00                            	mov    edx,DWORD PTR [esp+0x8c]
  7717fb:	57                                              	push   edi
  7717fc:	55                                              	push   ebp
  7717fd:	50                                              	push   eax
  7717fe:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  771805:	51                                              	push   ecx
  771806:	53                                              	push   ebx
  771807:	52                                              	push   edx
  771808:	50                                              	push   eax
  771809:	e8 f2 21 2b 00                                  	call   0xa23a00
  77180e:	2b f7                                           	sub    esi,edi
  771810:	83 c4 2c                                        	add    esp,0x2c
  771813:	83 fe 01                                        	cmp    esi,0x1
  771816:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  77181a:	7e 0d                                           	jle    0x771829
  77181c:	85 ff                                           	test   edi,edi
  77181e:	74 09                                           	je     0x771829
  771820:	57                                              	push   edi
  771821:	e8 ba 2c d7 ff                                  	call   0x4e44e0
  771826:	83 c4 04                                        	add    esp,0x4
  771829:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  77182d:	2b c3                                           	sub    eax,ebx
  77182f:	83 f8 01                                        	cmp    eax,0x1
  771832:	7e 0d                                           	jle    0x771841
  771834:	85 db                                           	test   ebx,ebx
  771836:	74 09                                           	je     0x771841
  771838:	53                                              	push   ebx
  771839:	e8 a2 2c d7 ff                                  	call   0x4e44e0
  77183e:	83 c4 04                                        	add    esp,0x4
  771841:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  771845:	2b c5                                           	sub    eax,ebp
  771847:	83 f8 01                                        	cmp    eax,0x1
  77184a:	7e 0d                                           	jle    0x771859
  77184c:	85 ed                                           	test   ebp,ebp
  77184e:	74 09                                           	je     0x771859
  771850:	55                                              	push   ebp
  771851:	e8 8a 2c d7 ff                                  	call   0x4e44e0
  771856:	83 c4 04                                        	add    esp,0x4
  771859:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  77185d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  771861:	5f                                              	pop    edi
  771862:	2b c1                                           	sub    eax,ecx
  771864:	83 f8 01                                        	cmp    eax,0x1
  771867:	5d                                              	pop    ebp
  771868:	5b                                              	pop    ebx
  771869:	7e 0d                                           	jle    0x771878
  77186b:	85 c9                                           	test   ecx,ecx
  77186d:	74 09                                           	je     0x771878
  77186f:	51                                              	push   ecx
  771870:	e8 6b 2c d7 ff                                  	call   0x4e44e0
  771875:	83 c4 04                                        	add    esp,0x4
  771878:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  77187c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  771880:	2b c1                                           	sub    eax,ecx
  771882:	83 f8 01                                        	cmp    eax,0x1
  771885:	7e 0d                                           	jle    0x771894
  771887:	85 c9                                           	test   ecx,ecx
  771889:	74 09                                           	je     0x771894
  77188b:	51                                              	push   ecx
  77188c:	e8 4f 2c d7 ff                                  	call   0x4e44e0
  771891:	83 c4 04                                        	add    esp,0x4
  771894:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  771898:	5e                                              	pop    esi
  771899:	83 c4 64                                        	add    esp,0x64
  77189c:	c3                                              	ret
  77189d:	33 c0                                           	xor    eax,eax
  77189f:	5e                                              	pop    esi
  7718a0:	83 c4 64                                        	add    esp,0x64
  7718a3:	c3                                              	ret
  7718a4:	cc                                              	int3
  7718a5:	cc                                              	int3
  7718a6:	cc                                              	int3
  7718a7:	cc                                              	int3
  7718a8:	cc                                              	int3
  7718a9:	cc                                              	int3
  7718aa:	cc                                              	int3
  7718ab:	cc                                              	int3
  7718ac:	cc                                              	int3
  7718ad:	cc                                              	int3
  7718ae:	cc                                              	int3
  7718af:	cc                                              	int3
