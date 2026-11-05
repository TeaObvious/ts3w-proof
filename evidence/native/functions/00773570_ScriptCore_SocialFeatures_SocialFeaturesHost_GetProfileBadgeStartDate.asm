# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773570 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeStartDate)
Paired Ghidra pseudocode: 00773570_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeStartDate.c
Window: [0x00773570, 0x007736d0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x007736d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773570: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 0f 5e ff
00773580: ff 8b f0 85 f6 0f 84 38 01 00 00 8b 4c 24 44 8b
00773590: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
007735a0: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
007735b0: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
007735c0: 5c 24 28 e8 f8 06 d8 ff 8d 4c 24 20 83 c4 10 3b
007735d0: c1 74 14 8b 50 04 8b 00 52 50 e8 31 23 c9 ff 8b
007735e0: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
007735f0: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 e0 0e d7 ff
00773600: 83 c4 04 8b 54 24 48 8b 44 24 44 57 52 50 e8 ed
00773610: 0f 2b 00 83 c4 0c 85 c0 0f 84 86 00 00 00 6a 00
00773620: 6a ff 50 8d 4c 24 3c 51 e8 23 05 d8 ff 83 c4 10
00773630: 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24 24 c7 44 24
00773640: 24 6c 88 00 01 66 c7 44 24 2e 13 00 66 c7 44 24
00773650: 2c 0b 00 e8 68 23 d8 ff 8b 54 24 38 8b 44 24 30
00773660: 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8
00773670: 6c 0e d7 ff 83 c4 04 8b 06 8b 40 50 8d 4c 24 0c
00773680: 51 8d 54 24 14 52 8b ce ff d0 f6 44 24 18 04 c7
00773690: 44 24 10 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 14 e8
007736a0: bc 20 d8 ff 2b df 83 fb 01 7e 0d 85 ff 74 09 57
007736b0: e8 2b 0e d7 ff 83 c4 04 8b 44 24 0c 5f 5b 5e 83
007736c0: c4 34 c3 8b 44 24 04 5e 83 c4 34 c3 cc cc cc cc

LINEAR DISASSEMBLY
00773570 <.text+0x372570>:
  773570:	83 ec 34                                        	sub    esp,0x34
  773573:	56                                              	push   esi
  773574:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  77357c:	e8 0f 5e ff ff                                  	call   0x769390
  773581:	8b f0                                           	mov    esi,eax
  773583:	85 f6                                           	test   esi,esi
  773585:	0f 84 38 01 00 00                               	je     0x7736c3
  77358b:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  77358f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773591:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773594:	53                                              	push   ebx
  773595:	57                                              	push   edi
  773596:	51                                              	push   ecx
  773597:	8b ce                                           	mov    ecx,esi
  773599:	ff d2                                           	call   edx
  77359b:	6a 00                                           	push   0x0
  77359d:	6a ff                                           	push   0xffffffff
  77359f:	50                                              	push   eax
  7735a0:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  7735a4:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7735a9:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  7735ae:	50                                              	push   eax
  7735af:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  7735b7:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7735bb:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  7735bf:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  7735c3:	e8 f8 06 d8 ff                                  	call   0x4f3cc0
  7735c8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7735cc:	83 c4 10                                        	add    esp,0x10
  7735cf:	3b c1                                           	cmp    eax,ecx
  7735d1:	74 14                                           	je     0x7735e7
  7735d3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7735d6:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7735d8:	52                                              	push   edx
  7735d9:	50                                              	push   eax
  7735da:	e8 31 23 c9 ff                                  	call   0x405910
  7735df:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  7735e3:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  7735e7:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7735eb:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7735ef:	2b c8                                           	sub    ecx,eax
  7735f1:	83 f9 01                                        	cmp    ecx,0x1
  7735f4:	7e 0d                                           	jle    0x773603
  7735f6:	85 c0                                           	test   eax,eax
  7735f8:	74 09                                           	je     0x773603
  7735fa:	50                                              	push   eax
  7735fb:	e8 e0 0e d7 ff                                  	call   0x4e44e0
  773600:	83 c4 04                                        	add    esp,0x4
  773603:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  773607:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  77360b:	57                                              	push   edi
  77360c:	52                                              	push   edx
  77360d:	50                                              	push   eax
  77360e:	e8 ed 0f 2b 00                                  	call   0xa24600
  773613:	83 c4 0c                                        	add    esp,0xc
  773616:	85 c0                                           	test   eax,eax
  773618:	0f 84 86 00 00 00                               	je     0x7736a4
  77361e:	6a 00                                           	push   0x0
  773620:	6a ff                                           	push   0xffffffff
  773622:	50                                              	push   eax
  773623:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  773627:	51                                              	push   ecx
  773628:	e8 23 05 d8 ff                                  	call   0x4f3b50
  77362d:	83 c4 10                                        	add    esp,0x10
  773630:	6a 01                                           	push   0x1
  773632:	6a 10                                           	push   0x10
  773634:	50                                              	push   eax
  773635:	6a 09                                           	push   0x9
  773637:	6a 13                                           	push   0x13
  773639:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  77363d:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773645:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  77364c:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773653:	e8 68 23 d8 ff                                  	call   0x4f59c0
  773658:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77365c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773660:	2b d0                                           	sub    edx,eax
  773662:	83 e2 fe                                        	and    edx,0xfffffffe
  773665:	83 fa 02                                        	cmp    edx,0x2
  773668:	7e 0d                                           	jle    0x773677
  77366a:	85 c0                                           	test   eax,eax
  77366c:	74 09                                           	je     0x773677
  77366e:	50                                              	push   eax
  77366f:	e8 6c 0e d7 ff                                  	call   0x4e44e0
  773674:	83 c4 04                                        	add    esp,0x4
  773677:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773679:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  77367c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  773680:	51                                              	push   ecx
  773681:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773685:	52                                              	push   edx
  773686:	8b ce                                           	mov    ecx,esi
  773688:	ff d0                                           	call   eax
  77368a:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  77368f:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  773697:	74 0b                                           	je     0x7736a4
  773699:	6a 00                                           	push   0x0
  77369b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77369f:	e8 bc 20 d8 ff                                  	call   0x4f5760
  7736a4:	2b df                                           	sub    ebx,edi
  7736a6:	83 fb 01                                        	cmp    ebx,0x1
  7736a9:	7e 0d                                           	jle    0x7736b8
  7736ab:	85 ff                                           	test   edi,edi
  7736ad:	74 09                                           	je     0x7736b8
  7736af:	57                                              	push   edi
  7736b0:	e8 2b 0e d7 ff                                  	call   0x4e44e0
  7736b5:	83 c4 04                                        	add    esp,0x4
  7736b8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7736bc:	5f                                              	pop    edi
  7736bd:	5b                                              	pop    ebx
  7736be:	5e                                              	pop    esi
  7736bf:	83 c4 34                                        	add    esp,0x34
  7736c2:	c3                                              	ret
  7736c3:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7736c7:	5e                                              	pop    esi
  7736c8:	83 c4 34                                        	add    esp,0x34
  7736cb:	c3                                              	ret
  7736cc:	cc                                              	int3
  7736cd:	cc                                              	int3
  7736ce:	cc                                              	int3
  7736cf:	cc                                              	int3
