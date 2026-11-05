# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1e40 (CASUtils_GetNumSkinColorsImpl)
Paired Ghidra pseudocode: 103A1E40_CASUtils_GetNumSkinColorsImpl.c
Window: [0x103a1e40, 0x103a1ee0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1e40: 83 ec 14 e8 88 32 54 00 8b 4c 24 20 8b 54 24 24
103a1e50: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
103a1e60: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
103a1e70: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
103a1e80: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
103a1e90: 85 c9 56 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff
103a1ea0: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
103a1eb0: ff d2 33 c0 5e 83 c4 14 c3 8b 44 24 2c 57 50 8b
103a1ec0: ce e8 aa b0 04 00 8b 16 8b f8 8b 42 04 8b ce ff
103a1ed0: d0 8b c7 5f 5e 83 c4 14 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1e40 <.text+0x3a0e40>:
103a1e40:	83 ec 14                                        	sub    esp,0x14
103a1e43:	e8 88 32 54 00                                  	call   0x108e50d0
103a1e48:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1e4c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a1e50:	6a 00                                           	push   0x0
103a1e52:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a1e56:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1e5a:	6a 00                                           	push   0x0
103a1e5c:	6a 00                                           	push   0x0
103a1e5e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
103a1e62:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
103a1e66:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a1e6a:	6a 00                                           	push   0x0
103a1e6c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
103a1e70:	51                                              	push   ecx
103a1e71:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
103a1e75:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1e77:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
103a1e7a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a1e7e:	51                                              	push   ecx
103a1e7f:	8b c8                                           	mov    ecx,eax
103a1e81:	ff d2                                           	call   edx
103a1e83:	84 c0                                           	test   al,al
103a1e85:	75 06                                           	jne    0x103a1e8d
103a1e87:	33 c0                                           	xor    eax,eax
103a1e89:	83 c4 14                                        	add    esp,0x14
103a1e8c:	c3                                              	ret
103a1e8d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
103a1e90:	85 c9                                           	test   ecx,ecx
103a1e92:	56                                              	push   esi
103a1e93:	74 16                                           	je     0x103a1eab
103a1e95:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1e97:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a1e9a:	68 20 49 58 03                                  	push   0x3584920
103a1e9f:	ff d2                                           	call   edx
103a1ea1:	8b f0                                           	mov    esi,eax
103a1ea3:	85 f6                                           	test   esi,esi
103a1ea5:	75 12                                           	jne    0x103a1eb9
103a1ea7:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a1eab:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1ead:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1eb0:	ff d2                                           	call   edx
103a1eb2:	33 c0                                           	xor    eax,eax
103a1eb4:	5e                                              	pop    esi
103a1eb5:	83 c4 14                                        	add    esp,0x14
103a1eb8:	c3                                              	ret
103a1eb9:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
103a1ebd:	57                                              	push   edi
103a1ebe:	50                                              	push   eax
103a1ebf:	8b ce                                           	mov    ecx,esi
103a1ec1:	e8 aa b0 04 00                                  	call   0x103ecf70
103a1ec6:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a1ec8:	8b f8                                           	mov    edi,eax
103a1eca:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a1ecd:	8b ce                                           	mov    ecx,esi
103a1ecf:	ff d0                                           	call   eax
103a1ed1:	8b c7                                           	mov    eax,edi
103a1ed3:	5f                                              	pop    edi
103a1ed4:	5e                                              	pop    esi
103a1ed5:	83 c4 14                                        	add    esp,0x14
103a1ed8:	c3                                              	ret
103a1ed9:	cc                                              	int3
103a1eda:	cc                                              	int3
103a1edb:	cc                                              	int3
103a1edc:	cc                                              	int3
103a1edd:	cc                                              	int3
103a1ede:	cc                                              	int3
103a1edf:	cc                                              	int3
