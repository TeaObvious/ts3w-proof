# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007736d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeNameIndex)
Paired Ghidra pseudocode: 007736D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeNameIndex.c
Window: [0x007736d0, 0x007737a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007737a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007736d0: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
007736e0: 57 50 51 52 e8 27 0e 2b 00 83 c4 0c 8b f0 c7 44
007736f0: 24 08 00 00 00 00 e8 95 5c ff ff 8b f8 85 ff 0f
00773700: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
00773710: ff 8d 44 24 14 56 50 e8 34 04 d8 ff 83 c4 10 6a
00773720: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00773730: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00773740: 0b 00 e8 79 22 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
00773750: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 7d
00773760: 0d d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00773770: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00773780: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 cd
00773790: 1f d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
007736d0 <.text+0x3726d0>:
  7736d0:	83 ec 34                                        	sub    esp,0x34
  7736d3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7736d7:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7736db:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7736df:	56                                              	push   esi
  7736e0:	57                                              	push   edi
  7736e1:	50                                              	push   eax
  7736e2:	51                                              	push   ecx
  7736e3:	52                                              	push   edx
  7736e4:	e8 27 0e 2b 00                                  	call   0xa24510
  7736e9:	83 c4 0c                                        	add    esp,0xc
  7736ec:	8b f0                                           	mov    esi,eax
  7736ee:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7736f6:	e8 95 5c ff ff                                  	call   0x769390
  7736fb:	8b f8                                           	mov    edi,eax
  7736fd:	85 ff                                           	test   edi,edi
  7736ff:	0f 84 8e 00 00 00                               	je     0x773793
  773705:	85 f6                                           	test   esi,esi
  773707:	0f 84 86 00 00 00                               	je     0x773793
  77370d:	6a 00                                           	push   0x0
  77370f:	6a ff                                           	push   0xffffffff
  773711:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  773715:	56                                              	push   esi
  773716:	50                                              	push   eax
  773717:	e8 34 04 d8 ff                                  	call   0x4f3b50
  77371c:	83 c4 10                                        	add    esp,0x10
  77371f:	6a 01                                           	push   0x1
  773721:	6a 10                                           	push   0x10
  773723:	50                                              	push   eax
  773724:	6a 09                                           	push   0x9
  773726:	6a 13                                           	push   0x13
  773728:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77372c:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  773734:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77373b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  773742:	e8 79 22 d8 ff                                  	call   0x4f59c0
  773747:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77374b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77374f:	2b c8                                           	sub    ecx,eax
  773751:	83 e1 fe                                        	and    ecx,0xfffffffe
  773754:	83 f9 02                                        	cmp    ecx,0x2
  773757:	7e 0d                                           	jle    0x773766
  773759:	85 c0                                           	test   eax,eax
  77375b:	74 09                                           	je     0x773766
  77375d:	50                                              	push   eax
  77375e:	e8 7d 0d d7 ff                                  	call   0x4e44e0
  773763:	83 c4 04                                        	add    esp,0x4
  773766:	8b 17                                           	mov    edx,DWORD PTR [edi]
  773768:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77376b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77376f:	50                                              	push   eax
  773770:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773774:	51                                              	push   ecx
  773775:	8b cf                                           	mov    ecx,edi
  773777:	ff d2                                           	call   edx
  773779:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77377e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773786:	74 0b                                           	je     0x773793
  773788:	6a 00                                           	push   0x0
  77378a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77378e:	e8 cd 1f d8 ff                                  	call   0x4f5760
  773793:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773797:	5f                                              	pop    edi
  773798:	5e                                              	pop    esi
  773799:	83 c4 34                                        	add    esp,0x34
  77379c:	c3                                              	ret
  77379d:	cc                                              	int3
  77379e:	cc                                              	int3
  77379f:	cc                                              	int3
