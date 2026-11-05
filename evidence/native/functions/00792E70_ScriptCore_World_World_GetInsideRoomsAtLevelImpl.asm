# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00792e70 (ScriptCore.World::World_GetInsideRoomsAtLevelImpl)
Paired Ghidra pseudocode: 00792E70_ScriptCore_World_World_GetInsideRoomsAtLevelImpl.c
Window: [0x00792e70, 0x00792f70) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00792f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00792e70: 8b 0d c4 db 1e 01 83 ec 1c 53 33 db 3b cb 75 07
00792e80: 33 c0 5b 83 c4 1c c3 8b 44 24 28 8b 54 24 24 56
00792e90: 57 53 50 52 e8 77 f9 4c 00 8b f0 89 5c 24 0c e8
00792ea0: ec 64 fd ff 3b f3 8b f8 74 08 8b 8e 98 02 00 00
00792eb0: eb 02 33 c9 3b cb 0f 84 a2 00 00 00 3b fb 0f 84
00792ec0: 9a 00 00 00 8b 54 24 38 6a 01 8d 44 24 18 50 8b
00792ed0: 44 24 3c 52 50 89 5c 24 24 89 5c 24 28 89 5c 24
00792ee0: 2c c7 44 24 30 f0 1a 01 01 e8 32 42 3b 00 8b 44
00792ef0: 24 18 8b 74 24 14 2b c6 d1 f8 74 55 8b 17 8b 92
00792f00: 8c 00 00 00 55 50 8d 44 24 14 50 8b cf ff d2 8b
00792f10: 74 24 18 8b 6c 24 1c 3b f5 74 33 eb 03 8d 49 00
00792f20: 0f bf 06 8b 17 8b 92 a4 00 00 00 6a 01 89 44 24
00792f30: 18 53 8d 44 24 1c 50 8d 4c 24 1c 51 8b cf ff d2
00792f40: 83 c6 02 83 c3 01 3b f5 75 d6 8b 74 24 18 33 db
00792f50: 5d 3b f3 74 09 56 e8 85 15 d5 ff 83 c4 04 8b 44
00792f60: 24 0c 5f 5e 5b 83 c4 1c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00792e70 <.text+0x391e70>:
  792e70:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  792e76:	83 ec 1c                                        	sub    esp,0x1c
  792e79:	53                                              	push   ebx
  792e7a:	33 db                                           	xor    ebx,ebx
  792e7c:	3b cb                                           	cmp    ecx,ebx
  792e7e:	75 07                                           	jne    0x792e87
  792e80:	33 c0                                           	xor    eax,eax
  792e82:	5b                                              	pop    ebx
  792e83:	83 c4 1c                                        	add    esp,0x1c
  792e86:	c3                                              	ret
  792e87:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  792e8b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  792e8f:	56                                              	push   esi
  792e90:	57                                              	push   edi
  792e91:	53                                              	push   ebx
  792e92:	50                                              	push   eax
  792e93:	52                                              	push   edx
  792e94:	e8 77 f9 4c 00                                  	call   0xc62810
  792e99:	8b f0                                           	mov    esi,eax
  792e9b:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  792e9f:	e8 ec 64 fd ff                                  	call   0x769390
  792ea4:	3b f3                                           	cmp    esi,ebx
  792ea6:	8b f8                                           	mov    edi,eax
  792ea8:	74 08                                           	je     0x792eb2
  792eaa:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
  792eb0:	eb 02                                           	jmp    0x792eb4
  792eb2:	33 c9                                           	xor    ecx,ecx
  792eb4:	3b cb                                           	cmp    ecx,ebx
  792eb6:	0f 84 a2 00 00 00                               	je     0x792f5e
  792ebc:	3b fb                                           	cmp    edi,ebx
  792ebe:	0f 84 9a 00 00 00                               	je     0x792f5e
  792ec4:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  792ec8:	6a 01                                           	push   0x1
  792eca:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  792ece:	50                                              	push   eax
  792ecf:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  792ed3:	52                                              	push   edx
  792ed4:	50                                              	push   eax
  792ed5:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  792ed9:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  792edd:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  792ee1:	c7 44 24 30 f0 1a 01 01                         	mov    DWORD PTR [esp+0x30],0x1011af0
  792ee9:	e8 32 42 3b 00                                  	call   0xb47120
  792eee:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  792ef2:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  792ef6:	2b c6                                           	sub    eax,esi
  792ef8:	d1 f8                                           	sar    eax,1
  792efa:	74 55                                           	je     0x792f51
  792efc:	8b 17                                           	mov    edx,DWORD PTR [edi]
  792efe:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  792f04:	55                                              	push   ebp
  792f05:	50                                              	push   eax
  792f06:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  792f0a:	50                                              	push   eax
  792f0b:	8b cf                                           	mov    ecx,edi
  792f0d:	ff d2                                           	call   edx
  792f0f:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  792f13:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  792f17:	3b f5                                           	cmp    esi,ebp
  792f19:	74 33                                           	je     0x792f4e
  792f1b:	eb 03                                           	jmp    0x792f20
  792f1d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  792f20:	0f bf 06                                        	movsx  eax,WORD PTR [esi]
  792f23:	8b 17                                           	mov    edx,DWORD PTR [edi]
  792f25:	8b 92 a4 00 00 00                               	mov    edx,DWORD PTR [edx+0xa4]
  792f2b:	6a 01                                           	push   0x1
  792f2d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  792f31:	53                                              	push   ebx
  792f32:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  792f36:	50                                              	push   eax
  792f37:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  792f3b:	51                                              	push   ecx
  792f3c:	8b cf                                           	mov    ecx,edi
  792f3e:	ff d2                                           	call   edx
  792f40:	83 c6 02                                        	add    esi,0x2
  792f43:	83 c3 01                                        	add    ebx,0x1
  792f46:	3b f5                                           	cmp    esi,ebp
  792f48:	75 d6                                           	jne    0x792f20
  792f4a:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  792f4e:	33 db                                           	xor    ebx,ebx
  792f50:	5d                                              	pop    ebp
  792f51:	3b f3                                           	cmp    esi,ebx
  792f53:	74 09                                           	je     0x792f5e
  792f55:	56                                              	push   esi
  792f56:	e8 85 15 d5 ff                                  	call   0x4e44e0
  792f5b:	83 c4 04                                        	add    esp,0x4
  792f5e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  792f62:	5f                                              	pop    edi
  792f63:	5e                                              	pop    esi
  792f64:	5b                                              	pop    ebx
  792f65:	83 c4 1c                                        	add    esp,0x1c
  792f68:	c3                                              	ret
  792f69:	cc                                              	int3
  792f6a:	cc                                              	int3
  792f6b:	cc                                              	int3
  792f6c:	cc                                              	int3
  792f6d:	cc                                              	int3
  792f6e:	cc                                              	int3
  792f6f:	cc                                              	int3
