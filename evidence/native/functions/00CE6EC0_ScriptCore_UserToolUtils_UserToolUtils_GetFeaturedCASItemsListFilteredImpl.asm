# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6ec0 (ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedCASItemsListFilteredImpl)
Paired Ghidra pseudocode: 00CE6EC0_ScriptCore_UserToolUtils_UserToolUtils_GetFeaturedCASItemsListFilteredImpl.c
Window: [0x00ce6ec0, 0x00ce7000) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce7000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6ec0: 83 ec 38 53 56 8b 35 34 e0 1e 01 33 db 3b f3 0f
00ce6ed0: 84 1c 01 00 00 89 5c 24 08 e8 b2 24 a8 ff 3b c3
00ce6ee0: 89 44 24 0c 0f 84 fd 00 00 00 8b 44 24 54 8b 54
00ce6ef0: 24 50 57 50 8b 44 24 54 8d 4c 24 18 51 8b 4c 24
00ce6f00: 54 52 8b 54 24 54 50 51 52 8b ce 89 5c 24 2c 89
00ce6f10: 5c 24 30 89 5c 24 34 c7 44 24 38 38 22 05 01 e8
00ce6f20: 4c 97 fa ff 8b 74 24 18 2b 74 24 14 8b 0d 64 c8
00ce6f30: 1c 01 c1 fe 03 53 8d 04 f5 00 00 00 00 50 e8 dd
00ce6f40: ff 7f ff 8b f8 3b fb 0f 84 88 00 00 00 33 c0 3b
00ce6f50: f3 76 19 8b 4c 24 14 8b 14 c1 89 14 c7 8b 4c c1
00ce6f60: 04 89 4c c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44
00ce6f70: 24 24 f4 a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e
00ce6f80: 8d 4c 24 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a
00ce6f90: 08 57 6a 20 6a 0c e8 25 ea 80 ff 8b 4c 24 10 8b
00ce6fa0: 11 8b 52 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2
00ce6fb0: 8b 0d 64 c8 1c 01 57 e8 b4 ee 7f ff f6 44 24 2c
00ce6fc0: 04 c7 44 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28
00ce6fd0: e8 8b e7 80 ff 8b 44 24 14 3b c3 5f 74 09 50 e8
00ce6fe0: fc d4 7f ff 83 c4 04 8b 44 24 08 5e 5b 83 c4 38
00ce6ff0: c3 5e 33 c0 5b 83 c4 38 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6ec0 <.text+0x8e5ec0>:
  ce6ec0:	83 ec 38                                        	sub    esp,0x38
  ce6ec3:	53                                              	push   ebx
  ce6ec4:	56                                              	push   esi
  ce6ec5:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce6ecb:	33 db                                           	xor    ebx,ebx
  ce6ecd:	3b f3                                           	cmp    esi,ebx
  ce6ecf:	0f 84 1c 01 00 00                               	je     0xce6ff1
  ce6ed5:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce6ed9:	e8 b2 24 a8 ff                                  	call   0x769390
  ce6ede:	3b c3                                           	cmp    eax,ebx
  ce6ee0:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce6ee4:	0f 84 fd 00 00 00                               	je     0xce6fe7
  ce6eea:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  ce6eee:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  ce6ef2:	57                                              	push   edi
  ce6ef3:	50                                              	push   eax
  ce6ef4:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  ce6ef8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ce6efc:	51                                              	push   ecx
  ce6efd:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  ce6f01:	52                                              	push   edx
  ce6f02:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  ce6f06:	50                                              	push   eax
  ce6f07:	51                                              	push   ecx
  ce6f08:	52                                              	push   edx
  ce6f09:	8b ce                                           	mov    ecx,esi
  ce6f0b:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  ce6f0f:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  ce6f13:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  ce6f17:	c7 44 24 38 38 22 05 01                         	mov    DWORD PTR [esp+0x38],0x1052238
  ce6f1f:	e8 4c 97 fa ff                                  	call   0xc90670
  ce6f24:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ce6f28:	2b 74 24 14                                     	sub    esi,DWORD PTR [esp+0x14]
  ce6f2c:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce6f32:	c1 fe 03                                        	sar    esi,0x3
  ce6f35:	53                                              	push   ebx
  ce6f36:	8d 04 f5 00 00 00 00                            	lea    eax,[esi*8+0x0]
  ce6f3d:	50                                              	push   eax
  ce6f3e:	e8 dd ff 7f ff                                  	call   0x4e6f20
  ce6f43:	8b f8                                           	mov    edi,eax
  ce6f45:	3b fb                                           	cmp    edi,ebx
  ce6f47:	0f 84 88 00 00 00                               	je     0xce6fd5
  ce6f4d:	33 c0                                           	xor    eax,eax
  ce6f4f:	3b f3                                           	cmp    esi,ebx
  ce6f51:	76 19                                           	jbe    0xce6f6c
  ce6f53:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce6f57:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce6f5a:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce6f5d:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce6f61:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce6f65:	83 c0 01                                        	add    eax,0x1
  ce6f68:	3b c6                                           	cmp    eax,esi
  ce6f6a:	72 e7                                           	jb     0xce6f53
  ce6f6c:	3b f3                                           	cmp    esi,ebx
  ce6f6e:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce6f76:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce6f7b:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce6f80:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce6f84:	74 08                                           	je     0xce6f8e
  ce6f86:	56                                              	push   esi
  ce6f87:	6a 08                                           	push   0x8
  ce6f89:	57                                              	push   edi
  ce6f8a:	6a 18                                           	push   0x18
  ce6f8c:	eb 06                                           	jmp    0xce6f94
  ce6f8e:	53                                              	push   ebx
  ce6f8f:	6a 08                                           	push   0x8
  ce6f91:	57                                              	push   edi
  ce6f92:	6a 20                                           	push   0x20
  ce6f94:	6a 0c                                           	push   0xc
  ce6f96:	e8 25 ea 80 ff                                  	call   0x4f59c0
  ce6f9b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce6f9f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce6fa1:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce6fa4:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce6fa8:	50                                              	push   eax
  ce6fa9:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce6fad:	50                                              	push   eax
  ce6fae:	ff d2                                           	call   edx
  ce6fb0:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce6fb6:	57                                              	push   edi
  ce6fb7:	e8 b4 ee 7f ff                                  	call   0x4e5e70
  ce6fbc:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce6fc1:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce6fc9:	74 0a                                           	je     0xce6fd5
  ce6fcb:	53                                              	push   ebx
  ce6fcc:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce6fd0:	e8 8b e7 80 ff                                  	call   0x4f5760
  ce6fd5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce6fd9:	3b c3                                           	cmp    eax,ebx
  ce6fdb:	5f                                              	pop    edi
  ce6fdc:	74 09                                           	je     0xce6fe7
  ce6fde:	50                                              	push   eax
  ce6fdf:	e8 fc d4 7f ff                                  	call   0x4e44e0
  ce6fe4:	83 c4 04                                        	add    esp,0x4
  ce6fe7:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce6feb:	5e                                              	pop    esi
  ce6fec:	5b                                              	pop    ebx
  ce6fed:	83 c4 38                                        	add    esp,0x38
  ce6ff0:	c3                                              	ret
  ce6ff1:	5e                                              	pop    esi
  ce6ff2:	33 c0                                           	xor    eax,eax
  ce6ff4:	5b                                              	pop    ebx
  ce6ff5:	83 c4 38                                        	add    esp,0x38
  ce6ff8:	c3                                              	ret
  ce6ff9:	cc                                              	int3
  ce6ffa:	cc                                              	int3
  ce6ffb:	cc                                              	int3
  ce6ffc:	cc                                              	int3
  ce6ffd:	cc                                              	int3
  ce6ffe:	cc                                              	int3
  ce6fff:	cc                                              	int3
