# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00c95cb0 (ScriptCore.CTProductModularObject::CTProductModularObject_LoadImpl)
Paired Ghidra pseudocode: 00C95CB0_ScriptCore_CTProductModularObject_CTProductModularObject_LoadImpl.c
Window: [0x00c95cb0, 0x00c95d50) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00c95d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00c95cb0: 83 ec 14 e8 c8 a1 81 ff 8b 4c 24 20 8b 54 24 24
00c95cc0: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
00c95cd0: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
00c95ce0: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
00c95cf0: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
00c95d00: 85 c9 56 74 16 8b 01 8b 50 0c 68 04 72 13 f3 ff
00c95d10: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
00c95d20: ff d2 33 c0 5e 83 c4 14 c3 e8 62 36 ad ff 8b 10
00c95d30: 6a 54 8b c8 8b 82 c8 00 00 00 56 ff d0 5e 83 c4
00c95d40: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00c95cb0 <.text+0x894cb0>:
  c95cb0:	83 ec 14                                        	sub    esp,0x14
  c95cb3:	e8 c8 a1 81 ff                                  	call   0x4afe80
  c95cb8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  c95cbc:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  c95cc0:	6a 00                                           	push   0x0
  c95cc2:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  c95cc6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  c95cca:	6a 00                                           	push   0x0
  c95ccc:	6a 00                                           	push   0x0
  c95cce:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  c95cd2:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  c95cd6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  c95cda:	6a 00                                           	push   0x0
  c95cdc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  c95ce0:	51                                              	push   ecx
  c95ce1:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  c95ce5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c95ce7:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  c95cea:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  c95cee:	51                                              	push   ecx
  c95cef:	8b c8                                           	mov    ecx,eax
  c95cf1:	ff d2                                           	call   edx
  c95cf3:	84 c0                                           	test   al,al
  c95cf5:	75 06                                           	jne    0xc95cfd
  c95cf7:	33 c0                                           	xor    eax,eax
  c95cf9:	83 c4 14                                        	add    esp,0x14
  c95cfc:	c3                                              	ret
  c95cfd:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  c95d00:	85 c9                                           	test   ecx,ecx
  c95d02:	56                                              	push   esi
  c95d03:	74 16                                           	je     0xc95d1b
  c95d05:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c95d07:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  c95d0a:	68 04 72 13 f3                                  	push   0xf3137204
  c95d0f:	ff d2                                           	call   edx
  c95d11:	8b f0                                           	mov    esi,eax
  c95d13:	85 f6                                           	test   esi,esi
  c95d15:	75 12                                           	jne    0xc95d29
  c95d17:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  c95d1b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c95d1d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  c95d20:	ff d2                                           	call   edx
  c95d22:	33 c0                                           	xor    eax,eax
  c95d24:	5e                                              	pop    esi
  c95d25:	83 c4 14                                        	add    esp,0x14
  c95d28:	c3                                              	ret
  c95d29:	e8 62 36 ad ff                                  	call   0x769390
  c95d2e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c95d30:	6a 54                                           	push   0x54
  c95d32:	8b c8                                           	mov    ecx,eax
  c95d34:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  c95d3a:	56                                              	push   esi
  c95d3b:	ff d0                                           	call   eax
  c95d3d:	5e                                              	pop    esi
  c95d3e:	83 c4 14                                        	add    esp,0x14
  c95d41:	c3                                              	ret
  c95d42:	cc                                              	int3
  c95d43:	cc                                              	int3
  c95d44:	cc                                              	int3
  c95d45:	cc                                              	int3
  c95d46:	cc                                              	int3
  c95d47:	cc                                              	int3
  c95d48:	cc                                              	int3
  c95d49:	cc                                              	int3
  c95d4a:	cc                                              	int3
  c95d4b:	cc                                              	int3
  c95d4c:	cc                                              	int3
  c95d4d:	cc                                              	int3
  c95d4e:	cc                                              	int3
  c95d4f:	cc                                              	int3
