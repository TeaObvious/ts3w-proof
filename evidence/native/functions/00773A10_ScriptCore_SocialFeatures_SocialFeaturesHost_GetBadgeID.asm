# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773a10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeID)
Paired Ghidra pseudocode: 00773A10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeID.c
Window: [0x00773a10, 0x00773ae0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773a10: 83 ec 34 8b 44 24 38 56 57 50 e8 61 0f 2b 00 83
00773a20: c4 04 8b f0 c7 44 24 08 00 00 00 00 e8 5f 59 ff
00773a30: ff 8b f8 85 ff 0f 84 8e 00 00 00 85 f6 0f 84 86
00773a40: 00 00 00 6a 00 6a ff 8d 4c 24 14 56 51 e8 fe 00
00773a50: d8 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d 4c
00773a60: 24 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13
00773a70: 00 66 c7 44 24 38 0b 00 e8 43 1f d8 ff 8b 54 24
00773a80: 14 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85
00773a90: c0 74 09 50 e8 47 0a d7 ff 83 c4 04 8b 07 8b 40
00773aa0: 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0 f6
00773ab0: 44 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0b 6a 00
00773ac0: 8d 4c 24 20 e8 97 1c d8 ff 8b 44 24 08 5f 5e 83
00773ad0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773a10 <.text+0x372a10>:
  773a10:	83 ec 34                                        	sub    esp,0x34
  773a13:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  773a17:	56                                              	push   esi
  773a18:	57                                              	push   edi
  773a19:	50                                              	push   eax
  773a1a:	e8 61 0f 2b 00                                  	call   0xa24980
  773a1f:	83 c4 04                                        	add    esp,0x4
  773a22:	8b f0                                           	mov    esi,eax
  773a24:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773a2c:	e8 5f 59 ff ff                                  	call   0x769390
  773a31:	8b f8                                           	mov    edi,eax
  773a33:	85 ff                                           	test   edi,edi
  773a35:	0f 84 8e 00 00 00                               	je     0x773ac9
  773a3b:	85 f6                                           	test   esi,esi
  773a3d:	0f 84 86 00 00 00                               	je     0x773ac9
  773a43:	6a 00                                           	push   0x0
  773a45:	6a ff                                           	push   0xffffffff
  773a47:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773a4b:	56                                              	push   esi
  773a4c:	51                                              	push   ecx
  773a4d:	e8 fe 00 d8 ff                                  	call   0x4f3b50
  773a52:	83 c4 10                                        	add    esp,0x10
  773a55:	6a 01                                           	push   0x1
  773a57:	6a 10                                           	push   0x10
  773a59:	50                                              	push   eax
  773a5a:	6a 09                                           	push   0x9
  773a5c:	6a 13                                           	push   0x13
  773a5e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  773a62:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  773a6a:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  773a71:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  773a78:	e8 43 1f d8 ff                                  	call   0x4f59c0
  773a7d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  773a81:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  773a85:	2b d0                                           	sub    edx,eax
  773a87:	83 e2 fe                                        	and    edx,0xfffffffe
  773a8a:	83 fa 02                                        	cmp    edx,0x2
  773a8d:	7e 0d                                           	jle    0x773a9c
  773a8f:	85 c0                                           	test   eax,eax
  773a91:	74 09                                           	je     0x773a9c
  773a93:	50                                              	push   eax
  773a94:	e8 47 0a d7 ff                                  	call   0x4e44e0
  773a99:	83 c4 04                                        	add    esp,0x4
  773a9c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  773a9e:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  773aa1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  773aa5:	51                                              	push   ecx
  773aa6:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  773aaa:	52                                              	push   edx
  773aab:	8b cf                                           	mov    ecx,edi
  773aad:	ff d0                                           	call   eax
  773aaf:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  773ab4:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773abc:	74 0b                                           	je     0x773ac9
  773abe:	6a 00                                           	push   0x0
  773ac0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773ac4:	e8 97 1c d8 ff                                  	call   0x4f5760
  773ac9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773acd:	5f                                              	pop    edi
  773ace:	5e                                              	pop    esi
  773acf:	83 c4 34                                        	add    esp,0x34
  773ad2:	c3                                              	ret
  773ad3:	cc                                              	int3
  773ad4:	cc                                              	int3
  773ad5:	cc                                              	int3
  773ad6:	cc                                              	int3
  773ad7:	cc                                              	int3
  773ad8:	cc                                              	int3
  773ad9:	cc                                              	int3
  773ada:	cc                                              	int3
  773adb:	cc                                              	int3
  773adc:	cc                                              	int3
  773add:	cc                                              	int3
  773ade:	cc                                              	int3
  773adf:	cc                                              	int3
