# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1db0 (CASUtils_GetSkinColorDominantImpl)
Paired Ghidra pseudocode: 103A1DB0_CASUtils_GetSkinColorDominantImpl.c
Window: [0x103a1db0, 0x103a1e40) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1db0: 83 ec 14 e8 18 33 54 00 8b 4c 24 20 8b 54 24 24
103a1dc0: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
103a1dd0: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
103a1de0: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
103a1df0: c8 ff d2 84 c0 74 21 8b 0c 24 85 c9 74 13 8b 01
103a1e00: 8b 50 0c 68 20 49 58 03 ff d2 85 c0 75 10 8b 0c
103a1e10: 24 8b 01 8b 50 04 ff d2 32 c0 83 c4 14 c3 8b 10
103a1e20: 53 8a 58 48 8b c8 8b 42 04 ff d0 8a c3 5b 83 c4
103a1e30: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1db0 <.text+0x3a0db0>:
103a1db0:	83 ec 14                                        	sub    esp,0x14
103a1db3:	e8 18 33 54 00                                  	call   0x108e50d0
103a1db8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1dbc:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a1dc0:	6a 00                                           	push   0x0
103a1dc2:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a1dc6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1dca:	6a 00                                           	push   0x0
103a1dcc:	6a 00                                           	push   0x0
103a1dce:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
103a1dd2:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
103a1dd6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a1dda:	6a 00                                           	push   0x0
103a1ddc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
103a1de0:	51                                              	push   ecx
103a1de1:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
103a1de5:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1de7:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
103a1dea:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a1dee:	51                                              	push   ecx
103a1def:	8b c8                                           	mov    ecx,eax
103a1df1:	ff d2                                           	call   edx
103a1df3:	84 c0                                           	test   al,al
103a1df5:	74 21                                           	je     0x103a1e18
103a1df7:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
103a1dfa:	85 c9                                           	test   ecx,ecx
103a1dfc:	74 13                                           	je     0x103a1e11
103a1dfe:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1e00:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a1e03:	68 20 49 58 03                                  	push   0x3584920
103a1e08:	ff d2                                           	call   edx
103a1e0a:	85 c0                                           	test   eax,eax
103a1e0c:	75 10                                           	jne    0x103a1e1e
103a1e0e:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
103a1e11:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103a1e13:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1e16:	ff d2                                           	call   edx
103a1e18:	32 c0                                           	xor    al,al
103a1e1a:	83 c4 14                                        	add    esp,0x14
103a1e1d:	c3                                              	ret
103a1e1e:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1e20:	53                                              	push   ebx
103a1e21:	8a 58 48                                        	mov    bl,BYTE PTR [eax+0x48]
103a1e24:	8b c8                                           	mov    ecx,eax
103a1e26:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a1e29:	ff d0                                           	call   eax
103a1e2b:	8a c3                                           	mov    al,bl
103a1e2d:	5b                                              	pop    ebx
103a1e2e:	83 c4 14                                        	add    esp,0x14
103a1e31:	c3                                              	ret
103a1e32:	cc                                              	int3
103a1e33:	cc                                              	int3
103a1e34:	cc                                              	int3
103a1e35:	cc                                              	int3
103a1e36:	cc                                              	int3
103a1e37:	cc                                              	int3
103a1e38:	cc                                              	int3
103a1e39:	cc                                              	int3
103a1e3a:	cc                                              	int3
103a1e3b:	cc                                              	int3
103a1e3c:	cc                                              	int3
103a1e3d:	cc                                              	int3
103a1e3e:	cc                                              	int3
103a1e3f:	cc                                              	int3
