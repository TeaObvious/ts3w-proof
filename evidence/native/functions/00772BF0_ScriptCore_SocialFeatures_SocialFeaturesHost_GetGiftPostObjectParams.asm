# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772bf0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostObjectParams)
Paired Ghidra pseudocode: 00772BF0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostObjectParams.c
Window: [0x00772bf0, 0x00772cd0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772bf0: 83 ec 34 8b 44 24 44 8b 4c 24 40 8b 54 24 3c 56
00772c00: 57 50 8b 44 24 44 51 52 50 e8 e2 0e 2b 00 83 c4
00772c10: 10 8b f0 c7 44 24 08 00 00 00 00 e8 70 67 ff ff
00772c20: 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86 00
00772c30: 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 0f 0f d8
00772c40: ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c 24
00772c50: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00772c60: 66 c7 44 24 38 0b 00 e8 54 2d d8 ff 8b 54 24 14
00772c70: 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0
00772c80: 74 09 50 e8 58 18 d7 ff 83 c4 04 8b 07 8b 40 50
00772c90: 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6 44
00772ca0: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d
00772cb0: 4c 24 20 e8 a8 2a d8 ff 8b 44 24 08 5f 5e 83 c4
00772cc0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772bf0 <.text+0x371bf0>:
  772bf0:	83 ec 34                                        	sub    esp,0x34
  772bf3:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772bf7:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  772bfb:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  772bff:	56                                              	push   esi
  772c00:	57                                              	push   edi
  772c01:	50                                              	push   eax
  772c02:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  772c06:	51                                              	push   ecx
  772c07:	52                                              	push   edx
  772c08:	50                                              	push   eax
  772c09:	e8 e2 0e 2b 00                                  	call   0xa23af0
  772c0e:	83 c4 10                                        	add    esp,0x10
  772c11:	8b f0                                           	mov    esi,eax
  772c13:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772c1b:	e8 70 67 ff ff                                  	call   0x769390
  772c20:	8b f8                                           	mov    edi,eax
  772c22:	85 ff                                           	test   edi,edi
  772c24:	0f 84 8e 00 00 00                               	je     0x772cb8
  772c2a:	85 f6                                           	test   esi,esi
  772c2c:	0f 84 86 00 00 00                               	je     0x772cb8
  772c32:	6a 00                                           	push   0x0
  772c34:	6a ff                                           	push   0xffffffff
  772c36:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  772c3a:	56                                              	push   esi
  772c3b:	51                                              	push   ecx
  772c3c:	e8 0f 0f d8 ff                                  	call   0x4f3b50
  772c41:	83 c4 10                                        	add    esp,0x10
  772c44:	6a 01                                           	push   0x1
  772c46:	6a 10                                           	push   0x10
  772c48:	50                                              	push   eax
  772c49:	6a 09                                           	push   0x9
  772c4b:	6a 13                                           	push   0x13
  772c4d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772c51:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772c59:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772c60:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772c67:	e8 54 2d d8 ff                                  	call   0x4f59c0
  772c6c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  772c70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772c74:	2b d0                                           	sub    edx,eax
  772c76:	83 e2 fe                                        	and    edx,0xfffffffe
  772c79:	83 fa 02                                        	cmp    edx,0x2
  772c7c:	7e 0d                                           	jle    0x772c8b
  772c7e:	85 c0                                           	test   eax,eax
  772c80:	74 09                                           	je     0x772c8b
  772c82:	50                                              	push   eax
  772c83:	e8 58 18 d7 ff                                  	call   0x4e44e0
  772c88:	83 c4 04                                        	add    esp,0x4
  772c8b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  772c8d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  772c90:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  772c94:	51                                              	push   ecx
  772c95:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  772c99:	52                                              	push   edx
  772c9a:	8b cf                                           	mov    ecx,edi
  772c9c:	ff d0                                           	call   eax
  772c9e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  772ca3:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  772cab:	74 0b                                           	je     0x772cb8
  772cad:	6a 00                                           	push   0x0
  772caf:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  772cb3:	e8 a8 2a d8 ff                                  	call   0x4f5760
  772cb8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  772cbc:	5f                                              	pop    edi
  772cbd:	5e                                              	pop    esi
  772cbe:	83 c4 34                                        	add    esp,0x34
  772cc1:	c3                                              	ret
  772cc2:	cc                                              	int3
  772cc3:	cc                                              	int3
  772cc4:	cc                                              	int3
  772cc5:	cc                                              	int3
  772cc6:	cc                                              	int3
  772cc7:	cc                                              	int3
  772cc8:	cc                                              	int3
  772cc9:	cc                                              	int3
  772cca:	cc                                              	int3
  772ccb:	cc                                              	int3
  772ccc:	cc                                              	int3
  772ccd:	cc                                              	int3
  772cce:	cc                                              	int3
  772ccf:	cc                                              	int3
