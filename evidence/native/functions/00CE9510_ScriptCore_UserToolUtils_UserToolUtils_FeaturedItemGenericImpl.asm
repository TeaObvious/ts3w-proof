# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce9510 (ScriptCore.UserToolUtils::UserToolUtils_FeaturedItemGenericImpl)
Paired Ghidra pseudocode: 00CE9510_ScriptCore_UserToolUtils_UserToolUtils_FeaturedItemGenericImpl.c
Window: [0x00ce9510, 0x00ce9890) (896 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce9890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce9510: 83 ec 44 53 56 57 e8 75 fe a7 ff 33 db 68 b0 4e
00ce9520: 04 01 8d 4c 24 14 8b f0 89 5c 24 14 89 5c 24 18
00ce9530: 89 5c 24 1c c7 44 24 20 b8 16 08 01 e8 4f 20 72
00ce9540: ff 8b 44 24 58 8b 54 24 54 8b 0d 34 e0 1e 01 50
00ce9550: 52 e8 aa 5a fa ff 8b c8 3b cb 0f 84 50 02 00 00
00ce9560: 8b 44 24 5c 83 f8 15 0f 87 43 02 00 00 ff 24 85
00ce9570: 30 98 ce 00 8b 41 0c 8b 49 08 50 51 8d 4c 24 18
00ce9580: e8 db f7 71 ff e9 26 02 00 00 8b 51 1c 8b 41 18
00ce9590: 52 50 8d 4c 24 18 e8 c5 f7 71 ff e9 10 02 00 00
00ce95a0: 8b 49 48 8b 54 24 64 89 0a e9 02 02 00 00 8b 41
00ce95b0: 2c 8b 49 28 50 51 8d 4c 24 18 e8 a1 f7 71 ff e9
00ce95c0: ec 01 00 00 e8 97 c9 ff ff 8b 54 24 64 89 02 e9
00ce95d0: dc 01 00 00 8b 44 24 60 50 8d 54 24 24 52 e8 0d
00ce95e0: 21 fb ff 8b 44 24 68 8b 4c 24 20 8b 54 24 24 89
00ce95f0: 08 8b 4c 24 2c 89 50 04 8b 44 24 6c 8b 54 24 70
00ce9600: 89 08 8b 44 24 28 89 02 e9 a3 01 00 00 8b 54 24
00ce9610: 70 8b 44 24 64 52 50 e8 a4 1f fb ff e9 8f 01 00
00ce9620: 00 8b 54 24 70 8b 44 24 64 52 8b 54 24 64 50 52
00ce9630: e8 6b 21 fb ff e9 76 01 00 00 8b 81 d0 00 00 00
00ce9640: 2b 81 cc 00 00 00 8b 4c 24 64 c1 f8 03 89 01 e9
00ce9650: 5c 01 00 00 8b 51 4c e9 4e 01 00 00 33 d2 38 99
00ce9660: 8c 00 00 00 0f 95 c2 e9 3e 01 00 00 e8 7f 65 ce
00ce9670: ff 8b 4c 24 64 f6 d8 1b c0 f7 d8 89 01 e9 2e 01
00ce9680: 00 00 e8 69 1c fa ff 8b 54 24 64 f6 d8 1b c0 f7
00ce9690: d8 89 02 e9 18 01 00 00 e8 33 21 fb ff 8b 4c 24
00ce96a0: 64 89 01 e9 08 01 00 00 8b 54 24 60 52 e8 2e 21
00ce96b0: fb ff 3b c3 74 14 8b 50 68 8b 4c 24 78 89 11 8b
00ce96c0: 40 6c 89 41 04 e9 e6 00 00 00 8b 44 24 78 89 18
00ce96d0: 89 58 04 e9 d8 00 00 00 83 c1 58 51 8d 4c 24 24
00ce96e0: 51 e8 aa a5 80 ff 8b 54 24 2c 8b 44 24 28 83 c4
00ce96f0: 08 52 50 8d 4c 24 18 e8 64 f6 71 ff 8d 4c 24 20
00ce9700: e8 eb 61 80 ff e9 a6 00 00 00 8b 51 3c 8b 41 38
00ce9710: 52 50 8d 4c 24 18 e8 45 f6 71 ff e9 90 00 00 00
00ce9720: 8b 91 ec 00 00 00 8b 81 e8 00 00 00 52 50 8d 4c
00ce9730: 24 18 e8 29 f6 71 ff eb 77 8b 91 94 00 00 00 8b
00ce9740: 81 90 00 00 00 52 50 8d 4c 24 18 e8 10 f6 71 ff
00ce9750: eb 5e 8b 91 f8 00 00 00 8b 44 24 64 89 10 8b 91
00ce9760: fc 00 00 00 8b 44 24 70 89 10 8b 91 08 01 00 00
00ce9770: 8b 44 24 6c 89 10 8b 81 00 01 00 00 8b b9 04 01
00ce9780: 00 00 33 d2 33 c9 0b d0 8b 44 24 68 0b f9 89 78
00ce9790: 04 eb 1b 33 d2 83 b9 0c 01 00 00 05 eb 09 33 d2
00ce97a0: 83 b9 0c 01 00 00 06 0f 94 c2 8b 44 24 64 89 10
00ce97b0: 6a 01 6a 10 8d 4c 24 18 51 6a 09 bf f4 a6 fb 00
00ce97c0: 6a 13 8d 4c 24 44 89 7c 24 44 66 89 5c 24 4c 66
00ce97d0: 89 5c 24 4e e8 e7 c1 80 ff 8b 16 8b 52 50 8d 44
00ce97e0: 24 0c 50 8d 4c 24 34 51 8b ce ff d2 f6 44 24 38
00ce97f0: 04 8b 74 24 0c 89 7c 24 30 74 0a 53 8d 4c 24 34
00ce9800: e8 5b bf 80 ff 8b 4c 24 18 8b 44 24 10 2b c8 83
00ce9810: e1 fe 83 f9 02 7e 0d 3b c3 74 09 50 e8 bf ac 7f
00ce9820: ff 83 c4 04 5f 8b c6 5e 5b 83 c4 44 c3 8d 49 00
00ce9830: 74 95 ce 00 8a 95 ce 00 a0 95 ce 00 54 96 ce 00
00ce9840: c4 95 ce 00 d4 95 ce 00 ae 95 ce 00 0d 96 ce 00
00ce9850: 21 96 ce 00 3a 96 ce 00 5c 96 ce 00 6c 96 ce 00
00ce9860: 82 96 ce 00 98 96 ce 00 a8 96 ce 00 d8 96 ce 00
00ce9870: 20 97 ce 00 52 97 ce 00 93 97 ce 00 39 97 ce 00
00ce9880: 9e 97 ce 00 0a 97 ce 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce9510 <.text+0x8e8510>:
  ce9510:	83 ec 44                                        	sub    esp,0x44
  ce9513:	53                                              	push   ebx
  ce9514:	56                                              	push   esi
  ce9515:	57                                              	push   edi
  ce9516:	e8 75 fe a7 ff                                  	call   0x769390
  ce951b:	33 db                                           	xor    ebx,ebx
  ce951d:	68 b0 4e 04 01                                  	push   0x1044eb0
  ce9522:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce9526:	8b f0                                           	mov    esi,eax
  ce9528:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  ce952c:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ce9530:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce9534:	c7 44 24 20 b8 16 08 01                         	mov    DWORD PTR [esp+0x20],0x10816b8
  ce953c:	e8 4f 20 72 ff                                  	call   0x40b590
  ce9541:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  ce9545:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  ce9549:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce954f:	50                                              	push   eax
  ce9550:	52                                              	push   edx
  ce9551:	e8 aa 5a fa ff                                  	call   0xc8f000
  ce9556:	8b c8                                           	mov    ecx,eax
  ce9558:	3b cb                                           	cmp    ecx,ebx
  ce955a:	0f 84 50 02 00 00                               	je     0xce97b0
  ce9560:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  ce9564:	83 f8 15                                        	cmp    eax,0x15
  ce9567:	0f 87 43 02 00 00                               	ja     0xce97b0
  ce956d:	ff 24 85 30 98 ce 00                            	jmp    DWORD PTR [eax*4+0xce9830]
  ce9574:	8b 41 0c                                        	mov    eax,DWORD PTR [ecx+0xc]
  ce9577:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  ce957a:	50                                              	push   eax
  ce957b:	51                                              	push   ecx
  ce957c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce9580:	e8 db f7 71 ff                                  	call   0x408d60
  ce9585:	e9 26 02 00 00                                  	jmp    0xce97b0
  ce958a:	8b 51 1c                                        	mov    edx,DWORD PTR [ecx+0x1c]
  ce958d:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
  ce9590:	52                                              	push   edx
  ce9591:	50                                              	push   eax
  ce9592:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce9596:	e8 c5 f7 71 ff                                  	call   0x408d60
  ce959b:	e9 10 02 00 00                                  	jmp    0xce97b0
  ce95a0:	8b 49 48                                        	mov    ecx,DWORD PTR [ecx+0x48]
  ce95a3:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  ce95a7:	89 0a                                           	mov    DWORD PTR [edx],ecx
  ce95a9:	e9 02 02 00 00                                  	jmp    0xce97b0
  ce95ae:	8b 41 2c                                        	mov    eax,DWORD PTR [ecx+0x2c]
  ce95b1:	8b 49 28                                        	mov    ecx,DWORD PTR [ecx+0x28]
  ce95b4:	50                                              	push   eax
  ce95b5:	51                                              	push   ecx
  ce95b6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce95ba:	e8 a1 f7 71 ff                                  	call   0x408d60
  ce95bf:	e9 ec 01 00 00                                  	jmp    0xce97b0
  ce95c4:	e8 97 c9 ff ff                                  	call   0xce5f60
  ce95c9:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  ce95cd:	89 02                                           	mov    DWORD PTR [edx],eax
  ce95cf:	e9 dc 01 00 00                                  	jmp    0xce97b0
  ce95d4:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  ce95d8:	50                                              	push   eax
  ce95d9:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  ce95dd:	52                                              	push   edx
  ce95de:	e8 0d 21 fb ff                                  	call   0xc9b6f0
  ce95e3:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  ce95e7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  ce95eb:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  ce95ef:	89 08                                           	mov    DWORD PTR [eax],ecx
  ce95f1:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  ce95f5:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  ce95f8:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  ce95fc:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  ce9600:	89 08                                           	mov    DWORD PTR [eax],ecx
  ce9602:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  ce9606:	89 02                                           	mov    DWORD PTR [edx],eax
  ce9608:	e9 a3 01 00 00                                  	jmp    0xce97b0
  ce960d:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  ce9611:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  ce9615:	52                                              	push   edx
  ce9616:	50                                              	push   eax
  ce9617:	e8 a4 1f fb ff                                  	call   0xc9b5c0
  ce961c:	e9 8f 01 00 00                                  	jmp    0xce97b0
  ce9621:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  ce9625:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  ce9629:	52                                              	push   edx
  ce962a:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  ce962e:	50                                              	push   eax
  ce962f:	52                                              	push   edx
  ce9630:	e8 6b 21 fb ff                                  	call   0xc9b7a0
  ce9635:	e9 76 01 00 00                                  	jmp    0xce97b0
  ce963a:	8b 81 d0 00 00 00                               	mov    eax,DWORD PTR [ecx+0xd0]
  ce9640:	2b 81 cc 00 00 00                               	sub    eax,DWORD PTR [ecx+0xcc]
  ce9646:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  ce964a:	c1 f8 03                                        	sar    eax,0x3
  ce964d:	89 01                                           	mov    DWORD PTR [ecx],eax
  ce964f:	e9 5c 01 00 00                                  	jmp    0xce97b0
  ce9654:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
  ce9657:	e9 4e 01 00 00                                  	jmp    0xce97aa
  ce965c:	33 d2                                           	xor    edx,edx
  ce965e:	38 99 8c 00 00 00                               	cmp    BYTE PTR [ecx+0x8c],bl
  ce9664:	0f 95 c2                                        	setne  dl
  ce9667:	e9 3e 01 00 00                                  	jmp    0xce97aa
  ce966c:	e8 7f 65 ce ff                                  	call   0x9cfbf0
  ce9671:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  ce9675:	f6 d8                                           	neg    al
  ce9677:	1b c0                                           	sbb    eax,eax
  ce9679:	f7 d8                                           	neg    eax
  ce967b:	89 01                                           	mov    DWORD PTR [ecx],eax
  ce967d:	e9 2e 01 00 00                                  	jmp    0xce97b0
  ce9682:	e8 69 1c fa ff                                  	call   0xc8b2f0
  ce9687:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  ce968b:	f6 d8                                           	neg    al
  ce968d:	1b c0                                           	sbb    eax,eax
  ce968f:	f7 d8                                           	neg    eax
  ce9691:	89 02                                           	mov    DWORD PTR [edx],eax
  ce9693:	e9 18 01 00 00                                  	jmp    0xce97b0
  ce9698:	e8 33 21 fb ff                                  	call   0xc9b7d0
  ce969d:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  ce96a1:	89 01                                           	mov    DWORD PTR [ecx],eax
  ce96a3:	e9 08 01 00 00                                  	jmp    0xce97b0
  ce96a8:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  ce96ac:	52                                              	push   edx
  ce96ad:	e8 2e 21 fb ff                                  	call   0xc9b7e0
  ce96b2:	3b c3                                           	cmp    eax,ebx
  ce96b4:	74 14                                           	je     0xce96ca
  ce96b6:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  ce96b9:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  ce96bd:	89 11                                           	mov    DWORD PTR [ecx],edx
  ce96bf:	8b 40 6c                                        	mov    eax,DWORD PTR [eax+0x6c]
  ce96c2:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  ce96c5:	e9 e6 00 00 00                                  	jmp    0xce97b0
  ce96ca:	8b 44 24 78                                     	mov    eax,DWORD PTR [esp+0x78]
  ce96ce:	89 18                                           	mov    DWORD PTR [eax],ebx
  ce96d0:	89 58 04                                        	mov    DWORD PTR [eax+0x4],ebx
  ce96d3:	e9 d8 00 00 00                                  	jmp    0xce97b0
  ce96d8:	83 c1 58                                        	add    ecx,0x58
  ce96db:	51                                              	push   ecx
  ce96dc:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce96e0:	51                                              	push   ecx
  ce96e1:	e8 aa a5 80 ff                                  	call   0x4f3c90
  ce96e6:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  ce96ea:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  ce96ee:	83 c4 08                                        	add    esp,0x8
  ce96f1:	52                                              	push   edx
  ce96f2:	50                                              	push   eax
  ce96f3:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce96f7:	e8 64 f6 71 ff                                  	call   0x408d60
  ce96fc:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ce9700:	e8 eb 61 80 ff                                  	call   0x4ef8f0
  ce9705:	e9 a6 00 00 00                                  	jmp    0xce97b0
  ce970a:	8b 51 3c                                        	mov    edx,DWORD PTR [ecx+0x3c]
  ce970d:	8b 41 38                                        	mov    eax,DWORD PTR [ecx+0x38]
  ce9710:	52                                              	push   edx
  ce9711:	50                                              	push   eax
  ce9712:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce9716:	e8 45 f6 71 ff                                  	call   0x408d60
  ce971b:	e9 90 00 00 00                                  	jmp    0xce97b0
  ce9720:	8b 91 ec 00 00 00                               	mov    edx,DWORD PTR [ecx+0xec]
  ce9726:	8b 81 e8 00 00 00                               	mov    eax,DWORD PTR [ecx+0xe8]
  ce972c:	52                                              	push   edx
  ce972d:	50                                              	push   eax
  ce972e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce9732:	e8 29 f6 71 ff                                  	call   0x408d60
  ce9737:	eb 77                                           	jmp    0xce97b0
  ce9739:	8b 91 94 00 00 00                               	mov    edx,DWORD PTR [ecx+0x94]
  ce973f:	8b 81 90 00 00 00                               	mov    eax,DWORD PTR [ecx+0x90]
  ce9745:	52                                              	push   edx
  ce9746:	50                                              	push   eax
  ce9747:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce974b:	e8 10 f6 71 ff                                  	call   0x408d60
  ce9750:	eb 5e                                           	jmp    0xce97b0
  ce9752:	8b 91 f8 00 00 00                               	mov    edx,DWORD PTR [ecx+0xf8]
  ce9758:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  ce975c:	89 10                                           	mov    DWORD PTR [eax],edx
  ce975e:	8b 91 fc 00 00 00                               	mov    edx,DWORD PTR [ecx+0xfc]
  ce9764:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  ce9768:	89 10                                           	mov    DWORD PTR [eax],edx
  ce976a:	8b 91 08 01 00 00                               	mov    edx,DWORD PTR [ecx+0x108]
  ce9770:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  ce9774:	89 10                                           	mov    DWORD PTR [eax],edx
  ce9776:	8b 81 00 01 00 00                               	mov    eax,DWORD PTR [ecx+0x100]
  ce977c:	8b b9 04 01 00 00                               	mov    edi,DWORD PTR [ecx+0x104]
  ce9782:	33 d2                                           	xor    edx,edx
  ce9784:	33 c9                                           	xor    ecx,ecx
  ce9786:	0b d0                                           	or     edx,eax
  ce9788:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  ce978c:	0b f9                                           	or     edi,ecx
  ce978e:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
  ce9791:	eb 1b                                           	jmp    0xce97ae
  ce9793:	33 d2                                           	xor    edx,edx
  ce9795:	83 b9 0c 01 00 00 05                            	cmp    DWORD PTR [ecx+0x10c],0x5
  ce979c:	eb 09                                           	jmp    0xce97a7
  ce979e:	33 d2                                           	xor    edx,edx
  ce97a0:	83 b9 0c 01 00 00 06                            	cmp    DWORD PTR [ecx+0x10c],0x6
  ce97a7:	0f 94 c2                                        	sete   dl
  ce97aa:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  ce97ae:	89 10                                           	mov    DWORD PTR [eax],edx
  ce97b0:	6a 01                                           	push   0x1
  ce97b2:	6a 10                                           	push   0x10
  ce97b4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce97b8:	51                                              	push   ecx
  ce97b9:	6a 09                                           	push   0x9
  ce97bb:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  ce97c0:	6a 13                                           	push   0x13
  ce97c2:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ce97c6:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  ce97ca:	66 89 5c 24 4c                                  	mov    WORD PTR [esp+0x4c],bx
  ce97cf:	66 89 5c 24 4e                                  	mov    WORD PTR [esp+0x4e],bx
  ce97d4:	e8 e7 c1 80 ff                                  	call   0x4f59c0
  ce97d9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ce97db:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce97de:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce97e2:	50                                              	push   eax
  ce97e3:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce97e7:	51                                              	push   ecx
  ce97e8:	8b ce                                           	mov    ecx,esi
  ce97ea:	ff d2                                           	call   edx
  ce97ec:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ce97f1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  ce97f5:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  ce97f9:	74 0a                                           	je     0xce9805
  ce97fb:	53                                              	push   ebx
  ce97fc:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce9800:	e8 5b bf 80 ff                                  	call   0x4f5760
  ce9805:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ce9809:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ce980d:	2b c8                                           	sub    ecx,eax
  ce980f:	83 e1 fe                                        	and    ecx,0xfffffffe
  ce9812:	83 f9 02                                        	cmp    ecx,0x2
  ce9815:	7e 0d                                           	jle    0xce9824
  ce9817:	3b c3                                           	cmp    eax,ebx
  ce9819:	74 09                                           	je     0xce9824
  ce981b:	50                                              	push   eax
  ce981c:	e8 bf ac 7f ff                                  	call   0x4e44e0
  ce9821:	83 c4 04                                        	add    esp,0x4
  ce9824:	5f                                              	pop    edi
  ce9825:	8b c6                                           	mov    eax,esi
  ce9827:	5e                                              	pop    esi
  ce9828:	5b                                              	pop    ebx
  ce9829:	83 c4 44                                        	add    esp,0x44
  ce982c:	c3                                              	ret
  ce982d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  ce9830:	74 95                                           	je     0xce97c7
  ce9832:	ce                                              	into
  ce9833:	00 8a 95 ce 00 a0                               	add    BYTE PTR [edx-0x5fff316b],cl
  ce9839:	95                                              	xchg   ebp,eax
  ce983a:	ce                                              	into
  ce983b:	00 54 96 ce                                     	add    BYTE PTR [esi+edx*4-0x32],dl
  ce983f:	00 c4                                           	add    ah,al
  ce9841:	95                                              	xchg   ebp,eax
  ce9842:	ce                                              	into
  ce9843:	00 d4                                           	add    ah,dl
  ce9845:	95                                              	xchg   ebp,eax
  ce9846:	ce                                              	into
  ce9847:	00 ae 95 ce 00 0d                               	add    BYTE PTR [esi+0xd00ce95],ch
  ce984d:	96                                              	xchg   esi,eax
  ce984e:	ce                                              	into
  ce984f:	00 21                                           	add    BYTE PTR [ecx],ah
  ce9851:	96                                              	xchg   esi,eax
  ce9852:	ce                                              	into
  ce9853:	00 3a                                           	add    BYTE PTR [edx],bh
  ce9855:	96                                              	xchg   esi,eax
  ce9856:	ce                                              	into
  ce9857:	00 5c 96 ce                                     	add    BYTE PTR [esi+edx*4-0x32],bl
  ce985b:	00 6c 96 ce                                     	add    BYTE PTR [esi+edx*4-0x32],ch
  ce985f:	00 82 96 ce 00 98                               	add    BYTE PTR [edx-0x67ff316a],al
  ce9865:	96                                              	xchg   esi,eax
  ce9866:	ce                                              	into
  ce9867:	00 a8 96 ce 00 d8                               	add    BYTE PTR [eax-0x27ff316a],ch
  ce986d:	96                                              	xchg   esi,eax
  ce986e:	ce                                              	into
  ce986f:	00 20                                           	add    BYTE PTR [eax],ah
  ce9871:	97                                              	xchg   edi,eax
  ce9872:	ce                                              	into
  ce9873:	00 52 97                                        	add    BYTE PTR [edx-0x69],dl
  ce9876:	ce                                              	into
  ce9877:	00 93 97 ce 00 39                               	add    BYTE PTR [ebx+0x3900ce97],dl
  ce987d:	97                                              	xchg   edi,eax
  ce987e:	ce                                              	into
  ce987f:	00 9e 97 ce 00 0a                               	add    BYTE PTR [esi+0xa00ce97],bl
  ce9885:	97                                              	xchg   edi,eax
  ce9886:	ce                                              	into
  ce9887:	00 cc                                           	add    ah,cl
  ce9889:	cc                                              	int3
  ce988a:	cc                                              	int3
  ce988b:	cc                                              	int3
  ce988c:	cc                                              	int3
  ce988d:	cc                                              	int3
  ce988e:	cc                                              	int3
  ce988f:	cc                                              	int3
