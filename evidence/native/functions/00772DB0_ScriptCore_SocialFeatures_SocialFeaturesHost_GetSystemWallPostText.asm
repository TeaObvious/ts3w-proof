# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772db0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostText)
Paired Ghidra pseudocode: 00772DB0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostText.c
Window: [0x00772db0, 0x00772e90) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772db0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772dc0: 57 50 8b 44 24 44 51 52 50 e8 d2 10 2b 00 83 c4
00772dd0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 b0 65 ff ff
00772de0: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772df0: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 4f 0d d8
00772e00: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772e10: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772e20: 66 c7 44 24 38 0b 00 e8 94 2b d8 ff 8b 54 24 14
00772e30: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772e40: 74 09 50 e8 98 16 d7 ff 83 c4 04 8b 07 8b 40 50
00772e50: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772e60: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772e70: 4c 24 20 e8 e8 28 d8 ff 8b 44 24 08 5f 5e 83 c4
00772e80: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772db0 <.text+0x371db0>:
  772db0:	83 ec 34                                        	sub    esp,0x34
  772db3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772db7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772dbb:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772dbf:	56                                              	push   esi
  772dc0:	57                                              	push   edi
  772dc1:	50                                              	push   eax
  772dc2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772dc6:	51                                              	push   ecx
  772dc7:	52                                              	push   edx
  772dc8:	50                                              	push   eax
  772dc9:	e8 d2 10 2b 00                                  	call   0xa23ea0
  772dce:	83 c4 10                                        	add    esp,0x10
  772dd1:	8b f0                                           	mov    esi,eax
  772dd3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772ddb:	e8 b0 65 ff ff                                  	call   0x769390
  772de0:	8b f8                                           	mov    edi,eax
  772de2:	85 ff                                           	test   edi,edi
  772de4:	0f 84 8e 00 00 00                               	je     0x772e78
  772dea:	85 f6                                           	test   esi,esi
  772dec:	0f 84 86 00 00 00                               	je     0x772e78
  772df2:	6a 00                                           	push   0x0
  772df4:	6a ff                                           	push   0xffffffff
  772df6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772dfa:	56                                              	push   esi
  772dfb:	51                                              	push   ecx
  772dfc:	e8 4f 0d d8 ff                                  	call   0x4f3b50
  772e01:	83 c4 10                                        	add    esp,0x10
  772e04:	6a 01                                           	push   0x1
  772e06:	6a 10                                           	push   0x10
  772e08:	50                                              	push   eax
  772e09:	6a 09                                           	push   0x9
  772e0b:	6a 13                                           	push   0x13
  772e0d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772e11:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772e19:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772e20:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772e27:	e8 94 2b d8 ff                                  	call   0x4f59c0
  772e2c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772e30:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772e34:	2b d0                                           	sub    edx,eax
  772e36:	83 e2 fe                                        	and    edx,0xfffffffe
  772e39:	83 fa 02                                        	cmp    edx,0x2
  772e3c:	7e 0d                                           	jle    0x772e4b
  772e3e:	85 c0                                           	test   eax,eax
  772e40:	74 09                                           	je     0x772e4b
  772e42:	50                                              	push   eax
  772e43:	e8 98 16 d7 ff                                  	call   0x4e44e0
  772e48:	83 c4 04                                        	add    esp,0x4
  772e4b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772e4d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772e50:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772e54:	51                                              	push   ecx
  772e55:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772e59:	52                                              	push   edx
  772e5a:	8b cf                                           	mov    ecx,edi
  772e5c:	ff d0                                           	call   eax
  772e5e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772e63:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772e6b:	74 0b                                           	je     0x772e78
  772e6d:	6a 00                                           	push   0x0
  772e6f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772e73:	e8 e8 28 d8 ff                                  	call   0x4f5760
  772e78:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772e7c:	5f                                              	pop    edi
  772e7d:	5e                                              	pop    esi
  772e7e:	83 c4 34                                        	add    esp,0x34
  772e81:	c3                                              	ret
  772e82:	cc                                              	int3
  772e83:	cc                                              	int3
  772e84:	cc                                              	int3
  772e85:	cc                                              	int3
  772e86:	cc                                              	int3
  772e87:	cc                                              	int3
  772e88:	cc                                              	int3
  772e89:	cc                                              	int3
  772e8a:	cc                                              	int3
  772e8b:	cc                                              	int3
  772e8c:	cc                                              	int3
  772e8d:	cc                                              	int3
  772e8e:	cc                                              	int3
  772e8f:	cc                                              	int3
