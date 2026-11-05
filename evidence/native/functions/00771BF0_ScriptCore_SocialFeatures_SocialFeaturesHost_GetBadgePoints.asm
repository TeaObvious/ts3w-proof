# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771bf0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgePoints)
Paired Ghidra pseudocode: 00771BF0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgePoints.c
Window: [0x00771bf0, 0x00771cb0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771bf0: 83 ec 20 56 33 f6 e8 95 77 ff ff 85 c0 0f 84 a0
00771c00: 00 00 00 8b 4c 24 28 8b 10 8b 52 58 57 51 8b c8
00771c10: ff d2 6a 00 6a ff 50 8d 44 24 24 bf 54 8e 1c 01
00771c20: be 55 8e 1c 01 50 c7 44 24 24 bc 9c 00 01 89 7c
00771c30: 24 18 89 7c 24 1c 89 74 24 20 e8 81 20 d8 ff 8d
00771c40: 4c 24 18 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52
00771c50: 50 e8 ba 3c c9 ff 8b 74 24 10 8b 7c 24 08 8b 4c
00771c60: 24 20 8b 44 24 18 2b c8 83 f9 01 7e 0d 85 c0 74
00771c70: 09 50 e8 69 28 d7 ff 83 c4 04 53 57 e8 3f 2d 2b
00771c80: 00 2b f7 83 c4 04 83 fe 01 8b d8 7e 0d 85 ff 74
00771c90: 09 57 e8 49 28 d7 ff 83 c4 04 8b c3 5b 5f 5e 83
00771ca0: c4 20 c3 8b c6 5e 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771bf0 <.text+0x370bf0>:
  771bf0:	83 ec 20                                        	sub    esp,0x20
  771bf3:	56                                              	push   esi
  771bf4:	33 f6                                           	xor    esi,esi
  771bf6:	e8 95 77 ff ff                                  	call   0x769390
  771bfb:	85 c0                                           	test   eax,eax
  771bfd:	0f 84 a0 00 00 00                               	je     0x771ca3
  771c03:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  771c07:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771c09:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771c0c:	57                                              	push   edi
  771c0d:	51                                              	push   ecx
  771c0e:	8b c8                                           	mov    ecx,eax
  771c10:	ff d2                                           	call   edx
  771c12:	6a 00                                           	push   0x0
  771c14:	6a ff                                           	push   0xffffffff
  771c16:	50                                              	push   eax
  771c17:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  771c1b:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  771c20:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771c25:	50                                              	push   eax
  771c26:	c7 44 24 24 bc 9c 00 01                         	mov    DWORD PTR [esp+0x24],0x1009cbc
  771c2e:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  771c32:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  771c36:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  771c3a:	e8 81 20 d8 ff                                  	call   0x4f3cc0
  771c3f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  771c43:	83 c4 10                                        	add    esp,0x10
  771c46:	3b c1                                           	cmp    eax,ecx
  771c48:	74 14                                           	je     0x771c5e
  771c4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771c4d:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771c4f:	52                                              	push   edx
  771c50:	50                                              	push   eax
  771c51:	e8 ba 3c c9 ff                                  	call   0x405910
  771c56:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  771c5a:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  771c5e:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  771c62:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  771c66:	2b c8                                           	sub    ecx,eax
  771c68:	83 f9 01                                        	cmp    ecx,0x1
  771c6b:	7e 0d                                           	jle    0x771c7a
  771c6d:	85 c0                                           	test   eax,eax
  771c6f:	74 09                                           	je     0x771c7a
  771c71:	50                                              	push   eax
  771c72:	e8 69 28 d7 ff                                  	call   0x4e44e0
  771c77:	83 c4 04                                        	add    esp,0x4
  771c7a:	53                                              	push   ebx
  771c7b:	57                                              	push   edi
  771c7c:	e8 3f 2d 2b 00                                  	call   0xa249c0
  771c81:	2b f7                                           	sub    esi,edi
  771c83:	83 c4 04                                        	add    esp,0x4
  771c86:	83 fe 01                                        	cmp    esi,0x1
  771c89:	8b d8                                           	mov    ebx,eax
  771c8b:	7e 0d                                           	jle    0x771c9a
  771c8d:	85 ff                                           	test   edi,edi
  771c8f:	74 09                                           	je     0x771c9a
  771c91:	57                                              	push   edi
  771c92:	e8 49 28 d7 ff                                  	call   0x4e44e0
  771c97:	83 c4 04                                        	add    esp,0x4
  771c9a:	8b c3                                           	mov    eax,ebx
  771c9c:	5b                                              	pop    ebx
  771c9d:	5f                                              	pop    edi
  771c9e:	5e                                              	pop    esi
  771c9f:	83 c4 20                                        	add    esp,0x20
  771ca2:	c3                                              	ret
  771ca3:	8b c6                                           	mov    eax,esi
  771ca5:	5e                                              	pop    esi
  771ca6:	83 c4 20                                        	add    esp,0x20
  771ca9:	c3                                              	ret
  771caa:	cc                                              	int3
  771cab:	cc                                              	int3
  771cac:	cc                                              	int3
  771cad:	cc                                              	int3
  771cae:	cc                                              	int3
  771caf:	cc                                              	int3
