# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773870 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeStartDateIndex)
Paired Ghidra pseudocode: 00773870_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeStartDateIndex.c
Window: [0x00773870, 0x00773940) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773870: 83 ec 34 8b 44 24 40 8b 4c 24 3c 8b 54 24 38 56
00773880: 57 50 51 52 e8 f7 0d 2b 00 83 c4 0c 8b f0 c7 44
00773890: 24 08 00 00 00 00 e8 f5 5a ff ff 8b f8 85 ff 0f
007738a0: 84 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a
007738b0: ff 8d 44 24 14 56 50 e8 94 02 d8 ff 83 c4 10 6a
007738c0: 01 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30
007738d0: 6c 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38
007738e0: 0b 00 e8 d9 20 d8 ff 8b 4c 24 14 8b 44 24 0c 2b
007738f0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 dd
00773900: 0b d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50
00773910: 8d 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44
00773920: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 2d
00773930: 1e d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc

LINEAR DISASSEMBLY
00773870 <.text+0x372870>:
  773870:	83 ec 34                                        	sub    esp,0x34
  773873:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  773877:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77387b:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77387f:	56                                              	push   esi
  773880:	57                                              	push   edi
  773881:	50                                              	push   eax
  773882:	51                                              	push   ecx
  773883:	52                                              	push   edx
  773884:	e8 f7 0d 2b 00                                  	call   0xa24680
  773889:	83 c4 0c                                        	add    esp,0xc
  77388c:	8b f0                                           	mov    esi,eax
  77388e:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773896:	e8 f5 5a ff ff                                  	call   0x769390
  77389b:	8b f8                                           	mov    edi,eax
  77389d:	85 ff                                           	test   edi,edi
  77389f:	0f 84 8e 00 00 00                               	je     0x773933
  7738a5:	85 f6                                           	test   esi,esi
  7738a7:	0f 84 86 00 00 00                               	je     0x773933
  7738ad:	6a 00                                           	push   0x0
  7738af:	6a ff                                           	push   0xffffffff
  7738b1:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7738b5:	56                                              	push   esi
  7738b6:	50                                              	push   eax
  7738b7:	e8 94 02 d8 ff                                  	call   0x4f3b50
  7738bc:	83 c4 10                                        	add    esp,0x10
  7738bf:	6a 01                                           	push   0x1
  7738c1:	6a 10                                           	push   0x10
  7738c3:	50                                              	push   eax
  7738c4:	6a 09                                           	push   0x9
  7738c6:	6a 13                                           	push   0x13
  7738c8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7738cc:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7738d4:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7738db:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7738e2:	e8 d9 20 d8 ff                                  	call   0x4f59c0
  7738e7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7738eb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7738ef:	2b c8                                           	sub    ecx,eax
  7738f1:	83 e1 fe                                        	and    ecx,0xfffffffe
  7738f4:	83 f9 02                                        	cmp    ecx,0x2
  7738f7:	7e 0d                                           	jle    0x773906
  7738f9:	85 c0                                           	test   eax,eax
  7738fb:	74 09                                           	je     0x773906
  7738fd:	50                                              	push   eax
  7738fe:	e8 dd 0b d7 ff                                  	call   0x4e44e0
  773903:	83 c4 04                                        	add    esp,0x4
  773906:	8b 17                                           	mov    edx,DWORD PTR [edi]
  773908:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77390b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77390f:	50                                              	push   eax
  773910:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773914:	51                                              	push   ecx
  773915:	8b cf                                           	mov    ecx,edi
  773917:	ff d2                                           	call   edx
  773919:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77391e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773926:	74 0b                                           	je     0x773933
  773928:	6a 00                                           	push   0x0
  77392a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77392e:	e8 2d 1e d8 ff                                  	call   0x4f5760
  773933:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773937:	5f                                              	pop    edi
  773938:	5e                                              	pop    esi
  773939:	83 c4 34                                        	add    esp,0x34
  77393c:	c3                                              	ret
  77393d:	cc                                              	int3
  77393e:	cc                                              	int3
  77393f:	cc                                              	int3
