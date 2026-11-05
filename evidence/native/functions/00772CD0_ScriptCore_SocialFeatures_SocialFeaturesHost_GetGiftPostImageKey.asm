# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772cd0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostImageKey)
Paired Ghidra pseudocode: 00772CD0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostImageKey.c
Window: [0x00772cd0, 0x00772db0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772cd0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772ce0: 57 50 8b 44 24 44 51 52 50 e8 42 0e 2b 00 83 c4
00772cf0: 10 8b f0 c7 44 24 08 00 00 00 00 e8 90 66 ff ff
00772d00: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772d10: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 2f 0e d8
00772d20: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772d30: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772d40: 66 c7 44 24 38 0b 00 e8 74 2c d8 ff 8b 54 24 14
00772d50: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772d60: 74 09 50 e8 78 17 d7 ff 83 c4 04 8b 07 8b 40 50
00772d70: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772d80: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772d90: 4c 24 20 e8 c8 29 d8 ff 8b 44 24 08 5f 5e 83 c4
00772da0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772cd0 <.text+0x371cd0>:
  772cd0:	83 ec 34                                        	sub    esp,0x34
  772cd3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772cd7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772cdb:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772cdf:	56                                              	push   esi
  772ce0:	57                                              	push   edi
  772ce1:	50                                              	push   eax
  772ce2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772ce6:	51                                              	push   ecx
  772ce7:	52                                              	push   edx
  772ce8:	50                                              	push   eax
  772ce9:	e8 42 0e 2b 00                                  	call   0xa23b30
  772cee:	83 c4 10                                        	add    esp,0x10
  772cf1:	8b f0                                           	mov    esi,eax
  772cf3:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772cfb:	e8 90 66 ff ff                                  	call   0x769390
  772d00:	8b f8                                           	mov    edi,eax
  772d02:	85 ff                                           	test   edi,edi
  772d04:	0f 84 8e 00 00 00                               	je     0x772d98
  772d0a:	85 f6                                           	test   esi,esi
  772d0c:	0f 84 86 00 00 00                               	je     0x772d98
  772d12:	6a 00                                           	push   0x0
  772d14:	6a ff                                           	push   0xffffffff
  772d16:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772d1a:	56                                              	push   esi
  772d1b:	51                                              	push   ecx
  772d1c:	e8 2f 0e d8 ff                                  	call   0x4f3b50
  772d21:	83 c4 10                                        	add    esp,0x10
  772d24:	6a 01                                           	push   0x1
  772d26:	6a 10                                           	push   0x10
  772d28:	50                                              	push   eax
  772d29:	6a 09                                           	push   0x9
  772d2b:	6a 13                                           	push   0x13
  772d2d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772d31:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772d39:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772d40:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772d47:	e8 74 2c d8 ff                                  	call   0x4f59c0
  772d4c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772d50:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772d54:	2b d0                                           	sub    edx,eax
  772d56:	83 e2 fe                                        	and    edx,0xfffffffe
  772d59:	83 fa 02                                        	cmp    edx,0x2
  772d5c:	7e 0d                                           	jle    0x772d6b
  772d5e:	85 c0                                           	test   eax,eax
  772d60:	74 09                                           	je     0x772d6b
  772d62:	50                                              	push   eax
  772d63:	e8 78 17 d7 ff                                  	call   0x4e44e0
  772d68:	83 c4 04                                        	add    esp,0x4
  772d6b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772d6d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772d70:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772d74:	51                                              	push   ecx
  772d75:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772d79:	52                                              	push   edx
  772d7a:	8b cf                                           	mov    ecx,edi
  772d7c:	ff d0                                           	call   eax
  772d7e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772d83:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772d8b:	74 0b                                           	je     0x772d98
  772d8d:	6a 00                                           	push   0x0
  772d8f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772d93:	e8 c8 29 d8 ff                                  	call   0x4f5760
  772d98:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772d9c:	5f                                              	pop    edi
  772d9d:	5e                                              	pop    esi
  772d9e:	83 c4 34                                        	add    esp,0x34
  772da1:	c3                                              	ret
  772da2:	cc                                              	int3
  772da3:	cc                                              	int3
  772da4:	cc                                              	int3
  772da5:	cc                                              	int3
  772da6:	cc                                              	int3
  772da7:	cc                                              	int3
  772da8:	cc                                              	int3
  772da9:	cc                                              	int3
  772daa:	cc                                              	int3
  772dab:	cc                                              	int3
  772dac:	cc                                              	int3
  772dad:	cc                                              	int3
  772dae:	cc                                              	int3
  772daf:	cc                                              	int3
