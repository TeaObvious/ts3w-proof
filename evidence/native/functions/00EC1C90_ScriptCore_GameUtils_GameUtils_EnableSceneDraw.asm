# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1c90 (ScriptCore.GameUtils::GameUtils_EnableSceneDraw)
Paired Ghidra pseudocode: 00EC1C90_ScriptCore_GameUtils_GameUtils_EnableSceneDraw.c
Window: [0x00ec1c90, 0x00ec1d70) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1c90: 53 55 6a 00 6a 00 6a 00 6a 00 68 58 32 0f 01 6a
00ec1ca0: 14 e8 5a 28 62 ff 8a 5c 24 24 83 c4 18 85 c0 0f
00ec1cb0: 84 ad 00 00 00 56 57 c7 00 78 4a ff 00 33 c9 8d
00ec1cc0: 50 04 87 0a c7 40 08 8c 2b fa 00 8d 70 08 8d 78
00ec1cd0: 0c c7 07 54 b4 f9 00 c7 00 d8 31 0f 01 88 58 10
00ec1ce0: c7 06 c8 31 0f 01 c7 07 bc 31 0f 01 8b 10 8b e8
00ec1cf0: 8b c8 8b 42 04 ff d0 e8 f4 a7 58 ff 85 c0 74 12
00ec1d00: 8b 10 56 6a 00 57 8b c8 8b 42 1c 68 16 aa 77 b5
00ec1d10: ff d0 5f 5e 84 db 74 3a e8 83 76 8a ff 85 c0 74
00ec1d20: 14 8b 10 6a 00 6a 00 6a 00 8b c8 8b 42 1c 68 62
00ec1d30: 04 ef 08 ff d0 e8 b6 a7 58 ff 85 c0 74 14 8b 10
00ec1d40: 6a 00 6a 00 6a 00 8b c8 8b 42 1c 68 62 04 ef 08
00ec1d50: ff d0 85 ed 74 10 8b 55 00 8b 42 08 8b cd 5d 5b
00ec1d60: ff e0 33 ed eb ae 5d 5b c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1c90 <.text+0xac0c90>:
  ec1c90:	53                                              	push   ebx
  ec1c91:	55                                              	push   ebp
  ec1c92:	6a 00                                           	push   0x0
  ec1c94:	6a 00                                           	push   0x0
  ec1c96:	6a 00                                           	push   0x0
  ec1c98:	6a 00                                           	push   0x0
  ec1c9a:	68 58 32 0f 01                                  	push   0x10f3258
  ec1c9f:	6a 14                                           	push   0x14
  ec1ca1:	e8 5a 28 62 ff                                  	call   0x4e4500
  ec1ca6:	8a 5c 24 24                                     	mov    bl,BYTE PTR [esp+0x24]
  ec1caa:	83 c4 18                                        	add    esp,0x18
  ec1cad:	85 c0                                           	test   eax,eax
  ec1caf:	0f 84 ad 00 00 00                               	je     0xec1d62
  ec1cb5:	56                                              	push   esi
  ec1cb6:	57                                              	push   edi
  ec1cb7:	c7 00 78 4a ff 00                               	mov    DWORD PTR [eax],0xff4a78
  ec1cbd:	33 c9                                           	xor    ecx,ecx
  ec1cbf:	8d 50 04                                        	lea    edx,[eax+0x4]
  ec1cc2:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  ec1cc4:	c7 40 08 8c 2b fa 00                            	mov    DWORD PTR [eax+0x8],0xfa2b8c
  ec1ccb:	8d 70 08                                        	lea    esi,[eax+0x8]
  ec1cce:	8d 78 0c                                        	lea    edi,[eax+0xc]
  ec1cd1:	c7 07 54 b4 f9 00                               	mov    DWORD PTR [edi],0xf9b454
  ec1cd7:	c7 00 d8 31 0f 01                               	mov    DWORD PTR [eax],0x10f31d8
  ec1cdd:	88 58 10                                        	mov    BYTE PTR [eax+0x10],bl
  ec1ce0:	c7 06 c8 31 0f 01                               	mov    DWORD PTR [esi],0x10f31c8
  ec1ce6:	c7 07 bc 31 0f 01                               	mov    DWORD PTR [edi],0x10f31bc
  ec1cec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1cee:	8b e8                                           	mov    ebp,eax
  ec1cf0:	8b c8                                           	mov    ecx,eax
  ec1cf2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec1cf5:	ff d0                                           	call   eax
  ec1cf7:	e8 f4 a7 58 ff                                  	call   0x44c4f0
  ec1cfc:	85 c0                                           	test   eax,eax
  ec1cfe:	74 12                                           	je     0xec1d12
  ec1d00:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1d02:	56                                              	push   esi
  ec1d03:	6a 00                                           	push   0x0
  ec1d05:	57                                              	push   edi
  ec1d06:	8b c8                                           	mov    ecx,eax
  ec1d08:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1d0b:	68 16 aa 77 b5                                  	push   0xb577aa16
  ec1d10:	ff d0                                           	call   eax
  ec1d12:	5f                                              	pop    edi
  ec1d13:	5e                                              	pop    esi
  ec1d14:	84 db                                           	test   bl,bl
  ec1d16:	74 3a                                           	je     0xec1d52
  ec1d18:	e8 83 76 8a ff                                  	call   0x7693a0
  ec1d1d:	85 c0                                           	test   eax,eax
  ec1d1f:	74 14                                           	je     0xec1d35
  ec1d21:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1d23:	6a 00                                           	push   0x0
  ec1d25:	6a 00                                           	push   0x0
  ec1d27:	6a 00                                           	push   0x0
  ec1d29:	8b c8                                           	mov    ecx,eax
  ec1d2b:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1d2e:	68 62 04 ef 08                                  	push   0x8ef0462
  ec1d33:	ff d0                                           	call   eax
  ec1d35:	e8 b6 a7 58 ff                                  	call   0x44c4f0
  ec1d3a:	85 c0                                           	test   eax,eax
  ec1d3c:	74 14                                           	je     0xec1d52
  ec1d3e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec1d40:	6a 00                                           	push   0x0
  ec1d42:	6a 00                                           	push   0x0
  ec1d44:	6a 00                                           	push   0x0
  ec1d46:	8b c8                                           	mov    ecx,eax
  ec1d48:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec1d4b:	68 62 04 ef 08                                  	push   0x8ef0462
  ec1d50:	ff d0                                           	call   eax
  ec1d52:	85 ed                                           	test   ebp,ebp
  ec1d54:	74 10                                           	je     0xec1d66
  ec1d56:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  ec1d59:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  ec1d5c:	8b cd                                           	mov    ecx,ebp
  ec1d5e:	5d                                              	pop    ebp
  ec1d5f:	5b                                              	pop    ebx
  ec1d60:	ff e0                                           	jmp    eax
  ec1d62:	33 ed                                           	xor    ebp,ebp
  ec1d64:	eb ae                                           	jmp    0xec1d14
  ec1d66:	5d                                              	pop    ebp
  ec1d67:	5b                                              	pop    ebx
  ec1d68:	c3                                              	ret
  ec1d69:	cc                                              	int3
  ec1d6a:	cc                                              	int3
  ec1d6b:	cc                                              	int3
  ec1d6c:	cc                                              	int3
  ec1d6d:	cc                                              	int3
  ec1d6e:	cc                                              	int3
  ec1d6f:	cc                                              	int3
