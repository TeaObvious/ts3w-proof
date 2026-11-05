# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00778e20 (ScriptCore.ThumbnailManager::ThumbnailManager_SaveSimFaceThumbnail)
Paired Ghidra pseudocode: 00778E20_ScriptCore_ThumbnailManager_ThumbnailManager_SaveSimFaceThumbnail.c
Window: [0x00778e20, 0x00778f70) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00778f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00778e20: 83 ec 40 53 8b 1d 30 ec 1e 01 56 57 e8 5f 05 ff
00778e30: ff 33 ff 3b df 8b f0 0f 84 23 01 00 00 3b f7 0f
00778e40: 84 1b 01 00 00 8b 4c 24 68 8b 06 8b 50 58 51 8b
00778e50: ce ff d2 50 8d 4c 24 30 89 7c 24 30 89 7c 24 34
00778e60: 89 7c 24 38 c7 44 24 3c e4 e2 00 01 e8 1f 27 c9
00778e70: ff 8b 4c 24 6c 8b 06 8b 50 58 51 8b ce ff d2 50
00778e80: 8d 4c 24 20 89 7c 24 20 89 7c 24 24 89 7c 24 28
00778e90: c7 44 24 2c a8 e2 00 01 e8 f3 26 c9 ff 8b 4c 24
00778ea0: 70 8b 06 8b 50 58 51 8b ce ff d2 50 8d 4c 24 10
00778eb0: 89 7c 24 10 89 7c 24 14 89 7c 24 18 c7 44 24 1c
00778ec0: 68 e2 00 01 e8 c7 26 c9 ff 8d 44 24 0c 50 8b 44
00778ed0: 24 68 8d 4c 24 20 51 8b 4c 24 68 8d 54 24 34 52
00778ee0: 50 51 8d 54 24 50 52 8d 4c 24 68 e8 f0 31 ff ff
00778ef0: 50 8b cb e8 78 1f 5d 00 8b 4c 24 14 8a d8 8b 44
00778f00: 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09
00778f10: 50 e8 ca b5 d6 ff 83 c4 04 8b 54 24 24 8b 44 24
00778f20: 1c 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c7 74 09 50
00778f30: e8 ab b5 d6 ff 83 c4 04 8b 4c 24 34 8b 44 24 2c
00778f40: 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74 09 50 e8
00778f50: 8c b5 d6 ff 83 c4 04 5f 5e 8a c3 5b 83 c4 40 c3
00778f60: 5f 5e 32 c0 5b 83 c4 40 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00778e20 <.text+0x377e20>:
  778e20:	83 ec 40                                        	sub    esp,0x40
  778e23:	53                                              	push   ebx
  778e24:	8b 1d 30 ec 1e 01                               	mov    ebx,DWORD PTR ds:0x11eec30
  778e2a:	56                                              	push   esi
  778e2b:	57                                              	push   edi
  778e2c:	e8 5f 05 ff ff                                  	call   0x769390
  778e31:	33 ff                                           	xor    edi,edi
  778e33:	3b df                                           	cmp    ebx,edi
  778e35:	8b f0                                           	mov    esi,eax
  778e37:	0f 84 23 01 00 00                               	je     0x778f60
  778e3d:	3b f7                                           	cmp    esi,edi
  778e3f:	0f 84 1b 01 00 00                               	je     0x778f60
  778e45:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  778e49:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778e4b:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  778e4e:	51                                              	push   ecx
  778e4f:	8b ce                                           	mov    ecx,esi
  778e51:	ff d2                                           	call   edx
  778e53:	50                                              	push   eax
  778e54:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  778e58:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  778e5c:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  778e60:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  778e64:	c7 44 24 3c e4 e2 00 01                         	mov    DWORD PTR [esp+0x3c],0x100e2e4
  778e6c:	e8 1f 27 c9 ff                                  	call   0x40b590
  778e71:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  778e75:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778e77:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  778e7a:	51                                              	push   ecx
  778e7b:	8b ce                                           	mov    ecx,esi
  778e7d:	ff d2                                           	call   edx
  778e7f:	50                                              	push   eax
  778e80:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  778e84:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  778e88:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  778e8c:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  778e90:	c7 44 24 2c a8 e2 00 01                         	mov    DWORD PTR [esp+0x2c],0x100e2a8
  778e98:	e8 f3 26 c9 ff                                  	call   0x40b590
  778e9d:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  778ea1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778ea3:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  778ea6:	51                                              	push   ecx
  778ea7:	8b ce                                           	mov    ecx,esi
  778ea9:	ff d2                                           	call   edx
  778eab:	50                                              	push   eax
  778eac:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  778eb0:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  778eb4:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  778eb8:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  778ebc:	c7 44 24 1c 68 e2 00 01                         	mov    DWORD PTR [esp+0x1c],0x100e268
  778ec4:	e8 c7 26 c9 ff                                  	call   0x40b590
  778ec9:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  778ecd:	50                                              	push   eax
  778ece:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  778ed2:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  778ed6:	51                                              	push   ecx
  778ed7:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  778edb:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  778edf:	52                                              	push   edx
  778ee0:	50                                              	push   eax
  778ee1:	51                                              	push   ecx
  778ee2:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  778ee6:	52                                              	push   edx
  778ee7:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  778eeb:	e8 f0 31 ff ff                                  	call   0x76c0e0
  778ef0:	50                                              	push   eax
  778ef1:	8b cb                                           	mov    ecx,ebx
  778ef3:	e8 78 1f 5d 00                                  	call   0xd4ae70
  778ef8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  778efc:	8a d8                                           	mov    bl,al
  778efe:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  778f02:	2b c8                                           	sub    ecx,eax
  778f04:	83 e1 fe                                        	and    ecx,0xfffffffe
  778f07:	83 f9 02                                        	cmp    ecx,0x2
  778f0a:	7e 0d                                           	jle    0x778f19
  778f0c:	3b c7                                           	cmp    eax,edi
  778f0e:	74 09                                           	je     0x778f19
  778f10:	50                                              	push   eax
  778f11:	e8 ca b5 d6 ff                                  	call   0x4e44e0
  778f16:	83 c4 04                                        	add    esp,0x4
  778f19:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  778f1d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  778f21:	2b d0                                           	sub    edx,eax
  778f23:	83 e2 fe                                        	and    edx,0xfffffffe
  778f26:	83 fa 02                                        	cmp    edx,0x2
  778f29:	7e 0d                                           	jle    0x778f38
  778f2b:	3b c7                                           	cmp    eax,edi
  778f2d:	74 09                                           	je     0x778f38
  778f2f:	50                                              	push   eax
  778f30:	e8 ab b5 d6 ff                                  	call   0x4e44e0
  778f35:	83 c4 04                                        	add    esp,0x4
  778f38:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  778f3c:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  778f40:	2b c8                                           	sub    ecx,eax
  778f42:	83 e1 fe                                        	and    ecx,0xfffffffe
  778f45:	83 f9 02                                        	cmp    ecx,0x2
  778f48:	7e 0d                                           	jle    0x778f57
  778f4a:	3b c7                                           	cmp    eax,edi
  778f4c:	74 09                                           	je     0x778f57
  778f4e:	50                                              	push   eax
  778f4f:	e8 8c b5 d6 ff                                  	call   0x4e44e0
  778f54:	83 c4 04                                        	add    esp,0x4
  778f57:	5f                                              	pop    edi
  778f58:	5e                                              	pop    esi
  778f59:	8a c3                                           	mov    al,bl
  778f5b:	5b                                              	pop    ebx
  778f5c:	83 c4 40                                        	add    esp,0x40
  778f5f:	c3                                              	ret
  778f60:	5f                                              	pop    edi
  778f61:	5e                                              	pop    esi
  778f62:	32 c0                                           	xor    al,al
  778f64:	5b                                              	pop    ebx
  778f65:	83 c4 40                                        	add    esp,0x40
  778f68:	c3                                              	ret
  778f69:	cc                                              	int3
  778f6a:	cc                                              	int3
  778f6b:	cc                                              	int3
  778f6c:	cc                                              	int3
  778f6d:	cc                                              	int3
  778f6e:	cc                                              	int3
  778f6f:	cc                                              	int3
