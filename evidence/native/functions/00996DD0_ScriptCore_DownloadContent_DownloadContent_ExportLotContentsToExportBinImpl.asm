# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996dd0 (ScriptCore.DownloadContent::DownloadContent_ExportLotContentsToExportBinImpl)
Paired Ghidra pseudocode: 00996DD0_ScriptCore_DownloadContent_DownloadContent_ExportLotContentsToExportBinImpl.c
Window: [0x00996dd0, 0x00996fb0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996dd0: 83 ec 58 56 8b 35 a4 a6 1e 01 57 8b 3d f8 c4 1e
00996de0: 01 8b ce e8 88 a8 00 00 84 c0 8b ce 74 56 b8 54
00996df0: 8e 1c 01 89 44 24 18 89 44 24 1c 8d 44 24 18 50
00996e00: c7 44 24 28 78 a1 04 01 c7 44 24 24 56 8e 1c 01
00996e10: e8 db ad 00 00 8b 4c 24 20 8b 44 24 18 2b c8 83
00996e20: e1 fe 83 f9 02 0f 8e 73 01 00 00 85 c0 0f 84 6b
00996e30: 01 00 00 50 e8 a7 d6 b4 ff 83 c4 04 5f 33 c0 5e
00996e40: 83 c4 58 c3 8d 54 24 10 52 8d 44 24 0c 50 c7 44
00996e50: 24 10 00 00 00 00 c7 44 24 18 00 00 00 00 c7 44
00996e60: 24 1c 00 00 00 00 e8 a5 be 00 00 84 c0 0f 84 18
00996e70: 01 00 00 8b 4c 24 08 6a 01 51 8d 4c 24 30 e8 9d
00996e80: 0a e4 ff 8b 54 24 14 8b 44 24 10 52 8b 54 24 6c
00996e90: 50 8b 44 24 6c 8d 4c 24 30 51 52 50 8b cf e8 dd
00996ea0: df 13 00 84 c0 0f 84 d7 00 00 00 8d 4c 24 18 b8
00996eb0: 54 8e 1c 01 51 8b ce c7 44 24 28 54 a1 04 01 89
00996ec0: 44 24 1c 89 44 24 20 c7 44 24 24 56 8e 1c 01 e8
00996ed0: 1c ad 00 00 e8 b7 24 dd ff 6a 01 6a 10 8d 54 24
00996ee0: 20 52 6a 09 6a 13 8d 4c 24 54 8b f8 c7 44 24 54
00996ef0: 6c 88 00 01 66 c7 44 24 5e 13 00 66 c7 44 24 5c
00996f00: 0b 00 e8 b9 ea b5 ff 8b 07 8b 40 50 8d 4c 24 0c
00996f10: 51 8d 54 24 44 52 8b cf ff d0 8b ce e8 0f e9 00
00996f20: 00 f6 44 24 48 04 8b 74 24 0c c7 44 24 40 f4 a6
00996f30: fb 00 74 0b 6a 00 8d 4c 24 44 e8 21 e8 b5 ff 8b
00996f40: 4c 24 20 8b 44 24 18 2b c8 83 e1 fe 83 f9 02 7e
00996f50: 0d 85 c0 74 09 50 e8 85 d5 b4 ff 83 c4 04 8d 4c
00996f60: 24 28 e8 29 0a e4 ff 8b 44 24 08 85 c0 74 0b 8b
00996f70: 50 04 8d 48 04 8b 42 04 ff d0 5f 8b c6 5e 83 c4
00996f80: 58 c3 8d 4c 24 28 e8 05 0a e4 ff 8b 44 24 08 85
00996f90: c0 74 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 5f 33
00996fa0: c0 5e 83 c4 58 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00996dd0 <.text+0x595dd0>:
  996dd0:	83 ec 58                                        	sub    esp,0x58
  996dd3:	56                                              	push   esi
  996dd4:	8b 35 a4 a6 1e 01                               	mov    esi,DWORD PTR ds:0x11ea6a4
  996dda:	57                                              	push   edi
  996ddb:	8b 3d f8 c4 1e 01                               	mov    edi,DWORD PTR ds:0x11ec4f8
  996de1:	8b ce                                           	mov    ecx,esi
  996de3:	e8 88 a8 00 00                                  	call   0x9a1670
  996de8:	84 c0                                           	test   al,al
  996dea:	8b ce                                           	mov    ecx,esi
  996dec:	74 56                                           	je     0x996e44
  996dee:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  996df3:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  996df7:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  996dfb:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  996dff:	50                                              	push   eax
  996e00:	c7 44 24 28 78 a1 04 01                         	mov    DWORD PTR [esp+0x28],0x104a178
  996e08:	c7 44 24 24 56 8e 1c 01                         	mov    DWORD PTR [esp+0x24],0x11c8e56
  996e10:	e8 db ad 00 00                                  	call   0x9a1bf0
  996e15:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  996e19:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  996e1d:	2b c8                                           	sub    ecx,eax
  996e1f:	83 e1 fe                                        	and    ecx,0xfffffffe
  996e22:	83 f9 02                                        	cmp    ecx,0x2
  996e25:	0f 8e 73 01 00 00                               	jle    0x996f9e
  996e2b:	85 c0                                           	test   eax,eax
  996e2d:	0f 84 6b 01 00 00                               	je     0x996f9e
  996e33:	50                                              	push   eax
  996e34:	e8 a7 d6 b4 ff                                  	call   0x4e44e0
  996e39:	83 c4 04                                        	add    esp,0x4
  996e3c:	5f                                              	pop    edi
  996e3d:	33 c0                                           	xor    eax,eax
  996e3f:	5e                                              	pop    esi
  996e40:	83 c4 58                                        	add    esp,0x58
  996e43:	c3                                              	ret
  996e44:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  996e48:	52                                              	push   edx
  996e49:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  996e4d:	50                                              	push   eax
  996e4e:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  996e56:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  996e5e:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  996e66:	e8 a5 be 00 00                                  	call   0x9a2d10
  996e6b:	84 c0                                           	test   al,al
  996e6d:	0f 84 18 01 00 00                               	je     0x996f8b
  996e73:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  996e77:	6a 01                                           	push   0x1
  996e79:	51                                              	push   ecx
  996e7a:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  996e7e:	e8 9d 0a e4 ff                                  	call   0x7d7920
  996e83:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  996e87:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  996e8b:	52                                              	push   edx
  996e8c:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
  996e90:	50                                              	push   eax
  996e91:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  996e95:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  996e99:	51                                              	push   ecx
  996e9a:	52                                              	push   edx
  996e9b:	50                                              	push   eax
  996e9c:	8b cf                                           	mov    ecx,edi
  996e9e:	e8 dd df 13 00                                  	call   0xad4e80
  996ea3:	84 c0                                           	test   al,al
  996ea5:	0f 84 d7 00 00 00                               	je     0x996f82
  996eab:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  996eaf:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  996eb4:	51                                              	push   ecx
  996eb5:	8b ce                                           	mov    ecx,esi
  996eb7:	c7 44 24 28 54 a1 04 01                         	mov    DWORD PTR [esp+0x28],0x104a154
  996ebf:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  996ec3:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  996ec7:	c7 44 24 24 56 8e 1c 01                         	mov    DWORD PTR [esp+0x24],0x11c8e56
  996ecf:	e8 1c ad 00 00                                  	call   0x9a1bf0
  996ed4:	e8 b7 24 dd ff                                  	call   0x769390
  996ed9:	6a 01                                           	push   0x1
  996edb:	6a 10                                           	push   0x10
  996edd:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  996ee1:	52                                              	push   edx
  996ee2:	6a 09                                           	push   0x9
  996ee4:	6a 13                                           	push   0x13
  996ee6:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  996eea:	8b f8                                           	mov    edi,eax
  996eec:	c7 44 24 54 6c 88 00 01                         	mov    DWORD PTR [esp+0x54],0x100886c
  996ef4:	66 c7 44 24 5e 13 00                            	mov    WORD PTR [esp+0x5e],0x13
  996efb:	66 c7 44 24 5c 0b 00                            	mov    WORD PTR [esp+0x5c],0xb
  996f02:	e8 b9 ea b5 ff                                  	call   0x4f59c0
  996f07:	8b 07                                           	mov    eax,DWORD PTR [edi]
  996f09:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  996f0c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  996f10:	51                                              	push   ecx
  996f11:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  996f15:	52                                              	push   edx
  996f16:	8b cf                                           	mov    ecx,edi
  996f18:	ff d0                                           	call   eax
  996f1a:	8b ce                                           	mov    ecx,esi
  996f1c:	e8 0f e9 00 00                                  	call   0x9a5830
  996f21:	f6 44 24 48 04                                  	test   BYTE PTR [esp+0x48],0x4
  996f26:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  996f2a:	c7 44 24 40 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x40],0xfba6f4
  996f32:	74 0b                                           	je     0x996f3f
  996f34:	6a 00                                           	push   0x0
  996f36:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  996f3a:	e8 21 e8 b5 ff                                  	call   0x4f5760
  996f3f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  996f43:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  996f47:	2b c8                                           	sub    ecx,eax
  996f49:	83 e1 fe                                        	and    ecx,0xfffffffe
  996f4c:	83 f9 02                                        	cmp    ecx,0x2
  996f4f:	7e 0d                                           	jle    0x996f5e
  996f51:	85 c0                                           	test   eax,eax
  996f53:	74 09                                           	je     0x996f5e
  996f55:	50                                              	push   eax
  996f56:	e8 85 d5 b4 ff                                  	call   0x4e44e0
  996f5b:	83 c4 04                                        	add    esp,0x4
  996f5e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  996f62:	e8 29 0a e4 ff                                  	call   0x7d7990
  996f67:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  996f6b:	85 c0                                           	test   eax,eax
  996f6d:	74 0b                                           	je     0x996f7a
  996f6f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  996f72:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996f75:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  996f78:	ff d0                                           	call   eax
  996f7a:	5f                                              	pop    edi
  996f7b:	8b c6                                           	mov    eax,esi
  996f7d:	5e                                              	pop    esi
  996f7e:	83 c4 58                                        	add    esp,0x58
  996f81:	c3                                              	ret
  996f82:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  996f86:	e8 05 0a e4 ff                                  	call   0x7d7990
  996f8b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  996f8f:	85 c0                                           	test   eax,eax
  996f91:	74 0b                                           	je     0x996f9e
  996f93:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  996f96:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996f99:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  996f9c:	ff d0                                           	call   eax
  996f9e:	5f                                              	pop    edi
  996f9f:	33 c0                                           	xor    eax,eax
  996fa1:	5e                                              	pop    esi
  996fa2:	83 c4 58                                        	add    esp,0x58
  996fa5:	c3                                              	ret
  996fa6:	cc                                              	int3
  996fa7:	cc                                              	int3
  996fa8:	cc                                              	int3
  996fa9:	cc                                              	int3
  996faa:	cc                                              	int3
  996fab:	cc                                              	int3
  996fac:	cc                                              	int3
  996fad:	cc                                              	int3
  996fae:	cc                                              	int3
  996faf:	cc                                              	int3
