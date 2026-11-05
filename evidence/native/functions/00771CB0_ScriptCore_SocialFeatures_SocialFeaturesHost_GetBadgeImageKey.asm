# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771cb0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeImageKey)
Paired Ghidra pseudocode: 00771CB0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeImageKey.c
Window: [0x00771cb0, 0x00771d90) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771cb0: 83 ec 20 e8 d8 76 ff ff 85 c0 0f 84 be 00 00 00
00771cc0: 8b 4c 24 28 8b 10 8b 52 58 53 57 51 8b c8 ff d2
00771cd0: 6a 00 6a ff 50 8d 44 24 24 bb 54 8e 1c 01 bf 55
00771ce0: 8e 1c 01 50 c7 44 24 24 bc 9c 00 01 89 5c 24 18
00771cf0: 89 5c 24 1c 89 7c 24 20 e8 c3 1f d8 ff 8d 4c 24
00771d00: 18 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50 e8
00771d10: fc 3b c9 ff 8b 7c 24 10 8b 5c 24 08 8b 4c 24 20
00771d20: 8b 44 24 18 2b c8 83 f9 01 7e 0d 85 c0 74 09 50
00771d30: e8 ab 27 d7 ff 83 c4 04 56 8d 54 24 1c 53 52 e8
00771d40: 0c 3b 2b 00 8b 74 24 38 8b 08 8b 50 04 89 0e 8b
00771d50: 48 08 89 56 04 8b 50 0c 2b fb 83 c4 08 83 ff 01
00771d60: 89 4e 08 89 56 0c 7e 0d 85 db 74 09 53 e8 6e 27
00771d70: d7 ff 83 c4 04 8b c6 5e 5f 5b 83 c4 20 c3 8b 44
00771d80: 24 24 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771cb0 <.text+0x370cb0>:
  771cb0:	83 ec 20                                        	sub    esp,0x20
  771cb3:	e8 d8 76 ff ff                                  	call   0x769390
  771cb8:	85 c0                                           	test   eax,eax
  771cba:	0f 84 be 00 00 00                               	je     0x771d7e
  771cc0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  771cc4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771cc6:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771cc9:	53                                              	push   ebx
  771cca:	57                                              	push   edi
  771ccb:	51                                              	push   ecx
  771ccc:	8b c8                                           	mov    ecx,eax
  771cce:	ff d2                                           	call   edx
  771cd0:	6a 00                                           	push   0x0
  771cd2:	6a ff                                           	push   0xffffffff
  771cd4:	50                                              	push   eax
  771cd5:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  771cd9:	bb 54 8e 1c 01                                  	mov    ebx,0x11c8e54
  771cde:	bf 55 8e 1c 01                                  	mov    edi,0x11c8e55
  771ce3:	50                                              	push   eax
  771ce4:	c7 44 24 24 bc 9c 00 01                         	mov    DWORD PTR [esp+0x24],0x1009cbc
  771cec:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  771cf0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  771cf4:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771cf8:	e8 c3 1f d8 ff                                  	call   0x4f3cc0
  771cfd:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  771d01:	83 c4 10                                        	add    esp,0x10
  771d04:	3b c1                                           	cmp    eax,ecx
  771d06:	74 14                                           	je     0x771d1c
  771d08:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771d0b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771d0d:	52                                              	push   edx
  771d0e:	50                                              	push   eax
  771d0f:	e8 fc 3b c9 ff                                  	call   0x405910
  771d14:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  771d18:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  771d1c:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  771d20:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  771d24:	2b c8                                           	sub    ecx,eax
  771d26:	83 f9 01                                        	cmp    ecx,0x1
  771d29:	7e 0d                                           	jle    0x771d38
  771d2b:	85 c0                                           	test   eax,eax
  771d2d:	74 09                                           	je     0x771d38
  771d2f:	50                                              	push   eax
  771d30:	e8 ab 27 d7 ff                                  	call   0x4e44e0
  771d35:	83 c4 04                                        	add    esp,0x4
  771d38:	56                                              	push   esi
  771d39:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  771d3d:	53                                              	push   ebx
  771d3e:	52                                              	push   edx
  771d3f:	e8 0c 3b 2b 00                                  	call   0xa25850
  771d44:	8b 74 24 38                                     	mov    esi,DWORD PTR [esp+0x38]
  771d48:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  771d4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771d4d:	89 0e                                           	mov    DWORD PTR [esi],ecx
  771d4f:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  771d52:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  771d55:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  771d58:	2b fb                                           	sub    edi,ebx
  771d5a:	83 c4 08                                        	add    esp,0x8
  771d5d:	83 ff 01                                        	cmp    edi,0x1
  771d60:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  771d63:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  771d66:	7e 0d                                           	jle    0x771d75
  771d68:	85 db                                           	test   ebx,ebx
  771d6a:	74 09                                           	je     0x771d75
  771d6c:	53                                              	push   ebx
  771d6d:	e8 6e 27 d7 ff                                  	call   0x4e44e0
  771d72:	83 c4 04                                        	add    esp,0x4
  771d75:	8b c6                                           	mov    eax,esi
  771d77:	5e                                              	pop    esi
  771d78:	5f                                              	pop    edi
  771d79:	5b                                              	pop    ebx
  771d7a:	83 c4 20                                        	add    esp,0x20
  771d7d:	c3                                              	ret
  771d7e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  771d82:	83 c4 20                                        	add    esp,0x20
  771d85:	c3                                              	ret
  771d86:	cc                                              	int3
  771d87:	cc                                              	int3
  771d88:	cc                                              	int3
  771d89:	cc                                              	int3
  771d8a:	cc                                              	int3
  771d8b:	cc                                              	int3
  771d8c:	cc                                              	int3
  771d8d:	cc                                              	int3
  771d8e:	cc                                              	int3
  771d8f:	cc                                              	int3
