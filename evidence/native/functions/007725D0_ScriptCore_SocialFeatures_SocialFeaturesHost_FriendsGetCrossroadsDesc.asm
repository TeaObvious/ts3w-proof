# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007725d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetCrossroadsDesc)
Paired Ghidra pseudocode: 007725D0_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetCrossroadsDesc.c
Window: [0x007725d0, 0x007726b0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x007726b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007725d0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
007725e0: 57 50 8b 44 24 44 51 52 50 e8 72 04 2b 00 83 c4
007725f0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 90 6d ff ff
00772600: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772610: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 2f 15 d8
00772620: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772630: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772640: 66 c7 44 24 38 0b 00 e8 74 33 d8 ff 8b 54 24 14
00772650: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772660: 74 09 50 e8 78 1e d7 ff 83 c4 04 8b 07 8b 40 50
00772670: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772680: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772690: 4c 24 20 e8 c8 30 d8 ff 8b 44 24 08 5f 5e 83 c4
007726a0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007725d0 <.text+0x3715d0>:
  7725d0:	83 ec 34                                        	sub    esp,0x34
  7725d3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7725d7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7725db:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7725df:	56                                              	push   esi
  7725e0:	57                                              	push   edi
  7725e1:	50                                              	push   eax
  7725e2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7725e6:	51                                              	push   ecx
  7725e7:	52                                              	push   edx
  7725e8:	50                                              	push   eax
  7725e9:	e8 72 04 2b 00                                  	call   0xa22a60
  7725ee:	83 c4 10                                        	add    esp,0x10
  7725f1:	8b f0                                           	mov    esi,eax
  7725f3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7725fb:	e8 90 6d ff ff                                  	call   0x769390
  772600:	8b f8                                           	mov    edi,eax
  772602:	85 ff                                           	test   edi,edi
  772604:	0f 84 8e 00 00 00                               	je     0x772698
  77260a:	85 f6                                           	test   esi,esi
  77260c:	0f 84 86 00 00 00                               	je     0x772698
  772612:	6a 00                                           	push   0x0
  772614:	6a ff                                           	push   0xffffffff
  772616:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77261a:	56                                              	push   esi
  77261b:	51                                              	push   ecx
  77261c:	e8 2f 15 d8 ff                                  	call   0x4f3b50
  772621:	83 c4 10                                        	add    esp,0x10
  772624:	6a 01                                           	push   0x1
  772626:	6a 10                                           	push   0x10
  772628:	50                                              	push   eax
  772629:	6a 09                                           	push   0x9
  77262b:	6a 13                                           	push   0x13
  77262d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772631:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772639:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772640:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772647:	e8 74 33 d8 ff                                  	call   0x4f59c0
  77264c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772650:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772654:	2b d0                                           	sub    edx,eax
  772656:	83 e2 fe                                        	and    edx,0xfffffffe
  772659:	83 fa 02                                        	cmp    edx,0x2
  77265c:	7e 0d                                           	jle    0x77266b
  77265e:	85 c0                                           	test   eax,eax
  772660:	74 09                                           	je     0x77266b
  772662:	50                                              	push   eax
  772663:	e8 78 1e d7 ff                                  	call   0x4e44e0
  772668:	83 c4 04                                        	add    esp,0x4
  77266b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77266d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772670:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772674:	51                                              	push   ecx
  772675:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772679:	52                                              	push   edx
  77267a:	8b cf                                           	mov    ecx,edi
  77267c:	ff d0                                           	call   eax
  77267e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772683:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  77268b:	74 0b                                           	je     0x772698
  77268d:	6a 00                                           	push   0x0
  77268f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772693:	e8 c8 30 d8 ff                                  	call   0x4f5760
  772698:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77269c:	5f                                              	pop    edi
  77269d:	5e                                              	pop    esi
  77269e:	83 c4 34                                        	add    esp,0x34
  7726a1:	c3                                              	ret
  7726a2:	cc                                              	int3
  7726a3:	cc                                              	int3
  7726a4:	cc                                              	int3
  7726a5:	cc                                              	int3
  7726a6:	cc                                              	int3
  7726a7:	cc                                              	int3
  7726a8:	cc                                              	int3
  7726a9:	cc                                              	int3
  7726aa:	cc                                              	int3
  7726ab:	cc                                              	int3
  7726ac:	cc                                              	int3
  7726ad:	cc                                              	int3
  7726ae:	cc                                              	int3
  7726af:	cc                                              	int3
