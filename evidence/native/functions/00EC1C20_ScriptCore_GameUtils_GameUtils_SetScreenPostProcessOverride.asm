# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1c20 (ScriptCore.GameUtils::GameUtils_SetScreenPostProcessOverride)
Paired Ghidra pseudocode: 00EC1C20_ScriptCore_GameUtils_GameUtils_SetScreenPostProcessOverride.c
Window: [0x00ec1c20, 0x00ec1c90) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1c20: 56 e8 ca a8 58 ff 8b f0 85 f6 74 5a 6a 00 6a 00
00ec1c30: 6a 00 6a 00 68 f0 3b 00 01 6a 10 e8 c0 28 62 ff
00ec1c40: 83 c4 18 85 c0 74 2a c7 00 54 b4 f9 00 c7 40 04
00ec1c50: 78 4a ff 00 33 c9 8d 50 08 87 0a 8b 4c 24 08 c7
00ec1c60: 00 b0 31 0f 01 c7 40 04 a0 31 0f 01 89 48 0c eb
00ec1c70: 02 33 c0 8b 16 6a 00 6a 00 50 8b 42 1c 68 23 b1
00ec1c80: 89 ba 8b ce ff d0 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1c20 <.text+0xac0c20>:
  ec1c20:	56                                              	push   esi
  ec1c21:	e8 ca a8 58 ff                                  	call   0x44c4f0
  ec1c26:	8b f0                                           	mov    esi,eax
  ec1c28:	85 f6                                           	test   esi,esi
  ec1c2a:	74 5a                                           	je     0xec1c86
  ec1c2c:	6a 00                                           	push   0x0
  ec1c2e:	6a 00                                           	push   0x0
  ec1c30:	6a 00                                           	push   0x0
  ec1c32:	6a 00                                           	push   0x0
  ec1c34:	68 f0 3b 00 01                                  	push   0x1003bf0
  ec1c39:	6a 10                                           	push   0x10
  ec1c3b:	e8 c0 28 62 ff                                  	call   0x4e4500
  ec1c40:	83 c4 18                                        	add    esp,0x18
  ec1c43:	85 c0                                           	test   eax,eax
  ec1c45:	74 2a                                           	je     0xec1c71
  ec1c47:	c7 00 54 b4 f9 00                               	mov    DWORD PTR [eax],0xf9b454
  ec1c4d:	c7 40 04 78 4a ff 00                            	mov    DWORD PTR [eax+0x4],0xff4a78
  ec1c54:	33 c9                                           	xor    ecx,ecx
  ec1c56:	8d 50 08                                        	lea    edx,[eax+0x8]
  ec1c59:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  ec1c5b:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec1c5f:	c7 00 b0 31 0f 01                               	mov    DWORD PTR [eax],0x10f31b0
  ec1c65:	c7 40 04 a0 31 0f 01                            	mov    DWORD PTR [eax+0x4],0x10f31a0
  ec1c6c:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  ec1c6f:	eb 02                                           	jmp    0xec1c73
  ec1c71:	33 c0                                           	xor    eax,eax
  ec1c73:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec1c75:	6a 00                                           	push   0x0
  ec1c77:	6a 00                                           	push   0x0
  ec1c79:	50                                              	push   eax
  ec1c7a:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1c7d:	68 23 b1 89 ba                                  	push   0xba89b123
  ec1c82:	8b ce                                           	mov    ecx,esi
  ec1c84:	ff d0                                           	call   eax
  ec1c86:	5e                                              	pop    esi
  ec1c87:	c3                                              	ret
  ec1c88:	cc                                              	int3
  ec1c89:	cc                                              	int3
  ec1c8a:	cc                                              	int3
  ec1c8b:	cc                                              	int3
  ec1c8c:	cc                                              	int3
  ec1c8d:	cc                                              	int3
  ec1c8e:	cc                                              	int3
  ec1c8f:	cc                                              	int3
