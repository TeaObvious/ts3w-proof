# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795e30 (ScriptCore.World::World_GetLotAddress)
Paired Ghidra pseudocode: 00795E30_ScriptCore_World_World_GetLotAddress.c
Window: [0x00795e30, 0x00795f30) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795e30: 8b 0d c4 db 1e 01 83 ec 34 85 c9 56 57 74 15 8b
00795e40: 44 24 44 8b 54 24 40 6a 00 50 52 e8 c0 c9 4c 00
00795e50: 8b f8 eb 02 33 ff e8 35 35 fd ff 85 ff 8b f0 0f
00795e60: 84 b5 00 00 00 85 f6 0f 84 ad 00 00 00 b8 54 8e
00795e70: 1c 01 89 44 24 0c 89 44 24 10 8d 44 24 0c 50 8b
00795e80: cf c7 44 24 1c 18 1c 01 01 c7 44 24 18 56 8e 1c
00795e90: 01 e8 9a 73 32 00 6a 01 6a 10 8d 4c 24 14 51 6a
00795ea0: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00795eb0: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 fe fa
00795ec0: d5 ff 8b 16 8b 52 50 8d 44 24 08 50 8d 4c 24 20
00795ed0: 51 8b ce ff d2 f6 44 24 24 04 8b 74 24 08 c7 44
00795ee0: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 6d
00795ef0: f8 d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe
00795f00: 83 f9 02 7e 0d 85 c0 74 09 50 e8 d1 e5 d4 ff 83
00795f10: c4 04 5f 8b c6 5e 83 c4 34 c3 5f 33 c0 5e 83 c4
00795f20: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795e30 <.text+0x394e30>:
  795e30:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  795e36:	83 ec 34                                        	sub    esp,0x34
  795e39:	85 c9                                           	test   ecx,ecx
  795e3b:	56                                              	push   esi
  795e3c:	57                                              	push   edi
  795e3d:	74 15                                           	je     0x795e54
  795e3f:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  795e43:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  795e47:	6a 00                                           	push   0x0
  795e49:	50                                              	push   eax
  795e4a:	52                                              	push   edx
  795e4b:	e8 c0 c9 4c 00                                  	call   0xc62810
  795e50:	8b f8                                           	mov    edi,eax
  795e52:	eb 02                                           	jmp    0x795e56
  795e54:	33 ff                                           	xor    edi,edi
  795e56:	e8 35 35 fd ff                                  	call   0x769390
  795e5b:	85 ff                                           	test   edi,edi
  795e5d:	8b f0                                           	mov    esi,eax
  795e5f:	0f 84 b5 00 00 00                               	je     0x795f1a
  795e65:	85 f6                                           	test   esi,esi
  795e67:	0f 84 ad 00 00 00                               	je     0x795f1a
  795e6d:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  795e72:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  795e76:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  795e7a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  795e7e:	50                                              	push   eax
  795e7f:	8b cf                                           	mov    ecx,edi
  795e81:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795e89:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795e91:	e8 9a 73 32 00                                  	call   0xabd230
  795e96:	6a 01                                           	push   0x1
  795e98:	6a 10                                           	push   0x10
  795e9a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  795e9e:	51                                              	push   ecx
  795e9f:	6a 09                                           	push   0x9
  795ea1:	6a 13                                           	push   0x13
  795ea3:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795ea7:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  795eaf:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  795eb6:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  795ebd:	e8 fe fa d5 ff                                  	call   0x4f59c0
  795ec2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  795ec4:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  795ec7:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  795ecb:	50                                              	push   eax
  795ecc:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795ed0:	51                                              	push   ecx
  795ed1:	8b ce                                           	mov    ecx,esi
  795ed3:	ff d2                                           	call   edx
  795ed5:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795eda:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  795ede:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  795ee6:	74 0b                                           	je     0x795ef3
  795ee8:	6a 00                                           	push   0x0
  795eea:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795eee:	e8 6d f8 d5 ff                                  	call   0x4f5760
  795ef3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  795ef7:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795efb:	2b c8                                           	sub    ecx,eax
  795efd:	83 e1 fe                                        	and    ecx,0xfffffffe
  795f00:	83 f9 02                                        	cmp    ecx,0x2
  795f03:	7e 0d                                           	jle    0x795f12
  795f05:	85 c0                                           	test   eax,eax
  795f07:	74 09                                           	je     0x795f12
  795f09:	50                                              	push   eax
  795f0a:	e8 d1 e5 d4 ff                                  	call   0x4e44e0
  795f0f:	83 c4 04                                        	add    esp,0x4
  795f12:	5f                                              	pop    edi
  795f13:	8b c6                                           	mov    eax,esi
  795f15:	5e                                              	pop    esi
  795f16:	83 c4 34                                        	add    esp,0x34
  795f19:	c3                                              	ret
  795f1a:	5f                                              	pop    edi
  795f1b:	33 c0                                           	xor    eax,eax
  795f1d:	5e                                              	pop    esi
  795f1e:	83 c4 34                                        	add    esp,0x34
  795f21:	c3                                              	ret
  795f22:	cc                                              	int3
  795f23:	cc                                              	int3
  795f24:	cc                                              	int3
  795f25:	cc                                              	int3
  795f26:	cc                                              	int3
  795f27:	cc                                              	int3
  795f28:	cc                                              	int3
  795f29:	cc                                              	int3
  795f2a:	cc                                              	int3
  795f2b:	cc                                              	int3
  795f2c:	cc                                              	int3
  795f2d:	cc                                              	int3
  795f2e:	cc                                              	int3
  795f2f:	cc                                              	int3
