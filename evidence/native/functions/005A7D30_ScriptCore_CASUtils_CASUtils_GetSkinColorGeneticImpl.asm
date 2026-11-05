# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7d30 (ScriptCore.CASUtils::CASUtils_GetSkinColorGeneticImpl)
Paired Ghidra pseudocode: 005A7D30_ScriptCore_CASUtils_CASUtils_GetSkinColorGeneticImpl.c
Window: [0x005a7d30, 0x005a7dd0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7d30: 83 ec 14 e8 48 81 f0 ff 8b 4c 24 20 8b 54 24 24
005a7d40: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
005a7d50: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a7d60: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a7d70: c8 ff d2 84 c0 75 04 83 c4 14 c3 8b 0c 24 85 c9
005a7d80: 56 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff d2 8b
005a7d90: f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04 ff d2
005a7da0: 32 c0 5e 83 c4 14 c3 8b 44 24 30 8b 4c 24 2c 53
005a7db0: 50 51 8b ce e8 07 ad 04 00 8b 16 8a d8 8b 42 04
005a7dc0: 8b ce ff d0 8a c3 5b 5e 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
005a7d30 <.text+0x1a6d30>:
  5a7d30:	83 ec 14                                        	sub    esp,0x14
  5a7d33:	e8 48 81 f0 ff                                  	call   0x4afe80
  5a7d38:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a7d3c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a7d40:	6a 00                                           	push   0x0
  5a7d42:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a7d46:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a7d4a:	6a 00                                           	push   0x0
  5a7d4c:	6a 00                                           	push   0x0
  5a7d4e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a7d52:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a7d56:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a7d5a:	6a 00                                           	push   0x0
  5a7d5c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a7d60:	51                                              	push   ecx
  5a7d61:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a7d65:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7d67:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a7d6a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a7d6e:	51                                              	push   ecx
  5a7d6f:	8b c8                                           	mov    ecx,eax
  5a7d71:	ff d2                                           	call   edx
  5a7d73:	84 c0                                           	test   al,al
  5a7d75:	75 04                                           	jne    0x5a7d7b
  5a7d77:	83 c4 14                                        	add    esp,0x14
  5a7d7a:	c3                                              	ret
  5a7d7b:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a7d7e:	85 c9                                           	test   ecx,ecx
  5a7d80:	56                                              	push   esi
  5a7d81:	74 16                                           	je     0x5a7d99
  5a7d83:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7d85:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a7d88:	68 20 49 58 03                                  	push   0x3584920
  5a7d8d:	ff d2                                           	call   edx
  5a7d8f:	8b f0                                           	mov    esi,eax
  5a7d91:	85 f6                                           	test   esi,esi
  5a7d93:	75 12                                           	jne    0x5a7da7
  5a7d95:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a7d99:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7d9b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a7d9e:	ff d2                                           	call   edx
  5a7da0:	32 c0                                           	xor    al,al
  5a7da2:	5e                                              	pop    esi
  5a7da3:	83 c4 14                                        	add    esp,0x14
  5a7da6:	c3                                              	ret
  5a7da7:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  5a7dab:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a7daf:	53                                              	push   ebx
  5a7db0:	50                                              	push   eax
  5a7db1:	51                                              	push   ecx
  5a7db2:	8b ce                                           	mov    ecx,esi
  5a7db4:	e8 07 ad 04 00                                  	call   0x5f2ac0
  5a7db9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a7dbb:	8a d8                                           	mov    bl,al
  5a7dbd:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a7dc0:	8b ce                                           	mov    ecx,esi
  5a7dc2:	ff d0                                           	call   eax
  5a7dc4:	8a c3                                           	mov    al,bl
  5a7dc6:	5b                                              	pop    ebx
  5a7dc7:	5e                                              	pop    esi
  5a7dc8:	83 c4 14                                        	add    esp,0x14
  5a7dcb:	c3                                              	ret
  5a7dcc:	cc                                              	int3
  5a7dcd:	cc                                              	int3
  5a7dce:	cc                                              	int3
  5a7dcf:	cc                                              	int3
