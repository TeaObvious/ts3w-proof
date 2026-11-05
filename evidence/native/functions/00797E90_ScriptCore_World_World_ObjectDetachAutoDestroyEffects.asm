# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797e90 (ScriptCore.World::World_ObjectDetachAutoDestroyEffects)
Paired Ghidra pseudocode: 00797E90_ScriptCore_World_World_ObjectDetachAutoDestroyEffects.c
Window: [0x00797e90, 0x00797fd0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797e90: 83 ec 28 e8 d8 f6 19 00 85 c0 0f 84 27 01 00 00
00797ea0: 8b 4c 24 30 8b 54 24 2c 51 52 8b c8 e8 cf 00 1a
00797eb0: 00 85 c0 0f 84 0e 01 00 00 8b 0d 14 a1 1e 01 51
00797ec0: 8b c8 e8 99 c3 19 00 85 c0 0f 84 f8 00 00 00 53
00797ed0: 55 57 8d 54 24 20 52 8b c8 e8 b2 99 1b 00 33 ff
00797ee0: 33 ed 8d 4c 24 20 89 7c 24 10 89 6c 24 14 89 7c
00797ef0: 24 18 c7 44 24 1c 38 1d 01 01 e8 41 90 1b 00 84
00797f00: c0 74 48 8d 4c 24 20 e8 b4 84 1b 00 3b 6c 24 18
00797f10: 89 44 24 0c 73 11 8b cd 83 c5 04 85 c9 89 6c 24
00797f20: 14 74 17 89 01 eb 13 8d 44 24 0c 50 55 8d 4c 24
00797f30: 18 e8 ea a4 1e 00 8b 6c 24 14 8d 4c 24 20 e8 fd
00797f40: 8f 1b 00 84 c0 75 bc 8b 7c 24 10 8b 1d c4 db 1e
00797f50: 01 85 db 74 62 3b fd 74 5e 56 8d 9b 00 00 00 00
00797f60: 8b 37 8b 4e 0c 8b 46 08 51 50 8b cb e8 bf b9 4c
00797f70: 00 84 c0 74 36 80 7c 24 44 00 74 11 8b 4e 0c 8b
00797f80: 56 08 51 52 8b cb e8 e5 b9 4c 00 eb 1e 8b 0f 85
00797f90: c9 74 0d a1 58 a1 1e 01 50 e8 c2 c2 19 00 eb 02
00797fa0: 33 c0 6a 01 8b c8 e8 05 16 1c 00 83 c7 04 3b fd
00797fb0: 75 ae 8b 7c 24 14 5e 85 ff 74 09 57 e8 1f c5 d4
00797fc0: ff 83 c4 04 5f 5d 5b 83 c4 28 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00797e90 <.text+0x396e90>:
  797e90:	83 ec 28                                        	sub    esp,0x28
  797e93:	e8 d8 f6 19 00                                  	call   0x937570
  797e98:	85 c0                                           	test   eax,eax
  797e9a:	0f 84 27 01 00 00                               	je     0x797fc7
  797ea0:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  797ea4:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  797ea8:	51                                              	push   ecx
  797ea9:	52                                              	push   edx
  797eaa:	8b c8                                           	mov    ecx,eax
  797eac:	e8 cf 00 1a 00                                  	call   0x937f80
  797eb1:	85 c0                                           	test   eax,eax
  797eb3:	0f 84 0e 01 00 00                               	je     0x797fc7
  797eb9:	8b 0d 14 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea114
  797ebf:	51                                              	push   ecx
  797ec0:	8b c8                                           	mov    ecx,eax
  797ec2:	e8 99 c3 19 00                                  	call   0x934260
  797ec7:	85 c0                                           	test   eax,eax
  797ec9:	0f 84 f8 00 00 00                               	je     0x797fc7
  797ecf:	53                                              	push   ebx
  797ed0:	55                                              	push   ebp
  797ed1:	57                                              	push   edi
  797ed2:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  797ed6:	52                                              	push   edx
  797ed7:	8b c8                                           	mov    ecx,eax
  797ed9:	e8 b2 99 1b 00                                  	call   0x951890
  797ede:	33 ff                                           	xor    edi,edi
  797ee0:	33 ed                                           	xor    ebp,ebp
  797ee2:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797ee6:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  797eea:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  797eee:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  797ef2:	c7 44 24 1c 38 1d 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011d38
  797efa:	e8 41 90 1b 00                                  	call   0x950f40
  797eff:	84 c0                                           	test   al,al
  797f01:	74 48                                           	je     0x797f4b
  797f03:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797f07:	e8 b4 84 1b 00                                  	call   0x9503c0
  797f0c:	3b 6c 24 18                                     	cmp    ebp,DWORD PTR [esp+0x18]
  797f10:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  797f14:	73 11                                           	jae    0x797f27
  797f16:	8b cd                                           	mov    ecx,ebp
  797f18:	83 c5 04                                        	add    ebp,0x4
  797f1b:	85 c9                                           	test   ecx,ecx
  797f1d:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  797f21:	74 17                                           	je     0x797f3a
  797f23:	89 01                                           	mov    DWORD PTR [ecx],eax
  797f25:	eb 13                                           	jmp    0x797f3a
  797f27:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  797f2b:	50                                              	push   eax
  797f2c:	55                                              	push   ebp
  797f2d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  797f31:	e8 ea a4 1e 00                                  	call   0x982420
  797f36:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  797f3a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  797f3e:	e8 fd 8f 1b 00                                  	call   0x950f40
  797f43:	84 c0                                           	test   al,al
  797f45:	75 bc                                           	jne    0x797f03
  797f47:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  797f4b:	8b 1d c4 db 1e 01                               	mov    ebx,DWORD PTR ds:0x11edbc4
  797f51:	85 db                                           	test   ebx,ebx
  797f53:	74 62                                           	je     0x797fb7
  797f55:	3b fd                                           	cmp    edi,ebp
  797f57:	74 5e                                           	je     0x797fb7
  797f59:	56                                              	push   esi
  797f5a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  797f60:	8b 37                                           	mov    esi,DWORD PTR [edi]
  797f62:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  797f65:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  797f68:	51                                              	push   ecx
  797f69:	50                                              	push   eax
  797f6a:	8b cb                                           	mov    ecx,ebx
  797f6c:	e8 bf b9 4c 00                                  	call   0xc63930
  797f71:	84 c0                                           	test   al,al
  797f73:	74 36                                           	je     0x797fab
  797f75:	80 7c 24 44 00                                  	cmp    BYTE PTR [esp+0x44],0x0
  797f7a:	74 11                                           	je     0x797f8d
  797f7c:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  797f7f:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  797f82:	51                                              	push   ecx
  797f83:	52                                              	push   edx
  797f84:	8b cb                                           	mov    ecx,ebx
  797f86:	e8 e5 b9 4c 00                                  	call   0xc63970
  797f8b:	eb 1e                                           	jmp    0x797fab
  797f8d:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  797f8f:	85 c9                                           	test   ecx,ecx
  797f91:	74 0d                                           	je     0x797fa0
  797f93:	a1 58 a1 1e 01                                  	mov    eax,ds:0x11ea158
  797f98:	50                                              	push   eax
  797f99:	e8 c2 c2 19 00                                  	call   0x934260
  797f9e:	eb 02                                           	jmp    0x797fa2
  797fa0:	33 c0                                           	xor    eax,eax
  797fa2:	6a 01                                           	push   0x1
  797fa4:	8b c8                                           	mov    ecx,eax
  797fa6:	e8 05 16 1c 00                                  	call   0x9595b0
  797fab:	83 c7 04                                        	add    edi,0x4
  797fae:	3b fd                                           	cmp    edi,ebp
  797fb0:	75 ae                                           	jne    0x797f60
  797fb2:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  797fb6:	5e                                              	pop    esi
  797fb7:	85 ff                                           	test   edi,edi
  797fb9:	74 09                                           	je     0x797fc4
  797fbb:	57                                              	push   edi
  797fbc:	e8 1f c5 d4 ff                                  	call   0x4e44e0
  797fc1:	83 c4 04                                        	add    esp,0x4
  797fc4:	5f                                              	pop    edi
  797fc5:	5d                                              	pop    ebp
  797fc6:	5b                                              	pop    ebx
  797fc7:	83 c4 28                                        	add    esp,0x28
  797fca:	c3                                              	ret
  797fcb:	cc                                              	int3
  797fcc:	cc                                              	int3
  797fcd:	cc                                              	int3
  797fce:	cc                                              	int3
  797fcf:	cc                                              	int3
