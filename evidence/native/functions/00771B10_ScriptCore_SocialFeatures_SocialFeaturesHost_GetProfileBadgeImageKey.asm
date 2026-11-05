# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771b10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKey)
Paired Ghidra pseudocode: 00771B10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeImageKey.c
Window: [0x00771b10, 0x00771bf0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771b10: 83 ec 20 e8 78 78 ff ff 85 c0 0f 84 c8 00 00 00
00771b20: 8b 4c 24 30 8b 10 8b 52 58 53 57 51 8b c8 ff d2
00771b30: 6a 00 6a ff 50 8d 44 24 24 bb 54 8e 1c 01 bf 55
00771b40: 8e 1c 01 50 c7 44 24 24 bc 9c 00 01 89 5c 24 18
00771b50: 89 5c 24 1c 89 7c 24 20 e8 63 21 d8 ff 8d 4c 24
00771b60: 18 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50 e8
00771b70: 9c 3d c9 ff 8b 7c 24 10 8b 5c 24 08 8b 4c 24 20
00771b80: 8b 44 24 18 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00771b90: e8 4b 29 d7 ff 83 c4 04 8b 54 24 34 8b 44 24 30
00771ba0: 56 53 52 50 8d 4c 24 28 51 e8 42 3b 2b 00 8b 74
00771bb0: 24 40 8b 10 8b 48 04 89 16 8b 50 08 8b 40 0c 89
00771bc0: 4e 04 2b fb 83 c4 10 83 ff 01 89 56 08 89 46 0c
00771bd0: 7e 0d 85 db 74 09 53 e8 04 29 d7 ff 83 c4 04 8b
00771be0: c6 5e 5f 5b 83 c4 20 c3 8b 44 24 24 83 c4 20 c3

LINEAR DISASSEMBLY
00771b10 <.text+0x370b10>:
  771b10:	83 ec 20                                        	sub    esp,0x20
  771b13:	e8 78 78 ff ff                                  	call   0x769390
  771b18:	85 c0                                           	test   eax,eax
  771b1a:	0f 84 c8 00 00 00                               	je     0x771be8
  771b20:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  771b24:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771b26:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771b29:	53                                              	push   ebx
  771b2a:	57                                              	push   edi
  771b2b:	51                                              	push   ecx
  771b2c:	8b c8                                           	mov    ecx,eax
  771b2e:	ff d2                                           	call   edx
  771b30:	6a 00                                           	push   0x0
  771b32:	6a ff                                           	push   0xffffffff
  771b34:	50                                              	push   eax
  771b35:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  771b39:	bb 54 8e 1c 01                                  	mov    ebx,0x11c8e54
  771b3e:	bf 55 8e 1c 01                                  	mov    edi,0x11c8e55
  771b43:	50                                              	push   eax
  771b44:	c7 44 24 24 bc 9c 00 01                         	mov    DWORD PTR [esp+0x24],0x1009cbc
  771b4c:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  771b50:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  771b54:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771b58:	e8 63 21 d8 ff                                  	call   0x4f3cc0
  771b5d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  771b61:	83 c4 10                                        	add    esp,0x10
  771b64:	3b c1                                           	cmp    eax,ecx
  771b66:	74 14                                           	je     0x771b7c
  771b68:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771b6b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771b6d:	52                                              	push   edx
  771b6e:	50                                              	push   eax
  771b6f:	e8 9c 3d c9 ff                                  	call   0x405910
  771b74:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  771b78:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  771b7c:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  771b80:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  771b84:	2b c8                                           	sub    ecx,eax
  771b86:	83 f9 01                                        	cmp    ecx,0x1
  771b89:	7e 0d                                           	jle    0x771b98
  771b8b:	85 c0                                           	test   eax,eax
  771b8d:	74 09                                           	je     0x771b98
  771b8f:	50                                              	push   eax
  771b90:	e8 4b 29 d7 ff                                  	call   0x4e44e0
  771b95:	83 c4 04                                        	add    esp,0x4
  771b98:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  771b9c:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  771ba0:	56                                              	push   esi
  771ba1:	53                                              	push   ebx
  771ba2:	52                                              	push   edx
  771ba3:	50                                              	push   eax
  771ba4:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  771ba8:	51                                              	push   ecx
  771ba9:	e8 42 3b 2b 00                                  	call   0xa256f0
  771bae:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
  771bb2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771bb4:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  771bb7:	89 16                                           	mov    DWORD PTR [esi],edx
  771bb9:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  771bbc:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  771bbf:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  771bc2:	2b fb                                           	sub    edi,ebx
  771bc4:	83 c4 10                                        	add    esp,0x10
  771bc7:	83 ff 01                                        	cmp    edi,0x1
  771bca:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  771bcd:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  771bd0:	7e 0d                                           	jle    0x771bdf
  771bd2:	85 db                                           	test   ebx,ebx
  771bd4:	74 09                                           	je     0x771bdf
  771bd6:	53                                              	push   ebx
  771bd7:	e8 04 29 d7 ff                                  	call   0x4e44e0
  771bdc:	83 c4 04                                        	add    esp,0x4
  771bdf:	8b c6                                           	mov    eax,esi
  771be1:	5e                                              	pop    esi
  771be2:	5f                                              	pop    edi
  771be3:	5b                                              	pop    ebx
  771be4:	83 c4 20                                        	add    esp,0x20
  771be7:	c3                                              	ret
  771be8:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  771bec:	83 c4 20                                        	add    esp,0x20
  771bef:	c3                                              	ret
