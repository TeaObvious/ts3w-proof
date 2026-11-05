# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773c40 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeName)
Paired Ghidra pseudocode: 00773C40_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeName.c
Window: [0x00773c40, 0x00773da0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773c40: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 3f 57 ff
00773c50: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
00773c60: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00773c70: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00773c80: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773c90: 5c 24 28 e8 28 00 d8 ff 8d 4c 24 20 83 c4 10 3b
00773ca0: c1 74 14 8b 50 04 8b 00 52 50 e8 61 1c c9 ff 8b
00773cb0: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773cc0: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 10 08 d7 ff
00773cd0: 83 c4 04 57 e8 57 0d 2b 00 83 c4 04 85 c0 0f 84
00773ce0: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 5d
00773cf0: fe d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00773d00: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00773d10: 13 00 66 c7 44 24 2c 0b 00 e8 a2 1c d8 ff 8b 4c
00773d20: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
00773d30: 85 c0 74 09 50 e8 a6 07 d7 ff 83 c4 04 8b 16 8b
00773d40: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
00773d50: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
00773d60: 00 8d 4c 24 14 e8 f6 19 d8 ff 2b df 83 fb 01 7e
00773d70: 0d 85 ff 74 09 57 e8 65 07 d7 ff 83 c4 04 8b 44
00773d80: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
00773d90: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773c40 <.text+0x372c40>:
  773c40:	83 ec 34                                        	sub    esp,0x34
  773c43:	56                                              	push   esi
  773c44:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  773c4c:	e8 3f 57 ff ff                                  	call   0x769390
  773c51:	8b f0                                           	mov    esi,eax
  773c53:	85 f6                                           	test   esi,esi
  773c55:	0f 84 2e 01 00 00                               	je     0x773d89
  773c5b:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  773c5f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773c61:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773c64:	53                                              	push   ebx
  773c65:	57                                              	push   edi
  773c66:	51                                              	push   ecx
  773c67:	8b ce                                           	mov    ecx,esi
  773c69:	ff d2                                           	call   edx
  773c6b:	6a 00                                           	push   0x0
  773c6d:	6a ff                                           	push   0xffffffff
  773c6f:	50                                              	push   eax
  773c70:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  773c74:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  773c79:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  773c7e:	50                                              	push   eax
  773c7f:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  773c87:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  773c8b:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  773c8f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773c93:	e8 28 00 d8 ff                                  	call   0x4f3cc0
  773c98:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773c9c:	83 c4 10                                        	add    esp,0x10
  773c9f:	3b c1                                           	cmp    eax,ecx
  773ca1:	74 14                                           	je     0x773cb7
  773ca3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773ca6:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773ca8:	52                                              	push   edx
  773ca9:	50                                              	push   eax
  773caa:	e8 61 1c c9 ff                                  	call   0x405910
  773caf:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773cb3:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773cb7:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773cbb:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773cbf:	2b c8                                           	sub    ecx,eax
  773cc1:	83 f9 01                                        	cmp    ecx,0x1
  773cc4:	7e 0d                                           	jle    0x773cd3
  773cc6:	85 c0                                           	test   eax,eax
  773cc8:	74 09                                           	je     0x773cd3
  773cca:	50                                              	push   eax
  773ccb:	e8 10 08 d7 ff                                  	call   0x4e44e0
  773cd0:	83 c4 04                                        	add    esp,0x4
  773cd3:	57                                              	push   edi
  773cd4:	e8 57 0d 2b 00                                  	call   0xa24a30
  773cd9:	83 c4 04                                        	add    esp,0x4
  773cdc:	85 c0                                           	test   eax,eax
  773cde:	0f 84 86 00 00 00                               	je     0x773d6a
  773ce4:	6a 00                                           	push   0x0
  773ce6:	6a ff                                           	push   0xffffffff
  773ce8:	50                                              	push   eax
  773ce9:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  773ced:	52                                              	push   edx
  773cee:	e8 5d fe d7 ff                                  	call   0x4f3b50
  773cf3:	83 c4 10                                        	add    esp,0x10
  773cf6:	6a 01                                           	push   0x1
  773cf8:	6a 10                                           	push   0x10
  773cfa:	50                                              	push   eax
  773cfb:	6a 09                                           	push   0x9
  773cfd:	6a 13                                           	push   0x13
  773cff:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  773d03:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773d0b:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  773d12:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773d19:	e8 a2 1c d8 ff                                  	call   0x4f59c0
  773d1e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773d22:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773d26:	2b c8                                           	sub    ecx,eax
  773d28:	83 e1 fe                                        	and    ecx,0xfffffffe
  773d2b:	83 f9 02                                        	cmp    ecx,0x2
  773d2e:	7e 0d                                           	jle    0x773d3d
  773d30:	85 c0                                           	test   eax,eax
  773d32:	74 09                                           	je     0x773d3d
  773d34:	50                                              	push   eax
  773d35:	e8 a6 07 d7 ff                                  	call   0x4e44e0
  773d3a:	83 c4 04                                        	add    esp,0x4
  773d3d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  773d3f:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  773d42:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  773d46:	50                                              	push   eax
  773d47:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773d4b:	51                                              	push   ecx
  773d4c:	8b ce                                           	mov    ecx,esi
  773d4e:	ff d2                                           	call   edx
  773d50:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  773d55:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  773d5d:	74 0b                                           	je     0x773d6a
  773d5f:	6a 00                                           	push   0x0
  773d61:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773d65:	e8 f6 19 d8 ff                                  	call   0x4f5760
  773d6a:	2b df                                           	sub    ebx,edi
  773d6c:	83 fb 01                                        	cmp    ebx,0x1
  773d6f:	7e 0d                                           	jle    0x773d7e
  773d71:	85 ff                                           	test   edi,edi
  773d73:	74 09                                           	je     0x773d7e
  773d75:	57                                              	push   edi
  773d76:	e8 65 07 d7 ff                                  	call   0x4e44e0
  773d7b:	83 c4 04                                        	add    esp,0x4
  773d7e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  773d82:	5f                                              	pop    edi
  773d83:	5b                                              	pop    ebx
  773d84:	5e                                              	pop    esi
  773d85:	83 c4 34                                        	add    esp,0x34
  773d88:	c3                                              	ret
  773d89:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  773d8d:	5e                                              	pop    esi
  773d8e:	83 c4 34                                        	add    esp,0x34
  773d91:	c3                                              	ret
  773d92:	cc                                              	int3
  773d93:	cc                                              	int3
  773d94:	cc                                              	int3
  773d95:	cc                                              	int3
  773d96:	cc                                              	int3
  773d97:	cc                                              	int3
  773d98:	cc                                              	int3
  773d99:	cc                                              	int3
  773d9a:	cc                                              	int3
  773d9b:	cc                                              	int3
  773d9c:	cc                                              	int3
  773d9d:	cc                                              	int3
  773d9e:	cc                                              	int3
  773d9f:	cc                                              	int3
