# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007585b0 (ScriptCore.RouteManager::RouteManager_SetDebugIdentifier)
Paired Ghidra pseudocode: 007585B0_ScriptCore_RouteManager_RouteManager_SetDebugIdentifier.c
Window: [0x007585b0, 0x007586a0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x007586a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007585b0: 83 ec 20 56 8b 74 24 28 57 8b 7c 24 30 8b c6 0b
007585c0: c7 0f 84 ce 00 00 00 e8 a4 ef 1d 00 57 56 8b c8
007585d0: e8 ab f9 1d 00 85 c0 0f 84 b8 00 00 00 8b 0d 38
007585e0: a1 1e 01 53 51 8b c8 e8 74 bc 1d 00 8b d8 85 db
007585f0: 0f 84 9e 00 00 00 e8 95 0d 01 00 8b 4c 24 38 8b
00758600: 10 8b 52 58 51 8b c8 ff d2 85 c0 bf 54 8e 1c 01
00758610: be 55 8e 1c 01 c7 44 24 18 18 56 00 01 89 7c 24
00758620: 0c 89 7c 24 10 89 74 24 14 74 4d 68 18 56 00 01
00758630: 6a ff 50 8d 44 24 28 50 e8 83 b6 d9 ff 8d 4c 24
00758640: 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50 e8
00758650: bc d2 ca ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24 24
00758660: 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00758670: e8 6b be d8 ff 83 c4 04 57 8b cb e8 80 c5 1f 00
00758680: 2b f7 83 fe 01 7e 0d 85 ff 74 09 57 e8 4f be d8
00758690: ff 83 c4 04 5b 5f 5e 83 c4 20 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007585b0 <.text+0x3575b0>:
  7585b0:	83 ec 20                                        	sub    esp,0x20
  7585b3:	56                                              	push   esi
  7585b4:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  7585b8:	57                                              	push   edi
  7585b9:	8b 7c 24 30                                     	mov    edi,DWORD PTR [esp+0x30]
  7585bd:	8b c6                                           	mov    eax,esi
  7585bf:	0b c7                                           	or     eax,edi
  7585c1:	0f 84 ce 00 00 00                               	je     0x758695
  7585c7:	e8 a4 ef 1d 00                                  	call   0x937570
  7585cc:	57                                              	push   edi
  7585cd:	56                                              	push   esi
  7585ce:	8b c8                                           	mov    ecx,eax
  7585d0:	e8 ab f9 1d 00                                  	call   0x937f80
  7585d5:	85 c0                                           	test   eax,eax
  7585d7:	0f 84 b8 00 00 00                               	je     0x758695
  7585dd:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  7585e3:	53                                              	push   ebx
  7585e4:	51                                              	push   ecx
  7585e5:	8b c8                                           	mov    ecx,eax
  7585e7:	e8 74 bc 1d 00                                  	call   0x934260
  7585ec:	8b d8                                           	mov    ebx,eax
  7585ee:	85 db                                           	test   ebx,ebx
  7585f0:	0f 84 9e 00 00 00                               	je     0x758694
  7585f6:	e8 95 0d 01 00                                  	call   0x769390
  7585fb:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7585ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  758601:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  758604:	51                                              	push   ecx
  758605:	8b c8                                           	mov    ecx,eax
  758607:	ff d2                                           	call   edx
  758609:	85 c0                                           	test   eax,eax
  75860b:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  758610:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  758615:	c7 44 24 18 18 56 00 01                         	mov    DWORD PTR [esp+0x18],0x1005618
  75861d:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  758621:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  758625:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  758629:	74 4d                                           	je     0x758678
  75862b:	68 18 56 00 01                                  	push   0x1005618
  758630:	6a ff                                           	push   0xffffffff
  758632:	50                                              	push   eax
  758633:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  758637:	50                                              	push   eax
  758638:	e8 83 b6 d9 ff                                  	call   0x4f3cc0
  75863d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  758641:	83 c4 10                                        	add    esp,0x10
  758644:	3b c1                                           	cmp    eax,ecx
  758646:	74 14                                           	je     0x75865c
  758648:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  75864b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  75864d:	52                                              	push   edx
  75864e:	50                                              	push   eax
  75864f:	e8 bc d2 ca ff                                  	call   0x405910
  758654:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  758658:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  75865c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  758660:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  758664:	2b c8                                           	sub    ecx,eax
  758666:	83 f9 01                                        	cmp    ecx,0x1
  758669:	7e 0d                                           	jle    0x758678
  75866b:	85 c0                                           	test   eax,eax
  75866d:	74 09                                           	je     0x758678
  75866f:	50                                              	push   eax
  758670:	e8 6b be d8 ff                                  	call   0x4e44e0
  758675:	83 c4 04                                        	add    esp,0x4
  758678:	57                                              	push   edi
  758679:	8b cb                                           	mov    ecx,ebx
  75867b:	e8 80 c5 1f 00                                  	call   0x954c00
  758680:	2b f7                                           	sub    esi,edi
  758682:	83 fe 01                                        	cmp    esi,0x1
  758685:	7e 0d                                           	jle    0x758694
  758687:	85 ff                                           	test   edi,edi
  758689:	74 09                                           	je     0x758694
  75868b:	57                                              	push   edi
  75868c:	e8 4f be d8 ff                                  	call   0x4e44e0
  758691:	83 c4 04                                        	add    esp,0x4
  758694:	5b                                              	pop    ebx
  758695:	5f                                              	pop    edi
  758696:	5e                                              	pop    esi
  758697:	83 c4 20                                        	add    esp,0x20
  75869a:	c3                                              	ret
  75869b:	cc                                              	int3
  75869c:	cc                                              	int3
  75869d:	cc                                              	int3
  75869e:	cc                                              	int3
  75869f:	cc                                              	int3
