# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00778cd0 (ScriptCore.ThumbnailManager::ThumbnailManager_GenerateSculpture)
Paired Ghidra pseudocode: 00778CD0_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateSculpture.c
Window: [0x00778cd0, 0x00778e20) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00778e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00778cd0: 83 ec 34 53 55 56 57 e8 b4 06 ff ff 8b f0 8b 06
00778ce0: 8b 90 18 01 00 00 8b ce ff d2 8b e8 a1 30 ec 1e
00778cf0: 01 85 c0 8b da 89 44 24 10 0f 84 9e 00 00 00 6a
00778d00: 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8 ed
00778d10: b7 d6 ff 83 c4 18 85 c0 74 72 8b 4c 24 58 51 53
00778d20: 55 8b c8 e8 48 ef ff ff 8b f8 85 ff 74 09 8b 17
00778d30: 8b 42 04 8b cf ff d0 57 8d 4c 24 18 51 8d 4c 24
00778d40: 50 e8 9a 33 ff ff 8b 4c 24 14 50 e8 20 59 5e 00
00778d50: 84 c0 74 3c 8b 44 24 58 8b 16 8b 92 20 01 00 00
00778d60: 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90 1c
00778d70: 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50 08
00778d80: 8b cf ff d2 5f 5e 5d 5b 83 c4 34 c3 33 ff eb a7
00778d90: 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54 24
00778da0: 58 6a 00 8d 4c 24 28 51 53 bf f4 a6 fb 00 89 7c
00778db0: 24 30 c6 44 24 40 00 66 c7 44 24 3a 01 00 66 c7
00778dc0: 44 24 38 00 00 8b 06 8b 80 30 01 00 00 55 52 8b
00778dd0: ce ff d0 f6 44 24 2c 04 89 7c 24 24 74 0b 6a 00
00778de0: 8d 4c 24 28 e8 77 c9 d7 ff 5f 5e 5d 5b 83 c4 34
00778df0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00778e00: 83 e9 24 e9 08 8e 74 00 cc cc cc cc cc cc cc cc
00778e10: 83 e9 24 e9 68 16 f9 ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00778cd0 <.text+0x377cd0>:
  778cd0:	83 ec 34                                        	sub    esp,0x34
  778cd3:	53                                              	push   ebx
  778cd4:	55                                              	push   ebp
  778cd5:	56                                              	push   esi
  778cd6:	57                                              	push   edi
  778cd7:	e8 b4 06 ff ff                                  	call   0x769390
  778cdc:	8b f0                                           	mov    esi,eax
  778cde:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778ce0:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  778ce6:	8b ce                                           	mov    ecx,esi
  778ce8:	ff d2                                           	call   edx
  778cea:	8b e8                                           	mov    ebp,eax
  778cec:	a1 30 ec 1e 01                                  	mov    eax,ds:0x11eec30
  778cf1:	85 c0                                           	test   eax,eax
  778cf3:	8b da                                           	mov    ebx,edx
  778cf5:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  778cf9:	0f 84 9e 00 00 00                               	je     0x778d9d
  778cff:	6a 00                                           	push   0x0
  778d01:	6a 00                                           	push   0x0
  778d03:	6a 00                                           	push   0x0
  778d05:	6a 00                                           	push   0x0
  778d07:	68 44 e2 00 01                                  	push   0x100e244
  778d0c:	6a 38                                           	push   0x38
  778d0e:	e8 ed b7 d6 ff                                  	call   0x4e4500
  778d13:	83 c4 18                                        	add    esp,0x18
  778d16:	85 c0                                           	test   eax,eax
  778d18:	74 72                                           	je     0x778d8c
  778d1a:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
  778d1e:	51                                              	push   ecx
  778d1f:	53                                              	push   ebx
  778d20:	55                                              	push   ebp
  778d21:	8b c8                                           	mov    ecx,eax
  778d23:	e8 48 ef ff ff                                  	call   0x777c70
  778d28:	8b f8                                           	mov    edi,eax
  778d2a:	85 ff                                           	test   edi,edi
  778d2c:	74 09                                           	je     0x778d37
  778d2e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778d30:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778d33:	8b cf                                           	mov    ecx,edi
  778d35:	ff d0                                           	call   eax
  778d37:	57                                              	push   edi
  778d38:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778d3c:	51                                              	push   ecx
  778d3d:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  778d41:	e8 9a 33 ff ff                                  	call   0x76c0e0
  778d46:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  778d4a:	50                                              	push   eax
  778d4b:	e8 20 59 5e 00                                  	call   0xd5e670
  778d50:	84 c0                                           	test   al,al
  778d52:	74 3c                                           	je     0x778d90
  778d54:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  778d58:	8b 16                                           	mov    edx,DWORD PTR [esi]
  778d5a:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  778d60:	6a 00                                           	push   0x0
  778d62:	50                                              	push   eax
  778d63:	6a ff                                           	push   0xffffffff
  778d65:	53                                              	push   ebx
  778d66:	55                                              	push   ebp
  778d67:	8b ce                                           	mov    ecx,esi
  778d69:	ff d2                                           	call   edx
  778d6b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778d6d:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  778d73:	8b ce                                           	mov    ecx,esi
  778d75:	ff d2                                           	call   edx
  778d77:	85 ff                                           	test   edi,edi
  778d79:	74 6e                                           	je     0x778de9
  778d7b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778d7d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778d80:	8b cf                                           	mov    ecx,edi
  778d82:	ff d2                                           	call   edx
  778d84:	5f                                              	pop    edi
  778d85:	5e                                              	pop    esi
  778d86:	5d                                              	pop    ebp
  778d87:	5b                                              	pop    ebx
  778d88:	83 c4 34                                        	add    esp,0x34
  778d8b:	c3                                              	ret
  778d8c:	33 ff                                           	xor    edi,edi
  778d8e:	eb a7                                           	jmp    0x778d37
  778d90:	85 ff                                           	test   edi,edi
  778d92:	74 09                                           	je     0x778d9d
  778d94:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778d96:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778d99:	8b cf                                           	mov    ecx,edi
  778d9b:	ff d2                                           	call   edx
  778d9d:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  778da1:	6a 00                                           	push   0x0
  778da3:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  778da7:	51                                              	push   ecx
  778da8:	53                                              	push   ebx
  778da9:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  778dae:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  778db2:	c6 44 24 40 00                                  	mov    BYTE PTR [esp+0x40],0x0
  778db7:	66 c7 44 24 3a 01 00                            	mov    WORD PTR [esp+0x3a],0x1
  778dbe:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  778dc5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778dc7:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  778dcd:	55                                              	push   ebp
  778dce:	52                                              	push   edx
  778dcf:	8b ce                                           	mov    ecx,esi
  778dd1:	ff d0                                           	call   eax
  778dd3:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  778dd8:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  778ddc:	74 0b                                           	je     0x778de9
  778dde:	6a 00                                           	push   0x0
  778de0:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  778de4:	e8 77 c9 d7 ff                                  	call   0x4f5760
  778de9:	5f                                              	pop    edi
  778dea:	5e                                              	pop    esi
  778deb:	5d                                              	pop    ebp
  778dec:	5b                                              	pop    ebx
  778ded:	83 c4 34                                        	add    esp,0x34
  778df0:	c3                                              	ret
  778df1:	cc                                              	int3
  778df2:	cc                                              	int3
  778df3:	cc                                              	int3
  778df4:	cc                                              	int3
  778df5:	cc                                              	int3
  778df6:	cc                                              	int3
  778df7:	cc                                              	int3
  778df8:	cc                                              	int3
  778df9:	cc                                              	int3
  778dfa:	cc                                              	int3
  778dfb:	cc                                              	int3
  778dfc:	cc                                              	int3
  778dfd:	cc                                              	int3
  778dfe:	cc                                              	int3
  778dff:	cc                                              	int3
  778e00:	83 e9 24                                        	sub    ecx,0x24
  778e03:	e9 08 8e 74 00                                  	jmp    0xec1c10
  778e08:	cc                                              	int3
  778e09:	cc                                              	int3
  778e0a:	cc                                              	int3
  778e0b:	cc                                              	int3
  778e0c:	cc                                              	int3
  778e0d:	cc                                              	int3
  778e0e:	cc                                              	int3
  778e0f:	cc                                              	int3
  778e10:	83 e9 24                                        	sub    ecx,0x24
  778e13:	e9 68 16 f9 ff                                  	jmp    0x70a480
  778e18:	cc                                              	int3
  778e19:	cc                                              	int3
  778e1a:	cc                                              	int3
  778e1b:	cc                                              	int3
  778e1c:	cc                                              	int3
  778e1d:	cc                                              	int3
  778e1e:	cc                                              	int3
  778e1f:	cc                                              	int3
