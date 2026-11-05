# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771d90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeGrayImageKey)
Paired Ghidra pseudocode: 00771D90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeGrayImageKey.c
Window: [0x00771d90, 0x00771e70) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771d90: 83 ec 20 e8 f8 75 ff ff 85 c0 0f 84 be 00 00 00
00771da0: 8b 4c 24 28 8b 10 8b 52 58 53 57 51 8b c8 ff d2
00771db0: 6a 00 6a ff 50 8d 44 24 24 bb 54 8e 1c 01 bf 55
00771dc0: 8e 1c 01 50 c7 44 24 24 bc 9c 00 01 89 5c 24 18
00771dd0: 89 5c 24 1c 89 7c 24 20 e8 e3 1e d8 ff 8d 4c 24
00771de0: 18 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50 e8
00771df0: 1c 3b c9 ff 8b 7c 24 10 8b 5c 24 08 8b 4c 24 20
00771e00: 8b 44 24 18 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00771e10: e8 cb 26 d7 ff 83 c4 04 56 8d 54 24 1c 53 52 e8
00771e20: cc 3a 2b 00 8b 74 24 38 8b 08 8b 50 04 89 0e 8b
00771e30: 48 08 89 56 04 8b 50 0c 2b fb 83 c4 08 83 ff 01
00771e40: 89 4e 08 89 56 0c 7e 0d 85 db 74 09 53 e8 8e 26
00771e50: d7 ff 83 c4 04 8b c6 5e 5f 5b 83 c4 20 c3 8b 44
00771e60: 24 24 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771d90 <.text+0x370d90>:
  771d90:	83 ec 20                                        	sub    esp,0x20
  771d93:	e8 f8 75 ff ff                                  	call   0x769390
  771d98:	85 c0                                           	test   eax,eax
  771d9a:	0f 84 be 00 00 00                               	je     0x771e5e
  771da0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  771da4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771da6:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771da9:	53                                              	push   ebx
  771daa:	57                                              	push   edi
  771dab:	51                                              	push   ecx
  771dac:	8b c8                                           	mov    ecx,eax
  771dae:	ff d2                                           	call   edx
  771db0:	6a 00                                           	push   0x0
  771db2:	6a ff                                           	push   0xffffffff
  771db4:	50                                              	push   eax
  771db5:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  771db9:	bb 54 8e 1c 01                                  	mov    ebx,0x11c8e54
  771dbe:	bf 55 8e 1c 01                                  	mov    edi,0x11c8e55
  771dc3:	50                                              	push   eax
  771dc4:	c7 44 24 24 bc 9c 00 01                         	mov    DWORD PTR [esp+0x24],0x1009cbc
  771dcc:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  771dd0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  771dd4:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771dd8:	e8 e3 1e d8 ff                                  	call   0x4f3cc0
  771ddd:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  771de1:	83 c4 10                                        	add    esp,0x10
  771de4:	3b c1                                           	cmp    eax,ecx
  771de6:	74 14                                           	je     0x771dfc
  771de8:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771deb:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771ded:	52                                              	push   edx
  771dee:	50                                              	push   eax
  771def:	e8 1c 3b c9 ff                                  	call   0x405910
  771df4:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  771df8:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  771dfc:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  771e00:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  771e04:	2b c8                                           	sub    ecx,eax
  771e06:	83 f9 01                                        	cmp    ecx,0x1
  771e09:	7e 0d                                           	jle    0x771e18
  771e0b:	85 c0                                           	test   eax,eax
  771e0d:	74 09                                           	je     0x771e18
  771e0f:	50                                              	push   eax
  771e10:	e8 cb 26 d7 ff                                  	call   0x4e44e0
  771e15:	83 c4 04                                        	add    esp,0x4
  771e18:	56                                              	push   esi
  771e19:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  771e1d:	53                                              	push   ebx
  771e1e:	52                                              	push   edx
  771e1f:	e8 cc 3a 2b 00                                  	call   0xa258f0
  771e24:	8b 74 24 38                                     	mov    esi,DWORD PTR [esp+0x38]
  771e28:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  771e2a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771e2d:	89 0e                                           	mov    DWORD PTR [esi],ecx
  771e2f:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  771e32:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  771e35:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  771e38:	2b fb                                           	sub    edi,ebx
  771e3a:	83 c4 08                                        	add    esp,0x8
  771e3d:	83 ff 01                                        	cmp    edi,0x1
  771e40:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  771e43:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  771e46:	7e 0d                                           	jle    0x771e55
  771e48:	85 db                                           	test   ebx,ebx
  771e4a:	74 09                                           	je     0x771e55
  771e4c:	53                                              	push   ebx
  771e4d:	e8 8e 26 d7 ff                                  	call   0x4e44e0
  771e52:	83 c4 04                                        	add    esp,0x4
  771e55:	8b c6                                           	mov    eax,esi
  771e57:	5e                                              	pop    esi
  771e58:	5f                                              	pop    edi
  771e59:	5b                                              	pop    ebx
  771e5a:	83 c4 20                                        	add    esp,0x20
  771e5d:	c3                                              	ret
  771e5e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  771e62:	83 c4 20                                        	add    esp,0x20
  771e65:	c3                                              	ret
  771e66:	cc                                              	int3
  771e67:	cc                                              	int3
  771e68:	cc                                              	int3
  771e69:	cc                                              	int3
  771e6a:	cc                                              	int3
  771e6b:	cc                                              	int3
  771e6c:	cc                                              	int3
  771e6d:	cc                                              	int3
  771e6e:	cc                                              	int3
  771e6f:	cc                                              	int3
