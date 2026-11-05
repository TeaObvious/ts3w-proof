# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772b10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostGiftHALId)
Paired Ghidra pseudocode: 00772B10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostGiftHALId.c
Window: [0x00772b10, 0x00772bf0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772b10: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772b20: 57 50 8b 44 24 44 51 52 50 e8 82 0f 2b 00 83 c4
00772b30: 10 8b f0 c7 44 24 08 00 00 00 00 e8 50 68 ff ff
00772b40: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772b50: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 ef 0f d8
00772b60: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772b70: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772b80: 66 c7 44 24 38 0b 00 e8 34 2e d8 ff 8b 54 24 14
00772b90: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772ba0: 74 09 50 e8 38 19 d7 ff 83 c4 04 8b 07 8b 40 50
00772bb0: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772bc0: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772bd0: 4c 24 20 e8 88 2b d8 ff 8b 44 24 08 5f 5e 83 c4
00772be0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772b10 <.text+0x371b10>:
  772b10:	83 ec 34                                        	sub    esp,0x34
  772b13:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772b17:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772b1b:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772b1f:	56                                              	push   esi
  772b20:	57                                              	push   edi
  772b21:	50                                              	push   eax
  772b22:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772b26:	51                                              	push   ecx
  772b27:	52                                              	push   edx
  772b28:	50                                              	push   eax
  772b29:	e8 82 0f 2b 00                                  	call   0xa23ab0
  772b2e:	83 c4 10                                        	add    esp,0x10
  772b31:	8b f0                                           	mov    esi,eax
  772b33:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772b3b:	e8 50 68 ff ff                                  	call   0x769390
  772b40:	8b f8                                           	mov    edi,eax
  772b42:	85 ff                                           	test   edi,edi
  772b44:	0f 84 8e 00 00 00                               	je     0x772bd8
  772b4a:	85 f6                                           	test   esi,esi
  772b4c:	0f 84 86 00 00 00                               	je     0x772bd8
  772b52:	6a 00                                           	push   0x0
  772b54:	6a ff                                           	push   0xffffffff
  772b56:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772b5a:	56                                              	push   esi
  772b5b:	51                                              	push   ecx
  772b5c:	e8 ef 0f d8 ff                                  	call   0x4f3b50
  772b61:	83 c4 10                                        	add    esp,0x10
  772b64:	6a 01                                           	push   0x1
  772b66:	6a 10                                           	push   0x10
  772b68:	50                                              	push   eax
  772b69:	6a 09                                           	push   0x9
  772b6b:	6a 13                                           	push   0x13
  772b6d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772b71:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772b79:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772b80:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772b87:	e8 34 2e d8 ff                                  	call   0x4f59c0
  772b8c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772b90:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772b94:	2b d0                                           	sub    edx,eax
  772b96:	83 e2 fe                                        	and    edx,0xfffffffe
  772b99:	83 fa 02                                        	cmp    edx,0x2
  772b9c:	7e 0d                                           	jle    0x772bab
  772b9e:	85 c0                                           	test   eax,eax
  772ba0:	74 09                                           	je     0x772bab
  772ba2:	50                                              	push   eax
  772ba3:	e8 38 19 d7 ff                                  	call   0x4e44e0
  772ba8:	83 c4 04                                        	add    esp,0x4
  772bab:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772bad:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772bb0:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772bb4:	51                                              	push   ecx
  772bb5:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772bb9:	52                                              	push   edx
  772bba:	8b cf                                           	mov    ecx,edi
  772bbc:	ff d0                                           	call   eax
  772bbe:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772bc3:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772bcb:	74 0b                                           	je     0x772bd8
  772bcd:	6a 00                                           	push   0x0
  772bcf:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772bd3:	e8 88 2b d8 ff                                  	call   0x4f5760
  772bd8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772bdc:	5f                                              	pop    edi
  772bdd:	5e                                              	pop    esi
  772bde:	83 c4 34                                        	add    esp,0x34
  772be1:	c3                                              	ret
  772be2:	cc                                              	int3
  772be3:	cc                                              	int3
  772be4:	cc                                              	int3
  772be5:	cc                                              	int3
  772be6:	cc                                              	int3
  772be7:	cc                                              	int3
  772be8:	cc                                              	int3
  772be9:	cc                                              	int3
  772bea:	cc                                              	int3
  772beb:	cc                                              	int3
  772bec:	cc                                              	int3
  772bed:	cc                                              	int3
  772bee:	cc                                              	int3
  772bef:	cc                                              	int3
