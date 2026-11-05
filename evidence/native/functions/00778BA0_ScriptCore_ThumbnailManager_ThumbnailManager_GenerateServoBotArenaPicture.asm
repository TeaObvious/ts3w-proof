# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00778ba0 (ScriptCore.ThumbnailManager::ThumbnailManager_GenerateServoBotArenaPicture)
Paired Ghidra pseudocode: 00778BA0_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateServoBotArenaPicture.c
Window: [0x00778ba0, 0x00778cd0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00778cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00778ba0: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
00778bb0: 10 e8 da 07 ff ff 8b f0 8b 06 8b 90 18 01 00 00
00778bc0: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 9e 00 00 00
00778bd0: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
00778be0: 1c b9 d6 ff 83 c4 18 85 c0 74 72 8b 4c 24 44 51
00778bf0: 53 55 8b c8 e8 77 f0 ff ff 8b f8 85 ff 74 09 8b
00778c00: 17 8b 42 04 8b cf ff d0 8b 4c 24 40 8b 54 24 3c
00778c10: 8b 44 24 38 57 51 8b 4c 24 18 52 50 e8 7f 5e 5e
00778c20: 00 84 c0 74 3c 8b 44 24 44 8b 16 8b 92 20 01 00
00778c30: 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90
00778c40: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
00778c50: 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33 ff eb
00778c60: a7 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
00778c70: 24 44 6a 00 8d 4c 24 18 51 53 bf f4 a6 fb 00 89
00778c80: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
00778c90: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
00778ca0: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
00778cb0: 00 8d 4c 24 18 e8 a6 ca d7 ff 5f 5e 5d 5b 83 c4
00778cc0: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00778ba0 <.text+0x377ba0>:
  778ba0:	83 ec 24                                        	sub    esp,0x24
  778ba3:	53                                              	push   ebx
  778ba4:	55                                              	push   ebp
  778ba5:	56                                              	push   esi
  778ba6:	57                                              	push   edi
  778ba7:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  778bad:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  778bb1:	e8 da 07 ff ff                                  	call   0x769390
  778bb6:	8b f0                                           	mov    esi,eax
  778bb8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778bba:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  778bc0:	8b ce                                           	mov    ecx,esi
  778bc2:	ff d2                                           	call   edx
  778bc4:	85 ff                                           	test   edi,edi
  778bc6:	8b e8                                           	mov    ebp,eax
  778bc8:	8b da                                           	mov    ebx,edx
  778bca:	0f 84 9e 00 00 00                               	je     0x778c6e
  778bd0:	6a 00                                           	push   0x0
  778bd2:	6a 00                                           	push   0x0
  778bd4:	6a 00                                           	push   0x0
  778bd6:	6a 00                                           	push   0x0
  778bd8:	68 44 e2 00 01                                  	push   0x100e244
  778bdd:	6a 38                                           	push   0x38
  778bdf:	e8 1c b9 d6 ff                                  	call   0x4e4500
  778be4:	83 c4 18                                        	add    esp,0x18
  778be7:	85 c0                                           	test   eax,eax
  778be9:	74 72                                           	je     0x778c5d
  778beb:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  778bef:	51                                              	push   ecx
  778bf0:	53                                              	push   ebx
  778bf1:	55                                              	push   ebp
  778bf2:	8b c8                                           	mov    ecx,eax
  778bf4:	e8 77 f0 ff ff                                  	call   0x777c70
  778bf9:	8b f8                                           	mov    edi,eax
  778bfb:	85 ff                                           	test   edi,edi
  778bfd:	74 09                                           	je     0x778c08
  778bff:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778c01:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778c04:	8b cf                                           	mov    ecx,edi
  778c06:	ff d0                                           	call   eax
  778c08:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  778c0c:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  778c10:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  778c14:	57                                              	push   edi
  778c15:	51                                              	push   ecx
  778c16:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  778c1a:	52                                              	push   edx
  778c1b:	50                                              	push   eax
  778c1c:	e8 7f 5e 5e 00                                  	call   0xd5eaa0
  778c21:	84 c0                                           	test   al,al
  778c23:	74 3c                                           	je     0x778c61
  778c25:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  778c29:	8b 16                                           	mov    edx,DWORD PTR [esi]
  778c2b:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  778c31:	6a 00                                           	push   0x0
  778c33:	50                                              	push   eax
  778c34:	6a ff                                           	push   0xffffffff
  778c36:	53                                              	push   ebx
  778c37:	55                                              	push   ebp
  778c38:	8b ce                                           	mov    ecx,esi
  778c3a:	ff d2                                           	call   edx
  778c3c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778c3e:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  778c44:	8b ce                                           	mov    ecx,esi
  778c46:	ff d2                                           	call   edx
  778c48:	85 ff                                           	test   edi,edi
  778c4a:	74 6e                                           	je     0x778cba
  778c4c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778c4e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778c51:	8b cf                                           	mov    ecx,edi
  778c53:	ff d2                                           	call   edx
  778c55:	5f                                              	pop    edi
  778c56:	5e                                              	pop    esi
  778c57:	5d                                              	pop    ebp
  778c58:	5b                                              	pop    ebx
  778c59:	83 c4 24                                        	add    esp,0x24
  778c5c:	c3                                              	ret
  778c5d:	33 ff                                           	xor    edi,edi
  778c5f:	eb a7                                           	jmp    0x778c08
  778c61:	85 ff                                           	test   edi,edi
  778c63:	74 09                                           	je     0x778c6e
  778c65:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778c67:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778c6a:	8b cf                                           	mov    ecx,edi
  778c6c:	ff d2                                           	call   edx
  778c6e:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  778c72:	6a 00                                           	push   0x0
  778c74:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778c78:	51                                              	push   ecx
  778c79:	53                                              	push   ebx
  778c7a:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  778c7f:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  778c83:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  778c88:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  778c8f:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  778c96:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778c98:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  778c9e:	55                                              	push   ebp
  778c9f:	52                                              	push   edx
  778ca0:	8b ce                                           	mov    ecx,esi
  778ca2:	ff d0                                           	call   eax
  778ca4:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  778ca9:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  778cad:	74 0b                                           	je     0x778cba
  778caf:	6a 00                                           	push   0x0
  778cb1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778cb5:	e8 a6 ca d7 ff                                  	call   0x4f5760
  778cba:	5f                                              	pop    edi
  778cbb:	5e                                              	pop    esi
  778cbc:	5d                                              	pop    ebp
  778cbd:	5b                                              	pop    ebx
  778cbe:	83 c4 24                                        	add    esp,0x24
  778cc1:	c3                                              	ret
  778cc2:	cc                                              	int3
  778cc3:	cc                                              	int3
  778cc4:	cc                                              	int3
  778cc5:	cc                                              	int3
  778cc6:	cc                                              	int3
  778cc7:	cc                                              	int3
  778cc8:	cc                                              	int3
  778cc9:	cc                                              	int3
  778cca:	cc                                              	int3
  778ccb:	cc                                              	int3
  778ccc:	cc                                              	int3
  778ccd:	cc                                              	int3
  778cce:	cc                                              	int3
  778ccf:	cc                                              	int3
