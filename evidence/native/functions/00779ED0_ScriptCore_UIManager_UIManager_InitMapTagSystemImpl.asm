# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779ed0 (ScriptCore.UIManager::UIManager_InitMapTagSystemImpl)
Paired Ghidra pseudocode: 00779ED0_ScriptCore_UIManager_UIManager_InitMapTagSystemImpl.c
Window: [0x00779ed0, 0x00779fe0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779ed0: 56 e8 8a 00 07 00 8b f0 85 f6 75 69 50 50 50 50
00779ee0: 68 d4 ef 00 01 68 b0 04 00 00 e8 11 a6 d6 ff 83
00779ef0: c4 18 85 c0 74 0b 8b c8 e8 23 0c 07 00 8b f0 eb
00779f00: 02 33 f6 56 e8 67 00 07 00 83 c4 04 e8 7f 10 d9
00779f10: ff 8b 10 8b c8 8b 42 04 ff d0 8b 10 6a 01 8b c8
00779f20: 8b 82 f4 00 00 00 68 8b 24 4b 03 ff d0 85 c0 74
00779f30: 0c 8b 10 8b c8 8b 82 90 00 00 00 ff d0 85 f6 0f
00779f40: 84 93 00 00 00 8b 4c 24 4c d9 44 24 48 8b 54 24
00779f50: 34 51 8b 4c 24 3c 83 ec 18 d9 5c 24 14 8b c4 d9
00779f60: 44 24 60 83 ec 24 d9 5c 24 34 89 10 8b 54 24 7c
00779f70: d9 44 24 70 89 48 04 8b 8c 24 80 00 00 00 89 50
00779f80: 08 89 48 0c d9 5c 24 20 d9 44 24 6c 8b 54 24 4c
00779f90: d9 5c 24 1c 8b 44 24 48 d9 44 24 68 8b ce d9 5c
00779fa0: 24 18 d9 44 24 64 d9 5c 24 14 d9 44 24 60 d9 5c
00779fb0: 24 10 d9 44 24 5c d9 5c 24 0c d9 44 24 58 d9 5c
00779fc0: 24 08 d9 44 24 54 d9 5c 24 04 d9 44 24 50 d9 1c
00779fd0: 24 52 50 e8 d8 ff 06 00 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779ed0 <.text+0x378ed0>:
  779ed0:	56                                              	push   esi
  779ed1:	e8 8a 00 07 00                                  	call   0x7e9f60
  779ed6:	8b f0                                           	mov    esi,eax
  779ed8:	85 f6                                           	test   esi,esi
  779eda:	75 69                                           	jne    0x779f45
  779edc:	50                                              	push   eax
  779edd:	50                                              	push   eax
  779ede:	50                                              	push   eax
  779edf:	50                                              	push   eax
  779ee0:	68 d4 ef 00 01                                  	push   0x100efd4
  779ee5:	68 b0 04 00 00                                  	push   0x4b0
  779eea:	e8 11 a6 d6 ff                                  	call   0x4e4500
  779eef:	83 c4 18                                        	add    esp,0x18
  779ef2:	85 c0                                           	test   eax,eax
  779ef4:	74 0b                                           	je     0x779f01
  779ef6:	8b c8                                           	mov    ecx,eax
  779ef8:	e8 23 0c 07 00                                  	call   0x7eab20
  779efd:	8b f0                                           	mov    esi,eax
  779eff:	eb 02                                           	jmp    0x779f03
  779f01:	33 f6                                           	xor    esi,esi
  779f03:	56                                              	push   esi
  779f04:	e8 67 00 07 00                                  	call   0x7e9f70
  779f09:	83 c4 04                                        	add    esp,0x4
  779f0c:	e8 7f 10 d9 ff                                  	call   0x50af90
  779f11:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779f13:	8b c8                                           	mov    ecx,eax
  779f15:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  779f18:	ff d0                                           	call   eax
  779f1a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779f1c:	6a 01                                           	push   0x1
  779f1e:	8b c8                                           	mov    ecx,eax
  779f20:	8b 82 f4 00 00 00                               	mov    eax,DWORD PTR [edx+0xf4]
  779f26:	68 8b 24 4b 03                                  	push   0x34b248b
  779f2b:	ff d0                                           	call   eax
  779f2d:	85 c0                                           	test   eax,eax
  779f2f:	74 0c                                           	je     0x779f3d
  779f31:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779f33:	8b c8                                           	mov    ecx,eax
  779f35:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  779f3b:	ff d0                                           	call   eax
  779f3d:	85 f6                                           	test   esi,esi
  779f3f:	0f 84 93 00 00 00                               	je     0x779fd8
  779f45:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  779f49:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  779f4d:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  779f51:	51                                              	push   ecx
  779f52:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  779f56:	83 ec 18                                        	sub    esp,0x18
  779f59:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  779f5d:	8b c4                                           	mov    eax,esp
  779f5f:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  779f63:	83 ec 24                                        	sub    esp,0x24
  779f66:	d9 5c 24 34                                     	fstp   DWORD PTR [esp+0x34]
  779f6a:	89 10                                           	mov    DWORD PTR [eax],edx
  779f6c:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
  779f70:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
  779f74:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  779f77:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
  779f7e:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  779f81:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  779f84:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
  779f88:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
  779f8c:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  779f90:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  779f94:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  779f98:	d9 44 24 68                                     	fld    DWORD PTR [esp+0x68]
  779f9c:	8b ce                                           	mov    ecx,esi
  779f9e:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  779fa2:	d9 44 24 64                                     	fld    DWORD PTR [esp+0x64]
  779fa6:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  779faa:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  779fae:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  779fb2:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  779fb6:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  779fba:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  779fbe:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  779fc2:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  779fc6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  779fca:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  779fce:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  779fd1:	52                                              	push   edx
  779fd2:	50                                              	push   eax
  779fd3:	e8 d8 ff 06 00                                  	call   0x7e9fb0
  779fd8:	5e                                              	pop    esi
  779fd9:	c3                                              	ret
  779fda:	cc                                              	int3
  779fdb:	cc                                              	int3
  779fdc:	cc                                              	int3
  779fdd:	cc                                              	int3
  779fde:	cc                                              	int3
  779fdf:	cc                                              	int3
