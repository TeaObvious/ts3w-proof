# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00c95d90 (ScriptCore.CTProductModularObject::CTProductModularObject_GetResourceKeysImpl)
Paired Ghidra pseudocode: 00C95D90_ScriptCore_CTProductModularObject_CTProductModularObject_GetResourceKeysImpl.c
Window: [0x00c95d90, 0x00c95ec0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00c95ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00c95d90: 83 ec 54 56 8b 74 24 5c 8b c6 25 00 00 00 ff 3d
00c95da0: 00 00 00 54 0f 85 0a 01 00 00 57 e8 e0 35 ad ff
00c95db0: 8b f8 85 ff 0f 84 f9 00 00 00 8b 17 8b 82 cc 00
00c95dc0: 00 00 56 8b cf ff d0 8b f0 85 f6 0f 84 e2 00 00
00c95dd0: 00 8d 4c 24 60 51 8d 4c 24 0c c7 44 24 64 00 ce
00c95de0: 07 01 e8 19 37 b4 ff 8d 54 24 08 52 8b ce e8 5d
00c95df0: fc ff ff 8b 74 24 0c 2b 74 24 08 68 d8 cd 07 01
00c95e00: 6a 00 c1 fe 04 6a 01 c1 e6 04 6a 00 83 c6 04 56
00c95e10: 6a 00 8d 4c 24 48 e8 a5 96 84 ff 6a 01 8d 44 24
00c95e20: 34 50 8d 4c 24 20 e8 b5 35 b4 ff 8d 4c 24 18 51
00c95e30: 8d 4c 24 0c e8 c7 2b b4 ff 84 c0 75 0b 8d 4c 24
00c95e40: 18 e8 4a 1b b4 ff eb 3d 8b 17 8b 82 80 00 00 00
00c95e50: 53 8b 5c 24 68 56 53 8b cf ff d0 8b 44 24 38 85
00c95e60: c0 74 05 8b 40 08 eb 02 33 c0 8b 17 56 6a 00 50
00c95e70: 8b 82 98 00 00 00 53 8b cf ff d0 8d 4c 24 1c e8
00c95e80: 0c 1b b4 ff 5b 8b 4c 24 34 85 c9 c7 44 24 30 00
00c95e90: 6c fb 00 74 05 e8 66 8f 84 ff 8b 44 24 08 85 c0
00c95ea0: c7 44 24 30 04 aa fa 00 74 09 50 e8 30 e6 84 ff
00c95eb0: 83 c4 04 5f 5e 83 c4 54 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00c95d90 <.text+0x894d90>:
  c95d90:	83 ec 54                                        	sub    esp,0x54
  c95d93:	56                                              	push   esi
  c95d94:	8b 74 24 5c                                     	mov    esi,DWORD PTR [esp+0x5c]
  c95d98:	8b c6                                           	mov    eax,esi
  c95d9a:	25 00 00 00 ff                                  	and    eax,0xff000000
  c95d9f:	3d 00 00 00 54                                  	cmp    eax,0x54000000
  c95da4:	0f 85 0a 01 00 00                               	jne    0xc95eb4
  c95daa:	57                                              	push   edi
  c95dab:	e8 e0 35 ad ff                                  	call   0x769390
  c95db0:	8b f8                                           	mov    edi,eax
  c95db2:	85 ff                                           	test   edi,edi
  c95db4:	0f 84 f9 00 00 00                               	je     0xc95eb3
  c95dba:	8b 17                                           	mov    edx,DWORD PTR [edi]
  c95dbc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  c95dc2:	56                                              	push   esi
  c95dc3:	8b cf                                           	mov    ecx,edi
  c95dc5:	ff d0                                           	call   eax
  c95dc7:	8b f0                                           	mov    esi,eax
  c95dc9:	85 f6                                           	test   esi,esi
  c95dcb:	0f 84 e2 00 00 00                               	je     0xc95eb3
  c95dd1:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  c95dd5:	51                                              	push   ecx
  c95dd6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  c95dda:	c7 44 24 64 00 ce 07 01                         	mov    DWORD PTR [esp+0x64],0x107ce00
  c95de2:	e8 19 37 b4 ff                                  	call   0x7d9500
  c95de7:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  c95deb:	52                                              	push   edx
  c95dec:	8b ce                                           	mov    ecx,esi
  c95dee:	e8 5d fc ff ff                                  	call   0xc95a50
  c95df3:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  c95df7:	2b 74 24 08                                     	sub    esi,DWORD PTR [esp+0x8]
  c95dfb:	68 d8 cd 07 01                                  	push   0x107cdd8
  c95e00:	6a 00                                           	push   0x0
  c95e02:	c1 fe 04                                        	sar    esi,0x4
  c95e05:	6a 01                                           	push   0x1
  c95e07:	c1 e6 04                                        	shl    esi,0x4
  c95e0a:	6a 00                                           	push   0x0
  c95e0c:	83 c6 04                                        	add    esi,0x4
  c95e0f:	56                                              	push   esi
  c95e10:	6a 00                                           	push   0x0
  c95e12:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  c95e16:	e8 a5 96 84 ff                                  	call   0x4df4c0
  c95e1b:	6a 01                                           	push   0x1
  c95e1d:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  c95e21:	50                                              	push   eax
  c95e22:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  c95e26:	e8 b5 35 b4 ff                                  	call   0x7d93e0
  c95e2b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  c95e2f:	51                                              	push   ecx
  c95e30:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  c95e34:	e8 c7 2b b4 ff                                  	call   0x7d8a00
  c95e39:	84 c0                                           	test   al,al
  c95e3b:	75 0b                                           	jne    0xc95e48
  c95e3d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  c95e41:	e8 4a 1b b4 ff                                  	call   0x7d7990
  c95e46:	eb 3d                                           	jmp    0xc95e85
  c95e48:	8b 17                                           	mov    edx,DWORD PTR [edi]
  c95e4a:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  c95e50:	53                                              	push   ebx
  c95e51:	8b 5c 24 68                                     	mov    ebx,DWORD PTR [esp+0x68]
  c95e55:	56                                              	push   esi
  c95e56:	53                                              	push   ebx
  c95e57:	8b cf                                           	mov    ecx,edi
  c95e59:	ff d0                                           	call   eax
  c95e5b:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  c95e5f:	85 c0                                           	test   eax,eax
  c95e61:	74 05                                           	je     0xc95e68
  c95e63:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  c95e66:	eb 02                                           	jmp    0xc95e6a
  c95e68:	33 c0                                           	xor    eax,eax
  c95e6a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  c95e6c:	56                                              	push   esi
  c95e6d:	6a 00                                           	push   0x0
  c95e6f:	50                                              	push   eax
  c95e70:	8b 82 98 00 00 00                               	mov    eax,DWORD PTR [edx+0x98]
  c95e76:	53                                              	push   ebx
  c95e77:	8b cf                                           	mov    ecx,edi
  c95e79:	ff d0                                           	call   eax
  c95e7b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  c95e7f:	e8 0c 1b b4 ff                                  	call   0x7d7990
  c95e84:	5b                                              	pop    ebx
  c95e85:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  c95e89:	85 c9                                           	test   ecx,ecx
  c95e8b:	c7 44 24 30 00 6c fb 00                         	mov    DWORD PTR [esp+0x30],0xfb6c00
  c95e93:	74 05                                           	je     0xc95e9a
  c95e95:	e8 66 8f 84 ff                                  	call   0x4dee00
  c95e9a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  c95e9e:	85 c0                                           	test   eax,eax
  c95ea0:	c7 44 24 30 04 aa fa 00                         	mov    DWORD PTR [esp+0x30],0xfaaa04
  c95ea8:	74 09                                           	je     0xc95eb3
  c95eaa:	50                                              	push   eax
  c95eab:	e8 30 e6 84 ff                                  	call   0x4e44e0
  c95eb0:	83 c4 04                                        	add    esp,0x4
  c95eb3:	5f                                              	pop    edi
  c95eb4:	5e                                              	pop    esi
  c95eb5:	83 c4 54                                        	add    esp,0x54
  c95eb8:	c3                                              	ret
  c95eb9:	cc                                              	int3
  c95eba:	cc                                              	int3
  c95ebb:	cc                                              	int3
  c95ebc:	cc                                              	int3
  c95ebd:	cc                                              	int3
  c95ebe:	cc                                              	int3
  c95ebf:	cc                                              	int3
