# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007737a0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeDescIndex)
Paired Ghidra pseudocode: 007737A0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeDescIndex.c
Window: [0x007737a0, 0x00773870) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007737a0: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
007737b0: 57 50 51 52 e8 f7 0d 2b 00 83 c4 0c 8b f0 c7 44
007737c0: 24 08 00 00 00 00 e8 c5 5b ff ff 8b f8 85 ff 0f
007737d0: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
007737e0: ff 8d 44 24 14 56 50 e8 64 03 d8 ff 83 c4 10 6a
007737f0: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
00773800: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
00773810: 0b 00 e8 a9 21 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
00773820: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ad
00773830: 0c d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00773840: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00773850: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 fd
00773860: 1e d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
007737a0 <.text+0x3727a0>:
  7737a0:	83 ec 34                                        	sub    esp,0x34
  7737a3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7737a7:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7737ab:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  7737af:	56                                              	push   esi
  7737b0:	57                                              	push   edi
  7737b1:	50                                              	push   eax
  7737b2:	51                                              	push   ecx
  7737b3:	52                                              	push   edx
  7737b4:	e8 f7 0d 2b 00                                  	call   0xa245b0
  7737b9:	83 c4 0c                                        	add    esp,0xc
  7737bc:	8b f0                                           	mov    esi,eax
  7737be:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7737c6:	e8 c5 5b ff ff                                  	call   0x769390
  7737cb:	8b f8                                           	mov    edi,eax
  7737cd:	85 ff                                           	test   edi,edi
  7737cf:	0f 84 8e 00 00 00                               	je     0x773863
  7737d5:	85 f6                                           	test   esi,esi
  7737d7:	0f 84 86 00 00 00                               	je     0x773863
  7737dd:	6a 00                                           	push   0x0
  7737df:	6a ff                                           	push   0xffffffff
  7737e1:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7737e5:	56                                              	push   esi
  7737e6:	50                                              	push   eax
  7737e7:	e8 64 03 d8 ff                                  	call   0x4f3b50
  7737ec:	83 c4 10                                        	add    esp,0x10
  7737ef:	6a 01                                           	push   0x1
  7737f1:	6a 10                                           	push   0x10
  7737f3:	50                                              	push   eax
  7737f4:	6a 09                                           	push   0x9
  7737f6:	6a 13                                           	push   0x13
  7737f8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7737fc:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  773804:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  77380b:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  773812:	e8 a9 21 d8 ff                                  	call   0x4f59c0
  773817:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77381b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77381f:	2b c8                                           	sub    ecx,eax
  773821:	83 e1 fe                                        	and    ecx,0xfffffffe
  773824:	83 f9 02                                        	cmp    ecx,0x2
  773827:	7e 0d                                           	jle    0x773836
  773829:	85 c0                                           	test   eax,eax
  77382b:	74 09                                           	je     0x773836
  77382d:	50                                              	push   eax
  77382e:	e8 ad 0c d7 ff                                  	call   0x4e44e0
  773833:	83 c4 04                                        	add    esp,0x4
  773836:	8b 17                                           	mov    edx,DWORD PTR [edi]
  773838:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77383b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77383f:	50                                              	push   eax
  773840:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773844:	51                                              	push   ecx
  773845:	8b cf                                           	mov    ecx,edi
  773847:	ff d2                                           	call   edx
  773849:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77384e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773856:	74 0b                                           	je     0x773863
  773858:	6a 00                                           	push   0x0
  77385a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77385e:	e8 fd 1e d8 ff                                  	call   0x4f5760
  773863:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773867:	5f                                              	pop    edi
  773868:	5e                                              	pop    esi
  773869:	83 c4 34                                        	add    esp,0x34
  77386c:	c3                                              	ret
  77386d:	cc                                              	int3
  77386e:	cc                                              	int3
  77386f:	cc                                              	int3
