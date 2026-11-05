# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7c90 (ScriptCore.CASUtils::CASUtils_GetNumSkinColorsImpl)
Paired Ghidra pseudocode: 005A7C90_ScriptCore_CASUtils_CASUtils_GetNumSkinColorsImpl.c
Window: [0x005a7c90, 0x005a7d30) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7c90: 83 ec 14 e8 e8 81 f0 ff 8b 4c 24 20 8b 54 24 24
005a7ca0: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
005a7cb0: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a7cc0: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a7cd0: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
005a7ce0: 85 c9 56 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff
005a7cf0: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
005a7d00: ff d2 33 c0 5e 83 c4 14 c3 8b 44 24 2c 57 50 8b
005a7d10: ce e8 fa ac 04 00 8b 16 8b f8 8b 42 04 8b ce ff
005a7d20: d0 8b c7 5f 5e 83 c4 14 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7c90 <.text+0x1a6c90>:
  5a7c90:	83 ec 14                                        	sub    esp,0x14
  5a7c93:	e8 e8 81 f0 ff                                  	call   0x4afe80
  5a7c98:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a7c9c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a7ca0:	6a 00                                           	push   0x0
  5a7ca2:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a7ca6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a7caa:	6a 00                                           	push   0x0
  5a7cac:	6a 00                                           	push   0x0
  5a7cae:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a7cb2:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a7cb6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a7cba:	6a 00                                           	push   0x0
  5a7cbc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a7cc0:	51                                              	push   ecx
  5a7cc1:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a7cc5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7cc7:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a7cca:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a7cce:	51                                              	push   ecx
  5a7ccf:	8b c8                                           	mov    ecx,eax
  5a7cd1:	ff d2                                           	call   edx
  5a7cd3:	84 c0                                           	test   al,al
  5a7cd5:	75 06                                           	jne    0x5a7cdd
  5a7cd7:	33 c0                                           	xor    eax,eax
  5a7cd9:	83 c4 14                                        	add    esp,0x14
  5a7cdc:	c3                                              	ret
  5a7cdd:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a7ce0:	85 c9                                           	test   ecx,ecx
  5a7ce2:	56                                              	push   esi
  5a7ce3:	74 16                                           	je     0x5a7cfb
  5a7ce5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7ce7:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a7cea:	68 20 49 58 03                                  	push   0x3584920
  5a7cef:	ff d2                                           	call   edx
  5a7cf1:	8b f0                                           	mov    esi,eax
  5a7cf3:	85 f6                                           	test   esi,esi
  5a7cf5:	75 12                                           	jne    0x5a7d09
  5a7cf7:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a7cfb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a7cfd:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a7d00:	ff d2                                           	call   edx
  5a7d02:	33 c0                                           	xor    eax,eax
  5a7d04:	5e                                              	pop    esi
  5a7d05:	83 c4 14                                        	add    esp,0x14
  5a7d08:	c3                                              	ret
  5a7d09:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5a7d0d:	57                                              	push   edi
  5a7d0e:	50                                              	push   eax
  5a7d0f:	8b ce                                           	mov    ecx,esi
  5a7d11:	e8 fa ac 04 00                                  	call   0x5f2a10
  5a7d16:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a7d18:	8b f8                                           	mov    edi,eax
  5a7d1a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a7d1d:	8b ce                                           	mov    ecx,esi
  5a7d1f:	ff d0                                           	call   eax
  5a7d21:	8b c7                                           	mov    eax,edi
  5a7d23:	5f                                              	pop    edi
  5a7d24:	5e                                              	pop    esi
  5a7d25:	83 c4 14                                        	add    esp,0x14
  5a7d28:	c3                                              	ret
  5a7d29:	cc                                              	int3
  5a7d2a:	cc                                              	int3
  5a7d2b:	cc                                              	int3
  5a7d2c:	cc                                              	int3
  5a7d2d:	cc                                              	int3
  5a7d2e:	cc                                              	int3
  5a7d2f:	cc                                              	int3
