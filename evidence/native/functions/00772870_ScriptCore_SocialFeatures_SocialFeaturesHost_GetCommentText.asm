# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772870 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentText)
Paired Ghidra pseudocode: 00772870_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentText.c
Window: [0x00772870, 0x00772950) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772870: 83 ec 34 8b 44 24 4c 8b 4c 24 48 8b 54 24 44 56
00772880: 57 50 8b 44 24 4c 51 8b 4c 24 4c 52 8b 54 24 4c
00772890: 50 51 52 e8 d8 0d 2b 00 83 c4 18 8b f0 c7 44 24
007728a0: 08 00 00 00 00 e8 e6 6a ff ff 8b f8 85 ff 0f 84
007728b0: 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a ff
007728c0: 8d 44 24 14 56 50 e8 85 12 d8 ff 83 c4 10 6a 01
007728d0: 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c
007728e0: 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b
007728f0: 00 e8 ca 30 d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8
00772900: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ce 1b
00772910: d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50 8d
00772920: 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44 24
00772930: 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 1e 2e
00772940: d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc cc

LINEAR DISASSEMBLY
00772870 <.text+0x371870>:
  772870:	83 ec 34                                        	sub    esp,0x34
  772873:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  772877:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77287b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77287f:	56                                              	push   esi
  772880:	57                                              	push   edi
  772881:	50                                              	push   eax
  772882:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  772886:	51                                              	push   ecx
  772887:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  77288b:	52                                              	push   edx
  77288c:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  772890:	50                                              	push   eax
  772891:	51                                              	push   ecx
  772892:	52                                              	push   edx
  772893:	e8 d8 0d 2b 00                                  	call   0xa23670
  772898:	83 c4 18                                        	add    esp,0x18
  77289b:	8b f0                                           	mov    esi,eax
  77289d:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7728a5:	e8 e6 6a ff ff                                  	call   0x769390
  7728aa:	8b f8                                           	mov    edi,eax
  7728ac:	85 ff                                           	test   edi,edi
  7728ae:	0f 84 8e 00 00 00                               	je     0x772942
  7728b4:	85 f6                                           	test   esi,esi
  7728b6:	0f 84 86 00 00 00                               	je     0x772942
  7728bc:	6a 00                                           	push   0x0
  7728be:	6a ff                                           	push   0xffffffff
  7728c0:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7728c4:	56                                              	push   esi
  7728c5:	50                                              	push   eax
  7728c6:	e8 85 12 d8 ff                                  	call   0x4f3b50
  7728cb:	83 c4 10                                        	add    esp,0x10
  7728ce:	6a 01                                           	push   0x1
  7728d0:	6a 10                                           	push   0x10
  7728d2:	50                                              	push   eax
  7728d3:	6a 09                                           	push   0x9
  7728d5:	6a 13                                           	push   0x13
  7728d7:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7728db:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7728e3:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7728ea:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7728f1:	e8 ca 30 d8 ff                                  	call   0x4f59c0
  7728f6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7728fa:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7728fe:	2b c8                                           	sub    ecx,eax
  772900:	83 e1 fe                                        	and    ecx,0xfffffffe
  772903:	83 f9 02                                        	cmp    ecx,0x2
  772906:	7e 0d                                           	jle    0x772915
  772908:	85 c0                                           	test   eax,eax
  77290a:	74 09                                           	je     0x772915
  77290c:	50                                              	push   eax
  77290d:	e8 ce 1b d7 ff                                  	call   0x4e44e0
  772912:	83 c4 04                                        	add    esp,0x4
  772915:	8b 17                                           	mov    edx,DWORD PTR [edi]
  772917:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77291a:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77291e:	50                                              	push   eax
  77291f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772923:	51                                              	push   ecx
  772924:	8b cf                                           	mov    ecx,edi
  772926:	ff d2                                           	call   edx
  772928:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77292d:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772935:	74 0b                                           	je     0x772942
  772937:	6a 00                                           	push   0x0
  772939:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77293d:	e8 1e 2e d8 ff                                  	call   0x4f5760
  772942:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772946:	5f                                              	pop    edi
  772947:	5e                                              	pop    esi
  772948:	83 c4 34                                        	add    esp,0x34
  77294b:	c3                                              	ret
  77294c:	cc                                              	int3
  77294d:	cc                                              	int3
  77294e:	cc                                              	int3
  77294f:	cc                                              	int3
