# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007833c0 (ScriptCore.UIManager::UIManager_GetSaveGameMetadataImpl)
Paired Ghidra pseudocode: 007833C0_ScriptCore_UIManager_UIManager_GetSaveGameMetadataImpl.c
Window: [0x007833c0, 0x00783a10) (1616 bytes; stop exclusive)
Next defined Ghidra entry: 0x00783a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007833c0: 55 8b ec 83 e4 f8 81 ec 54 04 00 00 8b 45 0c 8b
007833d0: 4d 10 53 56 33 f6 89 30 57 89 74 24 28 89 31 e8
007833e0: ac 5f fe ff 8b d8 3b de 0f 84 16 06 00 00 8b 13
007833f0: 8b 45 08 8b 52 58 50 8b cb ff d2 50 8d 4c 24 14
00783400: 89 74 24 14 89 74 24 18 89 74 24 1c c7 44 24 20
00783410: 54 fb 00 01 e8 77 81 c8 ff 8b 4c 24 14 8b 44 24
00783420: 10 2b c8 d1 f9 0f 84 be 05 00 00 89 74 24 0c e8
00783430: 3c 68 32 00 3b c6 0f 84 9a 05 00 00 8d 78 ec 3b
00783440: fe 89 7c 24 34 0f 84 8b 05 00 00 8d 54 24 2c 52
00783450: 8d 44 24 14 50 8b cf e8 04 80 32 00 84 c0 0f 84
00783460: 72 05 00 00 8b 4c 24 0c 3b ce 74 0b 89 74 24 0c
00783470: 8b 11 8b 42 04 ff d0 8b 54 24 2c 8d 4c 24 0c 51
00783480: 52 8b cf e8 f8 a2 32 00 84 c0 0f 84 3d 05 00 00
00783490: 8b 3d 30 ec 1e 01 3b fe 0f 84 1c 02 00 00 8b 44
007834a0: 24 2c 8b 4c 24 34 50 e8 c4 a4 32 00 3b c6 0f 84
007834b0: 06 02 00 00 8d 4c 24 10 51 50 8b cf e8 0f 48 5d
007834c0: 00 8b 44 24 0c 8b 50 30 89 54 24 70 8b 40 34 8d
007834d0: 4c 24 10 51 8d 54 24 5c 89 44 24 78 52 8d 44 24
007834e0: 78 50 8b cf c7 84 24 84 00 00 00 5e 41 3a 0b 89
007834f0: b4 24 88 00 00 00 89 74 24 64 89 74 24 68 89 74
00783500: 24 6c 89 74 24 70 e8 e5 09 5d 00 56 8b 4c 24 5c
00783510: 56 8b 54 24 64 68 d7 7c c2 e1 56 56 56 56 6a 02
00783520: 56 56 56 83 ec 10 8b c4 89 08 8b 8c 24 9c 00 00
00783530: 00 89 50 04 8b 94 24 a0 00 00 00 89 48 08 8d 8c
00783540: 24 ac 01 00 00 89 50 0c e8 b3 5c ff ff 8d 84 24
00783550: 70 01 00 00 50 8b cf e8 74 b0 5c 00 84 c0 74 4d
00783560: 56 8d 4c 24 24 89 74 24 24 e8 32 ba fc ff 50 8d
00783570: 8c 24 78 01 00 00 51 8b cf e8 f2 93 5d 00 8b 44
00783580: 24 20 3b c6 74 27 8b 13 6a 30 50 8b 82 c8 00 00
00783590: 00 8b cb 89 74 24 28 ff d0 8b 4d 0c 89 01 8b 4c
007835a0: 24 20 3b ce 74 07 8b 11 8b 42 04 ff d0 8b 44 24
007835b0: 0c 8b 48 38 89 8c 24 80 00 00 00 8b 50 3c 8d 44
007835c0: 24 10 50 8d 4c 24 4c 89 94 24 88 00 00 00 51 8d
007835d0: 94 24 88 00 00 00 52 8b cf c7 84 24 94 00 00 00
007835e0: 4c ee 6f 43 89 b4 24 98 00 00 00 89 74 24 54 89
007835f0: 74 24 58 89 74 24 5c 89 74 24 60 e8 f0 08 5d 00
00783600: 56 8b 4c 24 4c 56 8b 54 24 54 68 d7 7c c2 e1 56
00783610: 56 56 56 6a 02 56 56 56 83 ec 10 8b c4 89 08 8b
00783620: 8c 24 8c 00 00 00 89 50 04 8b 94 24 90 00 00 00
00783630: 89 48 08 8d 8c 24 d4 02 00 00 89 50 0c e8 be 5b
00783640: ff ff 8d 84 24 98 02 00 00 50 8b cf e8 7f af 5c
00783650: 00 84 c0 74 4d 56 8d 4c 24 24 89 74 24 24 e8 3d
00783660: b9 fc ff 50 8d 8c 24 a0 02 00 00 51 8b cf e8 fd
00783670: 92 5d 00 8b 44 24 20 3b c6 74 27 8b 13 6a 30 50
00783680: 8b 82 c8 00 00 00 8b cb 89 74 24 28 ff d0 8b 4d
00783690: 10 89 01 8b 4c 24 20 3b ce 74 07 8b 11 8b 42 04
007836a0: ff d0 8d 8c 24 98 02 00 00 e8 62 2d e6 ff 8d 8c
007836b0: 24 70 01 00 00 e8 56 2d e6 ff 8d 4c 24 44 51 8d
007836c0: 54 24 44 52 8d 44 24 38 50 8d 4c 24 78 51 8b 4c
007836d0: 24 1c 8d 54 24 48 52 8d 44 24 50 50 e8 ef a5 e1
007836e0: ff 8b 54 24 38 8b 44 24 3c 6a ff 56 6a 50 8d 8c
007836f0: 24 dc 00 00 00 51 6a ff 52 50 e8 a1 78 cc ff 8b
00783700: 54 24 60 8b 44 24 5c 56 6a 50 8d 8c 24 e4 03 00
00783710: 00 51 8b 4c 24 58 52 50 51 e8 52 78 cc ff 8b 54
00783720: 24 78 8b 4c 24 74 33 c0 0f a4 d0 08 c1 e2 08 0b
00783730: d1 8b 4c 24 64 33 ff 0b c7 0f a4 d0 08 c1 e2 08
00783740: 0b d1 8b 4c 24 70 0b c7 0f a4 d0 08 c1 e2 08 0b
00783750: d1 8b 4c 24 6c 0b c7 0f a4 d0 08 c1 e2 08 0b d1
00783760: 0b c7 8b fa 8b 94 24 a0 00 00 00 0f a4 f8 08 33
00783770: c9 0b c1 c1 e7 08 0b fa 8b 54 24 40 89 44 24 58
00783780: 8b 42 40 83 c4 34 50 8d 4c 24 14 e8 c0 57 c8 ff
00783790: 68 b0 fb 00 01 8d 4c 24 14 e8 b2 01 d6 ff 8b 4c
007837a0: 24 0c 8b 51 60 52 8d 4c 24 14 e8 a1 01 d6 ff 68
007837b0: b0 fb 00 01 8d 4c 24 14 e8 93 01 d6 ff 8b 44 24
007837c0: 0c 8b 48 70 51 8d 4c 24 14 e8 82 01 d6 ff 68 b0
007837d0: fb 00 01 8d 4c 24 14 e8 74 01 d6 ff 8d 94 24 d0
007837e0: 00 00 00 52 8d 4c 24 14 e8 63 01 d6 ff 68 b0 fb
007837f0: 00 01 8d 4c 24 14 e8 55 01 d6 ff 8d 84 24 c0 03
00783800: 00 00 50 8d 4c 24 14 e8 44 01 d6 ff 8b 4c 24 24
00783810: 51 57 8d 94 24 d8 00 00 00 68 a4 fb 00 01 52 e8
00783820: dc f8 d6 ff 83 c4 10 68 b0 fb 00 01 8d 4c 24 14
00783830: e8 1b 01 d6 ff 8d 84 24 d0 00 00 00 50 8d 4c 24
00783840: 14 e8 0a 01 d6 ff 68 b0 fb 00 01 8d 4c 24 14 e8
00783850: fc 00 d6 ff 8b 4c 24 0c 8b 91 80 00 00 00 52 8d
00783860: 4c 24 14 e8 e8 00 d6 ff 68 b0 fb 00 01 8d 4c 24
00783870: 14 e8 da 00 d6 ff 8b 44 24 0c 8b 88 90 00 00 00
00783880: 51 8d 4c 24 14 e8 c6 00 d6 ff 68 b0 fb 00 01 8d
00783890: 4c 24 14 e8 b8 00 d6 ff 8b 54 24 0c 8b 82 a0 00
007838a0: 00 00 50 8d 4c 24 14 e8 a4 00 d6 ff 68 b0 fb 00
007838b0: 01 8d 4c 24 14 e8 96 00 d6 ff 8b 4c 24 0c 8b 91
007838c0: b0 00 00 00 52 8d 4c 24 14 e8 82 00 d6 ff 8b 44
007838d0: 24 0c 8b 88 b0 00 00 00 51 8d 8c 24 c4 00 00 00
007838e0: 33 ff e8 c9 b3 22 00 8d 94 24 c0 00 00 00 52 e8
007838f0: 8c 5c ff ff 83 c4 04 84 c0 75 05 bf 01 00 00 00
00783900: 57 8d 84 24 d4 00 00 00 68 6c 05 fc 00 50 e8 ed
00783910: f7 d6 ff 83 c4 0c 68 b0 fb 00 01 8d 4c 24 14 e8
00783920: 2c 00 d6 ff 8d 8c 24 d0 00 00 00 51 8d 4c 24 14
00783930: e8 1b 00 d6 ff 68 b0 fb 00 01 8d 4c 24 14 e8 0d
00783940: 00 d6 ff 8b 54 24 0c 8b 42 50 50 8d 4c 24 14 e8
00783950: fc ff d5 ff 8d 4c 24 10 51 8d 8c 24 84 00 00 00
00783960: e8 cb 2c d7 ff 50 8d 8c 24 a4 00 00 00 c7 84 24
00783970: a4 00 00 00 f4 a6 fb 00 66 89 b4 24 ac 00 00 00
00783980: 66 89 b4 24 ae 00 00 00 e8 23 2b d7 ff 8d 8c 24
00783990: 80 00 00 00 e8 87 1e d7 ff 8b 13 8b 52 50 8d 44
007839a0: 24 28 50 8d 8c 24 a4 00 00 00 51 8b cb ff d2 8b
007839b0: 7c 24 34 8b cf e8 56 66 32 00 8b cf e8 7f 66 32
007839c0: 00 8d 8c 24 a0 00 00 00 e8 53 1e d7 ff 8b 4c 24
007839d0: 2c e8 da 69 d8 ff 8b 4c 24 0c 3b ce 74 07 8b 01
007839e0: 8b 50 04 ff d2 8b 44 24 10 8b 4c 24 18 2b c8 83
007839f0: e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 df 0a d6
00783a00: ff 83 c4 04 8b 44 24 28 5f 5e 5b 8b e5 5d c3 cc

LINEAR DISASSEMBLY
007833c0 <.text+0x3823c0>:
  7833c0:	55                                              	push   ebp
  7833c1:	8b ec                                           	mov    ebp,esp
  7833c3:	83 e4 f8                                        	and    esp,0xfffffff8
  7833c6:	81 ec 54 04 00 00                               	sub    esp,0x454
  7833cc:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  7833cf:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  7833d2:	53                                              	push   ebx
  7833d3:	56                                              	push   esi
  7833d4:	33 f6                                           	xor    esi,esi
  7833d6:	89 30                                           	mov    DWORD PTR [eax],esi
  7833d8:	57                                              	push   edi
  7833d9:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  7833dd:	89 31                                           	mov    DWORD PTR [ecx],esi
  7833df:	e8 ac 5f fe ff                                  	call   0x769390
  7833e4:	8b d8                                           	mov    ebx,eax
  7833e6:	3b de                                           	cmp    ebx,esi
  7833e8:	0f 84 16 06 00 00                               	je     0x783a04
  7833ee:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  7833f0:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7833f3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7833f6:	50                                              	push   eax
  7833f7:	8b cb                                           	mov    ecx,ebx
  7833f9:	ff d2                                           	call   edx
  7833fb:	50                                              	push   eax
  7833fc:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783400:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  783404:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  783408:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  78340c:	c7 44 24 20 54 fb 00 01                         	mov    DWORD PTR [esp+0x20],0x100fb54
  783414:	e8 77 81 c8 ff                                  	call   0x40b590
  783419:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78341d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  783421:	2b c8                                           	sub    ecx,eax
  783423:	d1 f9                                           	sar    ecx,1
  783425:	0f 84 be 05 00 00                               	je     0x7839e9
  78342b:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  78342f:	e8 3c 68 32 00                                  	call   0xaa9c70
  783434:	3b c6                                           	cmp    eax,esi
  783436:	0f 84 9a 05 00 00                               	je     0x7839d6
  78343c:	8d 78 ec                                        	lea    edi,[eax-0x14]
  78343f:	3b fe                                           	cmp    edi,esi
  783441:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  783445:	0f 84 8b 05 00 00                               	je     0x7839d6
  78344b:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  78344f:	52                                              	push   edx
  783450:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  783454:	50                                              	push   eax
  783455:	8b cf                                           	mov    ecx,edi
  783457:	e8 04 80 32 00                                  	call   0xaab460
  78345c:	84 c0                                           	test   al,al
  78345e:	0f 84 72 05 00 00                               	je     0x7839d6
  783464:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  783468:	3b ce                                           	cmp    ecx,esi
  78346a:	74 0b                                           	je     0x783477
  78346c:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  783470:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  783472:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  783475:	ff d0                                           	call   eax
  783477:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  78347b:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78347f:	51                                              	push   ecx
  783480:	52                                              	push   edx
  783481:	8b cf                                           	mov    ecx,edi
  783483:	e8 f8 a2 32 00                                  	call   0xaad780
  783488:	84 c0                                           	test   al,al
  78348a:	0f 84 3d 05 00 00                               	je     0x7839cd
  783490:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  783496:	3b fe                                           	cmp    edi,esi
  783498:	0f 84 1c 02 00 00                               	je     0x7836ba
  78349e:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  7834a2:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  7834a6:	50                                              	push   eax
  7834a7:	e8 c4 a4 32 00                                  	call   0xaad970
  7834ac:	3b c6                                           	cmp    eax,esi
  7834ae:	0f 84 06 02 00 00                               	je     0x7836ba
  7834b4:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7834b8:	51                                              	push   ecx
  7834b9:	50                                              	push   eax
  7834ba:	8b cf                                           	mov    ecx,edi
  7834bc:	e8 0f 48 5d 00                                  	call   0xd57cd0
  7834c1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7834c5:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  7834c8:	89 54 24 70                                     	mov    DWORD PTR [esp+0x70],edx
  7834cc:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
  7834cf:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7834d3:	51                                              	push   ecx
  7834d4:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  7834d8:	89 44 24 78                                     	mov    DWORD PTR [esp+0x78],eax
  7834dc:	52                                              	push   edx
  7834dd:	8d 44 24 78                                     	lea    eax,[esp+0x78]
  7834e1:	50                                              	push   eax
  7834e2:	8b cf                                           	mov    ecx,edi
  7834e4:	c7 84 24 84 00 00 00 5e 41 3a 0b                	mov    DWORD PTR [esp+0x84],0xb3a415e
  7834ef:	89 b4 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],esi
  7834f6:	89 74 24 64                                     	mov    DWORD PTR [esp+0x64],esi
  7834fa:	89 74 24 68                                     	mov    DWORD PTR [esp+0x68],esi
  7834fe:	89 74 24 6c                                     	mov    DWORD PTR [esp+0x6c],esi
  783502:	89 74 24 70                                     	mov    DWORD PTR [esp+0x70],esi
  783506:	e8 e5 09 5d 00                                  	call   0xd53ef0
  78350b:	56                                              	push   esi
  78350c:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  783510:	56                                              	push   esi
  783511:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  783515:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
  78351a:	56                                              	push   esi
  78351b:	56                                              	push   esi
  78351c:	56                                              	push   esi
  78351d:	56                                              	push   esi
  78351e:	6a 02                                           	push   0x2
  783520:	56                                              	push   esi
  783521:	56                                              	push   esi
  783522:	56                                              	push   esi
  783523:	83 ec 10                                        	sub    esp,0x10
  783526:	8b c4                                           	mov    eax,esp
  783528:	89 08                                           	mov    DWORD PTR [eax],ecx
  78352a:	8b 8c 24 9c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x9c]
  783531:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  783534:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  78353b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78353e:	8d 8c 24 ac 01 00 00                            	lea    ecx,[esp+0x1ac]
  783545:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  783548:	e8 b3 5c ff ff                                  	call   0x779200
  78354d:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  783554:	50                                              	push   eax
  783555:	8b cf                                           	mov    ecx,edi
  783557:	e8 74 b0 5c 00                                  	call   0xd4e5d0
  78355c:	84 c0                                           	test   al,al
  78355e:	74 4d                                           	je     0x7835ad
  783560:	56                                              	push   esi
  783561:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  783565:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  783569:	e8 32 ba fc ff                                  	call   0x74efa0
  78356e:	50                                              	push   eax
  78356f:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
  783576:	51                                              	push   ecx
  783577:	8b cf                                           	mov    ecx,edi
  783579:	e8 f2 93 5d 00                                  	call   0xd5c970
  78357e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  783582:	3b c6                                           	cmp    eax,esi
  783584:	74 27                                           	je     0x7835ad
  783586:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  783588:	6a 30                                           	push   0x30
  78358a:	50                                              	push   eax
  78358b:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  783591:	8b cb                                           	mov    ecx,ebx
  783593:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  783597:	ff d0                                           	call   eax
  783599:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78359c:	89 01                                           	mov    DWORD PTR [ecx],eax
  78359e:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7835a2:	3b ce                                           	cmp    ecx,esi
  7835a4:	74 07                                           	je     0x7835ad
  7835a6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7835a8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7835ab:	ff d0                                           	call   eax
  7835ad:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7835b1:	8b 48 38                                        	mov    ecx,DWORD PTR [eax+0x38]
  7835b4:	89 8c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ecx
  7835bb:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  7835be:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  7835c2:	50                                              	push   eax
  7835c3:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  7835c7:	89 94 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],edx
  7835ce:	51                                              	push   ecx
  7835cf:	8d 94 24 88 00 00 00                            	lea    edx,[esp+0x88]
  7835d6:	52                                              	push   edx
  7835d7:	8b cf                                           	mov    ecx,edi
  7835d9:	c7 84 24 94 00 00 00 4c ee 6f 43                	mov    DWORD PTR [esp+0x94],0x436fee4c
  7835e4:	89 b4 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],esi
  7835eb:	89 74 24 54                                     	mov    DWORD PTR [esp+0x54],esi
  7835ef:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  7835f3:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
  7835f7:	89 74 24 60                                     	mov    DWORD PTR [esp+0x60],esi
  7835fb:	e8 f0 08 5d 00                                  	call   0xd53ef0
  783600:	56                                              	push   esi
  783601:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  783605:	56                                              	push   esi
  783606:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  78360a:	68 d7 7c c2 e1                                  	push   0xe1c27cd7
  78360f:	56                                              	push   esi
  783610:	56                                              	push   esi
  783611:	56                                              	push   esi
  783612:	56                                              	push   esi
  783613:	6a 02                                           	push   0x2
  783615:	56                                              	push   esi
  783616:	56                                              	push   esi
  783617:	56                                              	push   esi
  783618:	83 ec 10                                        	sub    esp,0x10
  78361b:	8b c4                                           	mov    eax,esp
  78361d:	89 08                                           	mov    DWORD PTR [eax],ecx
  78361f:	8b 8c 24 8c 00 00 00                            	mov    ecx,DWORD PTR [esp+0x8c]
  783626:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  783629:	8b 94 24 90 00 00 00                            	mov    edx,DWORD PTR [esp+0x90]
  783630:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  783633:	8d 8c 24 d4 02 00 00                            	lea    ecx,[esp+0x2d4]
  78363a:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  78363d:	e8 be 5b ff ff                                  	call   0x779200
  783642:	8d 84 24 98 02 00 00                            	lea    eax,[esp+0x298]
  783649:	50                                              	push   eax
  78364a:	8b cf                                           	mov    ecx,edi
  78364c:	e8 7f af 5c 00                                  	call   0xd4e5d0
  783651:	84 c0                                           	test   al,al
  783653:	74 4d                                           	je     0x7836a2
  783655:	56                                              	push   esi
  783656:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78365a:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  78365e:	e8 3d b9 fc ff                                  	call   0x74efa0
  783663:	50                                              	push   eax
  783664:	8d 8c 24 a0 02 00 00                            	lea    ecx,[esp+0x2a0]
  78366b:	51                                              	push   ecx
  78366c:	8b cf                                           	mov    ecx,edi
  78366e:	e8 fd 92 5d 00                                  	call   0xd5c970
  783673:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  783677:	3b c6                                           	cmp    eax,esi
  783679:	74 27                                           	je     0x7836a2
  78367b:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  78367d:	6a 30                                           	push   0x30
  78367f:	50                                              	push   eax
  783680:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  783686:	8b cb                                           	mov    ecx,ebx
  783688:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  78368c:	ff d0                                           	call   eax
  78368e:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  783691:	89 01                                           	mov    DWORD PTR [ecx],eax
  783693:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  783697:	3b ce                                           	cmp    ecx,esi
  783699:	74 07                                           	je     0x7836a2
  78369b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78369d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7836a0:	ff d0                                           	call   eax
  7836a2:	8d 8c 24 98 02 00 00                            	lea    ecx,[esp+0x298]
  7836a9:	e8 62 2d e6 ff                                  	call   0x5e6410
  7836ae:	8d 8c 24 70 01 00 00                            	lea    ecx,[esp+0x170]
  7836b5:	e8 56 2d e6 ff                                  	call   0x5e6410
  7836ba:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  7836be:	51                                              	push   ecx
  7836bf:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  7836c3:	52                                              	push   edx
  7836c4:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  7836c8:	50                                              	push   eax
  7836c9:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  7836cd:	51                                              	push   ecx
  7836ce:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7836d2:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  7836d6:	52                                              	push   edx
  7836d7:	8d 44 24 50                                     	lea    eax,[esp+0x50]
  7836db:	50                                              	push   eax
  7836dc:	e8 ef a5 e1 ff                                  	call   0x59dcd0
  7836e1:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7836e5:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  7836e9:	6a ff                                           	push   0xffffffff
  7836eb:	56                                              	push   esi
  7836ec:	6a 50                                           	push   0x50
  7836ee:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
  7836f5:	51                                              	push   ecx
  7836f6:	6a ff                                           	push   0xffffffff
  7836f8:	52                                              	push   edx
  7836f9:	50                                              	push   eax
  7836fa:	e8 a1 78 cc ff                                  	call   0x44afa0
  7836ff:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  783703:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  783707:	56                                              	push   esi
  783708:	6a 50                                           	push   0x50
  78370a:	8d 8c 24 e4 03 00 00                            	lea    ecx,[esp+0x3e4]
  783711:	51                                              	push   ecx
  783712:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  783716:	52                                              	push   edx
  783717:	50                                              	push   eax
  783718:	51                                              	push   ecx
  783719:	e8 52 78 cc ff                                  	call   0x44af70
  78371e:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
  783722:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  783726:	33 c0                                           	xor    eax,eax
  783728:	0f a4 d0 08                                     	shld   eax,edx,0x8
  78372c:	c1 e2 08                                        	shl    edx,0x8
  78372f:	0b d1                                           	or     edx,ecx
  783731:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  783735:	33 ff                                           	xor    edi,edi
  783737:	0b c7                                           	or     eax,edi
  783739:	0f a4 d0 08                                     	shld   eax,edx,0x8
  78373d:	c1 e2 08                                        	shl    edx,0x8
  783740:	0b d1                                           	or     edx,ecx
  783742:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  783746:	0b c7                                           	or     eax,edi
  783748:	0f a4 d0 08                                     	shld   eax,edx,0x8
  78374c:	c1 e2 08                                        	shl    edx,0x8
  78374f:	0b d1                                           	or     edx,ecx
  783751:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  783755:	0b c7                                           	or     eax,edi
  783757:	0f a4 d0 08                                     	shld   eax,edx,0x8
  78375b:	c1 e2 08                                        	shl    edx,0x8
  78375e:	0b d1                                           	or     edx,ecx
  783760:	0b c7                                           	or     eax,edi
  783762:	8b fa                                           	mov    edi,edx
  783764:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  78376b:	0f a4 f8 08                                     	shld   eax,edi,0x8
  78376f:	33 c9                                           	xor    ecx,ecx
  783771:	0b c1                                           	or     eax,ecx
  783773:	c1 e7 08                                        	shl    edi,0x8
  783776:	0b fa                                           	or     edi,edx
  783778:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  78377c:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  783780:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
  783783:	83 c4 34                                        	add    esp,0x34
  783786:	50                                              	push   eax
  783787:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78378b:	e8 c0 57 c8 ff                                  	call   0x408f50
  783790:	68 b0 fb 00 01                                  	push   0x100fbb0
  783795:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783799:	e8 b2 01 d6 ff                                  	call   0x4e3950
  78379e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7837a2:	8b 51 60                                        	mov    edx,DWORD PTR [ecx+0x60]
  7837a5:	52                                              	push   edx
  7837a6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837aa:	e8 a1 01 d6 ff                                  	call   0x4e3950
  7837af:	68 b0 fb 00 01                                  	push   0x100fbb0
  7837b4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837b8:	e8 93 01 d6 ff                                  	call   0x4e3950
  7837bd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7837c1:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
  7837c4:	51                                              	push   ecx
  7837c5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837c9:	e8 82 01 d6 ff                                  	call   0x4e3950
  7837ce:	68 b0 fb 00 01                                  	push   0x100fbb0
  7837d3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837d7:	e8 74 01 d6 ff                                  	call   0x4e3950
  7837dc:	8d 94 24 d0 00 00 00                            	lea    edx,[esp+0xd0]
  7837e3:	52                                              	push   edx
  7837e4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837e8:	e8 63 01 d6 ff                                  	call   0x4e3950
  7837ed:	68 b0 fb 00 01                                  	push   0x100fbb0
  7837f2:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7837f6:	e8 55 01 d6 ff                                  	call   0x4e3950
  7837fb:	8d 84 24 c0 03 00 00                            	lea    eax,[esp+0x3c0]
  783802:	50                                              	push   eax
  783803:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783807:	e8 44 01 d6 ff                                  	call   0x4e3950
  78380c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  783810:	51                                              	push   ecx
  783811:	57                                              	push   edi
  783812:	8d 94 24 d8 00 00 00                            	lea    edx,[esp+0xd8]
  783819:	68 a4 fb 00 01                                  	push   0x100fba4
  78381e:	52                                              	push   edx
  78381f:	e8 dc f8 d6 ff                                  	call   0x4f3100
  783824:	83 c4 10                                        	add    esp,0x10
  783827:	68 b0 fb 00 01                                  	push   0x100fbb0
  78382c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783830:	e8 1b 01 d6 ff                                  	call   0x4e3950
  783835:	8d 84 24 d0 00 00 00                            	lea    eax,[esp+0xd0]
  78383c:	50                                              	push   eax
  78383d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783841:	e8 0a 01 d6 ff                                  	call   0x4e3950
  783846:	68 b0 fb 00 01                                  	push   0x100fbb0
  78384b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78384f:	e8 fc 00 d6 ff                                  	call   0x4e3950
  783854:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  783858:	8b 91 80 00 00 00                               	mov    edx,DWORD PTR [ecx+0x80]
  78385e:	52                                              	push   edx
  78385f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783863:	e8 e8 00 d6 ff                                  	call   0x4e3950
  783868:	68 b0 fb 00 01                                  	push   0x100fbb0
  78386d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783871:	e8 da 00 d6 ff                                  	call   0x4e3950
  783876:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78387a:	8b 88 90 00 00 00                               	mov    ecx,DWORD PTR [eax+0x90]
  783880:	51                                              	push   ecx
  783881:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783885:	e8 c6 00 d6 ff                                  	call   0x4e3950
  78388a:	68 b0 fb 00 01                                  	push   0x100fbb0
  78388f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783893:	e8 b8 00 d6 ff                                  	call   0x4e3950
  783898:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78389c:	8b 82 a0 00 00 00                               	mov    eax,DWORD PTR [edx+0xa0]
  7838a2:	50                                              	push   eax
  7838a3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7838a7:	e8 a4 00 d6 ff                                  	call   0x4e3950
  7838ac:	68 b0 fb 00 01                                  	push   0x100fbb0
  7838b1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7838b5:	e8 96 00 d6 ff                                  	call   0x4e3950
  7838ba:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7838be:	8b 91 b0 00 00 00                               	mov    edx,DWORD PTR [ecx+0xb0]
  7838c4:	52                                              	push   edx
  7838c5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7838c9:	e8 82 00 d6 ff                                  	call   0x4e3950
  7838ce:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7838d2:	8b 88 b0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xb0]
  7838d8:	51                                              	push   ecx
  7838d9:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  7838e0:	33 ff                                           	xor    edi,edi
  7838e2:	e8 c9 b3 22 00                                  	call   0x9aecb0
  7838e7:	8d 94 24 c0 00 00 00                            	lea    edx,[esp+0xc0]
  7838ee:	52                                              	push   edx
  7838ef:	e8 8c 5c ff ff                                  	call   0x779580
  7838f4:	83 c4 04                                        	add    esp,0x4
  7838f7:	84 c0                                           	test   al,al
  7838f9:	75 05                                           	jne    0x783900
  7838fb:	bf 01 00 00 00                                  	mov    edi,0x1
  783900:	57                                              	push   edi
  783901:	8d 84 24 d4 00 00 00                            	lea    eax,[esp+0xd4]
  783908:	68 6c 05 fc 00                                  	push   0xfc056c
  78390d:	50                                              	push   eax
  78390e:	e8 ed f7 d6 ff                                  	call   0x4f3100
  783913:	83 c4 0c                                        	add    esp,0xc
  783916:	68 b0 fb 00 01                                  	push   0x100fbb0
  78391b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78391f:	e8 2c 00 d6 ff                                  	call   0x4e3950
  783924:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
  78392b:	51                                              	push   ecx
  78392c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  783930:	e8 1b 00 d6 ff                                  	call   0x4e3950
  783935:	68 b0 fb 00 01                                  	push   0x100fbb0
  78393a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78393e:	e8 0d 00 d6 ff                                  	call   0x4e3950
  783943:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  783947:	8b 42 50                                        	mov    eax,DWORD PTR [edx+0x50]
  78394a:	50                                              	push   eax
  78394b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78394f:	e8 fc ff d5 ff                                  	call   0x4e3950
  783954:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  783958:	51                                              	push   ecx
  783959:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  783960:	e8 cb 2c d7 ff                                  	call   0x4f6630
  783965:	50                                              	push   eax
  783966:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  78396d:	c7 84 24 a4 00 00 00 f4 a6 fb 00                	mov    DWORD PTR [esp+0xa4],0xfba6f4
  783978:	66 89 b4 24 ac 00 00 00                         	mov    WORD PTR [esp+0xac],si
  783980:	66 89 b4 24 ae 00 00 00                         	mov    WORD PTR [esp+0xae],si
  783988:	e8 23 2b d7 ff                                  	call   0x4f64b0
  78398d:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  783994:	e8 87 1e d7 ff                                  	call   0x4f5820
  783999:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  78399b:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  78399e:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  7839a2:	50                                              	push   eax
  7839a3:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  7839aa:	51                                              	push   ecx
  7839ab:	8b cb                                           	mov    ecx,ebx
  7839ad:	ff d2                                           	call   edx
  7839af:	8b 7c 24 34                                     	mov    edi,DWORD PTR [esp+0x34]
  7839b3:	8b cf                                           	mov    ecx,edi
  7839b5:	e8 56 66 32 00                                  	call   0xaaa010
  7839ba:	8b cf                                           	mov    ecx,edi
  7839bc:	e8 7f 66 32 00                                  	call   0xaaa040
  7839c1:	8d 8c 24 a0 00 00 00                            	lea    ecx,[esp+0xa0]
  7839c8:	e8 53 1e d7 ff                                  	call   0x4f5820
  7839cd:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  7839d1:	e8 da 69 d8 ff                                  	call   0x50a3b0
  7839d6:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7839da:	3b ce                                           	cmp    ecx,esi
  7839dc:	74 07                                           	je     0x7839e5
  7839de:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7839e0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7839e3:	ff d2                                           	call   edx
  7839e5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7839e9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7839ed:	2b c8                                           	sub    ecx,eax
  7839ef:	83 e1 fe                                        	and    ecx,0xfffffffe
  7839f2:	83 f9 02                                        	cmp    ecx,0x2
  7839f5:	7e 0d                                           	jle    0x783a04
  7839f7:	3b c6                                           	cmp    eax,esi
  7839f9:	74 09                                           	je     0x783a04
  7839fb:	50                                              	push   eax
  7839fc:	e8 df 0a d6 ff                                  	call   0x4e44e0
  783a01:	83 c4 04                                        	add    esp,0x4
  783a04:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  783a08:	5f                                              	pop    edi
  783a09:	5e                                              	pop    esi
  783a0a:	5b                                              	pop    ebx
  783a0b:	8b e5                                           	mov    esp,ebp
  783a0d:	5d                                              	pop    ebp
  783a0e:	c3                                              	ret
  783a0f:	cc                                              	int3
