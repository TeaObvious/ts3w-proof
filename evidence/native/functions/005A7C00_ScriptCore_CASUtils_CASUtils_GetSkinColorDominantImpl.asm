# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7c00 (ScriptCore.CASUtils::CASUtils_GetSkinColorDominantImpl)
Paired Ghidra pseudocode: 005A7C00_ScriptCore_CASUtils_CASUtils_GetSkinColorDominantImpl.c
Window: [0x005a7c00, 0x005a7c90) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7c00: 83 ec 14 e8 78 82 f0 ff 8b 4c 24 20 8b 54 24 24
005a7c10: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
005a7c20: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a7c30: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a7c40: c8 ff d2 84 c0 74 21 8b 0c 24 85 c9 74 13 8b 01
005a7c50: 8b 50 0c 68 20 49 58 03 ff d2 85 c0 75 10 8b 0c
005a7c60: 24 8b 01 8b 50 04 ff d2 32 c0 83 c4 14 c3 8b 10
005a7c70: 53 8a 58 48 8b c8 8b 42 04 ff d0 8a c3 5b 83 c4
005a7c80: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7c00 <.text+0x1a6c00>:
  5a7c00:	83 ec 14                                        	sub    esp,0x14
  5a7c03:	e8 78 82 f0 ff                                  	call   0x4afe80
  5a7c08:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a7c0c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a7c10:	6a 00                                           	push   0x0
  5a7c12:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a7c16:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a7c1a:	6a 00                                           	push   0x0
  5a7c1c:	6a 00                                           	push   0x0
  5a7c1e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a7c22:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a7c26:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a7c2a:	6a 00                                           	push   0x0
  5a7c2c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a7c30:	51                                              	push   ecx
  5a7c31:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a7c35:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7c37:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a7c3a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a7c3e:	51                                              	push   ecx
  5a7c3f:	8b c8                                           	mov    ecx,eax
  5a7c41:	ff d2                                           	call   edx
  5a7c43:	84 c0                                           	test   al,al
  5a7c45:	74 21                                           	je     0x5a7c68
  5a7c47:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a7c4a:	85 c9                                           	test   ecx,ecx
  5a7c4c:	74 13                                           	je     0x5a7c61
  5a7c4e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7c50:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a7c53:	68 20 49 58 03                                  	push   0x3584920
  5a7c58:	ff d2                                           	call   edx
  5a7c5a:	85 c0                                           	test   eax,eax
  5a7c5c:	75 10                                           	jne    0x5a7c6e
  5a7c5e:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a7c61:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7c63:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a7c66:	ff d2                                           	call   edx
  5a7c68:	32 c0                                           	xor    al,al
  5a7c6a:	83 c4 14                                        	add    esp,0x14
  5a7c6d:	c3                                              	ret
  5a7c6e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7c70:	53                                              	push   ebx
  5a7c71:	8a 58 48                                        	mov    bl,BYTE PTR [eax+0x48]
  5a7c74:	8b c8                                           	mov    ecx,eax
  5a7c76:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a7c79:	ff d0                                           	call   eax
  5a7c7b:	8a c3                                           	mov    al,bl
  5a7c7d:	5b                                              	pop    ebx
  5a7c7e:	83 c4 14                                        	add    esp,0x14
  5a7c81:	c3                                              	ret
  5a7c82:	cc                                              	int3
  5a7c83:	cc                                              	int3
  5a7c84:	cc                                              	int3
  5a7c85:	cc                                              	int3
  5a7c86:	cc                                              	int3
  5a7c87:	cc                                              	int3
  5a7c88:	cc                                              	int3
  5a7c89:	cc                                              	int3
  5a7c8a:	cc                                              	int3
  5a7c8b:	cc                                              	int3
  5a7c8c:	cc                                              	int3
  5a7c8d:	cc                                              	int3
  5a7c8e:	cc                                              	int3
  5a7c8f:	cc                                              	int3
