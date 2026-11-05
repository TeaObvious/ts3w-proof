# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773940 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetRankDescription)
Paired Ghidra pseudocode: 00773940_ScriptCore_SocialFeatures_SocialFeaturesHost_GetRankDescription.c
Window: [0x00773940, 0x00773a10) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773940: 83 ec 34 8b 44 24 3c 8b 4c 24 38 56 57 50 51 e8
00773950: 1c 0e 2b 00 83 c4 08 8b f0 c7 44 24 08 00 00 00
00773960: 00 e8 2a 5a ff ff 8b f8 85 ff 0f 84 8e 00 00 00
00773970: 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d 54 24 14
00773980: 56 52 e8 c9 01 d8 ff 83 c4 10 6a 01 6a 10 50 6a
00773990: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
007739a0: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 0e 20
007739b0: d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
007739c0: f9 02 7e 0d 85 c0 74 09 50 e8 12 0b d7 ff 83 c4
007739d0: 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c 24 20 51
007739e0: 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c f4 a6 fb
007739f0: 00 74 0b 6a 00 8d 4c 24 20 e8 62 1d d8 ff 8b 44
00773a00: 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773940 <.text+0x372940>:
  773940:	83 ec 34                                        	sub    esp,0x34
  773943:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  773947:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77394b:	56                                              	push   esi
  77394c:	57                                              	push   edi
  77394d:	50                                              	push   eax
  77394e:	51                                              	push   ecx
  77394f:	e8 1c 0e 2b 00                                  	call   0xa24770
  773954:	83 c4 08                                        	add    esp,0x8
  773957:	8b f0                                           	mov    esi,eax
  773959:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773961:	e8 2a 5a ff ff                                  	call   0x769390
  773966:	8b f8                                           	mov    edi,eax
  773968:	85 ff                                           	test   edi,edi
  77396a:	0f 84 8e 00 00 00                               	je     0x7739fe
  773970:	85 f6                                           	test   esi,esi
  773972:	0f 84 86 00 00 00                               	je     0x7739fe
  773978:	6a 00                                           	push   0x0
  77397a:	6a ff                                           	push   0xffffffff
  77397c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773980:	56                                              	push   esi
  773981:	52                                              	push   edx
  773982:	e8 c9 01 d8 ff                                  	call   0x4f3b50
  773987:	83 c4 10                                        	add    esp,0x10
  77398a:	6a 01                                           	push   0x1
  77398c:	6a 10                                           	push   0x10
  77398e:	50                                              	push   eax
  77398f:	6a 09                                           	push   0x9
  773991:	6a 13                                           	push   0x13
  773993:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  773997:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77399f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7739a6:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7739ad:	e8 0e 20 d8 ff                                  	call   0x4f59c0
  7739b2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7739b6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7739ba:	2b c8                                           	sub    ecx,eax
  7739bc:	83 e1 fe                                        	and    ecx,0xfffffffe
  7739bf:	83 f9 02                                        	cmp    ecx,0x2
  7739c2:	7e 0d                                           	jle    0x7739d1
  7739c4:	85 c0                                           	test   eax,eax
  7739c6:	74 09                                           	je     0x7739d1
  7739c8:	50                                              	push   eax
  7739c9:	e8 12 0b d7 ff                                  	call   0x4e44e0
  7739ce:	83 c4 04                                        	add    esp,0x4
  7739d1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7739d3:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7739d6:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7739da:	50                                              	push   eax
  7739db:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7739df:	51                                              	push   ecx
  7739e0:	8b cf                                           	mov    ecx,edi
  7739e2:	ff d2                                           	call   edx
  7739e4:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7739e9:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7739f1:	74 0b                                           	je     0x7739fe
  7739f3:	6a 00                                           	push   0x0
  7739f5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7739f9:	e8 62 1d d8 ff                                  	call   0x4f5760
  7739fe:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773a02:	5f                                              	pop    edi
  773a03:	5e                                              	pop    esi
  773a04:	83 c4 34                                        	add    esp,0x34
  773a07:	c3                                              	ret
  773a08:	cc                                              	int3
  773a09:	cc                                              	int3
  773a0a:	cc                                              	int3
  773a0b:	cc                                              	int3
  773a0c:	cc                                              	int3
  773a0d:	cc                                              	int3
  773a0e:	cc                                              	int3
  773a0f:	cc                                              	int3
