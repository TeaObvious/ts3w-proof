# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce8b40 (ScriptCore.UserToolUtils::UserToolUtils_GetPresetIdFromProductAndStringImpl)
Paired Ghidra pseudocode: 00CE8B40_ScriptCore_UserToolUtils_UserToolUtils_GetPresetIdFromProductAndStringImpl.c
Window: [0x00ce8b40, 0x00ce8e40) (768 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce8e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce8b40: 81 ec 88 00 00 00 55 56 57 e8 42 08 a8 ff 33 ed
00ce8b50: 3b c5 0f 84 db 02 00 00 8b 8c 24 98 00 00 00 8b
00ce8b60: d1 81 e2 00 00 00 ff 81 fa 00 00 00 45 0f 85 c0
00ce8b70: 02 00 00 8b bc 24 9c 00 00 00 3b fd 0f 84 b1 02
00ce8b80: 00 00 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 3b
00ce8b90: c5 0f 84 9c 02 00 00 8b 10 8b c8 8b 42 0c 68 07
00ce8ba0: 3b 4a b1 ff d0 8b f0 3b f5 0f 84 84 02 00 00 e8
00ce8bb0: dc 07 a8 ff 3b c5 0f 84 77 02 00 00 8b 10 8b c8
00ce8bc0: 8b 42 58 57 ff d0 8b f8 3b fd 0f 84 63 02 00 00
00ce8bd0: 8d 4c 24 0c 51 8d 4c 24 14 c7 44 24 10 34 16 08
00ce8be0: 01 e8 0a fd 71 ff 57 8d 4c 24 14 e8 60 03 72 ff
00ce8bf0: 8b 54 24 14 8b 44 24 10 2b d0 d1 fa 0f 84 c2 00
00ce8c00: 00 00 66 83 38 3c 0f 84 b8 00 00 00 8d 44 24 10
00ce8c10: 50 8d 4c 24 28 51 89 6c 24 2c 89 6c 24 30 89 6c
00ce8c20: 24 34 89 6c 24 38 e8 45 23 e2 ff 83 c4 08 81 7c
00ce8c30: 24 2c 10 e1 4a 04 0f 85 88 00 00 00 53 e8 3e 72
00ce8c40: 7c ff 55 55 55 8b f8 89 6c 24 1c 8b 1f 55 8d 4c
00ce8c50: 24 20 e8 49 63 a6 ff 50 8b 43 0c 8d 54 24 3c 52
00ce8c60: 8b cf ff d0 84 c0 5b 75 18 8b 4c 24 0c 3b cd 0f
00ce8c70: 84 b5 01 00 00 8b 11 8b 42 04 ff d0 e9 a9 01 00
00ce8c80: 00 8d 4c 24 0c 51 e8 85 5e aa ff 83 c4 04 50 8d
00ce8c90: 4c 24 24 e8 d8 46 b1 ff 8b 7c 24 20 3b fd 74 c9
00ce8ca0: 8d 4c 24 10 51 8b cf e8 74 70 8d ff 8b 17 8b 42
00ce8cb0: 04 8b cf ff d0 8b 4c 24 0c 3b cd 74 07 8b 11 8b
00ce8cc0: 42 04 ff d0 8d 4c 24 34 e8 f3 6d 8d ff 8b 4c 24
00ce8cd0: 10 51 8d 4c 24 38 e8 85 73 8d ff 84 c0 0f 84 3e
00ce8ce0: 01 00 00 8b 46 10 3d f2 78 6c 31 0f 87 bd 00 00
00ce8cf0: 00 0f 84 91 00 00 00 3d 2a fe 18 04 74 64 3d cd
00ce8d00: a4 9c 04 74 34 3d 03 81 c5 04 0f 85 11 01 00 00
00ce8d10: 56 e8 8a d1 ff ff 83 c4 04 3b c5 0f 84 00 01 00
00ce8d20: 00 8b 94 24 a0 00 00 00 52 8d 4c 24 14 51 50 e8
00ce8d30: 6c f2 ff ff e9 c5 00 00 00 56 e8 81 d1 ff ff 83
00ce8d40: c4 04 3b c5 0f 84 d7 00 00 00 8b 94 24 a0 00 00
00ce8d50: 00 52 8d 4c 24 14 51 50 e8 63 ef ff ff e9 9c 00
00ce8d60: 00 00 56 e8 18 78 e4 ff 83 c4 04 3b c5 0f 84 ae
00ce8d70: 00 00 00 8b 94 24 a0 00 00 00 52 8d 4c 24 14 51
00ce8d80: 50 e8 ca ed ff ff eb 76 56 e8 52 d1 ff ff 83 c4
00ce8d90: 04 3b c5 0f 84 88 00 00 00 8b 94 24 a0 00 00 00
00ce8da0: 52 8d 4c 24 14 51 50 e8 84 f0 ff ff eb 50 3d 1d
00ce8db0: 4f 9e 31 74 29 3d cd a4 5c 51 75 65 56 e8 be d0
00ce8dc0: ff ff 83 c4 04 3b c5 74 58 8b 94 24 a0 00 00 00
00ce8dd0: 52 8d 4c 24 14 51 50 e8 04 ec ff ff eb 20 56 e8
00ce8de0: 3c 4d af ff 83 c4 04 3b c5 74 36 8b 94 24 a0 00
00ce8df0: 00 00 52 8d 4c 24 14 51 50 e8 72 ea ff ff 83 c4
00ce8e00: 0c 8d 4c 24 34 8b f0 e8 d4 6e 8d ff 8d 4c 24 10
00ce8e10: e8 db 6a 80 ff 5f 8b c6 5e 5d 81 c4 88 00 00 00
00ce8e20: c3 8d 4c 24 34 e8 b6 6e 8d ff 8d 4c 24 10 e8 bd
00ce8e30: 6a 80 ff 5f 5e 83 c8 ff 5d 81 c4 88 00 00 00 c3

LINEAR DISASSEMBLY
00ce8b40 <.text+0x8e7b40>:
  ce8b40:	81 ec 88 00 00 00                               	sub    esp,0x88
  ce8b46:	55                                              	push   ebp
  ce8b47:	56                                              	push   esi
  ce8b48:	57                                              	push   edi
  ce8b49:	e8 42 08 a8 ff                                  	call   0x769390
  ce8b4e:	33 ed                                           	xor    ebp,ebp
  ce8b50:	3b c5                                           	cmp    eax,ebp
  ce8b52:	0f 84 db 02 00 00                               	je     0xce8e33
  ce8b58:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
  ce8b5f:	8b d1                                           	mov    edx,ecx
  ce8b61:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  ce8b67:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  ce8b6d:	0f 85 c0 02 00 00                               	jne    0xce8e33
  ce8b73:	8b bc 24 9c 00 00 00                            	mov    edi,DWORD PTR [esp+0x9c]
  ce8b7a:	3b fd                                           	cmp    edi,ebp
  ce8b7c:	0f 84 b1 02 00 00                               	je     0xce8e33
  ce8b82:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8b84:	51                                              	push   ecx
  ce8b85:	8b c8                                           	mov    ecx,eax
  ce8b87:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ce8b8d:	ff d0                                           	call   eax
  ce8b8f:	3b c5                                           	cmp    eax,ebp
  ce8b91:	0f 84 9c 02 00 00                               	je     0xce8e33
  ce8b97:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8b99:	8b c8                                           	mov    ecx,eax
  ce8b9b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  ce8b9e:	68 07 3b 4a b1                                  	push   0xb14a3b07
  ce8ba3:	ff d0                                           	call   eax
  ce8ba5:	8b f0                                           	mov    esi,eax
  ce8ba7:	3b f5                                           	cmp    esi,ebp
  ce8ba9:	0f 84 84 02 00 00                               	je     0xce8e33
  ce8baf:	e8 dc 07 a8 ff                                  	call   0x769390
  ce8bb4:	3b c5                                           	cmp    eax,ebp
  ce8bb6:	0f 84 77 02 00 00                               	je     0xce8e33
  ce8bbc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8bbe:	8b c8                                           	mov    ecx,eax
  ce8bc0:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  ce8bc3:	57                                              	push   edi
  ce8bc4:	ff d0                                           	call   eax
  ce8bc6:	8b f8                                           	mov    edi,eax
  ce8bc8:	3b fd                                           	cmp    edi,ebp
  ce8bca:	0f 84 63 02 00 00                               	je     0xce8e33
  ce8bd0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ce8bd4:	51                                              	push   ecx
  ce8bd5:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8bd9:	c7 44 24 10 34 16 08 01                         	mov    DWORD PTR [esp+0x10],0x1081634
  ce8be1:	e8 0a fd 71 ff                                  	call   0x4088f0
  ce8be6:	57                                              	push   edi
  ce8be7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8beb:	e8 60 03 72 ff                                  	call   0x408f50
  ce8bf0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ce8bf4:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ce8bf8:	2b d0                                           	sub    edx,eax
  ce8bfa:	d1 fa                                           	sar    edx,1
  ce8bfc:	0f 84 c2 00 00 00                               	je     0xce8cc4
  ce8c02:	66 83 38 3c                                     	cmp    WORD PTR [eax],0x3c
  ce8c06:	0f 84 b8 00 00 00                               	je     0xce8cc4
  ce8c0c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce8c10:	50                                              	push   eax
  ce8c11:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce8c15:	51                                              	push   ecx
  ce8c16:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  ce8c1a:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  ce8c1e:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  ce8c22:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
  ce8c26:	e8 45 23 e2 ff                                  	call   0xb0af70
  ce8c2b:	83 c4 08                                        	add    esp,0x8
  ce8c2e:	81 7c 24 2c 10 e1 4a 04                         	cmp    DWORD PTR [esp+0x2c],0x44ae110
  ce8c36:	0f 85 88 00 00 00                               	jne    0xce8cc4
  ce8c3c:	53                                              	push   ebx
  ce8c3d:	e8 3e 72 7c ff                                  	call   0x4afe80
  ce8c42:	55                                              	push   ebp
  ce8c43:	55                                              	push   ebp
  ce8c44:	55                                              	push   ebp
  ce8c45:	8b f8                                           	mov    edi,eax
  ce8c47:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  ce8c4b:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  ce8c4d:	55                                              	push   ebp
  ce8c4e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ce8c52:	e8 49 63 a6 ff                                  	call   0x74efa0
  ce8c57:	50                                              	push   eax
  ce8c58:	8b 43 0c                                        	mov    eax,DWORD PTR [ebx+0xc]
  ce8c5b:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  ce8c5f:	52                                              	push   edx
  ce8c60:	8b cf                                           	mov    ecx,edi
  ce8c62:	ff d0                                           	call   eax
  ce8c64:	84 c0                                           	test   al,al
  ce8c66:	5b                                              	pop    ebx
  ce8c67:	75 18                                           	jne    0xce8c81
  ce8c69:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ce8c6d:	3b cd                                           	cmp    ecx,ebp
  ce8c6f:	0f 84 b5 01 00 00                               	je     0xce8e2a
  ce8c75:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce8c77:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ce8c7a:	ff d0                                           	call   eax
  ce8c7c:	e9 a9 01 00 00                                  	jmp    0xce8e2a
  ce8c81:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ce8c85:	51                                              	push   ecx
  ce8c86:	e8 85 5e aa ff                                  	call   0x78eb10
  ce8c8b:	83 c4 04                                        	add    esp,0x4
  ce8c8e:	50                                              	push   eax
  ce8c8f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce8c93:	e8 d8 46 b1 ff                                  	call   0x7fd370
  ce8c98:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  ce8c9c:	3b fd                                           	cmp    edi,ebp
  ce8c9e:	74 c9                                           	je     0xce8c69
  ce8ca0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ce8ca4:	51                                              	push   ecx
  ce8ca5:	8b cf                                           	mov    ecx,edi
  ce8ca7:	e8 74 70 8d ff                                  	call   0x5bfd20
  ce8cac:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ce8cae:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ce8cb1:	8b cf                                           	mov    ecx,edi
  ce8cb3:	ff d0                                           	call   eax
  ce8cb5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ce8cb9:	3b cd                                           	cmp    ecx,ebp
  ce8cbb:	74 07                                           	je     0xce8cc4
  ce8cbd:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce8cbf:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ce8cc2:	ff d0                                           	call   eax
  ce8cc4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce8cc8:	e8 f3 6d 8d ff                                  	call   0x5bfac0
  ce8ccd:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce8cd1:	51                                              	push   ecx
  ce8cd2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  ce8cd6:	e8 85 73 8d ff                                  	call   0x5c0060
  ce8cdb:	84 c0                                           	test   al,al
  ce8cdd:	0f 84 3e 01 00 00                               	je     0xce8e21
  ce8ce3:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  ce8ce6:	3d f2 78 6c 31                                  	cmp    eax,0x316c78f2
  ce8ceb:	0f 87 bd 00 00 00                               	ja     0xce8dae
  ce8cf1:	0f 84 91 00 00 00                               	je     0xce8d88
  ce8cf7:	3d 2a fe 18 04                                  	cmp    eax,0x418fe2a
  ce8cfc:	74 64                                           	je     0xce8d62
  ce8cfe:	3d cd a4 9c 04                                  	cmp    eax,0x49ca4cd
  ce8d03:	74 34                                           	je     0xce8d39
  ce8d05:	3d 03 81 c5 04                                  	cmp    eax,0x4c58103
  ce8d0a:	0f 85 11 01 00 00                               	jne    0xce8e21
  ce8d10:	56                                              	push   esi
  ce8d11:	e8 8a d1 ff ff                                  	call   0xce5ea0
  ce8d16:	83 c4 04                                        	add    esp,0x4
  ce8d19:	3b c5                                           	cmp    eax,ebp
  ce8d1b:	0f 84 00 01 00 00                               	je     0xce8e21
  ce8d21:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8d28:	52                                              	push   edx
  ce8d29:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8d2d:	51                                              	push   ecx
  ce8d2e:	50                                              	push   eax
  ce8d2f:	e8 6c f2 ff ff                                  	call   0xce7fa0
  ce8d34:	e9 c5 00 00 00                                  	jmp    0xce8dfe
  ce8d39:	56                                              	push   esi
  ce8d3a:	e8 81 d1 ff ff                                  	call   0xce5ec0
  ce8d3f:	83 c4 04                                        	add    esp,0x4
  ce8d42:	3b c5                                           	cmp    eax,ebp
  ce8d44:	0f 84 d7 00 00 00                               	je     0xce8e21
  ce8d4a:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8d51:	52                                              	push   edx
  ce8d52:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8d56:	51                                              	push   ecx
  ce8d57:	50                                              	push   eax
  ce8d58:	e8 63 ef ff ff                                  	call   0xce7cc0
  ce8d5d:	e9 9c 00 00 00                                  	jmp    0xce8dfe
  ce8d62:	56                                              	push   esi
  ce8d63:	e8 18 78 e4 ff                                  	call   0xb30580
  ce8d68:	83 c4 04                                        	add    esp,0x4
  ce8d6b:	3b c5                                           	cmp    eax,ebp
  ce8d6d:	0f 84 ae 00 00 00                               	je     0xce8e21
  ce8d73:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8d7a:	52                                              	push   edx
  ce8d7b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8d7f:	51                                              	push   ecx
  ce8d80:	50                                              	push   eax
  ce8d81:	e8 ca ed ff ff                                  	call   0xce7b50
  ce8d86:	eb 76                                           	jmp    0xce8dfe
  ce8d88:	56                                              	push   esi
  ce8d89:	e8 52 d1 ff ff                                  	call   0xce5ee0
  ce8d8e:	83 c4 04                                        	add    esp,0x4
  ce8d91:	3b c5                                           	cmp    eax,ebp
  ce8d93:	0f 84 88 00 00 00                               	je     0xce8e21
  ce8d99:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8da0:	52                                              	push   edx
  ce8da1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8da5:	51                                              	push   ecx
  ce8da6:	50                                              	push   eax
  ce8da7:	e8 84 f0 ff ff                                  	call   0xce7e30
  ce8dac:	eb 50                                           	jmp    0xce8dfe
  ce8dae:	3d 1d 4f 9e 31                                  	cmp    eax,0x319e4f1d
  ce8db3:	74 29                                           	je     0xce8dde
  ce8db5:	3d cd a4 5c 51                                  	cmp    eax,0x515ca4cd
  ce8dba:	75 65                                           	jne    0xce8e21
  ce8dbc:	56                                              	push   esi
  ce8dbd:	e8 be d0 ff ff                                  	call   0xce5e80
  ce8dc2:	83 c4 04                                        	add    esp,0x4
  ce8dc5:	3b c5                                           	cmp    eax,ebp
  ce8dc7:	74 58                                           	je     0xce8e21
  ce8dc9:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8dd0:	52                                              	push   edx
  ce8dd1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8dd5:	51                                              	push   ecx
  ce8dd6:	50                                              	push   eax
  ce8dd7:	e8 04 ec ff ff                                  	call   0xce79e0
  ce8ddc:	eb 20                                           	jmp    0xce8dfe
  ce8dde:	56                                              	push   esi
  ce8ddf:	e8 3c 4d af ff                                  	call   0x7ddb20
  ce8de4:	83 c4 04                                        	add    esp,0x4
  ce8de7:	3b c5                                           	cmp    eax,ebp
  ce8de9:	74 36                                           	je     0xce8e21
  ce8deb:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [esp+0xa0]
  ce8df2:	52                                              	push   edx
  ce8df3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ce8df7:	51                                              	push   ecx
  ce8df8:	50                                              	push   eax
  ce8df9:	e8 72 ea ff ff                                  	call   0xce7870
  ce8dfe:	83 c4 0c                                        	add    esp,0xc
  ce8e01:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce8e05:	8b f0                                           	mov    esi,eax
  ce8e07:	e8 d4 6e 8d ff                                  	call   0x5bfce0
  ce8e0c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ce8e10:	e8 db 6a 80 ff                                  	call   0x4ef8f0
  ce8e15:	5f                                              	pop    edi
  ce8e16:	8b c6                                           	mov    eax,esi
  ce8e18:	5e                                              	pop    esi
  ce8e19:	5d                                              	pop    ebp
  ce8e1a:	81 c4 88 00 00 00                               	add    esp,0x88
  ce8e20:	c3                                              	ret
  ce8e21:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce8e25:	e8 b6 6e 8d ff                                  	call   0x5bfce0
  ce8e2a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ce8e2e:	e8 bd 6a 80 ff                                  	call   0x4ef8f0
  ce8e33:	5f                                              	pop    edi
  ce8e34:	5e                                              	pop    esi
  ce8e35:	83 c8 ff                                        	or     eax,0xffffffff
  ce8e38:	5d                                              	pop    ebp
  ce8e39:	81 c4 88 00 00 00                               	add    esp,0x88
  ce8e3f:	c3                                              	ret
