# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772e90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostAuthor)
Paired Ghidra pseudocode: 00772E90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostAuthor.c
Window: [0x00772e90, 0x00772f70) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772e90: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772ea0: 57 50 8b 44 24 44 51 52 50 e8 42 10 2b 00 83 c4
00772eb0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 d0 64 ff ff
00772ec0: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772ed0: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 6f 0c d8
00772ee0: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772ef0: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772f00: 66 c7 44 24 38 0b 00 e8 b4 2a d8 ff 8b 54 24 14
00772f10: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772f20: 74 09 50 e8 b8 15 d7 ff 83 c4 04 8b 07 8b 40 50
00772f30: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772f40: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772f50: 4c 24 20 e8 08 28 d8 ff 8b 44 24 08 5f 5e 83 c4
00772f60: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772e90 <.text+0x371e90>:
  772e90:	83 ec 34                                        	sub    esp,0x34
  772e93:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772e97:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772e9b:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772e9f:	56                                              	push   esi
  772ea0:	57                                              	push   edi
  772ea1:	50                                              	push   eax
  772ea2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772ea6:	51                                              	push   ecx
  772ea7:	52                                              	push   edx
  772ea8:	50                                              	push   eax
  772ea9:	e8 42 10 2b 00                                  	call   0xa23ef0
  772eae:	83 c4 10                                        	add    esp,0x10
  772eb1:	8b f0                                           	mov    esi,eax
  772eb3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772ebb:	e8 d0 64 ff ff                                  	call   0x769390
  772ec0:	8b f8                                           	mov    edi,eax
  772ec2:	85 ff                                           	test   edi,edi
  772ec4:	0f 84 8e 00 00 00                               	je     0x772f58
  772eca:	85 f6                                           	test   esi,esi
  772ecc:	0f 84 86 00 00 00                               	je     0x772f58
  772ed2:	6a 00                                           	push   0x0
  772ed4:	6a ff                                           	push   0xffffffff
  772ed6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772eda:	56                                              	push   esi
  772edb:	51                                              	push   ecx
  772edc:	e8 6f 0c d8 ff                                  	call   0x4f3b50
  772ee1:	83 c4 10                                        	add    esp,0x10
  772ee4:	6a 01                                           	push   0x1
  772ee6:	6a 10                                           	push   0x10
  772ee8:	50                                              	push   eax
  772ee9:	6a 09                                           	push   0x9
  772eeb:	6a 13                                           	push   0x13
  772eed:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772ef1:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772ef9:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772f00:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772f07:	e8 b4 2a d8 ff                                  	call   0x4f59c0
  772f0c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772f10:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772f14:	2b d0                                           	sub    edx,eax
  772f16:	83 e2 fe                                        	and    edx,0xfffffffe
  772f19:	83 fa 02                                        	cmp    edx,0x2
  772f1c:	7e 0d                                           	jle    0x772f2b
  772f1e:	85 c0                                           	test   eax,eax
  772f20:	74 09                                           	je     0x772f2b
  772f22:	50                                              	push   eax
  772f23:	e8 b8 15 d7 ff                                  	call   0x4e44e0
  772f28:	83 c4 04                                        	add    esp,0x4
  772f2b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772f2d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772f30:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772f34:	51                                              	push   ecx
  772f35:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772f39:	52                                              	push   edx
  772f3a:	8b cf                                           	mov    ecx,edi
  772f3c:	ff d0                                           	call   eax
  772f3e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772f43:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772f4b:	74 0b                                           	je     0x772f58
  772f4d:	6a 00                                           	push   0x0
  772f4f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772f53:	e8 08 28 d8 ff                                  	call   0x4f5760
  772f58:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772f5c:	5f                                              	pop    edi
  772f5d:	5e                                              	pop    esi
  772f5e:	83 c4 34                                        	add    esp,0x34
  772f61:	c3                                              	ret
  772f62:	cc                                              	int3
  772f63:	cc                                              	int3
  772f64:	cc                                              	int3
  772f65:	cc                                              	int3
  772f66:	cc                                              	int3
  772f67:	cc                                              	int3
  772f68:	cc                                              	int3
  772f69:	cc                                              	int3
  772f6a:	cc                                              	int3
  772f6b:	cc                                              	int3
  772f6c:	cc                                              	int3
  772f6d:	cc                                              	int3
  772f6e:	cc                                              	int3
  772f6f:	cc                                              	int3
