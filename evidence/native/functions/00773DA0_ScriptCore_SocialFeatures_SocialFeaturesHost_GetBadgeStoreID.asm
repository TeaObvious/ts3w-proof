# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773da0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeStoreID)
Paired Ghidra pseudocode: 00773DA0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeStoreID.c
Window: [0x00773da0, 0x00773f00) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773da0: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 df 55 ff
00773db0: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
00773dc0: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00773dd0: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00773de0: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773df0: 5c 24 28 e8 c8 fe d7 ff 8d 4c 24 20 83 c4 10 3b
00773e00: c1 74 14 8b 50 04 8b 00 52 50 e8 01 1b c9 ff 8b
00773e10: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773e20: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 b0 06 d7 ff
00773e30: 83 c4 04 57 e8 f7 0c 2b 00 83 c4 04 85 c0 0f 84
00773e40: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 fd
00773e50: fc d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00773e60: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00773e70: 13 00 66 c7 44 24 2c 0b 00 e8 42 1b d8 ff 8b 4c
00773e80: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
00773e90: 85 c0 74 09 50 e8 46 06 d7 ff 83 c4 04 8b 16 8b
00773ea0: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
00773eb0: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
00773ec0: 00 8d 4c 24 14 e8 96 18 d8 ff 2b df 83 fb 01 7e
00773ed0: 0d 85 ff 74 09 57 e8 05 06 d7 ff 83 c4 04 8b 44
00773ee0: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
00773ef0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773da0 <.text+0x372da0>:
  773da0:	83 ec 34                                        	sub    esp,0x34
  773da3:	56                                              	push   esi
  773da4:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  773dac:	e8 df 55 ff ff                                  	call   0x769390
  773db1:	8b f0                                           	mov    esi,eax
  773db3:	85 f6                                           	test   esi,esi
  773db5:	0f 84 2e 01 00 00                               	je     0x773ee9
  773dbb:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  773dbf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773dc1:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773dc4:	53                                              	push   ebx
  773dc5:	57                                              	push   edi
  773dc6:	51                                              	push   ecx
  773dc7:	8b ce                                           	mov    ecx,esi
  773dc9:	ff d2                                           	call   edx
  773dcb:	6a 00                                           	push   0x0
  773dcd:	6a ff                                           	push   0xffffffff
  773dcf:	50                                              	push   eax
  773dd0:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  773dd4:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  773dd9:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  773dde:	50                                              	push   eax
  773ddf:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  773de7:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  773deb:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  773def:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773df3:	e8 c8 fe d7 ff                                  	call   0x4f3cc0
  773df8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773dfc:	83 c4 10                                        	add    esp,0x10
  773dff:	3b c1                                           	cmp    eax,ecx
  773e01:	74 14                                           	je     0x773e17
  773e03:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773e06:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773e08:	52                                              	push   edx
  773e09:	50                                              	push   eax
  773e0a:	e8 01 1b c9 ff                                  	call   0x405910
  773e0f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773e13:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773e17:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773e1b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773e1f:	2b c8                                           	sub    ecx,eax
  773e21:	83 f9 01                                        	cmp    ecx,0x1
  773e24:	7e 0d                                           	jle    0x773e33
  773e26:	85 c0                                           	test   eax,eax
  773e28:	74 09                                           	je     0x773e33
  773e2a:	50                                              	push   eax
  773e2b:	e8 b0 06 d7 ff                                  	call   0x4e44e0
  773e30:	83 c4 04                                        	add    esp,0x4
  773e33:	57                                              	push   edi
  773e34:	e8 f7 0c 2b 00                                  	call   0xa24b30
  773e39:	83 c4 04                                        	add    esp,0x4
  773e3c:	85 c0                                           	test   eax,eax
  773e3e:	0f 84 86 00 00 00                               	je     0x773eca
  773e44:	6a 00                                           	push   0x0
  773e46:	6a ff                                           	push   0xffffffff
  773e48:	50                                              	push   eax
  773e49:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  773e4d:	52                                              	push   edx
  773e4e:	e8 fd fc d7 ff                                  	call   0x4f3b50
  773e53:	83 c4 10                                        	add    esp,0x10
  773e56:	6a 01                                           	push   0x1
  773e58:	6a 10                                           	push   0x10
  773e5a:	50                                              	push   eax
  773e5b:	6a 09                                           	push   0x9
  773e5d:	6a 13                                           	push   0x13
  773e5f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  773e63:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773e6b:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  773e72:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773e79:	e8 42 1b d8 ff                                  	call   0x4f59c0
  773e7e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773e82:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773e86:	2b c8                                           	sub    ecx,eax
  773e88:	83 e1 fe                                        	and    ecx,0xfffffffe
  773e8b:	83 f9 02                                        	cmp    ecx,0x2
  773e8e:	7e 0d                                           	jle    0x773e9d
  773e90:	85 c0                                           	test   eax,eax
  773e92:	74 09                                           	je     0x773e9d
  773e94:	50                                              	push   eax
  773e95:	e8 46 06 d7 ff                                  	call   0x4e44e0
  773e9a:	83 c4 04                                        	add    esp,0x4
  773e9d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  773e9f:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  773ea2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  773ea6:	50                                              	push   eax
  773ea7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773eab:	51                                              	push   ecx
  773eac:	8b ce                                           	mov    ecx,esi
  773eae:	ff d2                                           	call   edx
  773eb0:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  773eb5:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  773ebd:	74 0b                                           	je     0x773eca
  773ebf:	6a 00                                           	push   0x0
  773ec1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773ec5:	e8 96 18 d8 ff                                  	call   0x4f5760
  773eca:	2b df                                           	sub    ebx,edi
  773ecc:	83 fb 01                                        	cmp    ebx,0x1
  773ecf:	7e 0d                                           	jle    0x773ede
  773ed1:	85 ff                                           	test   edi,edi
  773ed3:	74 09                                           	je     0x773ede
  773ed5:	57                                              	push   edi
  773ed6:	e8 05 06 d7 ff                                  	call   0x4e44e0
  773edb:	83 c4 04                                        	add    esp,0x4
  773ede:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  773ee2:	5f                                              	pop    edi
  773ee3:	5b                                              	pop    ebx
  773ee4:	5e                                              	pop    esi
  773ee5:	83 c4 34                                        	add    esp,0x34
  773ee8:	c3                                              	ret
  773ee9:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  773eed:	5e                                              	pop    esi
  773eee:	83 c4 34                                        	add    esp,0x34
  773ef1:	c3                                              	ret
  773ef2:	cc                                              	int3
  773ef3:	cc                                              	int3
  773ef4:	cc                                              	int3
  773ef5:	cc                                              	int3
  773ef6:	cc                                              	int3
  773ef7:	cc                                              	int3
  773ef8:	cc                                              	int3
  773ef9:	cc                                              	int3
  773efa:	cc                                              	int3
  773efb:	cc                                              	int3
  773efc:	cc                                              	int3
  773efd:	cc                                              	int3
  773efe:	cc                                              	int3
  773eff:	cc                                              	int3
