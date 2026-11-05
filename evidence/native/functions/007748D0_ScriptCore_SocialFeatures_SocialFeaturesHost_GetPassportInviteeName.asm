# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007748d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportInviteeName)
Paired Ghidra pseudocode: 007748D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportInviteeName.c
Window: [0x007748d0, 0x007749a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007749a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007748d0: 83 ec 34 8b 44 24 38 56 57 50 e8 51 0a 2b 00 83
007748e0: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 9f 4a ff
007748f0: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00774900: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 3e f2
00774910: d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
00774920: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00774930: 00 66 c7 44 24 38 0b 00 e8 83 10 d8 ff 8b 54 24
00774940: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00774950: c0 74 09 50 e8 87 fb d6 ff 83 c4 04 8b 07 8b 40
00774960: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
00774970: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
00774980: 8d 4c 24 20 e8 d7 0d d8 ff 8b 44 24 08 5f 5e 83
00774990: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007748d0 <.text+0x3738d0>:
  7748d0:	83 ec 34                                        	sub    esp,0x34
  7748d3:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7748d7:	56                                              	push   esi
  7748d8:	57                                              	push   edi
  7748d9:	50                                              	push   eax
  7748da:	e8 51 0a 2b 00                                  	call   0xa25330
  7748df:	83 c4 04                                        	add    esp,0x4
  7748e2:	8b f0                                           	mov    esi,eax
  7748e4:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7748ec:	e8 9f 4a ff ff                                  	call   0x769390
  7748f1:	8b f8                                           	mov    edi,eax
  7748f3:	85 ff                                           	test   edi,edi
  7748f5:	0f 84 8e 00 00 00                               	je     0x774989
  7748fb:	85 f6                                           	test   esi,esi
  7748fd:	0f 84 86 00 00 00                               	je     0x774989
  774903:	6a 00                                           	push   0x0
  774905:	6a ff                                           	push   0xffffffff
  774907:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77490b:	56                                              	push   esi
  77490c:	51                                              	push   ecx
  77490d:	e8 3e f2 d7 ff                                  	call   0x4f3b50
  774912:	83 c4 10                                        	add    esp,0x10
  774915:	6a 01                                           	push   0x1
  774917:	6a 10                                           	push   0x10
  774919:	50                                              	push   eax
  77491a:	6a 09                                           	push   0x9
  77491c:	6a 13                                           	push   0x13
  77491e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  774922:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77492a:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  774931:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  774938:	e8 83 10 d8 ff                                  	call   0x4f59c0
  77493d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  774941:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  774945:	2b d0                                           	sub    edx,eax
  774947:	83 e2 fe                                        	and    edx,0xfffffffe
  77494a:	83 fa 02                                        	cmp    edx,0x2
  77494d:	7e 0d                                           	jle    0x77495c
  77494f:	85 c0                                           	test   eax,eax
  774951:	74 09                                           	je     0x77495c
  774953:	50                                              	push   eax
  774954:	e8 87 fb d6 ff                                  	call   0x4e44e0
  774959:	83 c4 04                                        	add    esp,0x4
  77495c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77495e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  774961:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  774965:	51                                              	push   ecx
  774966:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77496a:	52                                              	push   edx
  77496b:	8b cf                                           	mov    ecx,edi
  77496d:	ff d0                                           	call   eax
  77496f:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  774974:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  77497c:	74 0b                                           	je     0x774989
  77497e:	6a 00                                           	push   0x0
  774980:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  774984:	e8 d7 0d d8 ff                                  	call   0x4f5760
  774989:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77498d:	5f                                              	pop    edi
  77498e:	5e                                              	pop    esi
  77498f:	83 c4 34                                        	add    esp,0x34
  774992:	c3                                              	ret
  774993:	cc                                              	int3
  774994:	cc                                              	int3
  774995:	cc                                              	int3
  774996:	cc                                              	int3
  774997:	cc                                              	int3
  774998:	cc                                              	int3
  774999:	cc                                              	int3
  77499a:	cc                                              	int3
  77499b:	cc                                              	int3
  77499c:	cc                                              	int3
  77499d:	cc                                              	int3
  77499e:	cc                                              	int3
  77499f:	cc                                              	int3
