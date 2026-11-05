# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772a30 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostGiftName)
Paired Ghidra pseudocode: 00772A30_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostGiftName.c
Window: [0x00772a30, 0x00772b10) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772a30: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772a40: 57 50 8b 44 24 44 51 52 50 e8 22 10 2b 00 83 c4
00772a50: 10 8b f0 c7 44 24 08 00 00 00 00 e8 30 69 ff ff
00772a60: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772a70: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 cf 10 d8
00772a80: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772a90: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772aa0: 66 c7 44 24 38 0b 00 e8 14 2f d8 ff 8b 54 24 14
00772ab0: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772ac0: 74 09 50 e8 18 1a d7 ff 83 c4 04 8b 07 8b 40 50
00772ad0: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772ae0: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772af0: 4c 24 20 e8 68 2c d8 ff 8b 44 24 08 5f 5e 83 c4
00772b00: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772a30 <.text+0x371a30>:
  772a30:	83 ec 34                                        	sub    esp,0x34
  772a33:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772a37:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772a3b:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772a3f:	56                                              	push   esi
  772a40:	57                                              	push   edi
  772a41:	50                                              	push   eax
  772a42:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772a46:	51                                              	push   ecx
  772a47:	52                                              	push   edx
  772a48:	50                                              	push   eax
  772a49:	e8 22 10 2b 00                                  	call   0xa23a70
  772a4e:	83 c4 10                                        	add    esp,0x10
  772a51:	8b f0                                           	mov    esi,eax
  772a53:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772a5b:	e8 30 69 ff ff                                  	call   0x769390
  772a60:	8b f8                                           	mov    edi,eax
  772a62:	85 ff                                           	test   edi,edi
  772a64:	0f 84 8e 00 00 00                               	je     0x772af8
  772a6a:	85 f6                                           	test   esi,esi
  772a6c:	0f 84 86 00 00 00                               	je     0x772af8
  772a72:	6a 00                                           	push   0x0
  772a74:	6a ff                                           	push   0xffffffff
  772a76:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772a7a:	56                                              	push   esi
  772a7b:	51                                              	push   ecx
  772a7c:	e8 cf 10 d8 ff                                  	call   0x4f3b50
  772a81:	83 c4 10                                        	add    esp,0x10
  772a84:	6a 01                                           	push   0x1
  772a86:	6a 10                                           	push   0x10
  772a88:	50                                              	push   eax
  772a89:	6a 09                                           	push   0x9
  772a8b:	6a 13                                           	push   0x13
  772a8d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772a91:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772a99:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772aa0:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772aa7:	e8 14 2f d8 ff                                  	call   0x4f59c0
  772aac:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772ab0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772ab4:	2b d0                                           	sub    edx,eax
  772ab6:	83 e2 fe                                        	and    edx,0xfffffffe
  772ab9:	83 fa 02                                        	cmp    edx,0x2
  772abc:	7e 0d                                           	jle    0x772acb
  772abe:	85 c0                                           	test   eax,eax
  772ac0:	74 09                                           	je     0x772acb
  772ac2:	50                                              	push   eax
  772ac3:	e8 18 1a d7 ff                                  	call   0x4e44e0
  772ac8:	83 c4 04                                        	add    esp,0x4
  772acb:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772acd:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772ad0:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772ad4:	51                                              	push   ecx
  772ad5:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772ad9:	52                                              	push   edx
  772ada:	8b cf                                           	mov    ecx,edi
  772adc:	ff d0                                           	call   eax
  772ade:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772ae3:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772aeb:	74 0b                                           	je     0x772af8
  772aed:	6a 00                                           	push   0x0
  772aef:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772af3:	e8 68 2c d8 ff                                  	call   0x4f5760
  772af8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772afc:	5f                                              	pop    edi
  772afd:	5e                                              	pop    esi
  772afe:	83 c4 34                                        	add    esp,0x34
  772b01:	c3                                              	ret
  772b02:	cc                                              	int3
  772b03:	cc                                              	int3
  772b04:	cc                                              	int3
  772b05:	cc                                              	int3
  772b06:	cc                                              	int3
  772b07:	cc                                              	int3
  772b08:	cc                                              	int3
  772b09:	cc                                              	int3
  772b0a:	cc                                              	int3
  772b0b:	cc                                              	int3
  772b0c:	cc                                              	int3
  772b0d:	cc                                              	int3
  772b0e:	cc                                              	int3
  772b0f:	cc                                              	int3
