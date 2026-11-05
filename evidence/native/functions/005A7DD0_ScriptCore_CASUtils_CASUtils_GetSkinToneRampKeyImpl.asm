# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7dd0 (ScriptCore.CASUtils::CASUtils_GetSkinToneRampKeyImpl)
Paired Ghidra pseudocode: 005A7DD0_ScriptCore_CASUtils_CASUtils_GetSkinToneRampKeyImpl.c
Window: [0x005a7dd0, 0x005a7e90) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7dd0: 83 ec 20 33 c0 56 8b 74 24 28 89 06 89 46 04 89
005a7de0: 46 08 89 46 0c e8 96 80 f0 ff 8b 4c 24 34 8b 54
005a7df0: 24 38 6a 00 89 4c 24 08 8b 4c 24 30 6a 00 6a 00
005a7e00: 89 4c 24 18 89 54 24 14 8b 54 24 3c 6a 00 8d 4c
005a7e10: 24 38 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18
005a7e20: 51 8b c8 ff d2 84 c0 74 5f 8b 4c 24 28 85 c9 57
005a7e30: 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff d2 8b f8
005a7e40: 85 ff 75 13 8b 4c 24 2c 8b 01 8b 50 04 ff d2 5f
005a7e50: 8b c6 5e 83 c4 20 c3 8d 44 24 18 50 8b cf e8 7d
005a7e60: a9 04 00 8b 4c 24 20 8b 54 24 18 8b 44 24 1c 89
005a7e70: 0e 8b 4c 24 24 89 56 08 8b 17 89 46 0c 8b 42 04
005a7e80: 89 4e 04 8b cf ff d0 5f 8b c6 5e 83 c4 20 c3 cc

LINEAR DISASSEMBLY
005a7dd0 <.text+0x1a6dd0>:
  5a7dd0:	83 ec 20                                        	sub    esp,0x20
  5a7dd3:	33 c0                                           	xor    eax,eax
  5a7dd5:	56                                              	push   esi
  5a7dd6:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  5a7dda:	89 06                                           	mov    DWORD PTR [esi],eax
  5a7ddc:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a7ddf:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a7de2:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a7de5:	e8 96 80 f0 ff                                  	call   0x4afe80
  5a7dea:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  5a7dee:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  5a7df2:	6a 00                                           	push   0x0
  5a7df4:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a7df8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  5a7dfc:	6a 00                                           	push   0x0
  5a7dfe:	6a 00                                           	push   0x0
  5a7e00:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a7e04:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a7e08:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  5a7e0c:	6a 00                                           	push   0x0
  5a7e0e:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5a7e12:	51                                              	push   ecx
  5a7e13:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a7e17:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7e19:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a7e1c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a7e20:	51                                              	push   ecx
  5a7e21:	8b c8                                           	mov    ecx,eax
  5a7e23:	ff d2                                           	call   edx
  5a7e25:	84 c0                                           	test   al,al
  5a7e27:	74 5f                                           	je     0x5a7e88
  5a7e29:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5a7e2d:	85 c9                                           	test   ecx,ecx
  5a7e2f:	57                                              	push   edi
  5a7e30:	74 16                                           	je     0x5a7e48
  5a7e32:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7e34:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a7e37:	68 20 49 58 03                                  	push   0x3584920
  5a7e3c:	ff d2                                           	call   edx
  5a7e3e:	8b f8                                           	mov    edi,eax
  5a7e40:	85 ff                                           	test   edi,edi
  5a7e42:	75 13                                           	jne    0x5a7e57
  5a7e44:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a7e48:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7e4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a7e4d:	ff d2                                           	call   edx
  5a7e4f:	5f                                              	pop    edi
  5a7e50:	8b c6                                           	mov    eax,esi
  5a7e52:	5e                                              	pop    esi
  5a7e53:	83 c4 20                                        	add    esp,0x20
  5a7e56:	c3                                              	ret
  5a7e57:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5a7e5b:	50                                              	push   eax
  5a7e5c:	8b cf                                           	mov    ecx,edi
  5a7e5e:	e8 7d a9 04 00                                  	call   0x5f27e0
  5a7e63:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a7e67:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a7e6b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  5a7e6f:	89 0e                                           	mov    DWORD PTR [esi],ecx
  5a7e71:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a7e75:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a7e78:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a7e7a:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a7e7d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a7e80:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a7e83:	8b cf                                           	mov    ecx,edi
  5a7e85:	ff d0                                           	call   eax
  5a7e87:	5f                                              	pop    edi
  5a7e88:	8b c6                                           	mov    eax,esi
  5a7e8a:	5e                                              	pop    esi
  5a7e8b:	83 c4 20                                        	add    esp,0x20
  5a7e8e:	c3                                              	ret
  5a7e8f:	cc                                              	int3
