# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00762c50 (ScriptCore.RouteManager::RouteManager_CanTransitionWalkstyle)
Paired Ghidra pseudocode: 00762C50_ScriptCore_RouteManager_RouteManager_CanTransitionWalkstyle.c
Window: [0x00762c50, 0x00762e20) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00762c50: 81 ec bc 00 00 00 53 8b 9c 24 cc 00 00 00 55 8d
00762c60: 44 24 1c 56 8b 35 40 a1 1d 01 8b c8 57 89 4c 24
00762c70: 14 8b d0 8d 4c 24 10 51 89 54 24 14 8b 94 24 d4
00762c80: 00 00 00 89 44 24 24 53 8d 84 24 d4 00 00 00 52
00762c90: 8b ce c7 44 24 28 c8 aa f9 00 89 44 24 24 e8 9d
00762ca0: 14 0e 00 8b 4c 24 14 8b 7c 24 10 8b ac 24 d4 00
00762cb0: 00 00 2b cf b8 93 24 49 92 f7 e9 03 d1 c1 fa 04
00762cc0: 8b c2 c1 e8 1f 03 c2 74 1b 33 c9 85 c0 76 15 8d
00762cd0: 57 18 39 2a 0f 84 a5 00 00 00 83 c1 01 83 c2 1c
00762ce0: 3b c8 72 ee 8d 44 24 10 50 53 55 8b ce e8 4e 14
00762cf0: 0e 00 8b 7c 24 14 8b 74 24 10 8b cf 2b ce b8 93
00762d00: 24 49 92 f7 e9 03 d1 c1 fa 04 8b c2 c1 e8 1f 03
00762d10: c2 74 26 33 c9 85 c0 76 20 8d 56 18 8d 64 24 00
00762d20: 8b 9c 24 d0 00 00 00 39 1a 0f 84 a0 00 00 00 83
00762d30: c1 01 83 c2 1c 3b c8 72 e7 3b f7 73 22 8d 49 00
00762d40: 8b 06 85 c0 74 0e 3b 46 10 74 09 50 e8 8f 17 d8
00762d50: ff 83 c4 04 83 c6 1c 3b f7 72 e5 8b 74 24 10 85
00762d60: f6 74 0f 3b 74 24 20 74 09 56 e8 71 17 d8 ff 83
00762d70: c4 04 5f 5e 5d 32 c0 5b 81 c4 bc 00 00 00 c3 8b
00762d80: 44 24 14 3b f8 8b d8 8b f7 73 24 eb 03 8d 49 00
00762d90: 8b 06 85 c0 74 0e 3b 46 10 74 09 50 e8 3f 17 d8
00762da0: ff 83 c4 04 83 c6 1c 3b f3 72 e5 8b 7c 24 10 85
00762db0: ff 74 0f 3b 7c 24 20 74 09 57 e8 21 17 d8 ff 83
00762dc0: c4 04 5f 5e 5d b0 01 5b 81 c4 bc 00 00 00 c3 3b
00762dd0: f7 73 1f 8b 06 85 c0 74 0e 3b 46 10 74 09 50 e8
00762de0: fc 16 d8 ff 83 c4 04 83 c6 1c 3b f7 72 e5 8b 74
00762df0: 24 10 85 f6 74 cc 3b 74 24 20 74 c6 56 e8 de 16
00762e00: d8 ff 83 c4 04 5f 5e 5d b0 01 5b 81 c4 bc 00 00
00762e10: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00762c50 <.text+0x361c50>:
  762c50:	81 ec bc 00 00 00                               	sub    esp,0xbc
  762c56:	53                                              	push   ebx
  762c57:	8b 9c 24 cc 00 00 00                            	mov    ebx,DWORD PTR [esp+0xcc]
  762c5e:	55                                              	push   ebp
  762c5f:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  762c63:	56                                              	push   esi
  762c64:	8b 35 40 a1 1d 01                               	mov    esi,DWORD PTR ds:0x11da140
  762c6a:	8b c8                                           	mov    ecx,eax
  762c6c:	57                                              	push   edi
  762c6d:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  762c71:	8b d0                                           	mov    edx,eax
  762c73:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  762c77:	51                                              	push   ecx
  762c78:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  762c7c:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
  762c83:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  762c87:	53                                              	push   ebx
  762c88:	8d 84 24 d4 00 00 00                            	lea    eax,[esp+0xd4]
  762c8f:	52                                              	push   edx
  762c90:	8b ce                                           	mov    ecx,esi
  762c92:	c7 44 24 28 c8 aa f9 00                         	mov    DWORD PTR [esp+0x28],0xf9aac8
  762c9a:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  762c9e:	e8 9d 14 0e 00                                  	call   0x844140
  762ca3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  762ca7:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  762cab:	8b ac 24 d4 00 00 00                            	mov    ebp,DWORD PTR [esp+0xd4]
  762cb2:	2b cf                                           	sub    ecx,edi
  762cb4:	b8 93 24 49 92                                  	mov    eax,0x92492493
  762cb9:	f7 e9                                           	imul   ecx
  762cbb:	03 d1                                           	add    edx,ecx
  762cbd:	c1 fa 04                                        	sar    edx,0x4
  762cc0:	8b c2                                           	mov    eax,edx
  762cc2:	c1 e8 1f                                        	shr    eax,0x1f
  762cc5:	03 c2                                           	add    eax,edx
  762cc7:	74 1b                                           	je     0x762ce4
  762cc9:	33 c9                                           	xor    ecx,ecx
  762ccb:	85 c0                                           	test   eax,eax
  762ccd:	76 15                                           	jbe    0x762ce4
  762ccf:	8d 57 18                                        	lea    edx,[edi+0x18]
  762cd2:	39 2a                                           	cmp    DWORD PTR [edx],ebp
  762cd4:	0f 84 a5 00 00 00                               	je     0x762d7f
  762cda:	83 c1 01                                        	add    ecx,0x1
  762cdd:	83 c2 1c                                        	add    edx,0x1c
  762ce0:	3b c8                                           	cmp    ecx,eax
  762ce2:	72 ee                                           	jb     0x762cd2
  762ce4:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  762ce8:	50                                              	push   eax
  762ce9:	53                                              	push   ebx
  762cea:	55                                              	push   ebp
  762ceb:	8b ce                                           	mov    ecx,esi
  762ced:	e8 4e 14 0e 00                                  	call   0x844140
  762cf2:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  762cf6:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762cfa:	8b cf                                           	mov    ecx,edi
  762cfc:	2b ce                                           	sub    ecx,esi
  762cfe:	b8 93 24 49 92                                  	mov    eax,0x92492493
  762d03:	f7 e9                                           	imul   ecx
  762d05:	03 d1                                           	add    edx,ecx
  762d07:	c1 fa 04                                        	sar    edx,0x4
  762d0a:	8b c2                                           	mov    eax,edx
  762d0c:	c1 e8 1f                                        	shr    eax,0x1f
  762d0f:	03 c2                                           	add    eax,edx
  762d11:	74 26                                           	je     0x762d39
  762d13:	33 c9                                           	xor    ecx,ecx
  762d15:	85 c0                                           	test   eax,eax
  762d17:	76 20                                           	jbe    0x762d39
  762d19:	8d 56 18                                        	lea    edx,[esi+0x18]
  762d1c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  762d20:	8b 9c 24 d0 00 00 00                            	mov    ebx,DWORD PTR [esp+0xd0]
  762d27:	39 1a                                           	cmp    DWORD PTR [edx],ebx
  762d29:	0f 84 a0 00 00 00                               	je     0x762dcf
  762d2f:	83 c1 01                                        	add    ecx,0x1
  762d32:	83 c2 1c                                        	add    edx,0x1c
  762d35:	3b c8                                           	cmp    ecx,eax
  762d37:	72 e7                                           	jb     0x762d20
  762d39:	3b f7                                           	cmp    esi,edi
  762d3b:	73 22                                           	jae    0x762d5f
  762d3d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  762d40:	8b 06                                           	mov    eax,DWORD PTR [esi]
  762d42:	85 c0                                           	test   eax,eax
  762d44:	74 0e                                           	je     0x762d54
  762d46:	3b 46 10                                        	cmp    eax,DWORD PTR [esi+0x10]
  762d49:	74 09                                           	je     0x762d54
  762d4b:	50                                              	push   eax
  762d4c:	e8 8f 17 d8 ff                                  	call   0x4e44e0
  762d51:	83 c4 04                                        	add    esp,0x4
  762d54:	83 c6 1c                                        	add    esi,0x1c
  762d57:	3b f7                                           	cmp    esi,edi
  762d59:	72 e5                                           	jb     0x762d40
  762d5b:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762d5f:	85 f6                                           	test   esi,esi
  762d61:	74 0f                                           	je     0x762d72
  762d63:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  762d67:	74 09                                           	je     0x762d72
  762d69:	56                                              	push   esi
  762d6a:	e8 71 17 d8 ff                                  	call   0x4e44e0
  762d6f:	83 c4 04                                        	add    esp,0x4
  762d72:	5f                                              	pop    edi
  762d73:	5e                                              	pop    esi
  762d74:	5d                                              	pop    ebp
  762d75:	32 c0                                           	xor    al,al
  762d77:	5b                                              	pop    ebx
  762d78:	81 c4 bc 00 00 00                               	add    esp,0xbc
  762d7e:	c3                                              	ret
  762d7f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  762d83:	3b f8                                           	cmp    edi,eax
  762d85:	8b d8                                           	mov    ebx,eax
  762d87:	8b f7                                           	mov    esi,edi
  762d89:	73 24                                           	jae    0x762daf
  762d8b:	eb 03                                           	jmp    0x762d90
  762d8d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  762d90:	8b 06                                           	mov    eax,DWORD PTR [esi]
  762d92:	85 c0                                           	test   eax,eax
  762d94:	74 0e                                           	je     0x762da4
  762d96:	3b 46 10                                        	cmp    eax,DWORD PTR [esi+0x10]
  762d99:	74 09                                           	je     0x762da4
  762d9b:	50                                              	push   eax
  762d9c:	e8 3f 17 d8 ff                                  	call   0x4e44e0
  762da1:	83 c4 04                                        	add    esp,0x4
  762da4:	83 c6 1c                                        	add    esi,0x1c
  762da7:	3b f3                                           	cmp    esi,ebx
  762da9:	72 e5                                           	jb     0x762d90
  762dab:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  762daf:	85 ff                                           	test   edi,edi
  762db1:	74 0f                                           	je     0x762dc2
  762db3:	3b 7c 24 20                                     	cmp    edi,DWORD PTR [esp+0x20]
  762db7:	74 09                                           	je     0x762dc2
  762db9:	57                                              	push   edi
  762dba:	e8 21 17 d8 ff                                  	call   0x4e44e0
  762dbf:	83 c4 04                                        	add    esp,0x4
  762dc2:	5f                                              	pop    edi
  762dc3:	5e                                              	pop    esi
  762dc4:	5d                                              	pop    ebp
  762dc5:	b0 01                                           	mov    al,0x1
  762dc7:	5b                                              	pop    ebx
  762dc8:	81 c4 bc 00 00 00                               	add    esp,0xbc
  762dce:	c3                                              	ret
  762dcf:	3b f7                                           	cmp    esi,edi
  762dd1:	73 1f                                           	jae    0x762df2
  762dd3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  762dd5:	85 c0                                           	test   eax,eax
  762dd7:	74 0e                                           	je     0x762de7
  762dd9:	3b 46 10                                        	cmp    eax,DWORD PTR [esi+0x10]
  762ddc:	74 09                                           	je     0x762de7
  762dde:	50                                              	push   eax
  762ddf:	e8 fc 16 d8 ff                                  	call   0x4e44e0
  762de4:	83 c4 04                                        	add    esp,0x4
  762de7:	83 c6 1c                                        	add    esi,0x1c
  762dea:	3b f7                                           	cmp    esi,edi
  762dec:	72 e5                                           	jb     0x762dd3
  762dee:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  762df2:	85 f6                                           	test   esi,esi
  762df4:	74 cc                                           	je     0x762dc2
  762df6:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  762dfa:	74 c6                                           	je     0x762dc2
  762dfc:	56                                              	push   esi
  762dfd:	e8 de 16 d8 ff                                  	call   0x4e44e0
  762e02:	83 c4 04                                        	add    esp,0x4
  762e05:	5f                                              	pop    edi
  762e06:	5e                                              	pop    esi
  762e07:	5d                                              	pop    ebp
  762e08:	b0 01                                           	mov    al,0x1
  762e0a:	5b                                              	pop    ebx
  762e0b:	81 c4 bc 00 00 00                               	add    esp,0xbc
  762e11:	c3                                              	ret
  762e12:	cc                                              	int3
  762e13:	cc                                              	int3
  762e14:	cc                                              	int3
  762e15:	cc                                              	int3
  762e16:	cc                                              	int3
  762e17:	cc                                              	int3
  762e18:	cc                                              	int3
  762e19:	cc                                              	int3
  762e1a:	cc                                              	int3
  762e1b:	cc                                              	int3
  762e1c:	cc                                              	int3
  762e1d:	cc                                              	int3
  762e1e:	cc                                              	int3
  762e1f:	cc                                              	int3
