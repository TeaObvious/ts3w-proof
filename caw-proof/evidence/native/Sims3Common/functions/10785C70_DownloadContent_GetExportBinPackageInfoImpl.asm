# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785c70 (DownloadContent_GetExportBinPackageInfoImpl)
Paired Ghidra pseudocode: 10785C70_DownloadContent_GetExportBinPackageInfoImpl.c
Window: [0x10785c70, 0x10785de0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785c70: 83 ec 44 56 e8 a7 54 dd ff 33 f6 3b c6 0f 84 52
10785c80: 01 00 00 8b 4c 24 4c 8b 10 8b 52 58 51 8b c8 ff
10785c90: d2 50 8d 4c 24 1c 89 74 24 1c 89 74 24 20 89 74
10785ca0: 24 24 c7 44 24 28 00 8d b5 10 e8 71 49 8e ff b8
10785cb0: 44 82 ca 10 89 44 24 08 89 44 24 0c 8d 44 24 08
10785cc0: 50 8d 4c 24 1c 51 8b 0d 94 de c8 10 c7 44 24 1c
10785cd0: fc 8d b5 10 c7 44 24 18 46 82 ca 10 e8 2f d3 00
10785ce0: 00 8b 44 24 08 3b 44 24 0c 0f 84 ac 00 00 00 57
10785cf0: 6a 01 6a 10 8d 54 24 14 52 6a 09 6a 13 8d 4c 24
10785d00: 40 c7 44 24 40 b4 a5 ac 10 66 c7 44 24 4a 13 00
10785d10: 66 c7 44 24 48 0b 00 e8 74 2e 1a 00 89 74 24 08
10785d20: e8 fb 53 dd ff 8b 10 8b 52 50 8d 4c 24 08 51 8d
10785d30: 4c 24 30 51 8b c8 ff d2 f6 44 24 34 04 8b 7c 24
10785d40: 08 c7 44 24 2c b4 a5 ac 10 74 0a 56 8d 4c 24 30
10785d50: e8 3b 2d 1a 00 8b 4c 24 14 8b 44 24 0c 2b c8 83
10785d60: e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 1f 31 19
10785d70: 00 83 c4 04 8b 54 24 24 8b 44 24 1c 2b d0 83 e2
10785d80: fe 83 fa 02 7e 0d 3b c6 74 09 50 e8 00 31 19 00
10785d90: 83 c4 04 8b c7 5f 5e 83 c4 44 c3 8b 4c 24 10 2b
10785da0: c8 83 e1 fe 83 f9 02 7e 0d 3b c6 74 09 50 e8 dd
10785db0: 30 19 00 83 c4 04 8b 54 24 20 8b 44 24 18 2b d0
10785dc0: 83 e2 fe 83 fa 02 7e 0d 3b c6 74 09 50 e8 be 30
10785dd0: 19 00 83 c4 04 33 c0 5e 83 c4 44 c3 cc cc cc cc

LINEAR DISASSEMBLY
10785c70 <.text+0x784c70>:
10785c70:	83 ec 44                                        	sub    esp,0x44
10785c73:	56                                              	push   esi
10785c74:	e8 a7 54 dd ff                                  	call   0x1055b120
10785c79:	33 f6                                           	xor    esi,esi
10785c7b:	3b c6                                           	cmp    eax,esi
10785c7d:	0f 84 52 01 00 00                               	je     0x10785dd5
10785c83:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
10785c87:	8b 10                                           	mov    edx,DWORD PTR [eax]
10785c89:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10785c8c:	51                                              	push   ecx
10785c8d:	8b c8                                           	mov    ecx,eax
10785c8f:	ff d2                                           	call   edx
10785c91:	50                                              	push   eax
10785c92:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785c96:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
10785c9a:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
10785c9e:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
10785ca2:	c7 44 24 28 00 8d b5 10                         	mov    DWORD PTR [esp+0x28],0x10b58d00
10785caa:	e8 71 49 8e ff                                  	call   0x1006a620
10785caf:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785cb4:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10785cb8:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10785cbc:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10785cc0:	50                                              	push   eax
10785cc1:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785cc5:	51                                              	push   ecx
10785cc6:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
10785ccc:	c7 44 24 1c fc 8d b5 10                         	mov    DWORD PTR [esp+0x1c],0x10b58dfc
10785cd4:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
10785cdc:	e8 2f d3 00 00                                  	call   0x10793010
10785ce1:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10785ce5:	3b 44 24 0c                                     	cmp    eax,DWORD PTR [esp+0xc]
10785ce9:	0f 84 ac 00 00 00                               	je     0x10785d9b
10785cef:	57                                              	push   edi
10785cf0:	6a 01                                           	push   0x1
10785cf2:	6a 10                                           	push   0x10
10785cf4:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10785cf8:	52                                              	push   edx
10785cf9:	6a 09                                           	push   0x9
10785cfb:	6a 13                                           	push   0x13
10785cfd:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10785d01:	c7 44 24 40 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x40],0x10aca5b4
10785d09:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
10785d10:	66 c7 44 24 48 0b 00                            	mov    WORD PTR [esp+0x48],0xb
10785d17:	e8 74 2e 1a 00                                  	call   0x10928b90
10785d1c:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
10785d20:	e8 fb 53 dd ff                                  	call   0x1055b120
10785d25:	8b 10                                           	mov    edx,DWORD PTR [eax]
10785d27:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
10785d2a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10785d2e:	51                                              	push   ecx
10785d2f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10785d33:	51                                              	push   ecx
10785d34:	8b c8                                           	mov    ecx,eax
10785d36:	ff d2                                           	call   edx
10785d38:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
10785d3d:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
10785d41:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
10785d49:	74 0a                                           	je     0x10785d55
10785d4b:	56                                              	push   esi
10785d4c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10785d50:	e8 3b 2d 1a 00                                  	call   0x10928a90
10785d55:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10785d59:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10785d5d:	2b c8                                           	sub    ecx,eax
10785d5f:	83 e1 fe                                        	and    ecx,0xfffffffe
10785d62:	83 f9 02                                        	cmp    ecx,0x2
10785d65:	7e 0d                                           	jle    0x10785d74
10785d67:	3b c6                                           	cmp    eax,esi
10785d69:	74 09                                           	je     0x10785d74
10785d6b:	50                                              	push   eax
10785d6c:	e8 1f 31 19 00                                  	call   0x10918e90
10785d71:	83 c4 04                                        	add    esp,0x4
10785d74:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10785d78:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10785d7c:	2b d0                                           	sub    edx,eax
10785d7e:	83 e2 fe                                        	and    edx,0xfffffffe
10785d81:	83 fa 02                                        	cmp    edx,0x2
10785d84:	7e 0d                                           	jle    0x10785d93
10785d86:	3b c6                                           	cmp    eax,esi
10785d88:	74 09                                           	je     0x10785d93
10785d8a:	50                                              	push   eax
10785d8b:	e8 00 31 19 00                                  	call   0x10918e90
10785d90:	83 c4 04                                        	add    esp,0x4
10785d93:	8b c7                                           	mov    eax,edi
10785d95:	5f                                              	pop    edi
10785d96:	5e                                              	pop    esi
10785d97:	83 c4 44                                        	add    esp,0x44
10785d9a:	c3                                              	ret
10785d9b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10785d9f:	2b c8                                           	sub    ecx,eax
10785da1:	83 e1 fe                                        	and    ecx,0xfffffffe
10785da4:	83 f9 02                                        	cmp    ecx,0x2
10785da7:	7e 0d                                           	jle    0x10785db6
10785da9:	3b c6                                           	cmp    eax,esi
10785dab:	74 09                                           	je     0x10785db6
10785dad:	50                                              	push   eax
10785dae:	e8 dd 30 19 00                                  	call   0x10918e90
10785db3:	83 c4 04                                        	add    esp,0x4
10785db6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10785dba:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10785dbe:	2b d0                                           	sub    edx,eax
10785dc0:	83 e2 fe                                        	and    edx,0xfffffffe
10785dc3:	83 fa 02                                        	cmp    edx,0x2
10785dc6:	7e 0d                                           	jle    0x10785dd5
10785dc8:	3b c6                                           	cmp    eax,esi
10785dca:	74 09                                           	je     0x10785dd5
10785dcc:	50                                              	push   eax
10785dcd:	e8 be 30 19 00                                  	call   0x10918e90
10785dd2:	83 c4 04                                        	add    esp,0x4
10785dd5:	33 c0                                           	xor    eax,eax
10785dd7:	5e                                              	pop    esi
10785dd8:	83 c4 44                                        	add    esp,0x44
10785ddb:	c3                                              	ret
10785ddc:	cc                                              	int3
10785ddd:	cc                                              	int3
10785dde:	cc                                              	int3
10785ddf:	cc                                              	int3
