# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996c60 (ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageInfoImpl)
Paired Ghidra pseudocode: 00996C60_ScriptCore_DownloadContent_DownloadContent_GetExportBinPackageInfoImpl.c
Window: [0x00996c60, 0x00996dd0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996c60: 83 ec 44 56 e8 27 27 dd ff 33 f6 3b c6 0f 84 52
00996c70: 01 00 00 8b 4c 24 4c 8b 10 8b 52 58 51 8b c8 ff
00996c80: d2 50 8d 4c 24 1c 89 74 24 1c 89 74 24 20 89 74
00996c90: 24 24 c7 44 24 28 28 a0 04 01 e8 f1 48 a7 ff b8
00996ca0: 54 8e 1c 01 89 44 24 08 89 44 24 0c 8d 44 24 08
00996cb0: 50 8d 4c 24 1c 51 8b 0d a4 a6 1e 01 c7 44 24 1c
00996cc0: 24 a1 04 01 c7 44 24 18 56 8e 1c 01 e8 3f d1 00
00996cd0: 00 8b 44 24 08 3b 44 24 0c 0f 84 ac 00 00 00 57
00996ce0: 6a 01 6a 10 8d 54 24 14 52 6a 09 6a 13 8d 4c 24
00996cf0: 40 c7 44 24 40 6c 88 00 01 66 c7 44 24 4a 13 00
00996d00: 66 c7 44 24 48 0b 00 e8 b4 ec b5 ff 89 74 24 08
00996d10: e8 7b 26 dd ff 8b 10 8b 52 50 8d 4c 24 08 51 8d
00996d20: 4c 24 30 51 8b c8 ff d2 f6 44 24 34 04 8b 7c 24
00996d30: 08 c7 44 24 2c f4 a6 fb 00 74 0a 56 8d 4c 24 30
00996d40: e8 1b ea b5 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83
00996d50: e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 7f d7 b4
00996d60: ff 83 c4 04 8b 54 24 24 8b 44 24 1c 2b d0 83 e2
00996d70: fe 83 fa 02 7e 0d 3b c6 74 09 50 e8 60 d7 b4 ff
00996d80: 83 c4 04 8b c7 5f 5e 83 c4 44 c3 8b 4c 24 10 2b
00996d90: c8 83 e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 3d
00996da0: d7 b4 ff 83 c4 04 8b 54 24 20 8b 44 24 18 2b d0
00996db0: 83 e2 fe 83 fa 02 7e 0d 3b c6 74 09 50 e8 1e d7
00996dc0: b4 ff 83 c4 04 33 c0 5e 83 c4 44 c3 cc cc cc cc

LINEAR DISASSEMBLY
00996c60 <.text+0x595c60>:
  996c60:	83 ec 44                                        	sub    esp,0x44
  996c63:	56                                              	push   esi
  996c64:	e8 27 27 dd ff                                  	call   0x769390
  996c69:	33 f6                                           	xor    esi,esi
  996c6b:	3b c6                                           	cmp    eax,esi
  996c6d:	0f 84 52 01 00 00                               	je     0x996dc5
  996c73:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  996c77:	8b 10                                           	mov    edx,DWORD PTR [eax]
  996c79:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  996c7c:	51                                              	push   ecx
  996c7d:	8b c8                                           	mov    ecx,eax
  996c7f:	ff d2                                           	call   edx
  996c81:	50                                              	push   eax
  996c82:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  996c86:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  996c8a:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  996c8e:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  996c92:	c7 44 24 28 28 a0 04 01                         	mov    DWORD PTR [esp+0x28],0x104a028
  996c9a:	e8 f1 48 a7 ff                                  	call   0x40b590
  996c9f:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  996ca4:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  996ca8:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  996cac:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  996cb0:	50                                              	push   eax
  996cb1:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  996cb5:	51                                              	push   ecx
  996cb6:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  996cbc:	c7 44 24 1c 24 a1 04 01                         	mov    DWORD PTR [esp+0x1c],0x104a124
  996cc4:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  996ccc:	e8 3f d1 00 00                                  	call   0x9a3e10
  996cd1:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  996cd5:	3b 44 24 0c                                     	cmp    eax,DWORD PTR [esp+0xc]
  996cd9:	0f 84 ac 00 00 00                               	je     0x996d8b
  996cdf:	57                                              	push   edi
  996ce0:	6a 01                                           	push   0x1
  996ce2:	6a 10                                           	push   0x10
  996ce4:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  996ce8:	52                                              	push   edx
  996ce9:	6a 09                                           	push   0x9
  996ceb:	6a 13                                           	push   0x13
  996ced:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  996cf1:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  996cf9:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  996d00:	66 c7 44 24 48 0b 00                            	mov    WORD PTR [esp+0x48],0xb
  996d07:	e8 b4 ec b5 ff                                  	call   0x4f59c0
  996d0c:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
  996d10:	e8 7b 26 dd ff                                  	call   0x769390
  996d15:	8b 10                                           	mov    edx,DWORD PTR [eax]
  996d17:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  996d1a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  996d1e:	51                                              	push   ecx
  996d1f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  996d23:	51                                              	push   ecx
  996d24:	8b c8                                           	mov    ecx,eax
  996d26:	ff d2                                           	call   edx
  996d28:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  996d2d:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  996d31:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  996d39:	74 0a                                           	je     0x996d45
  996d3b:	56                                              	push   esi
  996d3c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  996d40:	e8 1b ea b5 ff                                  	call   0x4f5760
  996d45:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  996d49:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  996d4d:	2b c8                                           	sub    ecx,eax
  996d4f:	83 e1 fe                                        	and    ecx,0xfffffffe
  996d52:	83 f9 02                                        	cmp    ecx,0x2
  996d55:	7e 0d                                           	jle    0x996d64
  996d57:	3b c6                                           	cmp    eax,esi
  996d59:	74 09                                           	je     0x996d64
  996d5b:	50                                              	push   eax
  996d5c:	e8 7f d7 b4 ff                                  	call   0x4e44e0
  996d61:	83 c4 04                                        	add    esp,0x4
  996d64:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  996d68:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  996d6c:	2b d0                                           	sub    edx,eax
  996d6e:	83 e2 fe                                        	and    edx,0xfffffffe
  996d71:	83 fa 02                                        	cmp    edx,0x2
  996d74:	7e 0d                                           	jle    0x996d83
  996d76:	3b c6                                           	cmp    eax,esi
  996d78:	74 09                                           	je     0x996d83
  996d7a:	50                                              	push   eax
  996d7b:	e8 60 d7 b4 ff                                  	call   0x4e44e0
  996d80:	83 c4 04                                        	add    esp,0x4
  996d83:	8b c7                                           	mov    eax,edi
  996d85:	5f                                              	pop    edi
  996d86:	5e                                              	pop    esi
  996d87:	83 c4 44                                        	add    esp,0x44
  996d8a:	c3                                              	ret
  996d8b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  996d8f:	2b c8                                           	sub    ecx,eax
  996d91:	83 e1 fe                                        	and    ecx,0xfffffffe
  996d94:	83 f9 02                                        	cmp    ecx,0x2
  996d97:	7e 0d                                           	jle    0x996da6
  996d99:	3b c6                                           	cmp    eax,esi
  996d9b:	74 09                                           	je     0x996da6
  996d9d:	50                                              	push   eax
  996d9e:	e8 3d d7 b4 ff                                  	call   0x4e44e0
  996da3:	83 c4 04                                        	add    esp,0x4
  996da6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  996daa:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  996dae:	2b d0                                           	sub    edx,eax
  996db0:	83 e2 fe                                        	and    edx,0xfffffffe
  996db3:	83 fa 02                                        	cmp    edx,0x2
  996db6:	7e 0d                                           	jle    0x996dc5
  996db8:	3b c6                                           	cmp    eax,esi
  996dba:	74 09                                           	je     0x996dc5
  996dbc:	50                                              	push   eax
  996dbd:	e8 1e d7 b4 ff                                  	call   0x4e44e0
  996dc2:	83 c4 04                                        	add    esp,0x4
  996dc5:	33 c0                                           	xor    eax,eax
  996dc7:	5e                                              	pop    esi
  996dc8:	83 c4 44                                        	add    esp,0x44
  996dcb:	c3                                              	ret
  996dcc:	cc                                              	int3
  996dcd:	cc                                              	int3
  996dce:	cc                                              	int3
  996dcf:	cc                                              	int3
