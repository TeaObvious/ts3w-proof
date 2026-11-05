# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749db0 (ScriptCore.Queries::Query_CountObjectsOnLot)
Paired Ghidra pseudocode: 00749DB0_ScriptCore_Queries_Query_CountObjectsOnLot.c
Window: [0x00749db0, 0x00749e70) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749db0: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 80 5a 83 00
00749dc0: 8d 44 24 1c 8b c8 8b d0 56 89 4c 24 0c 89 44 24
00749dd0: 18 8d 4c 24 08 51 8b 4d 0c 89 54 24 0c 8b 55 14
00749de0: 8d 84 24 24 10 00 00 89 44 24 14 8b 45 10 52 50
00749df0: 51 c7 44 24 24 00 4e 00 01 e8 a2 fd ff ff 83 c4
00749e00: 10 85 c0 74 44 e8 86 f5 01 00 8b 4c 24 08 8b 54
00749e10: 24 0c 8b 30 2b d1 c1 fa 03 52 8b 55 08 51 8b c8
00749e20: 8b 86 c4 00 00 00 52 ff d0 8b f0 8b 44 24 08 85
00749e30: c0 74 0f 3b 44 24 18 74 09 50 e8 a1 a6 d9 ff 83
00749e40: c4 04 8b c6 5e 8b e5 5d c3 8b 44 24 08 85 c0 74
00749e50: 0f 3b 44 24 18 74 09 50 e8 83 a6 d9 ff 83 c4 04
00749e60: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749db0 <.text+0x348db0>:
  749db0:	55                                              	push   ebp
  749db1:	8b ec                                           	mov    ebp,esp
  749db3:	83 e4 f8                                        	and    esp,0xfffffff8
  749db6:	b8 1c 10 00 00                                  	mov    eax,0x101c
  749dbb:	e8 80 5a 83 00                                  	call   0xf7f840
  749dc0:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  749dc4:	8b c8                                           	mov    ecx,eax
  749dc6:	8b d0                                           	mov    edx,eax
  749dc8:	56                                              	push   esi
  749dc9:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  749dcd:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  749dd1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  749dd5:	51                                              	push   ecx
  749dd6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  749dd9:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  749ddd:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
  749de0:	8d 84 24 24 10 00 00                            	lea    eax,[esp+0x1024]
  749de7:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  749deb:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  749dee:	52                                              	push   edx
  749def:	50                                              	push   eax
  749df0:	51                                              	push   ecx
  749df1:	c7 44 24 24 00 4e 00 01                         	mov    DWORD PTR [esp+0x24],0x1004e00
  749df9:	e8 a2 fd ff ff                                  	call   0x749ba0
  749dfe:	83 c4 10                                        	add    esp,0x10
  749e01:	85 c0                                           	test   eax,eax
  749e03:	74 44                                           	je     0x749e49
  749e05:	e8 86 f5 01 00                                  	call   0x769390
  749e0a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  749e0e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  749e12:	8b 30                                           	mov    esi,DWORD PTR [eax]
  749e14:	2b d1                                           	sub    edx,ecx
  749e16:	c1 fa 03                                        	sar    edx,0x3
  749e19:	52                                              	push   edx
  749e1a:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  749e1d:	51                                              	push   ecx
  749e1e:	8b c8                                           	mov    ecx,eax
  749e20:	8b 86 c4 00 00 00                               	mov    eax,DWORD PTR [esi+0xc4]
  749e26:	52                                              	push   edx
  749e27:	ff d0                                           	call   eax
  749e29:	8b f0                                           	mov    esi,eax
  749e2b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  749e2f:	85 c0                                           	test   eax,eax
  749e31:	74 0f                                           	je     0x749e42
  749e33:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  749e37:	74 09                                           	je     0x749e42
  749e39:	50                                              	push   eax
  749e3a:	e8 a1 a6 d9 ff                                  	call   0x4e44e0
  749e3f:	83 c4 04                                        	add    esp,0x4
  749e42:	8b c6                                           	mov    eax,esi
  749e44:	5e                                              	pop    esi
  749e45:	8b e5                                           	mov    esp,ebp
  749e47:	5d                                              	pop    ebp
  749e48:	c3                                              	ret
  749e49:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  749e4d:	85 c0                                           	test   eax,eax
  749e4f:	74 0f                                           	je     0x749e60
  749e51:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
  749e55:	74 09                                           	je     0x749e60
  749e57:	50                                              	push   eax
  749e58:	e8 83 a6 d9 ff                                  	call   0x4e44e0
  749e5d:	83 c4 04                                        	add    esp,0x4
  749e60:	33 c0                                           	xor    eax,eax
  749e62:	5e                                              	pop    esi
  749e63:	8b e5                                           	mov    esp,ebp
  749e65:	5d                                              	pop    ebp
  749e66:	c3                                              	ret
  749e67:	cc                                              	int3
  749e68:	cc                                              	int3
  749e69:	cc                                              	int3
  749e6a:	cc                                              	int3
  749e6b:	cc                                              	int3
  749e6c:	cc                                              	int3
  749e6d:	cc                                              	int3
  749e6e:	cc                                              	int3
  749e6f:	cc                                              	int3
