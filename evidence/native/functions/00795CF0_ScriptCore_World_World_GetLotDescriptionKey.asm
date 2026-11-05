# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795cf0 (ScriptCore.World::World_GetLotDescriptionKey)
Paired Ghidra pseudocode: 00795CF0_ScriptCore_World_World_GetLotDescriptionKey.c
Window: [0x00795cf0, 0x00795e30) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795cf0: 8b 0d c4 db 1e 01 83 ec 54 85 c9 56 57 74 15 8b
00795d00: 44 24 64 8b 54 24 60 6a 00 50 52 e8 00 cb 4c 00
00795d10: 8b f0 eb 02 33 f6 e8 75 36 fd ff 85 f6 8b f8 0f
00795d20: 84 f8 00 00 00 85 ff 0f 84 f0 00 00 00 8b 86 d8
00795d30: 03 00 00 85 c0 0f 84 e2 00 00 00 b9 54 8e 1c 01
00795d40: 89 4c 24 0c 89 4c 24 10 50 8d 4c 24 10 c7 44 24
00795d50: 1c 18 1c 01 01 c7 44 24 18 56 8e 1c 01 e8 ee 31
00795d60: c7 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 be f4 a6
00795d70: fb 00 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44 24
00795d80: 38 00 00 66 c7 44 24 3a 00 00 e8 31 fc d5 ff 8d
00795d90: 4c 24 1c 51 8d 4c 24 40 c7 44 24 40 6c 88 00 01
00795da0: 66 c7 44 24 4a 13 00 66 c7 44 24 48 02 00 e8 fd
00795db0: 06 d6 ff f6 44 24 24 04 89 74 24 1c 74 0b 6a 00
00795dc0: 8d 4c 24 20 e8 97 f9 d5 ff 8b 17 8b 52 50 8d 44
00795dd0: 24 08 50 8d 4c 24 40 51 8b cf ff d2 f6 44 24 44
00795de0: 04 8b 7c 24 08 89 74 24 3c 74 0b 6a 00 8d 4c 24
00795df0: 40 e8 6a f9 d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8
00795e00: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 ce e6
00795e10: d4 ff 83 c4 04 8b c7 5f 5e 83 c4 54 c3 5f 33 c0
00795e20: 5e 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795cf0 <.text+0x394cf0>:
  795cf0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  795cf6:	83 ec 54                                        	sub    esp,0x54
  795cf9:	85 c9                                           	test   ecx,ecx
  795cfb:	56                                              	push   esi
  795cfc:	57                                              	push   edi
  795cfd:	74 15                                           	je     0x795d14
  795cff:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  795d03:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  795d07:	6a 00                                           	push   0x0
  795d09:	50                                              	push   eax
  795d0a:	52                                              	push   edx
  795d0b:	e8 00 cb 4c 00                                  	call   0xc62810
  795d10:	8b f0                                           	mov    esi,eax
  795d12:	eb 02                                           	jmp    0x795d16
  795d14:	33 f6                                           	xor    esi,esi
  795d16:	e8 75 36 fd ff                                  	call   0x769390
  795d1b:	85 f6                                           	test   esi,esi
  795d1d:	8b f8                                           	mov    edi,eax
  795d1f:	0f 84 f8 00 00 00                               	je     0x795e1d
  795d25:	85 ff                                           	test   edi,edi
  795d27:	0f 84 f0 00 00 00                               	je     0x795e1d
  795d2d:	8b 86 d8 03 00 00                               	mov    eax,DWORD PTR [esi+0x3d8]
  795d33:	85 c0                                           	test   eax,eax
  795d35:	0f 84 e2 00 00 00                               	je     0x795e1d
  795d3b:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  795d40:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  795d44:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  795d48:	50                                              	push   eax
  795d49:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  795d4d:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795d55:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795d5d:	e8 ee 31 c7 ff                                  	call   0x408f50
  795d62:	6a 01                                           	push   0x1
  795d64:	6a 10                                           	push   0x10
  795d66:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  795d6a:	50                                              	push   eax
  795d6b:	6a 09                                           	push   0x9
  795d6d:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  795d72:	6a 13                                           	push   0x13
  795d74:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795d78:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  795d7c:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  795d83:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  795d8a:	e8 31 fc d5 ff                                  	call   0x4f59c0
  795d8f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  795d93:	51                                              	push   ecx
  795d94:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795d98:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  795da0:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  795da7:	66 c7 44 24 48 02 00                            	mov    WORD PTR [esp+0x48],0x2
  795dae:	e8 fd 06 d6 ff                                  	call   0x4f64b0
  795db3:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795db8:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  795dbc:	74 0b                                           	je     0x795dc9
  795dbe:	6a 00                                           	push   0x0
  795dc0:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795dc4:	e8 97 f9 d5 ff                                  	call   0x4f5760
  795dc9:	8b 17                                           	mov    edx,DWORD PTR [edi]
  795dcb:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  795dce:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  795dd2:	50                                              	push   eax
  795dd3:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795dd7:	51                                              	push   ecx
  795dd8:	8b cf                                           	mov    ecx,edi
  795dda:	ff d2                                           	call   edx
  795ddc:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  795de1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  795de5:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  795de9:	74 0b                                           	je     0x795df6
  795deb:	6a 00                                           	push   0x0
  795ded:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795df1:	e8 6a f9 d5 ff                                  	call   0x4f5760
  795df6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  795dfa:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795dfe:	2b c8                                           	sub    ecx,eax
  795e00:	83 e1 fe                                        	and    ecx,0xfffffffe
  795e03:	83 f9 02                                        	cmp    ecx,0x2
  795e06:	7e 0d                                           	jle    0x795e15
  795e08:	85 c0                                           	test   eax,eax
  795e0a:	74 09                                           	je     0x795e15
  795e0c:	50                                              	push   eax
  795e0d:	e8 ce e6 d4 ff                                  	call   0x4e44e0
  795e12:	83 c4 04                                        	add    esp,0x4
  795e15:	8b c7                                           	mov    eax,edi
  795e17:	5f                                              	pop    edi
  795e18:	5e                                              	pop    esi
  795e19:	83 c4 54                                        	add    esp,0x54
  795e1c:	c3                                              	ret
  795e1d:	5f                                              	pop    edi
  795e1e:	33 c0                                           	xor    eax,eax
  795e20:	5e                                              	pop    esi
  795e21:	83 c4 54                                        	add    esp,0x54
  795e24:	c3                                              	ret
  795e25:	cc                                              	int3
  795e26:	cc                                              	int3
  795e27:	cc                                              	int3
  795e28:	cc                                              	int3
  795e29:	cc                                              	int3
  795e2a:	cc                                              	int3
  795e2b:	cc                                              	int3
  795e2c:	cc                                              	int3
  795e2d:	cc                                              	int3
  795e2e:	cc                                              	int3
  795e2f:	cc                                              	int3
