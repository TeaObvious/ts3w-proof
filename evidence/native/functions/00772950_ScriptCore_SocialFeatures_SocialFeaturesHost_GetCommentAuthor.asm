# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772950 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentAuthor)
Paired Ghidra pseudocode: 00772950_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentAuthor.c
Window: [0x00772950, 0x00772a30) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772950: 83 ec 34 8b 44 24 4c 8b 4c 24 48 8b 54 24 44 56
00772960: 57 50 8b 44 24 4c 51 8b 4c 24 4c 52 8b 54 24 4c
00772970: 50 51 52 e8 48 0d 2b 00 83 c4 18 8b f0 c7 44 24
00772980: 08 00 00 00 00 e8 06 6a ff ff 8b f8 85 ff 0f 84
00772990: 8e 00 00 00 85 f6 0f 84 86 00 00 00 6a 00 6a ff
007729a0: 8d 44 24 14 56 50 e8 a5 11 d8 ff 83 c4 10 6a 01
007729b0: 6a 10 50 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c
007729c0: 88 00 01 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b
007729d0: 00 e8 ea 2f d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8
007729e0: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ee 1a
007729f0: d7 ff 83 c4 04 8b 17 8b 52 50 8d 44 24 08 50 8d
00772a00: 4c 24 20 51 8b cf ff d2 f6 44 24 24 04 c7 44 24
00772a10: 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 3e 2d
00772a20: d8 ff 8b 44 24 08 5f 5e 83 c4 34 c3 cc cc cc cc

LINEAR DISASSEMBLY
00772950 <.text+0x371950>:
  772950:	83 ec 34                                        	sub    esp,0x34
  772953:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  772957:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77295b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77295f:	56                                              	push   esi
  772960:	57                                              	push   edi
  772961:	50                                              	push   eax
  772962:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  772966:	51                                              	push   ecx
  772967:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  77296b:	52                                              	push   edx
  77296c:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  772970:	50                                              	push   eax
  772971:	51                                              	push   ecx
  772972:	52                                              	push   edx
  772973:	e8 48 0d 2b 00                                  	call   0xa236c0
  772978:	83 c4 18                                        	add    esp,0x18
  77297b:	8b f0                                           	mov    esi,eax
  77297d:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772985:	e8 06 6a ff ff                                  	call   0x769390
  77298a:	8b f8                                           	mov    edi,eax
  77298c:	85 ff                                           	test   edi,edi
  77298e:	0f 84 8e 00 00 00                               	je     0x772a22
  772994:	85 f6                                           	test   esi,esi
  772996:	0f 84 86 00 00 00                               	je     0x772a22
  77299c:	6a 00                                           	push   0x0
  77299e:	6a ff                                           	push   0xffffffff
  7729a0:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7729a4:	56                                              	push   esi
  7729a5:	50                                              	push   eax
  7729a6:	e8 a5 11 d8 ff                                  	call   0x4f3b50
  7729ab:	83 c4 10                                        	add    esp,0x10
  7729ae:	6a 01                                           	push   0x1
  7729b0:	6a 10                                           	push   0x10
  7729b2:	50                                              	push   eax
  7729b3:	6a 09                                           	push   0x9
  7729b5:	6a 13                                           	push   0x13
  7729b7:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7729bb:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  7729c3:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  7729ca:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  7729d1:	e8 ea 2f d8 ff                                  	call   0x4f59c0
  7729d6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7729da:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7729de:	2b c8                                           	sub    ecx,eax
  7729e0:	83 e1 fe                                        	and    ecx,0xfffffffe
  7729e3:	83 f9 02                                        	cmp    ecx,0x2
  7729e6:	7e 0d                                           	jle    0x7729f5
  7729e8:	85 c0                                           	test   eax,eax
  7729ea:	74 09                                           	je     0x7729f5
  7729ec:	50                                              	push   eax
  7729ed:	e8 ee 1a d7 ff                                  	call   0x4e44e0
  7729f2:	83 c4 04                                        	add    esp,0x4
  7729f5:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7729f7:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7729fa:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7729fe:	50                                              	push   eax
  7729ff:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772a03:	51                                              	push   ecx
  772a04:	8b cf                                           	mov    ecx,edi
  772a06:	ff d2                                           	call   edx
  772a08:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772a0d:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772a15:	74 0b                                           	je     0x772a22
  772a17:	6a 00                                           	push   0x0
  772a19:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772a1d:	e8 3e 2d d8 ff                                  	call   0x4f5760
  772a22:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772a26:	5f                                              	pop    edi
  772a27:	5e                                              	pop    esi
  772a28:	83 c4 34                                        	add    esp,0x34
  772a2b:	c3                                              	ret
  772a2c:	cc                                              	int3
  772a2d:	cc                                              	int3
  772a2e:	cc                                              	int3
  772a2f:	cc                                              	int3
