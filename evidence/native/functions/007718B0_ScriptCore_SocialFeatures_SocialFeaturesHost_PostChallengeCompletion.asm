# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007718b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_PostChallengeCompletion)
Paired Ghidra pseudocode: 007718B0_ScriptCore_SocialFeatures_SocialFeaturesHost_PostChallengeCompletion.c
Window: [0x007718b0, 0x00771970) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007718b0: 83 ec 20 e8 d8 7a ff ff 85 c0 0f 84 a1 00 00 00
007718c0: 8b 4c 24 24 8b 10 8b 52 58 53 56 57 51 8b c8 ff
007718d0: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
007718e0: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
007718f0: 1c 89 7c 24 20 89 74 24 24 e8 c2 23 d8 ff 8d 4c
00771900: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
00771910: e8 fb 3f c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
00771920: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
00771930: 50 e8 aa 2b d7 ff 83 c4 04 57 e8 01 2b 2b 00 2b
00771940: f7 83 c4 04 83 fe 01 8b d8 7e 0d 85 ff 74 09 57
00771950: e8 8b 2b d7 ff 83 c4 04 5f 5e 8b c3 5b 83 c4 20
00771960: c3 b8 01 00 00 00 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007718b0 <.text+0x3708b0>:
  7718b0:	83 ec 20                                        	sub    esp,0x20
  7718b3:	e8 d8 7a ff ff                                  	call   0x769390
  7718b8:	85 c0                                           	test   eax,eax
  7718ba:	0f 84 a1 00 00 00                               	je     0x771961
  7718c0:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7718c4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7718c6:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7718c9:	53                                              	push   ebx
  7718ca:	56                                              	push   esi
  7718cb:	57                                              	push   edi
  7718cc:	51                                              	push   ecx
  7718cd:	8b c8                                           	mov    ecx,eax
  7718cf:	ff d2                                           	call   edx
  7718d1:	6a 00                                           	push   0x0
  7718d3:	6a ff                                           	push   0xffffffff
  7718d5:	50                                              	push   eax
  7718d6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  7718da:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7718df:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  7718e4:	50                                              	push   eax
  7718e5:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  7718ed:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  7718f1:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7718f5:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  7718f9:	e8 c2 23 d8 ff                                  	call   0x4f3cc0
  7718fe:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  771902:	83 c4 10                                        	add    esp,0x10
  771905:	3b c1                                           	cmp    eax,ecx
  771907:	74 14                                           	je     0x77191d
  771909:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77190c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77190e:	52                                              	push   edx
  77190f:	50                                              	push   eax
  771910:	e8 fb 3f c9 ff                                  	call   0x405910
  771915:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771919:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  77191d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771921:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771925:	2b c8                                           	sub    ecx,eax
  771927:	83 f9 01                                        	cmp    ecx,0x1
  77192a:	7e 0d                                           	jle    0x771939
  77192c:	85 c0                                           	test   eax,eax
  77192e:	74 09                                           	je     0x771939
  771930:	50                                              	push   eax
  771931:	e8 aa 2b d7 ff                                  	call   0x4e44e0
  771936:	83 c4 04                                        	add    esp,0x4
  771939:	57                                              	push   edi
  77193a:	e8 01 2b 2b 00                                  	call   0xa24440
  77193f:	2b f7                                           	sub    esi,edi
  771941:	83 c4 04                                        	add    esp,0x4
  771944:	83 fe 01                                        	cmp    esi,0x1
  771947:	8b d8                                           	mov    ebx,eax
  771949:	7e 0d                                           	jle    0x771958
  77194b:	85 ff                                           	test   edi,edi
  77194d:	74 09                                           	je     0x771958
  77194f:	57                                              	push   edi
  771950:	e8 8b 2b d7 ff                                  	call   0x4e44e0
  771955:	83 c4 04                                        	add    esp,0x4
  771958:	5f                                              	pop    edi
  771959:	5e                                              	pop    esi
  77195a:	8b c3                                           	mov    eax,ebx
  77195c:	5b                                              	pop    ebx
  77195d:	83 c4 20                                        	add    esp,0x20
  771960:	c3                                              	ret
  771961:	b8 01 00 00 00                                  	mov    eax,0x1
  771966:	83 c4 20                                        	add    esp,0x20
  771969:	c3                                              	ret
  77196a:	cc                                              	int3
  77196b:	cc                                              	int3
  77196c:	cc                                              	int3
  77196d:	cc                                              	int3
  77196e:	cc                                              	int3
  77196f:	cc                                              	int3
