# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1ee0 (CASUtils_GetSkinColorGeneticImpl)
Paired Ghidra pseudocode: 103A1EE0_CASUtils_GetSkinColorGeneticImpl.c
Window: [0x103a1ee0, 0x103a1f80) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1ee0: 83 ec 14 e8 e8 31 54 00 8b 4c 24 20 8b 54 24 24
103a1ef0: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
103a1f00: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
103a1f10: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
103a1f20: c8 ff d2 84 c0 75 04 83 c4 14 c3 8b 0c 24 85 c9
103a1f30: 56 74 16 8b 01 8b 50 0c 68 20 49 58 03 ff d2 8b
103a1f40: f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04 ff d2
103a1f50: 32 c0 5e 83 c4 14 c3 8b 44 24 30 8b 4c 24 2c 53
103a1f60: 50 51 8b ce e8 b7 b0 04 00 8b 16 8a d8 8b 42 04
103a1f70: 8b ce ff d0 8a c3 5b 5e 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1ee0 <.text+0x3a0ee0>:
103a1ee0:	83 ec 14                                        	sub    esp,0x14
103a1ee3:	e8 e8 31 54 00                                  	call   0x108e50d0
103a1ee8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1eec:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a1ef0:	6a 00                                           	push   0x0
103a1ef2:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a1ef6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1efa:	6a 00                                           	push   0x0
103a1efc:	6a 00                                           	push   0x0
103a1efe:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
103a1f02:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
103a1f06:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a1f0a:	6a 00                                           	push   0x0
103a1f0c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
103a1f10:	51                                              	push   ecx
103a1f11:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
103a1f15:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1f17:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
103a1f1a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a1f1e:	51                                              	push   ecx
103a1f1f:	8b c8                                           	mov    ecx,eax
103a1f21:	ff d2                                           	call   edx
103a1f23:	84 c0                                           	test   al,al
103a1f25:	75 04                                           	jne    0x103a1f2b
103a1f27:	83 c4 14                                        	add    esp,0x14
103a1f2a:	c3                                              	ret
103a1f2b:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
103a1f2e:	85 c9                                           	test   ecx,ecx
103a1f30:	56                                              	push   esi
103a1f31:	74 16                                           	je     0x103a1f49
103a1f33:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1f35:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a1f38:	68 20 49 58 03                                  	push   0x3584920
103a1f3d:	ff d2                                           	call   edx
103a1f3f:	8b f0                                           	mov    esi,eax
103a1f41:	85 f6                                           	test   esi,esi
103a1f43:	75 12                                           	jne    0x103a1f57
103a1f45:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a1f49:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1f4b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1f4e:	ff d2                                           	call   edx
103a1f50:	32 c0                                           	xor    al,al
103a1f52:	5e                                              	pop    esi
103a1f53:	83 c4 14                                        	add    esp,0x14
103a1f56:	c3                                              	ret
103a1f57:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
103a1f5b:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a1f5f:	53                                              	push   ebx
103a1f60:	50                                              	push   eax
103a1f61:	51                                              	push   ecx
103a1f62:	8b ce                                           	mov    ecx,esi
103a1f64:	e8 b7 b0 04 00                                  	call   0x103ed020
103a1f69:	8b 16                                           	mov    edx,DWORD PTR [esi]
103a1f6b:	8a d8                                           	mov    bl,al
103a1f6d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a1f70:	8b ce                                           	mov    ecx,esi
103a1f72:	ff d0                                           	call   eax
103a1f74:	8a c3                                           	mov    al,bl
103a1f76:	5b                                              	pop    ebx
103a1f77:	5e                                              	pop    esi
103a1f78:	83 c4 14                                        	add    esp,0x14
103a1f7b:	c3                                              	ret
103a1f7c:	cc                                              	int3
103a1f7d:	cc                                              	int3
103a1f7e:	cc                                              	int3
103a1f7f:	cc                                              	int3
