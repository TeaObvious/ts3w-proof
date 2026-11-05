# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007713e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_SendPostImage)
Paired Ghidra pseudocode: 007713E0_ScriptCore_SocialFeatures_SocialFeaturesHost_SendPostImage.c
Window: [0x007713e0, 0x007714d0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x007714d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007713e0: 83 ec 20 53 56 57 e8 a5 7f ff ff 85 c0 0f 84 c8
007713f0: 00 00 00 8b 4c 24 38 8b 10 8b 52 58 51 8b c8 ff
00771400: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
00771410: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
00771420: 1c 89 7c 24 20 89 74 24 24 e8 92 28 d8 ff 8d 4c
00771430: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
00771440: e8 cb 44 c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
00771450: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
00771460: 50 e8 7a 30 d7 ff 83 c4 04 8b 54 24 3c 8b 4c 24
00771470: 40 83 ec 10 8b c4 89 10 8b 54 24 54 89 48 04 8b
00771480: 4c 24 58 89 50 08 8b 54 24 44 57 89 48 0c 8b 44
00771490: 24 44 52 50 e8 77 23 2b 00 2b f7 83 c4 1c 83 fe
007714a0: 01 8b d8 7e 0d 85 ff 74 09 57 e8 31 30 d7 ff 83
007714b0: c4 04 8b c3 5f 5e 5b 83 c4 20 c3 5f 5e 33 c0 5b
007714c0: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007713e0 <.text+0x3703e0>:
  7713e0:	83 ec 20                                        	sub    esp,0x20
  7713e3:	53                                              	push   ebx
  7713e4:	56                                              	push   esi
  7713e5:	57                                              	push   edi
  7713e6:	e8 a5 7f ff ff                                  	call   0x769390
  7713eb:	85 c0                                           	test   eax,eax
  7713ed:	0f 84 c8 00 00 00                               	je     0x7714bb
  7713f3:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7713f7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7713f9:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7713fc:	51                                              	push   ecx
  7713fd:	8b c8                                           	mov    ecx,eax
  7713ff:	ff d2                                           	call   edx
  771401:	6a 00                                           	push   0x0
  771403:	6a ff                                           	push   0xffffffff
  771405:	50                                              	push   eax
  771406:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  77140a:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  77140f:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771414:	50                                              	push   eax
  771415:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  77141d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  771421:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771425:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  771429:	e8 92 28 d8 ff                                  	call   0x4f3cc0
  77142e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  771432:	83 c4 10                                        	add    esp,0x10
  771435:	3b c1                                           	cmp    eax,ecx
  771437:	74 14                                           	je     0x77144d
  771439:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77143c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77143e:	52                                              	push   edx
  77143f:	50                                              	push   eax
  771440:	e8 cb 44 c9 ff                                  	call   0x405910
  771445:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771449:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  77144d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771451:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771455:	2b c8                                           	sub    ecx,eax
  771457:	83 f9 01                                        	cmp    ecx,0x1
  77145a:	7e 0d                                           	jle    0x771469
  77145c:	85 c0                                           	test   eax,eax
  77145e:	74 09                                           	je     0x771469
  771460:	50                                              	push   eax
  771461:	e8 7a 30 d7 ff                                  	call   0x4e44e0
  771466:	83 c4 04                                        	add    esp,0x4
  771469:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  77146d:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  771471:	83 ec 10                                        	sub    esp,0x10
  771474:	8b c4                                           	mov    eax,esp
  771476:	89 10                                           	mov    DWORD PTR [eax],edx
  771478:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  77147c:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  77147f:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  771483:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  771486:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77148a:	57                                              	push   edi
  77148b:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  77148e:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  771492:	52                                              	push   edx
  771493:	50                                              	push   eax
  771494:	e8 77 23 2b 00                                  	call   0xa23810
  771499:	2b f7                                           	sub    esi,edi
  77149b:	83 c4 1c                                        	add    esp,0x1c
  77149e:	83 fe 01                                        	cmp    esi,0x1
  7714a1:	8b d8                                           	mov    ebx,eax
  7714a3:	7e 0d                                           	jle    0x7714b2
  7714a5:	85 ff                                           	test   edi,edi
  7714a7:	74 09                                           	je     0x7714b2
  7714a9:	57                                              	push   edi
  7714aa:	e8 31 30 d7 ff                                  	call   0x4e44e0
  7714af:	83 c4 04                                        	add    esp,0x4
  7714b2:	8b c3                                           	mov    eax,ebx
  7714b4:	5f                                              	pop    edi
  7714b5:	5e                                              	pop    esi
  7714b6:	5b                                              	pop    ebx
  7714b7:	83 c4 20                                        	add    esp,0x20
  7714ba:	c3                                              	ret
  7714bb:	5f                                              	pop    edi
  7714bc:	5e                                              	pop    esi
  7714bd:	33 c0                                           	xor    eax,eax
  7714bf:	5b                                              	pop    ebx
  7714c0:	83 c4 20                                        	add    esp,0x20
  7714c3:	c3                                              	ret
  7714c4:	cc                                              	int3
  7714c5:	cc                                              	int3
  7714c6:	cc                                              	int3
  7714c7:	cc                                              	int3
  7714c8:	cc                                              	int3
  7714c9:	cc                                              	int3
  7714ca:	cc                                              	int3
  7714cb:	cc                                              	int3
  7714cc:	cc                                              	int3
  7714cd:	cc                                              	int3
  7714ce:	cc                                              	int3
  7714cf:	cc                                              	int3
