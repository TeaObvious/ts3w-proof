# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2e00 (ScriptCore.GameUtils::GameUtils_GetNativePath)
Paired Ghidra pseudocode: 00EC2E00_ScriptCore_GameUtils_GameUtils_GetNativePath.c
Window: [0x00ec2e00, 0x00ec2fc0) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2e00: 81 ec 6c 02 00 00 56 57 e8 83 65 8a ff 8b f0 8b
00ec2e10: 84 24 78 02 00 00 89 44 24 08 8b 16 50 8b 42 58
00ec2e20: 8b ce ff d0 8b f8 85 ff 75 09 5f 5e 81 c4 6c 02
00ec2e30: 00 00 c3 e8 c8 b9 6c ff 85 c0 0f 84 c6 00 00 00
00ec2e40: 80 b8 a8 02 00 00 00 0f 84 b9 00 00 00 6a ff 68
00ec2e50: 04 01 00 00 8d 4c 24 74 57 51 e8 41 b1 63 ff 68
00ec2e60: 04 01 00 00 8d 94 24 84 01 00 00 52 8d 84 24 84
00ec2e70: 00 00 00 50 e8 07 e1 ff ff 83 c4 1c 84 c0 0f 84
00ec2e80: 82 00 00 00 6a 00 6a ff 8d 8c 24 78 01 00 00 51
00ec2e90: 8d 54 24 48 52 e8 b6 0c 63 ff 83 c4 10 50 8d 4c
00ec2ea0: 24 50 e8 f9 83 6e ff 8b 4c 24 44 8b 44 24 3c 2b
00ec2eb0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 1d
00ec2ec0: 16 62 ff 83 c4 04 8b 16 8b 52 50 8d 44 24 08 50
00ec2ed0: 8d 4c 24 50 51 8b ce ff d2 f6 44 24 54 04 8b 74
00ec2ee0: 24 08 c7 44 24 4c f4 a6 fb 00 0f 84 bc 00 00 00
00ec2ef0: 6a 00 8d 4c 24 50 e8 65 28 63 ff 5f 8b c6 5e 81
00ec2f00: c4 6c 02 00 00 c3 57 8d 4c 24 10 c7 44 24 10 00
00ec2f10: 00 00 00 c7 44 24 14 00 00 00 00 c7 44 24 18 00
00ec2f20: 00 00 00 c7 44 24 1c 1c 34 0f 01 e8 60 86 54 ff
00ec2f30: 6a 01 6a 10 8d 44 24 14 50 6a 09 6a 13 8d 4c 24
00ec2f40: 30 c7 44 24 30 6c 88 00 01 66 c7 44 24 3a 13 00
00ec2f50: 66 c7 44 24 38 0b 00 e8 64 2a 63 ff 8b 16 8b 52
00ec2f60: 50 8d 44 24 08 50 8d 4c 24 20 51 8b ce ff d2 f6
00ec2f70: 44 24 24 04 8b 74 24 08 c7 44 24 1c f4 a6 fb 00
00ec2f80: 74 0b 6a 00 8d 4c 24 20 e8 d3 27 63 ff 8b 4c 24
00ec2f90: 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 85
00ec2fa0: c0 74 09 50 e8 37 15 62 ff 83 c4 04 5f 8b c6 5e
00ec2fb0: 81 c4 6c 02 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2e00 <.text+0xac1e00>:
  ec2e00:	81 ec 6c 02 00 00                               	sub    esp,0x26c
  ec2e06:	56                                              	push   esi
  ec2e07:	57                                              	push   edi
  ec2e08:	e8 83 65 8a ff                                  	call   0x769390
  ec2e0d:	8b f0                                           	mov    esi,eax
  ec2e0f:	8b 84 24 78 02 00 00                            	mov    eax,DWORD PTR [esp+0x278]
  ec2e16:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  ec2e1a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec2e1c:	50                                              	push   eax
  ec2e1d:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  ec2e20:	8b ce                                           	mov    ecx,esi
  ec2e22:	ff d0                                           	call   eax
  ec2e24:	8b f8                                           	mov    edi,eax
  ec2e26:	85 ff                                           	test   edi,edi
  ec2e28:	75 09                                           	jne    0xec2e33
  ec2e2a:	5f                                              	pop    edi
  ec2e2b:	5e                                              	pop    esi
  ec2e2c:	81 c4 6c 02 00 00                               	add    esp,0x26c
  ec2e32:	c3                                              	ret
  ec2e33:	e8 c8 b9 6c ff                                  	call   0x58e800
  ec2e38:	85 c0                                           	test   eax,eax
  ec2e3a:	0f 84 c6 00 00 00                               	je     0xec2f06
  ec2e40:	80 b8 a8 02 00 00 00                            	cmp    BYTE PTR [eax+0x2a8],0x0
  ec2e47:	0f 84 b9 00 00 00                               	je     0xec2f06
  ec2e4d:	6a ff                                           	push   0xffffffff
  ec2e4f:	68 04 01 00 00                                  	push   0x104
  ec2e54:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  ec2e58:	57                                              	push   edi
  ec2e59:	51                                              	push   ecx
  ec2e5a:	e8 41 b1 63 ff                                  	call   0x4fdfa0
  ec2e5f:	68 04 01 00 00                                  	push   0x104
  ec2e64:	8d 94 24 84 01 00 00                            	lea    edx,[esp+0x184]
  ec2e6b:	52                                              	push   edx
  ec2e6c:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
  ec2e73:	50                                              	push   eax
  ec2e74:	e8 07 e1 ff ff                                  	call   0xec0f80
  ec2e79:	83 c4 1c                                        	add    esp,0x1c
  ec2e7c:	84 c0                                           	test   al,al
  ec2e7e:	0f 84 82 00 00 00                               	je     0xec2f06
  ec2e84:	6a 00                                           	push   0x0
  ec2e86:	6a ff                                           	push   0xffffffff
  ec2e88:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
  ec2e8f:	51                                              	push   ecx
  ec2e90:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  ec2e94:	52                                              	push   edx
  ec2e95:	e8 b6 0c 63 ff                                  	call   0x4f3b50
  ec2e9a:	83 c4 10                                        	add    esp,0x10
  ec2e9d:	50                                              	push   eax
  ec2e9e:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  ec2ea2:	e8 f9 83 6e ff                                  	call   0x5ab2a0
  ec2ea7:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  ec2eab:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  ec2eaf:	2b c8                                           	sub    ecx,eax
  ec2eb1:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2eb4:	83 f9 02                                        	cmp    ecx,0x2
  ec2eb7:	7e 0d                                           	jle    0xec2ec6
  ec2eb9:	85 c0                                           	test   eax,eax
  ec2ebb:	74 09                                           	je     0xec2ec6
  ec2ebd:	50                                              	push   eax
  ec2ebe:	e8 1d 16 62 ff                                  	call   0x4e44e0
  ec2ec3:	83 c4 04                                        	add    esp,0x4
  ec2ec6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec2ec8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec2ecb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ec2ecf:	50                                              	push   eax
  ec2ed0:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  ec2ed4:	51                                              	push   ecx
  ec2ed5:	8b ce                                           	mov    ecx,esi
  ec2ed7:	ff d2                                           	call   edx
  ec2ed9:	f6 44 24 54 04                                  	test   BYTE PTR [esp+0x54],0x4
  ec2ede:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec2ee2:	c7 44 24 4c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x4c],0xfba6f4
  ec2eea:	0f 84 bc 00 00 00                               	je     0xec2fac
  ec2ef0:	6a 00                                           	push   0x0
  ec2ef2:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  ec2ef6:	e8 65 28 63 ff                                  	call   0x4f5760
  ec2efb:	5f                                              	pop    edi
  ec2efc:	8b c6                                           	mov    eax,esi
  ec2efe:	5e                                              	pop    esi
  ec2eff:	81 c4 6c 02 00 00                               	add    esp,0x26c
  ec2f05:	c3                                              	ret
  ec2f06:	57                                              	push   edi
  ec2f07:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ec2f0b:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ec2f13:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ec2f1b:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  ec2f23:	c7 44 24 1c 1c 34 0f 01                         	mov    DWORD PTR [esp+0x1c],0x10f341c
  ec2f2b:	e8 60 86 54 ff                                  	call   0x40b590
  ec2f30:	6a 01                                           	push   0x1
  ec2f32:	6a 10                                           	push   0x10
  ec2f34:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec2f38:	50                                              	push   eax
  ec2f39:	6a 09                                           	push   0x9
  ec2f3b:	6a 13                                           	push   0x13
  ec2f3d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ec2f41:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  ec2f49:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  ec2f50:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  ec2f57:	e8 64 2a 63 ff                                  	call   0x4f59c0
  ec2f5c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec2f5e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec2f61:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ec2f65:	50                                              	push   eax
  ec2f66:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec2f6a:	51                                              	push   ecx
  ec2f6b:	8b ce                                           	mov    ecx,esi
  ec2f6d:	ff d2                                           	call   edx
  ec2f6f:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  ec2f74:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec2f78:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec2f80:	74 0b                                           	je     0xec2f8d
  ec2f82:	6a 00                                           	push   0x0
  ec2f84:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ec2f88:	e8 d3 27 63 ff                                  	call   0x4f5760
  ec2f8d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec2f91:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec2f95:	2b c8                                           	sub    ecx,eax
  ec2f97:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec2f9a:	83 f9 02                                        	cmp    ecx,0x2
  ec2f9d:	7e 0d                                           	jle    0xec2fac
  ec2f9f:	85 c0                                           	test   eax,eax
  ec2fa1:	74 09                                           	je     0xec2fac
  ec2fa3:	50                                              	push   eax
  ec2fa4:	e8 37 15 62 ff                                  	call   0x4e44e0
  ec2fa9:	83 c4 04                                        	add    esp,0x4
  ec2fac:	5f                                              	pop    edi
  ec2fad:	8b c6                                           	mov    eax,esi
  ec2faf:	5e                                              	pop    esi
  ec2fb0:	81 c4 6c 02 00 00                               	add    esp,0x26c
  ec2fb6:	c3                                              	ret
  ec2fb7:	cc                                              	int3
  ec2fb8:	cc                                              	int3
  ec2fb9:	cc                                              	int3
  ec2fba:	cc                                              	int3
  ec2fbb:	cc                                              	int3
  ec2fbc:	cc                                              	int3
  ec2fbd:	cc                                              	int3
  ec2fbe:	cc                                              	int3
  ec2fbf:	cc                                              	int3
