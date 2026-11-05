# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00747c00 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_StartLauncher)
Paired Ghidra pseudocode: 00747C00_ScriptCore_OnlineFeatures_OnlineFeaturesHost_StartLauncher.c
Window: [0x00747c00, 0x00747e70) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x00747e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00747c00: a1 e0 03 15 01 83 ec 30 53 56 50 6a 01 6a 00 ff
00747c10: 15 14 62 f9 00 8b f0 85 f6 74 19 6a 00 56 ff 15
00747c20: a4 61 f9 00 85 c0 56 0f 95 c3 ff 15 9c 63 f9 00
00747c30: 84 db 74 57 80 7c 24 3c 00 74 4a 6a 00 6a 00 68
00747c40: 50 3f 00 01 68 30 3f 00 01 6a 53 6a 02 e8 be fe
00747c50: 14 00 a1 a0 fc 1c 01 83 c4 18 85 c0 74 17 68 c4
00747c60: a6 fb 00 6a 04 8d 48 f0 6a 01 e8 a1 42 ec ff 5e
00747c70: 5b 83 c4 30 c3 68 c4 a6 fb 00 6a 04 33 c9 6a 01
00747c80: e8 8b 42 ec ff 5e 5b 83 c4 30 c3 68 04 3a 00 01
00747c90: b9 28 50 1d 01 e8 66 9f d9 ff e8 61 6b e4 ff 85
00747ca0: c0 0f 84 3d 01 00 00 80 b8 a8 02 00 00 00 0f 84
00747cb0: 30 01 00 00 68 28 b3 f9 00 ff 15 08 61 f9 00 8b
00747cc0: d8 85 db 75 10 b9 28 50 1d 01 e8 f1 9f d9 ff 5e
00747cd0: 5b 83 c4 30 c3 55 8b 2d 04 61 f9 00 57 68 20 3f
00747ce0: 00 01 53 ff d5 85 c0 74 02 ff d0 68 08 3f 00 01
00747cf0: bf 54 8e 1c 01 68 d4 3e 00 01 be f0 3b 00 01 68
00747d00: dc 7d fe 00 89 74 24 38 89 7c 24 2c 89 7c 24 30
00747d10: c7 44 24 34 56 8e 1c 01 e8 43 2f e4 ff 6a 01 8d
00747d20: 4c 24 30 51 50 e8 06 ed ff ff 8d 54 24 38 52 8d
00747d30: 44 24 4c 89 74 24 38 be 55 8e 1c 01 50 89 7c 24
00747d40: 30 89 7c 24 34 89 74 24 38 e8 a2 c0 da ff 8d 4c
00747d50: 24 30 83 c4 20 3b c1 74 14 8b 50 04 8b 00 52 50
00747d60: e8 ab db cb ff 8b 74 24 18 8b 7c 24 10 8b 4c 24
00747d70: 38 8b 44 24 30 2b c8 83 f9 01 7e 0d 85 c0 74 09
00747d80: 50 e8 5a c7 d9 ff 83 c4 04 68 b8 3e 00 01 53 ff
00747d90: d5 85 c0 74 03 57 ff d0 2b f7 83 fe 01 7e 0d 85
00747da0: ff 74 09 57 e8 37 c7 d9 ff 83 c4 04 8b 54 24 28
00747db0: 8b 44 24 20 2b d0 83 e2 fe 83 fa 02 5f 5d 0f 8e
00747dc0: 90 00 00 00 85 c0 0f 84 88 00 00 00 50 e8 0e c7
00747dd0: d9 ff 83 c4 04 5e b9 28 50 1d 01 5b 83 c4 30 e9
00747de0: dc 9e d9 ff 8b 5c 24 3c 84 db 74 48 ff 15 fc 68
00747df0: f9 00 6a 06 50 ff 15 00 69 f9 00 6a 00 6a 00 68
00747e00: 50 3f 00 01 68 30 3f 00 01 6a 53 6a 02 e8 fe fc
00747e10: 14 00 8b 0d a0 fc 1c 01 83 c4 18 85 c9 74 05 83
00747e20: c1 f0 eb 02 33 c9 68 c4 a6 fb 00 6a 04 6a 01 e8
00747e30: dc 40 ec ff 68 dc 7d fe 00 68 90 3e 00 01 68 dc
00747e40: 7d fe 00 e8 18 2e e4 ff 53 6a 00 50 e8 df eb ff
00747e50: ff 83 c4 18 5e b9 28 50 1d 01 5b 83 c4 30 e9 5d
00747e60: 9e d9 ff cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00747c00 <.text+0x346c00>:
  747c00:	a1 e0 03 15 01                                  	mov    eax,ds:0x11503e0
  747c05:	83 ec 30                                        	sub    esp,0x30
  747c08:	53                                              	push   ebx
  747c09:	56                                              	push   esi
  747c0a:	50                                              	push   eax
  747c0b:	6a 01                                           	push   0x1
  747c0d:	6a 00                                           	push   0x0
  747c0f:	ff 15 14 62 f9 00                               	call   DWORD PTR ds:0xf96214
  747c15:	8b f0                                           	mov    esi,eax
  747c17:	85 f6                                           	test   esi,esi
  747c19:	74 19                                           	je     0x747c34
  747c1b:	6a 00                                           	push   0x0
  747c1d:	56                                              	push   esi
  747c1e:	ff 15 a4 61 f9 00                               	call   DWORD PTR ds:0xf961a4
  747c24:	85 c0                                           	test   eax,eax
  747c26:	56                                              	push   esi
  747c27:	0f 95 c3                                        	setne  bl
  747c2a:	ff 15 9c 63 f9 00                               	call   DWORD PTR ds:0xf9639c
  747c30:	84 db                                           	test   bl,bl
  747c32:	74 57                                           	je     0x747c8b
  747c34:	80 7c 24 3c 00                                  	cmp    BYTE PTR [esp+0x3c],0x0
  747c39:	74 4a                                           	je     0x747c85
  747c3b:	6a 00                                           	push   0x0
  747c3d:	6a 00                                           	push   0x0
  747c3f:	68 50 3f 00 01                                  	push   0x1003f50
  747c44:	68 30 3f 00 01                                  	push   0x1003f30
  747c49:	6a 53                                           	push   0x53
  747c4b:	6a 02                                           	push   0x2
  747c4d:	e8 be fe 14 00                                  	call   0x897b10
  747c52:	a1 a0 fc 1c 01                                  	mov    eax,ds:0x11cfca0
  747c57:	83 c4 18                                        	add    esp,0x18
  747c5a:	85 c0                                           	test   eax,eax
  747c5c:	74 17                                           	je     0x747c75
  747c5e:	68 c4 a6 fb 00                                  	push   0xfba6c4
  747c63:	6a 04                                           	push   0x4
  747c65:	8d 48 f0                                        	lea    ecx,[eax-0x10]
  747c68:	6a 01                                           	push   0x1
  747c6a:	e8 a1 42 ec ff                                  	call   0x60bf10
  747c6f:	5e                                              	pop    esi
  747c70:	5b                                              	pop    ebx
  747c71:	83 c4 30                                        	add    esp,0x30
  747c74:	c3                                              	ret
  747c75:	68 c4 a6 fb 00                                  	push   0xfba6c4
  747c7a:	6a 04                                           	push   0x4
  747c7c:	33 c9                                           	xor    ecx,ecx
  747c7e:	6a 01                                           	push   0x1
  747c80:	e8 8b 42 ec ff                                  	call   0x60bf10
  747c85:	5e                                              	pop    esi
  747c86:	5b                                              	pop    ebx
  747c87:	83 c4 30                                        	add    esp,0x30
  747c8a:	c3                                              	ret
  747c8b:	68 04 3a 00 01                                  	push   0x1003a04
  747c90:	b9 28 50 1d 01                                  	mov    ecx,0x11d5028
  747c95:	e8 66 9f d9 ff                                  	call   0x4e1c00
  747c9a:	e8 61 6b e4 ff                                  	call   0x58e800
  747c9f:	85 c0                                           	test   eax,eax
  747ca1:	0f 84 3d 01 00 00                               	je     0x747de4
  747ca7:	80 b8 a8 02 00 00 00                            	cmp    BYTE PTR [eax+0x2a8],0x0
  747cae:	0f 84 30 01 00 00                               	je     0x747de4
  747cb4:	68 28 b3 f9 00                                  	push   0xf9b328
  747cb9:	ff 15 08 61 f9 00                               	call   DWORD PTR ds:0xf96108
  747cbf:	8b d8                                           	mov    ebx,eax
  747cc1:	85 db                                           	test   ebx,ebx
  747cc3:	75 10                                           	jne    0x747cd5
  747cc5:	b9 28 50 1d 01                                  	mov    ecx,0x11d5028
  747cca:	e8 f1 9f d9 ff                                  	call   0x4e1cc0
  747ccf:	5e                                              	pop    esi
  747cd0:	5b                                              	pop    ebx
  747cd1:	83 c4 30                                        	add    esp,0x30
  747cd4:	c3                                              	ret
  747cd5:	55                                              	push   ebp
  747cd6:	8b 2d 04 61 f9 00                               	mov    ebp,DWORD PTR ds:0xf96104
  747cdc:	57                                              	push   edi
  747cdd:	68 20 3f 00 01                                  	push   0x1003f20
  747ce2:	53                                              	push   ebx
  747ce3:	ff d5                                           	call   ebp
  747ce5:	85 c0                                           	test   eax,eax
  747ce7:	74 02                                           	je     0x747ceb
  747ce9:	ff d0                                           	call   eax
  747ceb:	68 08 3f 00 01                                  	push   0x1003f08
  747cf0:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  747cf5:	68 d4 3e 00 01                                  	push   0x1003ed4
  747cfa:	be f0 3b 00 01                                  	mov    esi,0x1003bf0
  747cff:	68 dc 7d fe 00                                  	push   0xfe7ddc
  747d04:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  747d08:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  747d0c:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  747d10:	c7 44 24 34 56 8e 1c 01                         	mov    DWORD PTR [esp+0x34],0x11c8e56
  747d18:	e8 43 2f e4 ff                                  	call   0x58ac60
  747d1d:	6a 01                                           	push   0x1
  747d1f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  747d23:	51                                              	push   ecx
  747d24:	50                                              	push   eax
  747d25:	e8 06 ed ff ff                                  	call   0x746a30
  747d2a:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  747d2e:	52                                              	push   edx
  747d2f:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  747d33:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  747d37:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  747d3c:	50                                              	push   eax
  747d3d:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  747d41:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  747d45:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  747d49:	e8 a2 c0 da ff                                  	call   0x4f3df0
  747d4e:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  747d52:	83 c4 20                                        	add    esp,0x20
  747d55:	3b c1                                           	cmp    eax,ecx
  747d57:	74 14                                           	je     0x747d6d
  747d59:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  747d5c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  747d5e:	52                                              	push   edx
  747d5f:	50                                              	push   eax
  747d60:	e8 ab db cb ff                                  	call   0x405910
  747d65:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  747d69:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  747d6d:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  747d71:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  747d75:	2b c8                                           	sub    ecx,eax
  747d77:	83 f9 01                                        	cmp    ecx,0x1
  747d7a:	7e 0d                                           	jle    0x747d89
  747d7c:	85 c0                                           	test   eax,eax
  747d7e:	74 09                                           	je     0x747d89
  747d80:	50                                              	push   eax
  747d81:	e8 5a c7 d9 ff                                  	call   0x4e44e0
  747d86:	83 c4 04                                        	add    esp,0x4
  747d89:	68 b8 3e 00 01                                  	push   0x1003eb8
  747d8e:	53                                              	push   ebx
  747d8f:	ff d5                                           	call   ebp
  747d91:	85 c0                                           	test   eax,eax
  747d93:	74 03                                           	je     0x747d98
  747d95:	57                                              	push   edi
  747d96:	ff d0                                           	call   eax
  747d98:	2b f7                                           	sub    esi,edi
  747d9a:	83 fe 01                                        	cmp    esi,0x1
  747d9d:	7e 0d                                           	jle    0x747dac
  747d9f:	85 ff                                           	test   edi,edi
  747da1:	74 09                                           	je     0x747dac
  747da3:	57                                              	push   edi
  747da4:	e8 37 c7 d9 ff                                  	call   0x4e44e0
  747da9:	83 c4 04                                        	add    esp,0x4
  747dac:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  747db0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  747db4:	2b d0                                           	sub    edx,eax
  747db6:	83 e2 fe                                        	and    edx,0xfffffffe
  747db9:	83 fa 02                                        	cmp    edx,0x2
  747dbc:	5f                                              	pop    edi
  747dbd:	5d                                              	pop    ebp
  747dbe:	0f 8e 90 00 00 00                               	jle    0x747e54
  747dc4:	85 c0                                           	test   eax,eax
  747dc6:	0f 84 88 00 00 00                               	je     0x747e54
  747dcc:	50                                              	push   eax
  747dcd:	e8 0e c7 d9 ff                                  	call   0x4e44e0
  747dd2:	83 c4 04                                        	add    esp,0x4
  747dd5:	5e                                              	pop    esi
  747dd6:	b9 28 50 1d 01                                  	mov    ecx,0x11d5028
  747ddb:	5b                                              	pop    ebx
  747ddc:	83 c4 30                                        	add    esp,0x30
  747ddf:	e9 dc 9e d9 ff                                  	jmp    0x4e1cc0
  747de4:	8b 5c 24 3c                                     	mov    ebx,DWORD PTR [esp+0x3c]
  747de8:	84 db                                           	test   bl,bl
  747dea:	74 48                                           	je     0x747e34
  747dec:	ff 15 fc 68 f9 00                               	call   DWORD PTR ds:0xf968fc
  747df2:	6a 06                                           	push   0x6
  747df4:	50                                              	push   eax
  747df5:	ff 15 00 69 f9 00                               	call   DWORD PTR ds:0xf96900
  747dfb:	6a 00                                           	push   0x0
  747dfd:	6a 00                                           	push   0x0
  747dff:	68 50 3f 00 01                                  	push   0x1003f50
  747e04:	68 30 3f 00 01                                  	push   0x1003f30
  747e09:	6a 53                                           	push   0x53
  747e0b:	6a 02                                           	push   0x2
  747e0d:	e8 fe fc 14 00                                  	call   0x897b10
  747e12:	8b 0d a0 fc 1c 01                               	mov    ecx,DWORD PTR ds:0x11cfca0
  747e18:	83 c4 18                                        	add    esp,0x18
  747e1b:	85 c9                                           	test   ecx,ecx
  747e1d:	74 05                                           	je     0x747e24
  747e1f:	83 c1 f0                                        	add    ecx,0xfffffff0
  747e22:	eb 02                                           	jmp    0x747e26
  747e24:	33 c9                                           	xor    ecx,ecx
  747e26:	68 c4 a6 fb 00                                  	push   0xfba6c4
  747e2b:	6a 04                                           	push   0x4
  747e2d:	6a 01                                           	push   0x1
  747e2f:	e8 dc 40 ec ff                                  	call   0x60bf10
  747e34:	68 dc 7d fe 00                                  	push   0xfe7ddc
  747e39:	68 90 3e 00 01                                  	push   0x1003e90
  747e3e:	68 dc 7d fe 00                                  	push   0xfe7ddc
  747e43:	e8 18 2e e4 ff                                  	call   0x58ac60
  747e48:	53                                              	push   ebx
  747e49:	6a 00                                           	push   0x0
  747e4b:	50                                              	push   eax
  747e4c:	e8 df eb ff ff                                  	call   0x746a30
  747e51:	83 c4 18                                        	add    esp,0x18
  747e54:	5e                                              	pop    esi
  747e55:	b9 28 50 1d 01                                  	mov    ecx,0x11d5028
  747e5a:	5b                                              	pop    ebx
  747e5b:	83 c4 30                                        	add    esp,0x30
  747e5e:	e9 5d 9e d9 ff                                  	jmp    0x4e1cc0
  747e63:	cc                                              	int3
  747e64:	cc                                              	int3
  747e65:	cc                                              	int3
  747e66:	cc                                              	int3
  747e67:	cc                                              	int3
  747e68:	cc                                              	int3
  747e69:	cc                                              	int3
  747e6a:	cc                                              	int3
  747e6b:	cc                                              	int3
  747e6c:	cc                                              	int3
  747e6d:	cc                                              	int3
  747e6e:	cc                                              	int3
  747e6f:	cc                                              	int3
