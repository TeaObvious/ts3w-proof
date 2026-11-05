# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1e70 (ScriptCore.GameUtils::GameUtils_WaitForTextureCompositor)
Paired Ghidra pseudocode: 00EC1E70_ScriptCore_GameUtils_GameUtils_WaitForTextureCompositor.c
Window: [0x00ec1e70, 0x00ec1f60) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1e70: 83 ec 08 56 57 e8 16 75 8a ff 8b f8 8b 07 8b 90
00ec1e80: 18 01 00 00 8b cf ff d2 6a 00 6a 00 6a 00 6a 00
00ec1e90: 68 94 32 0f 01 6a 18 89 44 24 20 89 54 24 24 e8
00ec1ea0: 5c 26 62 ff 8b f0 83 c4 18 85 f6 0f 84 a3 00 00
00ec1eb0: 00 53 55 c7 06 78 4a ff 00 33 c0 8d 4e 04 87 01
00ec1ec0: 8b 54 24 10 8b 44 24 14 c7 46 08 8c 2b fa 00 c7
00ec1ed0: 46 0c 54 b4 f9 00 8d 5e 08 8d 6e 0c 89 46 14 c7
00ec1ee0: 06 44 32 0f 01 c7 03 34 32 0f 01 c7 45 00 28 32
00ec1ef0: 0f 01 89 56 10 8b 16 8b 42 04 8b ce ff d0 e8 ed
00ec1f00: a5 58 ff 85 c0 74 12 8b 10 53 6a 00 55 8b c8 8b
00ec1f10: 42 1c 68 cc e5 a8 d4 ff d0 8b 44 24 1c 8b 4c 24
00ec1f20: 14 8b 17 8b 92 20 01 00 00 6a 00 50 8b 44 24 18
00ec1f30: 6a ff 51 50 8b cf ff d2 8b 07 8b 90 1c 01 00 00
00ec1f40: 8b cf ff d2 8b 06 8b 50 08 5d 5b 5f 8b ce 5e 83
00ec1f50: c4 08 ff e2 5f 5e 83 c4 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1e70 <.text+0xac0e70>:
  ec1e70:	83 ec 08                                        	sub    esp,0x8
  ec1e73:	56                                              	push   esi
  ec1e74:	57                                              	push   edi
  ec1e75:	e8 16 75 8a ff                                  	call   0x769390
  ec1e7a:	8b f8                                           	mov    edi,eax
  ec1e7c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec1e7e:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  ec1e84:	8b cf                                           	mov    ecx,edi
  ec1e86:	ff d2                                           	call   edx
  ec1e88:	6a 00                                           	push   0x0
  ec1e8a:	6a 00                                           	push   0x0
  ec1e8c:	6a 00                                           	push   0x0
  ec1e8e:	6a 00                                           	push   0x0
  ec1e90:	68 94 32 0f 01                                  	push   0x10f3294
  ec1e95:	6a 18                                           	push   0x18
  ec1e97:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  ec1e9b:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  ec1e9f:	e8 5c 26 62 ff                                  	call   0x4e4500
  ec1ea4:	8b f0                                           	mov    esi,eax
  ec1ea6:	83 c4 18                                        	add    esp,0x18
  ec1ea9:	85 f6                                           	test   esi,esi
  ec1eab:	0f 84 a3 00 00 00                               	je     0xec1f54
  ec1eb1:	53                                              	push   ebx
  ec1eb2:	55                                              	push   ebp
  ec1eb3:	c7 06 78 4a ff 00                               	mov    DWORD PTR [esi],0xff4a78
  ec1eb9:	33 c0                                           	xor    eax,eax
  ec1ebb:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  ec1ebe:	87 01                                           	xchg   DWORD PTR [ecx],eax
  ec1ec0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ec1ec4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ec1ec8:	c7 46 08 8c 2b fa 00                            	mov    DWORD PTR [esi+0x8],0xfa2b8c
  ec1ecf:	c7 46 0c 54 b4 f9 00                            	mov    DWORD PTR [esi+0xc],0xf9b454
  ec1ed6:	8d 5e 08                                        	lea    ebx,[esi+0x8]
  ec1ed9:	8d 6e 0c                                        	lea    ebp,[esi+0xc]
  ec1edc:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  ec1edf:	c7 06 44 32 0f 01                               	mov    DWORD PTR [esi],0x10f3244
  ec1ee5:	c7 03 34 32 0f 01                               	mov    DWORD PTR [ebx],0x10f3234
  ec1eeb:	c7 45 00 28 32 0f 01                            	mov    DWORD PTR [ebp+0x0],0x10f3228
  ec1ef2:	89 56 10                                        	mov    DWORD PTR [esi+0x10],edx
  ec1ef5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec1ef7:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec1efa:	8b ce                                           	mov    ecx,esi
  ec1efc:	ff d0                                           	call   eax
  ec1efe:	e8 ed a5 58 ff                                  	call   0x44c4f0
  ec1f03:	85 c0                                           	test   eax,eax
  ec1f05:	74 12                                           	je     0xec1f19
  ec1f07:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1f09:	53                                              	push   ebx
  ec1f0a:	6a 00                                           	push   0x0
  ec1f0c:	55                                              	push   ebp
  ec1f0d:	8b c8                                           	mov    ecx,eax
  ec1f0f:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1f12:	68 cc e5 a8 d4                                  	push   0xd4a8e5cc
  ec1f17:	ff d0                                           	call   eax
  ec1f19:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  ec1f1d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec1f21:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec1f23:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  ec1f29:	6a 00                                           	push   0x0
  ec1f2b:	50                                              	push   eax
  ec1f2c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  ec1f30:	6a ff                                           	push   0xffffffff
  ec1f32:	51                                              	push   ecx
  ec1f33:	50                                              	push   eax
  ec1f34:	8b cf                                           	mov    ecx,edi
  ec1f36:	ff d2                                           	call   edx
  ec1f38:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec1f3a:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  ec1f40:	8b cf                                           	mov    ecx,edi
  ec1f42:	ff d2                                           	call   edx
  ec1f44:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec1f46:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  ec1f49:	5d                                              	pop    ebp
  ec1f4a:	5b                                              	pop    ebx
  ec1f4b:	5f                                              	pop    edi
  ec1f4c:	8b ce                                           	mov    ecx,esi
  ec1f4e:	5e                                              	pop    esi
  ec1f4f:	83 c4 08                                        	add    esp,0x8
  ec1f52:	ff e2                                           	jmp    edx
  ec1f54:	5f                                              	pop    edi
  ec1f55:	5e                                              	pop    esi
  ec1f56:	83 c4 08                                        	add    esp,0x8
  ec1f59:	c3                                              	ret
  ec1f5a:	cc                                              	int3
  ec1f5b:	cc                                              	int3
  ec1f5c:	cc                                              	int3
  ec1f5d:	cc                                              	int3
  ec1f5e:	cc                                              	int3
  ec1f5f:	cc                                              	int3
