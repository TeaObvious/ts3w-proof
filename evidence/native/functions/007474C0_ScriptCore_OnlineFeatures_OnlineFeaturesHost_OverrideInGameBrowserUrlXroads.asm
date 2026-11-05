# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007474c0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrlXroads)
Paired Ghidra pseudocode: 007474C0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_OverrideInGameBrowserUrlXroads.c
Window: [0x007474c0, 0x00747640) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00747640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007474c0: 83 ec 30 53 e8 c7 1e 02 00 33 db 3b c3 0f 84 59
007474d0: 01 00 00 8b 4c 24 38 3b cb 0f 84 4d 01 00 00 8b
007474e0: 10 51 8b c8 8b 42 58 ff d0 50 8d 4c 24 18 89 5c
007474f0: 24 18 89 5c 24 1c 89 5c 24 20 c7 44 24 24 b0 3c
00747500: 00 01 e8 89 40 cc ff 68 c4 a6 fb 00 8d 4c 24 08
00747510: 89 5c 24 08 89 5c 24 0c 89 5c 24 10 c7 44 24 14
00747520: 80 3c 00 01 e8 67 40 cc ff a1 68 50 1d 01 3b c3
00747530: 74 05 83 c0 f8 eb 02 33 c0 8b 80 a8 00 00 00 53
00747540: 6a ff 50 8d 4c 24 30 51 e8 03 c6 da ff 8d 54 24
00747550: 14 83 c4 10 3b c2 74 10 8b 48 04 8b 10 51 52 8d
00747560: 4c 24 0c e8 f8 17 cc ff 8b 4c 24 2c 8b 44 24 24
00747570: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50 e8
00747580: 5c cf d9 ff 83 c4 04 b8 7c 3c 00 01 8d 64 24 00
00747590: 83 c0 02 66 39 18 75 f8 56 2d 7c 3c 00 01 d1 f8
007475a0: 57 8d 14 45 7c 3c 00 01 52 68 7c 3c 00 01 8d 4c
007475b0: 24 14 e8 d9 15 cc ff 8b 44 24 20 8b 7c 24 1c 50
007475c0: 57 8d 4c 24 14 e8 c6 15 cc ff 68 10 b2 1e 01 ff
007475d0: 15 2c 61 f9 00 8b 4c 24 10 8b 74 24 0c 51 56 b9
007475e0: cc 28 18 01 e8 77 17 cc ff 68 10 b2 1e 01 ff 15
007475f0: 30 61 f9 00 8b 54 24 14 2b d6 83 e2 fe 83 fa 02
00747600: 7e 0d 3b f3 74 09 56 e8 d4 ce d9 ff 83 c4 04 8b
00747610: 44 24 24 2b c7 83 e0 fe 83 f8 02 7e 0d 3b fb 74
00747620: 09 57 e8 b9 ce d9 ff 83 c4 04 5f 5e 5b 83 c4 30
00747630: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007474c0 <.text+0x3464c0>:
  7474c0:	83 ec 30                                        	sub    esp,0x30
  7474c3:	53                                              	push   ebx
  7474c4:	e8 c7 1e 02 00                                  	call   0x769390
  7474c9:	33 db                                           	xor    ebx,ebx
  7474cb:	3b c3                                           	cmp    eax,ebx
  7474cd:	0f 84 59 01 00 00                               	je     0x74762c
  7474d3:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7474d7:	3b cb                                           	cmp    ecx,ebx
  7474d9:	0f 84 4d 01 00 00                               	je     0x74762c
  7474df:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7474e1:	51                                              	push   ecx
  7474e2:	8b c8                                           	mov    ecx,eax
  7474e4:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7474e7:	ff d0                                           	call   eax
  7474e9:	50                                              	push   eax
  7474ea:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7474ee:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  7474f2:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  7474f6:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  7474fa:	c7 44 24 24 b0 3c 00 01                         	mov    DWORD PTR [esp+0x24],0x1003cb0
  747502:	e8 89 40 cc ff                                  	call   0x40b590
  747507:	68 c4 a6 fb 00                                  	push   0xfba6c4
  74750c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  747510:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  747514:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  747518:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  74751c:	c7 44 24 14 80 3c 00 01                         	mov    DWORD PTR [esp+0x14],0x1003c80
  747524:	e8 67 40 cc ff                                  	call   0x40b590
  747529:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  74752e:	3b c3                                           	cmp    eax,ebx
  747530:	74 05                                           	je     0x747537
  747532:	83 c0 f8                                        	add    eax,0xfffffff8
  747535:	eb 02                                           	jmp    0x747539
  747537:	33 c0                                           	xor    eax,eax
  747539:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  74753f:	53                                              	push   ebx
  747540:	6a ff                                           	push   0xffffffff
  747542:	50                                              	push   eax
  747543:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  747547:	51                                              	push   ecx
  747548:	e8 03 c6 da ff                                  	call   0x4f3b50
  74754d:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  747551:	83 c4 10                                        	add    esp,0x10
  747554:	3b c2                                           	cmp    eax,edx
  747556:	74 10                                           	je     0x747568
  747558:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  74755b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74755d:	51                                              	push   ecx
  74755e:	52                                              	push   edx
  74755f:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  747563:	e8 f8 17 cc ff                                  	call   0x408d60
  747568:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  74756c:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  747570:	2b c8                                           	sub    ecx,eax
  747572:	83 e1 fe                                        	and    ecx,0xfffffffe
  747575:	83 f9 02                                        	cmp    ecx,0x2
  747578:	7e 0d                                           	jle    0x747587
  74757a:	3b c3                                           	cmp    eax,ebx
  74757c:	74 09                                           	je     0x747587
  74757e:	50                                              	push   eax
  74757f:	e8 5c cf d9 ff                                  	call   0x4e44e0
  747584:	83 c4 04                                        	add    esp,0x4
  747587:	b8 7c 3c 00 01                                  	mov    eax,0x1003c7c
  74758c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  747590:	83 c0 02                                        	add    eax,0x2
  747593:	66 39 18                                        	cmp    WORD PTR [eax],bx
  747596:	75 f8                                           	jne    0x747590
  747598:	56                                              	push   esi
  747599:	2d 7c 3c 00 01                                  	sub    eax,0x1003c7c
  74759e:	d1 f8                                           	sar    eax,1
  7475a0:	57                                              	push   edi
  7475a1:	8d 14 45 7c 3c 00 01                            	lea    edx,[eax*2+0x1003c7c]
  7475a8:	52                                              	push   edx
  7475a9:	68 7c 3c 00 01                                  	push   0x1003c7c
  7475ae:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7475b2:	e8 d9 15 cc ff                                  	call   0x408b90
  7475b7:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7475bb:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  7475bf:	50                                              	push   eax
  7475c0:	57                                              	push   edi
  7475c1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7475c5:	e8 c6 15 cc ff                                  	call   0x408b90
  7475ca:	68 10 b2 1e 01                                  	push   0x11eb210
  7475cf:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7475d5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7475d9:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  7475dd:	51                                              	push   ecx
  7475de:	56                                              	push   esi
  7475df:	b9 cc 28 18 01                                  	mov    ecx,0x11828cc
  7475e4:	e8 77 17 cc ff                                  	call   0x408d60
  7475e9:	68 10 b2 1e 01                                  	push   0x11eb210
  7475ee:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7475f4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7475f8:	2b d6                                           	sub    edx,esi
  7475fa:	83 e2 fe                                        	and    edx,0xfffffffe
  7475fd:	83 fa 02                                        	cmp    edx,0x2
  747600:	7e 0d                                           	jle    0x74760f
  747602:	3b f3                                           	cmp    esi,ebx
  747604:	74 09                                           	je     0x74760f
  747606:	56                                              	push   esi
  747607:	e8 d4 ce d9 ff                                  	call   0x4e44e0
  74760c:	83 c4 04                                        	add    esp,0x4
  74760f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  747613:	2b c7                                           	sub    eax,edi
  747615:	83 e0 fe                                        	and    eax,0xfffffffe
  747618:	83 f8 02                                        	cmp    eax,0x2
  74761b:	7e 0d                                           	jle    0x74762a
  74761d:	3b fb                                           	cmp    edi,ebx
  74761f:	74 09                                           	je     0x74762a
  747621:	57                                              	push   edi
  747622:	e8 b9 ce d9 ff                                  	call   0x4e44e0
  747627:	83 c4 04                                        	add    esp,0x4
  74762a:	5f                                              	pop    edi
  74762b:	5e                                              	pop    esi
  74762c:	5b                                              	pop    ebx
  74762d:	83 c4 30                                        	add    esp,0x30
  747630:	c3                                              	ret
  747631:	cc                                              	int3
  747632:	cc                                              	int3
  747633:	cc                                              	int3
  747634:	cc                                              	int3
  747635:	cc                                              	int3
  747636:	cc                                              	int3
  747637:	cc                                              	int3
  747638:	cc                                              	int3
  747639:	cc                                              	int3
  74763a:	cc                                              	int3
  74763b:	cc                                              	int3
  74763c:	cc                                              	int3
  74763d:	cc                                              	int3
  74763e:	cc                                              	int3
  74763f:	cc                                              	int3
