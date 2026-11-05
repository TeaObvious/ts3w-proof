# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774730 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeCategories)
Paired Ghidra pseudocode: 00774730_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeCategories.c
Window: [0x00774730, 0x00774800) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774730: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
00774740: 57 50 51 52 e8 e7 07 2b 00 83 c4 0c 8b f0 c7 44
00774750: 24 08 00 00 00 00 e8 35 4c ff ff 8b f8 85 ff 0f
00774760: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
00774770: ff 8d 44 24 14 56 50 e8 d4 f3 d7 ff 83 c4 10 6a
00774780: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00774790: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
007747a0: 0b 00 e8 19 12 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
007747b0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 1d
007747c0: fd d6 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
007747d0: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
007747e0: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 6d
007747f0: 0f d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
00774730 <.text+0x373730>:
  774730:	83 ec 34                                        	sub    esp,0x34
  774733:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  774737:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77473b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77473f:	56                                              	push   esi
  774740:	57                                              	push   edi
  774741:	50                                              	push   eax
  774742:	51                                              	push   ecx
  774743:	52                                              	push   edx
  774744:	e8 e7 07 2b 00                                  	call   0xa24f30
  774749:	83 c4 0c                                        	add    esp,0xc
  77474c:	8b f0                                           	mov    esi,eax
  77474e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  774756:	e8 35 4c ff ff                                  	call   0x769390
  77475b:	8b f8                                           	mov    edi,eax
  77475d:	85 ff                                           	test   edi,edi
  77475f:	0f 84 8e 00 00 00                               	je     0x7747f3
  774765:	85 f6                                           	test   esi,esi
  774767:	0f 84 86 00 00 00                               	je     0x7747f3
  77476d:	6a 00                                           	push   0x0
  77476f:	6a ff                                           	push   0xffffffff
  774771:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  774775:	56                                              	push   esi
  774776:	50                                              	push   eax
  774777:	e8 d4 f3 d7 ff                                  	call   0x4f3b50
  77477c:	83 c4 10                                        	add    esp,0x10
  77477f:	6a 01                                           	push   0x1
  774781:	6a 10                                           	push   0x10
  774783:	50                                              	push   eax
  774784:	6a 09                                           	push   0x9
  774786:	6a 13                                           	push   0x13
  774788:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77478c:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  774794:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77479b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7747a2:	e8 19 12 d8 ff                                  	call   0x4f59c0
  7747a7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7747ab:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7747af:	2b c8                                           	sub    ecx,eax
  7747b1:	83 e1 fe                                        	and    ecx,0xfffffffe
  7747b4:	83 f9 02                                        	cmp    ecx,0x2
  7747b7:	7e 0d                                           	jle    0x7747c6
  7747b9:	85 c0                                           	test   eax,eax
  7747bb:	74 09                                           	je     0x7747c6
  7747bd:	50                                              	push   eax
  7747be:	e8 1d fd d6 ff                                  	call   0x4e44e0
  7747c3:	83 c4 04                                        	add    esp,0x4
  7747c6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7747c8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7747cb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7747cf:	50                                              	push   eax
  7747d0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7747d4:	51                                              	push   ecx
  7747d5:	8b cf                                           	mov    ecx,edi
  7747d7:	ff d2                                           	call   edx
  7747d9:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7747de:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7747e6:	74 0b                                           	je     0x7747f3
  7747e8:	6a 00                                           	push   0x0
  7747ea:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7747ee:	e8 6d 0f d8 ff                                  	call   0x4f5760
  7747f3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7747f7:	5f                                              	pop    edi
  7747f8:	5e                                              	pop    esi
  7747f9:	83 c4 34                                        	add    esp,0x34
  7747fc:	c3                                              	ret
  7747fd:	cc                                              	int3
  7747fe:	cc                                              	int3
  7747ff:	cc                                              	int3
